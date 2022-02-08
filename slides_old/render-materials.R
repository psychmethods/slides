# down/load missing packages ----------------------------------------------------------------

# if (!require("pacman")) install.packages("pacman")
# library(pacman)
pacman::p_load(coronavirus,
               devtools,
               discord,
               fivethirtyeight,
               fs,
               ggbeeswarm,
               ggrepel,
               ggridges,
               here,
               hexbin,
 #              maps,
               NlsyLinks,
               patchwork,
               rmarkdown,
               skimr,
               tidyverse,
               uuid,
#               vroom,
               xaringan
              )
library(fs)
library(tidyverse)
library(rmarkdown)
library(xaringan)
# non-xaringan -----------------------------------------------------------------

rmds <- dir_info(recurse = 3, glob = "*.Rmd") %>%
  filter(!str_detect(path, "slides")) %>%
  pull(path)
walk(rmds, render)

# xaringan ---------------------------------------------------------------------

xaringans <- dir_info(recurse = 3, glob = "*.Rmd") %>%
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  pull(path)
walk(xaringans, render)



