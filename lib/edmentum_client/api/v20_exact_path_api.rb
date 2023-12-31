=begin
#Edmentum Web API - v2.0

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.33

=end

require 'uri'

module EdmentumClient
  class V20ExactPathApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new Exact Path Class
    # @param model The model for the class to be created.              &lt;br /&gt;ClassGrade, ClassExpirationDate, CloseoutReminderDate and Location are optional.              &lt;br /&gt;AllowSelfEnrollment is optional and will default to false.              &lt;br /&gt;Program ID is ignored during class creation              &lt;br /&gt;At least one instructor ID is required.              &lt;br /&gt;Learners are optional.
    # @param [Hash] opts the optional parameters
    # @return [EdApiModelsExactPathClass]
    def classes_controller_create_exact_path_class(model, opts = {})
      data, _status_code, _headers = classes_controller_create_exact_path_class_with_http_info(model, opts)
      data
    end

    # Create a new Exact Path Class
    # @param model The model for the class to be created.              &lt;br /&gt;ClassGrade, ClassExpirationDate, CloseoutReminderDate and Location are optional.              &lt;br /&gt;AllowSelfEnrollment is optional and will default to false.              &lt;br /&gt;Program ID is ignored during class creation              &lt;br /&gt;At least one instructor ID is required.              &lt;br /&gt;Learners are optional.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdApiModelsExactPathClass, Fixnum, Hash)>] EdApiModelsExactPathClass data, response status code and response headers
    def classes_controller_create_exact_path_class_with_http_info(model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V20ExactPathApi.classes_controller_create_exact_path_class ...'
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling V20ExactPathApi.classes_controller_create_exact_path_class"
      end
      # resource path
      local_var_path = '/exactpath/v2.0/classes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(model)
      auth_names = opts[:auth_names] || ["Oauth2_Access_Token"]
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EdApiModelsExactPathClass')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V20ExactPathApi#classes_controller_create_exact_path_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Exact Path Class by Class ID
    # @param class_id The id of the class to delete.  If class has active assignments, the class will be archived.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def classes_controller_delete_exact_path_class(class_id, opts = {})
      data, _status_code, _headers = classes_controller_delete_exact_path_class_with_http_info(class_id, opts)
      data
    end

    # Delete a Exact Path Class by Class ID
    # @param class_id The id of the class to delete.  If class has active assignments, the class will be archived.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def classes_controller_delete_exact_path_class_with_http_info(class_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V20ExactPathApi.classes_controller_delete_exact_path_class ...'
      end
      # verify the required parameter 'class_id' is set
      if @api_client.config.client_side_validation && class_id.nil?
        fail ArgumentError, "Missing the required parameter 'class_id' when calling V20ExactPathApi.classes_controller_delete_exact_path_class"
      end
      # resource path
      local_var_path = '/exactpath/v2.0/classes/{classId}'.sub('{' + 'classId' + '}', class_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = opts[:auth_names] || ["Oauth2_Access_Token"]
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V20ExactPathApi#classes_controller_delete_exact_path_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Enroll learner into Exact Path Class
    # @param class_id The id of the class to add the learner.
    # @param learner_id The user ID of the learner to enroll in the class.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def classes_controller_enroll_learner_in_class(class_id, learner_id, opts = {})
      data, _status_code, _headers = classes_controller_enroll_learner_in_class_with_http_info(class_id, learner_id, opts)
      data
    end

    # Enroll learner into Exact Path Class
    # @param class_id The id of the class to add the learner.
    # @param learner_id The user ID of the learner to enroll in the class.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def classes_controller_enroll_learner_in_class_with_http_info(class_id, learner_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V20ExactPathApi.classes_controller_enroll_learner_in_class ...'
      end
      # verify the required parameter 'class_id' is set
      if @api_client.config.client_side_validation && class_id.nil?
        fail ArgumentError, "Missing the required parameter 'class_id' when calling V20ExactPathApi.classes_controller_enroll_learner_in_class"
      end
      # verify the required parameter 'learner_id' is set
      if @api_client.config.client_side_validation && learner_id.nil?
        fail ArgumentError, "Missing the required parameter 'learner_id' when calling V20ExactPathApi.classes_controller_enroll_learner_in_class"
      end
      # resource path
      local_var_path = '/exactpath/v2.0/classes/{classId}/user/{learnerId}'.sub('{' + 'classId' + '}', class_id.to_s).sub('{' + 'learnerId' + '}', learner_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = opts[:auth_names] || ["Oauth2_Access_Token"]
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V20ExactPathApi#classes_controller_enroll_learner_in_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a Exact Path Class by Class ID
    # @param class_id The id of the class to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [EdApiModelsExactPathClass]
    def classes_controller_get_exact_path_class(class_id, opts = {})
      data, _status_code, _headers = classes_controller_get_exact_path_class_with_http_info(class_id, opts)
      data
    end

    # Get a Exact Path Class by Class ID
    # @param class_id The id of the class to retrieve.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdApiModelsExactPathClass, Fixnum, Hash)>] EdApiModelsExactPathClass data, response status code and response headers
    def classes_controller_get_exact_path_class_with_http_info(class_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V20ExactPathApi.classes_controller_get_exact_path_class ...'
      end
      # verify the required parameter 'class_id' is set
      if @api_client.config.client_side_validation && class_id.nil?
        fail ArgumentError, "Missing the required parameter 'class_id' when calling V20ExactPathApi.classes_controller_get_exact_path_class"
      end
      # resource path
      local_var_path = '/exactpath/v2.0/classes/{classId}'.sub('{' + 'classId' + '}', class_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = opts[:auth_names] || ["Oauth2_Access_Token"]
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EdApiModelsExactPathClass')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V20ExactPathApi#classes_controller_get_exact_path_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a simplified data set of learners enrolled in an Exact Path Class by Class ID.
    # <ul>    <li>Gender can be 0 (male) or 1 (female).</li>    <li>Grade is 0-15 with 0 being kindergarten and 13-15 adult values that are invalid for learners.</li>    <li>Birth date is date only so will always be 0's for time.</li>  </ul>
    # @param class_id The Class ID
    # @param [Hash] opts the optional parameters
    # @return [Array<EdApiModelsExactPathClassLearner>]
    def classes_controller_get_exact_path_class_learners(class_id, opts = {})
      data, _status_code, _headers = classes_controller_get_exact_path_class_learners_with_http_info(class_id, opts)
      data
    end

    # Get a simplified data set of learners enrolled in an Exact Path Class by Class ID.
    # &lt;ul&gt;    &lt;li&gt;Gender can be 0 (male) or 1 (female).&lt;/li&gt;    &lt;li&gt;Grade is 0-15 with 0 being kindergarten and 13-15 adult values that are invalid for learners.&lt;/li&gt;    &lt;li&gt;Birth date is date only so will always be 0&#39;s for time.&lt;/li&gt;  &lt;/ul&gt;
    # @param class_id The Class ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<EdApiModelsExactPathClassLearner>, Fixnum, Hash)>] Array<EdApiModelsExactPathClassLearner> data, response status code and response headers
    def classes_controller_get_exact_path_class_learners_with_http_info(class_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V20ExactPathApi.classes_controller_get_exact_path_class_learners ...'
      end
      # verify the required parameter 'class_id' is set
      if @api_client.config.client_side_validation && class_id.nil?
        fail ArgumentError, "Missing the required parameter 'class_id' when calling V20ExactPathApi.classes_controller_get_exact_path_class_learners"
      end
      # resource path
      local_var_path = '/exactpath/v2.0/classes/{classId}/learners'.sub('{' + 'classId' + '}', class_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = opts[:auth_names] || ["Oauth2_Access_Token"]
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<EdApiModelsExactPathClassLearner>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V20ExactPathApi#classes_controller_get_exact_path_class_learners\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the learning path progress report for a subject by date range for the current academic year.
    # @param class_id The Class ID
    # @param model The query model for the report containing the ID for the subject (Valid entries are: 5 &#x3D; Math, 4 &#x3D; Language Arts, 15 &#x3D; Reading.),              &lt;br /&gt;the starting date for the report results and the the end date for the range of results.
    # @param [Hash] opts the optional parameters
    # @return [EdApiModelsExactPathLearningPathProgressReport]
    def classes_controller_get_time_spent_in_learning_path(class_id, model, opts = {})
      data, _status_code, _headers = classes_controller_get_time_spent_in_learning_path_with_http_info(class_id, model, opts)
      data
    end

    # Get the learning path progress report for a subject by date range for the current academic year.
    # @param class_id The Class ID
    # @param model The query model for the report containing the ID for the subject (Valid entries are: 5 &#x3D; Math, 4 &#x3D; Language Arts, 15 &#x3D; Reading.),              &lt;br /&gt;the starting date for the report results and the the end date for the range of results.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdApiModelsExactPathLearningPathProgressReport, Fixnum, Hash)>] EdApiModelsExactPathLearningPathProgressReport data, response status code and response headers
    def classes_controller_get_time_spent_in_learning_path_with_http_info(class_id, model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V20ExactPathApi.classes_controller_get_time_spent_in_learning_path ...'
      end
      # verify the required parameter 'class_id' is set
      if @api_client.config.client_side_validation && class_id.nil?
        fail ArgumentError, "Missing the required parameter 'class_id' when calling V20ExactPathApi.classes_controller_get_time_spent_in_learning_path"
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling V20ExactPathApi.classes_controller_get_time_spent_in_learning_path"
      end
      # resource path
      local_var_path = '/exactpath/v2.0/classes/{classId}/learningpathprogress'.sub('{' + 'classId' + '}', class_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(model)
      auth_names = opts[:auth_names] || ["Oauth2_Access_Token"]
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EdApiModelsExactPathLearningPathProgressReport')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V20ExactPathApi#classes_controller_get_time_spent_in_learning_path\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove a learner from a Exact Path Class
    # @param class_id The id of the class.
    # @param learner_id The user ID of the learner to remove from the class.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def classes_controller_remove_learner_from_class(class_id, learner_id, opts = {})
      data, _status_code, _headers = classes_controller_remove_learner_from_class_with_http_info(class_id, learner_id, opts)
      data
    end

    # Remove a learner from a Exact Path Class
    # @param class_id The id of the class.
    # @param learner_id The user ID of the learner to remove from the class.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def classes_controller_remove_learner_from_class_with_http_info(class_id, learner_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V20ExactPathApi.classes_controller_remove_learner_from_class ...'
      end
      # verify the required parameter 'class_id' is set
      if @api_client.config.client_side_validation && class_id.nil?
        fail ArgumentError, "Missing the required parameter 'class_id' when calling V20ExactPathApi.classes_controller_remove_learner_from_class"
      end
      # verify the required parameter 'learner_id' is set
      if @api_client.config.client_side_validation && learner_id.nil?
        fail ArgumentError, "Missing the required parameter 'learner_id' when calling V20ExactPathApi.classes_controller_remove_learner_from_class"
      end
      # resource path
      local_var_path = '/exactpath/v2.0/classes/{classId}/user/{learnerId}'.sub('{' + 'classId' + '}', class_id.to_s).sub('{' + 'learnerId' + '}', learner_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = opts[:auth_names] || ["Oauth2_Access_Token"]
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V20ExactPathApi#classes_controller_remove_learner_from_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update Exact Path Class
    # @param model The model for the class to be created.              &lt;br /&gt;ClassId is required.              &lt;br /&gt;ClassGrade, ClassExpirationDate, CloseoutReminderDate and Location are optional.              &lt;br /&gt;AllowSelfEnrollment is optional and will default to false.              &lt;br /&gt;Program ID is ignored during class creation              &lt;br /&gt;At least one instructor ID is required.              &lt;br /&gt;Learners are optional.
    # @param [Hash] opts the optional parameters
    # @return [EdApiModelsExactPathClass]
    def classes_controller_update_exact_path_class(model, opts = {})
      data, _status_code, _headers = classes_controller_update_exact_path_class_with_http_info(model, opts)
      data
    end

    # Update Exact Path Class
    # @param model The model for the class to be created.              &lt;br /&gt;ClassId is required.              &lt;br /&gt;ClassGrade, ClassExpirationDate, CloseoutReminderDate and Location are optional.              &lt;br /&gt;AllowSelfEnrollment is optional and will default to false.              &lt;br /&gt;Program ID is ignored during class creation              &lt;br /&gt;At least one instructor ID is required.              &lt;br /&gt;Learners are optional.
    # @param [Hash] opts the optional parameters
    # @return [Array<(EdApiModelsExactPathClass, Fixnum, Hash)>] EdApiModelsExactPathClass data, response status code and response headers
    def classes_controller_update_exact_path_class_with_http_info(model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: V20ExactPathApi.classes_controller_update_exact_path_class ...'
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling V20ExactPathApi.classes_controller_update_exact_path_class"
      end
      # resource path
      local_var_path = '/exactpath/v2.0/classes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(model)
      auth_names = opts[:auth_names] || ["Oauth2_Access_Token"]
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'EdApiModelsExactPathClass')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: V20ExactPathApi#classes_controller_update_exact_path_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
