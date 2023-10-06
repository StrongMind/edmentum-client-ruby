# SwaggerClient::V20CoursewareApi

All URIs are relative to *https://app.edmentum.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classes_controller_enroll_courseware_user**](V20CoursewareApi.md#classes_controller_enroll_courseware_user) | **POST** /courseware/v2.0/classes/{classid}/users/{userid} | Enroll a user in a Courseware class.
[**classes_controller_get_activities**](V20CoursewareApi.md#classes_controller_get_activities) | **GET** /courseware/v2.0/classes/{classid}/gradetracker/activities | Get Class Activities from GradeTracker
[**classes_controller_get_activity_scores**](V20CoursewareApi.md#classes_controller_get_activity_scores) | **GET** /courseware/v2.0/classes/{classid}/gradetracker/activityscores | Get Class Activity Scores from GradeTracker
[**classes_controller_get_courseware_class_activity_progress**](V20CoursewareApi.md#classes_controller_get_courseware_class_activity_progress) | **GET** /courseware/v2.0/classes/{classid}/gradetracker/progress | Get current progress for all students in a Courseware class.
[**classes_controller_get_courseware_class_activity_time_on_task**](V20CoursewareApi.md#classes_controller_get_courseware_class_activity_time_on_task) | **GET** /courseware/v2.0/classes/{classid}/timeontask | Get daily activity time on task records for all students in a Courseware class.
[**classes_controller_get_courseware_class_learner_grades**](V20CoursewareApi.md#classes_controller_get_courseware_class_learner_grades) | **GET** /courseware/v2.0/classes/{classid}/gradetracker/grades | Get current grades for all students in a Courseware class.
[**classes_controller_get_courseware_enrollable_users**](V20CoursewareApi.md#classes_controller_get_courseware_enrollable_users) | **GET** /courseware/v2.0/classes/{classid}/enrollableusers | Get list of users to enroll in a Courseware class.
[**classes_controller_get_courseware_user**](V20CoursewareApi.md#classes_controller_get_courseware_user) | **GET** /courseware/v2.0/classes/{classid}/users/{userId} | Get a single user by classid and userid
[**classes_controller_get_courseware_users**](V20CoursewareApi.md#classes_controller_get_courseware_users) | **GET** /courseware/v2.0/classes/{classid}/users | Get a list of users in a Courseware class.
[**classes_controller_transfer_learner_to_new_class**](V20CoursewareApi.md#classes_controller_transfer_learner_to_new_class) | **POST** /courseware/v2.0/classes/{classId}/transfer | Transfer Learner from one class to another
[**classes_controller_update_class_status**](V20CoursewareApi.md#classes_controller_update_class_status) | **PUT** /courseware/v2.0/classes/{classid}/resourcenodes/{resourcenodeid}/status | Lock/Unlock content for an entire Courseware class including students added later.
[**classes_controller_update_class_user_status**](V20CoursewareApi.md#classes_controller_update_class_user_status) | **PUT** /courseware/v2.0/classes/{classid}/users/{userid}/resourcenodes/{resourcenodeid}/status | Lock/Unlock content for a particular user in a Courseware class.
[**classes_controller_update_courseware_class**](V20CoursewareApi.md#classes_controller_update_courseware_class) | **PUT** /courseware/v2.0/classes/{classid} | Update Courseware class.
[**classes_controller_update_courseware_user_enrollment**](V20CoursewareApi.md#classes_controller_update_courseware_user_enrollment) | **PUT** /courseware/v2.0/classes/{classId}/users/{userId} | Update start and end dates for a user&#39;s Courseware Class.
[**classes_controller_withdraw_courseware_user**](V20CoursewareApi.md#classes_controller_withdraw_courseware_user) | **DELETE** /courseware/v2.0/classes/{classid}/users/{userid} | Withdraw a user from a Courseware class.
[**programs_controller_create_program_class**](V20CoursewareApi.md#programs_controller_create_program_class) | **POST** /courseware/v2.0/programs/{programid}/classes | Create a Courseware class in a program.
[**programs_controller_get_program_class**](V20CoursewareApi.md#programs_controller_get_program_class) | **GET** /courseware/v2.0/programs/{programId}/classes/{classId} | Get a Courseware classes in a Courseware program by classId.
[**programs_controller_get_program_classes**](V20CoursewareApi.md#programs_controller_get_program_classes) | **GET** /courseware/v2.0/programs/{programid}/classes | Get a list of Courseware classes in a Courseware program.
[**programs_controller_get_program_classes_with_user_ids**](V20CoursewareApi.md#programs_controller_get_program_classes_with_user_ids) | **GET** /courseware/v2.0/programs/{programid}/classdetails | Gets a list of Courseware Classes (plus additional details) in a Courseware program.
[**resource_nodes_controller_get_nodes**](V20CoursewareApi.md#resource_nodes_controller_get_nodes) | **GET** /courseware/v2.0/resourcenodes | Get a list of top level resource nodes for Plato and Custom Courses. Immediate children not returned.
[**resource_nodes_controller_get_single_node**](V20CoursewareApi.md#resource_nodes_controller_get_single_node) | **GET** /courseware/v2.0/resourcenodes/{resourcenodeid} | Get the list of immediate children of resourceNodeId provided.


# **classes_controller_enroll_courseware_user**
> String classes_controller_enroll_courseware_user(classid, userid, opts)

Enroll a user in a Courseware class.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | 

userid = 56 # Integer | 

opts = {
  start_date: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | End Date needs to be greater than Start Date (time of day is ignored).
  end_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Enroll a user in a Courseware class.
  result = api_instance.classes_controller_enroll_courseware_user(classid, userid, opts)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_enroll_courseware_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**|  | 
 **userid** | **Integer**|  | 
 **start_date** | **DateTime**| End Date needs to be greater than Start Date (time of day is ignored). | [optional] 
 **end_date** | **DateTime**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_activities**
> EdApiModelsResultsWithCountEdApiModelsActivity classes_controller_get_activities(classid, opts)

Get Class Activities from GradeTracker

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | The ID of the class

opts = {
  gradetracker_category_id: 56 # Integer | (Optional) When supplied, filters the results down to just the given gradetrackerCategoryId.
}

begin
  #Get Class Activities from GradeTracker
  result = api_instance.classes_controller_get_activities(classid, opts)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_get_activities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**| The ID of the class | 
 **gradetracker_category_id** | **Integer**| (Optional) When supplied, filters the results down to just the given gradetrackerCategoryId. | [optional] 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsActivity**](EdApiModelsResultsWithCountEdApiModelsActivity.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_activity_scores**
> EdApiModelsResultsWithCountEdApiModelsActivityScore classes_controller_get_activity_scores(classid, opts)

Get Class Activity Scores from GradeTracker

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | The ID of the class

opts = {
  resource_node_id: 56, # Integer | (Optional) When supplied, filters to the results down to just the given resoureNodeId.
  learner_user_id: 56 # Integer | (Optional) When supplied, filters to the results down to just the given learnerUserId.
}

begin
  #Get Class Activity Scores from GradeTracker
  result = api_instance.classes_controller_get_activity_scores(classid, opts)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_get_activity_scores: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**| The ID of the class | 
 **resource_node_id** | **Integer**| (Optional) When supplied, filters to the results down to just the given resoureNodeId. | [optional] 
 **learner_user_id** | **Integer**| (Optional) When supplied, filters to the results down to just the given learnerUserId. | [optional] 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsActivityScore**](EdApiModelsResultsWithCountEdApiModelsActivityScore.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_courseware_class_activity_progress**
> EdApiModelsResultsWithCountEdApiModelsActivityProgress classes_controller_get_courseware_class_activity_progress(classid)

Get current progress for all students in a Courseware class.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | Class ID to get progress for.

begin
  #Get current progress for all students in a Courseware class.
  result = api_instance.classes_controller_get_courseware_class_activity_progress(classid)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_get_courseware_class_activity_progress: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**| Class ID to get progress for. | 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsActivityProgress**](EdApiModelsResultsWithCountEdApiModelsActivityProgress.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_courseware_class_activity_time_on_task**
> EdApiModelsResultsWithCountEdApiModelsActivityTimeOnTask classes_controller_get_courseware_class_activity_time_on_task(classid, opts)

Get daily activity time on task records for all students in a Courseware class.

<br>    <b>TimeOnTask (in minutes) property is obsolete, use TimeOnTaskInMilliseconds instead.</b>  </br>

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | Class ID to get time on task for.

opts = {
  startdate: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional Start Date, if not provided - returns all activity time on task data for that class.
}

begin
  #Get daily activity time on task records for all students in a Courseware class.
  result = api_instance.classes_controller_get_courseware_class_activity_time_on_task(classid, opts)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_get_courseware_class_activity_time_on_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**| Class ID to get time on task for. | 
 **startdate** | **DateTime**| Optional Start Date, if not provided - returns all activity time on task data for that class. | [optional] 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsActivityTimeOnTask**](EdApiModelsResultsWithCountEdApiModelsActivityTimeOnTask.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_courseware_class_learner_grades**
> EdApiModelsResultsWithCountEdApiModelsCoursewareClassLearnerGrade classes_controller_get_courseware_class_learner_grades(classid)

Get current grades for all students in a Courseware class.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | Class ID to get grades for.

begin
  #Get current grades for all students in a Courseware class.
  result = api_instance.classes_controller_get_courseware_class_learner_grades(classid)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_get_courseware_class_learner_grades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**| Class ID to get grades for. | 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsCoursewareClassLearnerGrade**](EdApiModelsResultsWithCountEdApiModelsCoursewareClassLearnerGrade.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_courseware_enrollable_users**
> EdApiPageableResultsWithCountEdApiModelsUser classes_controller_get_courseware_enrollable_users(classid, pagesize, opts)

Get list of users to enroll in a Courseware class.

<ul>    <li>This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.</li>    <li>$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.</li>    <li>If no $skip is provided, the call will return the first page of the result set.</li>    <li>The next set of records can be obtained by making a request to the value of the \"Next\" field returned in the response.</li>  </ul>  <br>For example:</br>  <ul>    <li>?$pagesize=10000&amp;$skip=10000 - get results from 10000 - 19999 (next 10000 records).</li>    <li>\"Next\": \"/courseware/v2.0/classes/{classid}/enrollableusers?$pagesize=10000&amp;$skip=10000\"</li>  </ul>

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | 

pagesize = 56 # Integer | 

opts = {
  skip: 56 # Integer | 
}

begin
  #Get list of users to enroll in a Courseware class.
  result = api_instance.classes_controller_get_courseware_enrollable_users(classid, pagesize, opts)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_get_courseware_enrollable_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**|  | 
 **pagesize** | **Integer**|  | 
 **skip** | **Integer**|  | [optional] 

### Return type

[**EdApiPageableResultsWithCountEdApiModelsUser**](EdApiPageableResultsWithCountEdApiModelsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_courseware_user**
> EdApiModelsUserClassAssignment classes_controller_get_courseware_user(classid, user_id)

Get a single user by classid and userid

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | 

user_id = 56 # Integer | 

begin
  #Get a single user by classid and userid
  result = api_instance.classes_controller_get_courseware_user(classid, user_id)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_get_courseware_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**|  | 
 **user_id** | **Integer**|  | 

### Return type

[**EdApiModelsUserClassAssignment**](EdApiModelsUserClassAssignment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_courseware_users**
> EdApiModelsResultsWithCountEdApiModelsUserClassAssignment classes_controller_get_courseware_users(classid)

Get a list of users in a Courseware class.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | 

begin
  #Get a list of users in a Courseware class.
  result = api_instance.classes_controller_get_courseware_users(classid)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_get_courseware_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**|  | 

### Return type

[**EdApiModelsResultsWithCountEdApiModelsUserClassAssignment**](EdApiModelsResultsWithCountEdApiModelsUserClassAssignment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_transfer_learner_to_new_class**
> String classes_controller_transfer_learner_to_new_class(class_id, transfer)

Transfer Learner from one class to another

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

class_id = 56 # Integer | Classroom Id pertaining to classroom to transfer learner

transfer = EdmentumClient::EdApiModelsClassTransfer.new # EdApiModelsClassTransfer | Transfer object representing LearnerUserId of learner to be transferred and the ClassroomId of the learner's current class

begin
  #Transfer Learner from one class to another
  result = api_instance.classes_controller_transfer_learner_to_new_class(class_id, transfer)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_transfer_learner_to_new_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_id** | **Integer**| Classroom Id pertaining to classroom to transfer learner | 
 **transfer** | [**EdApiModelsClassTransfer**](EdApiModelsClassTransfer.md)| Transfer object representing LearnerUserId of learner to be transferred and the ClassroomId of the learner&#39;s current class | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **classes_controller_update_class_status**
> EdApiModelsClassStatus classes_controller_update_class_status(classid, resourcenodeid, model)

Lock/Unlock content for an entire Courseware class including students added later.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | 

resourcenodeid = 56 # Integer | 

model = EdmentumClient::EdApiModelsClassStatus.new # EdApiModelsClassStatus | <br>              Locking/Unlocking a resource node locks/unlocks all children nodes               </br>

begin
  #Lock/Unlock content for an entire Courseware class including students added later.
  result = api_instance.classes_controller_update_class_status(classid, resourcenodeid, model)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_update_class_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**|  | 
 **resourcenodeid** | **Integer**|  | 
 **model** | [**EdApiModelsClassStatus**](EdApiModelsClassStatus.md)| &lt;br&gt;              Locking/Unlocking a resource node locks/unlocks all children nodes               &lt;/br&gt; | 

### Return type

[**EdApiModelsClassStatus**](EdApiModelsClassStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **classes_controller_update_class_user_status**
> EdApiModelsClassUserStatus classes_controller_update_class_user_status(userid, classid, resourcenodeid, model)

Lock/Unlock content for a particular user in a Courseware class.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

userid = 56 # Integer | 

classid = 56 # Integer | 

resourcenodeid = 56 # Integer | 

model = EdmentumClient::EdApiModelsClassUserStatus.new # EdApiModelsClassUserStatus | <br>              Locking/Unlocking a resource node locks/unlocks all children nodes               </br>

begin
  #Lock/Unlock content for a particular user in a Courseware class.
  result = api_instance.classes_controller_update_class_user_status(userid, classid, resourcenodeid, model)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_update_class_user_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userid** | **Integer**|  | 
 **classid** | **Integer**|  | 
 **resourcenodeid** | **Integer**|  | 
 **model** | [**EdApiModelsClassUserStatus**](EdApiModelsClassUserStatus.md)| &lt;br&gt;              Locking/Unlocking a resource node locks/unlocks all children nodes               &lt;/br&gt; | 

### Return type

[**EdApiModelsClassUserStatus**](EdApiModelsClassUserStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **classes_controller_update_courseware_class**
> EdApiModelsClass classes_controller_update_courseware_class(classid, model)

Update Courseware class.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | The ID of the class to update.

model = EdmentumClient::EdApiModelsClass.new # EdApiModelsClass | The class to update.              <br>              ProgramID, ClassID, ResourceNodeId, ResourceNodeName and SelfEnrollCode cannot be updated once an assignment is created, so values in these parameters will be ignored.</br><br>              Due date needs to be greater than Start Date</br><br>              Valid value for MasteryTestAttempts is between 0 and 10. Zero value translates to Unlimited Mastery test Attempts              </br>

begin
  #Update Courseware class.
  result = api_instance.classes_controller_update_courseware_class(classid, model)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_update_courseware_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**| The ID of the class to update. | 
 **model** | [**EdApiModelsClass**](EdApiModelsClass.md)| The class to update.              &lt;br&gt;              ProgramID, ClassID, ResourceNodeId, ResourceNodeName and SelfEnrollCode cannot be updated once an assignment is created, so values in these parameters will be ignored.&lt;/br&gt;&lt;br&gt;              Due date needs to be greater than Start Date&lt;/br&gt;&lt;br&gt;              Valid value for MasteryTestAttempts is between 0 and 10. Zero value translates to Unlimited Mastery test Attempts              &lt;/br&gt; | 

### Return type

[**EdApiModelsClass**](EdApiModelsClass.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **classes_controller_update_courseware_user_enrollment**
> String classes_controller_update_courseware_user_enrollment(class_id, user_id, start_date, opts)

Update start and end dates for a user's Courseware Class.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

class_id = 56 # Integer | 

user_id = 56 # Integer | 

start_date = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | End Date needs to be greater than Start Date (time of day is ignored).

opts = {
  end_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Update start and end dates for a user's Courseware Class.
  result = api_instance.classes_controller_update_courseware_user_enrollment(class_id, user_id, start_date, opts)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_update_courseware_user_enrollment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_id** | **Integer**|  | 
 **user_id** | **Integer**|  | 
 **start_date** | **DateTime**| End Date needs to be greater than Start Date (time of day is ignored). | 
 **end_date** | **DateTime**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_withdraw_courseware_user**
> String classes_controller_withdraw_courseware_user(classid, userid)

Withdraw a user from a Courseware class.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

classid = 56 # Integer | 

userid = 56 # Integer | 

begin
  #Withdraw a user from a Courseware class.
  result = api_instance.classes_controller_withdraw_courseware_user(classid, userid)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->classes_controller_withdraw_courseware_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **classid** | **Integer**|  | 
 **userid** | **Integer**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **programs_controller_create_program_class**
> EdApiModelsClass programs_controller_create_program_class(programid, model)

Create a Courseware class in a program.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

programid = 56 # Integer | The ID of the program.

model = EdmentumClient::EdApiModelsClass.new # EdApiModelsClass | The class to create.<br /><br>  ClassID and ResourceNodeName are optional and values in these parameters will be ignored.</br><br>  Due date needs to be greater than Start Date</br><br>  Valid value for MasteryTestAttempts is between 0 and 10. Zero value translates to Unlimited Mastery test Attempts</br><br>  SelfEnrollPassword min length is 4 characters  </br>

begin
  #Create a Courseware class in a program.
  result = api_instance.programs_controller_create_program_class(programid, model)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->programs_controller_create_program_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programid** | **Integer**| The ID of the program. | 
 **model** | [**EdApiModelsClass**](EdApiModelsClass.md)| The class to create.&lt;br /&gt;&lt;br&gt;  ClassID and ResourceNodeName are optional and values in these parameters will be ignored.&lt;/br&gt;&lt;br&gt;  Due date needs to be greater than Start Date&lt;/br&gt;&lt;br&gt;  Valid value for MasteryTestAttempts is between 0 and 10. Zero value translates to Unlimited Mastery test Attempts&lt;/br&gt;&lt;br&gt;  SelfEnrollPassword min length is 4 characters  &lt;/br&gt; | 

### Return type

[**EdApiModelsClass**](EdApiModelsClass.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **programs_controller_get_program_class**
> EdApiModelsClass programs_controller_get_program_class(program_id, class_id)

Get a Courseware classes in a Courseware program by classId.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

program_id = 56 # Integer | The ID of the program.

class_id = 56 # Integer | The ID of the class.

begin
  #Get a Courseware classes in a Courseware program by classId.
  result = api_instance.programs_controller_get_program_class(program_id, class_id)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->programs_controller_get_program_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **program_id** | **Integer**| The ID of the program. | 
 **class_id** | **Integer**| The ID of the class. | 

### Return type

[**EdApiModelsClass**](EdApiModelsClass.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **programs_controller_get_program_classes**
> EdApiPageableResultsWithCountEdApiModelsClass programs_controller_get_program_classes(programid, pagesize, opts)

Get a list of Courseware classes in a Courseware program.

<ul>    <li>This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.</li>    <li>$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.</li>    <li>If no $skip is provided, the call will return the first page of the result set.</li>    <li>The next set of records can be obtained by making a request to the value of the \"Next\" field returned in the response.</li>  </ul>  <br>For example:</br>  <ul>    <li>?$pagesize=10000&amp;$skip=10000 - get results from 10000 - 19999 (next 10000 records).</li>    <li>\"Next\": \"/courseware/v2.0/programs/{programid}/classes?$pagesize=10000&amp;$skip=10000\"</li>  </ul>

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

programid = 56 # Integer | The ID of the program.

pagesize = 56 # Integer | 

opts = {
  skip: 56, # Integer | 
  name: 'name_example', # String | An optional class name to filter by.
  after_start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Get a list of Courseware classes in a Courseware program.
  result = api_instance.programs_controller_get_program_classes(programid, pagesize, opts)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->programs_controller_get_program_classes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programid** | **Integer**| The ID of the program. | 
 **pagesize** | **Integer**|  | 
 **skip** | **Integer**|  | [optional] 
 **name** | **String**| An optional class name to filter by. | [optional] 
 **after_start_date** | **DateTime**|  | [optional] 

### Return type

[**EdApiPageableResultsWithCountEdApiModelsClass**](EdApiPageableResultsWithCountEdApiModelsClass.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **programs_controller_get_program_classes_with_user_ids**
> EdApiPageableResultsWithCountEdApiModelsClassDetail programs_controller_get_program_classes_with_user_ids(programid, pagesize, opts)

Gets a list of Courseware Classes (plus additional details) in a Courseware program.

<br>This is very similar to GET /courseware/v2.0/programs/{programid}/classes,               except that each class contains lists of UserIds for enrolled Teachers and Learners.  </br>  <ul>    <li>This dataset can be quite large so result sets are paged using $pagesize and $skip parameters.</li>    <li>$pagesize represents the number of results to return in a request, with a maximum $pagesize of 10000.</li>    <li>If no $skip is provided, the call will return the first page of the result set.</li>    <li>The next set of records can be obtained by making a request to the value of the \"Next\" field returned in the response.</li>  </ul>  <br>For example:</br>  <ul>    <li>?$pagesize=10000&amp;$skip=10000 - get results from 10000 - 19999 (next 10000 records).</li>    <li>\"Next\": \"/courseware/v2.0/programs/{programid}/classdetails?$pagesize=10000&amp;$skip=10000\"</li>  </ul>

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

programid = 56 # Integer | The ID of the program.

pagesize = 56 # Integer | 

opts = {
  skip: 56, # Integer | 
  after_start_date: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | 
}

begin
  #Gets a list of Courseware Classes (plus additional details) in a Courseware program.
  result = api_instance.programs_controller_get_program_classes_with_user_ids(programid, pagesize, opts)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->programs_controller_get_program_classes_with_user_ids: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **programid** | **Integer**| The ID of the program. | 
 **pagesize** | **Integer**|  | 
 **skip** | **Integer**|  | [optional] 
 **after_start_date** | **DateTime**|  | [optional] 

### Return type

[**EdApiPageableResultsWithCountEdApiModelsClassDetail**](EdApiPageableResultsWithCountEdApiModelsClassDetail.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **resource_nodes_controller_get_nodes**
> EdApiModelsResultsWithCountEdApiModelsResourceNode resource_nodes_controller_get_nodes

Get a list of top level resource nodes for Plato and Custom Courses. Immediate children not returned.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

begin
  #Get a list of top level resource nodes for Plato and Custom Courses. Immediate children not returned.
  result = api_instance.resource_nodes_controller_get_nodes
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->resource_nodes_controller_get_nodes: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EdApiModelsResultsWithCountEdApiModelsResourceNode**](EdApiModelsResultsWithCountEdApiModelsResourceNode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **resource_nodes_controller_get_single_node**
> EdApiModelsResourceNode resource_nodes_controller_get_single_node(resourcenodeid)

Get the list of immediate children of resourceNodeId provided.

### Example

```ruby
# load the gem
require 'edmentum_client'

api_instance = EdmentumClient::V20CoursewareApi.new

resourcenodeid = 56 # Integer | 

begin
  #Get the list of immediate children of resourceNodeId provided.
  result = api_instance.resource_nodes_controller_get_single_node(resourcenodeid)
  p result
rescue EdmentumClient::ApiError => e
  puts "Exception when calling V20CoursewareApi->resource_nodes_controller_get_single_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourcenodeid** | **Integer**|  | 

### Return type

[**EdApiModelsResourceNode**](EdApiModelsResourceNode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



