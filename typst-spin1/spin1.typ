#html.html({
  html.head({
    html.meta(charset: "utf-8")
    html.title("Now spinning…")
    html.style(```css
.centered {
  text-align: center;
}
.spin {
  display: inline-block;
  animation: spin 1s linear infinite;
}
@keyframes spin {
  0%   { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
```.text
    )
  })
  html.body({
    html.div(class: "centered",
      html.span(class: "spin",
        image(width: 200pt, height: 200pt, "snowman.svg")
      )
    )
  })
})
