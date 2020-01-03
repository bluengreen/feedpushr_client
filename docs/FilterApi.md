# FeedpushrClient::FilterApi

All URIs are relative to *http://localhost:4000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filter_create**](FilterApi.md#filter_create) | **POST** /filters | create filter
[**filter_delete**](FilterApi.md#filter_delete) | **DELETE** /filters/{id} | delete filter
[**filter_get**](FilterApi.md#filter_get) | **GET** /filters/{id} | get filter
[**filter_list**](FilterApi.md#filter_list) | **GET** /filters | list filter
[**filter_specs**](FilterApi.md#filter_specs) | **GET** /filters/_specs | specs filter
[**filter_update**](FilterApi.md#filter_update) | **PUT** /filters/{id} | update filter



## filter_create

> Filter filter_create(payload)

create filter

Create a new filter

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FilterApi.new
payload = FeedpushrClient::CreateFilterPayload.new # CreateFilterPayload | 

begin
  #create filter
  result = api_instance.filter_create(payload)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FilterApi->filter_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**CreateFilterPayload**](CreateFilterPayload.md)|  | 

### Return type

[**Filter**](Filter.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/vnd.feedpushr.filter.v1+json, application/vnd.goa.error


## filter_delete

> filter_delete(id)

delete filter

Delete a filter

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FilterApi.new
id = 56 # Integer | Filter ID

begin
  #delete filter
  api_instance.filter_delete(id)
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FilterApi->filter_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Filter ID | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.goa.error


## filter_get

> Filter filter_get(id)

get filter

Retrieve filter with given ID

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FilterApi.new
id = 56 # Integer | Filter ID

begin
  #get filter
  result = api_instance.filter_get(id)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FilterApi->filter_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Filter ID | 

### Return type

[**Filter**](Filter.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.filter.v1+json, application/vnd.goa.error


## filter_list

> Array&lt;Filter&gt; filter_list

list filter

Retrieve all filters definitions

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FilterApi.new

begin
  #list filter
  result = api_instance.filter_list
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FilterApi->filter_list: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Filter&gt;**](Filter.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.filter.v1+json; type=collection


## filter_specs

> Array&lt;FilterSpec&gt; filter_specs

specs filter

Retrieve all filter types available

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FilterApi.new

begin
  #specs filter
  result = api_instance.filter_specs
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FilterApi->filter_specs: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;FilterSpec&gt;**](FilterSpec.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.filter-spec.v1+json; type=collection


## filter_update

> Filter filter_update(id, payload)

update filter

Update a filter

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FilterApi.new
id = 56 # Integer | Filter ID
payload = FeedpushrClient::UpdateFilterPayload.new # UpdateFilterPayload | 

begin
  #update filter
  result = api_instance.filter_update(id, payload)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FilterApi->filter_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Filter ID | 
 **payload** | [**UpdateFilterPayload**](UpdateFilterPayload.md)|  | 

### Return type

[**Filter**](Filter.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/vnd.feedpushr.filter.v1+json, application/vnd.goa.error

