# ExternalIdentifiersApi

All URIs are relative to *https://api.phylopic.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_namespaces**](ExternalIdentifiersApi.md#get_namespaces) | **GET** /namespaces | Returns a list of authorized namespaces.
[**get_resolve_object**](ExternalIdentifiersApi.md#get_resolve_object) | **GET** /resolve/{authority}/{namespace}/{objectid} | Resolves an external identifier to the closest phylogenetic node.
[**get_resolve_objects**](ExternalIdentifiersApi.md#get_resolve_objects) | **GET** /resolve/{authority}/{namespace} | Resolves a list of external identifiers under a single authorized namespace to a single phylogenetic node.
[**post_resolve_objects**](ExternalIdentifiersApi.md#post_resolve_objects) | **POST** /resolve/{authority}/{namespace} | This method is deprecated. Use &#x60;getResolveObjects&#x60; instead.


# **get_namespaces**
> get_namespaces(_api::ExternalIdentifiersApi; accept=nothing, build=nothing, _mediaType=nothing) -> Vector{GetNamespaces200ResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> get_namespaces(_api::ExternalIdentifiersApi, response_stream::Channel; accept=nothing, build=nothing, _mediaType=nothing) -> Channel{ Vector{GetNamespaces200ResponseInner} }, OpenAPI.Clients.ApiResponse

Returns a list of authorized namespaces.

Returns a list of authorities (e.g., `ubio.org`) and the namespaces under them (e.g., `namebank`). These may be used to resolve external identifiers the *PhyloPic* nodes.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ExternalIdentifiersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]

### Return type

[**Vector{GetNamespaces200ResponseInner}**](GetNamespaces200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_resolve_object**
> get_resolve_object(_api::ExternalIdentifiersApi, authority::String, namespace::String, objectid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_resolve_object(_api::ExternalIdentifiersApi, response_stream::Channel, authority::String, namespace::String, objectid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Resolves an external identifier to the closest phylogenetic node.

Valid query parameters passed to this method are included in the returned `Location` header.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ExternalIdentifiersApi** | API context | 
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
> get_resolve_objects(_api::ExternalIdentifiersApi, authority::String, namespace::String, object_i_ds::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_resolve_objects(_api::ExternalIdentifiersApi, response_stream::Channel, authority::String, namespace::String, object_i_ds::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Resolves a list of external identifiers under a single authorized namespace to a single phylogenetic node.

Identifiers toward the beginning of the list have priority. Subsequent identifiers are checked if a node cannot be found for an earlier identifier.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ExternalIdentifiersApi** | API context | 
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

# **post_resolve_objects**
> post_resolve_objects(_api::ExternalIdentifiersApi, content_type::String, authority::String, namespace::String, request_body::Vector{String}; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> post_resolve_objects(_api::ExternalIdentifiersApi, response_stream::Channel, content_type::String, authority::String, namespace::String, request_body::Vector{String}; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

This method is deprecated. Use `getResolveObjects` instead.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ExternalIdentifiersApi** | API context | 
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

