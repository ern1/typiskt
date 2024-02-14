
/*#show "ArtosFlow": name => box[
  #box(image(
    "assets/dog1.png",
    height: 0.9em,
  ))
  #name
]*/

// TODO: Bör använda sig av baseline istället för move?
#let imageIcon(path, h: 0.9em) = {
  box(move(dy: h/6, image(
    path,
    height: h,
  )))
}

#let iconWithText(iconPath, str, h: 1.0em) = box[
  #imageIcon(iconPath, h: h)
  #"" #str
]

#let iconWithTextHighlight(iconPath, color, str, h: 1.0em) = box(
    //baseline: 2pt,
    fill: color,
    inset: (x: 3pt, y: 0pt),
    outset: (y: 2pt),
    radius: 5pt,
    move(dy: -2pt)[
      #imageIcon(iconPath, h: h) #str
    ]
)




#let textColorMap(str, skillLevel, colorHigh: green, colorLow: red) = text(fill: gradient.linear(
    (colorHigh, 0%),
    (colorLow, skillLevel),
    (colorLow, 100%),
  ), str
)


// Maybe could use location()
#let addDividers(..items, charPerRow: 30, divider: " | ") = {
  let n = 1

  for it in items {
    if v != "" {
      // Adds linebreak after charPerRow items have been added
      if n > charPerRow + it.len() {
        linebreak()
        n = 1
      }
      if n != 1 {
        divider
      }
      it
    }
    n = n + it.len()
  }
}

/* Tester*/
//#imageIcon("assets/dog1.png", h: 1em)
//#imageIcon("assets/dog1.png", h: 1em)
//#iconWithText("assets/dog1.png", "texr", h:1em)

/*#let linkItemStyle(icon, liink, iconColor: accentColor, linkColor: accentColor2) = {
  set text(fill: linkColor)
  box(height: 1em, baseline: 20%, fill: linkColor)[
    #pad(left: 0.4em)[#image(item.icon)]
  ] + h(2pt)
  
  liink
}*/



