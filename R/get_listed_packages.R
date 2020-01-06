#' @title get_listed_packages
#' 
#' @description get the package list from opendata.swiss
#' 
#' @usage get_listed_packages()
#' @eval a vector of package names
#' 

get_listed_packages <- function(verbose = TRUE){
  url <- "https://opendata.swiss/api/3/action/package_list"
  lst <- rio::import(url, format = "JSON")
  
  if(lst$success){
    if(verbose){
      message(sprintf("Package listing from opendata.swiss succeded with %i packages ", length(lst$result)) )
    }
    return(lst$result)
  } else {
    message(paste0("Package listing did not succeed. Please check the url ", url) )
  }
}
