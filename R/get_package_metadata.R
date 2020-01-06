#' @title get_package_metadata
#' 
#' @description Get package metadata
#' 
#' @param package_name a string. 
#' 
#' @usage get_package_metadata("ladestationen-fuer-elektroautos")
#' 
#' @eval a list

get_package_metadata <- function(package_name){
  
  package_url <- paste0("https://opendata.swiss/api/3/action/package_show?id=", 
                        package_name)
  
  if(! package_name %in% get_listed_packages(verbose=FALSE) ){
    message(paste0(package_name, " not listed. Please use values from get_listed_packages() only"))
  } else {
    rio::import(package_url, format = "JSON")
  }
}
