# SwaggerClient::V20AdministrationCenterApi

All URIs are relative to *https://app.edmentum.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**alerts_controller_get_alert_summary_for_program**](V20AdministrationCenterApi.md#alerts_controller_get_alert_summary_for_program) | **GET** /admincenter/v2.0/alerts/{programId}/summary | Get number of Mastery Test locks, items ready to score, and new message alerts.
[**locations_controller_get_locations**](V20AdministrationCenterApi.md#locations_controller_get_locations) | **GET** /admincenter/v2.0/locations | Get the list of locations the user has access to.
[**messages_controller_get_messages**](V20AdministrationCenterApi.md#messages_controller_get_messages) | **GET** /admincenter/v2.0/messages | Get messages for account on or after a certain startDate
[**programs_controller_get_programs**](V20AdministrationCenterApi.md#programs_controller_get_programs) | **GET** /admincenter/v2.0/programs | Get the list of programs the user has access to.
[**programs_controller_update_user_program_access**](V20AdministrationCenterApi.md#programs_controller_update_user_program_access) | **PUT** /admincenter/v2.0/programs/{programid}/users/{userid}/{accessType} | Update program access type for a user.
[**time_on_system_controller_user_time_on_system**](V20AdministrationCenterApi.md#time_on_system_controller_user_time_on_system) | **GET** /admincenter/v2.0/timeonsystem | Get TimeOnSystem data for account on or after a certain startDate
[**users_controller_add_user_to_location**](V20AdministrationCenterApi.md#users_controller_add_user_to_location) | **PUT** /admincenter/v2.0/users/{userid}/locations/{locationid} | Add a user to a location.
[**users_controller_create_family_contact**](V20AdministrationCenterApi.md#users_controller_create_family_contact) | **POST** /admincenter/v2.0/users/{userid}/familycontacts | Create family contact and link to a learner.
[**users_controller_create_user**](V20AdministrationCenterApi.md#users_controller_create_user) | **POST** /admincenter/v2.0/users | Create a new user.
[**users_controller_delete_user**](V20AdministrationCenterApi.md#users_controller_delete_user) | **DELETE** /admincenter/v2.0/users/{userid} | Delete a an existing user.
[**users_controller_get_learner_family_contacts**](V20AdministrationCenterApi.md#users_controller_get_learner_family_contacts) | **GET** /admincenter/v2.0/users/{userid}/familycontacts | Get family contacts linked to a learner.
[**users_controller_get_single_user**](V20AdministrationCenterApi.md#users_controller_get_single_user) | **GET** /admincenter/v2.0/users/{userid} | Get a user by UserID.
[**users_controller_get_user_locations**](V20AdministrationCenterApi.md#users_controller_get_user_locations) | **GET** /admincenter/v2.0/users/{userid}/locations | Get a list of locations the user is added to.
[**users_controller_get_users**](V20AdministrationCenterApi.md#users_controller_get_users) | **GET** /admincenter/v2.0/users | Get a list of users that the user can update or delete.
[**users_controller_password**](V20AdministrationCenterApi.md#users_controller_password) | **PUT** /admincenter/v2.0/users/{userid}/password | Update password for a user.
[**users_controller_remove_user_from_location**](V20AdministrationCenterApi.md#users_controller_remove_user_from_location) | **DELETE** /admincenter/v2.0/users/{userid}/locations/{locationid} | Remove a user from a location.
[**users_controller_reset_family_contact_password**](V20AdministrationCenterApi.md#users_controller_reset_family_contact_password) | **PUT** /admincenter/v2.0/users/{userid}/familycontacts/{familycontactid} | Reset family contact password.
[**users_controller_unlink_family_contact_learner**](V20AdministrationCenterApi.md#users_controller_unlink_family_contact_learner) | **DELETE** /admincenter/v2.0/users/{userid}/familycontacts/{familycontactid} | Unlink learner from family contact.
[**users_controller_update_family_contact**](V20AdministrationCenterApi.md#users_controller_update_family_contact) | **PUT** /admincenter/v2.0/users/{userid}/familycontacts | Update family contact and / or link to a learner.
[**users_controller_update_user**](V20AdministrationCenterApi.md#users_controller_update_user) | **PUT** /admincenter/v2.0/users | Update an existing user (does not allow changing user&#39;s password).


# **alerts_controller_get_alert_summary_for_program**
> EdApiModelsResultsWithCountEdApiModelsUserProgramAlertSummary alerts_controller_get_alert_summary_for_program(program_id, opts)

Get number of Mastery Test locks, items ready to score, and new message alerts.

Number of alerts returned is by instructor per program.  <br></br>  Optionally, specific userIds can be given as a query string parameter to only get counts for those users.  Count of messages and announcements are for all programs.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

program_id = 56 # Integer | 

opts = { 
  user_ids: [56] # Array<Integer> | 
}

begin
  #Get number of Mastery Test locks, items ready to score, and new message alerts.
  result = api_instance.alerts_controller_get_alert_summary_for_program(program_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->alerts_controller_get_alert_summary_for_program: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **program_id** | **Integer**|  | 
 **user_ids** | [**Array&lt;Integer&gt;**](Integer.md)|  | [optional] 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsUserProgramAlertSummary**](EdApiModelsResultsWithCountEdApiModelsUserProgramAlertSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **locations_controller_get_locations**
> EdApiModelsLocationStructure locations_controller_get_locations

Get the list of locations the user has access to.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

begin
  #Get the list of locations the user has access to.
  result = api_instance.locations_controller_get_locations
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->locations_controller_get_locations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EdApiModelsLocationStructure**](EdApiModelsLocationStructure.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **messages_controller_get_messages**
> EdApiPageableResultsWithCountEdApiModelsMessage messages_controller_get_messages(pagesize, opts)

Get messages for account on or after a certain startDate

<ul>    <li>This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.</li>    <li>$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.</li>    <li>If no $skip is provided, the call will return the first page of the result set.</li>    <li>The next set of records can be obtained by making a request to the value of the \"Next\" field returned in the response.</li>  </ul>  <br>For example:</br>  <ul>    <li>?$pagesize=10000&amp;$skip=10000;startDate=1/1/2021 - get results from 10000 - 19999 (next 10000 records).</li>    <li>\"Next\": \"/admincenter/v2.0/messages?$pagesize=10000&amp;$skip=10000&amp;startDate=1/1/2021\"</li>  </ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

pagesize = 56 # Integer | (Required) Number of results to return in a request, with a maximum page size of 10000

opts = { 
  skip: 56, # Integer | 
  start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional Start Date, when provided all messages on or after this date will be included in result set
}

begin
  #Get messages for account on or after a certain startDate
  result = api_instance.messages_controller_get_messages(pagesize, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->messages_controller_get_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagesize** | **Integer**| (Required) Number of results to return in a request, with a maximum page size of 10000 | 
 **skip** | **Integer**|  | [optional] 
 **start_date** | **DateTime**| Optional Start Date, when provided all messages on or after this date will be included in result set | [optional] 

### Return type

[**EdApiPageableResultsWithCountEdApiModelsMessage**](EdApiPageableResultsWithCountEdApiModelsMessage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **programs_controller_get_programs**
> EdApiModelsResultsWithCountEdApiModelsProgram programs_controller_get_programs

Get the list of programs the user has access to.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

begin
  #Get the list of programs the user has access to.
  result = api_instance.programs_controller_get_programs
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->programs_controller_get_programs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EdApiModelsResultsWithCountEdApiModelsProgram**](EdApiModelsResultsWithCountEdApiModelsProgram.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **programs_controller_update_user_program_access**
> String programs_controller_update_user_program_access(programid, userid, access_type)

Update program access type for a user.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

programid = 56 # Integer | 

userid = 56 # Integer | 

access_type = 'access_type_example' # String | Possible values for access type:              <ul style=\"font-size: smaller;\"><li>None</li><li>ProgramAdministrator</li><li>Teacher</li></ul>


begin
  #Update program access type for a user.
  result = api_instance.programs_controller_update_user_program_access(programid, userid, access_type)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->programs_controller_update_user_program_access: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programid** | **Integer**|  | 
 **userid** | **Integer**|  | 
 **access_type** | **String**| Possible values for access type:              &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;None&lt;/li&gt;&lt;li&gt;ProgramAdministrator&lt;/li&gt;&lt;li&gt;Teacher&lt;/li&gt;&lt;/ul&gt; | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **time_on_system_controller_user_time_on_system**
> EdApiPageableResultsWithCountEdCoreDomainReportingUserTimeOnSystem time_on_system_controller_user_time_on_system(start_date, pagesize, opts)

Get TimeOnSystem data for account on or after a certain startDate

<ul>    <li>This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.</li>    <li>$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.</li>    <li>If no $skip is provided, the call will return the first page of the result set.</li>    <li>The next set of records can be obtained by making a request to the value of the \"Next\" field returned in the response.</li>  </ul>  <br>For example:</br>  <ul>    <li>?$pagesize=10000&amp;$skip=10000;startDate=1/1/2021 - get results from 10000 - 19999 (next 10000 records).</li>    <li>\"Next\": \"/admincenter/v2.0/timeonsystem?$pagesize=10000&amp;$skip=10000&amp;startDate=1/1/2021\"</li>  </ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

start_date = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | (Required) All usage data occurring on or after this date will be included in the result set

pagesize = 56 # Integer | (Required) Number of results to return in a request, with a maximum page size of 10000

opts = { 
  skip: 56 # Integer | 
}

begin
  #Get TimeOnSystem data for account on or after a certain startDate
  result = api_instance.time_on_system_controller_user_time_on_system(start_date, pagesize, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->time_on_system_controller_user_time_on_system: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **DateTime**| (Required) All usage data occurring on or after this date will be included in the result set | 
 **pagesize** | **Integer**| (Required) Number of results to return in a request, with a maximum page size of 10000 | 
 **skip** | **Integer**|  | [optional] 

### Return type

[**EdApiPageableResultsWithCountEdCoreDomainReportingUserTimeOnSystem**](EdApiPageableResultsWithCountEdCoreDomainReportingUserTimeOnSystem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_add_user_to_location**
> String users_controller_add_user_to_location(userid, locationid)

Add a user to a location.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | The user id.

locationid = 56 # Integer | The location id.


begin
  #Add a user to a location.
  result = api_instance.users_controller_add_user_to_location(userid, locationid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_add_user_to_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| The user id. | 
 **locationid** | **Integer**| The location id. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_create_family_contact**
> EdApiModelsFamilyContactLearner users_controller_create_family_contact(userid, family_contact_learner)

Create family contact and link to a learner.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | Learner userId to link to new family contact.

family_contact_learner = SwaggerClient::EdApiModelsFamilyContactLearnerCreate.new # EdApiModelsFamilyContactLearnerCreate | Family contact user to create plus learner relationship details.  <ul style=\"font-size: smaller;\"><li>FirstName, LastName - family contact name, required</li><li>EmailAddress - family contact email address, required and unique - used as family contact UserName</li><li>Relationship - family contact relationship to learner, optional</li><li>OptOutOfEmails - flag indicating whether family contact should be opted out of emails from LMS (false by default); API is not sending emails to family contacts, this flag controls LMS functionality</li><li>Password - family contact password, required, must be at least 8 characters</li></ul>


begin
  #Create family contact and link to a learner.
  result = api_instance.users_controller_create_family_contact(userid, family_contact_learner)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_create_family_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| Learner userId to link to new family contact. | 
 **family_contact_learner** | [**EdApiModelsFamilyContactLearnerCreate**](EdApiModelsFamilyContactLearnerCreate.md)| Family contact user to create plus learner relationship details.  &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;FirstName, LastName - family contact name, required&lt;/li&gt;&lt;li&gt;EmailAddress - family contact email address, required and unique - used as family contact UserName&lt;/li&gt;&lt;li&gt;Relationship - family contact relationship to learner, optional&lt;/li&gt;&lt;li&gt;OptOutOfEmails - flag indicating whether family contact should be opted out of emails from LMS (false by default); API is not sending emails to family contacts, this flag controls LMS functionality&lt;/li&gt;&lt;li&gt;Password - family contact password, required, must be at least 8 characters&lt;/li&gt;&lt;/ul&gt; | 

### Return type

[**EdApiModelsFamilyContactLearner**](EdApiModelsFamilyContactLearner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **users_controller_create_user**
> EdApiModelsUser users_controller_create_user(user)

Create a new user.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

user = SwaggerClient::EdApiModelsCreateUser.new # EdApiModelsCreateUser | The user to create.  <ul style=\"font-size: smaller;\"><li>UserId is ignored on the create/POST request.</li><li>Possible values for Role: accountadministrator,programadministrator, teacher, learner</li><li>Possible values for grade are :  ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15']</li></ul>


begin
  #Create a new user.
  result = api_instance.users_controller_create_user(user)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_create_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**EdApiModelsCreateUser**](EdApiModelsCreateUser.md)| The user to create.  &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;UserId is ignored on the create/POST request.&lt;/li&gt;&lt;li&gt;Possible values for Role: accountadministrator,programadministrator, teacher, learner&lt;/li&gt;&lt;li&gt;Possible values for grade are :  [&#39;0&#39;, &#39;1&#39;, &#39;2&#39;, &#39;3&#39;, &#39;4&#39;, &#39;5&#39;, &#39;6&#39;, &#39;7&#39;, &#39;8&#39;, &#39;9&#39;, &#39;10&#39;, &#39;11&#39;, &#39;12&#39;, &#39;13&#39;, &#39;14&#39;, &#39;15&#39;]&lt;/li&gt;&lt;/ul&gt; | 

### Return type

[**EdApiModelsUser**](EdApiModelsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **users_controller_delete_user**
> String users_controller_delete_user(userid)

Delete a an existing user.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | The user id.              <br>              A learner can be deleted only if it was never enrolled in a class/assignment              A teacher can be deleted on un-enrollment from all class/assignments              </br>


begin
  #Delete a an existing user.
  result = api_instance.users_controller_delete_user(userid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_delete_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| The user id.              &lt;br&gt;              A learner can be deleted only if it was never enrolled in a class/assignment              A teacher can be deleted on un-enrollment from all class/assignments              &lt;/br&gt; | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_get_learner_family_contacts**
> EdApiModelsResultsWithCountEdApiModelsFamilyContactLearner users_controller_get_learner_family_contacts(userid)

Get family contacts linked to a learner.

<br>Passwords not returned in response for security reasons.</br>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | Learner userId.


begin
  #Get family contacts linked to a learner.
  result = api_instance.users_controller_get_learner_family_contacts(userid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_get_learner_family_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| Learner userId. | 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsFamilyContactLearner**](EdApiModelsResultsWithCountEdApiModelsFamilyContactLearner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_get_single_user**
> EdApiModelsUser users_controller_get_single_user(userid)

Get a user by UserID.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | The user id.              <br>              Password will not be returned in response for security reasons.               </br>


begin
  #Get a user by UserID.
  result = api_instance.users_controller_get_single_user(userid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_get_single_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| The user id.              &lt;br&gt;              Password will not be returned in response for security reasons.               &lt;/br&gt; | 

### Return type

[**EdApiModelsUser**](EdApiModelsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_get_user_locations**
> EdApiModelsResultsWithCountEdApiModelsLocation users_controller_get_user_locations(userid)

Get a list of locations the user is added to.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | The user id.


begin
  #Get a list of locations the user is added to.
  result = api_instance.users_controller_get_user_locations(userid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_get_user_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| The user id. | 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsLocation**](EdApiModelsResultsWithCountEdApiModelsLocation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_get_users**
> EdApiPageableResultsWithCountEdApiModelsUser users_controller_get_users(pagesize, opts)

Get a list of users that the user can update or delete.

<ul>    <li>This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.</li>    <li>$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.</li>    <li>If no $skip is provided, the call will return the first page of the result set.</li>    <li>The next set of records can be obtained by making a request to the value of the \"Next\" field returned in the response.</li>  </ul>  <br>For example:</br>  <ul>    <li>?$pagesize=10000&amp;$skip=10000 - get results from 10000 - 19999 (next 10000 records).</li>    <li>\"Next\": \"/admincenter/v2.0/users?$pagesize=10000&amp;$skip=10000\"</li>  </ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

pagesize = 56 # Integer | 

opts = { 
  skip: 56, # Integer | 
  sis_id: 'sis_id_example' # String | (Optional) Result set will be filtered down to users matching the supplied Student Information System Id (SisID)
}

begin
  #Get a list of users that the user can update or delete.
  result = api_instance.users_controller_get_users(pagesize, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pagesize** | **Integer**|  | 
 **skip** | **Integer**|  | [optional] 
 **sis_id** | **String**| (Optional) Result set will be filtered down to users matching the supplied Student Information System Id (SisID) | [optional] 

### Return type

[**EdApiPageableResultsWithCountEdApiModelsUser**](EdApiPageableResultsWithCountEdApiModelsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_password**
> String users_controller_password(userid, password)

Update password for a user.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | 

password = SwaggerClient::EdApiModelsPassword.new # EdApiModelsPassword | 


begin
  #Update password for a user.
  result = api_instance.users_controller_password(userid, password)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**|  | 
 **password** | [**EdApiModelsPassword**](EdApiModelsPassword.md)|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **users_controller_remove_user_from_location**
> String users_controller_remove_user_from_location(userid, locationid)

Remove a user from a location.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | The user id.

locationid = 56 # Integer | The location id.


begin
  #Remove a user from a location.
  result = api_instance.users_controller_remove_user_from_location(userid, locationid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_remove_user_from_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| The user id. | 
 **locationid** | **Integer**| The location id. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_reset_family_contact_password**
> String users_controller_reset_family_contact_password(userid, familycontactid, password)

Reset family contact password.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | Learner userId.

familycontactid = 56 # Integer | Family contact id.

password = SwaggerClient::EdApiModelsFamilyContactPassword.new # EdApiModelsFamilyContactPassword | Family contact password, required, must be at least 8 characters.


begin
  #Reset family contact password.
  result = api_instance.users_controller_reset_family_contact_password(userid, familycontactid, password)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_reset_family_contact_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| Learner userId. | 
 **familycontactid** | **Integer**| Family contact id. | 
 **password** | [**EdApiModelsFamilyContactPassword**](EdApiModelsFamilyContactPassword.md)| Family contact password, required, must be at least 8 characters. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **users_controller_unlink_family_contact_learner**
> String users_controller_unlink_family_contact_learner(userid, familycontactid)

Unlink learner from family contact.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | Learner userId.

familycontactid = 56 # Integer | Family contact id.


begin
  #Unlink learner from family contact.
  result = api_instance.users_controller_unlink_family_contact_learner(userid, familycontactid)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_unlink_family_contact_learner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| Learner userId. | 
 **familycontactid** | **Integer**| Family contact id. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **users_controller_update_family_contact**
> EdApiModelsFamilyContactLearner users_controller_update_family_contact(userid, family_contact_learner)

Update family contact and / or link to a learner.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

userid = 56 # Integer | Learner userId to link family contact to.

family_contact_learner = SwaggerClient::EdApiModelsFamilyContactLearner.new # EdApiModelsFamilyContactLearner | Family contact user to update plus learner relationship details.  <ul style=\"font-size: smaller;\"><li>FirstName, LastName - family contact name, required</li><li>EmailAddress - family contact email address, required and unique - used as family contact UserName</li><li>Relationship - family contact relationship to learner, optional</li><li>OptOutOfEmails - flag indicating whether family contact should be opted out of emails from LMS (false by default); API is not sending emails to family contacts, this flag controls LMS functionality</li></ul>


begin
  #Update family contact and / or link to a learner.
  result = api_instance.users_controller_update_family_contact(userid, family_contact_learner)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_update_family_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**| Learner userId to link family contact to. | 
 **family_contact_learner** | [**EdApiModelsFamilyContactLearner**](EdApiModelsFamilyContactLearner.md)| Family contact user to update plus learner relationship details.  &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;FirstName, LastName - family contact name, required&lt;/li&gt;&lt;li&gt;EmailAddress - family contact email address, required and unique - used as family contact UserName&lt;/li&gt;&lt;li&gt;Relationship - family contact relationship to learner, optional&lt;/li&gt;&lt;li&gt;OptOutOfEmails - flag indicating whether family contact should be opted out of emails from LMS (false by default); API is not sending emails to family contacts, this flag controls LMS functionality&lt;/li&gt;&lt;/ul&gt; | 

### Return type

[**EdApiModelsFamilyContactLearner**](EdApiModelsFamilyContactLearner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **users_controller_update_user**
> EdApiModelsUser users_controller_update_user(user)

Update an existing user (does not allow changing user's password).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20AdministrationCenterApi.new

user = SwaggerClient::EdApiModelsUser.new # EdApiModelsUser | The user to update.  <ul style=\"font-size: smaller;\"><li>UserId is required on the update/PUT request.</li><li>User passwords may be updated with a PUT request to: /admincenter/V2/users/{userid}/password</li><li>Possible values for Role: accountadministrator,programadministrator, teacher, learner </li><li>Possible values for Grade:  ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15']</li></ul>


begin
  #Update an existing user (does not allow changing user's password).
  result = api_instance.users_controller_update_user(user)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20AdministrationCenterApi->users_controller_update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**EdApiModelsUser**](EdApiModelsUser.md)| The user to update.  &lt;ul style&#x3D;\&quot;font-size: smaller;\&quot;&gt;&lt;li&gt;UserId is required on the update/PUT request.&lt;/li&gt;&lt;li&gt;User passwords may be updated with a PUT request to: /admincenter/V2/users/{userid}/password&lt;/li&gt;&lt;li&gt;Possible values for Role: accountadministrator,programadministrator, teacher, learner &lt;/li&gt;&lt;li&gt;Possible values for Grade:  [&#39;0&#39;, &#39;1&#39;, &#39;2&#39;, &#39;3&#39;, &#39;4&#39;, &#39;5&#39;, &#39;6&#39;, &#39;7&#39;, &#39;8&#39;, &#39;9&#39;, &#39;10&#39;, &#39;11&#39;, &#39;12&#39;, &#39;13&#39;, &#39;14&#39;, &#39;15&#39;]&lt;/li&gt;&lt;/ul&gt; | 

### Return type

[**EdApiModelsUser**](EdApiModelsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



