/*
 * Copyright 2024 Yufan You
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 */

/*
 * I, Ze-en Xiong, hereby declare that I modified this template from the original template by Yufan You.
 * I have modified this template to fit my personal needs and preferences.
 */

#let github(path, name) = {
  return link("https://github.com/" + path)[
    #box(image("./icons/github.svg"), baseline: 0.1em, height: 1em)
    #h(0.1em)
    #if name == "" {
      path
    } else {
      name
    }
  ]
}

#let website(path, name) = {
  return link(path)[
    #box(image("./icons/website.svg"), baseline: 0.1em, height: 1em)
    #h(0.1em)
    #if name == "" {
      path
    } else {
      name
    }
  ]
}

#let section-header(title: "", icon: "") = {
  v(0.3em)
  grid(
    columns: (1fr),
    row-gutter: 0.6em,
    align(left)[
      #if icon != "" {
        box(align(center, image(icon)), height: 1.3em, width: 2em, baseline: 0.1em)
      }
      #text(weight: "semibold", 1.4em, title)
    ],
    line(stroke: 0.5pt+gray, length: 100%)
  )
}

#let cv(name: "", email: "", birthday: "", github-id: "", blog-url: "", photograph: "", photographWidth: 0em, body) = {
  set document(title: name + " 简历")
  set page(paper: "a4", margin: (x: 1.6cm, y: 1.6cm))
  set text(font: "Noto Serif CJK SC", 0.95em);
  set par(justify: true, linebreaks: "optimized")

  [
    #set box(baseline: 0.1em, height: 1em)

    #grid(
      columns: (auto, auto, auto),
      
      grid(
        row-gutter: 1em,
        
        block(text(weight: "semibold", 2em, name)),
        link("mailto:" + email)[
          #box(image("./icons/envelope.svg"))
          #h(0.1em)
          #email
        ],
        github(github-id, ""),
        [
          #box(image("./icons/cake-candles.svg"))
          #h(0.1em)
          #birthday
        ],
        website(blog-url, ""),
      ),
      h(1fr),
      if (photograph != "") {
        image(photograph, width: photographWidth)
      }
    )
  ]

  body
}

#let education(educations) = {
  section-header(title: "教育经历", icon: "./icons/building-columns.svg")
  set text(1.1em)

  grid(
    columns: (auto, 1fr, auto, auto),
    column-gutter: 1em,
    row-gutter: 0.6em,
    align: (horizon, horizon, horizon + center, horizon + center),
    ..for education in educations {
      (
        text(weight: "semibold", education.school),
        education.major,
        education.degree,
        text(0.9em, weight: "thin", emph(education.date)),
      )
    }
  )
}

#let research(researches) = {
  section-header(title: "科研经历", icon: "./icons/flask.svg")

  for research in researches {
    block[
      #text(1.25em, weight: "semibold", research.name)
      #h(0.5em)
      导师：#research.supervisor
      #h(1fr)
      #text(weight: "thin", emph(research.date))

      #for point in research.points.map(x => "[" + x + "]") {
        list(eval(point))
      }

      #v(0.2em)
    ]
  }
}

#let course-projects(projects) = {
  section-header(title: "课程项目", icon: "./icons/code.svg")

  for project in projects {
    block[
      #text(1.25em, weight: "semibold", project.name)
      #h(0.5em)
      #project.course
      #if project.repo != "" {
        h(0.5em)
        github(project.repo, "项目链接")
      }
      #h(1fr)
      #project.role
      #h(0.5em)
      #box(align(center, text(weight: "thin", emph(project.date))), width: 9em)

      #if project.tech != "" {
        v(-0.5em)
        h(0.05em)
        text(weight: "thin", 0.8em, project.tech)
        v(-0.4em)
      }

      #for point in project.points.map(x => "[" + x + "]")  {
        list(eval(point))
      }
      #v(0.2em)
    ]
  }
}

#let open-source(description, projects) = {
  section-header(title: "开源贡献", icon: "./icons/github.svg")

  description
  v(0.2em)

  for project in projects {
    block[
      #text(1.25em, weight: "semibold", project.name)
      #if project.repo != "" {
        h(0.5em)
        github(project.repo, "")
      }
      #if project.star != "" {
        h(0.5em)
        box(image("./icons/star.svg"), baseline: 0.1em, height: 1em)
        h(0.2em)
        project.star
      }
      #if project.tech != "" {
        h(0.5em)
        text(weight: "thin", 0.9em, project.tech)
      }
      #h(1fr)
      #box(align(center, project.role), width: 5em)
      #h(0.5em)
      #box(align(center, text(weight: "thin", emph(project.date))), width: 5em)

      #project.desc
      #v(0.2em)
    ]
  }
}

#let awards(awards) = {
  section-header(title: "荣誉奖项", icon: "./icons/award.svg")

  grid(
    columns: (auto, auto, 1fr),
    align: (left, left, right),
    gutter: 1em,
    ..for award in awards {
      (
        award.name,
        text(weight: "semibold", award.prize),
        text(weight: "thin", emph(award.date)),
      )
    }
  )
}

#let skills(skills) = {
  section-header(title: "专业技能", icon: "./icons/gears.svg")

  grid(
    columns: (auto, 1fr),
    gutter: 1em,
    ..for skill in skills {
      (
        text(weight: "semibold", skill.name),
        skill.items.join(" / "),
      )
    }
  )
}

#let services(services) = {
  section-header(title: "社会服务", icon: "./icons/building-columns.svg")

  for service in services {
    block[
      #text(1.25em, weight: "semibold", service.title)

      #for item in service.items {
        text(weight: "semibold", item.name)
        h(1em)
        text(weight: "thin", 0.9em, emph(item.desc))
        h(1fr)
        
        if item.repo != "" {
          h(0.5em)
          github(item.repo, "项目链接")
        }
        if item.link != "" {
          h(0.5em)
          website(item.link, "讲义链接")
        }
        h(3em)
        text(weight: "thin", 0.9em, emph(item.date))
        
        v(0.2em)
      }
    ]
  }
}
