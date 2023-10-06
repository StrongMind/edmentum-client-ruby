# SwaggerClient::V20ExactPathApi

All URIs are relative to *https://app.edmentum.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classes_controller_create_exact_path_class**](V20ExactPathApi.md#classes_controller_create_exact_path_class) | **POST** /exactpath/v2.0/classes | Create a new Exact Path Class
[**classes_controller_delete_exact_path_class**](V20ExactPathApi.md#classes_controller_delete_exact_path_class) | **DELETE** /exactpath/v2.0/classes/{classId} | Delete a Exact Path Class by Class ID
[**classes_controller_enroll_learner_in_class**](V20ExactPathApi.md#classes_controller_enroll_learner_in_class) | **POST** /exactpath/v2.0/classes/{classId}/user/{learnerId} | Enroll learner into Exact Path Class
[**classes_controller_get_exact_path_class**](V20ExactPathApi.md#classes_controller_get_exact_path_class) | **GET** /exactpath/v2.0/classes/{classId} | Get a Exact Path Class by Class ID
[**classes_controller_get_exact_path_class_learners**](V20ExactPathApi.md#classes_controller_get_exact_path_class_learners) | **GET** /exactpath/v2.0/classes/{classId}/learners | Get a simplified data set of learners enrolled in an Exact Path Class by Class ID.
[**classes_controller_get_time_spent_in_learning_path**](V20ExactPathApi.md#classes_controller_get_time_spent_in_learning_path) | **PUT** /exactpath/v2.0/classes/{classId}/learningpathprogress | Get the learning path progress report for a subject by date range for the current academic year.
[**classes_controller_remove_learner_from_class**](V20ExactPathApi.md#classes_controller_remove_learner_from_class) | **DELETE** /exactpath/v2.0/classes/{classId}/user/{learnerId} | Remove a learner from a Exact Path Class
[**classes_controller_update_exact_path_class**](V20ExactPathApi.md#classes_controller_update_exact_path_class) | **PUT** /exactpath/v2.0/classes | Update Exact Path Class


# **classes_controller_create_exact_path_class**
> EdApiModelsExactPathClass classes_controller_create_exact_path_class(model)

Create a new Exact Path Class

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20ExactPathApi.new

model = SwaggerClient::EdApiModelsExactPathClass.new # EdApiModelsExactPathClass | The model for the class to be created.              <br />ClassGrade, ClassExpirationDate, CloseoutReminderDate and Location are optional.              <br />AllowSelfEnrollment is optional and will default to false.              <br />Program ID is ignored during class creation              <br />At least one instructor ID is required.              <br />Learners are optional.


begin
  #Create a new Exact Path Class
  result = api_instance.classes_controller_create_exact_path_class(model)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20ExactPathApi->classes_controller_create_exact_path_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**EdApiModelsExactPathClass**](EdApiModelsExactPathClass.md)| The model for the class to be created.              &lt;br /&gt;ClassGrade, ClassExpirationDate, CloseoutReminderDate and Location are optional.              &lt;br /&gt;AllowSelfEnrollment is optional and will default to false.              &lt;br /&gt;Program ID is ignored during class creation              &lt;br /&gt;At least one instructor ID is required.              &lt;br /&gt;Learners are optional. | 

### Return type

[**EdApiModelsExactPathClass**](EdApiModelsExactPathClass.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **classes_controller_delete_exact_path_class**
> String classes_controller_delete_exact_path_class(class_id)

Delete a Exact Path Class by Class ID

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20ExactPathApi.new

class_id = 56 # Integer | The id of the class to delete.  If class has active assignments, the class will be archived.


begin
  #Delete a Exact Path Class by Class ID
  result = api_instance.classes_controller_delete_exact_path_class(class_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20ExactPathApi->classes_controller_delete_exact_path_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_id** | **Integer**| The id of the class to delete.  If class has active assignments, the class will be archived. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_enroll_learner_in_class**
> String classes_controller_enroll_learner_in_class(class_id, learner_id)

Enroll learner into Exact Path Class

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20ExactPathApi.new

class_id = 56 # Integer | The id of the class to add the learner.

learner_id = 56 # Integer | The user ID of the learner to enroll in the class.


begin
  #Enroll learner into Exact Path Class
  result = api_instance.classes_controller_enroll_learner_in_class(class_id, learner_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20ExactPathApi->classes_controller_enroll_learner_in_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_id** | **Integer**| The id of the class to add the learner. | 
 **learner_id** | **Integer**| The user ID of the learner to enroll in the class. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_exact_path_class**
> EdApiModelsExactPathClass classes_controller_get_exact_path_class(class_id)

Get a Exact Path Class by Class ID

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20ExactPathApi.new

class_id = 56 # Integer | The id of the class to retrieve.


begin
  #Get a Exact Path Class by Class ID
  result = api_instance.classes_controller_get_exact_path_class(class_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20ExactPathApi->classes_controller_get_exact_path_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_id** | **Integer**| The id of the class to retrieve. | 

### Return type

[**EdApiModelsExactPathClass**](EdApiModelsExactPathClass.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_exact_path_class_learners**
> Array&lt;EdApiModelsExactPathClassLearner&gt; classes_controller_get_exact_path_class_learners(class_id)

Get a simplified data set of learners enrolled in an Exact Path Class by Class ID.

<ul>    <li>Gender can be 0 (male) or 1 (female).</li>    <li>Grade is 0-15 with 0 being kindergarten and 13-15 adult values that are invalid for learners.</li>    <li>Birth date is date only so will always be 0's for time.</li>  </ul>

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20ExactPathApi.new

class_id = 56 # Integer | The Class ID


begin
  #Get a simplified data set of learners enrolled in an Exact Path Class by Class ID.
  result = api_instance.classes_controller_get_exact_path_class_learners(class_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20ExactPathApi->classes_controller_get_exact_path_class_learners: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_id** | **Integer**| The Class ID | 

### Return type

[**Array&lt;EdApiModelsExactPathClassLearner&gt;**](EdApiModelsExactPathClassLearner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_get_time_spent_in_learning_path**
> EdApiModelsExactPathLearningPathProgressReport classes_controller_get_time_spent_in_learning_path(class_id, model)

Get the learning path progress report for a subject by date range for the current academic year.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20ExactPathApi.new

class_id = 56 # Integer | The Class ID

model = SwaggerClient::EdApiModelsExactPathLearningPathProgressReportQuery.new # EdApiModelsExactPathLearningPathProgressReportQuery | The query model for the report containing the ID for the subject (Valid entries are: 5 = Math, 4 = Language Arts, 15 = Reading.),              <br />the starting date for the report results and the the end date for the range of results.


begin
  #Get the learning path progress report for a subject by date range for the current academic year.
  result = api_instance.classes_controller_get_time_spent_in_learning_path(class_id, model)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20ExactPathApi->classes_controller_get_time_spent_in_learning_path: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_id** | **Integer**| The Class ID | 
 **model** | [**EdApiModelsExactPathLearningPathProgressReportQuery**](EdApiModelsExactPathLearningPathProgressReportQuery.md)| The query model for the report containing the ID for the subject (Valid entries are: 5 &#x3D; Math, 4 &#x3D; Language Arts, 15 &#x3D; Reading.),              &lt;br /&gt;the starting date for the report results and the the end date for the range of results. | 

### Return type

[**EdApiModelsExactPathLearningPathProgressReport**](EdApiModelsExactPathLearningPathProgressReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



# **classes_controller_remove_learner_from_class**
> String classes_controller_remove_learner_from_class(class_id, learner_id)

Remove a learner from a Exact Path Class

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20ExactPathApi.new

class_id = 56 # Integer | The id of the class.

learner_id = 56 # Integer | The user ID of the learner to remove from the class.


begin
  #Remove a learner from a Exact Path Class
  result = api_instance.classes_controller_remove_learner_from_class(class_id, learner_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20ExactPathApi->classes_controller_remove_learner_from_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_id** | **Integer**| The id of the class. | 
 **learner_id** | **Integer**| The user ID of the learner to remove from the class. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json



# **classes_controller_update_exact_path_class**
> EdApiModelsExactPathClass classes_controller_update_exact_path_class(model)

Update Exact Path Class

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::V20ExactPathApi.new

model = SwaggerClient::EdApiModelsExactPathClass.new # EdApiModelsExactPathClass | The model for the class to be created.              <br />ClassId is required.              <br />ClassGrade, ClassExpirationDate, CloseoutReminderDate and Location are optional.              <br />AllowSelfEnrollment is optional and will default to false.              <br />Program ID is ignored during class creation              <br />At least one instructor ID is required.              <br />Learners are optional.


begin
  #Update Exact Path Class
  result = api_instance.classes_controller_update_exact_path_class(model)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling V20ExactPathApi->classes_controller_update_exact_path_class: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | [**EdApiModelsExactPathClass**](EdApiModelsExactPathClass.md)| The model for the class to be created.              &lt;br /&gt;ClassId is required.              &lt;br /&gt;ClassGrade, ClassExpirationDate, CloseoutReminderDate and Location are optional.              &lt;br /&gt;AllowSelfEnrollment is optional and will default to false.              &lt;br /&gt;Program ID is ignored during class creation              &lt;br /&gt;At least one instructor ID is required.              &lt;br /&gt;Learners are optional. | 

### Return type

[**EdApiModelsExactPathClass**](EdApiModelsExactPathClass.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json



