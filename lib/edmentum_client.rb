=begin
#Edmentum Web API - v2.0

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.33

=end

# Common files
require 'edmentum_client/api_client'
require 'edmentum_client/api_error'
require 'edmentum_client/version'
require 'edmentum_client/configuration'

# Models
require 'edmentum_client/models/ed_api_models_activity'
require 'edmentum_client/models/ed_api_models_activity_progress'
require 'edmentum_client/models/ed_api_models_activity_score'
require 'edmentum_client/models/ed_api_models_activity_time_on_task'
require 'edmentum_client/models/ed_api_models_class'
require 'edmentum_client/models/ed_api_models_class_detail'
require 'edmentum_client/models/ed_api_models_class_status'
require 'edmentum_client/models/ed_api_models_class_transfer'
require 'edmentum_client/models/ed_api_models_class_user_status'
require 'edmentum_client/models/ed_api_models_courseware_class_learner_grade'
require 'edmentum_client/models/ed_api_models_create_user'
require 'edmentum_client/models/ed_api_models_exact_path_class'
require 'edmentum_client/models/ed_api_models_exact_path_class_learner'
require 'edmentum_client/models/ed_api_models_exact_path_learning_path_progress_report'
require 'edmentum_client/models/ed_api_models_exact_path_learning_path_progress_report_query'
require 'edmentum_client/models/ed_api_models_family_contact_learner'
require 'edmentum_client/models/ed_api_models_family_contact_learner_create'
require 'edmentum_client/models/ed_api_models_family_contact_password'
require 'edmentum_client/models/ed_api_models_learning_path_progress_row'
require 'edmentum_client/models/ed_api_models_location'
require 'edmentum_client/models/ed_api_models_location_structure'
require 'edmentum_client/models/ed_api_models_message'
require 'edmentum_client/models/ed_api_models_password'
require 'edmentum_client/models/ed_api_models_program'
require 'edmentum_client/models/ed_api_models_program_alert_summary'
require 'edmentum_client/models/ed_api_models_resource_node'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_activity'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_activity_progress'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_activity_score'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_activity_time_on_task'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_courseware_class_learner_grade'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_family_contact_learner'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_location'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_program'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_resource_node'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_user_class_assignment'
require 'edmentum_client/models/ed_api_models_results_with_count_ed_api_models_user_program_alert_summary'
require 'edmentum_client/models/ed_api_models_user'
require 'edmentum_client/models/ed_api_models_user_class_assignment'
require 'edmentum_client/models/ed_api_models_user_program_alert_summary'
require 'edmentum_client/models/ed_api_pageable_results_with_count_ed_api_models_class'
require 'edmentum_client/models/ed_api_pageable_results_with_count_ed_api_models_class_detail'
require 'edmentum_client/models/ed_api_pageable_results_with_count_ed_api_models_message'
require 'edmentum_client/models/ed_api_pageable_results_with_count_ed_api_models_user'
require 'edmentum_client/models/ed_api_pageable_results_with_count_ed_core_domain_reporting_user_time_on_system'
require 'edmentum_client/models/ed_core_domain_reporting_user_time_on_system'
require 'edmentum_client/models/ed_personalized_learning_domain_locations_location'

# APIs
require 'edmentum_client/api/v20_administration_center_api'
require 'edmentum_client/api/v20_courseware_api'
require 'edmentum_client/api/v20_exact_path_api'

module EdmentumClient
  class << self
    # Customize default settings for the SDK using block.
    #   EdmentumClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end