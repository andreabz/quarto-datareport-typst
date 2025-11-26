---
title: Esempio di Report con Quarto + Typst
date: today
lang: it
abstract: |
    {{< lipsum 1 >}}
execute:
  echo: false
  warning: false
  message: false
format: 
  datareport-typst:
    font-paths: static/fonts/
---

::: {.cell}

:::



# Introduzione

Questo è un documento di esempio creato per mostrare l'utilizzo del tuo **template Typst per Quarto**. Il file contiene:

- testo formattato
- un grafico generato con `ggplot2`
- una tabella costruita con `gt`
- nessun dataset esterno (solo dataset forniti da R base)

L'obiettivo è verificare che il template funzioni correttamente con:

- *codice R*
- *figure*
- *tabelle*
- *rendering Typst*

Non poteva mancare un po' di lorem ipsum {{< lipsum 1 >}}.

# Analisi esplorativa dei dati

In questa sezione lavoriamo con il dataset `mtcars`, fornito di default in R.



{{< lipsum 1 >}}


::: {#tbl-prova .cell tbl-cap='Una tabella di prova.'}
::: {.cell-output-display}

```{=html}
<div id="vnxbjrqfso" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#vnxbjrqfso table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#vnxbjrqfso thead, #vnxbjrqfso tbody, #vnxbjrqfso tfoot, #vnxbjrqfso tr, #vnxbjrqfso td, #vnxbjrqfso th {
  border-style: none;
}

#vnxbjrqfso p {
  margin: 0;
  padding: 0;
}

#vnxbjrqfso .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#vnxbjrqfso .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#vnxbjrqfso .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#vnxbjrqfso .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#vnxbjrqfso .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#vnxbjrqfso .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vnxbjrqfso .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#vnxbjrqfso .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#vnxbjrqfso .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#vnxbjrqfso .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#vnxbjrqfso .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#vnxbjrqfso .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#vnxbjrqfso .gt_spanner_row {
  border-bottom-style: hidden;
}

#vnxbjrqfso .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#vnxbjrqfso .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#vnxbjrqfso .gt_from_md > :first-child {
  margin-top: 0;
}

#vnxbjrqfso .gt_from_md > :last-child {
  margin-bottom: 0;
}

#vnxbjrqfso .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#vnxbjrqfso .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#vnxbjrqfso .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#vnxbjrqfso .gt_row_group_first td {
  border-top-width: 2px;
}

#vnxbjrqfso .gt_row_group_first th {
  border-top-width: 2px;
}

#vnxbjrqfso .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#vnxbjrqfso .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#vnxbjrqfso .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#vnxbjrqfso .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vnxbjrqfso .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#vnxbjrqfso .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#vnxbjrqfso .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#vnxbjrqfso .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#vnxbjrqfso .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#vnxbjrqfso .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#vnxbjrqfso .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#vnxbjrqfso .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#vnxbjrqfso .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#vnxbjrqfso .gt_left {
  text-align: left;
}

#vnxbjrqfso .gt_center {
  text-align: center;
}

#vnxbjrqfso .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#vnxbjrqfso .gt_font_normal {
  font-weight: normal;
}

#vnxbjrqfso .gt_font_bold {
  font-weight: bold;
}

#vnxbjrqfso .gt_font_italic {
  font-style: italic;
}

#vnxbjrqfso .gt_super {
  font-size: 65%;
}

#vnxbjrqfso .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#vnxbjrqfso .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#vnxbjrqfso .gt_indent_1 {
  text-indent: 5px;
}

#vnxbjrqfso .gt_indent_2 {
  text-indent: 10px;
}

#vnxbjrqfso .gt_indent_3 {
  text-indent: 15px;
}

#vnxbjrqfso .gt_indent_4 {
  text-indent: 20px;
}

#vnxbjrqfso .gt_indent_5 {
  text-indent: 25px;
}

#vnxbjrqfso .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#vnxbjrqfso div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="mpg">mpg</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="cyl">cyl</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="disp">disp</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="hp">hp</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="drat">drat</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="wt">wt</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="qsec">qsec</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="vs">vs</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="am">am</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="gear">gear</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="carb">carb</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="mpg" class="gt_row gt_right">21.0</td>
<td headers="cyl" class="gt_row gt_right">6</td>
<td headers="disp" class="gt_row gt_right">160.0</td>
<td headers="hp" class="gt_row gt_right">110</td>
<td headers="drat" class="gt_row gt_right">3.90</td>
<td headers="wt" class="gt_row gt_right">2.620</td>
<td headers="qsec" class="gt_row gt_right">16.46</td>
<td headers="vs" class="gt_row gt_right">0</td>
<td headers="am" class="gt_row gt_right">1</td>
<td headers="gear" class="gt_row gt_right">4</td>
<td headers="carb" class="gt_row gt_right">4</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">21.0</td>
<td headers="cyl" class="gt_row gt_right">6</td>
<td headers="disp" class="gt_row gt_right">160.0</td>
<td headers="hp" class="gt_row gt_right">110</td>
<td headers="drat" class="gt_row gt_right">3.90</td>
<td headers="wt" class="gt_row gt_right">2.875</td>
<td headers="qsec" class="gt_row gt_right">17.02</td>
<td headers="vs" class="gt_row gt_right">0</td>
<td headers="am" class="gt_row gt_right">1</td>
<td headers="gear" class="gt_row gt_right">4</td>
<td headers="carb" class="gt_row gt_right">4</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">22.8</td>
<td headers="cyl" class="gt_row gt_right">4</td>
<td headers="disp" class="gt_row gt_right">108.0</td>
<td headers="hp" class="gt_row gt_right">93</td>
<td headers="drat" class="gt_row gt_right">3.85</td>
<td headers="wt" class="gt_row gt_right">2.320</td>
<td headers="qsec" class="gt_row gt_right">18.61</td>
<td headers="vs" class="gt_row gt_right">1</td>
<td headers="am" class="gt_row gt_right">1</td>
<td headers="gear" class="gt_row gt_right">4</td>
<td headers="carb" class="gt_row gt_right">1</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">21.4</td>
<td headers="cyl" class="gt_row gt_right">6</td>
<td headers="disp" class="gt_row gt_right">258.0</td>
<td headers="hp" class="gt_row gt_right">110</td>
<td headers="drat" class="gt_row gt_right">3.08</td>
<td headers="wt" class="gt_row gt_right">3.215</td>
<td headers="qsec" class="gt_row gt_right">19.44</td>
<td headers="vs" class="gt_row gt_right">1</td>
<td headers="am" class="gt_row gt_right">0</td>
<td headers="gear" class="gt_row gt_right">3</td>
<td headers="carb" class="gt_row gt_right">1</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">18.7</td>
<td headers="cyl" class="gt_row gt_right">8</td>
<td headers="disp" class="gt_row gt_right">360.0</td>
<td headers="hp" class="gt_row gt_right">175</td>
<td headers="drat" class="gt_row gt_right">3.15</td>
<td headers="wt" class="gt_row gt_right">3.440</td>
<td headers="qsec" class="gt_row gt_right">17.02</td>
<td headers="vs" class="gt_row gt_right">0</td>
<td headers="am" class="gt_row gt_right">0</td>
<td headers="gear" class="gt_row gt_right">3</td>
<td headers="carb" class="gt_row gt_right">2</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">18.1</td>
<td headers="cyl" class="gt_row gt_right">6</td>
<td headers="disp" class="gt_row gt_right">225.0</td>
<td headers="hp" class="gt_row gt_right">105</td>
<td headers="drat" class="gt_row gt_right">2.76</td>
<td headers="wt" class="gt_row gt_right">3.460</td>
<td headers="qsec" class="gt_row gt_right">20.22</td>
<td headers="vs" class="gt_row gt_right">1</td>
<td headers="am" class="gt_row gt_right">0</td>
<td headers="gear" class="gt_row gt_right">3</td>
<td headers="carb" class="gt_row gt_right">1</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">14.3</td>
<td headers="cyl" class="gt_row gt_right">8</td>
<td headers="disp" class="gt_row gt_right">360.0</td>
<td headers="hp" class="gt_row gt_right">245</td>
<td headers="drat" class="gt_row gt_right">3.21</td>
<td headers="wt" class="gt_row gt_right">3.570</td>
<td headers="qsec" class="gt_row gt_right">15.84</td>
<td headers="vs" class="gt_row gt_right">0</td>
<td headers="am" class="gt_row gt_right">0</td>
<td headers="gear" class="gt_row gt_right">3</td>
<td headers="carb" class="gt_row gt_right">4</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">24.4</td>
<td headers="cyl" class="gt_row gt_right">4</td>
<td headers="disp" class="gt_row gt_right">146.7</td>
<td headers="hp" class="gt_row gt_right">62</td>
<td headers="drat" class="gt_row gt_right">3.69</td>
<td headers="wt" class="gt_row gt_right">3.190</td>
<td headers="qsec" class="gt_row gt_right">20.00</td>
<td headers="vs" class="gt_row gt_right">1</td>
<td headers="am" class="gt_row gt_right">0</td>
<td headers="gear" class="gt_row gt_right">4</td>
<td headers="carb" class="gt_row gt_right">2</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">22.8</td>
<td headers="cyl" class="gt_row gt_right">4</td>
<td headers="disp" class="gt_row gt_right">140.8</td>
<td headers="hp" class="gt_row gt_right">95</td>
<td headers="drat" class="gt_row gt_right">3.92</td>
<td headers="wt" class="gt_row gt_right">3.150</td>
<td headers="qsec" class="gt_row gt_right">22.90</td>
<td headers="vs" class="gt_row gt_right">1</td>
<td headers="am" class="gt_row gt_right">0</td>
<td headers="gear" class="gt_row gt_right">4</td>
<td headers="carb" class="gt_row gt_right">2</td></tr>
    <tr><td headers="mpg" class="gt_row gt_right">19.2</td>
<td headers="cyl" class="gt_row gt_right">6</td>
<td headers="disp" class="gt_row gt_right">167.6</td>
<td headers="hp" class="gt_row gt_right">123</td>
<td headers="drat" class="gt_row gt_right">3.92</td>
<td headers="wt" class="gt_row gt_right">3.440</td>
<td headers="qsec" class="gt_row gt_right">18.30</td>
<td headers="vs" class="gt_row gt_right">1</td>
<td headers="am" class="gt_row gt_right">0</td>
<td headers="gear" class="gt_row gt_right">4</td>
<td headers="carb" class="gt_row gt_right">4</td></tr>
  </tbody>
  
</table>
</div>
```

:::
:::



Altro lorem ipsum {{< lipsum 5 >}}.



::: {.cell}
::: {.cell-output-display}
![Una figura di prova](template_files/figure-typst/fig-prova-1.svg){#fig-prova}
:::
:::



Ancora lorem ipsum {{< lipsum 8 >}}.

C'è anche un'equazione:

$$
\hat{y} = \beta_0 + \beta_1 x 
$$ {#eq-linear}

dove:

- $\hat{y}$ è il valore predetto,
- $\beta_0$ è l'intercetta,
- $\beta_1$ è il coefficiente associato al predittore $x$.

Altro lorem ipsum {{< lipsum 2 >}}.

# Conclusioni

Abbiamo mostrato come:

- integrare codice `R`
- generare grafici con `ggplot2`
- creare tabelle eleganti con `gt`
- utilizzare il tuo template Typst tramite Quarto

Se il documento si renderizza correttamente, allora la tua estensione Typst è installata e funzionante.
