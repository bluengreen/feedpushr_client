# FeedpushrClient::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | an application-specific error code, expressed as a string value. | [optional] 
**detail** | **String** | a human-readable explanation specific to this occurrence of the problem. | [optional] 
**id** | **String** | a unique identifier for this particular occurrence of the problem. | [optional] 
**meta** | [**Object**](.md) | a meta object containing non-standard meta-information about the error. | [optional] 
**status** | **String** | the HTTP status code applicable to this problem, expressed as a string value. | [optional] 

## Code Sample

```ruby
require 'FeedpushrClient'

instance = FeedpushrClient::Error.new(code: invalid_value,
                                 detail: Value of ID must be an integer,
                                 id: 3F1FKVRR,
                                 meta: {&quot;timestamp&quot;:1458609066},
                                 status: 400)
```


