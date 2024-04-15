# SearchApi

All URIs are relative to *https://api.phylopic.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_autocomplete**](SearchApi.md#get_autocomplete) | **GET** /autocomplete | Gets suggestions for full names based on partial text.
[**get_images**](SearchApi.md#get_images) | **GET** /images | Lists all images, or a filtered subset.
[**get_nodes**](SearchApi.md#get_nodes) | **GET** /nodes | Lists all nodes, or a filtered subset.
[**get_resolve_object**](SearchApi.md#get_resolve_object) | **GET** /resolve/{authority}/{namespace}/{objectid} | Resolves an external identifier to the closest phylogenetic node.
[**get_resolve_objects**](SearchApi.md#get_resolve_objects) | **GET** /resolve/{authority}/{namespace} | Resolves a list of external identifiers under a single authorized namespace to a single phylogenetic node.
[**post_resolve_objects**](SearchApi.md#post_resolve_objects) | **POST** /resolve/{authority}/{namespace} | This method is deprecated. Use &#x60;getResolveObjects&#x60; instead.


# **get_autocomplete**
> get_autocomplete(_api::SearchApi, query::String; accept=nothing, build=nothing, _mediaType=nothing) -> GetAutocomplete200Response, OpenAPI.Clients.ApiResponse <br/>
> get_autocomplete(_api::SearchApi, response_stream::Channel, query::String; accept=nothing, build=nothing, _mediaType=nothing) -> Channel{ GetAutocomplete200Response }, OpenAPI.Clients.ApiResponse

Gets suggestions for full names based on partial text.

Never returns more than 16 results. Results with the text toward the beginning are favored. The results can be clarified via `/nodes` or `/images`, using the `filter_name` query parameter. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SearchApi** | API context | 
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

# **get_images**
> get_images(_api::SearchApi; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing) -> GetImages200Response, OpenAPI.Clients.ApiResponse <br/>
> get_images(_api::SearchApi, response_stream::Channel; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetImages200Response }, OpenAPI.Clients.ApiResponse

Lists all images, or a filtered subset.

Images are listed from most recently approved to least recently approved, unless certain `filter_*` parameters are specified: - `filter_clade`: images are listed from most basal nodes to most deeply nested nodes. - `filter_name`: images are listed according to which one's nodes' names fit the search string best. - `filter_modified_after`, `filter_modified_before`: images are listed from most recently modified to least recently modified - `filter_modifiedFile_after`, `filter_modifiedFile_before: images are listed from ones with the most recently modified files to ones with the least recently modified files 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SearchApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_contributor** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;contributor&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_general_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;generalNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_items** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;items&#x60; in &#x60;_embedded&#x60;. (This is a prerequisite for including any embeds on the items themselves.)  | [default to nothing]
 **embed_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;nodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_specific_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;specificNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **filter_clade** | **String**| Limits results to entries within a clade (as identified by its UUID).  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_collection** | **String**| Limits results to entities within the specified collection.  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60; for images).  | [default to nothing]
 **filter_contributor** | **String**| Limits results to entries contributed by a certain user (as identified by their UUID).  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_created_after** | **ZonedDateTime**| Limits results to image entries created (that is, approved) at or after a given date-time.   Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_created_before&#x60; and &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_created_before** | **ZonedDateTime**| Limits results to image entries created (that is, approved) at or before a given date-time.   Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_created_after&#x60; and &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_license_by** | **String**| If &#x60;\&quot;true\&quot;&#x60;, limits results to entries with a license that requires attribution. If &#x60;\&quot;false\&quot;&#x60;, limits results to entries with a license that does not require attribution.  | [default to nothing]
 **filter_license_nc** | **String**| If &#x60;\&quot;true\&quot;&#x60;, limits results to entries with a license that does not allow commercial usage. If &#x60;\&quot;false\&quot;&#x60;, limits results to entries with a license that allows commercial usage.  | [default to nothing]
 **filter_license_sa** | **String**| If &#x60;\&quot;true\&quot;&#x60;, limits results to entries with a license with the StandAlone clause. If &#x60;\&quot;false\&quot;&#x60;, limits results to entries with a license without the StandAlone clause.  | [default to nothing]
 **filter_modified_after** | **ZonedDateTime**| Limits results to image entries modified at or after a given date-time.   Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_modified_before&#x60; and &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_modified_before** | **ZonedDateTime**| Limits results to image entries modified at or before a given date-time.   Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_modified_after&#x60; and &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_modified_file_after** | **ZonedDateTime**| Limits results to images whose file was modified at or after a given date-time.   Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_modifiedFile_before&#x60; and &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_modified_file_before** | **ZonedDateTime**| Limits results to images whose file was modified at or before a given date-time.   Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_modifiedFile_after&#x60; and &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_name** | **String**| Limits results to entries matching a given name. The name should be normalized (all lower-case letters or hyphens, no diacritics, single spaces between words).  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60;).  | [default to nothing]
 **filter_node** | **String**| Limits results to entries matching a given node.  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60;).  | [default to nothing]
 **page** | **Int64**| Specifies a particular page of items to retrieve.  | [default to nothing]

### Return type

[**GetImages200Response**](GetImages200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_nodes**
> get_nodes(_api::SearchApi; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing) -> GetNodes200Response, OpenAPI.Clients.ApiResponse <br/>
> get_nodes(_api::SearchApi, response_stream::Channel; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetNodes200Response }, OpenAPI.Clients.ApiResponse

Lists all nodes, or a filtered subset.

Nodes are listed with the most basal node first, followed by subclades in order from smallest to largest.  If `filter_name` is passed, the nodes with names matching the search text are listed according to how early in the name the search text appears. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SearchApi** | API context | 

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
> get_resolve_object(_api::SearchApi, authority::String, namespace::String, objectid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_resolve_object(_api::SearchApi, response_stream::Channel, authority::String, namespace::String, objectid::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Resolves an external identifier to the closest phylogenetic node.

Valid query parameters passed to this method are included in the returned `Location` header.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SearchApi** | API context | 
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
> get_resolve_objects(_api::SearchApi, authority::String, namespace::String, object_i_ds::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_resolve_objects(_api::SearchApi, response_stream::Channel, authority::String, namespace::String, object_i_ds::String; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Resolves a list of external identifiers under a single authorized namespace to a single phylogenetic node.

Identifiers toward the beginning of the list have priority. Subsequent identifiers are checked if a node cannot be found for an earlier identifier.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SearchApi** | API context | 
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
> post_resolve_objects(_api::SearchApi, content_type::String, authority::String, namespace::String, request_body::Vector{String}; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> post_resolve_objects(_api::SearchApi, response_stream::Channel, content_type::String, authority::String, namespace::String, request_body::Vector{String}; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_parent_node=nothing, embed_primary_image=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

This method is deprecated. Use `getResolveObjects` instead.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **SearchApi** | API context | 
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

