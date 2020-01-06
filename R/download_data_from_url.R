#' @title download_data_from_url
#' 
#' @param download_url string. a valid url
#' @param format string. 
#' @param try_unsupported_format logical. default FALSE. 
#' 

download_data_from_url <- function(download_url, 
                                   format = "JSON", 
                                   try_unsupported_format = FALSE){
  supported_formats <- c("JSON", "XLSX", "XLS", "CSV")
  
  if( (!format %in% supported_formats) & !try_unsupported_format ){
    message(paste0(format, " not supported yet"))
  } else {
    rio::import(download_url, format = format)
  }
}
