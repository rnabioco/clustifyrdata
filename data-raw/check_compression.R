library(usethis)
files <- list.files(path = "..", pattern = "\\.Robj$")
for (file in files) {
  load(paste0("data/", file))
}
for (file in files) {
  name <- stringr::str_remove(file, ".rda")
  s <- stringr::str_c("usethis::use_data(", name, ', compress = "xz", overwrite = TRUE)')
  eval(parse(text = s))
}