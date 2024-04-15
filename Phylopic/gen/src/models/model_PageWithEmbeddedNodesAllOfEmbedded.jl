# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""PageWithEmbeddedNodes_allOf__embedded
Embedded entities belonging to the page. See &#x60;_links&#x60; for more information.

    PageWithEmbeddedNodesAllOfEmbedded(;
        items=nothing,
    )

    - items::Vector{PageWithEmbeddedNodesAllOfEmbeddedItems}
"""
Base.@kwdef mutable struct PageWithEmbeddedNodesAllOfEmbedded <: OpenAPI.APIModel
    items::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{PageWithEmbeddedNodesAllOfEmbeddedItems} }

    function PageWithEmbeddedNodesAllOfEmbedded(items, )
        OpenAPI.validate_property(PageWithEmbeddedNodesAllOfEmbedded, Symbol("items"), items)
        return new(items, )
    end
end # type PageWithEmbeddedNodesAllOfEmbedded

const _property_types_PageWithEmbeddedNodesAllOfEmbedded = Dict{Symbol,String}(Symbol("items")=>"Vector{PageWithEmbeddedNodesAllOfEmbeddedItems}", )
OpenAPI.property_type(::Type{ PageWithEmbeddedNodesAllOfEmbedded }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PageWithEmbeddedNodesAllOfEmbedded[name]))}

function check_required(o::PageWithEmbeddedNodesAllOfEmbedded)
    true
end

function OpenAPI.validate_property(::Type{ PageWithEmbeddedNodesAllOfEmbedded }, name::Symbol, val)
end
