# UploadsApi

All URIs are relative to *https://api.phylopic.org*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_upload**](UploadsApi.md#post_upload) | **POST** /uploads | Uploads a file


# **post_upload**
> post_upload(_api::UploadsApi, content_type::String, body::String; _mediaType=nothing) -> Link, OpenAPI.Clients.ApiResponse <br/>
> post_upload(_api::UploadsApi, response_stream::Channel, content_type::String, body::String; _mediaType=nothing) -> Channel{ Link }, OpenAPI.Clients.ApiResponse

Uploads a file

On success, redirects to a location where the file can be downloaded from.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UploadsApi** | API context | 
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

