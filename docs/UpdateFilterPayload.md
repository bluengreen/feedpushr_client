# FeedpushrClient::UpdateFilterPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Alias of the filter | [optional] 
**enabled** | **Boolean** | Filter status | [optional] [default to false]
**props** | [**Object**](.md) | Filter properties | [optional] 
**tags** | **String** | Comma separated list of tags | [optional] 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::UpdateFilterPayload.new(_alias: foo,
                                 enabled: false,
                                 props: -,
                                 tags: foo,bar)
```


