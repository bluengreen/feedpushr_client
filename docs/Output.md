# FeedpushrClient::Output

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Alias of the output channel | 
**desc** | **String** | Description of the output channel | 
**enabled** | **Boolean** | Status | [optional] [default to false]
**id** | **Integer** | ID of the output | 
**name** | **String** | Name of the output channel | 
**props** | [**Object**](.md) | Output channel properties | [optional] 
**tags** | **Array&lt;String&gt;** | List of tags | [optional] 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::Output.new(_alias: foo,
                                 desc: New articles are sent as JSON document to...,
                                 enabled: true,
                                 id: 1,
                                 name: fetch,
                                 props: -,
                                 tags: [&quot;foo&quot;,&quot;bar&quot;])
```


