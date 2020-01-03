# FeedpushrClient::OpmlApi

All URIs are relative to *http://localhost:4000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**opml_get**](OpmlApi.md#opml_get) | **GET** /opml | get opml
[**opml_upload**](OpmlApi.md#opml_upload) | **POST** /opml | upload opml



## opml_get

> opml_get

get opml

Get all feeds as an OMPL format

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::OpmlApi.new

begin
  #get opml
  api_instance.opml_get
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling OpmlApi->opml_get: #{e}"
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
- **Accept**: application/vnd.goa.error, application/xml


## opml_upload

> opml_upload

upload opml

Upload an OPML file to create feeds

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::OpmlApi.new

begin
  #upload opml
  api_instance.opml_upload
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling OpmlApi->opml_upload: #{e}"
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
- **Accept**: application/vnd.goa.error

