// This template is a work in progress

#let cover-letter(
  // Name and descriptive title of ?
  firstName: none,
  lastName: none,
  phone: none,
  email: none,
  
  description: none,
  company: none,
  date: none,

  // main content
  body
) = {

  set document(
    title: "Cover letter",
    author: firstName + " " + lastName
  )

  set text(font: "Source Sans Pro", size: 12pt)
  show heading.where(level: 1): set text(font: "Roboto", size: 24pt)
  show heading.where(level: 2): set text(size: 16pt)
  
  
  set align(right)
  [
    == #firstName #lastName
    //#v(-0.5em)
    #link("tel:" + phone.trim(" "), phone) #emoji.phone 
    \ //#h(1em)\
    #link("tel:" + email, email) #emoji.mail
  ]
  
  v(1em)
  
  set align(left)
  [
    //set text(size: 16pt, weight: "bold", fill: black)
    = #description
    #text(font: "Roboto", fill: rgb("#6934FF"), size: 14pt)[#company]

    #if date != none [
      #date.display()
    ] else [
      #datetime.today(offset: 1).display()
    ]

    #v(1em)
  ]
  

  {  
    // Todo: add something here?
    body
  }
  
}
