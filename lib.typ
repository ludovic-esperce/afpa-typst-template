#let afpa(title, subtitle, date, author, doc) = {
  let afpa_color = "#86bc24"

  // COnfiguration des paramètres de style communs à toutes les pages
  set par(justify: true)
  set text(
    font: "Liberation Sans"
  )
  set heading(numbering: "I.1.")
  show heading : set text(font: "Rockwell")

  // Paramètrage de la page
  set page(
    footer:
      context[
        #set text(10pt)
        #align(left)[ #text(fill: rgb(afpa_color))[Afpa •] #text(fill: rgb(90, 90, 90))[#author • #date.display("[day]/[month]/[year]")]]
        #align(right)[ *#counter(page).display("1",)*]
      ],
    background:
      locate(loc => {
        if counter(page).at(loc).first() == 1 { 
          image("assets/first-page-background.svg")
        } else { 
          image("assets/page-background.svg")
        }
      }),
    header:
      context {
        if counter(page).get().first() > 1 [
          #align(left)[ #text(fill: rgb(90, 90, 90))[#title]]
          ]
      },
    margin: (top: 3.5cm)
  )

  locate(loc => {
    if counter(page).at(loc).first() == 1 {
      [
        #set text(
          size: 36pt,
          font: "Rockwell"
        )
        #set par(justify: false)
        #align(start + horizon, text[
          *#title*
        ])
      ]
      [
        #set text(
          size: 20pt,
          font: "Rockwell"
        )
        #subtitle
      ]
      pagebreak()
    }
  })

  doc
}

