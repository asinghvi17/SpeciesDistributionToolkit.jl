# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Page_allOf__links_previous

    PageAllOfLinksPrevious(;
        href=nothing,
    )

    - href::String
"""
Base.@kwdef mutable struct PageAllOfLinksPrevious <: OpenAPI.APIModel
    href::Union{Nothing, String} = nothing

    function PageAllOfLinksPrevious(href, )
        OpenAPI.validate_property(PageAllOfLinksPrevious, Symbol("href"), href)
        return new(href, )
    end
end # type PageAllOfLinksPrevious

const _property_types_PageAllOfLinksPrevious = Dict{Symbol,String}(Symbol("href")=>"String", )
OpenAPI.property_type(::Type{ PageAllOfLinksPrevious }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PageAllOfLinksPrevious[name]))}

function check_required(o::PageAllOfLinksPrevious)
    o.href === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ PageAllOfLinksPrevious }, name::Symbol, val)
    if name === Symbol("href")
        OpenAPI.validate_param(name, "PageAllOfLinksPrevious", :format, val, "url")
    end
end
