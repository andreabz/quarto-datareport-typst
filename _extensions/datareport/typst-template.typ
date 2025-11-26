// =======================================================
// Piccole funzioni di utilità e variabili
// =======================================================

// Costante phi usata per ingrandire i titoli secondo la sezione aurea.
#let phi = 1.618 
// Serif principale
#let serif = "Libertinus Serif"
// Sans-serif principale
#let sans-serif = "Libertinus Sans"
// Grigio chiaro
#let light-gray = luma(240)
// Grigio scuro
#let dark-gray = luma(127)

// Funzione che restituisce il numero corrente dell'heading.
#let heading-number = () => str(counter(heading).get().last())

// Funzione spacer: crea un box vuoto per aggiungere spaziature verticali/orizzontali.
#let spacer = (w: 0em, h: 1em) => box(outset: (x: w, y: h), " ")

// Funzione per testo stilizzato: centralizza dimensione, peso, font.
#let styled-text = (content, size: 2em, font: sans-serif, weight: "regular", fill: black) => {
  text(
    font: font,
    size: size,
    weight: weight,
    fill: fill,
    hyphenate: false,
    content,
  )
}

// Genera le caption correttamente formattate
#let render-caption(caption) = {
  text(weight: "semibold", font: sans-serif)[
    #caption.supplement #caption.counter.display(caption.numbering):
  ]
  text(font: sans-serif)[#caption.body]
}

// Spaziatura della figure rispetto al testo attorno
#let render-float(it, caption-pos: "below", top-inset: 0.75em, bottom-inset: 1.5em) = block(
  above: 1em,
  below: 1em,
  inset: (top: top-inset, bottom: bottom-inset),
  {
    // caption sopra
    if caption-pos == "above" {
      set align(center)
      set par(justify: false)
      render-caption(it.caption)
    }
    
    set align(center)
    it.body
    
    // caption sotto
    if caption-pos == "below" {
      set align(left)
      set par(justify: false)
      render-caption(it.caption)
    }
  }
)

// =======================================================
// Pagina del titolo
// =======================================================
#let title-page(title, abstract, date) = {
  set page(header: none,
           footer: none,
           numbering: none)

  align(center + top, {
    v(3cm) // Spazio dall'alto

    // Titolo (molto grande, grassetto, sans-serif)
    box(
    styled-text(title, size: 3em, weight: "extrabold")
    )

    v(1.5em)

    // Data (piccola, grigia)
    text(font: sans-serif, fill: dark-gray)[#date]

    v(3cm)

    // Abstract (più piccolo, serif, centrato)
    block(width: 85%, {
      set align(top + left)
      set par(justify: true, leading: 1em)
      set text(font: "Libertinus Serif", size: 1em)
      [
        #abstract
      ]
    })
})
}

// =======================================================
// Formatta l'header per un livello specificato
// come: numero | titolo 
// =======================================================
#let header(level) = {
  let current_page_number = here().page()
  // trova tutte le instazioni del livello specificato
  let all_headings = query(heading.where(level: level, outlined: true))
  // verifica la presenza di un inizio capitolo nella pagina
  let has_heading_on_page = all_headings.any(it => it.location().page() == current_page_number)
  // identifica le sezioni antecedenti o uguali alla pagina attuale
  let headings_on_or_before = all_headings.filter(it => it.location().page() <= current_page_number)
  // ottiene l'ultima intestazione valida (quella corrente)
  let last_heading = if headings_on_or_before.len() == 0 {
    none
  } else {
    headings_on_or_before.last().body
  }
  
  // se non è presente un inizio capitolo nella pagina, stampa l'header
  if not has_heading_on_page {
    let separator = text(font: sans-serif, fill: dark-gray, "|")
    let content = text(font: sans-serif, heading-number() + h(0.4em) + separator + h(0.4em) + last_heading)
    
    if calc.even(here().page()) {
      smallcaps(align(left, content))
    } else {
      smallcaps(align(right, content))
    }
  }
}

// =======================================================
// Intestazioni di livello 1:
// Numero grande in grigio | Titolo
// =======================================================
#show heading.where(level: 1): h => {
  let title_size = 1.5em
  // Numero grosso in grigio
  let head_number = box(
    baseline: 0.25em,
    outset: (y: 0.5em), //togliere
    inset: (right: title_size * 0.5), //togliere
    styled-text(heading-number(), size: title_size * phi, weight: "bold", fill: gray)
    )
  // Testo in maiuscoletto e sans serif
  let head_text = box(styled-text(smallcaps(h.body), size: title_size))
  // Se il capitolo compare nell'indice, assemblo numero, spaziatori e testo
  let content_outlined = text(head_number + head_text)
  // Se il capitolo non compare nell'indice mostro solo il testo
  let content_notoutlined = text(head_text)
  if h.outlined {
    // Evito fine pagina con solo il titolone
    block(above: title_size * 2, below: title_size * 0.5, breakable: false, content_outlined + v(title_size * 5))
    v(-1 *title_size * 5)
  } else {
    block(above: title_size * 2, below: title_size * 0.5, breakable: false, content_notoutlined + v(title_size * 5))
    v(-1 * title_size * 5)
  }
  
  // Reset dei contatori di figure e equazioni ad ogni nuovo capitolo
  counter(math.equation).update(0)
  let kinds = query(figure).map(fig => fig.kind).dedup()
  for kind in kinds {
    counter(figure.where(kind: kind)).update(0)
  }
}

// =======================================================
// Impostazioni di pagina
// =======================================================

// Numero di pagina alternato per pagine pari e dispari
#let page-number = () => {
  if calc.even(here().page()) {
    align(left, counter(page).display())
  } else {
    align(right, counter(page).display())
  }
}

// Converte la numerazione da 1.2. a 1.2
#let format-num = numbers => {
  numbers.pos().map(str).join(".")
}

// Tutte le intestazioni usano font sans-serif.
#show heading: set text(font: sans-serif)

// =======================================================
// Caption di tabelle e figure
// =======================================================
#show figure.where(kind: "quarto-float-fig"): it => render-float(it)
#show figure.where(kind: "image"): it => render-float(it)
#show figure.where(kind: "table"): it => render-float(it, caption-pos: "above", top-inset: 1.5em, bottom-inset: 0.75em)
#show figure.where(kind: "quarto-float-tbl"): it => render-float(it, caption-pos: "above", top-inset: 1.5em, bottom-inset: 0.75em)

// =======================================================
// Tabelle
// =======================================================
//
// Intestazione della prima riga delle tabelle in grassetto.
#show table.cell.where(y: 0): set text(weight: "bold")
#set table(
  // Riga solo sotto l'intestazione
  stroke: (_, y) => if y == 0 {
    (bottom: 1pt + black)
  } else {
    none
  },
  // Righe grigie alternate
  fill: (_, y) => if calc.odd(y) { light-gray },
  // Prima colonna a sinistra, le altre centrate
  align: (x, y) => (
    if x > 0 { center }
    else { left }
  )
)

// =======================================================
// Blocchi di codice
// =======================================================
#show raw: set block(
  // Sfondo grigio molto chiaro
  fill: light-gray,
  // Padding interno
  inset: 1em,
  // Occupa tutta la larghezza disponibile
  width: 100%,            
  stroke: none,
  // Angoli leggermente arrotondat
  radius: 3pt
)

// =======================================================
// Funzione report() definisce l'intero documento
// =======================================================
#let report(
  title: none,
  date: none,
  lang: none,
  abstract: none,
  content,
) = {
  // Dimensione pagina e margini
  set page(
    paper: "a4",
    margin: (inside: 3.5cm, outside: 4.5cm, top: 2.5cm, bottom: 3.5cm)
  )
  // Imposto la lingua
  set text(lang: lang)

  // =======================================================
  // Implementazione della Pagina Titolo e Indice
  // =======================================================

  // Pagina di titolo
  title-page(title, abstract, date)

  // Indice
  pagebreak()
  // Senza header e senza numerazione
  set page(header: none,
           footer: none,
           numbering: none)
  outline(
    title: auto,
    indent: auto,
    depth: 2
  )

  // Inizio del Contenuto Principale
  // Resetta la numerazione delle pagine a 1 per il corpo del documento
  pagebreak(weak: true)
  set page(
    header: context header(1),
    footer: context page-number()
  )
  counter(page).update(1)

  set par(justify: true)

  // Numerazione heading personalizzata
  set heading(numbering: (..numbers) => format-num(numbers))
  
  // Numerazione di figure e tabelle conserva l'informazione del capitolo
  set figure(numbering: (..num) => numbering("1.1", counter(heading).get().first(), num.pos().first()))
  
  // Numerazione delle equazioni conserva l'informazione del capitolo
  set math.equation(numbering: (..num) => numbering("(1.1)", counter(heading).get().first(), num.pos().first()))
  
  content
}
