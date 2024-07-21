#let afpa(title, subtitle, date, author, doc) = {
  // Paramètrage des méta-données du document
  set document(title: title, author: author, date: date)

  let afpa_color = rgb("#86bc24")
  let grey_color = rgb("#5A5A5A")

  // Configuration des paramètres de style communs à toutes les pages
  set par(justify: true)
  set text(font: "Liberation Sans", size: 12pt)
  show link: underline

  // Paramétrage des listes
  set list(indent: 2em)
  set enum(indent: 2em)

  set heading(numbering: "I.1.")
  show heading : set text(font: "Rockwell")

  // Paramètrage du style pour le code
  // on paramètre le langage par défaut de façon à la coloration correcte sur
  // le code "inline"
  // Valeurs possibles : "java", "rust", "cs", "cpp"...
  // liste complète des languages disponibles : https://github.com/jincheng9/markdown_supported_languages
  let default_code_lang = "java";

  set raw(theme: "assets/halcyon.tmTheme", lang: "java")
  let code_background_fill = rgb("#1d2433")
  let code_text_fill = rgb("#a2aabc")

  // Paramétrage pour le code enoturé de ```
  show raw.where(block: true): r => block(
    fill: code_background_fill,
    inset: 8pt,
    radius: 5pt,
    text(fill: rgb("#a2aabc"), r)
  )

  // Paramétrage pour le code entouré de `
  show raw.where(block: false): r => box(block(
    fill: code_background_fill,
    inset: 8pt,
    radius: 5pt,
    text(fill: rgb("#a2aabc"), r)
  ))

  // Paramètrage de la première page
  set page(
    footer:
      context[
        #set text(10pt)
        #align(left)[ #text(fill: afpa_color)[Afpa •] #text(fill: grey_color)[#author • #date.display("[day]/[month]/[year]")]]
        #align(right)[ *#text(fill: grey_color)[#counter(page).display("1")]*]
      ],
    background: image("assets/first-page-background.svg")
  )

  // Première page
  page([
    #set text(size: 34pt, font: "Rockwell")
    #set par(justify: false)
    #show par: set block(spacing: 0.6em)
    #align(start + horizon, text[*#title*])

    #set text(size: 18pt, font: "Rockwell")
    #subtitle
  ])

  // Paramètrage des pages à partir de la seconde
  set page(
    header: align(left)[ #text(fill: rgb(90, 90, 90))[#title]],
    footer:
      context[
        #set text(10pt)
        #align(left)[ #text(fill: afpa_color)[Afpa •] #text(fill: rgb(90, 90, 90))[#author • #date.display("[day]/[month]/[year]")]]
        #align(right)[ *#text(fill: grey_color)[#counter(page).display("1",)]*]
      ],
    background: image("assets/page-background.svg"),
    margin: (top: 3.5cm)
  )
  // insertion de la suite du document
  doc
}

