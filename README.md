# Template Quarto-DataReport-Typst

Un formato Quarto + Typst per brevi report eleganti.  
Il design del template si ispira ai layout tipografici dei classici template LaTeX e a soluzioni moderne per Quarto.

Questo template è pensato per creare report o articoli con:

- Numerazione automatica di capitoli, figure, tabelle ed equazioni
- Header e footer personalizzati
- Stile uniforme per testi, figure, tabelle e blocchi di codice
- Layout tipograficamente equilibrato, con margini ottimizzati e spaziatura tra elementi

---

## Demo

Apri `template.qmd` per un esempio completo con:

- Testo di esempio (Lorem Ipsum)
- Grafici generati con `ggplot2`
- Tabelle create con `gt()`
- Equazioni con numerazione automatica

---

## Installazione

Per aggiungere il template a una directory esistente:

```bash
quarto install extension andreabz/quarto-report-typst
```

Oppure puoi creare un nuovo progetto basato sul template con un file `.qmd`:

```bash
quarto use template andreabz/quarto-report-typst
```

## Uso

1. Scrivi il tuo documento `.qmd` specificando il formato nell'intestazione `yaml`:

```yaml
format: 
  datareport-typst:
    font-paths: static/fonts/
```
2. Renderizza il documento:

```bash
quarto render documento.qmd
```

Il PDF generato userà automaticamente il layout, i font e le regole tipografiche del template.

## Requisiti

- Quarto >= 1.6.37
- Typst >= 0.11
- R >= 4.4.3