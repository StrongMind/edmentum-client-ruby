=begin
#Edmentum Web API - v2.0

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.33

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::V20CoursewareApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V20CoursewareApi' do
  before do
    # run before each test
    @instance = EdmentumClient::V20CoursewareApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V20CoursewareApi' do
    it 'should create an instance of V20CoursewareApi' do
      expect(@instance).to be_instance_of(EdmentumClient::V20CoursewareApi)
    end
  end

  # unit tests for classes_controller_enroll_courseware_user
  # Enroll a user in a Courseware class.
  # @param classid
  # @param userid
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :start_date End Date needs to be greater than Start Date (time of day is ignored).
  # @option opts [DateTime] :end_date
  # @return [String]
  describe 'classes_controller_enroll_courseware_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_get_activities
  # Get Class Activities from GradeTracker
  # @param classid The ID of the class
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :gradetracker_category_id (Optional) When supplied, filters the results down to just the given gradetrackerCategoryId.
  # @return [EdApiModelsResultsWithCountEdApiModelsActivity]
  describe 'classes_controller_get_activities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_get_activity_scores
  # Get Class Activity Scores from GradeTracker
  # @param classid The ID of the class
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :resource_node_id (Optional) When supplied, filters to the results down to just the given resoureNodeId.
  # @option opts [Integer] :learner_user_id (Optional) When supplied, filters to the results down to just the given learnerUserId.
  # @return [EdApiModelsResultsWithCountEdApiModelsActivityScore]
  describe 'classes_controller_get_activity_scores test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_get_courseware_class_activity_progress
  # Get current progress for all students in a Courseware class.
  # @param classid Class ID to get progress for.
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsResultsWithCountEdApiModelsActivityProgress]
  describe 'classes_controller_get_courseware_class_activity_progress test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_get_courseware_class_activity_time_on_task
  # Get daily activity time on task records for all students in a Courseware class.
  # &lt;br&gt;    &lt;b&gt;TimeOnTask (in minutes) property is obsolete, use TimeOnTaskInMilliseconds instead.&lt;/b&gt;  &lt;/br&gt;
  # @param classid Class ID to get time on task for.
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :startdate Optional Start Date, if not provided - returns all activity time on task data for that class.
  # @return [EdApiModelsResultsWithCountEdApiModelsActivityTimeOnTask]
  describe 'classes_controller_get_courseware_class_activity_time_on_task test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_get_courseware_class_learner_grades
  # Get current grades for all students in a Courseware class.
  # @param classid Class ID to get grades for.
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsResultsWithCountEdApiModelsCoursewareClassLearnerGrade]
  describe 'classes_controller_get_courseware_class_learner_grades test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_get_courseware_enrollable_users
  # Get list of users to enroll in a Courseware class.
  # &lt;ul&gt;    &lt;li&gt;This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.&lt;/li&gt;    &lt;li&gt;$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.&lt;/li&gt;    &lt;li&gt;If no $skip is provided, the call will return the first page of the result set.&lt;/li&gt;    &lt;li&gt;The next set of records can be obtained by making a request to the value of the \&quot;Next\&quot; field returned in the response.&lt;/li&gt;  &lt;/ul&gt;  &lt;br&gt;For example:&lt;/br&gt;  &lt;ul&gt;    &lt;li&gt;?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000 - get results from 10000 - 19999 (next 10000 records).&lt;/li&gt;    &lt;li&gt;\&quot;Next\&quot;: \&quot;/courseware/v2.0/classes/{classid}/enrollableusers?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000\&quot;&lt;/li&gt;  &lt;/ul&gt;
  # @param classid
  # @param pagesize
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip
  # @return [EdApiPageableResultsWithCountEdApiModelsUser]
  describe 'classes_controller_get_courseware_enrollable_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_get_courseware_user
  # Get a single user by classid and userid
  # @param classid
  # @param user_id
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsUserClassAssignment]
  describe 'classes_controller_get_courseware_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_get_courseware_users
  # Get a list of users in a Courseware class.
  # @param classid
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsResultsWithCountEdApiModelsUserClassAssignment]
  describe 'classes_controller_get_courseware_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_transfer_learner_to_new_class
  # Transfer Learner from one class to another
  # @param class_id Classroom Id pertaining to classroom to transfer learner
  # @param transfer Transfer object representing LearnerUserId of learner to be transferred and the ClassroomId of the learner&#39;s current class
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'classes_controller_transfer_learner_to_new_class test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_update_class_status
  # Lock/Unlock content for an entire Courseware class including students added later.
  # @param classid
  # @param resourcenodeid
  # @param model &lt;br&gt;              Locking/Unlocking a resource node locks/unlocks all children nodes               &lt;/br&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsClassStatus]
  describe 'classes_controller_update_class_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_update_class_user_status
  # Lock/Unlock content for a particular user in a Courseware class.
  # @param userid
  # @param classid
  # @param resourcenodeid
  # @param model &lt;br&gt;              Locking/Unlocking a resource node locks/unlocks all children nodes               &lt;/br&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsClassUserStatus]
  describe 'classes_controller_update_class_user_status test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_update_courseware_class
  # Update Courseware class.
  # @param classid The ID of the class to update.
  # @param model The class to update.              &lt;br&gt;              ProgramID, ClassID, ResourceNodeId, ResourceNodeName and SelfEnrollCode cannot be updated once an assignment is created, so values in these parameters will be ignored.&lt;/br&gt;&lt;br&gt;              Due date needs to be greater than Start Date&lt;/br&gt;&lt;br&gt;              Valid value for MasteryTestAttempts is between 0 and 10. Zero value translates to Unlimited Mastery test Attempts              &lt;/br&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsClass]
  describe 'classes_controller_update_courseware_class test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_update_courseware_user_enrollment
  # Update start and end dates for a user&#39;s Courseware Class.
  # @param class_id
  # @param user_id
  # @param start_date End Date needs to be greater than Start Date (time of day is ignored).
  # @param [Hash] opts the optional parameters
  # @option opts [DateTime] :end_date
  # @return [String]
  describe 'classes_controller_update_courseware_user_enrollment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for classes_controller_withdraw_courseware_user
  # Withdraw a user from a Courseware class.
  # @param classid
  # @param userid
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'classes_controller_withdraw_courseware_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for programs_controller_create_program_class
  # Create a Courseware class in a program.
  # @param programid The ID of the program.
  # @param model The class to create.&lt;br /&gt;&lt;br&gt;  ClassID and ResourceNodeName are optional and values in these parameters will be ignored.&lt;/br&gt;&lt;br&gt;  Due date needs to be greater than Start Date&lt;/br&gt;&lt;br&gt;  Valid value for MasteryTestAttempts is between 0 and 10. Zero value translates to Unlimited Mastery test Attempts&lt;/br&gt;&lt;br&gt;  SelfEnrollPassword min length is 4 characters  &lt;/br&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsClass]
  describe 'programs_controller_create_program_class test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for programs_controller_get_program_class
  # Get a Courseware classes in a Courseware program by classId.
  # @param program_id The ID of the program.
  # @param class_id The ID of the class.
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsClass]
  describe 'programs_controller_get_program_class test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for programs_controller_get_program_classes
  # Get a list of Courseware classes in a Courseware program.
  # &lt;ul&gt;    &lt;li&gt;This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.&lt;/li&gt;    &lt;li&gt;$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.&lt;/li&gt;    &lt;li&gt;If no $skip is provided, the call will return the first page of the result set.&lt;/li&gt;    &lt;li&gt;The next set of records can be obtained by making a request to the value of the \&quot;Next\&quot; field returned in the response.&lt;/li&gt;  &lt;/ul&gt;  &lt;br&gt;For example:&lt;/br&gt;  &lt;ul&gt;    &lt;li&gt;?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000 - get results from 10000 - 19999 (next 10000 records).&lt;/li&gt;    &lt;li&gt;\&quot;Next\&quot;: \&quot;/courseware/v2.0/programs/{programid}/classes?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000\&quot;&lt;/li&gt;  &lt;/ul&gt;
  # @param programid The ID of the program.
  # @param pagesize
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip
  # @option opts [String] :name An optional class name to filter by.
  # @option opts [DateTime] :after_start_date
  # @return [EdApiPageableResultsWithCountEdApiModelsClass]
  describe 'programs_controller_get_program_classes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for programs_controller_get_program_classes_with_user_ids
  # Gets a list of Courseware Classes (plus additional details) in a Courseware program.
  # &lt;br&gt;This is very similar to GET /courseware/v2.0/programs/{programid}/classes,               except that each class contains lists of UserIds for enrolled Teachers and Learners.  &lt;/br&gt;  &lt;ul&gt;    &lt;li&gt;This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.&lt;/li&gt;    &lt;li&gt;$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.&lt;/li&gt;    &lt;li&gt;If no $skip is provided, the call will return the first page of the result set.&lt;/li&gt;    &lt;li&gt;The next set of records can be obtained by making a request to the value of the \&quot;Next\&quot; field returned in the response.&lt;/li&gt;  &lt;/ul&gt;  &lt;br&gt;For example:&lt;/br&gt;  &lt;ul&gt;    &lt;li&gt;?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000 - get results from 10000 - 19999 (next 10000 records).&lt;/li&gt;    &lt;li&gt;\&quot;Next\&quot;: \&quot;/courseware/v2.0/programs/{programid}/classdetails?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000\&quot;&lt;/li&gt;  &lt;/ul&gt;
  # @param programid The ID of the program.
  # @param pagesize
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip
  # @option opts [DateTime] :after_start_date
  # @return [EdApiPageableResultsWithCountEdApiModelsClassDetail]
  describe 'programs_controller_get_program_classes_with_user_ids test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for resource_nodes_controller_get_nodes
  # Get a list of top level resource nodes for Plato and Custom Courses. Immediate children not returned.
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsResultsWithCountEdApiModelsResourceNode]
  describe 'resource_nodes_controller_get_nodes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for resource_nodes_controller_get_single_node
  # Get the list of immediate children of resourceNodeId provided.
  # @param resourcenodeid
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsResourceNode]
  describe 'resource_nodes_controller_get_single_node test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
