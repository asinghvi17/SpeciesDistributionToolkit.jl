# ContributorsApi

All URIs are relative to *https://api.phylopic.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contributor**](ContributorsApi.md#get_contributor) | **GET** /contributors/{uuid} | Returns a specific contributing user.
[**get_contributors**](ContributorsApi.md#get_contributors) | **GET** /contributors | Lists all contributing users.


# **get_contributor**
> get_contributor(_api::ContributorsApi, uuid::String; accept=nothing, build=nothing, _mediaType=nothing) -> Contributor, OpenAPI.Clients.ApiResponse <br/>
> get_contributor(_api::ContributorsApi, response_stream::Channel, uuid::String; accept=nothing, build=nothing, _mediaType=nothing) -> Channel{ Contributor }, OpenAPI.Clients.ApiResponse

Returns a specific contributing user.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ContributorsApi** | API context | 
**uuid** | **String**| The UUID of the entity. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]

### Return type

[**Contributor**](Contributor.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_contributors**
> get_contributors(_api::ContributorsApi; accept=nothing, build=nothing, embed_items=nothing, filter_collection=nothing, page=nothing, _mediaType=nothing) -> GetContributors200Response, OpenAPI.Clients.ApiResponse <br/>
> get_contributors(_api::ContributorsApi, response_stream::Channel; accept=nothing, build=nothing, embed_items=nothing, filter_collection=nothing, page=nothing, _mediaType=nothing) -> Channel{ GetContributors200Response }, OpenAPI.Clients.ApiResponse

Lists all contributing users.

Contributors are listed in order from those with the most uploaded images to those with the fewest.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ContributorsApi** | API context | 

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

