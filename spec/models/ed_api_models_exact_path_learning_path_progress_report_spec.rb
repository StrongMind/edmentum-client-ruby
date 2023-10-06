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

# Unit tests for SwaggerClient::EdApiModelsExactPathLearningPathProgressReport
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EdApiModelsExactPathLearningPathProgressReport' do
  before do
    # run before each test
    @instance = EdmentumClient::EdApiModelsExactPathLearningPathProgressReport.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EdApiModelsExactPathLearningPathProgressReport' do
    it 'should create an instance of EdApiModelsExactPathLearningPathProgressReport' do
      expect(@instance).to be_instance_of(EdmentumClient::EdApiModelsExactPathLearningPathProgressReport)
    end
  end
  describe 'test attribute "class_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "class_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "learning_path_progress_records"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
