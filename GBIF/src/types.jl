"""
**Represents an occurrence in the GBIF format**

This is currently a subset of all the fields.
"""
struct Occurrence
  key::Integer
  datasetKey::String
  dataset::Union{String, Void}
  publishingOrgKey::Union{AbstractString, Void}
  publishingCountry::Union{AbstractString, Void}
  institutionCode::Union{AbstractString, Void}
  protocol::Union{AbstractString, Void}
  crawled::Union{DateTime, Void}
  parsed::Union{DateTime, Void}
  modified::Union{DateTime, Void}
  interpreted::Union{DateTime, Void}
  countryCode::Union{AbstractString, Void}
  country::Union{AbstractString, Void}
  basisOfRecord::Symbol
  individualCount::Union{Integer, Void}
  latitude::Union{AbstractFloat, Void}
  longitude::Union{AbstractFloat, Void}
  precision::Union{AbstractFloat, Void}
  uncertainty::Union{AbstractFloat, Void}
  geodetic::Union{AbstractString, Void}
  date::Union{DateTime, Void}
  issues::Array{Symbol,1}
  taxonKey::Union{Integer, Void}
  kingdomKey::Union{Integer, Void}
  phylumKey::Union{Integer, Void}
  classKey::Union{Integer, Void}
  orderKey::Union{Integer, Void}
  familyKey::Union{Integer, Void}
  genusKey::Union{Integer, Void}
  speciesKey::Union{Integer, Void}
  kingdom::Union{AbstractString, Void}
  phylum::Union{AbstractString, Void}
  class::Union{AbstractString, Void}
  order::Union{AbstractString, Void}
  family::Union{AbstractString, Void}
  genus::Union{AbstractString, Void}
  species::Union{AbstractString, Void}
  rank::Union{String, Void}
  generic::Union{AbstractString, Void}
  epithet::Union{AbstractString, Void}
  vernacular::Union{AbstractString, Void}
  scientific::Union{AbstractString, Void}
  observer::Union{AbstractString, Void}
  license::Union{AbstractString, Void}
end

function format_date(o, d)
  t = get(o, d, nothing)
  if t == nothing
    return nothing
  else
    DateTime(t[1:19])
  end
end

"""
**Generates an occurrence from the JSON response of GBIF**
"""
function Occurrence(o::Dict{String, Any})
  return Occurrence(
    o["key"],
    o["datasetKey"],
    get(o, "datasetName", nothing),
    get(o, "publishingOrgKey", nothing),
    get(o, "publishingCountry", nothing),
    get(o, "institutionCode", nothing),
    get(o, "protocol", nothing),
    format_date(o, "lastCrawled"),
    format_date(o, "lastParsed"),
    format_date(o, "modified"),
    format_date(o, "lastInterpreted"),
    get(o, "countryCode", nothing),
    get(o, "country", nothing),
    o["basisOfRecord"],
    get(o, "individualCount", nothing),
    get(o, "decimalLatitude", nothing),
    get(o, "decimalLongitude", nothing),
    get(o, "precision", nothing),
    get(o, "coordinateUncertaintyInMeters", nothing),
    get(o, "geodeticDatum", nothing),
    format_date(o, "eventDate"),
    o["issues"],
    get(o, "taxonKey", nothing),
    get(o, "kingdomKey", nothing),
    get(o, "phylumKey", nothing),
    get(o, "classKey", nothing),
    get(o, "orderKey", nothing),
    get(o, "familyKey", nothing),
    get(o, "genusKey", nothing),
    get(o, "speciesKey", nothing),
    get(o, "kingdom", nothing),
    get(o, "phylum", nothing),
    get(o, "class", nothing),
    get(o, "order", nothing),
    get(o, "family", nothing),
    get(o, "genus", nothing),
    get(o, "species", nothing),
    get(o, "taxonRank", nothing),
    get(o, "genericName", nothing),
    get(o, "specificEpithet", nothing),
    get(o, "vernacularName", nothing),
    get(o, "scientificName", nothing),
    get(o, "recordedBy", nothing),
    get(o, "license", nothing)
  )
end

import Base.show

"""
**Show an occurrence**
"""
function show(io::IO, o::Occurrence)
  println(io, "GBIF $(o.key)\t$(o.species)\t()$(o.country)")
end

"""
**List of occurrences and metadata***
"""
mutable struct Occurrences
  offset::Integer
  count::Integer
  query::Union{Dict{String,Any},Void}
  occurrences::SubArray{GBIF.Occurrence,1,Array{GBIF.Occurrence,1},Tuple{Array{Int64,1}},false} # TODO be explicit on the type
  raw::Array{Occurrence, 1}
  show::Array{Bool,1}
end

import Base.length, Base.getindex, Base.endof, Base.start, Base.done, Base.next

function length(o::Occurrences)
  length(o.occurrences)
end

function getindex(o::Occurrences, i::Int64)
  o.occurrences[i]
end

function getindex(o::Occurrences, r::UnitRange{Int64})
  o.occurrences[r]
end

function endof(o::Occurrences)
  endof(o.occurrences)
end

function start(o::Occurrences)
  start(o.occurrences)
end

function done(o::Occurrences, i::Any)
  done(o.occurrences, i)
end

function next(o::Occurrences, i::Any)
  next(o.occurrences, i)
end

"""
**Show several occurrences**
"""
function show(io::IO, o::Occurrences)
  println(io, "GBIF records: viewing $(length(o)) of $(length(o.raw)) out of $(o.count)")
end
