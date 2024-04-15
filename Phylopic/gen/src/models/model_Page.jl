# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Page

    Page(;
        build=nothing,
        _links=nothing,
        index=nothing,
    )

    - build::Int64 : The index number of the build that this object belongs to.
    - _links::PageAllOfLinks
    - index::Int64 : The index of this page within the list of all pages (zero-based).
"""
Base.@kwdef mutable struct Page <: OpenAPI.APIModel
    build::Union{Nothing, Int64} = nothing
    _links = nothing # spec type: Union{ Nothing, PageAllOfLinks }
    index::Union{Nothing, Int64} = nothing

    function Page(build, _links, index, )
        OpenAPI.validate_property(Page, Symbol("build"), build)
        OpenAPI.validate_property(Page, Symbol("_links"), _links)
        OpenAPI.validate_property(Page, Symbol("index"), index)
        return new(build, _links, index, )
    end
end # type Page

const _property_types_Page = Dict{Symbol,String}(Symbol("build")=>"Int64", Symbol("_links")=>"PageAllOfLinks", Symbol("index")=>"Int64", )
OpenAPI.property_type(::Type{ Page }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Page[name]))}

function check_required(o::Page)
    o.build === nothing && (return false)
    o._links === nothing && (return false)
    o.index === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ Page }, name::Symbol, val)
end
