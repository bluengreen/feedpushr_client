# FeedpushrClient::HealthApi

All URIs are relative to *http://localhost:4000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**health_get**](HealthApi.md#health_get) | **GET** /healthz | get health



## health_get

> health_get

get health

Perform health check.

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::HealthApi.new

begin
  #get health
  api_instance.health_get
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling HealthApi->health_get: #{e}"
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

