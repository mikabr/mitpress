#' MIT Press Linguistics book format
#'
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "mitpress_linguistics", package = "mitpress")
#' }
mitpress_linguistics <- function(...) {

  pkg_resource = function(...) {
    system.file(..., package = "mitpress")
  }

  template <- pkg_resource("rmarkdown/templates/linguistics/resources/template.tex")

  rmarkdown::pdf_document(template = template,
                          latex_engine = "lualatex",
                          ...)

}

#' MIT Press New Math book format
#'
#' @param ... Additional arguments to \code{rmarkdown::pdf_document}
#'
#' @return R Markdown output format to pass to
#'   \code{\link[rmarkdown:render]{render}}
#'
#' @export
#'
#' @examples
#' \dontrun{
#' library(rmarkdown)
#' draft("MyArticle.Rmd", template = "mitpress_newmath", package = "mitpress")
#' }
mitpress_newmath <- function(...) {

  pkg_resource = function(...) {
    system.file(..., package = "mitpress")
  }

  template <- pkg_resource("rmarkdown/templates/newmath/resources/template.tex")

  rmarkdown::pdf_document(template = template,
                          latex_engine = "lualatex",
                          ...)

}
