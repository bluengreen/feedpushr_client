# FeedpushrClient::CreateFilterPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Alias of the filter | 
**name** | **String** | Name of the filter | 
**props** | [**Object**](.md) | Filter properties | [optional] 
**tags** | **String** | Comma separated list of tags | [optional] 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::CreateFilterPayload.new(_alias: foo,
                                 name: fetch,
                                 props: -,
                                 tags: foo,bar)
```


