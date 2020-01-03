# FeedpushrClient::OutputApi

All URIs are relative to *http://localhost:4000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**output_create**](OutputApi.md#output_create) | **POST** /outputs | create output
[**output_delete**](OutputApi.md#output_delete) | **DELETE** /outputs/{id} | delete output
[**output_get**](OutputApi.md#output_get) | **GET** /outputs/{id} | get output
[**output_list**](OutputApi.md#output_list) | **GET** /outputs | list output
[**output_specs**](OutputApi.md#output_specs) | **GET** /outputs/_specs | specs output
[**output_update**](OutputApi.md#output_update) | **PUT** /outputs/{id} | update output



## output_create

> Output output_create(payload)

create output

Create a new output

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::OutputApi.new
payload = FeedpushrClient::CreateOutputPayload.new # CreateOutputPayload | 

begin
  #create output
  result = api_instance.output_create(payload)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling OutputApi->output_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payload** | [**CreateOutputPayload**](CreateOutputPayload.md)|  | 

### Return type

[**Output**](Output.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/vnd.feedpushr.output.v1+json, application/vnd.goa.error


## output_delete

> output_delete(id)

delete output

Delete an output

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::OutputApi.new
id = 56 # Integer | Output ID

begin
  #delete output
  api_instance.output_delete(id)
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling OutputApi->output_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Output ID | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.goa.error


## output_get

> Output output_get(id)

get output

Retrieve output with given ID

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::OutputApi.new
id = 56 # Integer | Output ID

begin
  #get output
  result = api_instance.output_get(id)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling OutputApi->output_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Output ID | 

### Return type

[**Output**](Output.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.output.v1+json, application/vnd.goa.error


## output_list

> Array&lt;Output&gt; output_list

list output

Retrieve all outputs definitions

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::OutputApi.new

begin
  #list output
  result = api_instance.output_list
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling OutputApi->output_list: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Output&gt;**](Output.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.output.v1+json; type=collection


## output_specs

> Array&lt;OutputSpec&gt; output_specs

specs output

Retrieve all output types available

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::OutputApi.new

begin
  #specs output
  result = api_instance.output_specs
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling OutputApi->output_specs: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;OutputSpec&gt;**](OutputSpec.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.output-spec.v1+json; type=collection


## output_update

> Output output_update(id, payload)

update output

Update an output

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::OutputApi.new
id = 56 # Integer | Output ID
payload = FeedpushrClient::UpdateOutputPayload.new # UpdateOutputPayload | 

begin
  #update output
  result = api_instance.output_update(id, payload)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling OutputApi->output_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Output ID | 
 **payload** | [**UpdateOutputPayload**](UpdateOutputPayload.md)|  | 

### Return type

[**Output**](Output.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json, application/xml, application/gob, application/x-gob
- **Accept**: application/vnd.feedpushr.output.v1+json, application/vnd.goa.error

