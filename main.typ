#import "@preview/supercharged-dhbw:1.2.0": *

#let abstract = lorem(100)

#set page(footer: context [
  Labor: GET / Herr Schlegel / Nikolas Bugaev, Jonas Münz / TES23B
  #h(2fr)
  #counter(page).display(
    "1/1",
    both: true,
  )
])

#show: supercharged-dhbw.with(
  title: "Laborbericht Versuch Nr. 2: Funktionsgenerator und Oszilloskop",
  authors: (
    (name: "Jonas Münz", student-id: "N/A", course: "TES23B", course-of-studies: "Embedded Systems"),
    (name: "Nikolas Bugaev", student-id: "N/A", course: "TES23B", course-of-studies: "Embedded Systems" ),
  ),
  language: "de", // en, de
  at-dhbw: true, // if true the company name on the title page and the confidentiality statement are hidden
  show-confidentiality-statement: false,
  show-declaration-of-authorship: false,
  show-table-of-contents: false,
  show-acronyms: false,
  show-list-of-figures: false,
  show-list-of-tables: false,
  show-code-snippets: false,
  show-appendix: false,
  show-abstract: false,
  show-header: true,
  numbering-style: "1 of 1", // https://typst.app/docs/reference/model/numbering
  numbering-alignment: center, // left, center, right
  abstract: abstract, // displays the abstract defined above
  university: "Duale Hochschule Baden-Württemberg",
  university-location: "Stuttgart",
  supervisor: "Herr Schlegel",
  date: datetime.today(),
  bibliography: bibliography("sources.bib"),
  logo-left: image("assets/logos/dhbw.svg"),
  // logo-right: image("assets/logos/company.svg"),
  // logo-size-ratio: "2:1" // ratio between the right logo and the left logo height (left-logo:right-logo) only the right logo is resized
)



// Edit this content to your liking

= Nachbereitungsaufgabe 1
#figure(
  image("assets/images/chart1.png", width:80%),
  caption: "Messung des Oszilloskop mit Funktionsgenerator"
)


= Nachbereitungsaufgabe 2

Warum Tastköpfe nachgeglichen werden müssen:

- Tastköpfe sind Messgeräte, die an Oszilloskopen angeschlossen werden, um Spannungen zu messen. Sie können von Werk ab kalibriert sein, können dennoch durch Alterung oder Beschädigung, alleine schon durch den Transport ungenau werden. Um die Genauigkeit der Messung zu gewährleisten, müssen Tastköpfe nachgeglichen werden.

= Nachbereitungsaufgabe 3

Bedeutung der Symbole:

  a)  Dieses Symbol steht für das Schaltzeichen "Erde".

  b) Dieses Symbol steht für das Schaltzeichen "Schutzleiter". Ein Schutzleiter ist ein Leiter, der im Fehlerfall den Strom ableitet und somit Personen vor einem elektrischen Schlag schützt.

  c) Dieses Symbol steht für die Masse bzw. das Gehäuse eines elektrischen Geräts. 

  d) Dieses Symbol steht für das Schaltzeichen eines Spannungsknoten. Ein Spannungsknoten ist ein Punkt in einem elektrischen Schaltplan, an dem mehrere Leiter aufeinandertreffen und die gleiche Spannung haben.

= Nachbereitungsaufgabe 4

Erst einmal ist zu erwähnen, dass die Verschiedenen Geräte verschiedene Zwecke erfüllen müssen.
Das Labornetzgerät liefert *Gleichspannung (DC)*, der _Funktionsgenerator_ liefert im Gegensatz dazu *Wechselspannung (AC)*, daraus folgt, dass die Geräte nicht für dieselben Zwecke benutzt werden.

Das _Labornetzgerät_ verhält sich in der Funktion wie eine *ideale Spannungsquelle* (zumindest annähernd), was dazu führt, dass der Strom gegen unendlich geht, da der Innenwiderstand gegen 0 geht. 

Dahingegen ist der _Funktionsgenerator_ eine reale Spannungsquelle, mit einer Ausgangsimpedanz von 50 Ω. Er verhält sich also nicht wie eine ideale Spannungsquelle, da der Innenwiderstand nicht gegen 0 geht, sondern konstant 50 Ω beträgt.

= Nachbereitungsaufgabe 5

Im nachfolgenden werden die beiden

== Spannungsquellen
=== Ideale Spannungsquelle
- Liefert konstante Spannung, unabhängig von der Last
- keine Verluste der Spannung
- Strom unendlich groß
=== Reale Spannungsquelle
- Verlust von Spannung aufgrund von R_i
- Strom nicht unendlich groß
=== Beispiel für den Unterschied der beiden Spannungsquellen:
Als Beispiel im echten Leben für den Unterschied zwischen einer idealen und einer realen Spannungsquelle ist eine Batterie und ein Netzteil. Eine Batterie ist eine reale Spannungsquelle, da sie eine begrenzte Lebensdauer hat und die Spannung abnimmt, wenn sie entladen wird. Ein Netzteil ist eine ideale Spannungsquelle, da es eine konstante Spannung liefert, unabhhängig von der Last.

== Widerstände 
=== Idealer Widerstand
- Konstanter Ohm wert
- Keine leistungsverluste aufgrund von Wärme
- Temperaturkoeffizient = 0
=== Realer Widerstand
- R ist veränderbar von Außeneinflüssen
- Temperaturkoeffizient ungleich 0
- Ein Widerst and hat eine sehr geringe eigen Induktivität und Kapazität, die normalerweise vernachlässigbar ist, nur bei sehr hohen Frequenzen eine  Rolle spielt
=== Beispiel für den Unterschied der beiden Widerstände:
In der Realität gibt es keine perfekten, idealen Widerstände. Ein realer Widerstand hat immer eine gewisse Induktivität und Kapazität, die bei hohen Frequenzen eine Rolle spielen. Ein idealer Widerstand hat keine Induktivität und Kapazität und ist somit nur ein reiner Widerstand.


