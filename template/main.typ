#import "../lib.typ": afpa // TODO voir pourquoi cela ne fonctionne pas avec "@local"

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

#lorem(6000)
