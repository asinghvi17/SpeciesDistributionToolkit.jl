# GeneralApi

All URIs are relative to *https://api.phylopic.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_index**](GeneralApi.md#get_index) | **GET** / | Returns API information and links to resources.
[**ping**](GeneralApi.md#ping) | **GET** /ping | Checks if the API is operational.


# **get_index**
> get_index(_api::GeneralApi; accept=nothing, build=nothing, _mediaType=nothing) -> GetIndex200Response, OpenAPI.Clients.ApiResponse <br/>
> get_index(_api::GeneralApi, response_stream::Channel; accept=nothing, build=nothing, _mediaType=nothing) -> Channel{ GetIndex200Response }, OpenAPI.Clients.ApiResponse

Returns API information and links to resources.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **GeneralApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**| The media type for the response, including API version. Must allow &#x60;application/vnd.phylopic.v2+json&#x60;.  If omitted, &#x60;*/*&#x60; (a wildcard allowing all types) is assumed, and the response&#39;s &#x60;Content-Type&#x60; header will be &#x60;application/vnd.phylopic.v2+json&#x60;.  | [default to nothing]
 **build** | **Int64**| Specifies the index of the build for the returned data. Only the current build is valid.  Leaving this parameter out will yield a temporary redirect (&#x60;307&#x60;) to the same URL but with the current &#x60;build&#x60; value added to the query.  | [default to nothing]

### Return type

[**GetIndex200Response**](GetIndex200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.phylopic.v2+json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **ping**
> ping(_api::GeneralApi; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> ping(_api::GeneralApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Checks if the API is operational.

### Required Parameters
This endpoint does not need any parameter.

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

