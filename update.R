lib_loc <- "C:/Users/apdev/Documents/R/win-library/3.3"
to_install <- unname(installed.packages(lib.loc = lib_loc)[, "Package"])
to_install
install.packages(pkgs = to_install)
