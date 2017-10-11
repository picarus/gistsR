source("download.R")
library(tools)

#get the list of packages with its dependencies
packages <- getPackages(c("data.table","plyr")) 

# for linux
# download the list of packages to the specified folder
download.packages(packages, destdir=".", type="source")
#create a package index
write_PACKAGES(".", type = "source")
#install the packages
install.packages(c("data.table","plyr"), contriburl="file:///path", type="source")

# for windows
# download the list of packages to the specified folder in binary format
download.packages.win(packages, destdir=".", type="win.binary")
write_PACKAGES(".", type = "win.binary")
install.packages(c("data.table","plyr"), contriburl="file:///D:/Github/gists", type="win.binary")

