#' A Global Migratory Birds Mapping Function
#'
#' This function allows you to visualize global migratory birds distribution
#' @param Yes Do you want to map migratory? Defaults to TRUE.
#' @keywords MigratoryBirdsGlobal
#' @export
#' @examples
#' MigratoryBirdsCount_function()
 
MigratoryBirdsCount_function <- function(ans=TRUE){
  if(ans==TRUE){
    library(raster)
    library(rgdal)
    library(WDI)
    library(leaflet)
    r <- raster("sample/GlobalS.tif")
    pal <- colorNumeric(c("#FFFFCC","#41B6C4","#0C2C84"), values(r),
                        na.color = "transparent")
    
    leaflet() %>% addTiles() %>%
      addRasterImage(r, colors = pal, opacity = 0.8) %>%
      addLegend(pal = pal, values = values(r),
                title = "Migratory Bird Species Count")
  }
  else {
    print("Restart.")
  }
}


