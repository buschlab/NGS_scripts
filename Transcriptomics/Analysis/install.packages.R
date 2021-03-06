if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("viper")
BiocManager::install("GSVAdata")
BiocManager::install("OmnipathR")
BiocManager::install("BiocStyle")

install.packages("ashr")
install.packages("rmarkdown")
install.packages("tidyverse")
install.packages("visNetwork")
install.packages("GGally")

devtools::install_github("briatte/ggnet")
library(ggnet)

## msigdf-package and its vignette - https://github.com/ToledoEM/msigdf
# Install devtools if you don't already have it
install.packages("devtools")
# Get the data and build the vignette (requires tidyverse, knitr, rmarkdown)
devtools::install_github("toledoem/msigdf", build_vignettes = TRUE, force=TRUE)

### We are going to use the three packages Progeny, Dorothea and Carnival
# A guide from the developers is available here: https://github.com/saezlab/transcriptutorial
# Let's see how we can make this happen..

# maybe maybe not
BiocManager::install("vsn")

# PROGENy -----------------------------------------------------------------
## To install the package from Bioconductor
BiocManager::install("progeny")

# DOROTHEA ----------------------------------------------------------------
# https://genome.cshlp.org/content/29/8/1363
BiocManager::install("dorothea")

# CARNIVAL ----------------------------------------------------------------
# Publication: https://www.nature.com/articles/s41540-019-0118-z
BiocManager::install("CARNIVAL")
# CARNIVAL dependencies
install.packages(c("lpSolve","readr","igraph","readxl","tidyverse"))

# As you can see, CARNIVAL depends on separate tools to solve linear problems. This can be done, for
# relatively small problems, using the CRAN-package 'lpSolve'. Larger problems, like lets say with a 
# feature space of several thousand genes, are better processed with IBM's CPLEX optimizer.
# The tool can be obtained for free via the Academic Initiative.
# Just register there and download Cplex Studio for your operating system (http://ibm.biz/CPLEXonAI).
# At the end of the installation procedure you can chose to open the program. I usually open programs 
# like that at least once before continuing, I did not test if it is required. After you managed to go 
# through this unnecessary inconvinient process you can install the programm and continue with the 
# subsequent steps. 
# 
# Mac OSX:
# CplexAPI is an R-package that provides you with an interface to the Cplex optimizer. Unfortunately,
# the installation is not as simple as 'install.packages("CplexAPI")', you will have to follow the 
# instructions given in https://cran.r-project.org/web/packages/cplexAPI/INSTALL.
# To that end you will have to:
# 1. Make the binary of CPLEX optimizer available in your systems path variable. On my system the path
# is '/Applications/CPLEX_Studio1210/cplex/bin/x86-64_osx' and to make it permanently available you will
# have to put the following line in your .zshrc file via the terminal by:
#   sudo nano .zshrc
#   export PATH="/Applications/CPLEX_Studio1210/cplex/bin/x86-64_osx:$PATH"
#   save & close
#   source .zshrc 
#   OR close and reopen the terminal
# Now you can continue with the installation of cplexAPI via 'install.packages("CplexAPI")'




