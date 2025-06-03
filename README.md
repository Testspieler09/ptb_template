# Typst-Vorlage für die HWR (Hochschule für Wirtschaft und Recht Berlin)

Willkommen! Dieses Repository enthält zwei Typst-Vorlagen (Deutsch und Englisch), mit denen man wissenschaftliche Arbeiten nach den Richtlinien der HWR schreiben kannst.

## Was ist Typst?

Typst ist ein modernes, benutzerfreundliches Textsatzsystem, das das Erstellen schöner Dokumente einfach und angenehm macht. Wenn man Typst noch nicht kennst, kannst man [hier mehr erfahren](https://typst.app/docs/).

### Typst verwenden

Man kannst Typst ganz einfach **online** nutzen unter [typst.app](https://typst.app/) – ganz ohne Installation!

Falls man lieber **lokal** auf deinem Computer arbeitest, folge einfach den [offiziellen Installationsanleitungen](https://github.com/typst/typst#installation), um Typst einzurichten.

## Vorschau der Vorlage

Du möchtest sehen, wie die Vorlage aussieht? Schau dir den [`preview`](https://github.com/Testspieler09/ptb_template/tree/preview)-Branch an, um einen schnellen Eindruck zu bekommen.

## Erste Schritte

1. **Forke** dieses Repository oder **klone** es auf deinen Computer.
2. Öffne die Dateien und beginne damit, deine Arbeit anzupassen!

## Struktur der Vorlage

Damit man schnell loslegen und die Vorlage leicht anpassen kannst, ist das Projekt wie folgt aufgebaut:

```
.
├── ressourcen
│   ├── bib      # Literaturverzeichnisse und Zitierstile kommen hier rein
│   └── bilder   # Hierhin gehören alle Bilder, die in deiner Arbeit verwendet werden hin
├── bausteine    # Enthält alle einzelnen Bausteine, die in main.typ zusammengeführt werden
├── LICENSE
├── main.typ     # Die Hauptdatei, die alle Bestandteile zusammenführt
└── README.md
```

Diese Struktur macht es einfach, neue Abschnitte hinzuzufügen, Quellen zu aktualisieren oder Bilder auszutauschen.

Die **englische** Version ist im [`main`](https://github.com/Testspieler09/ptb_template/)-Branch zu finden.

### Abhängigkeiten

Diese Vorlage nutzt zwei Typst-Pakete, um zusätzliche Funktionen bereitzustellen:

* [`glossarium`](https://typst.app/universe/package/glossarium/) – zur Verwaltung von Glossaren
* [`acrostiche`](https://typst.app/universe/package/acrostiche/) – zur einfachen Handhabung von Abkürzungen

Diese Pakete werden beim Kompilieren automatisch geladen – man muss sie also nicht manuell installieren.

### Kleiner Shoutout

Ein großes Dankeschön an [**Patrick O'Brien**](https://github.com/POBrien333) für die Erstellung der Zitierstil-Datei, die in dieser Vorlage verwendet wird. Sie ist hier zu finden:

```
ressourcen/bib/hwr_zitierweise.csl
```

Originalquelle: [Berlin School of Economics and Law CSL Style](https://github.com/citation-style-language/styles/blob/master/berlin-school-of-economics-and-law-international-marketing-management.csl)

> \[!NOTE]
> Um diesen benutzerdefinierten Zitierstil zu verwenden, setze die folgende Einstellung in der `main.typ` Datei folgendermaßen:
>
> ```typst
> #set bibliography(
>   style: "ressourcen/bib/hwr_zitierweise.csl",
> )
> ```

## PDF erstellen

Sobald man Änderungen vorgenommen hat, kann man das Dokument mit folgendem Befehl im Projektordner in eine PDF-Datei umwandeln:

```bash
typst compile main.typ
```

Dadurch wird eine Datei `main.pdf` erstellt, die deine fertige Arbeit enthält.

## Hilfe oder Feedback?

Wenn du Fragen hast, auf Probleme stößt oder Ideen zur Verbesserung der Vorlage hast, öffne gerne ein Issue oder sende einen Pull Request. Dein Feedback ist immer willkommen!
