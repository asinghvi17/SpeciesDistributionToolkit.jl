# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""getImages_200_response

    GetImages200Response(; value=nothing)
"""
mutable struct GetImages200Response <: OpenAPI.OneOfAPIModel
    value::Any # Union{ List, PageWithEmbeddedImages }
    GetImages200Response() = new()
    GetImages200Response(value) = new(value)
end # type GetImages200Response

function OpenAPI.property_type(::Type{ GetImages200Response }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(GetImages200Response, name)
end
