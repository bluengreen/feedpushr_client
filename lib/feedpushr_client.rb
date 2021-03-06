=begin
#The feedpushr API

#A simple feed aggregator daemon with sugar on top.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

# Common files
require 'feedpushr_client/api_client'
require 'feedpushr_client/api_error'
require 'feedpushr_client/version'
require 'feedpushr_client/configuration'

# Models
require 'feedpushr_client/models/create_filter_payload'
require 'feedpushr_client/models/create_output_payload'
require 'feedpushr_client/models/error'
require 'feedpushr_client/models/feed'
require 'feedpushr_client/models/filter'
require 'feedpushr_client/models/filter_spec'
require 'feedpushr_client/models/output'
require 'feedpushr_client/models/output_spec'
require 'feedpushr_client/models/prop_spec'
require 'feedpushr_client/models/update_filter_payload'
require 'feedpushr_client/models/update_output_payload'

# APIs
require 'feedpushr_client/api/feed_api'
require 'feedpushr_client/api/filter_api'
require 'feedpushr_client/api/health_api'
require 'feedpushr_client/api/opml_api'
require 'feedpushr_client/api/output_api'
require 'feedpushr_client/api/pshb_api'
require 'feedpushr_client/api/swagger_api'
require 'feedpushr_client/api/vars_api'

module FeedpushrClient
  class << self
    # Customize default settings for the SDK using block.
    #   FeedpushrClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
