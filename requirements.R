required_packages <- c(
  "tidyverse",
  "readxl",
  "janitor",
  "visdat",
  "scales",
  "broom",
  "GGally",
  "patchwork",
  "corrplot",
  "knitr",
  "kableExtra",
  "ggthemes",
  "writexl",
  "rmarkdown"
)

missing_packages <- required_packages[
  !vapply(required_packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_packages) > 0) {
  install.packages(missing_packages)
}
