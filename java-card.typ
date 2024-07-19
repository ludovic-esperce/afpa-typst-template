#let afpa_template(title, subtitle, date, author, doc) = {
  let afpa_color = "#86bc24"

  // COnfiguration des paramètres de style communs à toutes les pages
  set par(justify: true)
  set text(
    font: "Liberation Sans"
  )
  set heading(numbering: "I.1.")
  show heading : set text(font: "Rockwell")

  // Ajout du header + footer

  set page(
    footer:
      context[
        #set text(10pt)
        #align(left)[ #text(fill: rgb(afpa_color))[Afpa •] #author • #date.display("[day]/[month]/[year]") ]
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
      locate(loc => {
        if counter(page).at(loc).first() != 1 {
          align(left)[ #text(fill: rgb(129, 129, 129))[#title]]
        }
      }),
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

// Déclaration des variables
#let title = [Note de développement strudl]
#let subtitle = "TODO / instructions / notes diverses"
#let date = datetime.today()
#let author = "Ludovic Esperce"

#show: doc => afpa_template(
  title,
  subtitle,
  date,
  author,
  doc
)
= Introduction

L'objectif de ce projet est de développer une application "desktop" Java permettant de gérer une liste d'utilisateur et d'exporter des VCard.

Choix technologiques :
- l'application deva être codée en Java (version 17 ou ultérieure)
- l'interface graphique sera construite avec JavaFX

= Fonctionnalités attendues

== Gestion d'utilisaiteurs

CRUD sur des utilisateurs :
- gestion d'une liste d'utilisateurs
- ajout/suppression/modification

Un utilisateur est défini par les caractéristiques :
- nom
- prénom
- adresse
- numéro de téléphone

== Export de VCard en version 4

#lorem(16000)
