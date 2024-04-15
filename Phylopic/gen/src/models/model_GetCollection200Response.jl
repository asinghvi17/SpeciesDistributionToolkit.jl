# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""getCollection_200_response

    GetCollection200Response(;
        _links=nothing,
        uuid=nothing,
    )

    - _links::GetCollection200ResponseLinks
    - uuid::String : The identifier for this collection.  Note: this is formatted like a UUID, but may or may not be a valid UUID. 
"""
Base.@kwdef mutable struct GetCollection200Response <: OpenAPI.APIModel
    _links = nothing # spec type: Union{ Nothing, GetCollection200ResponseLinks }
    uuid::Union{Nothing, String} = nothing

    function GetCollection200Response(_links, uuid, )
        OpenAPI.validate_property(GetCollection200Response, Symbol("_links"), _links)
        OpenAPI.validate_property(GetCollection200Response, Symbol("uuid"), uuid)
        return new(_links, uuid, )
    end
end # type GetCollection200Response

const _property_types_GetCollection200Response = Dict{Symbol,String}(Symbol("_links")=>"GetCollection200ResponseLinks", Symbol("uuid")=>"String", )
OpenAPI.property_type(::Type{ GetCollection200Response }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_GetCollection200Response[name]))}

function check_required(o::GetCollection200Response)
    o._links === nothing && (return false)
    o.uuid === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ GetCollection200Response }, name::Symbol, val)
    if name === Symbol("uuid")
        OpenAPI.validate_param(name, "GetCollection200Response", :pattern, val, r"^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$")
    end
end
