# ImagesApi

All URIs are relative to *https://api.phylopic.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_image**](ImagesApi.md#get_image) | **GET** /images/{uuid} | Returns data for a specific image.
[**get_images**](ImagesApi.md#get_images) | **GET** /images | Lists all images, or a filtered subset.
[**get_licenses**](ImagesApi.md#get_licenses) | **GET** /licenses | Returns a list of licenses.
[**post_upload**](ImagesApi.md#post_upload) | **POST** /uploads | Uploads a file


# **get_image**
> get_image(_api::ImagesApi, uuid::String; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_nodes=nothing, embed_specific_node=nothing, _mediaType=nothing) -> ImageWithEmbedded, OpenAPI.Clients.ApiResponse <br/>
> get_image(_api::ImagesApi, response_stream::Channel, uuid::String; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_nodes=nothing, embed_specific_node=nothing, _mediaType=nothing) -> Channel{ ImageWithEmbedded }, OpenAPI.Clients.ApiResponse

Returns data for a specific image.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ImagesApi** | API context | 
**uuid** | **String**| The UUID of the entity. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]
 **embed_contributor** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;contributor&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_general_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;generalNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_nodes** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes all members of &#x60;nodes&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]
 **embed_specific_node** | **String**| If &#x60;\&quot;true\&quot;&#x60;, includes &#x60;specificNode&#x60; in &#x60;_embedded&#x60;.  | [default to nothing]

### Return type

[**ImageWithEmbedded**](ImageWithEmbedded.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_images**
> get_images(_api::ImagesApi; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing) -> GetImages200Response, OpenAPI.Clients.ApiResponse <br/>
> get_images(_api::ImagesApi, response_stream::Channel; accept=nothing, build=nothing, embed_contributor=nothing, embed_general_node=nothing, embed_items=nothing, embed_nodes=nothing, embed_specific_node=nothing, filter_clade=nothing, filter_collection=nothing, filter_contributor=nothing, filter_created_after=nothing, filter_created_before=nothing, filter_license_by=nothing, filter_license_nc=nothing, filter_license_sa=nothing, filter_modified_after=nothing, filter_modified_before=nothing, filter_modified_file_after=nothing, filter_modified_file_before=nothing, filter_name=nothing, filter_node=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetImages200Response }, OpenAPI.Clients.ApiResponse

Lists all images, or a filtered subset.

Images are listed from most recently approved to least recently approved, unless certain `filter_*` parameters are specified: - `filter_clade`: images are listed from most basal nodes to most deeply nested nodes. - `filter_name`: images are listed according to which one's nodes' names fit the search string best. - `filter_modified_after`, `filter_modified_before`: images are listed from most recently modified to least recently modified - `filter_modifiedFile_after`, `filter_modifiedFile_before: images are listed from ones with the most recently modified files to ones with the least recently modified files 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ImagesApi** | API context | 

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

# **get_licenses**
> get_licenses(_api::ImagesApi; accept=nothing, build=nothing, _mediaType=nothing) -> Vector{TitledLink}, OpenAPI.Clients.ApiResponse <br/>
> get_licenses(_api::ImagesApi, response_stream::Channel; accept=nothing, build=nothing, _mediaType=nothing) -> Channel{ Vector{TitledLink} }, OpenAPI.Clients.ApiResponse

Returns a list of licenses.

Returns a list of all licenses that may be used for new submissions. Note that this does not include all licenses for all images in the database.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ImagesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]

### Return type

[**Vector{TitledLink}**](TitledLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_upload**
> post_upload(_api::ImagesApi, content_type::String, body::String; _mediaType=nothing) -> Link, OpenAPI.Clients.ApiResponse <br/>
> post_upload(_api::ImagesApi, response_stream::Channel, content_type::String, body::String; _mediaType=nothing) -> Channel{ Link }, OpenAPI.Clients.ApiResponse

Uploads a file

On success, redirects to a location where the file can be downloaded from.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ImagesApi** | API context | 
**content_type** | **String**| The media type for the payload. Must be one of the following:  - &#x60;image/bmp&#x60; - &#x60;image/gif&#x60; - &#x60;image/jpeg&#x60; - &#x60;image/png&#x60; - &#x60;image/svg+xml&#x60;  | [default to nothing]
**body** | **String****String**| File to upload. | 

### Return type

[**Link**](Link.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: image/bmp, image/gif, image/jpeg, image/png, image/svg+xml
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

