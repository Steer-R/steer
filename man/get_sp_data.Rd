% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_sp_data.R
\name{get_sp_data}
\alias{get_sp_data}
\title{Get roads from a state of the US, from TIGER API}
\usage{
get_sp_data(year, state, unified, path, name, file_type, county)
}
\arguments{
\item{year}{The year of the spatial object, according to the US Census Bureau}

\item{state}{A character vector of the two-digit FIPS code of the state you'd like to download the roads for. Can also
be state name or abbreviation (case-insensitive). Default to "PR"}

\item{unified}{(Logical) \code{TRUE} if the resultant spatial object must be a unique dataset with all road types (with a type
identifier column). \code{False} if a separate dataset should be returned for each road type.}

\item{path}{The path where the resultant dataset will be stored. If omitted, the dataframe will be available only
locally}

\item{name}{The name of the resultant file. Default to "data_pr"}

\item{file_type}{(string) The extension used to save the dataset. It can be a spatial object (i.e., "shp", "gpkg", "gdb")
or a text object (i.e., "csv", "txt"). The string must not include the intial dot. Default to "gpkg".}

\item{county}{(Optional) The county to retrieve the spatial feature. If \code{NULL}, roads from all counties will be returned.
Default to \code{NULL}}
}
\value{
If unified is \code{TRUE}, the output will be a spatial dataframe with the roads of the county or counties of the desired
state, each road will be classified as Primary, Secondary, Minor, Ramp, or Other, in the column type. If unified is
\code{FALSE}, the output will be five spatial dataframes, one for each road type.
}
\description{
\code{get_sp_data()} download a spatial dataset, using an API connection to TIGER/Line Shapefiles. This dataset include a
spatial feature object with the downloaded variables. The dataset may be stored locally in the R session, or saved
directly to a specified path.
}
\examples{
vias <- get_sp_data()
}
\seealso{
\itemize{
\item \code{\link[tigris:roads]{tigris::roads()}} which this function wraps
\item \href{https://www2.census.gov/geo/pdfs/maps-data/data/tiger/tgrshp2020/TGRSHP2020_TechDoc.pdf}{TIGER/Line Shapefiles
Techinal Documentation (2020)}
\item The classification by road type is made using the MAF/TIGER Feature Class Code (MTFCC, see
\href{https://www.census.gov/library/reference/code-lists/mt-feature-class-codes.html}{MAF/TIGER Feature Class Code
Definitions}). Each road type has an associated MTFCC, which for this case, is translated to a string indicating the
road type associated.
}
}
