=begin
#The feedpushr API

#A simple feed aggregator daemon with sugar on top.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'

# Unit tests for FeedpushrClient::FeedApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FeedApi' do
  before do
    # run before each test
    @api_instance = FeedpushrClient::FeedApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeedApi' do
    it 'should create an instance of FeedApi' do
      expect(@api_instance).to be_instance_of(FeedpushrClient::FeedApi)
    end
  end

  # unit tests for feed_create
  # create feed
  # Create a new feed
  # @param url Feed URL
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tags Comma separated list of tags
  # @option opts [String] :title Feed title (will overide official feed title)
  # @return [Feed]
  describe 'feed_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for feed_delete
  # delete feed
  # Delete a feed
  # @param id Feed ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'feed_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for feed_get
  # get feed
  # Retrieve feed with given ID
  # @param id Feed ID
  # @param [Hash] opts the optional parameters
  # @return [Feed]
  describe 'feed_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for feed_list
  # list feed
  # Retrieve all feeds
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Fetch limit
  # @option opts [Integer] :page Page to fetch
  # @return [Array<Feed>]
  describe 'feed_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for feed_start
  # start feed
  # Start feed aggregation
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'feed_start test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for feed_stop
  # stop feed
  # Stop feed aggregation
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'feed_stop test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for feed_update
  # update feed
  # Update a feed
  # @param id Feed ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :tags Comma separated list of tags
  # @option opts [String] :title Feed title
  # @return [Feed]
  describe 'feed_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
