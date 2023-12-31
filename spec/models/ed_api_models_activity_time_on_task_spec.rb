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

# Unit tests for SwaggerClient::EdApiModelsActivityTimeOnTask
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EdApiModelsActivityTimeOnTask' do
  before do
    # run before each test
    @instance = EdmentumClient::EdApiModelsActivityTimeOnTask.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EdApiModelsActivityTimeOnTask' do
    it 'should create an instance of EdApiModelsActivityTimeOnTask' do
      expect(@instance).to be_instance_of(EdmentumClient::EdApiModelsActivityTimeOnTask)
    end
  end
  describe 'test attribute "learner_user_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "time_on_task"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "time_on_task_in_milliseconds"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
