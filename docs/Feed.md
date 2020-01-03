# FeedpushrClient::Feed

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cdate** | **DateTime** | Date of creation | 
**error_count** | **Integer** | Number of consecutive aggregation errors | [optional] 
**error_msg** | **String** | Last aggregation error | [optional] 
**html_url** | **String** | URL of the feed website | [optional] 
**hub_url** | **String** | URL of the PubSubHubbud hub | [optional] 
**id** | **String** | ID of feed (MD5 of the xmlUrl) | 
**last_check** | **DateTime** | Last aggregation pass | [optional] 
**mdate** | **DateTime** | Date of modification | 
**nb_processed_items** | **Integer** | Total number of processed items | [optional] 
**next_check** | **DateTime** | Next aggregation pass | [optional] 
**status** | **String** | Aggregation status | [optional] 
**tags** | **Array&lt;String&gt;** | List of tags | [optional] 
**text** | **String** | Text attribute of the Feed | [optional] 
**title** | **String** | Title of the Feed | 
**xml_url** | **String** | URL of the XML feed | 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::Feed.new(cdate: 2010-10-23T13:34:07Z,
                                 error_count: 333691758294841900,
                                 error_msg: Est suscipit.,
                                 html_url: http://www.hashicorp.com/blog,
                                 hub_url: http://pubsubhubbub.appspot.com,
                                 id: 5bfb841c028281c0051828c115fd1f50,
                                 last_check: 1993-05-15T16:34:02Z,
                                 mdate: 1981-09-22T23:39:59Z,
                                 nb_processed_items: 541887129200626000,
                                 next_check: 1999-10-11T23:32:13Z,
                                 status: stopped,
                                 tags: [&quot;foo&quot;,&quot;bar&quot;],
                                 text: RSS Feed,
                                 title: Hashicorp Blog,
                                 xml_url: http://www.hashicorp.com/feed.xml)
```


