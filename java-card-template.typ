
#let afpa_template(title, subtitle, doc) = {
  // Configuration des paramètres de style communs à toutes les pages
  set par(justify: true)
  set text(
    font: "Liberation Sans"
  )
  set heading(numbering: "I.1.")

  // Ajout du header + footer
  set page(
    footer: context[
      #set text(8pt)
      #align(left)[#title]
      #align(right)[
        #counter(page).display(
          "1/1",
          both: true
        )
      ]
    ],
    background: context[
      // #set page(margin: 50pt)
      // #set block(spacing: 12em)
      #align(top + right)[
        #image("logo-afpa.png", width: 20%)
      ]
    ],
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

  align(start + horizon, text(17pt)[
    *title*
  ])

  subtitle

  pagebreak()

  doc
}


// Déclaration des variables
#let title = [Note de développement strudl]
#let subtitle = [Recherches / TODO / idées / instructions]

#show: doc => afpa_template(
  title,
  subtitle,
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

#lorem(3600)
