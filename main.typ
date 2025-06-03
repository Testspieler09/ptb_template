#import "@preview/glossarium:0.5.6": make-glossary, register-glossary, print-glossary
#import "@preview/acrostiche:0.5.2": init-acronyms, print-index, acr

#import "bausteine/konstanten.typ": ptb_titel, autoren, datum_der_veroeffentlichung

#set document(author: autoren, title: ptb_titel)
#set page(numbering: none, number-align: center)
#set text(font: "Libertinus Serif", lang: "de")

// SETUP Glossar und Acronyme
#show: make-glossary
#import "bausteine/glossar.typ": glossar, akronym-liste
#register-glossary(glossar)
#init-acronyms(akronym-liste)

// SETUP Literatur
#set bibliography(
  title: "Literaturverzeichnis",
  style: "ieee", // Nach belieben verändern (ressourcen/bib/hwr_zitierweise.csl ist auch eine Option)
)
#let bib = bibliography("ressourcen/bib/literatur.bib")

// SETUP Main Body
#include "bausteine/titelblatt.typ"
#pagebreak()

// Abstract
#include "bausteine/abstract.typ"
#pagebreak()

// Content outline
#outline(depth: 3, indent: 2%)
#pagebreak()

#set par(justify: true)

// Hinweis zur geschlechterneutraler Sprache
#include "bausteine/hinweis.typ"
#pagebreak()

// Einleitung
#include "bausteine/einleitung.typ"
#pagebreak()

// Inhalt
#include "bausteine/inhalt.typ"
#pagebreak()

// Ehrenwörtliche Erklärung
#include "bausteine/ehrenwoertliche_erklaerung.typ"
#pagebreak()

// Glossar
#set heading(numbering: none)
#set page(numbering: "I")
= Glossar
#print-glossary(glossar)
#pagebreak()

// Acronyms
#print-index(outlined: true, title: "Akronyme")
#pagebreak()

// Literaturverzeichnis
#bib
#pagebreak()

// Abbildungsverzeichnis
#let verzeichnis_titel = "Abbildungsverzeichnis"
#hide[#heading(verzeichnis_titel)]
#outline(title: verzeichnis_titel, target: figure.where(kind: image))
#pagebreak()

// Anhang
#include "bausteine/anhang.typ"
