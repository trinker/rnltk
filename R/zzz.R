.onLoad <- function(libname, pkgname) {

    if (interactive()){

        rinker_packs_full <- c("trinker/syllable", "trinker/textshape", "trinker/termco",
            "trinker/parsent", "trinker/entity", "trinker/tagger",
            "trinker/sentimentr", "trinker/formality", "trinker/readability",
            "trinker/gofastr", "trinker/textreport", "trinker/lexr", "trinker/textreadr",
            "trinker/textproj", "trinker/qdapRegex", "trinker/stansent")

        rinker_packs <- gsub("^[^/]+/", "", rinker_packs_full)

        inst <- pacman::p_isinstalled(rinker_packs)
        notinst <- rinker_packs[!inst]
        if (length(notinst) > 0) {
            cat(sprintf(paste0("The following `rnltk` base packages were not found:\n\n  -%s\n\n",
                "Should I try to install them?\n"),
                paste(notinst, collapse=", ")))

            ans <- utils::menu(c("Yes", "No"))

            if (ans == "2") {
                try(pacman::p_load(char = rinker_packs[inst]), silent = TRUE)
                cat("Warning: Required packages not installed.  `rnltk` not fully functional.\n")
            } else {
                try(pacman::p_load_gh(rinker_packs_full), silent = TRUE)
                inst <- pacman::p_isinstalled(rinker_packs)
                if (all(inst)){
                    cat("\n\nLooks like missing installed correctly.\nLet the `nltk` analysis begin!\n")
                } else {
                    notinst <- rinker_packs[!inst]
                    cat(sprintf("\n\nMy apologies; the following `rnltk` base packages did not install:\n\n  -%s\n",
                        paste(notinst, collapse=", ")))
                }
            }
        }
    }
    invisible()
}
