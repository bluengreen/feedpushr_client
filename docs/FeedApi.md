# FeedpushrClient::FeedApi

All URIs are relative to *http://localhost:4000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**feed_create**](FeedApi.md#feed_create) | **POST** /feeds | create feed
[**feed_delete**](FeedApi.md#feed_delete) | **DELETE** /feeds/{id} | delete feed
[**feed_get**](FeedApi.md#feed_get) | **GET** /feeds/{id} | get feed
[**feed_list**](FeedApi.md#feed_list) | **GET** /feeds | list feed
[**feed_start**](FeedApi.md#feed_start) | **POST** /feeds/{id}/start | start feed
[**feed_stop**](FeedApi.md#feed_stop) | **POST** /feeds/{id}/stop | stop feed
[**feed_update**](FeedApi.md#feed_update) | **PUT** /feeds/{id} | update feed



## feed_create

> Feed feed_create(url, opts)

create feed

Create a new feed

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FeedApi.new
url = 'url_example' # String | Feed URL
opts = {
  tags: 'tags_example', # String | Comma separated list of tags
  title: 'title_example' # String | Feed title (will overide official feed title)
}

begin
  #create feed
  result = api_instance.feed_create(url, opts)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FeedApi->feed_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| Feed URL | 
 **tags** | **String**| Comma separated list of tags | [optional] 
 **title** | **String**| Feed title (will overide official feed title) | [optional] 

### Return type

[**Feed**](Feed.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.feed.v1+json, application/vnd.goa.error


## feed_delete

> feed_delete(id)

delete feed

Delete a feed

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FeedApi.new
id = 'id_example' # String | Feed ID

begin
  #delete feed
  api_instance.feed_delete(id)
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FeedApi->feed_delete: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Feed ID | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.goa.error


## feed_get

> Feed feed_get(id)

get feed

Retrieve feed with given ID

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FeedApi.new
id = 'id_example' # String | Feed ID

begin
  #get feed
  result = api_instance.feed_get(id)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FeedApi->feed_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Feed ID | 

### Return type

[**Feed**](Feed.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.feed.v1+json, application/vnd.goa.error


## feed_list

> Array&lt;Feed&gt; feed_list(opts)

list feed

Retrieve all feeds

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FeedApi.new
opts = {
  limit: 10, # Integer | Fetch limit
  page: 1 # Integer | Page to fetch
}

begin
  #list feed
  result = api_instance.feed_list(opts)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FeedApi->feed_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Fetch limit | [optional] [default to 10]
 **page** | **Integer**| Page to fetch | [optional] [default to 1]

### Return type

[**Array&lt;Feed&gt;**](Feed.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.feed.v1+json; type=collection, application/vnd.goa.error


## feed_start

> feed_start(id)

start feed

Start feed aggregation

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FeedApi.new
id = 'id_example' # String | 

begin
  #start feed
  api_instance.feed_start(id)
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FeedApi->feed_start: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.goa.error


## feed_stop

> feed_stop(id)

stop feed

Stop feed aggregation

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FeedApi.new
id = 'id_example' # String | 

begin
  #stop feed
  api_instance.feed_stop(id)
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FeedApi->feed_stop: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.goa.error


## feed_update

> Feed feed_update(id, opts)

update feed

Update a feed

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::FeedApi.new
id = 'id_example' # String | Feed ID
opts = {
  tags: 'tags_example', # String | Comma separated list of tags
  title: 'title_example' # String | Feed title
}

begin
  #update feed
  result = api_instance.feed_update(id, opts)
  p result
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling FeedApi->feed_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Feed ID | 
 **tags** | **String**| Comma separated list of tags | [optional] 
 **title** | **String**| Feed title | [optional] 

### Return type

[**Feed**](Feed.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.feedpushr.feed.v1+json, application/vnd.goa.error

