module SpeciesDistributionToolkit

import ArchGDAL
import GDAL

import Distances
# TODO: call the one from Fauxcurrences when integrated
const _distance_function = Distances.Haversine(6371.0)

using MakieCore

import StatsBase
import OffsetArrays

import MultivariateStats
import StatsAPI

# We make ample use of re-export
using Reexport

# Expose the components
@reexport using SimpleSDMDatasets
@reexport using GBIF
@reexport using SimpleSDMLayers
@reexport using Fauxcurrences
@reexport using Phylopic

# SimpleSDMLayers to wrap everything together
include("integrations/datasets_layers.jl")

# GBIF to get species occurrence data
include("integrations/gbif_layers.jl")

# GBIF and Phylopic integration
include("integrations/gbif_phylopic.jl")

# Plotting
include("external/Makie.jl")

# Plotting
include("external/MultivariateStats.jl")

# Functions for IO
include("io/geotiff.jl")
include("io/ascii.jl")
include("io/read_write.jl")

# Functions for pseudo-absence generation
include("pseudoabsences.jl")
export WithinRadius, SurfaceRangeEnvelope, RandomSelection, DistanceToEvent
export pseudoabsencemask, backgroundpoints

end # module SpeciesDistributionToolkit
