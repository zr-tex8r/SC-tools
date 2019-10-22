#!/usr/bin/perl
use v5.12;
my $program = "scnicefootgif";
my $version = "0.8.0";
my $mod_date = "2019/10/12";

my ($in_file, $out_file);
my $engine = "lualatex";
my $density = 150;
my $verbose = 0;

my $sty_file = "scnicefoot.sty";
my $imconvert = $ENV{IMCONVERT} || "magick";
my $tempb = "__scnf".$$."x";

sub show_usage {
  print <<"EOS";
Usage: $program [OPTION]... LATEX_FILE
Available options:
  -e/--engine=NAME    Set LaTeX engine.
  -d/--density=NUM    Set dpi value.
  -v/--verbose        Be more verbose.
  -h/--help           Show this help and exit.
  -V/--version        Show version and exit.
EOS
}

sub show_version {
  print <<"EOS";
$program $version
EOS
}

sub get_timing {
  my ($fsrc) = @_; local ($_, $/);
  open(my $h, '<', $fsrc)
    or error("cannot open for input", $fsrc);
  $_ = <$h>;
  close($h);
  my @fs = m/\\do(\{[-\.\d]+\}\{[\.\d]+\})/g
    or error("cannot get timing");
  @fs = map {
    m/^\{([-\.\d]+)\}\{([\.\d]+)\}$/ or die;
    [$1-0, 1/$2]
  } (@fs);
  return \@fs;
}

sub main {
  read_option();
  (-f $in_file) or error("file not found", $in_file);

  local $_ = `kpsewhich $sty_file`; chomp($_);
  ($_ ne '') or error("package is not installed", $sty_file);
  my $timing = get_timing($_);

  info("convert", "$in_file -> $out_file");
  info("parameters", "density=$density");

  my (@arg, %cache);
  foreach my $tv (0 .. $#$timing) {
    info("generate frame", $tv);
    my $ts = sprintf("%0".length($#$timing)."d", $tv);
    my $fpdf = "$tempb.pdf";
    my $poss = $timing->[$tv][0];
    my $delay = int($timing->[$tv][1] * 100 + 0.5);
    my $fpng = $cache{$poss};
    if (!defined $fpng) {
      $fpng = "$tempb-$ts";
      unlink($fpdf);
      (run(<<"EOS")) or error("LaTeX compile error", $in_file);
$engine -halt-on-error -interaction=nonstopmode
  -jobname=$tempb "\\def\\scnicefootPosition{$poss}"
  "\\input $in_file"
  1>$tempb-1.out 2>$tempb-2.out
EOS
      if (-f "$tempb.dvi") {
        (run(<<"EOS")) or error("dvipdfmx error", $in_file);
dvipdfmx -o $fpdf $tempb
  1>$tempb-1.out 2>$tempb-2.out
EOS
      }
      (-s $fpdf) or error("LaTeX compile error", $in_file);
      (run(<<"EOS")) or error("conversion error", $fpdf);
$imconvert -density $density $fpdf $fpng.png
EOS
      $fpng .= (-f "$fpng-0.png") ? "-0.png" : ".png";
      (-s $fpng) or error("conversion error", $fpdf);
      $cache{$poss} = $fpng;
    }
    push(@arg, "-delay", $delay, $fpng);
  }

  info("generate gif", $out_file);
  (run(<<"EOS") && -s $out_file) or error("conversion error", $out_file);
$imconvert @arg $out_file
EOS
  unlink(glob("$tempb*.*"));
}

sub read_option {
  if (!@ARGV) {
    show_usage(); exit;
  }
  while ($ARGV[0] =~ m/^-/) {
    local $_ = shift(@ARGV); my $arg;
    if (m/^--$/) {
      last;
    } elsif (m/^(?:-h|-?-help)$/) {
      show_usage(); exit;
    } elsif (m/^(?:-V|--version)$/) {
      show_version(); exit;
    } elsif (m/^(?:-v|--verbose)$/) {
      $verbose = 1;
    } elsif (($arg) = m/^(?:-d|--density)(?:=(.*))?$/) {
      (defined $arg) or $arg = shift(@ARGV);
      ($arg =~ m/^\d+(?:\.\d+)?$/) or error("invalid density value", $arg);
      $density = $arg;
    } elsif (($arg) = m/^(?:-e|--engine)(?:=(.*))?$/) {
      (defined $arg) or $arg = shift(@ARGV);
      ($arg =~ m/^[-\w]+$/) or error("invalid engine name", $arg);
      $engine = $arg;
    } else {
      error("unknown option", $_);
    }
  }
  ($#ARGV == 0) or error("wrong number of arguments");
  $in_file = shift(@ARGV);
  ($out_file = $in_file) =~ s/\.tex$//i; $out_file .= ".gif";
}

sub run {
  local ($_) = @_; s/\s+/ /g;
  debug("run", $_);
  return (system($_) == 0);
}

sub show_log {
  print STDERR (join(": ", $program, @_), "\n");
}
sub debug {
  ($verbose >= 1) and show_log(@_);
}
sub info {
  ($verbose >= 0) and show_log(@_);
}
sub error {
  show_log(@_); exit(1);
}

main();
# EOF
