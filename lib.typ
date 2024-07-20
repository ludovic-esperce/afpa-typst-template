#let afpa(title, subtitle, date, author, doc) = {
  let afpa_color = "#86bc24"

  // Configuration des paramètres de style communs à toutes les pages
  set par(justify: true)
  set text(font: "Liberation Sans")
  show link: underline

  set heading(numbering: "I.1.")
  show heading : set text(font: "Rockwell")

  // Paramètrage de la première page
  set page(
    footer:
      context[
        #set text(10pt)
        #align(left)[ #text(fill: rgb(afpa_color))[Afpa •] #text(fill: rgb(90, 90, 90))[#author • #date.display("[day]/[month]/[year]")]]
        #align(right)[ *#counter(page).display("1",)*]
      ],
    background: image("assets/first-page-background.svg")
  )

// Première page
  page([
    #set text(size: 36pt, font: "Rockwell")
    #set par(justify: false)
    #align(start + horizon, text[*#title*])

    #set text(size: 20pt, font: "Rockwell")
    #subtitle
  ])

  // Paramètrage des pages à partir de la seconde
  set page(
    header: align(left)[ #text(fill: rgb(90, 90, 90))[#title]],
    footer:
      context[
        #set text(10pt)
        #align(left)[ #text(fill: rgb(afpa_color))[Afpa •] #text(fill: rgb(90, 90, 90))[#author • #date.display("[day]/[month]/[year]")]]
        #align(right)[ *#counter(page).display("1",)*]
      ],
    background: image("assets/page-background.svg"),
    margin: (top: 3.5cm)
  )
  doc
}

