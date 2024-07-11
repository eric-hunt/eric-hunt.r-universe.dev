pkg_list <- c(
  "embark.rstheme" = "https://github.com/eric-hunt/embark.rstheme",
  "fragr" = "https://github.com/eric-hunt/fragr",
  "hRvstAPI" = "https://github.com/eric-hunt/hRvstAPI",
  "htce" = "https://github.com/eric-hunt/htce",
  "uncleR" = "https://github.com/eric-hunt/uncleR"
)

pkg_df <- tibble::enframe(
  pkg_list,
  name = "package",
  value = "url"
) |>
  tibble::add_column(subdir = NA)

jsonlite::write_json(
  pkg_df,
  path = "/Users/hunt/GitHub/eric-hunt.r-universe.dev/packages.json",
  pretty = TRUE
)
