#import "../lib.typ": resume, mainEntry, article, util, colors, icons, fonts
#import "resume-content.typ": sections
#import "sidebar-content.typ": *

#show: resume.with(
  firstName: "Your",
  lastName: "Name",
  description: "Description",
  profile-image: "img/profilepic.png"
)


/* Main content stuff */
//sections.




/* Sidebar content */
#article[
  = Contact // & Profile
  
  #set text(size: 1em-1pt)
  #util.iconWithText(icons.getPath("phone"), link("tel:+46123456789", "+46 12 345 67 89")) \
  #util.iconWithText(icons.simplePath("gmail-color"), link("mailto:gusernto@student.gu.se", "gusernto@student.gu.se")) \
  #util.iconWithText(icons.simplePath("linkedin-color"), link("https://linkedin.com/TommyErnsund", "Tommy Ernsund")) \
  #util.iconWithText(icons.simplePath("github-color"), link("https://github.com/ern1", "ern1")) \
  //#util.iconWithText(icons.simplePath("steam-color"), link("https://steamcommunity.com/id/_t_o_m_m_y_/", "_t_o_m_m_y_"))
]


#article[
  // TODO: var lägga game design, web, embedded/realtime systems ux/ui etc?
  = Technical Skills

  #set text(size: 1em-0.5pt)
  #set terms(separator: [:])
  #let skill(ico, name, color: rgb("#eee")) = [ 
    //#util.iconWithText(icons.getPath(ico), name)
    //#util.iconWithTextHighlight(icons.getPath(ico), color.lighten(50%), name)
    #util.iconWithTextHighlight(icons.simplePath(ico), color.lighten(60%), name)
  ]
  
  //#show "|": it => [~#it~]
  
  // #let highlight(color, body) = {
  //   place(dx: -3pt, strike(extent: 3pt, stroke: (thickness: 1.2em, paint: rgb(color), cap: "round"), background: false, body))
  //   body
  // }

  
  / Languages: #v(-5pt)
  //#util.iconWithText(icons.getPath(""), ""),
  //#set text(spacing: 2pt)
  #skill("python-color", "Python", color: colors.md-yellow-100) 
  //#highlight(colors.md-yellow-100, skill("python", "Python")) \
  #skill("cplusplus-color", "C/C++", color: colors.md-blue-100)
  #skill("csharp-color", "C#", color: colors.md-purple-100)
  #skill("javascript-color", "Javascript", color: colors.md-yellow-100)
  #skill("typescript-color", "Typescript", color: colors.md-blue-100)
  #skill("html5-color", "HTML5", color: colors.md-orange-100)
  #skill("css3-color", "CSS", color: colors.md-yellow-100)
  #skill("sqlite-color", "SQL", color: colors-md.blue-100)
  #skill("powershell-color", "Powershell", color: colors.md-blue-100)
  //F\#,
  //Matlab
  //Bash,
  
  /*#util.textColorMap("Python", 80%), #util.textColorMap("C++", 60%), #util.textColorMap("PHP", 18%),*/
  
  / Frameworks, etc: #v(-5pt) 
  #skill("nodedotjs-color", "Node.js", color: colors.md-green-100)
  #skill("react-color", "React.js/Native", color: colors.md-blue-100)
  #skill("vuedotjs-color", "Vue", color: colors.md-green-100)
  #skill("amazonaws-color", "AWS", color: colors.md-orange-100)
  //NumPy,
  //UML
  
  / Tools: #v(-5pt)
  #skill("git-color", "Git", color: colors.md-red-100)
  #skill("gradle-color", "Gradle", color: colors.md-blue-100)
  #skill("cmake-color", "CMake", color: colors.md-blue-100)
  #skill("unity-color", "Unity", color: colors.md-grey-300)
  #skill("visualstudio-color", "Visual Studio", color: colors.md-purple-100)
]


#article[
  = Languages

  #set text(size: 1em-1pt)
  *Swedish*: Native \
  *English*: Fluent \
  //*Norwegian*: Almost fluent \
  *Chinese*: Want to learn
]

