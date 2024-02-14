#import "colors.typ": *

#let theme = (
/*bg-page: white,
  bg-sidebar: gradient.linear(
    (md.grey-400, 0%),
    (md.grey-400, 65%),
    (md.grey-100, 100%),
    angle: 30deg,
  ),*/
  bg-page: md.grey-200.lighten(15%),
  bg-sidebar: white,

  primary: md.grey-800,
  primaryLight: md.grey-700,
  primaryDark: md.grey-900,

  accentPrimary: oggole.blue,
  accentSecondary: oggole.green,
)

// Used to collect sidebar articles.
#let articles = state("articles", ())


#let resume(
  // Name and descriptive title of ?
  firstName: none, //"mr. tebo",
  lastName: none, //"'nestake",
  description: none,
  profile-image: none, // path to profile image
  
  body // main content
) = {
  // Set document metadata.
  set document(
    title: "resume",
    author: firstName + " " + lastName,
    keywords: ("resume, cv, work, developer")
  )
  
  // Configure pages. The background parameter is used to
  // add the right background to the pages.
  set page(
    paper: "a4",
    margin: (left: 16pt, right: 32pt, top: 24pt, bottom: 25pt),
    fill: theme.bg-page,
    
  )

  place(left + top,
      rect(
        fill: theme.bg-sidebar,
        //stroke: 1pt,
        radius: (left: 15pt, right: 15pt),
        height: 100%,
        width: 30%,
        //outset: (y: 1.2cm),
    ),
  )


  // Set the body font.
  set text(11pt, font: "Source Sans Pro")

  // Configure headings.
  show heading: set text(font: "Source Sans Pro")
  show heading.where(level: 1): set text(1.1em)
  show heading.where(level: 1): set par(leading: 0.4em)
  show heading.where(level: 1): set block(below: 0.6em)
  show heading: it => {
    set text(weight: 600) if it.level > 2
    it
  }

  show link: it => {
    set text(weight: "regular", fill: md.blue-grey-700)
    it
  }

  
  // The document is split in two with a grid. A left column for the main
  // flow and a right column for the sidebar articles.  
  grid(
    columns: (30%, auto),
    column-gutter: 16pt,
    row-gutter: 8pt,

    circle(stroke: none, width: 100%, inset: -0pt)[
      #set align(center)
      #image("../" + profile-image, width: 100%)
    ],
    
    // Name and description of what it is i am
    {
      set align(left + horizon)
      set text(font: "Roboto", size: 32pt, theme.primaryLight, weight: "light") // firstname
      stack(spacing: 10pt,
        "", // Todo: remove if not needed
        [#firstName #h(2pt) #text(theme.primary, weight: "bold")[#lastName]],
        [#h(4pt) #text(size: 16pt)[#description]]
      )
    },
  
    // The sidebar with articles.
    locate(loc => {
      set align(left)
      //set text(fill: white, weight: "regular")
      //v(44pt)

      show heading.where(level: 1): set text(size: 1em-1pt, weight: "bold", fill: theme.primaryDark)
      
      set text(weight: "regular", fill: theme.primary)
      show terms: set text(weight: "regular", fill: theme.primaryLight)
      for element in articles.final(loc) {
        //move(dx: 0.4cm, element)
        pad(left: 1em, right: 1.1em, element)
        v(24pt, weak: true)
      }
    }),
    
    // The main flow with body and publication info.
    {
      show heading.where(level: 1): set text(weight: "bold", fill: theme.primaryDark)
      //show heading.where(level: 2): set text(size: 10pt, weight: "bold", fill: black)
      set par(justify: true)
      body
    },
)}

#let hBar() = [
  #h(2pt) | #h(2pt)
]


#let mainEntry(title: none, society: none, date: none, location: none, description: none) = {
  // Add header with name and other info about entry
  stack(dir: ltr,
    align(left, stack(spacing: 6pt,
      text(size: 1em-1pt, weight: "bold", fill: theme.primary, title),
      text(size: 1em-2pt, weight: "regular", fill: theme.primary, society)
    )),
    align(right, stack(spacing: 6pt,
      text(size: 1em-3pt, weight: "regular", fill: theme.primary, date),
      text(size: 1em-3pt, weight: "regular", fill: theme.primary, location) // 5D5D5D
    )),
  )
  text(size: 1em-2pt, weight: "regular", fill: theme.primaryLight, description)
}

// An article that is displayed in the sidebar. Can be added
// anywhere in the document. All articles are collected automatically.
#let article(body) = articles.update(it => it + (body,))
