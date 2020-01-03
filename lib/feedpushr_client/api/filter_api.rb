=begin
#The feedpushr API

#A simple feed aggregator daemon with sugar on top.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module FeedpushrClient
  class FilterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # create filter
    # Create a new filter
    # @param payload [CreateFilterPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Filter]
    def filter_create(payload, opts = {})
      data, _status_code, _headers = filter_create_with_http_info(payload, opts)
      data
    end

    # create filter
    # Create a new filter
    # @param payload [CreateFilterPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Filter, Integer, Hash)>] Filter data, response status code and response headers
    def filter_create_with_http_info(payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilterApi.filter_create ...'
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling FilterApi.filter_create"
      end
      # resource path
      local_var_path = '/filters'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.filter.v1+json', 'application/vnd.goa.error'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(payload) 

      # return_type
      return_type = opts[:return_type] || 'Filter' 

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
        @api_client.config.logger.debug "API called: FilterApi#filter_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # delete filter
    # Delete a filter
    # @param id [Integer] Filter ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def filter_delete(id, opts = {})
      filter_delete_with_http_info(id, opts)
      nil
    end

    # delete filter
    # Delete a filter
    # @param id [Integer] Filter ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def filter_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilterApi.filter_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FilterApi.filter_delete"
      end
      # resource path
      local_var_path = '/filters/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        @api_client.config.logger.debug "API called: FilterApi#filter_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get filter
    # Retrieve filter with given ID
    # @param id [Integer] Filter ID
    # @param [Hash] opts the optional parameters
    # @return [Filter]
    def filter_get(id, opts = {})
      data, _status_code, _headers = filter_get_with_http_info(id, opts)
      data
    end

    # get filter
    # Retrieve filter with given ID
    # @param id [Integer] Filter ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Filter, Integer, Hash)>] Filter data, response status code and response headers
    def filter_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilterApi.filter_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FilterApi.filter_get"
      end
      # resource path
      local_var_path = '/filters/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.filter.v1+json', 'application/vnd.goa.error'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Filter' 

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
        @api_client.config.logger.debug "API called: FilterApi#filter_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # list filter
    # Retrieve all filters definitions
    # @param [Hash] opts the optional parameters
    # @return [Array<Filter>]
    def filter_list(opts = {})
      data, _status_code, _headers = filter_list_with_http_info(opts)
      data
    end

    # list filter
    # Retrieve all filters definitions
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Filter>, Integer, Hash)>] Array<Filter> data, response status code and response headers
    def filter_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilterApi.filter_list ...'
      end
      # resource path
      local_var_path = '/filters'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.filter.v1+json; type=collection'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<Filter>' 

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
        @api_client.config.logger.debug "API called: FilterApi#filter_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # specs filter
    # Retrieve all filter types available
    # @param [Hash] opts the optional parameters
    # @return [Array<FilterSpec>]
    def filter_specs(opts = {})
      data, _status_code, _headers = filter_specs_with_http_info(opts)
      data
    end

    # specs filter
    # Retrieve all filter types available
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<FilterSpec>, Integer, Hash)>] Array<FilterSpec> data, response status code and response headers
    def filter_specs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilterApi.filter_specs ...'
      end
      # resource path
      local_var_path = '/filters/_specs'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.filter-spec.v1+json; type=collection'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Array<FilterSpec>' 

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
        @api_client.config.logger.debug "API called: FilterApi#filter_specs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # update filter
    # Update a filter
    # @param id [Integer] Filter ID
    # @param payload [UpdateFilterPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Filter]
    def filter_update(id, payload, opts = {})
      data, _status_code, _headers = filter_update_with_http_info(id, payload, opts)
      data
    end

    # update filter
    # Update a filter
    # @param id [Integer] Filter ID
    # @param payload [UpdateFilterPayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Filter, Integer, Hash)>] Filter data, response status code and response headers
    def filter_update_with_http_info(id, payload, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilterApi.filter_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FilterApi.filter_update"
      end
      # verify the required parameter 'payload' is set
      if @api_client.config.client_side_validation && payload.nil?
        fail ArgumentError, "Missing the required parameter 'payload' when calling FilterApi.filter_update"
      end
      # resource path
      local_var_path = '/filters/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.feedpushr.filter.v1+json', 'application/vnd.goa.error'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml', 'application/gob', 'application/x-gob'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(payload) 

      # return_type
      return_type = opts[:return_type] || 'Filter' 

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
        @api_client.config.logger.debug "API called: FilterApi#filter_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
