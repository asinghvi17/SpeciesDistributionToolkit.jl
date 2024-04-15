# CollectionsApi

All URIs are relative to *https://api.phylopic.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_collection**](CollectionsApi.md#get_collection) | **GET** /collections/{uuid} | Links to endpoints for getting all entities of certain types that are in a specified collection.
[**get_contributors**](CollectionsApi.md#get_contributors) | **GET** /contributors | Lists all contributing users.
[**get_images**](CollectionsApi.md#get_images) | **GET** /images | Lists all images, or a filtered subset.
[**get_nodes**](CollectionsApi.md#get_nodes) | **GET** /nodes | Lists all nodes, or a filtered subset.
[**post_collection**](CollectionsApi.md#post_collection) | **POST** /collections | Redirects to an entity collection based on a list of UUIDs.


# **get_collection**
> get_collection(_api::CollectionsApi; accept=nothing, _mediaType=nothing) -> GetCollection200Response, OpenAPI.Clients.ApiResponse <br/>
> get_collection(_api::CollectionsApi, response_stream::Channel; accept=nothing, _mediaType=nothing) -> Channel{ GetCollection200Response }, OpenAPI.Clients.ApiResponse

Links to endpoints for getting all entities of certain types that are in a specified collection.

UUIDs are sorted alphanumerically.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]

### Return type

[**GetCollection200Response**](GetCollection200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_contributors**
> get_contributors(_api::CollectionsApi; accept=nothing, build=nothing, embed_items=nothing, filter_collection=nothing, page=nothing, _mediaType=nothing) -> GetContributors200Response, OpenAPI.Clients.ApiResponse <br/>
> get_contributors(_api::CollectionsApi, response_stream::Channel; accept=nothing, build=nothing, embed_items=nothing, filter_collection=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetContributors200Response }, OpenAPI.Clients.ApiResponse

Lists all contributing users.

Contributors are listed in order from those with the most uploaded images to those with the fewest.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_items** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;items&#x60; in &#x60;_embedded&#x60;. (This is a prerequisite for including any embeds on the items themselves.)  | [default to nothing]
 **filter_collection** | **String**| Limits results to entities within the specified collection.  Cannot be used alongside other &#x60;filter_*&#x60; parameters (except &#x60;filter_license_*&#x60; for images).  | [default to nothing]
 **page** | **Int64**| Specifies a particular page of items to retrieve.  | [default to nothing]

### Return type

[**GetContributors200Response**](GetContributors200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_images**
> get_images(_api::CollectionsApi; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing) -> GetImages200Response, OpenAPI.Clients.ApiResponse <br/>
> get_images(_api::CollectionsApi, response_stream::Channel; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetImages200Response }, OpenAPI.Clients.ApiResponse

Lists all images, or a filtered subset.

Images are listed from most recently approved to least recently approved, unless certain `filter_*` parameters are specified: - `filter_clade`: images are listed from most basal nodes to most deeply nested nodes. - `filter_name`: images are listed according to which one's nodes' names fit the search string best. - `filter_modified_after`, `filter_modified_before`: images are listed from most recently modified to least recently modified - `filter_modifiedFile_after`, `filter_modifiedFile_before: images are listed from ones with the most recently modified files to ones with the least recently modified files 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 

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
> get_nodes(_api::CollectionsApi; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing) -> GetNodes200Response, OpenAPI.Clients.ApiResponse <br/>
> get_nodes(_api::CollectionsApi, response_stream::Channel; accept=nothing, build=nothing, embed_child_nodes=nothing, embed_items=nothing, embed_primary_image=nothing, embed_parent_node=nothing, filter_collection=nothing, filter_name=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetNodes200Response }, OpenAPI.Clients.ApiResponse

Lists all nodes, or a filtered subset.

Nodes are listed with the most basal node first, followed by subclades in order from smallest to largest.  If `filter_name` is passed, the nodes with names matching the search text are listed according to how early in the name the search text appears. 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 

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

# **post_collection**
> post_collection(_api::CollectionsApi, content_type::String, request_body::Vector{String}; accept=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> post_collection(_api::CollectionsApi, response_stream::Channel, content_type::String, request_body::Vector{String}; accept=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Redirects to an entity collection based on a list of UUIDs.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CollectionsApi** | API context | 
**content_type** | **String**| The media type for the payload, including API version. Always &#x60;application/vnd.phylopic.v2+json&#x60;. | [default to nothing]
**request_body** | [**Vector{String}**](String.md)| A list of UUIDs. | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

