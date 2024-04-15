# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""ImageWithEmbedded
An image with related entities embedded.

    ImageWithEmbedded(;
        build=nothing,
        _links=nothing,
        created=nothing,
        uuid=nothing,
        attribution=nothing,
        modified=nothing,
        modifiedFile=nothing,
        sponsor=nothing,
        _embedded=nothing,
    )

    - build::Int64 : The index number of the build that this object belongs to.
    - _links::ImageAllOfLinks
    - created::ZonedDateTime : The time this was created.
    - uuid::String : The universally unique identifier for this entity.
    - attribution::String
    - modified::ZonedDateTime : The last time the image metadata (that is, the data in this record) was modified.
    - modifiedFile::ZonedDateTime : The last time the image file was modified.
    - sponsor::String
    - _embedded::ImageWithEmbeddedAllOfEmbedded
"""
Base.@kwdef mutable struct ImageWithEmbedded <: OpenAPI.APIModel
    build::Union{Nothing, Int64} = nothing
    _links = nothing # spec type: Union{ Nothing, ImageAllOfLinks }
    created::Union{Nothing, ZonedDateTime} = nothing
    uuid::Union{Nothing, String} = nothing
    attribution::Union{Nothing, String} = nothing
    modified::Union{Nothing, ZonedDateTime} = nothing
    modifiedFile::Union{Nothing, ZonedDateTime} = nothing
    sponsor::Union{Nothing, String} = nothing
    _embedded = nothing # spec type: Union{ Nothing, ImageWithEmbeddedAllOfEmbedded }

    function ImageWithEmbedded(build, _links, created, uuid, attribution, modified, modifiedFile, sponsor, _embedded, )
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("build"), build)
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("_links"), _links)
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("created"), created)
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("uuid"), uuid)
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("attribution"), attribution)
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("modified"), modified)
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("modifiedFile"), modifiedFile)
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("sponsor"), sponsor)
        OpenAPI.validate_property(ImageWithEmbedded, Symbol("_embedded"), _embedded)
        return new(build, _links, created, uuid, attribution, modified, modifiedFile, sponsor, _embedded, )
    end
end # type ImageWithEmbedded

const _property_types_ImageWithEmbedded = Dict{Symbol,String}(Symbol("build")=>"Int64", Symbol("_links")=>"ImageAllOfLinks", Symbol("created")=>"ZonedDateTime", Symbol("uuid")=>"String", Symbol("attribution")=>"String", Symbol("modified")=>"ZonedDateTime", Symbol("modifiedFile")=>"ZonedDateTime", Symbol("sponsor")=>"String", Symbol("_embedded")=>"ImageWithEmbeddedAllOfEmbedded", )
OpenAPI.property_type(::Type{ ImageWithEmbedded }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ImageWithEmbedded[name]))}

function check_required(o::ImageWithEmbedded)
    o.build === nothing && (return false)
    o._links === nothing && (return false)
    o.created === nothing && (return false)
    o.uuid === nothing && (return false)
    o.attribution === nothing && (return false)
    o.modified === nothing && (return false)
    o.modifiedFile === nothing && (return false)
    o.sponsor === nothing && (return false)
    o._embedded === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ ImageWithEmbedded }, name::Symbol, val)
    if name === Symbol("created")
        OpenAPI.validate_param(name, "ImageWithEmbedded", :format, val, "date-time")
    end
    if name === Symbol("created")
        OpenAPI.validate_param(name, "ImageWithEmbedded", :pattern, val, r"^\d{4}\-(0[1-9]|1[0-2])\-(0[1-9]|[12][0-9]|3[01])T([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]\.\d{3}Z$")
    end
    if name === Symbol("uuid")
        OpenAPI.validate_param(name, "ImageWithEmbedded", :format, val, "uuid")
    end
    if name === Symbol("modified")
        OpenAPI.validate_param(name, "ImageWithEmbedded", :format, val, "date-time")
    end
    if name === Symbol("modified")
        OpenAPI.validate_param(name, "ImageWithEmbedded", :pattern, val, r"^\d{4}\-(0[1-9]|1[0-2])\-(0[1-9]|[12][0-9]|3[01])T([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]\.\d{3}Z$")
    end
    if name === Symbol("modifiedFile")
        OpenAPI.validate_param(name, "ImageWithEmbedded", :format, val, "date-time")
    end
    if name === Symbol("modifiedFile")
        OpenAPI.validate_param(name, "ImageWithEmbedded", :pattern, val, r"^\d{4}\-(0[1-9]|1[0-2])\-(0[1-9]|[12][0-9]|3[01])T([0-1][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]\.\d{3}Z$")
    end
end
