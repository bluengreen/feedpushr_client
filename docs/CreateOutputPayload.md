# FeedpushrClient::CreateOutputPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Alias of the output | 
**name** | **String** | Name of the output | 
**props** | [**Object**](.md) | Output properties | [optional] 
**tags** | **String** | Comma separated list of tags | [optional] 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::CreateOutputPayload.new(_alias: foo,
                                 name: http,
                                 props: -,
                                 tags: foo,bar)
```


