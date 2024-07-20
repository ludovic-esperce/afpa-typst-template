#import "@local/afpa-template:0.1.0": afpa

// Déclaration des variables
#let title = "Modèle de document interne à l'Afpa"
#let subtitle = "Compte rendu de réunion / Ressource pédagogiques / Notes personnelles"
#let date = datetime.today()
#let author = "Ludovic Esperce"

#show: doc => afpa(
  title,
  subtitle,
  date,
  author,
  doc
)
= Introduction

Template #link("https://typst.app/")[typst] utilisable pour la génération de documents internes à l'#link("https://www.afpa.fr/")[Afpa].

#figure(
  image("assets/afpa-logo.png"),
  caption: [
    Logo de l'Afpa
  ],
)

Pour apprendre les bases de la rédaction d'un document vous pouvez vous référer à ces différents tutoriels :
- #link("https://typst.app/docs/reference/syntax/")[tutoriel officiel]
- #link("https://sitandr.github.io/typst-examples-book/book/basics/tutorial/markup.html")[utilisation de typst par l'exemple]

= Utilisation du modèle

== Installation de typst

Pour installer #link("https://typst.app/")[typst]. 

=== Windows

Via Winget :
```bash
winget install --id Typst.Typst
```

=== Linux

Vous pouvez consulter le site suivant afin de voir si typst est disponible pour votre distribution : #link("https://repology.org/project/typst/versions")[repology.org].

=== MacOS

Via Brew : 
```bash
brew install typst
```

#pagebreak()

== Ajout du "package" au système

Ce modèle est disponible sous un "package typst".
Pour rendre le package utilisable sur votre ordinateur une solution est de cloner ce dépôt dans le dossier suivant :
```
%AppData%\Local\typst\packages\local\afpa-template\0.1.0
```

== Création d'un nouveau document

Une fois le package dans le dossier cité précédemment, vous pourrez utiliser la commande suivante pour créer un nouveau document :
```bash
typst init @local/afpa-template:0.1.0 <nom-document>
```

== Titre 2

#lorem(6000)
