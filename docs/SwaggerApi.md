# FeedpushrClient::SwaggerApi

All URIs are relative to *http://localhost:4000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**swagger_get**](SwaggerApi.md#swagger_get) | **GET** /swagger.json | get swagger



## swagger_get

> swagger_get

get swagger

Get OpenAPI specifications

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::SwaggerApi.new

begin
  #get swagger
  api_instance.swagger_get
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling SwaggerApi->swagger_get: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

