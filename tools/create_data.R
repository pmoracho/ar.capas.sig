library(sf)
library(rgdal)
library(tidyverse)

create_data_from_shp <- function(capa, path) {
  zipname <- paste0(capa,".zip")
  tmpdir <-  file.path(tempdir(), zipname)
  fromfile <- file.path(path, zipname)
  unzip(fromfile, exdir=tmpdir)
  shapefile <- readOGR(tmpdir, capa, stringsAsFactors=TRUE,
                       use_iconv = TRUE,
                       encoding = 'utf8')
  st_as_sf(shapefile)
}


# pais
pais <- create_data_from_shp('pais', '~/Descargas')
pais$objeto <- NULL
usethis::use_data(pais, overwrite = TRUE, compress='xz')

# provincia
provincia <- create_data_from_shp('provincia', '~/Descargas')
provincia$objeto <- NULL
provincia$entidad <- NULL
provincia <- st_make_valid(provincia)
usethis::use_data(provincia, overwrite = TRUE, compress='xz')

# departamento
departamento <- create_data_from_shp('departamento', '~/Descargas')
departamento$objeto <- NULL

departamento %>%
  mutate(prov_in1 = substr(in1, 1, 2)) %>%
  as.data.frame() %>%
  left_join(provincia %>%
              as.data.frame(),
            by=c("prov_in1" = "in1"),
            suffix = c("", ".y")
            ) %>%
  select(gid, fna, gna, nam, in1, fdc, sag,
         provincia_gid = gid.y,
         provincia_fna = fna.y,
         provincia_nam = nam.y,
         geometry) %>%
  mutate(centroid = map(geometry, st_centroid),
         coords = map(centroid, st_coordinates),
         coords_x = map_dbl(coords, 1),
         coords_y = map_dbl(coords,2)) %>%
  st_as_sf() %>%
  st_make_valid() -> departamento

usethis::use_data(departamento, overwrite = TRUE, compress='xz')

# municipio
municipio <- create_data_from_shp('municipio', '~/Descargas')
municipio$objeto <- NULL

municipio %>%
  mutate(prov_in1 = substr(in1, 1, 2)) %>%
  as.data.frame() %>%
  left_join(provincia %>%
              as.data.frame(),
            by=c("prov_in1" = "in1"),
            suffix = c("", ".y")
  ) %>%
  select(gid, fna, gna, nam, in1, fdc, sag,
         provincia_gid = gid.y,
         provincia_fna = fna.y,
         provincia_nam = nam.y,
         geometry) %>%
  mutate(centroid = map(geometry, st_centroid),
         coords = map(centroid, st_coordinates),
         coords_x = map_dbl(coords, 1),
         coords_y = map_dbl(coords,2)) %>%
  st_as_sf() %>%
  st_make_valid() -> municipio

usethis::use_data(municipio, overwrite = TRUE, compress='xz')

# doscientas_millas_sector_antartico
doscientas_millas_sector_antartico <- create_data_from_shp('doscientas_millas_sector_antartico', '~/Descargas')
doscientas_millas_sector_antartico$objeto <- NULL
usethis::use_data(doscientas_millas_sector_antartico, overwrite = TRUE, compress='xz')

