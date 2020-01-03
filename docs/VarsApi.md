# FeedpushrClient::VarsApi

All URIs are relative to *http://localhost:4000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vars_get**](VarsApi.md#vars_get) | **GET** /vars | get vars



## vars_get

> vars_get

get vars

Get all internals exp vars

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::VarsApi.new

begin
  #get vars
  api_instance.vars_get
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling VarsApi->vars_get: #{e}"
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

