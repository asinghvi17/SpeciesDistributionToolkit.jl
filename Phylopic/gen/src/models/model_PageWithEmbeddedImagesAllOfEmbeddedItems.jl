# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.



@doc raw"""PageWithEmbeddedImages_allOf__embedded_items

    PageWithEmbeddedImagesAllOfEmbeddedItems(; value=nothing)
"""
mutable struct PageWithEmbeddedImagesAllOfEmbeddedItems <: OpenAPI.OneOfAPIModel
    value::Any # Union{ Image, ImageWithEmbedded }
    PageWithEmbeddedImagesAllOfEmbeddedItems() = new()
    PageWithEmbeddedImagesAllOfEmbeddedItems(value) = new(value)
end # type PageWithEmbeddedImagesAllOfEmbeddedItems

function OpenAPI.property_type(::Type{ PageWithEmbeddedImagesAllOfEmbeddedItems }, name::Symbol, json::Dict{String,Any})
    
    # no discriminator specified, can't determine the exact type
    return fieldtype(PageWithEmbeddedImagesAllOfEmbeddedItems, name)
end
