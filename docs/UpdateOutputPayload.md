# FeedpushrClient::UpdateOutputPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Alias of the output | [optional] 
**enabled** | **Boolean** | Output status | [optional] [default to false]
**props** | [**Object**](.md) | Output properties | [optional] 
**tags** | **String** | Comma separated list of tags | [optional] 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::UpdateOutputPayload.new(_alias: foo,
                                 enabled: false,
                                 props: -,
                                 tags: foo,bar)
```


