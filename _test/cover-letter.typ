#import "templates/typiskt.typ": cover-letter

#show: cover-letter.with(
  firstName: "Tommy",
  lastName: "Ernsund",
  phone: "+46 12 345 67 89",
  email: "my@mail.box",
  //description: "Computer Science", // TODO: change
  description: "Software Developer",
  company: "Company Name",
  date: none, //datetime(year: 2023, month: 12, day: 24),
)

Hello,

#lorem(70) \ \ #lorem(35)

Hope to hear from you soon!

Best regards, \
Tommy Ernsund