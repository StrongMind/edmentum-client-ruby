=begin
#Edmentum Web API - v2.0

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.33

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::V20AdministrationCenterApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'V20AdministrationCenterApi' do
  before do
    # run before each test
    @instance = SwaggerClient::V20AdministrationCenterApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of V20AdministrationCenterApi' do
    it 'should create an instance of V20AdministrationCenterApi' do
      expect(@instance).to be_instance_of(SwaggerClient::V20AdministrationCenterApi)
    end
  end

  # unit tests for alerts_controller_get_alert_summary_for_program
  # Get number of Mastery Test locks, items ready to score, and new message alerts.
  # Number of alerts returned is by instructor per program.  &lt;br&gt;&lt;/br&gt;  Optionally, specific userIds can be given as a query string parameter to only get counts for those users.  Count of messages and announcements are for all programs.
  # @param program_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :user_ids 
  # @return [EdApiModelsResultsWithCountEdApiModelsUserProgramAlertSummary]
  describe 'alerts_controller_get_alert_summary_for_program test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for locations_controller_get_locations
  # Get the list of locations the user has access to.
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsLocationStructure]
  describe 'locations_controller_get_locations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for messages_controller_get_messages
  # Get messages for account on or after a certain startDate
  # &lt;ul&gt;    &lt;li&gt;This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.&lt;/li&gt;    &lt;li&gt;$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.&lt;/li&gt;    &lt;li&gt;If no $skip is provided, the call will return the first page of the result set.&lt;/li&gt;    &lt;li&gt;The next set of records can be obtained by making a request to the value of the \&quot;Next\&quot; field returned in the response.&lt;/li&gt;  &lt;/ul&gt;  &lt;br&gt;For example:&lt;/br&gt;  &lt;ul&gt;    &lt;li&gt;?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000;startDate&#x3D;1/1/2021 - get results from 10000 - 19999 (next 10000 records).&lt;/li&gt;    &lt;li&gt;\&quot;Next\&quot;: \&quot;/admincenter/v2.0/messages?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000&amp;amp;startDate&#x3D;1/1/2021\&quot;&lt;/li&gt;  &lt;/ul&gt;
  # @param pagesize (Required) Number of results to return in a request, with a maximum page size of 10000
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip 
  # @option opts [DateTime] :start_date Optional Start Date, when provided all messages on or after this date will be included in result set
  # @return [EdApiPageableResultsWithCountEdApiModelsMessage]
  describe 'messages_controller_get_messages test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for programs_controller_get_programs
  # Get the list of programs the user has access to.
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsResultsWithCountEdApiModelsProgram]
  describe 'programs_controller_get_programs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for programs_controller_update_user_program_access
  # Update program access type for a user.
  # @param programid 
  # @param userid 
  # @param access_type Possible values for access type:              &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;None&lt;/li&gt;&lt;li&gt;ProgramAdministrator&lt;/li&gt;&lt;li&gt;Teacher&lt;/li&gt;&lt;/ul&gt;
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'programs_controller_update_user_program_access test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for time_on_system_controller_user_time_on_system
  # Get TimeOnSystem data for account on or after a certain startDate
  # &lt;ul&gt;    &lt;li&gt;This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.&lt;/li&gt;    &lt;li&gt;$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.&lt;/li&gt;    &lt;li&gt;If no $skip is provided, the call will return the first page of the result set.&lt;/li&gt;    &lt;li&gt;The next set of records can be obtained by making a request to the value of the \&quot;Next\&quot; field returned in the response.&lt;/li&gt;  &lt;/ul&gt;  &lt;br&gt;For example:&lt;/br&gt;  &lt;ul&gt;    &lt;li&gt;?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000;startDate&#x3D;1/1/2021 - get results from 10000 - 19999 (next 10000 records).&lt;/li&gt;    &lt;li&gt;\&quot;Next\&quot;: \&quot;/admincenter/v2.0/timeonsystem?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000&amp;amp;startDate&#x3D;1/1/2021\&quot;&lt;/li&gt;  &lt;/ul&gt;
  # @param start_date (Required) All usage data occurring on or after this date will be included in the result set
  # @param pagesize (Required) Number of results to return in a request, with a maximum page size of 10000
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip 
  # @return [EdApiPageableResultsWithCountEdCoreDomainReportingUserTimeOnSystem]
  describe 'time_on_system_controller_user_time_on_system test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_add_user_to_location
  # Add a user to a location.
  # @param userid The user id.
  # @param locationid The location id.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'users_controller_add_user_to_location test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_create_family_contact
  # Create family contact and link to a learner.
  # @param userid Learner userId to link to new family contact.
  # @param family_contact_learner Family contact user to create plus learner relationship details.  &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;FirstName, LastName - family contact name, required&lt;/li&gt;&lt;li&gt;EmailAddress - family contact email address, required and unique - used as family contact UserName&lt;/li&gt;&lt;li&gt;Relationship - family contact relationship to learner, optional&lt;/li&gt;&lt;li&gt;OptOutOfEmails - flag indicating whether family contact should be opted out of emails from LMS (false by default); API is not sending emails to family contacts, this flag controls LMS functionality&lt;/li&gt;&lt;li&gt;Password - family contact password, required, must be at least 8 characters&lt;/li&gt;&lt;/ul&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsFamilyContactLearner]
  describe 'users_controller_create_family_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_create_user
  # Create a new user.
  # @param user The user to create.  &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;UserId is ignored on the create/POST request.&lt;/li&gt;&lt;li&gt;Possible values for Role: accountadministrator,programadministrator, teacher, learner&lt;/li&gt;&lt;li&gt;Possible values for grade are :  [&#39;0&#39;, &#39;1&#39;, &#39;2&#39;, &#39;3&#39;, &#39;4&#39;, &#39;5&#39;, &#39;6&#39;, &#39;7&#39;, &#39;8&#39;, &#39;9&#39;, &#39;10&#39;, &#39;11&#39;, &#39;12&#39;, &#39;13&#39;, &#39;14&#39;, &#39;15&#39;]&lt;/li&gt;&lt;/ul&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsUser]
  describe 'users_controller_create_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_delete_user
  # Delete a an existing user.
  # @param userid The user id.              &lt;br&gt;              A learner can be deleted only if it was never enrolled in a class/assignment              A teacher can be deleted on un-enrollment from all class/assignments              &lt;/br&gt;
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'users_controller_delete_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_get_learner_family_contacts
  # Get family contacts linked to a learner.
  # &lt;br&gt;Passwords not returned in response for security reasons.&lt;/br&gt;
  # @param userid Learner userId.
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsResultsWithCountEdApiModelsFamilyContactLearner]
  describe 'users_controller_get_learner_family_contacts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_get_single_user
  # Get a user by UserID.
  # @param userid The user id.              &lt;br&gt;              Password will not be returned in response for security reasons.               &lt;/br&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsUser]
  describe 'users_controller_get_single_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_get_user_locations
  # Get a list of locations the user is added to.
  # @param userid The user id.
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsResultsWithCountEdApiModelsLocation]
  describe 'users_controller_get_user_locations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_get_users
  # Get a list of users that the user can update or delete.
  # &lt;ul&gt;    &lt;li&gt;This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.&lt;/li&gt;    &lt;li&gt;$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.&lt;/li&gt;    &lt;li&gt;If no $skip is provided, the call will return the first page of the result set.&lt;/li&gt;    &lt;li&gt;The next set of records can be obtained by making a request to the value of the \&quot;Next\&quot; field returned in the response.&lt;/li&gt;  &lt;/ul&gt;  &lt;br&gt;For example:&lt;/br&gt;  &lt;ul&gt;    &lt;li&gt;?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000 - get results from 10000 - 19999 (next 10000 records).&lt;/li&gt;    &lt;li&gt;\&quot;Next\&quot;: \&quot;/admincenter/v2.0/users?$pagesize&#x3D;10000&amp;amp;$skip&#x3D;10000\&quot;&lt;/li&gt;  &lt;/ul&gt;
  # @param pagesize 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip 
  # @option opts [String] :sis_id (Optional) Result set will be filtered down to users matching the supplied Student Information System Id (SisID)
  # @return [EdApiPageableResultsWithCountEdApiModelsUser]
  describe 'users_controller_get_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_password
  # Update password for a user.
  # @param userid 
  # @param password 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'users_controller_password test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_remove_user_from_location
  # Remove a user from a location.
  # @param userid The user id.
  # @param locationid The location id.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'users_controller_remove_user_from_location test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_reset_family_contact_password
  # Reset family contact password.
  # @param userid Learner userId.
  # @param familycontactid Family contact id.
  # @param password Family contact password, required, must be at least 8 characters.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'users_controller_reset_family_contact_password test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_unlink_family_contact_learner
  # Unlink learner from family contact.
  # @param userid Learner userId.
  # @param familycontactid Family contact id.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'users_controller_unlink_family_contact_learner test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_update_family_contact
  # Update family contact and / or link to a learner.
  # @param userid Learner userId to link family contact to.
  # @param family_contact_learner Family contact user to update plus learner relationship details.  &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;FirstName, LastName - family contact name, required&lt;/li&gt;&lt;li&gt;EmailAddress - family contact email address, required and unique - used as family contact UserName&lt;/li&gt;&lt;li&gt;Relationship - family contact relationship to learner, optional&lt;/li&gt;&lt;li&gt;OptOutOfEmails - flag indicating whether family contact should be opted out of emails from LMS (false by default); API is not sending emails to family contacts, this flag controls LMS functionality&lt;/li&gt;&lt;/ul&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsFamilyContactLearner]
  describe 'users_controller_update_family_contact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_controller_update_user
  # Update an existing user (does not allow changing user&#39;s password).
  # @param user The user to update.  &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;UserId is required on the update/PUT request.&lt;/li&gt;&lt;li&gt;User passwords may be updated with a PUT request to: /admincenter/V2/users/{userid}/password&lt;/li&gt;&lt;li&gt;Possible values for Role: accountadministrator,programadministrator, teacher, learner &lt;/li&gt;&lt;li&gt;Possible values for Grade:  [&#39;0&#39;, &#39;1&#39;, &#39;2&#39;, &#39;3&#39;, &#39;4&#39;, &#39;5&#39;, &#39;6&#39;, &#39;7&#39;, &#39;8&#39;, &#39;9&#39;, &#39;10&#39;, &#39;11&#39;, &#39;12&#39;, &#39;13&#39;, &#39;14&#39;, &#39;15&#39;]&lt;/li&gt;&lt;/ul&gt;
  # @param [Hash] opts the optional parameters
  # @return [EdApiModelsUser]
  describe 'users_controller_update_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
