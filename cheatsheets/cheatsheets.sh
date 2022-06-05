#!/usr/bin/env bash

cheatsheets_R=(
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-visualization.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-transformation.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/tidyr.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-import.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/purrr.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/strings.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/factors.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/lubridate.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/rmarkdown.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/shiny.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/rstudio-ide.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/plumber.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/reticulate.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/keras.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/sparklyr.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/package-development.pdf'
  'https://www.rstudio.com/wp-content/uploads/2016/02/advancedR.pdf'
  'http://github.com/rstudio/cheatsheets/blob/main/base-r.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/bayesplot.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/bcea.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/caret.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/cartography.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/collapse.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/datatable.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/declaredesign.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/distr6.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/estimatr.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/eurostat.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/gganimate.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/gwasrapidd.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/golem.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/h2o.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/how-big-is-your-graph.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/imputeTS.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/jfa.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/labelled.pdf'
  'https://wch.github.io/latexsheet/'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/leaflet.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/Machine%20Learning%20Modelling%20in%20R.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/mlr.pdf'
  'https://github.com/mlaviolet/Mosaic-cheatsheets/blob/main/mosaic-cheatsheet-gf.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/nardl.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/nimble.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/oSCR.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/overviewR.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/packagefinder.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/parallel_computation.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/quanteda.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/quincunx.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/randomizr.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/regex.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/rphylopic.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/sas-r.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/SamplingStrata.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/sf.pdf'
  'http://github.com/rstudio/cheatsheets/blob/main/sjmisc.pdf'
  'http://github.com/rstudio/cheatsheets/blob/main/slackr.pdf'
  'http://github.com/rstudio/cheatsheets/blob/main/stata2r.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/survminer.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/syntax.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/teachR.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/time-series.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/tsbox.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/vegan.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/vtree.pdf'
  'https://raw.githubusercontent.com/rstudio/cheatsheets/main/xplain.pdf'
)

cheatsheets_python=(
  'https://s3.amazonaws.com/assets.datacamp.com/blog_assets/PythonForDataScience.pdf'
)
