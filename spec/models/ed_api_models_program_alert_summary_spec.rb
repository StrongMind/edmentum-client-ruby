=begin
#Edmentum Web API - v2.0

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.33

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::EdApiModelsProgramAlertSummary
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EdApiModelsProgramAlertSummary' do
  before do
    # run before each test
    @instance = EdmentumClient::EdApiModelsProgramAlertSummary.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EdApiModelsProgramAlertSummary' do
    it 'should create an instance of EdApiModelsProgramAlertSummary' do
      expect(@instance).to be_instance_of(EdmentumClient::EdApiModelsProgramAlertSummary)
    end
  end
  describe 'test attribute "count_of_new_messages_and_announcements"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "count_of_locked_mastery_tests"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "count_of_ready_to_score_activities"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
