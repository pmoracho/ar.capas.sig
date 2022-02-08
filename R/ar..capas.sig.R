#' pais
#'
#' País se define como una nación jurídicamente organizada. En la entidad se
#' incluyen los límites de la República Argentina.
#'
#' Atributos:
#' \itemize{
#'   \item{fna}: Nombre geográfico
#'   \item{GNA}: Término genérico
#'   \item{NAM}: Término específico
#'   \item{FDC}: Fuente de captura
#'   \item{SAG}: Autoridad de fuente
#' }
#'
#' @docType data
#' @keywords datasets
#' @name pais
#' @usage data(pais)
#' @format Un objeto Simple Feature de 1 observacióne y 8 variables
#' @author Instituto Geográfico Nacional
#' @references \url{https://www.ign.gob.ar/NuestrasActividades/InformacionGeoespacial/CapasSIG}
"pais"

#' provincia
#'
#' País se define como una nación jurídicamente organizada. En la entidad se
#' incluyen los límites de la República Argentina.
#'
#' Atributos:
#' \itemize{
#'   \item{fna}: Nombre geográfico
#'   \item{gna}: Término genérico
#'   \item{nam}: Término específico
#'   \item{in1}: Código INDEC
#'   \item{fdc}: Fuente de captura
#'   \item{sag}: Autoridad de fuente
#' }
#'
#' @docType data
#' @keywords datasets
#' @name provincia
#' @usage data(provincia)
#' @format Un objeto Simple Feature de 24 observaciones y 8 variables
#' @author Instituto Geográfico Nacional
#' @references \url{https://www.ign.gob.ar/NuestrasActividades/InformacionGeoespacial/CapasSIG}
"provincia"

#' departamento
#'
#' División político administrativa de segundo orden que incluye partido y comuna.
#'
#' Atributos:
#' \itemize{
#'   \item{gid}: id
#'   \item{fna}: Nombre geográfico
#'   \item{gna}: Término genérico
#'   \item{nam}: Término específico
#'   \item{in1}: Código INDEC
#'   \item{fdc}: Fuente de captura
#'   \item{sag}: Autoridad de fuente
#'   \item{provincia_gid}: id (provincia)
#'   \item{provincia_fna}: Nombre geográfico (provincia)
#'   \item{provincia_nam}: Término específico (provincia)
#' }
#'
#' @docType data
#' @keywords datasets
#' @name departamento
#' @usage data(departamento)
#' @format Un objeto Simple Feature de 529 observaciones y 11 variables
#' @author Instituto Geográfico Nacional
#' @references \url{https://www.ign.gob.ar/NuestrasActividades/InformacionGeoespacial/CapasSIG}
"departamento"


#' Municipio
#'
#' División político administrativa de tercer orden que incluye comunas,
#' juntas vecinales y demás formas de gobierno local.
#'
#' Atributos:
#' \itemize{
#'   \item{FNA}: Nombre geográfico
#'   \item{GNA}: Término genérico
#'   \item{NAM}: Término específico
#'   \item{IN1}: Código INDEC
#'   \item{FDC}: Fuente de captura
#'   \item{SAG}: Autoridad de fuente
#' }
#'
#' @docType data
#' @keywords datasets
#' @name municipio
#' @usage data(municipio)
#' @format Un objeto Simple Feature de 1808 observaciones y 8 variables
#' @author Instituto Geográfico Nacional
#' @references \url{https://www.ign.gob.ar/NuestrasActividades/InformacionGeoespacial/CapasSIG}
"municipio"



#' doscientas_millas_sector_antartico
#'
#' Zona marítima que se extiende más allá del límite exterior del mar territorial,
#' hasta una distancia de 200 millas marinas a partir de la línea de base.
#' Sector antártico.
#'
#' Atributos:
#' \itemize{
#'   \item{SAG}: Autoridad de fuente
#'   \item{FDC}: Fuente de captura
#' }
#'
#' @docType data
#' @keywords datasets
#' @name doscientas_millas_sector_antartico
#' @usage data(doscientas_millas_sector_antartico)
#' @format Un objeto Simple Feature de 1 observación y 4 variables
#' @author Instituto Geográfico Nacional
#' @references \url{https://www.ign.gob.ar/NuestrasActividades/InformacionGeoespacial/CapasSIG}
"doscientas_millas_sector_antartico"
