#' Get coordinates for cropping
#'
#' @export
#' @return coordinates for cropping
get_bb = function(){
  c(xmin = 294000, ymin = 9110700, xmax = 298700, ymax = 9120740)
}

#' Read raster data
#' 
#' @export
#' @param filename chr the file to read
#' @param crop NULL or a bbox for cropping
#' @return stars object
read_data = function(filename = system.file("tif/L7_ETMs.tif", package = "stars"),
                     crop = get_bb()){
  x = stars::read_stars(filename)
  if (!is.null(crop)){
    cropbb = sf::st_bbox(crop, crs = sf::st_crs(x))
    x = st_crop(x, cropbb)
  }
  return(x)
}
