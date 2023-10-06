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

# Unit tests for SwaggerClient::EdApiModelsCoursewareClassLearnerGrade
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EdApiModelsCoursewareClassLearnerGrade' do
  before do
    # run before each test
    @instance = EdmentumClient::EdApiModelsCoursewareClassLearnerGrade.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EdApiModelsCoursewareClassLearnerGrade' do
    it 'should create an instance of EdApiModelsCoursewareClassLearnerGrade' do
      expect(@instance).to be_instance_of(EdmentumClient::EdApiModelsCoursewareClassLearnerGrade)
    end
  end
  describe 'test attribute "learner_user_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "current_grade"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "course_grade"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "on_target_grade"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
