# FeedpushrClient::PshbApi

All URIs are relative to *http://localhost:4000/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pshb_pub**](PshbApi.md#pshb_pub) | **POST** /pshb | pub pshb
[**pshb_sub**](PshbApi.md#pshb_sub) | **GET** /pshb | sub pshb



## pshb_pub

> pshb_pub

pub pshb

Publication endpoint for PSHB hubs

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::PshbApi.new

begin
  #pub pshb
  api_instance.pshb_pub
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling PshbApi->pshb_pub: #{e}"
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
- **Accept**: application/vnd.goa.error, text/plain


## pshb_sub

> pshb_sub(hub_challenge, hub_mode, hub_topic, opts)

sub pshb

Callback to validate the (un)subscription to the topic of a Hub

### Example

```ruby
# load the gem
require 'feedpushr_client'

api_instance = FeedpushrClient::PshbApi.new
hub_challenge = 'hub_challenge_example' # String | A hub-generated random string
hub_mode = 'hub_mode_example' # String | The literal string \"subscribe\" or \"unsubscribe\"
hub_topic = 'hub_topic_example' # String | The topic URL given in the corresponding subscription request
opts = {
  hub_lease_seconds: 56 # Integer | The hub-determined number of seconds that the subscription will stay active before expiring
}

begin
  #sub pshb
  api_instance.pshb_sub(hub_challenge, hub_mode, hub_topic, opts)
rescue FeedpushrClient::ApiError => e
  puts "Exception when calling PshbApi->pshb_sub: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hub_challenge** | **String**| A hub-generated random string | 
 **hub_mode** | **String**| The literal string \&quot;subscribe\&quot; or \&quot;unsubscribe\&quot; | 
 **hub_topic** | **String**| The topic URL given in the corresponding subscription request | 
 **hub_lease_seconds** | **Integer**| The hub-determined number of seconds that the subscription will stay active before expiring | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/vnd.goa.error, text/plain

