# NodesApi

All URIs are relative to *https://api.phylopic.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_autocomplete**](NodesApi.md#get_autocomplete) | **GET** /autocomplete | Gets suggestions for full names based on partial text.
[**get_lineage**](NodesApi.md#get_lineage) | **GET** /nodes/{uuid}/lineage | Retrieves the ancestral lineage for a given node.
[**get_node**](NodesApi.md#get_node) | **GET** /nodes/{uuid} | Returns a specific phylogenetic node.
[**get_nodes**](NodesApi.md#get_nodes) | **GET** /nodes | Lists all nodes, or a filtered subset.
[**get_resolve_object**](NodesApi.md#get_resolve_object) | **GET** /resolve/{authority}/{namespace}/{objectid} | Resolves an external identifier to the closest phylogenetic node.
[**get_resolve_objects**](NodesApi.md#get_resolve_objects) | **GET** /resolve/{authority}/{namespace} | Resolves a list of external identifiers under a single authorized namespace to a single phylogenetic node.
[**get_root**](NodesApi.md#get_root) | **GET** /root | Retrieves the root phylogenetic node (the ancestor of all others).
[**post_resolve_objects**](NodesApi.md#post_resolve_objects) | **POST** /resolve/{authority}/{namespace} | This method is deprecated. Use &#x60;getResolveObjects&#x60; instead.


# **get_autocomplete**
> get_autocomplete(_api::NodesApi, query::String; accept=nothing, build=nothing, _mediaType=nothing) -> GetAutocomplete200Response, OpenAPI.Clients.ApiResponse <br/>
> get_autocomplete(_api::NodesApi, response_stream::Channel, query::String; accept=nothing, build=nothing, _mediaType=nothing) -> Channel{ GetAutocomplete200Response }, OpenAPI.Clients.ApiResponse

Gets suggestions for full names based on partial text.

Never returns more than 16 results. Results with the text toward the beginning are favored. The results can be clarified via `/nodes` or `/images`, using the `filter_name` query parameter. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NodesApi** | API context | 
**query** | **String**| The text to look up. Must be at least two characters.  If not normalized (lower case, single spaces only, only alphabetic characters and hyphens [&#x60;\&quot;-\&quot;&#x60;]\\), a &#x60;308&#x60; response will indicate the URL with the normalized query text.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]

### Return type

[**GetAutocomplete200Response**](GetAutocomplete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_lineage**
> get_lineage(_api::NodesApi, uuid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_name=nothing, page=nothing, _mediaType=nothing) -> GetNodes200Response, OpenAPI.Clients.ApiResponse <br/>
> get_lineage(_api::NodesApi, response_stream::Channel, uuid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_name=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetNodes200Response }, OpenAPI.Clients.ApiResponse

Retrieves the ancestral lineage for a given node.

The nodes are listed in order from least to most ancestral. That is, the first node is the specified node, the second is its parent node, and the last is the root node.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NodesApi** | API context | 
**uuid** | **String**| The UUID of the entity. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_child_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;childNodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_primary_image** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;primaryImage&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_parent_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;parentNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **filter_name** | **String**| Limits results to entries matching a given name. The name should be normalized (all lower-case letters or hyphens, no diacritics, single spaces between words).  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60;).  | [default to nothing]
 **page** | **Int64**| Specifies a particular page of items to retrieve.  | [default to nothing]

### Return type

[**GetNodes200Response**](GetNodes200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_node**
> get_node(_api::NodesApi, uuid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_primary_image=nothing, embed_parent_node=nothing, _mediaType=nothing) -> NodeWithEmbedded, OpenAPI.Clients.ApiResponse <br/>
> get_node(_api::NodesApi, response_stream::Channel, uuid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_primary_image=nothing, embed_parent_node=nothing, _mediaType=nothing) -> Channel{ NodeWithEmbedded }, OpenAPI.Clients.ApiResponse

Returns a specific phylogenetic node.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NodesApi** | API context | 
**uuid** | **String**| The UUID of the entity. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_child_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;childNodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_primary_image** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;primaryImage&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_parent_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;parentNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]

### Return type

[**NodeWithEmbedded**](NodeWithEmbedded.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_nodes**
> get_nodes(_api::NodesApi; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing) -> GetNodes200Response, OpenAPI.Clients.ApiResponse <br/>
> get_nodes(_api::NodesApi, response_stream::Channel; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetNodes200Response }, OpenAPI.Clients.ApiResponse

Lists all nodes, or a filtered subset.

Nodes are listed with the most basal node first, followed by subclades in order from smallest to largest.  If `filter_name` is passed, the nodes with names matching the search text are listed according to how early in the name the search text appears. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NodesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_child_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;childNodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_items** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;items&#x60; in &#x60;_embedded&#x60;. (This is a prerequisite for including any embeds on the items themselves.)  | [default to nothing]
 **embed_primary_image** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;primaryImage&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_parent_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;parentNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **filter_collection** | **String**| Limits results to entities within the specified collection.  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60; for images).  | [default to nothing]
 **filter_name** | **String**| Limits results to entries matching a given name. The name should be normalized (all lower-case letters or hyphens, no diacritics, single spaces between words).  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60;).  | [default to nothing]
 **page** | **Int64**| Specifies a particular page of items to retrieve.  | [default to nothing]

### Return type

[**GetNodes200Response**](GetNodes200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_resolve_object**
> get_resolve_object(_api::NodesApi, authority::String, namespace::String, objectid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_resolve_object(_api::NodesApi, response_stream::Channel, authority::String, namespace::String, objectid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Resolves an external identifier to the closest phylogenetic node.

Valid query parameters passed to this method are included in the returned `Location` header.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NodesApi** | API context | 
**authority** | **String**| Specifies an authority for collections of objects.  | [default to nothing]
**namespace** | **String**| Specifies a particular collection of objects, under an authority.  | [default to nothing]
**objectid** | **String**| Specifies an object within an authorized namespace.  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_child_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;childNodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_parent_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;parentNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_primary_image** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;primaryImage&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_resolve_objects**
> get_resolve_objects(_api::NodesApi, authority::String, namespace::String, object_i_ds::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_resolve_objects(_api::NodesApi, response_stream::Channel, authority::String, namespace::String, object_i_ds::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Resolves a list of external identifiers under a single authorized namespace to a single phylogenetic node.

Identifiers toward the beginning of the list have priority. Subsequent identifiers are checked if a node cannot be found for an earlier identifier.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NodesApi** | API context | 
**authority** | **String**| Specifies an authority for collections of objects.  | [default to nothing]
**namespace** | **String**| Specifies a particular collection of objects, under an authority.  | [default to nothing]
**object_i_ds** | **String**| A comma-separated list of object IDs. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_child_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;childNodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_parent_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;parentNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_primary_image** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;primaryImage&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_root**
> get_root(_api::NodesApi; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_root(_api::NodesApi, response_stream::Channel; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Retrieves the root phylogenetic node (the ancestor of all others).

Redirects to the appropriate `/nodes/{uuid}` endpoint.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NodesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_child_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;childNodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_parent_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;parentNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_primary_image** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;primaryImage&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_resolve_objects**
> post_resolve_objects(_api::NodesApi, content_type::String, authority::String, namespace::String, request_body::Vector{String}; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> post_resolve_objects(_api::NodesApi, response_stream::Channel, content_type::String, authority::String, namespace::String, request_body::Vector{String}; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

This method is deprecated. Use `getResolveObjects` instead.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **NodesApi** | API context | 
**content_type** | **String**| The media type for the payload, including API version. Always &#x60;application/vnd.phylopic.v2+json&#x60;. | [default to nothing]
**authority** | **String**| Specifies an authority for collections of objects.  | [default to nothing]
**namespace** | **String**| Specifies a particular collection of objects, under an authority.  | [default to nothing]
**request_body** | [**Vector{String}**](String.md)| A list of object IDs. | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_child_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;childNodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_parent_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;parentNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_primary_image** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;primaryImage&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

