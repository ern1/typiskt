#let bodyPart(title: "", content: "") = [
  / +[title]+\:: + [content]
]

#let bodyList(..items) = {
  // let its = items
  //   .map(item => [item])
  //   .intersperse(",")
  let l = list()
  for item in items.pos() {
    l = l + [item] + ","
  }
}

#let bodyList(..items) = list(
    for (item) in items.pos() [
      #item
  ] + ","
)

#let entry(title, society, date, location, ..body) = (
  title: title, society: society, date: date, location: location, body: body
)

#let section(sectionTitle, ..entries) = ( sectionTitle: sectionTitle, entries: entry())


// -------------------

#let personalInfo(firstName, lastName, description, profile-image) = (
  firstName: firstName,
  lastName: lastName,
  description: description,
  profile-image: profile-image
)


// Todo: allt ovan kanske jag flyttar till egen fil så denna enbart innehar direkt info som ska visas i resume



// define a new section and populate it
#let eduSection = section(
  "Education",
  entry("Bachelor's degree, Subject", "My University", "2024", "New Yoke, USA",
            bodyPart(title: "Thesis", content: "measuring the sea")),
  entry("Masters's degree, Subject", "My University", "2025", "New Yoke, USA",
            bodyList("i did this", "also much of this"))
)



/* Add stuff here to use in resume */
#let personalInfo = personalInfo("Xi", "JinPing", "king", "img/avatar.png")
#let sections = (eduSection) 

/*  */