# FeedpushrClient::PropSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **String** | Description of the output channel | 
**name** | **String** | Name of the property | 
**options** | [**Object**](.md) | Property options | [optional] 
**type** | **String** | Property type (&#39;text&#39;, &#39;url&#39;, ...) | 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::PropSpec.new(desc: New articles are sent as JSON document to...,
                                 name: url,
                                 options: {&quot;Vitae ducimus veritatis laudantium.&quot;:&quot;Deserunt saepe exercitationem consequuntur id earum accusantium.&quot;},
                                 type: text)
```


