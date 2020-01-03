=begin
#The feedpushr API

#A simple feed aggregator daemon with sugar on top.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'

# Unit tests for FeedpushrClient::FilterApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FilterApi' do
  before do
    # run before each test
    @api_instance = FeedpushrClient::FilterApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FilterApi' do
    it 'should create an instance of FilterApi' do
      expect(@api_instance).to be_instance_of(FeedpushrClient::FilterApi)
    end
  end

  # unit tests for filter_create
  # create filter
  # Create a new filter
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [Filter]
  describe 'filter_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_delete
  # delete filter
  # Delete a filter
  # @param id Filter ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'filter_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_get
  # get filter
  # Retrieve filter with given ID
  # @param id Filter ID
  # @param [Hash] opts the optional parameters
  # @return [Filter]
  describe 'filter_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_list
  # list filter
  # Retrieve all filters definitions
  # @param [Hash] opts the optional parameters
  # @return [Array<Filter>]
  describe 'filter_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_specs
  # specs filter
  # Retrieve all filter types available
  # @param [Hash] opts the optional parameters
  # @return [Array<FilterSpec>]
  describe 'filter_specs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for filter_update
  # update filter
  # Update a filter
  # @param id Filter ID
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @return [Filter]
  describe 'filter_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
