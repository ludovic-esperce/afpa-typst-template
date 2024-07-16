// Déclaration des variables
#let title = [Note de développement strudl]
#let sub_title = "TODO / instructions / notes diverses"
#let date = datetime.today()
#let author = "Ludovic Esperce"

#let afpa_color = "#86bc24"

// COnfiguration des paramètres de style communs à toutes les pages
#set par(justify: true)
#set text(
  font: "Liberation Sans"
)
#set heading(numbering: "I.1.")

// Ajout du header + footer
#set page(
  footer: context[
    #set text(10pt)
    #align(left)[ #text(fill: rgb(afpa_color))[Afpa •] #author • #date.display("[day]/[month]/[year]") ]
    #align(right)[
      *#counter(page).display(
        "1",
      )*
    ]
  ],
  background: 
    // #set page(margin: 50pt)
    // #set block(spacing: 12em)
      image("assets/background-title-page.png"),
  margin: (right: 1.85cm)
    
  
  // margin: (x: 1.8cm, y: 1.5cm),
)

// A tester 
// #set page(
//     header: locate(
//         loc => if [#loc.page()] == [1] {
//             [header first page]
//         } else {
//             [header other pages]
//         }
//     )
// )

#context[
  #set text(
    size: 36pt,
    font: "Rockwell"
  )
  #set par(justify: false)
  #align(start + horizon, text[
    *#title*
  ])
]

#context[
  #set text(
    size: 20pt,
    font: "Rockwell"
  )
  #sub_title
]


#pagebreak()

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
