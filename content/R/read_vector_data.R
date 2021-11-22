corona_cologne <- 
  glue::glue(
    "https://geoportal.stadt-koeln.de/arcgis/rest/services/\\
    Politik_und_Verwaltung/covid_stadtteile/MapServer/1/query?\\
    where=id+is+not+null&text=&objectIds=&time=&geometry=&\\
    geometryType=esriGeometryEnvelope&inSR=&spatialRel=\\
    esriSpatialRelIntersects&distance=&units=esriSRUnit_Foot&relationParam=\\
    &outFields=*&returnGeometry=true&returnTrueCurves=false&\\
    maxAllowableOffset=&geometryPrecision=&outSR=4326&havingClause=\\
    &returnIdsOnly=false&returnCountOnly=false&orderByFields=\\
    &groupByFieldsForStatistics=&outStatistics=&returnZ=false\\
    &returnM=false&gdbVersion=&historicMoment=&returnDistinctValues=false\\
    &resultOffset=&resultRecordCount=&returnExtentOnly=false\\
    &datumTransformation=&parameterValues=&rangeValues=\\
    &quantizationParameters=&featureEncoding=esriDefault&f=geojson"
  ) %>% 
  sf::st_read()

sf::st_write(corona_cologne, "./data/corona_cologne.shp", append = FALSE)

hospitals_cologne <-
  glue::glue(
    "https://geoportal.stadt-koeln.de/arcgis/rest/services/basiskarten/\\
    stadtplanthemen/MapServer/4/query?where=objectid+is+not+null&text=&\\
    objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&\\
    spatialRel=esriSpatialRelIntersects&distance=&units=esriSRUnit_Foot&\\
    relationParam=&outFields=*&returnGeometry=true&returnTrueCurves=false&\\
    maxAllowableOffset=&geometryPrecision=&outSR=4326&havingClause=&\\
    returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFields\\
    ForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&\\
    historicMoment=&returnDistinctValues=false&resultOffset=&resultRecord\\
    Count=&returnExtentOnly=false&datumTransformation=&parameterValues=&\\
    rangeValues=&quantizationParameters=&featureEncoding=esriDefault&f=pjson"
  ) %>% 
  sf::st_read()

sf::st_write(hospitals_cologne, "./data/hospitals_cologne.shp", append = FALSE)

streets_cologne <-
  glue::glue(
    "https://geoportal.stadt-koeln.de/arcgis/rest/services/Basiskarten/kgg/\\
    MapServer/11/query?where=objectid+is+not+null&text=&objectIds=&time=&\\
    geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=\\
    esriSpatialRelIntersects&distance=&units=esriSRUnit_Foot&relationParam=&\\
    outFields=*&returnGeometry=true&returnTrueCurves=false&maxAllowableOffset\\
    =&geometryPrecision=&outSR=4326&havingClause=&returnIdsOnly=false&return\\
    CountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=\\
    &returnZ=false&returnM=false&gdbVersion=&historicMoment=&returnDistinct\\
    Values=false&resultOffset=&resultRecordCount=&returnExtentOnly=false&\\
    datumTransformation=&parameterValues=&rangeValues=&quantizationParameters\\
    =&featureEncoding=esriDefault&f=pjson"
  ) %>% 
  sf::st_read()

sf::st_write(streets_cologne, "./data/streets_cologne.shp", append = FALSE)
