rm (list = ls())   
# load the ncdf4 package
install.packages("ncdf4")
library(ncdf4)
#setting file paths
ncpathname <- "/Users/user/Documents/R for netcdf/"
ncname <- "cru10min30_tmp"  
ncfname <- paste(ncpathname, ncname, ".nc", sep="")
dataname <- "tmp"  #opens a temperature variable within the ncdf file

# open a netCDF file
ncin <- nc_open(ncfname)
print(ncin)


# get longitude and latitude
lon <- ncvar_get(ncin,"lon")
nlon <- dim(lon)
head(lon)
head(nlon)

#reading latitude
lat <- ncvar_get(ncin, "lat")
nlat <- dim(lat)
head(lat)
