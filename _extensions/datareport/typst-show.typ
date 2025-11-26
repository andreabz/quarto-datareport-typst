#show: body => report(
  $if(title)$
    title: [$title$],
  $endif$
  $if(date)$
    date: [$date$],
  $endif$
  $if(lang)$
    lang: "$lang$",
  $endif$
  $if(abstract)$
    abstract: [$abstract$],
  $endif$
  body,
)