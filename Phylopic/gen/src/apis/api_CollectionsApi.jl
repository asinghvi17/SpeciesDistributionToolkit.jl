# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct CollectionsApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `CollectionsApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ CollectionsApi }) = "https://api.phylopic.org"

const _returntypes_get_collection_CollectionsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => GetCollection200Response,
    Regex("^" * replace("404", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("406", "x"=>".") * "\$") => Errors,
)

function _oacinternal_get_collection(_api::CollectionsApi; accept=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_collection_CollectionsApi, "/collections/{uuid}", [])
    OpenAPI.Clients.set_param(_ctx.header, "Accept", accept)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/vnd.phylopic.v2+json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Links to endpoints for getting all entities of certain types that are in a specified collection.

UUIDs are sorted alphanumerically.

Params:
- accept::String

Return: GetCollection200Response, OpenAPI.Clients.ApiResponse
"""
function get_collection(_api::CollectionsApi; accept=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_collection(_api; accept=accept, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_collection(_api::CollectionsApi, response_stream::Channel; accept=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_collection(_api; accept=accept, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_contributors_CollectionsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => GetContributors200Response,
    Regex("^" * replace("307", "x"=>".") * "\$") => Link,
    Regex("^" * replace("400", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("404", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("406", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("410", "x"=>".") * "\$") => Errors,
)

function _oacinternal_get_contributors(_api::CollectionsApi; accept=nothing, build=nothing, embed_items=nothing, filter_collection=nothing, page=nothing, _mediaType=nothing)


    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_contributors_CollectionsApi, "/contributors", [])
    OpenAPI.Clients.set_param(_ctx.query, "build", build)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "embed_items", embed_items)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_collection", filter_collection)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.header, "Accept", accept)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/vnd.phylopic.v2+json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Lists all contributing users.

Contributors are listed in order from those with the most uploaded images to those with the fewest.

Params:
- accept::String
- build::Int64
- embed_items::String
- filter_collection::String
- page::Int64

Return: GetContributors200Response, OpenAPI.Clients.ApiResponse
"""
function get_contributors(_api::CollectionsApi; accept=nothing, build=nothing, embed_items=nothing, filter_collection=nothing, page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_contributors(_api; accept=accept, build=build, embed_items=embed_items, filter_collection=filter_collection, page=page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_contributors(_api::CollectionsApi, response_stream::Channel; accept=nothing, build=nothing, embed_items=nothing, filter_collection=nothing, page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_contributors(_api; accept=accept, build=build, embed_items=embed_items, filter_collection=filter_collection, page=page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_images_CollectionsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => GetImages200Response,
    Regex("^" * replace("307", "x"=>".") * "\$") => Link,
    Regex("^" * replace("400", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("404", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("406", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("410", "x"=>".") * "\$") => Errors,
)

function _oacinternal_get_images(_api::CollectionsApi; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing)
















    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_images_CollectionsApi, "/images", [])
    OpenAPI.Clients.set_param(_ctx.query, "build", build)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "embed_contributor", embed_contributor)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "embed_generalNode", embed_general_node)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "embed_items", embed_items)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "embed_nodes", embed_nodes)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "embed_specificNode", embed_specific_node)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_clade", filter_clade)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_collection", filter_collection)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_contributor", filter_contributor)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_created_after", filter_created_after)  # type ZonedDateTime
    OpenAPI.Clients.set_param(_ctx.query, "filter_created_before", filter_created_before)  # type ZonedDateTime
    OpenAPI.Clients.set_param(_ctx.query, "filter_license_by", filter_license_by)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_license_nc", filter_license_nc)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_license_sa", filter_license_sa)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_modified_after", filter_modified_after)  # type ZonedDateTime
    OpenAPI.Clients.set_param(_ctx.query, "filter_modified_before", filter_modified_before)  # type ZonedDateTime
    OpenAPI.Clients.set_param(_ctx.query, "filter_modifiedFile_after", filter_modified_file_after)  # type ZonedDateTime
    OpenAPI.Clients.set_param(_ctx.query, "filter_modifiedFile_before", filter_modified_file_before)  # type ZonedDateTime
    OpenAPI.Clients.set_param(_ctx.query, "filter_name", filter_name)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_node", filter_node)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.header, "Accept", accept)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/vnd.phylopic.v2+json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Lists all images, or a filtered subset.

Images are listed from most recently approved to least recently approved, unless certain `filter_*` parameters are specified: - `filter_clade`: images are listed from most basal nodes to most deeply nested nodes. - `filter_name`: images are listed according to which one's nodes' names fit the search string best. - `filter_modified_after`, `filter_modified_before`: images are listed from most recently modified to least recently modified - `filter_modifiedFile_after`, `filter_modifiedFile_before: images are listed from ones with the most recently modified files to ones with the least recently modified files 

Params:
- accept::String
- build::Int64
- embed_contributor::String
- embed_general_node::String
- embed_items::String
- embed_nodes::String
- embed_specific_node::String
- filter_clade::String
- filter_collection::String
- filter_contributor::String
- filter_created_after::ZonedDateTime
- filter_created_before::ZonedDateTime
- filter_license_by::String
- filter_license_nc::String
- filter_license_sa::String
- filter_modified_after::ZonedDateTime
- filter_modified_before::ZonedDateTime
- filter_modified_file_after::ZonedDateTime
- filter_modified_file_before::ZonedDateTime
- filter_name::String
- filter_node::String
- page::Int64

Return: GetImages200Response, OpenAPI.Clients.ApiResponse
"""
function get_images(_api::CollectionsApi; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_images(_api; accept=accept, build=build, embed_contributor=embed_contributor, embed_general_node=embed_general_node, embed_items=embed_items, embed_nodes=embed_nodes, embed_specific_node=embed_specific_node, filter_clade=filter_clade, filter_collection=filter_collection, filter_contributor=filter_contributor, filter_created_after=filter_created_after, filter_created_before=filter_created_before, filter_license_by=filter_license_by, filter_license_nc=filter_license_nc, filter_license_sa=filter_license_sa, filter_modified_after=filter_modified_after, filter_modified_before=filter_modified_before, filter_modified_file_after=filter_modified_file_after, filter_modified_file_before=filter_modified_file_before, filter_name=filter_name, filter_node=filter_node, page=page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_images(_api::CollectionsApi, response_stream::Channel; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_images(_api; accept=accept, build=build, embed_contributor=embed_contributor, embed_general_node=embed_general_node, embed_items=embed_items, embed_nodes=embed_nodes, embed_specific_node=embed_specific_node, filter_clade=filter_clade, filter_collection=filter_collection, filter_contributor=filter_contributor, filter_created_after=filter_created_after, filter_created_before=filter_created_before, filter_license_by=filter_license_by, filter_license_nc=filter_license_nc, filter_license_sa=filter_license_sa, filter_modified_after=filter_modified_after, filter_modified_before=filter_modified_before, filter_modified_file_after=filter_modified_file_after, filter_modified_file_before=filter_modified_file_before, filter_name=filter_name, filter_node=filter_node, page=page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_nodes_CollectionsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => GetNodes200Response,
    Regex("^" * replace("307", "x"=>".") * "\$") => Link,
    Regex("^" * replace("308", "x"=>".") * "\$") => Link,
    Regex("^" * replace("400", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("404", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("406", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("410", "x"=>".") * "\$") => Errors,
)

function _oacinternal_get_nodes(_api::CollectionsApi; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing)






    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_nodes_CollectionsApi, "/nodes", [])
    OpenAPI.Clients.set_param(_ctx.query, "build", build)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "embed_childNodes", embed_child_nodes)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "embed_items", embed_items)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "embed_primaryImage", embed_primary_image)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "embed_parentNode", embed_parent_node)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_collection", filter_collection)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "filter_name", filter_name)  # type String
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.header, "Accept", accept)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/vnd.phylopic.v2+json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Lists all nodes, or a filtered subset.

Nodes are listed with the most basal node first, followed by subclades in order from smallest to largest.  If `filter_name` is passed, the nodes with names matching the search text are listed according to how early in the name the search text appears. 

Params:
- accept::String
- build::Int64
- embed_child_nodes::String
- embed_items::String
- embed_primary_image::String
- embed_parent_node::String
- filter_collection::String
- filter_name::String
- page::Int64

Return: GetNodes200Response, OpenAPI.Clients.ApiResponse
"""
function get_nodes(_api::CollectionsApi; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_nodes(_api; accept=accept, build=build, embed_child_nodes=embed_child_nodes, embed_items=embed_items, embed_primary_image=embed_primary_image, embed_parent_node=embed_parent_node, filter_collection=filter_collection, filter_name=filter_name, page=page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_nodes(_api::CollectionsApi, response_stream::Channel; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_nodes(_api; accept=accept, build=build, embed_child_nodes=embed_child_nodes, embed_items=embed_items, embed_primary_image=embed_primary_image, embed_parent_node=embed_parent_node, filter_collection=filter_collection, filter_name=filter_name, page=page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_post_collection_CollectionsApi = Dict{Regex,Type}(
    Regex("^" * replace("303", "x"=>".") * "\$") => Link,
    Regex("^" * replace("400", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("406", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("413", "x"=>".") * "\$") => Errors,
    Regex("^" * replace("415", "x"=>".") * "\$") => Errors,
)

function _oacinternal_post_collection(_api::CollectionsApi, content_type::String, request_body::Vector{String}; accept=nothing, _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_post_collection_CollectionsApi, "/collections", [], request_body)
    OpenAPI.Clients.set_param(_ctx.header, "Accept", accept)  # type String
    OpenAPI.Clients.set_param(_ctx.header, "Content-Type", content_type)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/vnd.phylopic.v2+json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["application/json", ] : [_mediaType])
    return _ctx
end

@doc raw"""Redirects to an entity collection based on a list of UUIDs.

Params:
- content_type::String (required)
- request_body::Vector{String} (required)
- accept::String

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function post_collection(_api::CollectionsApi, content_type::String, request_body::Vector{String}; accept=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_collection(_api, content_type, request_body; accept=accept, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function post_collection(_api::CollectionsApi, response_stream::Channel, content_type::String, request_body::Vector{String}; accept=nothing, _mediaType=nothing)
    _ctx = _oacinternal_post_collection(_api, content_type, request_body; accept=accept, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export get_collection
export get_contributors
export get_images
export get_nodes
export post_collection
