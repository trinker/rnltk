.onLoad <- function(libname, pkgname) {

    try(pacman::p_load_gh(
        "trinker/textshape", "trinker/termco", "trinker/parsent", "trinker/entity",
        "trinker/tagger", "trinker/sentimentr", "trinker/formality", "trinker/readability",
        "trinker/gofastr", "trinker/textreport", "trinker/lexr", "trinker/textreadr",
        "trinker/textproj", "trinker/qdapRegex"
    ), silent = TRUE)

    invisible()
}
