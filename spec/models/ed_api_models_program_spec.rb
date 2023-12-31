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

# Unit tests for SwaggerClient::EdApiModelsProgram
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EdApiModelsProgram' do
  before do
    # run before each test
    @instance = EdmentumClient::EdApiModelsProgram.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EdApiModelsProgram' do
    it 'should create an instance of EdApiModelsProgram' do
      expect(@instance).to be_instance_of(EdmentumClient::EdApiModelsProgram)
    end
  end
  describe 'test attribute "program_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "program_title"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "application"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', ["0", "3", "4", "8", "9", "12", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "27", "29", "30", "31", "32"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.application = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "access_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "locations"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_eoa_program"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
