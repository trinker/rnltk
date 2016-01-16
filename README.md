rnltk
============


[![Build
Status](https://travis-ci.org/trinker/rnltk.svg?branch=master)](https://travis-ci.org/trinker/rnltk)
[![Coverage
Status](https://coveralls.io/repos/trinker/rnltk/badge.svg?branch=master)](https://coveralls.io/r/trinker/rnltk?branch=master)
<a href="https://img.shields.io/badge/Version-0.0.1-orange.svg"><img src="https://img.shields.io/badge/Version-0.0.1-orange.svg" alt="Version"/></a>
</p>
<img src="inst/rnltk_logo/r_rnltk_logo.png" width="200" alt="rnltk Logo">

**rnltk** is a natural language tool kit for R. It is inspired by
Python's [NLTK](http://www.nltk.org/) porting and extending much of
Python's functionality with some R flavor. The packages/functions that
are included are designed to be more intuitive wrappers or optimized for
performance. Currently, the package calls the following packages
maintained by me:

There are plans to add to this list including outside packages, focusing
particularly on machine learning/classification packages.


Table of Contents
============

-   [[Installation](#installation)](#[installation](#installation))
-   [[Contact](#contact)](#[contact](#contact))

Installation
============


To download the development version of **rnltk**:

Download the [zip ball](https://github.com/trinker/rnltk/zipball/master)
or [tar ball](https://github.com/trinker/rnltk/tarball/master),
decompress and run `R CMD INSTALL` on it, or use the **pacman** package
to install the development version:

    if (!require("pacman")) install.packages("pacman")
    pacman::p_load_gh("trinker/rnltk")

Contact
=======

You are welcome to:   - submit suggestions and bug-reports at: <https://github.com/trinker/rnltk/issues>   - send a pull request on: <https://github.com/trinker/rnltk/>  

- compose a friendly e-mail to: <tyler.rinker@gmail.com>