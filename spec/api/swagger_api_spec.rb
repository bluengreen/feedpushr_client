=begin
#The feedpushr API

#A simple feed aggregator daemon with sugar on top.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'

# Unit tests for FeedpushrClient::SwaggerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SwaggerApi' do
  before do
    # run before each test
    @api_instance = FeedpushrClient::SwaggerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SwaggerApi' do
    it 'should create an instance of SwaggerApi' do
      expect(@api_instance).to be_instance_of(FeedpushrClient::SwaggerApi)
    end
  end

  # unit tests for swagger_get
  # get swagger
  # Get OpenAPI specifications
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'swagger_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end