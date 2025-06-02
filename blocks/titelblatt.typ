#import "konstanten.typ": *

#let gleichmaessiger_abstand = 0.25fr

// NOTE: Hier wird alles zur Mitte ausgerichtet
#set align(center)

// Logo setup
#v(gleichmaessiger_abstand)
#if logo != none {
  image(logo, width: 46%)
}
#v(gleichmaessiger_abstand)

// Titel Einstellungen
#let line_length = 90%
#line(length: line_length)
#text(2em, weight: 700, ptb_titel)
#line(length: line_length)

// Autoren Information
#pad(
  top: 2.9em,
  grid(
    columns: (1fr,) * calc.min(3, autoren.len()),
    gutter: 1em,
    ..autoren.map(author => text(1.3em, strong(author))),
  ),
)

// Mittlere Sektion
#align(center, text(1.1em, [vorgelegt am  #datum_der_veroeffentlichung]))
#v(0.6em, weak: true)
$circle.filled.small$
#v(0.6em, weak: true)
#fachbereich
#v(0.6em, weak: true)
#universitaet

#v(gleichmaessiger_abstand)

#table(
  columns: 2,
  stroke: none,
  align: left,
  column-gutter: 5%,
  [*Unternehmen:*], [#unternehmen],
  [*Studienjahrgang:*], [#studienjahrgang],
  [*Semester:*], [#semester],
  [*Matrikelnummer:*], [#matrikelnummer],
  [*Betreuer im Unternehmen:*], [#betreuer_unternehmen],
  [*Anzahl der Wörter:*], [#wort_anzahl],
)

#v(2*gleichmaessiger_abstand)

#table(
  columns: (50%,50%),
  stroke: none,
  inset: 20pt,
  align: left,
  [#line(length: 100%)Unterschrift Ausbilder], [#line(length: 100%)Unterschrift Betreuer (HWR)],
)

#v(gleichmaessiger_abstand)
