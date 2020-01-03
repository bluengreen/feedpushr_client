# FeedpushrClient::Filter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Alias of the filter | 
**desc** | **String** | Description of the filter | 
**enabled** | **Boolean** | Status | [optional] [default to false]
**id** | **Integer** | ID of the filter | 
**name** | **String** | Name of the filter | 
**props** | [**Object**](.md) | Filter properties | [optional] 
**tags** | **Array&lt;String&gt;** | List of tags | [optional] 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::Filter.new(_alias: foo,
                                 desc: This filter will...,
                                 enabled: true,
                                 id: 1,
                                 name: fetch,
                                 props: -,
                                 tags: [&quot;foo&quot;,&quot;bar&quot;])
```


