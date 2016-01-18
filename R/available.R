#' Available Packages and Functions
#'
#' See \pkg{rnltk}'s available packages and functions.
#'
#' @return Returns a named list of function vectors named by package.
#' @export
#' @examples
#' \dontrun{available()}
available <- function(){
    x <- capture.output(rnltk:::.onLoad)
    packs <- gsub("trinker/", "", sort(c(na.omit(unlist(qdapRegex::ex_between(x, '"', '"'))))))

    setNames(lapply(packs, pacman::p_funs), packs)
}


