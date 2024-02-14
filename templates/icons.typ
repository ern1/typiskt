//#let path = (
//    ico: "templates/assets/icons",
//    dev: "templates/assets/dev-icons",
//)

#let social = (
  email: "email.svg",
  linkedin: "linkedin.svg",
  github: "github.svg",
  pdf: "pdf.svg",
  phone: "phone.svg",
  slack: "slack.svg",
  steam: "steam.svg",
  wechat: "wechat.svg",
)

#let dev-icons = (
    amazon_s3: "amazon_s3.svg",
    android: "android.svg",
    cpp: "cplusplus.svg",
    css: "css3.svg",
    docker: "docker.svg",
    git: "git.svg",
    gradle: "gradle.svg",
    html5: "html5.svg",
    java: "java.svg",
    js: "javascript.svg",
    kotlin: "kotlin.svg",
    linux: "linux.svg",
    npm: "npm.svg",
    python: "python.svg",
    react: "react.svg",
    rust: "rust.svg",
    svg: "svg.svg",
    ts: "typescript.svg",
    ubuntu: "ubuntu.svg",
    windows: "windows",
)

#let getPath(name) = {
  if name in social {
    "assets/icons/" + social.at(name)
  }
  else if name in dev-icons {
    "assets/dev-icons/" + dev-icons.at(name)
  } else [
    #sym.quest
  ]
}


/* FOR SIMPLE ICONS */
// https://simpleicons.org/

/*#let siBasePath = (
  default: "assets/simple-icons/",
  color: "assets/simple-icons/colored/",
)

#let simplePath(brandName, colored: false) = {
  let basePath = siBasePath.default
  if colored {
    basePath = siBasePath.color
  }
  basePath + brandName + "-color.svg"
}*/

#let siBasePath = "assets/simple-icons/"

#let simplePath(brandName) = {
  siBasePath + brandName + ".svg"
}


/*
// https://typst.app/docs/reference/visualize/image/
#let original = read("diagram.svg")
#let changed = original.replace(
  "#2B80FF", // blue
  green.to-hex(),
)
#image.decode(original)
#image.decode(changed)
*/