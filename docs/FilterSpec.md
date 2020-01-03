# FeedpushrClient::FilterSpec

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**desc** | **String** | Description of the filter | 
**name** | **String** | Name of the filter | 
**props** | [**Array&lt;PropSpec&gt;**](PropSpec.md) | PropSpecCollection is the media type for an array of PropSpec (default view) | 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::FilterSpec.new(desc: Add a prefix to the tittle...,
                                 name: title,
                                 props: [{&quot;desc&quot;:&quot;New articles are sent as JSON document to...&quot;,&quot;name&quot;:&quot;url&quot;,&quot;options&quot;:{&quot;Vitae ducimus veritatis laudantium.&quot;:&quot;Deserunt saepe exercitationem consequuntur id earum accusantium.&quot;},&quot;type&quot;:&quot;text&quot;},{&quot;desc&quot;:&quot;New articles are sent as JSON document to...&quot;,&quot;name&quot;:&quot;url&quot;,&quot;options&quot;:{&quot;Vitae ducimus veritatis laudantium.&quot;:&quot;Deserunt saepe exercitationem consequuntur id earum accusantium.&quot;},&quot;type&quot;:&quot;text&quot;},{&quot;desc&quot;:&quot;New articles are sent as JSON document to...&quot;,&quot;name&quot;:&quot;url&quot;,&quot;options&quot;:{&quot;Vitae ducimus veritatis laudantium.&quot;:&quot;Deserunt saepe exercitationem consequuntur id earum accusantium.&quot;},&quot;type&quot;:&quot;text&quot;}])
```


