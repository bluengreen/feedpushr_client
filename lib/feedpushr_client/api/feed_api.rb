=begin
#The feedpushr API

#A simple feed aggregator daemon with sugar on top.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module FeedpushrClient
  class FeedApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # create feed
    # Create a new feed
    # @param url [String] Feed URL
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tags Comma separated list of tags
    # @option opts [String] :title Feed title (will overide official feed title)
    # @return [Feed]
    def feed_create(url, opts = {})
      data, _status_code, _headers = feed_create_with_http_info(url, opts)
      data
    end

    # create feed
    # Create a new feed
    # @param url [String] Feed URL
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tags Comma separated list of tags
    # @option opts [String] :title Feed title (will overide official feed title)
    # @return [Array<(Feed, Integer, Hash)>] Feed data, response status code and response headers
    def feed_create_with_http_info(url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedApi.feed_create ...'
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling FeedApi.feed_create"
      end
      # resource path
      local_var_path = '/feeds'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'url'] = url
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'title'] = opts[:'title'] if !opts[:'title'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.feed.v1+json', 'application/vnd.goa.error'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Feed' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedApi#feed_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete feed
    # Delete a feed
    # @param id [String] Feed ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def feed_delete(id, opts = {})
      feed_delete_with_http_info(id, opts)
      nil
    end

    # delete feed
    # Delete a feed
    # @param id [String] Feed ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def feed_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedApi.feed_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedApi.feed_delete"
      end
      # resource path
      local_var_path = '/feeds/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedApi#feed_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get feed
    # Retrieve feed with given ID
    # @param id [String] Feed ID
    # @param [Hash] opts the optional parameters
    # @return [Feed]
    def feed_get(id, opts = {})
      data, _status_code, _headers = feed_get_with_http_info(id, opts)
      data
    end

    # get feed
    # Retrieve feed with given ID
    # @param id [String] Feed ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Feed, Integer, Hash)>] Feed data, response status code and response headers
    def feed_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedApi.feed_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedApi.feed_get"
      end
      # resource path
      local_var_path = '/feeds/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.feed.v1+json', 'application/vnd.goa.error'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Feed' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedApi#feed_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # list feed
    # Retrieve all feeds
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Fetch limit (default to 10)
    # @option opts [Integer] :page Page to fetch (default to 1)
    # @return [Array<Feed>]
    def feed_list(opts = {})
      data, _status_code, _headers = feed_list_with_http_info(opts)
      data
    end

    # list feed
    # Retrieve all feeds
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Fetch limit
    # @option opts [Integer] :page Page to fetch
    # @return [Array<(Array<Feed>, Integer, Hash)>] Array<Feed> data, response status code and response headers
    def feed_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedApi.feed_list ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling FeedApi.feed_list, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling FeedApi.feed_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/feeds'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.feed.v1+json; type=collection', 'application/vnd.goa.error'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<Feed>' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedApi#feed_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # start feed
    # Start feed aggregation
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def feed_start(id, opts = {})
      feed_start_with_http_info(id, opts)
      nil
    end

    # start feed
    # Start feed aggregation
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def feed_start_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedApi.feed_start ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedApi.feed_start"
      end
      # resource path
      local_var_path = '/feeds/{id}/start'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedApi#feed_start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # stop feed
    # Stop feed aggregation
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def feed_stop(id, opts = {})
      feed_stop_with_http_info(id, opts)
      nil
    end

    # stop feed
    # Stop feed aggregation
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def feed_stop_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedApi.feed_stop ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedApi.feed_stop"
      end
      # resource path
      local_var_path = '/feeds/{id}/stop'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.goa.error'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedApi#feed_stop\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update feed
    # Update a feed
    # @param id [String] Feed ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tags Comma separated list of tags
    # @option opts [String] :title Feed title
    # @return [Feed]
    def feed_update(id, opts = {})
      data, _status_code, _headers = feed_update_with_http_info(id, opts)
      data
    end

    # update feed
    # Update a feed
    # @param id [String] Feed ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :tags Comma separated list of tags
    # @option opts [String] :title Feed title
    # @return [Array<(Feed, Integer, Hash)>] Feed data, response status code and response headers
    def feed_update_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeedApi.feed_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FeedApi.feed_update"
      end
      # resource path
      local_var_path = '/feeds/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tags'] = opts[:'tags'] if !opts[:'tags'].nil?
      query_params[:'title'] = opts[:'title'] if !opts[:'title'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.feed.v1+json', 'application/vnd.goa.error'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Feed' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeedApi#feed_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
