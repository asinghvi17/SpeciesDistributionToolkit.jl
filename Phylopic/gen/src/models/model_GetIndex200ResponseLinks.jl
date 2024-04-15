# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""getIndex_200_response__links

    GetIndex200ResponseLinks(;
        contact=nothing,
        documentation=nothing,
        resources=nothing,
        self=nothing,
    )

    - contact::TitledLink
    - documentation::Link
    - resources::Vector{TitledLink}
    - self::Link
"""
Base.@kwdef mutable struct GetIndex200ResponseLinks <: OpenAPI.APIModel
    contact = nothing # spec type: Union{ Nothing, TitledLink }
    documentation = nothing # spec type: Union{ Nothing, Link }
    resources::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{TitledLink} }
    self = nothing # spec type: Union{ Nothing, Link }

    function GetIndex200ResponseLinks(contact, documentation, resources, self, )
        OpenAPI.validate_property(GetIndex200ResponseLinks, Symbol("contact"), contact)
        OpenAPI.validate_property(GetIndex200ResponseLinks, Symbol("documentation"), documentation)
        OpenAPI.validate_property(GetIndex200ResponseLinks, Symbol("resources"), resources)
        OpenAPI.validate_property(GetIndex200ResponseLinks, Symbol("self"), self)
        return new(contact, documentation, resources, self, )
    end
end # type GetIndex200ResponseLinks

const _property_types_GetIndex200ResponseLinks = Dict{Symbol,String}(Symbol("contact")=>"TitledLink", Symbol("documentation")=>"Link", Symbol("resources")=>"Vector{TitledLink}", Symbol("self")=>"Link", )
OpenAPI.property_type(::Type{ GetIndex200ResponseLinks }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_GetIndex200ResponseLinks[name]))}

function check_required(o::GetIndex200ResponseLinks)
    o.contact === nothing && (return false)
    o.documentation === nothing && (return false)
    o.resources === nothing && (return false)
    o.self === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ GetIndex200ResponseLinks }, name::Symbol, val)
end
