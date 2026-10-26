# frozen_string_literal: true

# This is generated code!

module Aws::Resiliencehubv2
  # This module contains the types returned by client operations.
  module Types

    # <p>Access denied — caller lacks required permissions.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the achievability status of a service's resilience targets based on the most recent assessment.</p>
    # @!attribute availability_slo
    #   <p>The achievability status of the availability SLO target for the service.</p>
    #   @return [String]
    # @!attribute multi_az_rto_rpo
    #   <p>The achievability status of the multi-AZ RTO and RPO targets for the service.</p>
    #   @return [String]
    # @!attribute multi_region_rto_rpo
    #   <p>The achievability status of the multi-Region RTO and RPO targets for the service.</p>
    #   @return [String]
    # @!attribute data_recovery_time_between_backups
    #   <p>The achievability status of the data recovery time between backups for the service.</p>
    #   @return [String]
    class Achievability < Struct.new(
      nil,
      :availability_slo,
      :multi_az_rto_rpo,
      :multi_region_rto_rpo,
      :data_recovery_time_between_backups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a CloudWatch alarm state change observed during a test run.</p>
    # @!attribute state
    #   <p>The state the alarm transitioned to.</p>
    #   @return [String]
    # @!attribute previous_state
    #   <p>The state the alarm transitioned from. Absent on the initial event, which records the alarm's state when collection began.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A human-readable explanation of the state change, as reported by CloudWatch.</p>
    #   @return [String]
    class AlarmStateChangeDetail < Struct.new(
      nil,
      :state,
      :previous_state,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a resilience assertion for a service.</p>
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute assertion_id
    #   <p>The unique identifier of the assertion.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text content of the assertion.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the assertion, indicating whether it was AI-generated or created by a user.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the assertion was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the assertion was last updated.</p>
    #   @return [Time]
    class Assertion < Struct.new(
      nil,
      :service_arn,
      :assertion_id,
      :text,
      :source,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for an assertion created event.</p>
    # @!attribute assertion_id
    #   <p>The unique identifier of the created assertion.</p>
    #   @return [String]
    # @!attribute assertion_name
    #   <p>The name of the created assertion.</p>
    #   @return [String]
    class AssertionCreatedMetadata < Struct.new(
      nil,
      :assertion_id,
      :assertion_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for an assertion deleted event.</p>
    # @!attribute assertion_id
    #   <p>The unique identifier of the deleted assertion.</p>
    #   @return [String]
    # @!attribute assertion_name
    #   <p>The name of the deleted assertion.</p>
    #   @return [String]
    class AssertionDeletedMetadata < Struct.new(
      nil,
      :assertion_id,
      :assertion_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for an assertion updated event.</p>
    # @!attribute assertion_id
    #   <p>The unique identifier of the updated assertion.</p>
    #   @return [String]
    # @!attribute assertion_name
    #   <p>The name of the updated assertion.</p>
    #   @return [String]
    class AssertionUpdatedMetadata < Struct.new(
      nil,
      :assertion_id,
      :assertion_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the cost of running a failure mode assessment.</p>
    # @!attribute amount
    #   <p>The cost amount for the assessment.</p>
    #   @return [Float]
    # @!attribute currency
    #   <p>The currency of the assessment cost.</p>
    #   @return [String]
    class AssessmentCost < Struct.new(
      nil,
      :amount,
      :currency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a failure mode assessment.</p>
    # @!attribute assessment_id
    #   <p>The unique identifier of the assessment.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute assessment_status
    #   <p>The current status of the assessment.</p>
    #   @return [String]
    # @!attribute assessment_step
    #   <p>The current step of the assessment process.</p>
    #   @return [String]
    # @!attribute total_findings
    #   <p>The total number of findings generated by the assessment.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The timestamp when the assessment started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the assessment ended.</p>
    #   @return [Time]
    # @!attribute error_message
    #   <p>A message describing the error if the assessment failed.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code if the assessment failed.</p>
    #   @return [String]
    # @!attribute assessment_cost
    #   <p>The cost of the assessment.</p>
    #   @return [Types::AssessmentCost]
    # @!attribute billable_assessment_unit_count
    #   <p>The number of billable assessment units consumed by the assessment.</p>
    #   @return [Integer]
    # @!attribute achievability
    #   <p>The achievability results from the assessment.</p>
    #   @return [Types::Achievability]
    class AssessmentSummary < Struct.new(
      nil,
      :assessment_id,
      :service_arn,
      :assessment_status,
      :assessment_step,
      :total_findings,
      :started_at,
      :ended_at,
      :error_message,
      :error_code,
      :assessment_cost,
      :billable_assessment_unit_count,
      :achievability,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a system associated with a service.</p>
    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute system_name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute user_journey_ids
    #   <p>The list of user journey identifiers that associate this system with the service.</p>
    #   @return [Array<String>]
    class AssociatedSystem < Struct.new(
      nil,
      :system_arn,
      :system_name,
      :user_journey_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the availability service level objective (SLO) for a resilience policy.</p>
    # @!attribute target
    #   <p>The target availability percentage, expressed as a value between 0 and 100.</p>
    #   @return [Float]
    class AvailabilitySlo < Struct.new(
      nil,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Conflict — resource already exists.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text content of the assertion.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateAssertionRequest < Struct.new(
      nil,
      :service_arn,
      :text,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assertion
    #   <p>The created assertion.</p>
    #   @return [Types::Assertion]
    class CreateAssertionResponse < Struct.new(
      nil,
      :assertion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute resource_configuration
    #   <p>Resource configuration for an input source. Provide exactly one field.</p>
    #   @return [Types::ResourceConfiguration]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateInputSourceRequest < Struct.new(
      nil,
      :service_arn,
      :resource_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute input_source_id
    #   <p>The unique identifier assigned to the created input source.</p>
    #   @return [String]
    class CreateInputSourceResponse < Struct.new(
      nil,
      :service_arn,
      :input_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description for services and policies.</p>
    #   @return [String]
    # @!attribute availability_slo
    #   <p>The availability SLO for the resilience policy.</p>
    #   @return [Types::AvailabilitySlo]
    # @!attribute multi_az
    #   <p>The multi-AZ disaster recovery targets for the resilience policy.</p>
    #   @return [Types::MultiAzTargets]
    # @!attribute multi_region
    #   <p>The multi-Region disaster recovery targets for the resilience policy.</p>
    #   @return [Types::MultiRegionTargets]
    # @!attribute data_recovery
    #   <p>The data recovery targets for the resilience policy.</p>
    #   @return [Types::DataRecoveryTargets]
    # @!attribute sharing_enabled
    #   <p>Specifies whether cross-account sharing is enabled for the policy. Only a delegated administrator or the management account can enable sharing.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreatePolicyRequest < Struct.new(
      nil,
      :name,
      :description,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery,
      :sharing_enabled,
      :kms_key_id,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The created resilience policy.</p>
    #   @return [Types::Policy]
    class CreatePolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute report_type
    #   <p>The type of report to generate.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateReportRequest < Struct.new(
      nil,
      :service_arn,
      :report_type,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_generation_result
    #   <p>The result of the report generation request.</p>
    #   @return [Types::ReportGenerationResult]
    class CreateReportResponse < Struct.new(
      nil,
      :report_generation_result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The criticality level of the service function.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateServiceFunctionRequest < Struct.new(
      nil,
      :name,
      :service_arn,
      :description,
      :criticality,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute service_function_id
    #   <p>The identifier of the service function to associate resources with.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The list of resources to associate with the service function.</p>
    #   @return [Array<String>]
    class CreateServiceFunctionResourcesRequest < Struct.new(
      nil,
      :service_arn,
      :service_function_id,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute service_function_id
    #   <p>The identifier of the service function.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The list of resources that were associated.</p>
    #   @return [Array<String>]
    class CreateServiceFunctionResourcesResponse < Struct.new(
      nil,
      :service_arn,
      :service_function_id,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_function
    #   <p>The created service function.</p>
    #   @return [Types::ServiceFunction]
    class CreateServiceFunctionResponse < Struct.new(
      nil,
      :service_function,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description for services and policies.</p>
    #   @return [String]
    # @!attribute associated_systems
    #   <p>The systems to associate with the service.</p>
    #   @return [Array<Types::AssociatedSystem>]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Regions where the service operates.</p>
    #   @return [Array<String>]
    # @!attribute permission_model
    #   <p>The permission model for the service.</p>
    #   @return [Types::PermissionModel]
    # @!attribute dependency_discovery
    #   <p>Caller-settable values for dependency discovery. INITIALIZING is system-managed.</p>
    #   @return [String]
    # @!attribute report_configuration
    #   <p>Configuration for automatic report generation on a Service.</p>
    #   @return [Types::ServiceReportConfiguration]
    # @!attribute kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute dev_ops_agent_configuration
    #   <p>The optional DevOps Agent integration configuration to apply to the new service. If you omit this field, the new service has no DevOps Agent integration.</p>
    #   @return [Types::DevOpsAgentConfiguration]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateServiceRequest < Struct.new(
      nil,
      :name,
      :description,
      :associated_systems,
      :policy_arn,
      :regions,
      :permission_model,
      :dependency_discovery,
      :report_configuration,
      :kms_key_id,
      :dev_ops_agent_configuration,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The created service.</p>
    #   @return [Types::Service]
    class CreateServiceResponse < Struct.new(
      nil,
      :service,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute sharing_enabled
    #   <p>Indicates whether cross-account sharing is enabled for the system.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateSystemRequest < Struct.new(
      nil,
      :name,
      :description,
      :sharing_enabled,
      :kms_key_id,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system
    #   <p>The created system.</p>
    #   @return [Types::System]
    class CreateSystemResponse < Struct.new(
      nil,
      :system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The ARN of the service to create the test for.</p>
    #   @return [String]
    # @!attribute test_template_arn
    #   <p>The ARN of the test template to configure.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The logging configuration for the test.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute stop_conditions
    #   <p>The stop conditions for the test.</p>
    #   @return [Array<Types::StopCondition>]
    # @!attribute role_name
    #   <p>The name of the IAM execution role to use when running the test.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameter values for the test.</p>
    #   @return [Hash<String, Array<String>>]
    class CreateTestRequest < Struct.new(
      nil,
      :service_arn,
      :test_template_arn,
      :logging_configuration,
      :stop_conditions,
      :role_name,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test
    #   <p>The created test.</p>
    #   @return [Types::Test]
    class CreateTestResponse < Struct.new(
      nil,
      :test,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class CreateUserJourneyRequest < Struct.new(
      nil,
      :system_arn,
      :name,
      :description,
      :policy_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_journey
    #   <p>The created user journey.</p>
    #   @return [Types::UserJourney]
    class CreateUserJourneyResponse < Struct.new(
      nil,
      :user_journey,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a cross-account IAM role ARN and optional external ID.</p>
    # @!attribute cross_account_role_arn
    #   <p>ARN of the IAM Role for the profile. Null if the permission profile is the 'Admin' profile.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID used for assuming the cross-account role.</p>
    #   @return [String]
    class CrossAccountRole < Struct.new(
      nil,
      :cross_account_role_arn,
      :external_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines data recovery targets for a resilience policy.</p>
    # @!attribute time_between_backups_in_minutes
    #   <p>The target time between backups, in minutes.</p>
    #   @return [Integer]
    class DataRecoveryTargets < Struct.new(
      nil,
      :time_between_backups_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute assertion_id
    #   <p>The unique identifier of the assertion to delete.</p>
    #   @return [String]
    class DeleteAssertionRequest < Struct.new(
      nil,
      :service_arn,
      :assertion_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assertion_id
    #   <p>The unique identifier of the deleted assertion.</p>
    #   @return [String]
    class DeleteAssertionResponse < Struct.new(
      nil,
      :assertion_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute input_source_id
    #   <p>The identifier of the input source to delete.</p>
    #   @return [String]
    class DeleteInputSourceRequest < Struct.new(
      nil,
      :service_arn,
      :input_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute input_source_id
    #   <p>The identifier of the deleted input source.</p>
    #   @return [String]
    class DeleteInputSourceResponse < Struct.new(
      nil,
      :service_arn,
      :input_source_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class DeletePolicyRequest < Struct.new(
      nil,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class DeletePolicyResponse < Struct.new(
      nil,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute service_function_id
    #   <p>The identifier of the service function to delete.</p>
    #   @return [String]
    class DeleteServiceFunctionRequest < Struct.new(
      nil,
      :service_arn,
      :service_function_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute service_function_id
    #   <p>The identifier of the service function to remove resources from.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The list of resources to remove from the service function.</p>
    #   @return [Array<String>]
    class DeleteServiceFunctionResourcesRequest < Struct.new(
      nil,
      :service_arn,
      :service_function_id,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute service_function_id
    #   <p>The identifier of the service function.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The list of resources that were removed.</p>
    #   @return [Array<String>]
    class DeleteServiceFunctionResourcesResponse < Struct.new(
      nil,
      :service_arn,
      :service_function_id,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_function_id
    #   <p>The identifier of the deleted service function.</p>
    #   @return [String]
    class DeleteServiceFunctionResponse < Struct.new(
      nil,
      :service_function_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class DeleteServiceRequest < Struct.new(
      nil,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class DeleteServiceResponse < Struct.new(
      nil,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class DeleteSystemRequest < Struct.new(
      nil,
      :system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class DeleteSystemResponse < Struct.new(
      nil,
      :system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_id
    #   <p>The identifier of the test to delete.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    class DeleteTestRequest < Struct.new(
      nil,
      :test_id,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_id
    #   <p>The identifier of the deleted test.</p>
    #   @return [String]
    class DeleteTestResponse < Struct.new(
      nil,
      :test_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_id
    #   <p>The identifier of the test to remove sources from.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    # @!attribute test_sources
    #   <p>The monitoring sources to remove.</p>
    #   @return [Array<Types::TestSourceInput>]
    class DeleteTestSourcesRequest < Struct.new(
      nil,
      :test_id,
      :service_arn,
      :test_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTestSourcesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute user_journey_id
    #   <p>The identifier of the user journey to delete.</p>
    #   @return [String]
    class DeleteUserJourneyRequest < Struct.new(
      nil,
      :system_arn,
      :user_journey_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_journey_id
    #   <p>The identifier of the deleted user journey.</p>
    #   @return [String]
    class DeleteUserJourneyResponse < Struct.new(
      nil,
      :user_journey_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for dependency discovery on a service.</p>
    # @!attribute status
    #   <p>The current status of dependency discovery.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when dependency discovery was last updated.</p>
    #   @return [Time]
    # @!attribute eligible_resource_count
    #   <p>The count of resources eligible for dependency attribution.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>A status message for dependency discovery, displayed during the initialization state.</p>
    #   @return [String]
    class DependencyDiscoveryConfig < Struct.new(
      nil,
      :status,
      :updated_at,
      :eligible_resource_count,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a single insight about a service's dependencies.</p>
    # @!attribute category
    #   <p>The category of the insight. Valid values:</p> <ul> <li> <p>CROSS_REGION - The insight relates to dependencies used across multiple Regions.</p> </li> <li> <p>NEW_DEPENDENCY - The insight relates to a recently detected dependency.</p> </li> <li> <p>THIRD_PARTY - The insight relates to a third-party dependency.</p> </li> <li> <p>UNEVEN_USAGE - The insight relates to a dependency with uneven usage across the service.</p> </li> <li> <p>AWS_SERVICE - The insight relates to a dependency on an Amazon Web Services service.</p> </li> </ul>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable explanation of the insight, describing the dependency behavior or condition that was detected.</p>
    #   @return [String]
    class DependencyInsight < Struct.new(
      nil,
      :category,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a discovered dependency.</p>
    # @!attribute dependency_id
    #   <p>The unique identifier of the dependency.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute dependency_name
    #   <p>The name of the dependency.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS name associated with the dependency.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the dependency.</p>
    #   @return [String]
    # @!attribute last_detected_time
    #   <p>The timestamp when the dependency was last detected.</p>
    #   @return [Time]
    # @!attribute source_regions
    #   <p>The source Regions from which the dependency was detected.</p>
    #   @return [Array<String>]
    # @!attribute provider
    #   <p>The provider of the dependency.</p>
    #   @return [String]
    # @!attribute query_range
    #   <p>The query range data for the dependency.</p>
    #   @return [Types::QueryRange]
    # @!attribute criticality
    #   <p>The criticality level of the dependency.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A user-provided comment about the dependency.</p>
    #   @return [String]
    class DependencySummary < Struct.new(
      nil,
      :dependency_id,
      :service_arn,
      :dependency_name,
      :dns_name,
      :location,
      :last_detected_time,
      :source_regions,
      :provider,
      :query_range,
      :criticality,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AWS DevOps Agent (DevOps Agent) integration configuration that you supply when creating or updating a service. Connecting a service to a DevOps Agent Agent Space lets DevOps Agent investigate the service's resilience test runs and attach its analysis to the results. Include this block with an Agent Space Amazon Resource Name (ARN) to connect or reconnect the service to an Agent Space. Include it without an Agent Space ARN to disconnect the service. Omit it to leave the existing linkage unchanged.</p>
    # @!attribute agent_space_arn
    #   <p>The ARN of the DevOps Agent Agent Space to link to this service.</p>
    #   @return [String]
    class DevOpsAgentConfiguration < Struct.new(
      nil,
      :agent_space_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current DevOps Agent integration state for a service. Read operations return this state.</p>
    # @!attribute agent_space_arn
    #   <p>The ARN of the linked DevOps Agent Agent Space.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The identifier of the linked DevOps Agent Agent Space.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The AWS Region of the linked DevOps Agent Agent Space.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The connection status of the DevOps Agent integration for this service. Valid values:</p> <ul> <li> <p>CONNECTING - The service is being connected to the Agent Space.</p> </li> <li> <p>CONNECTED - The service is connected to the Agent Space.</p> </li> <li> <p>DISCONNECTED - The service is not connected to an Agent Space.</p> </li> <li> <p>FAILED - The connection attempt failed. See statusReason for details.</p> </li> </ul>
    #   @return [String]
    # @!attribute operator_app_url
    #   <p>The URL of the DevOps Agent Operator App for the linked Agent Space. This URL is present when the connection status is CONNECTED.</p>
    #   @return [String]
    # @!attribute connected_at
    #   <p>The timestamp when the service successfully connected to the DevOps Agent Agent Space.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>A human-readable explanation of the current connection status. This field explains the status when the connection fails.</p>
    #   @return [String]
    class DevOpsAgentConfigurationView < Struct.new(
      nil,
      :agent_space_arn,
      :agent_space_id,
      :region,
      :status,
      :operator_app_url,
      :connected_at,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result when DevOps Agent investigates a resilience test run. The verdict is advisory and builds on the test run's own result, which remains authoritative.</p>
    # @!attribute verdict
    #   <p>The investigation verdict. Valid values:</p> <ul> <li> <p>PASS - The resilience test run passed.</p> </li> <li> <p>FAIL - The resilience test run failed.</p> </li> <li> <p>INCONCLUSIVE - The investigation could not determine a clear outcome.</p> </li> </ul>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence level of the verdict. Valid values:</p> <ul> <li> <p>HIGH - The verdict is highly reliable.</p> </li> <li> <p>MEDIUM - The verdict has moderate reliability.</p> </li> <li> <p>LOW - The verdict has low reliability.</p> </li> </ul>
    #   @return [String]
    # @!attribute deep_link
    #   <p>A deep link to the interactive DevOps Agent investigation session.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The lifecycle status of the investigation. Valid values:</p> <ul> <li> <p>PENDING - The investigation has been created but has not started.</p> </li> <li> <p>IN_PROGRESS - The investigation is running.</p> </li> <li> <p>COMPLETED - The investigation finished successfully.</p> </li> <li> <p>FAILED - The investigation failed to complete.</p> </li> <li> <p>TIMED_OUT - The investigation did not complete within the allotted time.</p> </li> <li> <p>CANCELED - The investigation was canceled.</p> </li> </ul>
    #   @return [String]
    # @!attribute summary
    #   <p>The DevOps Agent analysis summary for the investigation.</p>
    #   @return [String]
    class DevOpsAgentInvestigation < Struct.new(
      nil,
      :verdict,
      :confidence,
      :deep_link,
      :status,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the effective disaster recovery approach value for a service.</p>
    # @!attribute value
    #   <p>The disaster recovery approach value.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute source
    #   <p>Indicates whether the value comes from the service's own account or a cross-account policy.</p>
    #   @return [String]
    class DisasterRecoverySource < Struct.new(
      nil,
      :value,
      :policy_name,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains property information for a service topology edge.</p>
    # @!attribute topology_type
    #   <p>The topology type of the edge.</p>
    #   @return [String]
    # @!attribute label
    #   <p>Human-readable relationship description. Only present for LLM-inferred edges.</p>
    #   @return [String]
    class EdgePropertySummary < Struct.new(
      nil,
      :topology_type,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the effective resilience policy values for a service.</p>
    # @!attribute availability_slo
    #   <p>The effective availability SLO value for the service.</p>
    #   @return [Types::SloSource]
    # @!attribute multi_az_rto
    #   <p>The effective multi-AZ RTO value for the service, in minutes.</p>
    #   @return [Types::TargetSource]
    # @!attribute multi_az_rpo
    #   <p>The effective multi-AZ RPO value for the service, in minutes.</p>
    #   @return [Types::TargetSource]
    # @!attribute multi_az_dr_approach
    #   <p>The effective multi-AZ disaster recovery approach for the service.</p>
    #   @return [Types::DisasterRecoverySource]
    # @!attribute multi_region_rto
    #   <p>The effective multi-Region RTO value for the service, in minutes.</p>
    #   @return [Types::TargetSource]
    # @!attribute multi_region_rpo
    #   <p>The effective multi-Region RPO value for the service, in minutes.</p>
    #   @return [Types::TargetSource]
    # @!attribute multi_region_dr_approach
    #   <p>The effective multi-Region disaster recovery approach for the service.</p>
    #   @return [Types::DisasterRecoverySource]
    # @!attribute data_recovery_time_between_backups
    #   <p>The effective data recovery time between backups value for the service.</p>
    #   @return [Types::TargetSource]
    class EffectivePolicyValues < Struct.new(
      nil,
      :availability_slo,
      :multi_az_rto,
      :multi_az_rpo,
      :multi_az_dr_approach,
      :multi_region_rto,
      :multi_region_rpo,
      :multi_region_dr_approach,
      :data_recovery_time_between_backups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A label selector that filters the Kubernetes objects discovered from an Amazon EKS input source. An object must satisfy both matchLabels and matchExpressions to match the selector. A selector with neither matches every object. The selector must render to 2,048 characters or fewer in Kubernetes label selector syntax.</p>
    # @!attribute match_labels
    #   <p>The label key-value pairs that an object must have. All pairs must match for the object to be selected.</p>
    #   @return [Hash<String, String>]
    # @!attribute match_expressions
    #   <p>The label requirements that an object must satisfy. All requirements in the list must match for the object to be selected.</p>
    #   @return [Array<Types::EksLabelSelectorRequirement>]
    class EksLabelSelector < Struct.new(
      nil,
      :match_labels,
      :match_expressions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single label requirement in a label selector, expressed as a key, an operator, and an optional list of values.</p>
    # @!attribute key
    #   <p>The label key that the requirement applies to.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator that relates the label key to the values.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The label values to compare against. Specify values when the operator is IN or NOT_IN. Leave this empty when the operator is EXISTS or DOES_NOT_EXIST.</p>
    #   @return [Array<String>]
    class EksLabelSelectorRequirement < Struct.new(
      nil,
      :key,
      :operator,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an Amazon EKS cluster and its namespaces as an input source for resource discovery.</p>
    # @!attribute cluster_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>The list of Kubernetes namespaces within the EKS cluster.</p>
    #   @return [Array<String>]
    # @!attribute label_selector
    #   <p>Filters discovery to the Kubernetes objects whose labels match the selector. When omitted, all supported objects in the specified namespaces are discovered.</p>
    #   @return [Types::EksLabelSelector]
    class EksSource < Struct.new(
      nil,
      :cluster_arn,
      :namespaces,
      :label_selector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the actor that triggered an event.</p>
    # @!attribute type
    #   <p>The type of actor, either USER or SYSTEM.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The principal ID of the actor.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The AWS account ID of the actor.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The user name of the actor.</p>
    #   @return [String]
    class EventActor < Struct.new(
      nil,
      :type,
      :principal_id,
      :account_id,
      :user_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an AWS Fault Injection Service (AWS FIS) experiment run as part of a test run.</p>
    # @!attribute experiment_arn
    #   <p>The ARN of the AWS FIS experiment.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Additional details about the experiment.</p>
    #   @return [String]
    class ExperimentDetails < Struct.new(
      nil,
      :experiment_arn,
      :details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details when report generation failed.</p>
    # @!attribute error_code
    #   <p>The error code describing why the report generation failed.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message describing why the report generation failed.</p>
    #   @return [String]
    class FailedReportOutput < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a resilience finding from a failure mode assessment.</p>
    # @!attribute finding_id
    #   <p>The unique identifier of the finding.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the finding.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute failure_category
    #   <p>The failure category of the finding.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the finding.</p>
    #   @return [String]
    # @!attribute reasoning
    #   <p>The reasoning behind the finding.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A user-provided comment about the finding.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the finding.</p>
    #   @return [String]
    # @!attribute service_functions
    #   <p>The service functions associated with the finding.</p>
    #   @return [Array<String>]
    # @!attribute policy_component
    #   <p>The policy component associated with the finding.</p>
    #   @return [String]
    # @!attribute infrastructure_and_code_recommendations
    #   <p>Infrastructure and code recommendations to address the finding.</p>
    #   @return [Array<Types::InfrastructureAndCodeRecommendation>]
    # @!attribute observability_recommendations
    #   <p>Observability recommendations to address the finding.</p>
    #   @return [Array<Types::ObservabilityRecommendation>]
    # @!attribute testing_recommendations
    #   <p>Testing recommendations to address the finding.</p>
    #   @return [Array<Types::TestingRecommendation>]
    # @!attribute updated_at
    #   <p>The timestamp when the finding was last updated.</p>
    #   @return [Time]
    # @!attribute investigation_deep_link
    #   <p>A deep link to an interactive DevOps Agent investigation seeded with this finding. This value is null until DevOps Agent creates an investigation.</p>
    #   @return [String]
    class Finding < Struct.new(
      nil,
      :finding_id,
      :name,
      :description,
      :failure_category,
      :status,
      :reasoning,
      :comment,
      :severity,
      :service_functions,
      :policy_component,
      :infrastructure_and_code_recommendations,
      :observability_recommendations,
      :testing_recommendations,
      :updated_at,
      :investigation_deep_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a finding.</p>
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute finding_id
    #   <p>The unique identifier of the finding.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the finding.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute failure_category
    #   <p>The failure category of the finding.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity of the finding.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the finding.</p>
    #   @return [String]
    # @!attribute policy_component
    #   <p>The policy component associated with the finding.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the finding was last updated.</p>
    #   @return [Time]
    # @!attribute investigation_deep_link
    #   <p>A deep link to an interactive DevOps Agent investigation seeded with this finding. This value is null until DevOps Agent creates an investigation.</p>
    #   @return [String]
    class FindingSummary < Struct.new(
      nil,
      :service_arn,
      :finding_id,
      :name,
      :description,
      :failure_category,
      :severity,
      :status,
      :policy_component,
      :updated_at,
      :investigation_deep_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class GetDependencyInsightsRequest < Struct.new(
      nil,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute overview
    #   <p>A summary of the dependency insights for the service. This field is not returned until the status is COMPLETED.</p>
    #   @return [String]
    # @!attribute insights
    #   <p>The list of dependency insights generated for the service. This field is not returned until the status is COMPLETED.</p>
    #   @return [Array<Types::DependencyInsight>]
    # @!attribute status
    #   <p>The status of the dependency insights generation. Valid values:</p> <ul> <li> <p>IN_PROGRESS - Insights generation is in progress.</p> </li> <li> <p>COMPLETED - Insights generation completed successfully.</p> </li> <li> <p>FAILED - Insights generation failed. See errorCode and errorMessage for details.</p> </li> </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the dependency insights were generated.</p>
    #   @return [Time]
    # @!attribute error_code
    #   <p>The error code returned when insights generation failed. Valid values:</p> <ul> <li> <p>INSUFFICIENT_DATA - There was not enough dependency data to generate insights.</p> </li> <li> <p>LLM_GENERATION_FAILED - The insights could not be generated.</p> </li> <li> <p>INTERNAL_ERROR - An internal error occurred while generating insights.</p> </li> </ul>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message describing why insights generation failed.</p>
    #   @return [String]
    class GetDependencyInsightsResponse < Struct.new(
      nil,
      :overview,
      :insights,
      :status,
      :created_at,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_id
    #   <p>The unique identifier of the finding to retrieve.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class GetFailureModeFindingRequest < Struct.new(
      nil,
      :finding_id,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding
    #   <p>The requested finding.</p>
    #   @return [Types::Finding]
    class GetFailureModeFindingResponse < Struct.new(
      nil,
      :finding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class GetPolicyRequest < Struct.new(
      nil,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The requested resilience policy.</p>
    #   @return [Types::Policy]
    class GetPolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class GetServiceRequest < Struct.new(
      nil,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The requested service.</p>
    #   @return [Types::Service]
    class GetServiceResponse < Struct.new(
      nil,
      :service,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class GetSystemRequest < Struct.new(
      nil,
      :system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system
    #   <p>The requested system.</p>
    #   @return [Types::System]
    class GetSystemResponse < Struct.new(
      nil,
      :system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_id
    #   <p>The identifier of the test to retrieve.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    class GetTestRequest < Struct.new(
      nil,
      :test_id,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test
    #   <p>The requested test.</p>
    #   @return [Types::Test]
    class GetTestResponse < Struct.new(
      nil,
      :test,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the test run to retrieve.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    class GetTestRunRequest < Struct.new(
      nil,
      :test_run_id,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run
    #   <p>The requested test run.</p>
    #   @return [Types::TestRun]
    class GetTestRunResponse < Struct.new(
      nil,
      :test_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_template_arn
    #   <p>The ARN of the test template to retrieve.</p>
    #   @return [String]
    class GetTestTemplateRequest < Struct.new(
      nil,
      :test_template_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_template
    #   <p>The requested test template.</p>
    #   @return [Types::TestTemplate]
    class GetTestTemplateResponse < Struct.new(
      nil,
      :test_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute user_journey_id
    #   <p>The identifier of the user journey to retrieve.</p>
    #   @return [String]
    class GetUserJourneyRequest < Struct.new(
      nil,
      :system_arn,
      :user_journey_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_journey
    #   <p>The requested user journey.</p>
    #   @return [Types::UserJourney]
    class GetUserJourneyResponse < Struct.new(
      nil,
      :user_journey,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute v1_app_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute skip_manually_added_resources
    #   <p>Whether to skip manually added resources during import.</p>
    #   @return [Boolean]
    # @!attribute associated_systems
    #   <p>The systems to associate with the imported service.</p>
    #   @return [Array<Types::AssociatedSystem>]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class ImportAppRequest < Struct.new(
      nil,
      :v1_app_arn,
      :policy_arn,
      :kms_key_id,
      :skip_manually_added_resources,
      :associated_systems,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The imported service.</p>
    #   @return [Types::Service]
    class ImportAppResponse < Struct.new(
      nil,
      :service,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute v1_policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute availability_slo
    #   <p>The availability SLO to set on the imported policy.</p>
    #   @return [Types::AvailabilitySlo]
    # @!attribute multi_az_disaster_recovery_approach
    #   <p>The multi-AZ disaster recovery approach for the imported policy.</p>
    #   @return [String]
    # @!attribute multi_region_disaster_recovery_approach
    #   <p>The multi-Region disaster recovery approach for the imported policy.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class ImportPolicyRequest < Struct.new(
      nil,
      :v1_policy_arn,
      :kms_key_id,
      :availability_slo,
      :multi_az_disaster_recovery_approach,
      :multi_region_disaster_recovery_approach,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The imported policy.</p>
    #   @return [Types::Policy]
    class ImportPolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An infrastructure and code recommendation to address a finding.</p>
    # @!attribute suggested_changes
    #   <p>The list of suggested changes.</p>
    #   @return [Array<String>]
    class InfrastructureAndCodeRecommendation < Struct.new(
      nil,
      :suggested_changes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies an input source by its identifier and type.</p>
    # @!attribute identifier
    #   <p>The identifier of the input source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the input source.</p>
    #   @return [String]
    class InputSource < Struct.new(
      nil,
      :identifier,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an input source for a service.</p>
    # @!attribute input_source_id
    #   <p>The unique identifier of the input source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the input source.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The resource tags used for discovery, if this input source uses tags.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute cfn_stack_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute tf_state_file_url
    #   <p>S3 URL — virtual hosted-style or s3:// URI.</p>
    #   @return [String]
    # @!attribute eks
    #   <p>The Amazon EKS configuration, if this input source uses EKS.</p>
    #   @return [Types::EksSource]
    # @!attribute design_file_s3_url
    #   <p>S3 URL — virtual hosted-style or s3:// URI.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the input source was created.</p>
    #   @return [Time]
    class InputSourceSummary < Struct.new(
      nil,
      :input_source_id,
      :type,
      :resource_tags,
      :cfn_stack_arn,
      :tf_state_file_url,
      :eks,
      :design_file_s3_url,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Internal service error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Filter assertions by source type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListAssertionsRequest < Struct.new(
      nil,
      :service_arn,
      :source,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assertions
    #   <p>The list of assertions.</p>
    #   @return [Array<Types::Assertion>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListAssertionsResponse < Struct.new(
      nil,
      :assertions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute query_range_start_time
    #   <p>The start time for the dependency query range.</p>
    #   @return [Time]
    # @!attribute query_range_end_time
    #   <p>The end time for the dependency query range.</p>
    #   @return [Time]
    # @!attribute query_range_granularity
    #   <p>The granularity for the dependency query range.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListDependenciesRequest < Struct.new(
      nil,
      :service_arn,
      :query_range_start_time,
      :query_range_end_time,
      :query_range_granularity,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dependency_summaries
    #   <p>The list of dependency summaries.</p>
    #   @return [Array<Types::DependencySummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListDependenciesResponse < Struct.new(
      nil,
      :dependency_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute assessment_statuses
    #   <p>Specifies the assessment statuses to include in the results.</p>
    #   @return [Array<String>]
    # @!attribute started_after
    #   <p>Specifies that only assessments that started at or after this timestamp appear in the results.</p>
    #   @return [Time]
    # @!attribute ended_before
    #   <p>Specifies that only assessments that ended at or before this timestamp appear in the results.</p>
    #   @return [Time]
    # @!attribute sort_by
    #   <p>The field to use for sorting failure mode assessments.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sort order for results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListFailureModeAssessmentsRequest < Struct.new(
      nil,
      :service_arn,
      :assessment_statuses,
      :started_after,
      :ended_before,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_summaries
    #   <p>The list of assessment summaries.</p>
    #   @return [Array<Types::AssessmentSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListFailureModeAssessmentsResponse < Struct.new(
      nil,
      :assessment_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>Filter findings by severity.</p>
    #   @return [String]
    # @!attribute failure_category
    #   <p>Filter findings by failure category.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter findings by status.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListFailureModeFindingsRequest < Struct.new(
      nil,
      :service_arn,
      :severity,
      :failure_category,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute findings_summary
    #   <p>The list of finding summaries.</p>
    #   @return [Array<Types::FindingSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListFailureModeFindingsResponse < Struct.new(
      nil,
      :findings_summary,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Filter input sources by type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListInputSourcesRequest < Struct.new(
      nil,
      :service_arn,
      :type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_source_summaries
    #   <p>The list of input source summaries.</p>
    #   @return [Array<Types::InputSourceSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListInputSourcesResponse < Struct.new(
      nil,
      :input_source_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The identifier of the account that owns the policies to include in the results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListPoliciesRequest < Struct.new(
      nil,
      :account_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_summaries
    #   <p>The list of policy summaries.</p>
    #   @return [Array<Types::PolicySummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListPoliciesResponse < Struct.new(
      nil,
      :policy_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute event_types
    #   <p>The type of events to include in the results.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The start time for filtering events.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for filtering events.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListPolicyEventsRequest < Struct.new(
      nil,
      :policy_arn,
      :event_types,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>The list of policy events.</p>
    #   @return [Array<Types::PolicyEvent>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListPolicyEventsResponse < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>Optional. If not provided, lists all reports owned by the account.</p>
    #   @return [String]
    # @!attribute report_type
    #   <p>Filter reports by type.</p>
    #   @return [String]
    # @!attribute test_run_id
    #   <p>The unique identifier of a test run.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListReportsRequest < Struct.new(
      nil,
      :service_arn,
      :report_type,
      :test_run_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute report_generation_results
    #   <p>The list of report generation results.</p>
    #   @return [Array<Types::ReportGenerationResult>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListReportsResponse < Struct.new(
      nil,
      :report_generation_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the test run to list resolved target resources for.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListResolvedTestRunTargetResourcesRequest < Struct.new(
      nil,
      :test_run_id,
      :service_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resolved_target_resources
    #   <p>The list of resolved target resources.</p>
    #   @return [Array<Types::ResolvedTargetResource>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListResolvedTestRunTargetResourcesResponse < Struct.new(
      nil,
      :resolved_target_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute service_function_id
    #   <p>Filter resources by service function identifier.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>Filter resources by AWS Region.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The CloudFormation resource types to include in the response.</p>
    #   @return [Array<String>]
    # @!attribute billable
    #   <p>Specifies whether to filter non-billable resources. When true (the default), the operation returns only billable resources.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListResourcesRequest < Struct.new(
      nil,
      :service_arn,
      :service_function_id,
      :aws_region,
      :resource_types,
      :billable,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_function_id
    #   <p>The service function identifier for the returned resources.</p>
    #   @return [String]
    # @!attribute service_resources
    #   <p>The list of service resources.</p>
    #   @return [Array<Types::ServiceResource>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListResourcesResponse < Struct.new(
      nil,
      :service_function_id,
      :service_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute event_types
    #   <p>The type of events to include in the results.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The start time for filtering events.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for filtering events.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListServiceEventsRequest < Struct.new(
      nil,
      :service_arn,
      :event_types,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>The list of service events.</p>
    #   @return [Array<Types::ServiceEvent>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListServiceEventsResponse < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListServiceFunctionsRequest < Struct.new(
      nil,
      :service_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_functions
    #   <p>The list of service functions.</p>
    #   @return [Array<Types::ServiceFunction>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListServiceFunctionsResponse < Struct.new(
      nil,
      :service_functions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListServiceTopologyEdgesRequest < Struct.new(
      nil,
      :service_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_topology_edge_summaries
    #   <p>The list of service topology edge summaries.</p>
    #   @return [Array<Types::ServiceTopologyEdgeSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListServiceTopologyEdgesResponse < Struct.new(
      nil,
      :service_topology_edge_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute user_journey_id
    #   <p>Filter services by user journey identifier.</p>
    #   @return [String]
    # @!attribute ou_id
    #   <p>Filter services by organizational unit (OU) identifier.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Filter services by AWS account ID.</p>
    #   @return [String]
    # @!attribute assessment_status
    #   <p>Filter services by assessment status.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListServicesRequest < Struct.new(
      nil,
      :system_arn,
      :user_journey_id,
      :ou_id,
      :account_id,
      :assessment_status,
      :policy_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_summaries
    #   <p>The list of service summaries.</p>
    #   @return [Array<Types::ServiceSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListServicesResponse < Struct.new(
      nil,
      :service_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute event_types
    #   <p>The type of events to include in the results.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The start time for filtering events.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for filtering events.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListSystemEventsRequest < Struct.new(
      nil,
      :system_arn,
      :event_types,
      :start_time,
      :end_time,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>The list of system events.</p>
    #   @return [Array<Types::SystemEvent>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListSystemEventsResponse < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ou_id
    #   <p>Filter systems by organizational unit (OU) identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListSystemsRequest < Struct.new(
      nil,
      :ou_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_summaries
    #   <p>The list of system summaries.</p>
    #   @return [Array<Types::SystemSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListSystemsResponse < Struct.new(
      nil,
      :system_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the test run to list dependencies for.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunDependenciesRequest < Struct.new(
      nil,
      :test_run_id,
      :service_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dependencies
    #   <p>The list of dependencies the test run blocked.</p>
    #   @return [Array<Types::TestRunDependencySummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunDependenciesResponse < Struct.new(
      nil,
      :dependencies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the test run to list events for.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>Return events at or after this timestamp.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>Return events at or before this timestamp.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunEventsRequest < Struct.new(
      nil,
      :test_run_id,
      :service_arn,
      :started_at,
      :ended_at,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>The list of test run events.</p>
    #   @return [Array<Types::TestRunEvent>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunEventsResponse < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the test run to list source events for.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the monitoring source to list events for, such as the ARN of a CloudWatch alarm. If the source was not monitored during the test run, the response is an empty list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunSourceEventsRequest < Struct.new(
      nil,
      :test_run_id,
      :service_arn,
      :source_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_source_events
    #   <p>The list of source events, in chronological order.</p>
    #   @return [Array<Types::TestRunSourceEvent>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunSourceEventsResponse < Struct.new(
      nil,
      :test_run_source_events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the test run to list sources for.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Filter sources by type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunSourcesRequest < Struct.new(
      nil,
      :test_run_id,
      :service_arn,
      :type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_sources
    #   <p>The list of monitoring source snapshots.</p>
    #   @return [Array<Types::TestRunSourceSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunSourcesResponse < Struct.new(
      nil,
      :test_run_sources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The ARN of the service to list test runs for.</p>
    #   @return [String]
    # @!attribute test_id
    #   <p>Filter test runs by test identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunsRequest < Struct.new(
      nil,
      :service_arn,
      :test_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_runs
    #   <p>The list of test run summaries.</p>
    #   @return [Array<Types::TestRunSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestRunsResponse < Struct.new(
      nil,
      :test_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_id
    #   <p>The identifier of the test to list sources for.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Filter sources by type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestSourcesRequest < Struct.new(
      nil,
      :test_id,
      :service_arn,
      :type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_sources
    #   <p>The list of configured monitoring sources.</p>
    #   @return [Array<Types::TestSourceSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestSourcesResponse < Struct.new(
      nil,
      :test_sources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ListTestTemplatesRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_templates
    #   <p>The list of test template summaries.</p>
    #   @return [Array<Types::TestTemplateSummary>]
    class ListTestTemplatesResponse < Struct.new(
      nil,
      :test_templates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>The ARN of the service to list tests for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestsRequest < Struct.new(
      nil,
      :service_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tests
    #   <p>The list of test summaries.</p>
    #   @return [Array<Types::TestSummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListTestsResponse < Struct.new(
      nil,
      :tests,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Pagination page size.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListUserJourneysRequest < Struct.new(
      nil,
      :system_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_journey_summaries
    #   <p>The list of user journey summaries.</p>
    #   @return [Array<Types::UserJourneySummary>]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListUserJourneysResponse < Struct.new(
      nil,
      :user_journey_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for test execution logging destinations.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket for log delivery.</p>
    #   @return [String]
    # @!attribute cloud_watch_log_group_arn
    #   <p>The ARN of the CloudWatch Logs log group for log delivery.</p>
    #   @return [String]
    # @!attribute log_schema_version
    #   <p>The version of the log schema.</p>
    #   @return [String]
    class LoggingConfiguration < Struct.new(
      nil,
      :s3_bucket_name,
      :cloud_watch_log_group_arn,
      :log_schema_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the multi-AZ disaster recovery targets for a resilience policy.</p>
    # @!attribute rto_in_minutes
    #   <p>The recovery time objective (RTO) target for multi-AZ, in minutes.</p>
    #   @return [Integer]
    # @!attribute rpo_in_minutes
    #   <p>The recovery point objective (RPO) target for multi-AZ, in minutes.</p>
    #   @return [Integer]
    # @!attribute disaster_recovery_approach
    #   <p>The disaster recovery approach for multi-AZ.</p>
    #   @return [String]
    class MultiAzTargets < Struct.new(
      nil,
      :rto_in_minutes,
      :rpo_in_minutes,
      :disaster_recovery_approach,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the multi-Region disaster recovery targets for a resilience policy.</p>
    # @!attribute rto_in_minutes
    #   <p>The recovery time objective (RTO) target for multi-Region, in minutes.</p>
    #   @return [Integer]
    # @!attribute rpo_in_minutes
    #   <p>The recovery point objective (RPO) target for multi-Region, in minutes.</p>
    #   @return [Integer]
    # @!attribute disaster_recovery_approach
    #   <p>The disaster recovery approach for multi-Region.</p>
    #   @return [String]
    class MultiRegionTargets < Struct.new(
      nil,
      :rto_in_minutes,
      :rpo_in_minutes,
      :disaster_recovery_approach,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies an observability alarm by its ARN.</p>
    # @!attribute alarm_arn
    #   <p>The ARN of the CloudWatch alarm.</p>
    #   @return [String]
    class ObservabilityAlarmInput < Struct.new(
      nil,
      :alarm_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a configured observability alarm.</p>
    # @!attribute alarm_arn
    #   <p>The ARN of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute alarm_name
    #   <p>The name of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID that owns the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the source was configured.</p>
    #   @return [Time]
    class ObservabilityAlarmSummary < Struct.new(
      nil,
      :alarm_arn,
      :alarm_name,
      :region,
      :account_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An observability recommendation to address a finding.</p>
    # @!attribute suggested_changes
    #   <p>The list of suggested observability changes.</p>
    #   @return [Array<String>]
    class ObservabilityRecommendation < Struct.new(
      nil,
      :suggested_changes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the permission model for a service.</p>
    # @!attribute invoker_role_name
    #   <p>IAM role name (supports up to 64 characters per IAM limits).</p>
    #   @return [String]
    # @!attribute cross_account_roles
    #   <p>The list of cross-account IAM role ARNs.</p>
    #   @return [Array<Types::CrossAccountRole>]
    class PermissionModel < Struct.new(
      nil,
      :invoker_role_name,
      :cross_account_roles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a resilience policy that defines availability and disaster recovery requirements.</p>
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description for services and policies.</p>
    #   @return [String]
    # @!attribute availability_slo
    #   <p>The availability SLO defined in the policy.</p>
    #   @return [Types::AvailabilitySlo]
    # @!attribute multi_az
    #   <p>The multi-AZ disaster recovery targets defined in the policy.</p>
    #   @return [Types::MultiAzTargets]
    # @!attribute multi_region
    #   <p>The multi-Region disaster recovery targets defined in the policy.</p>
    #   @return [Types::MultiRegionTargets]
    # @!attribute data_recovery
    #   <p>The data recovery targets defined in the policy.</p>
    #   @return [Types::DataRecoveryTargets]
    # @!attribute sharing_enabled
    #   <p>Specifies whether cross-account sharing is enabled.</p>
    #   @return [Boolean]
    # @!attribute organization_id
    #   <p>The identifier of the organization this policy is shared with.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute associated_service_count
    #   <p>The number of services associated with this policy.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The timestamp when the policy was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last updated.</p>
    #   @return [Time]
    class Policy < Struct.new(
      nil,
      :policy_arn,
      :name,
      :description,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery,
      :sharing_enabled,
      :organization_id,
      :kms_key_id,
      :tags,
      :associated_service_count,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the service that started using the policy, such as the account that owns the service.</p>
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account that owns the service.</p>
    #   @return [String]
    class PolicyAttachedToServiceMetadata < Struct.new(
      nil,
      :service_arn,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a policy that was deleted, including the number of services that were affected.</p>
    # @!attribute affected_service_count
    #   <p>The number of services that were using the policy when it was deleted.</p>
    #   @return [Integer]
    class PolicyDeletedMetadata < Struct.new(
      nil,
      :affected_service_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the service that stopped using the policy, such as the account that owns the service.</p>
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account that owns the service.</p>
    #   @return [String]
    class PolicyDetachedFromServiceMetadata < Struct.new(
      nil,
      :service_arn,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An event on the timeline of a resilience policy.</p>
    # @!attribute event_id
    #   <p>The identifier of the event.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The time the event occurred.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of the event.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute actor
    #   <p>Identifies the actor that triggered an event.</p>
    #   @return [Types::EventActor]
    # @!attribute event_details
    #   <p>The details of the event.</p>
    #   @return [Types::PolicyEventDetails]
    class PolicyEvent < Struct.new(
      nil,
      :event_id,
      :timestamp,
      :event_type,
      :policy_arn,
      :actor,
      :event_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the title, description, and event-specific metadata for a single event on the timeline of a resilience policy.</p>
    # @!attribute title
    #   <p>A short summary of the event.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the event.</p>
    #   @return [String]
    # @!attribute event_metadata
    #   <p>The event-specific metadata, with one member populated according to the event type.</p>
    #   @return [Types::PolicyEventMetadata]
    class PolicyEventDetails < Struct.new(
      nil,
      :title,
      :description,
      :event_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the event-specific metadata for a policy event. Exactly one member is populated, according to the event type.</p> <ul> <li> <p>policyAttachedToService — a service started using the policy.</p> </li> <li> <p>policyDetachedFromService — a service stopped using the policy.</p> </li> <li> <p>policySharingRevoked — cross-account sharing was disabled for the policy.</p> </li> <li> <p>policyDeleted — the policy was deleted.</p> </li> </ul>
    # @!attribute policy_attached_to_service
    #   <p>Contains details about the service that started using the policy, such as the account that owns the service.</p>
    #   @return [Types::PolicyAttachedToServiceMetadata]
    # @!attribute policy_detached_from_service
    #   <p>Contains details about the service that stopped using the policy, such as the account that owns the service.</p>
    #   @return [Types::PolicyDetachedFromServiceMetadata]
    # @!attribute policy_sharing_revoked
    #   <p>Contains details about a policy for which organization sharing was revoked, including the number of services that were affected.</p>
    #   @return [Types::PolicySharingRevokedMetadata]
    # @!attribute policy_deleted
    #   <p>Contains details about a policy that was deleted, including the number of services that were affected.</p>
    #   @return [Types::PolicyDeletedMetadata]
    class PolicyEventMetadata < Struct.new(
      :policy_attached_to_service,
      :policy_detached_from_service,
      :policy_sharing_revoked,
      :policy_deleted,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PolicyAttachedToService < PolicyEventMetadata; end
      class PolicyDetachedFromService < PolicyEventMetadata; end
      class PolicySharingRevoked < PolicyEventMetadata; end
      class PolicyDeleted < PolicyEventMetadata; end
      class Unknown < PolicyEventMetadata; end
    end

    # <p>Contains details about a policy for which organization sharing was revoked, including the number of services that were affected.</p>
    # @!attribute affected_service_count
    #   <p>The number of services that were using the policy when sharing was revoked.</p>
    #   @return [Integer]
    class PolicySharingRevokedMetadata < Struct.new(
      nil,
      :affected_service_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a resilience policy.</p>
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute availability_slo
    #   <p>The availability SLO defined in the policy.</p>
    #   @return [Types::AvailabilitySlo]
    # @!attribute multi_az
    #   <p>The multi-AZ disaster recovery targets defined in the policy.</p>
    #   @return [Types::MultiAzTargets]
    # @!attribute multi_region
    #   <p>The multi-Region disaster recovery targets defined in the policy.</p>
    #   @return [Types::MultiRegionTargets]
    # @!attribute data_recovery
    #   <p>The data recovery targets defined in the policy.</p>
    #   @return [Types::DataRecoveryTargets]
    # @!attribute sharing_enabled
    #   <p>Specifies whether cross-account sharing is enabled.</p>
    #   @return [Boolean]
    # @!attribute organization_id
    #   <p>The identifier of the organization this policy is shared with.</p>
    #   @return [String]
    # @!attribute associated_service_count
    #   <p>The number of services associated with this policy.</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The timestamp when the policy was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last updated.</p>
    #   @return [Time]
    class PolicySummary < Struct.new(
      nil,
      :policy_arn,
      :name,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery,
      :sharing_enabled,
      :organization_id,
      :associated_service_count,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_id
    #   <p>The identifier of the test to add sources to.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    # @!attribute test_sources
    #   <p>The monitoring sources to add or update.</p>
    #   @return [Array<Types::TestSourceInput>]
    class PutTestSourcesRequest < Struct.new(
      nil,
      :test_id,
      :service_arn,
      :test_sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutTestSourcesResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A data point in a dependency query range.</p>
    # @!attribute timestamp
    #   <p>The timestamp of the data point.</p>
    #   @return [Time]
    # @!attribute query_count
    #   <p>The number of queries at this data point.</p>
    #   @return [Integer]
    class QueryDataPoint < Struct.new(
      nil,
      :timestamp,
      :query_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a time range for dependency query data.</p>
    # @!attribute start_time
    #   <p>The start time of the query range.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time of the query range.</p>
    #   @return [Time]
    # @!attribute granularity
    #   <p>The granularity of the query range data points.</p>
    #   @return [String]
    # @!attribute data_points
    #   <p>The data points within the query range.</p>
    #   @return [Array<Types::QueryDataPoint>]
    class QueryRange < Struct.new(
      nil,
      :start_time,
      :end_time,
      :granularity,
      :data_points,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Result of a report generation attempt.</p>
    # @!attribute report_type
    #   <p>The type of the generated report.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the report generation.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The service this report was generated for.</p>
    #   @return [String]
    # @!attribute assessment_id
    #   <p>Present for FAILURE_MODE reports.</p>
    #   @return [String]
    # @!attribute test_run_id
    #   <p>The unique identifier of a test run.</p>
    #   @return [String]
    # @!attribute test_template_arn
    #   <p>An ARN owned by the service. Accepts either a standard 12-digit account ID or the literal "aws" for AWS-managed resources, such as AWS-managed test templates.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the report was created.</p>
    #   @return [Time]
    # @!attribute report_output
    #   <p>Present when status is SUCCEEDED or FAILED.</p>
    #   @return [Types::ReportOutput]
    class ReportGenerationResult < Struct.new(
      nil,
      :report_type,
      :status,
      :service_arn,
      :assessment_id,
      :test_run_id,
      :test_template_arn,
      :created_at,
      :report_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union of possible report outputs.</p>
    # @!attribute s3_report_output
    #   <p>The S3 location where the report was written.</p>
    #   @return [Types::S3ReportOutput]
    # @!attribute failed_report_output
    #   <p>Details when report generation failed.</p>
    #   @return [Types::FailedReportOutput]
    class ReportOutput < Struct.new(
      :s3_report_output,
      :failed_report_output,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3ReportOutput < ReportOutput; end
      class FailedReportOutput < ReportOutput; end
      class Unknown < ReportOutput; end
    end

    # <p>Configuration for a report output destination.</p>
    # @!attribute s3
    #   <p>S3 configuration for report output.</p>
    #   @return [Types::S3ReportOutputConfiguration]
    class ReportOutputConfiguration < Struct.new(
      :s3,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ReportOutputConfiguration; end
      class Unknown < ReportOutputConfiguration; end
    end

    # <p>A single AWS resource that AWS Fault Injection Service (AWS FIS) resolved as a target during a test run.</p>
    # @!attribute resource_type
    #   <p>The AWS FIS resource type the target belongs to, such as aws:ec2:instance, aws:ecs:task, or aws:eks:pod.</p>
    #   @return [String]
    # @!attribute target_name
    #   <p>The name of the target in the AWS FIS experiment template.</p>
    #   @return [String]
    # @!attribute target_information
    #   <p>The raw target information map as returned by AWS FIS.</p>
    #   @return [Hash<String, String>]
    class ResolvedTargetResource < Struct.new(
      nil,
      :resource_type,
      :target_name,
      :target_information,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an AWS resource discovered by Resilience Hub.</p>
    # @!attribute identifier
    #   <p>The identifier of the resource.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The AWS Region where the resource is located.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The AWS account ID that owns the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The Availability Zone ID of the Availability Zone that hosts the resource, such as use1-az1. The Availability Zone ID is consistent across Amazon Web Services (AWS) accounts, unlike the Availability Zone name.</p>
    #   @return [String]
    # @!attribute availability_zone_name
    #   <p>The name of the Availability Zone that hosts the resource, such as us-west-2a.</p>
    #   @return [String]
    # @!attribute containment_parent_id
    #   <p>The identifier of the single parent resource that contains this resource, used to represent containment relationships in the resource topology. A resource has at most one containment parent.</p>
    #   @return [String]
    # @!attribute logical_resource_group_id
    #   <p>The identifier of the logical resource group that this resource belongs to. Resources that share this identifier are managed as a single unit.</p>
    #   @return [String]
    class Resource < Struct.new(
      nil,
      :identifier,
      :aws_region,
      :aws_account_id,
      :resource_type,
      :availability_zone_id,
      :availability_zone_name,
      :containment_parent_id,
      :logical_resource_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource configuration for an input source. Provide exactly one field.</p>
    # @!attribute resource_tags
    #   <p>The resource tags for tag-based resource discovery.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute cfn_stack_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute tf_state_file_url
    #   <p>S3 URL — virtual hosted-style or s3:// URI.</p>
    #   @return [String]
    # @!attribute eks
    #   <p>The Amazon EKS configuration for resource discovery.</p>
    #   @return [Types::EksSource]
    # @!attribute design_file_s3_url
    #   <p>S3 URL — virtual hosted-style or s3:// URI.</p>
    #   @return [String]
    class ResourceConfiguration < Struct.new(
      :resource_tags,
      :cfn_stack_arn,
      :tf_state_file_url,
      :eks,
      :design_file_s3_url,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ResourceTags < ResourceConfiguration; end
      class CfnStackArn < ResourceConfiguration; end
      class TfStateFileUrl < ResourceConfiguration; end
      class Eks < ResourceConfiguration; end
      class DesignFileS3Url < ResourceConfiguration; end
      class Unknown < ResourceConfiguration; end
    end

    # <p>Contains the status of resource discovery for a service.</p>
    # @!attribute status
    #   <p>The current status of resource discovery.</p>
    #   @return [String]
    # @!attribute last_run_at
    #   <p>The timestamp of the last resource discovery run.</p>
    #   @return [Time]
    # @!attribute error_code
    #   <p>The error code if resource discovery failed.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A message describing the error if resource discovery failed.</p>
    #   @return [String]
    class ResourceDiscoveryStatus < Struct.new(
      nil,
      :status,
      :last_run_at,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that was not found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tag key-value pair used for resource discovery.</p>
    # @!attribute key
    #   <p>Tag key.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of tag values.</p>
    #   @return [Array<String>]
    class ResourceTag < Struct.new(
      nil,
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>S3 location where report was written.</p>
    # @!attribute s3_object_key
    #   <p>The S3 object key for the generated report.</p>
    #   @return [String]
    class S3ReportOutput < Struct.new(
      nil,
      :s3_object_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>S3 configuration for report output.</p>
    # @!attribute bucket_path
    #   <p>S3 bucket path where reports will be written (e.g., my-bucket/ngrh-reports/).</p>
    #   @return [String]
    # @!attribute bucket_owner
    #   <p>Account ID of the bucket owner for cross-account access verification.</p>
    #   @return [String]
    class S3ReportOutputConfiguration < Struct.new(
      nil,
      :bucket_path,
      :bucket_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a service in Resilience Hub. A service is the primary unit of resilience assessment.</p>
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description for services and policies.</p>
    #   @return [String]
    # @!attribute associated_systems
    #   <p>The systems associated with the service.</p>
    #   @return [Array<Types::AssociatedSystem>]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The Regions where the service operates.</p>
    #   @return [Array<String>]
    # @!attribute permission_model
    #   <p>The permission model for the service.</p>
    #   @return [Types::PermissionModel]
    # @!attribute dependency_discovery
    #   <p>The dependency discovery configuration for the service.</p>
    #   @return [Types::DependencyDiscoveryConfig]
    # @!attribute effective_policy_values
    #   <p>The effective policy values for the service.</p>
    #   @return [Types::EffectivePolicyValues]
    # @!attribute achievability
    #   <p>The achievability status of the service's resilience targets.</p>
    #   @return [Types::Achievability]
    # @!attribute report_configuration
    #   <p>Configuration for automatic report generation on a Service.</p>
    #   @return [Types::ServiceReportConfiguration]
    # @!attribute kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute estimated_assessment_cost
    #   <p>The estimated cost of running an assessment on the service.</p>
    #   @return [Types::AssessmentCost]
    # @!attribute resource_discovery
    #   <p>The resource discovery status for the service.</p>
    #   @return [Types::ResourceDiscoveryStatus]
    # @!attribute assessment_status
    #   <p>The current assessment status of the service.</p>
    #   @return [String]
    # @!attribute rerun_assessment
    #   <p>Indicates whether the assessment should be rerun.</p>
    #   @return [Boolean]
    # @!attribute open_findings_count
    #   <p>The number of open findings for the service.</p>
    #   @return [Integer]
    # @!attribute resolved_findings_count
    #   <p>The number of resolved findings for the service.</p>
    #   @return [Integer]
    # @!attribute organization_id
    #   <p>The AWS Organizations identifier for the service.</p>
    #   @return [String]
    # @!attribute ou_id
    #   <p>The organizational unit (OU) identifier for the service.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The AWS account ID that owns the service.</p>
    #   @return [String]
    # @!attribute dev_ops_agent_configuration
    #   <p>The current DevOps Agent integration state for the service.</p>
    #   @return [Types::DevOpsAgentConfigurationView]
    # @!attribute created_at
    #   <p>The timestamp when the service was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the service was last updated.</p>
    #   @return [Time]
    class Service < Struct.new(
      nil,
      :service_arn,
      :name,
      :description,
      :associated_systems,
      :policy_arn,
      :regions,
      :permission_model,
      :dependency_discovery,
      :effective_policy_values,
      :achievability,
      :report_configuration,
      :kms_key_id,
      :tags,
      :estimated_assessment_cost,
      :resource_discovery,
      :assessment_status,
      :rerun_assessment,
      :open_findings_count,
      :resolved_findings_count,
      :organization_id,
      :ou_id,
      :account_id,
      :dev_ops_agent_configuration,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service achievability updated event.</p>
    # @!attribute assessment_id
    #   <p>The assessment identifier that triggered the update.</p>
    #   @return [String]
    # @!attribute availability_slo
    #   <p>The updated achievability status of the availability SLO.</p>
    #   @return [String]
    # @!attribute multi_az_rto_rpo
    #   <p>The updated achievability status of the multi-AZ RTO and RPO targets.</p>
    #   @return [String]
    # @!attribute multi_region_rto_rpo
    #   <p>The updated achievability status of the multi-Region RTO and RPO targets.</p>
    #   @return [String]
    class ServiceAchievabilityUpdatedMetadata < Struct.new(
      nil,
      :assessment_id,
      :availability_slo,
      :multi_az_rto_rpo,
      :multi_region_rto_rpo,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service created event.</p>
    class ServiceCreatedMetadata < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service deleted event.</p>
    class ServiceDeletedMetadata < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an event in the service event log.</p>
    # @!attribute event_id
    #   <p>The unique identifier of the event.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the event.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of the event.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute actor
    #   <p>The actor that triggered the event.</p>
    #   @return [Types::EventActor]
    # @!attribute event_details
    #   <p>The details of the event.</p>
    #   @return [Types::ServiceEventDetails]
    class ServiceEvent < Struct.new(
      nil,
      :event_id,
      :timestamp,
      :event_type,
      :service_arn,
      :actor,
      :event_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of a service event.</p>
    # @!attribute title
    #   <p>The title of the event.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event.</p>
    #   @return [String]
    # @!attribute event_metadata
    #   <p>Type-specific metadata for each service event type.</p>
    #   @return [Types::ServiceEventMetadata]
    class ServiceEventDetails < Struct.new(
      nil,
      :title,
      :description,
      :event_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Type-specific metadata for each service event type.</p>
    # @!attribute service_created
    #   <p>Metadata for a service created event.</p>
    #   @return [Types::ServiceCreatedMetadata]
    # @!attribute service_deleted
    #   <p>Metadata for a service deleted event.</p>
    #   @return [Types::ServiceDeletedMetadata]
    # @!attribute service_system_associated
    #   <p>Metadata for a service system associated event.</p>
    #   @return [Types::ServiceSystemAssociatedMetadata]
    # @!attribute service_system_disassociated
    #   <p>Metadata for a service system disassociated event.</p>
    #   @return [Types::ServiceSystemDisassociatedMetadata]
    # @!attribute service_resources_associated
    #   <p>Metadata for a service resources associated event.</p>
    #   @return [Types::ServiceResourcesAssociatedMetadata]
    # @!attribute service_resources_disassociated
    #   <p>Metadata for a service resources disassociated event.</p>
    #   @return [Types::ServiceResourcesDisassociatedMetadata]
    # @!attribute service_workflow_updated
    #   <p>Metadata for a service workflow updated event.</p>
    #   @return [Types::ServiceWorkflowUpdatedMetadata]
    # @!attribute service_input_sources_updated
    #   <p>Metadata for a service input sources updated event.</p>
    #   @return [Types::ServiceInputSourcesUpdatedMetadata]
    # @!attribute service_policy_associated
    #   <p>Metadata for a service policy associated event.</p>
    #   @return [Types::ServicePolicyAssociatedMetadata]
    # @!attribute service_policy_disassociated
    #   <p>Metadata for a service policy disassociated event.</p>
    #   @return [Types::ServicePolicyDisassociatedMetadata]
    # @!attribute service_function_created
    #   <p>Metadata for a service function created event.</p>
    #   @return [Types::ServiceFunctionCreatedMetadata]
    # @!attribute service_function_updated
    #   <p>Metadata for a service function updated event.</p>
    #   @return [Types::ServiceFunctionUpdatedMetadata]
    # @!attribute service_function_deleted
    #   <p>Metadata for a service function deleted event.</p>
    #   @return [Types::ServiceFunctionDeletedMetadata]
    # @!attribute service_function_resources_added
    #   <p>Metadata for a service function resources added event.</p>
    #   @return [Types::ServiceFunctionResourcesAddedMetadata]
    # @!attribute service_function_resources_removed
    #   <p>Metadata for a service function resources removed event.</p>
    #   @return [Types::ServiceFunctionResourcesRemovedMetadata]
    # @!attribute service_achievability_updated
    #   <p>Metadata for a service achievability updated event.</p>
    #   @return [Types::ServiceAchievabilityUpdatedMetadata]
    # @!attribute assertion_created
    #   <p>Metadata for an assertion created event.</p>
    #   @return [Types::AssertionCreatedMetadata]
    # @!attribute assertion_updated
    #   <p>Metadata for an assertion updated event.</p>
    #   @return [Types::AssertionUpdatedMetadata]
    # @!attribute assertion_deleted
    #   <p>Metadata for an assertion deleted event.</p>
    #   @return [Types::AssertionDeletedMetadata]
    class ServiceEventMetadata < Struct.new(
      :service_created,
      :service_deleted,
      :service_system_associated,
      :service_system_disassociated,
      :service_resources_associated,
      :service_resources_disassociated,
      :service_workflow_updated,
      :service_input_sources_updated,
      :service_policy_associated,
      :service_policy_disassociated,
      :service_function_created,
      :service_function_updated,
      :service_function_deleted,
      :service_function_resources_added,
      :service_function_resources_removed,
      :service_achievability_updated,
      :assertion_created,
      :assertion_updated,
      :assertion_deleted,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ServiceCreated < ServiceEventMetadata; end
      class ServiceDeleted < ServiceEventMetadata; end
      class ServiceSystemAssociated < ServiceEventMetadata; end
      class ServiceSystemDisassociated < ServiceEventMetadata; end
      class ServiceResourcesAssociated < ServiceEventMetadata; end
      class ServiceResourcesDisassociated < ServiceEventMetadata; end
      class ServiceWorkflowUpdated < ServiceEventMetadata; end
      class ServiceInputSourcesUpdated < ServiceEventMetadata; end
      class ServicePolicyAssociated < ServiceEventMetadata; end
      class ServicePolicyDisassociated < ServiceEventMetadata; end
      class ServiceFunctionCreated < ServiceEventMetadata; end
      class ServiceFunctionUpdated < ServiceEventMetadata; end
      class ServiceFunctionDeleted < ServiceEventMetadata; end
      class ServiceFunctionResourcesAdded < ServiceEventMetadata; end
      class ServiceFunctionResourcesRemoved < ServiceEventMetadata; end
      class ServiceAchievabilityUpdated < ServiceEventMetadata; end
      class AssertionCreated < ServiceEventMetadata; end
      class AssertionUpdated < ServiceEventMetadata; end
      class AssertionDeleted < ServiceEventMetadata; end
      class Unknown < ServiceEventMetadata; end
    end

    # <p>Represents a logical component of a service.</p>
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute service_function_id
    #   <p>The unique identifier of the service function.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The criticality level of the service function.</p>
    #   @return [String]
    # @!attribute resource_count
    #   <p>The number of resources associated with the service function.</p>
    #   @return [Integer]
    # @!attribute source
    #   <p>The source of the service function.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the service function was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the service function was last updated.</p>
    #   @return [Time]
    class ServiceFunction < Struct.new(
      nil,
      :service_arn,
      :service_function_id,
      :name,
      :description,
      :criticality,
      :resource_count,
      :source,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service function created event.</p>
    # @!attribute service_function_id
    #   <p>The identifier of the created service function.</p>
    #   @return [String]
    # @!attribute service_function_name
    #   <p>The name of the created service function.</p>
    #   @return [String]
    class ServiceFunctionCreatedMetadata < Struct.new(
      nil,
      :service_function_id,
      :service_function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service function deleted event.</p>
    # @!attribute service_function_id
    #   <p>The identifier of the deleted service function.</p>
    #   @return [String]
    # @!attribute service_function_name
    #   <p>The name of the deleted service function.</p>
    #   @return [String]
    class ServiceFunctionDeletedMetadata < Struct.new(
      nil,
      :service_function_id,
      :service_function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service function resources added event.</p>
    # @!attribute service_function_id
    #   <p>The identifier of the service function.</p>
    #   @return [String]
    # @!attribute service_function_name
    #   <p>The name of the service function.</p>
    #   @return [String]
    # @!attribute resources_added
    #   <p>The list of resource ARNs that were added.</p>
    #   @return [Array<String>]
    class ServiceFunctionResourcesAddedMetadata < Struct.new(
      nil,
      :service_function_id,
      :service_function_name,
      :resources_added,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service function resources removed event.</p>
    # @!attribute service_function_id
    #   <p>The identifier of the service function.</p>
    #   @return [String]
    # @!attribute service_function_name
    #   <p>The name of the service function.</p>
    #   @return [String]
    # @!attribute resources_removed
    #   <p>The list of resource ARNs that were removed.</p>
    #   @return [Array<String>]
    class ServiceFunctionResourcesRemovedMetadata < Struct.new(
      nil,
      :service_function_id,
      :service_function_name,
      :resources_removed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service function updated event.</p>
    # @!attribute service_function_id
    #   <p>The identifier of the service function.</p>
    #   @return [String]
    # @!attribute service_function_name
    #   <p>The name of the service function.</p>
    #   @return [String]
    # @!attribute resources_added
    #   <p>The list of resource ARNs that were added.</p>
    #   @return [Array<String>]
    # @!attribute resources_removed
    #   <p>The list of resource ARNs that were removed.</p>
    #   @return [Array<String>]
    class ServiceFunctionUpdatedMetadata < Struct.new(
      nil,
      :service_function_id,
      :service_function_name,
      :resources_added,
      :resources_removed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service input sources updated event.</p>
    class ServiceInputSourcesUpdatedMetadata < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service policy associated event.</p>
    # @!attribute policy_name
    #   <p>The name of the associated policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute policy_owner_account_id
    #   <p>The account that owns the policy.</p>
    #   @return [String]
    # @!attribute policy_source
    #   <p>The source of the policy.</p> <ul> <li> <p>SELF — the policy belongs to the account that owns the service.</p> </li> <li> <p>CROSS_ACCOUNT — the policy belongs to another account and was shared with the organization.</p> </li> </ul>
    #   @return [String]
    class ServicePolicyAssociatedMetadata < Struct.new(
      nil,
      :policy_name,
      :policy_arn,
      :policy_owner_account_id,
      :policy_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service policy disassociated event.</p>
    # @!attribute policy_name
    #   <p>The name of the disassociated policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute policy_owner_account_id
    #   <p>The account that owns the policy.</p>
    #   @return [String]
    # @!attribute policy_source
    #   <p>The source of the policy.</p> <ul> <li> <p>SELF — the policy belongs to the account that owns the service.</p> </li> <li> <p>CROSS_ACCOUNT — the policy belongs to another account and was shared with the organization.</p> </li> </ul>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the policy was disassociated from the service.</p>
    #   @return [String]
    class ServicePolicyDisassociatedMetadata < Struct.new(
      nil,
      :policy_name,
      :policy_arn,
      :policy_owner_account_id,
      :policy_source,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Service quota exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a service by ID and name.</p>
    # @!attribute service_id
    #   <p>The identifier of the referenced service.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the referenced service.</p>
    #   @return [String]
    class ServiceReference < Struct.new(
      nil,
      :service_id,
      :service_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes changes to service references.</p>
    # @!attribute added
    #   <p>The list of service references that were added.</p>
    #   @return [Array<Types::ServiceReference>]
    # @!attribute removed
    #   <p>The list of service references that were removed.</p>
    #   @return [Array<Types::ServiceReference>]
    class ServiceReferenceChanges < Struct.new(
      nil,
      :added,
      :removed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for automatic report generation on a Service.</p>
    # @!attribute report_outputs
    #   <p>Output destinations for generated reports.</p>
    #   @return [Array<Types::ReportOutputConfiguration>]
    class ServiceReportConfiguration < Struct.new(
      nil,
      :report_outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a resource associated with a service.</p>
    # @!attribute resource_identifier
    #   <p>The identifier of the resource.</p>
    #   @return [String]
    # @!attribute input_source
    #   <p>The input source that discovered the resource.</p>
    #   @return [Types::InputSource]
    # @!attribute resource
    #   <p>The resource details.</p>
    #   @return [Types::Resource]
    class ServiceResource < Struct.new(
      nil,
      :resource_identifier,
      :input_source,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service resources associated event.</p>
    # @!attribute resource_count
    #   <p>The number of resources associated.</p>
    #   @return [Integer]
    # @!attribute resource_types
    #   <p>The types of resources associated.</p>
    #   @return [Array<String>]
    class ServiceResourcesAssociatedMetadata < Struct.new(
      nil,
      :resource_count,
      :resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service resources disassociated event.</p>
    # @!attribute resource_count
    #   <p>The number of resources disassociated.</p>
    #   @return [Integer]
    # @!attribute resource_types
    #   <p>The types of resources disassociated.</p>
    #   @return [Array<String>]
    class ServiceResourcesDisassociatedMetadata < Struct.new(
      nil,
      :resource_count,
      :resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a service.</p>
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute associated_systems
    #   <p>The systems associated with the service.</p>
    #   @return [Array<Types::AssociatedSystem>]
    # @!attribute regions
    #   <p>The Regions where the service operates.</p>
    #   @return [Array<String>]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute assessment_status
    #   <p>The current assessment status of the service.</p>
    #   @return [String]
    # @!attribute dev_ops_agent_status
    #   <p>The DevOps Agent connection status for the service. Valid values:</p> <ul> <li> <p>CONNECTING - The service is being connected to the Agent Space.</p> </li> <li> <p>CONNECTED - The service is connected to the Agent Space.</p> </li> <li> <p>DISCONNECTED - The service is not connected to an Agent Space.</p> </li> <li> <p>FAILED - The connection attempt failed.</p> </li> </ul>
    #   @return [String]
    # @!attribute dev_ops_agent_space_arn
    #   <p>The ARN of the DevOps Agent Agent Space linked to the service, when the service is linked to one.</p>
    #   @return [String]
    # @!attribute open_findings_count
    #   <p>The number of open findings.</p>
    #   @return [Integer]
    # @!attribute resolved_findings_count
    #   <p>The number of resolved findings.</p>
    #   @return [Integer]
    # @!attribute dependency_discovery
    #   <p>The dependency discovery configuration.</p>
    #   @return [Types::DependencyDiscoveryConfig]
    # @!attribute achievability
    #   <p>The achievability status of the service's resilience targets.</p>
    #   @return [Types::Achievability]
    # @!attribute organization_id
    #   <p>Displayed only if caller has access.</p>
    #   @return [String]
    # @!attribute ou_id
    #   <p>Displayed only if caller has access.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>Displayed only if caller has access.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the service was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the service was last updated.</p>
    #   @return [Time]
    class ServiceSummary < Struct.new(
      nil,
      :service_arn,
      :name,
      :associated_systems,
      :regions,
      :policy_arn,
      :assessment_status,
      :dev_ops_agent_status,
      :dev_ops_agent_space_arn,
      :open_findings_count,
      :resolved_findings_count,
      :dependency_discovery,
      :achievability,
      :organization_id,
      :ou_id,
      :account_id,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service system associated event.</p>
    # @!attribute system_name
    #   <p>The name of the associated system.</p>
    #   @return [String]
    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class ServiceSystemAssociatedMetadata < Struct.new(
      nil,
      :system_name,
      :system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service system disassociated event.</p>
    # @!attribute system_id
    #   <p>The identifier of the disassociated system.</p>
    #   @return [String]
    # @!attribute system_name
    #   <p>The name of the disassociated system.</p>
    #   @return [String]
    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class ServiceSystemDisassociatedMetadata < Struct.new(
      nil,
      :system_id,
      :system_name,
      :system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a service topology edge.</p>
    # @!attribute source_resource_identifier
    #   <p>The identifier of the source resource.</p>
    #   @return [String]
    # @!attribute destination_resource_identifier
    #   <p>The identifier of the destination resource.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The AWS Region of the source resource.</p>
    #   @return [String]
    # @!attribute destination_region
    #   <p>The AWS Region of the destination resource.</p>
    #   @return [String]
    # @!attribute source_account
    #   <p>The AWS account ID of the source resource.</p>
    #   @return [String]
    # @!attribute destination_account
    #   <p>The AWS account ID of the destination resource.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties of the topology edge.</p>
    #   @return [Array<Types::EdgePropertySummary>]
    class ServiceTopologyEdgeSummary < Struct.new(
      nil,
      :source_resource_identifier,
      :destination_resource_identifier,
      :source_region,
      :destination_region,
      :source_account,
      :destination_account,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a service workflow updated event.</p>
    # @!attribute service_function_id
    #   <p>The identifier of the service function.</p>
    #   @return [String]
    # @!attribute service_function_name
    #   <p>The name of the service function.</p>
    #   @return [String]
    class ServiceWorkflowUpdatedMetadata < Struct.new(
      nil,
      :service_function_id,
      :service_function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the effective availability SLO value and its source.</p>
    # @!attribute value
    #   <p>The availability SLO percentage value.</p>
    #   @return [Float]
    # @!attribute policy_name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute source
    #   <p>Indicates whether the value comes from the service's own account or a cross-account policy.</p>
    #   @return [String]
    class SloSource < Struct.new(
      nil,
      :value,
      :policy_name,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class StartDependencyInsightsRequest < Struct.new(
      nil,
      :service_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the dependency insights generation. Valid values:</p> <ul> <li> <p>IN_PROGRESS - Insights generation is in progress.</p> </li> <li> <p>COMPLETED - Insights generation completed successfully.</p> </li> <li> <p>FAILED - Insights generation failed. Call GetDependencyInsights for the error code and message.</p> </li> </ul>
    #   @return [String]
    class StartDependencyInsightsResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Idempotency token.</p>
    #   @return [String]
    class StartFailureModeAssessmentRequest < Struct.new(
      nil,
      :service_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p>The unique identifier of the started assessment.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute assessment_status
    #   <p>The status of the started assessment.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the assessment started.</p>
    #   @return [Time]
    class StartFailureModeAssessmentResponse < Struct.new(
      nil,
      :assessment_id,
      :service_arn,
      :assessment_status,
      :started_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_id
    #   <p>The identifier of the test to run.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    class StartTestRunRequest < Struct.new(
      nil,
      :test_id,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the started test run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the started test run.</p>
    #   @return [String]
    # @!attribute experiment_arns
    #   <p>The ARNs of the AWS Fault Injection Service (AWS FIS) experiments started for the run.</p>
    #   @return [Array<String>]
    class StartTestRunResponse < Struct.new(
      nil,
      :test_run_id,
      :status,
      :experiment_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A CloudWatch alarm that automatically stops a test run if it breaches its threshold.</p>
    # @!attribute source
    #   <p>The source of the stop condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the stop condition, such as the ARN of the CloudWatch alarm.</p>
    #   @return [String]
    class StopCondition < Struct.new(
      nil,
      :source,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the test run to stop.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    class StopTestRunRequest < Struct.new(
      nil,
      :test_run_id,
      :service_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The identifier of the stopped test run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the test run.</p>
    #   @return [String]
    class StopTestRunResponse < Struct.new(
      nil,
      :test_run_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a change from one string value to another.</p>
    # @!attribute old_value
    #   <p>The old value.</p>
    #   @return [String]
    # @!attribute new_value
    #   <p>The new value.</p>
    #   @return [String]
    class StringChange < Struct.new(
      nil,
      :old_value,
      :new_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a success criteria alarm by its ARN.</p>
    # @!attribute alarm_arn
    #   <p>The ARN of the CloudWatch alarm.</p>
    #   @return [String]
    class SuccessCriteriaAlarmInput < Struct.new(
      nil,
      :alarm_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a configured success criteria alarm.</p>
    # @!attribute alarm_arn
    #   <p>The ARN of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute alarm_name
    #   <p>The name of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID that owns the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the source was configured.</p>
    #   @return [Time]
    class SuccessCriteriaAlarmSummary < Struct.new(
      nil,
      :alarm_arn,
      :alarm_name,
      :region,
      :account_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a system in Resilience Hub. A system is a logical grouping of services.</p>
    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute system_id
    #   <p>System ID for cross-account use without exposing account structure.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute sharing_enabled
    #   <p>Indicates whether cross-account sharing is enabled.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_id
    #   <p>KMS key identifier — accepts key ID, key ARN, alias name, or alias ARN.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The AWS Organizations identifier for the system.</p>
    #   @return [String]
    # @!attribute ou_id
    #   <p>The organizational unit (OU) identifier for the system.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the system was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the system was last updated.</p>
    #   @return [Time]
    class System < Struct.new(
      nil,
      :system_arn,
      :system_id,
      :name,
      :description,
      :sharing_enabled,
      :tags,
      :kms_key_id,
      :organization_id,
      :ou_id,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a system created event.</p>
    class SystemCreatedMetadata < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a system deleted event.</p>
    class SystemDeletedMetadata < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an event in the system event log.</p>
    # @!attribute event_id
    #   <p>The unique identifier of the event.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp of the event.</p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of the event.</p>
    #   @return [String]
    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute actor
    #   <p>The actor that triggered the event.</p>
    #   @return [Types::EventActor]
    # @!attribute event_details
    #   <p>The details of the event.</p>
    #   @return [Types::SystemEventDetails]
    class SystemEvent < Struct.new(
      nil,
      :event_id,
      :timestamp,
      :event_type,
      :system_arn,
      :actor,
      :event_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details of a system event.</p>
    # @!attribute title
    #   <p>The title of the event.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event.</p>
    #   @return [String]
    # @!attribute event_metadata
    #   <p>Type-specific metadata for each system event type.</p>
    #   @return [Types::SystemEventMetadata]
    class SystemEventDetails < Struct.new(
      nil,
      :title,
      :description,
      :event_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Type-specific metadata for each system event type.</p>
    # @!attribute system_created
    #   <p>Metadata for a system created event.</p>
    #   @return [Types::SystemCreatedMetadata]
    # @!attribute system_deleted
    #   <p>Metadata for a system deleted event.</p>
    #   @return [Types::SystemDeletedMetadata]
    # @!attribute system_user_journey_created
    #   <p>Metadata for a system user journey created event.</p>
    #   @return [Types::SystemUserJourneyCreatedMetadata]
    # @!attribute system_user_journey_updated
    #   <p>Metadata for a system user journey updated event.</p>
    #   @return [Types::SystemUserJourneyUpdatedMetadata]
    # @!attribute system_user_journey_deleted
    #   <p>Metadata for a system user journey deleted event.</p>
    #   @return [Types::SystemUserJourneyDeletedMetadata]
    # @!attribute system_service_associated
    #   <p>Metadata for a system service associated event.</p>
    #   @return [Types::SystemServiceAssociatedMetadata]
    # @!attribute system_service_disassociated
    #   <p>Metadata for a system service disassociated event.</p>
    #   @return [Types::SystemServiceDisassociatedMetadata]
    # @!attribute system_policy_associated
    #   <p>Metadata for a system policy associated event.</p>
    #   @return [Types::SystemPolicyAssociatedMetadata]
    # @!attribute system_policy_disassociated
    #   <p>Metadata for a system policy disassociated event.</p>
    #   @return [Types::SystemPolicyDisassociatedMetadata]
    class SystemEventMetadata < Struct.new(
      :system_created,
      :system_deleted,
      :system_user_journey_created,
      :system_user_journey_updated,
      :system_user_journey_deleted,
      :system_service_associated,
      :system_service_disassociated,
      :system_policy_associated,
      :system_policy_disassociated,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SystemCreated < SystemEventMetadata; end
      class SystemDeleted < SystemEventMetadata; end
      class SystemUserJourneyCreated < SystemEventMetadata; end
      class SystemUserJourneyUpdated < SystemEventMetadata; end
      class SystemUserJourneyDeleted < SystemEventMetadata; end
      class SystemServiceAssociated < SystemEventMetadata; end
      class SystemServiceDisassociated < SystemEventMetadata; end
      class SystemPolicyAssociated < SystemEventMetadata; end
      class SystemPolicyDisassociated < SystemEventMetadata; end
      class Unknown < SystemEventMetadata; end
    end

    # <p>Metadata for a system policy associated event.</p>
    # @!attribute policy_name
    #   <p>The name of the associated policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class SystemPolicyAssociatedMetadata < Struct.new(
      nil,
      :policy_name,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a system policy disassociated event.</p>
    # @!attribute policy_name
    #   <p>The name of the disassociated policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class SystemPolicyDisassociatedMetadata < Struct.new(
      nil,
      :policy_name,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a system service associated event.</p>
    # @!attribute service_name
    #   <p>The name of the associated service.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute user_journeys
    #   <p>The user journeys linking the service to the system.</p>
    #   @return [Array<String>]
    class SystemServiceAssociatedMetadata < Struct.new(
      nil,
      :service_name,
      :service_arn,
      :user_journeys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a system service disassociated event.</p>
    # @!attribute service_name
    #   <p>The name of the disassociated service.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute user_journeys_affected
    #   <p>The user journeys affected by the disassociation.</p>
    #   @return [Array<String>]
    # @!attribute comment
    #   <p>A comment about the disassociation.</p>
    #   @return [String]
    class SystemServiceDisassociatedMetadata < Struct.new(
      nil,
      :service_name,
      :service_arn,
      :user_journeys_affected,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a system.</p>
    # @!attribute system_id
    #   <p>System ID for cross-account use without exposing account structure.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute user_journeys_count
    #   <p>The number of user journeys in the system.</p>
    #   @return [Integer]
    # @!attribute services_count
    #   <p>The number of services in the system.</p>
    #   @return [Integer]
    # @!attribute organization_id
    #   <p>Displayed only if caller has access.</p>
    #   @return [String]
    # @!attribute ou_id
    #   <p>Displayed only if caller has access.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the system was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the system was last updated.</p>
    #   @return [Time]
    class SystemSummary < Struct.new(
      nil,
      :system_id,
      :name,
      :system_arn,
      :user_journeys_count,
      :services_count,
      :organization_id,
      :ou_id,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a system user journey created event.</p>
    # @!attribute user_journey_name
    #   <p>The name of the created user journey.</p>
    #   @return [String]
    # @!attribute associated_services
    #   <p>The services associated with the created user journey.</p>
    #   @return [Array<Types::ServiceReference>]
    class SystemUserJourneyCreatedMetadata < Struct.new(
      nil,
      :user_journey_name,
      :associated_services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a system user journey deleted event.</p>
    # @!attribute user_journey_name
    #   <p>The name of the deleted user journey.</p>
    #   @return [String]
    # @!attribute associated_services_at_deletion
    #   <p>The services that were associated at the time of deletion.</p>
    #   @return [Array<Types::ServiceReference>]
    class SystemUserJourneyDeletedMetadata < Struct.new(
      nil,
      :user_journey_name,
      :associated_services_at_deletion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a system user journey updated event.</p>
    # @!attribute user_journey_name
    #   <p>The name of the updated user journey.</p>
    #   @return [String]
    # @!attribute changes
    #   <p>The changes made to the user journey.</p>
    #   @return [Types::UserJourneyChanges]
    class SystemUserJourneyUpdatedMetadata < Struct.new(
      nil,
      :user_journey_name,
      :changes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Resource tags.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an effective RTO or RPO value and its source.</p>
    # @!attribute value
    #   <p>The RTO or RPO value in minutes.</p>
    #   @return [Integer]
    # @!attribute policy_name
    #   <p>Resource name (used in ARN — no spaces allowed).</p>
    #   @return [String]
    # @!attribute source
    #   <p>Indicates whether the value comes from the service's own account or a cross-account policy.</p>
    #   @return [String]
    class TargetSource < Struct.new(
      nil,
      :value,
      :policy_name,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a test created for a service by configuring a test template.</p>
    # @!attribute test_id
    #   <p>The unique identifier of the test.</p>
    #   @return [String]
    # @!attribute test_template_arn
    #   <p>The ARN of the test template the test was created from.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the test.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The fault actions the test runs.</p>
    #   @return [Array<Types::TestAction>]
    # @!attribute logging_configuration
    #   <p>The logging configuration for the test.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute stop_conditions
    #   <p>The stop conditions for the test.</p>
    #   @return [Array<Types::StopCondition>]
    # @!attribute role_name
    #   <p>The name of the IAM execution role used to run the test.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameter values configured for the test.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute total_test_runs
    #   <p>The total number of runs of the test.</p>
    #   @return [Integer]
    # @!attribute successful_test_runs
    #   <p>The number of successful runs of the test.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The timestamp when the test was created.</p>
    #   @return [Time]
    class Test < Struct.new(
      nil,
      :test_id,
      :test_template_arn,
      :service_arn,
      :name,
      :actions,
      :logging_configuration,
      :stop_conditions,
      :role_name,
      :parameters,
      :total_test_runs,
      :successful_test_runs,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a fault action that a test runs, along with the resource type it targets.</p>
    # @!attribute action_id
    #   <p>The identifier of the fault action.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the fault action.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type that the action targets.</p>
    #   @return [String]
    class TestAction < Struct.new(
      nil,
      :action_id,
      :description,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single run of a test. Configuration is snapshotted from the test and service at the time the run is started.</p>
    # @!attribute test_run_id
    #   <p>The unique identifier of the test run.</p>
    #   @return [String]
    # @!attribute test_id
    #   <p>The identifier of the test that was run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the test run.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the test run started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the test run ended.</p>
    #   @return [Time]
    # @!attribute experiments
    #   <p>The AWS Fault Injection Service (AWS FIS) experiments run as part of the test run.</p>
    #   @return [Array<Types::ExperimentDetails>]
    # @!attribute event_count
    #   <p>The number of events recorded for the test run. Use ListTestRunEvents to retrieve the details.</p>
    #   @return [Integer]
    # @!attribute parameters
    #   <p>The parameter values used for the test run.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute error_message
    #   <p>A human-readable reason for test run failure. Only present when the status is FAILED or ERROR.</p>
    #   @return [String]
    # @!attribute stop_conditions
    #   <p>The stop conditions snapshotted from the test when the run was started.</p>
    #   @return [Array<Types::StopCondition>]
    # @!attribute logging_configuration
    #   <p>The logging configuration snapshotted from the test when the run was started.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute role_name
    #   <p>The IAM execution role name snapshotted from the test when the run was started.</p>
    #   @return [String]
    # @!attribute test_template_arn
    #   <p>The ARN of the test template snapshotted from the test when the run was started.</p>
    #   @return [String]
    # @!attribute report_configuration
    #   <p>The report configuration snapshotted from the service when the run was started.</p>
    #   @return [Types::TestRunReportConfiguration]
    # @!attribute policy
    #   <p>The resilience policy snapshotted from the service when the run was started.</p>
    #   @return [Types::TestRunPolicySnapshot]
    # @!attribute report_output
    #   <p>The report generation result for the test run. Present after report generation completes or fails.</p>
    #   @return [Types::ReportGenerationResult]
    # @!attribute region_switch_plan_arn
    #   <p>The ARN of the ARC Region switch plan associated with the test run.</p>
    #   @return [String]
    # @!attribute region_switch_execution_id
    #   <p>The identifier of the ARC Region switch execution detected during the test run.</p>
    #   @return [String]
    # @!attribute permission_model
    #   <p>The permission model snapshotted from the service when the run was started.</p>
    #   @return [Types::PermissionModel]
    # @!attribute regions
    #   <p>The Regions snapshotted from the service when the run was started.</p>
    #   @return [Array<String>]
    # @!attribute account_targeting
    #   <p>Indicates whether the test run targets resources in a single AWS account or across multiple accounts.</p>
    #   @return [String]
    # @!attribute dev_ops_agent_investigation
    #   <p>The DevOps Agent investigation result for the test run, present when the integration is enabled for the service.</p>
    #   @return [Types::DevOpsAgentInvestigation]
    class TestRun < Struct.new(
      nil,
      :test_run_id,
      :test_id,
      :status,
      :service_arn,
      :started_at,
      :ended_at,
      :experiments,
      :event_count,
      :parameters,
      :error_message,
      :stop_conditions,
      :logging_configuration,
      :role_name,
      :test_template_arn,
      :report_configuration,
      :policy,
      :report_output,
      :region_switch_plan_arn,
      :region_switch_execution_id,
      :permission_model,
      :regions,
      :account_targeting,
      :dev_ops_agent_investigation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a dependency that a test run blocked, as captured when the run started.</p>
    # @!attribute dependency_id
    #   <p>The unique identifier of the dependency. Absent when the dependency was entered manually and was not part of dependency discovery.</p>
    #   @return [String]
    # @!attribute dependency_name
    #   <p>The name of the dependency.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS name of the dependency that the test run blocked.</p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The criticality classification of the dependency when the run started. A dependency that was not discovered has the UNKNOWN criticality.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The origin of the dependency. A discovered dependency was found by dependency discovery; a manual dependency was entered when the run started.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the dependency.</p>
    #   @return [String]
    # @!attribute source_regions
    #   <p>The source Regions from which the dependency was detected.</p>
    #   @return [Array<String>]
    # @!attribute provider
    #   <p>The provider of the dependency.</p>
    #   @return [String]
    class TestRunDependencySummary < Struct.new(
      nil,
      :dependency_id,
      :dependency_name,
      :dns_name,
      :criticality,
      :source,
      :location,
      :source_regions,
      :provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single event in a test run's timeline.</p>
    # @!attribute event_id
    #   <p>The unique identifier of the event.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of the event, such as action_started, action_completed, or rto_recovery_detected.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable description of what happened.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp when the event occurred.</p>
    #   @return [Time]
    # @!attribute attributes
    #   <p>Machine-parseable key-value attributes for the event.</p>
    #   @return [Hash<String, String>]
    class TestRunEvent < Struct.new(
      nil,
      :event_id,
      :event_type,
      :message,
      :timestamp,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an observability alarm snapshot captured for a test run.</p>
    # @!attribute alarm_arn
    #   <p>The ARN of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute alarm_name
    #   <p>The name of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID that owns the CloudWatch alarm.</p>
    #   @return [String]
    class TestRunObservabilityAlarmSummary < Struct.new(
      nil,
      :alarm_arn,
      :alarm_name,
      :region,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of the resilience policy captured onto a test run from the service when the run was started.</p>
    # @!attribute policy_arn
    #   <p>The ARN of the policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute availability_slo
    #   <p>The availability SLO targets.</p>
    #   @return [Types::AvailabilitySlo]
    # @!attribute multi_az
    #   <p>The multi-AZ resilience targets.</p>
    #   @return [Types::MultiAzTargets]
    # @!attribute multi_region
    #   <p>The multi-Region resilience targets.</p>
    #   @return [Types::MultiRegionTargets]
    # @!attribute data_recovery
    #   <p>The data recovery targets.</p>
    #   @return [Types::DataRecoveryTargets]
    class TestRunPolicySnapshot < Struct.new(
      nil,
      :policy_arn,
      :name,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A snapshot of the report configuration captured onto a test run from the service when the run was started.</p>
    # @!attribute report_output
    #   <p>The output destinations for generated reports.</p>
    #   @return [Array<Types::ReportOutputConfiguration>]
    class TestRunReportConfiguration < Struct.new(
      nil,
      :report_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A state-change event observed for a test run monitoring source.</p>
    # @!attribute timestamp
    #   <p>The timestamp when the event occurred.</p>
    #   @return [Time]
    # @!attribute source_arn
    #   <p>The ARN of the monitoring source the event belongs to.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of the event. ALARM indicates an event from a CloudWatch alarm source; the detail member carries either the alarm state change or a collection error.</p>
    #   @return [String]
    # @!attribute detail
    #   <p>The event payload.</p>
    #   @return [Types::TestRunSourceEventDetail]
    class TestRunSourceEvent < Struct.new(
      nil,
      :timestamp,
      :source_arn,
      :event_type,
      :detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The payload of a test run source event. Exactly one member is set.</p>
    # @!attribute alarm_state_change
    #   <p>A CloudWatch alarm state change.</p>
    #   @return [Types::AlarmStateChangeDetail]
    # @!attribute error
    #   <p>An error that prevented event collection from the source.</p>
    #   @return [Types::TestRunSourceEventError]
    class TestRunSourceEventDetail < Struct.new(
      :alarm_state_change,
      :error,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AlarmStateChange < TestRunSourceEventDetail; end
      class Error < TestRunSourceEventDetail; end
      class Unknown < TestRunSourceEventDetail; end
    end

    # <p>Describes an error that prevented event collection from a test run monitoring source.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A human-readable description of the error.</p>
    #   @return [String]
    class TestRunSourceEventError < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A monitoring-source snapshot captured for a test run. Exactly one member is set.</p>
    # @!attribute success_criteria_alarm
    #   <p>A success criteria alarm snapshot captured for the test run.</p>
    #   @return [Types::TestRunSuccessCriteriaAlarmSummary]
    # @!attribute observability_alarm
    #   <p>An observability alarm snapshot captured for the test run.</p>
    #   @return [Types::TestRunObservabilityAlarmSummary]
    class TestRunSourceSummary < Struct.new(
      :success_criteria_alarm,
      :observability_alarm,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SuccessCriteriaAlarm < TestRunSourceSummary; end
      class ObservabilityAlarm < TestRunSourceSummary; end
      class Unknown < TestRunSourceSummary; end
    end

    # <p>Summary information about a success criteria alarm snapshot captured for a test run.</p>
    # @!attribute alarm_arn
    #   <p>The ARN of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute alarm_name
    #   <p>The name of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region of the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID that owns the CloudWatch alarm.</p>
    #   @return [String]
    # @!attribute outcome
    #   <p>The evaluation outcome of the source. Absent while the source has not yet been evaluated; set to the terminal outcome afterwards.</p>
    #   @return [String]
    # @!attribute outcome_reason
    #   <p>A human-readable reason for the outcome.</p>
    #   @return [String]
    class TestRunSuccessCriteriaAlarmSummary < Struct.new(
      nil,
      :alarm_arn,
      :alarm_name,
      :region,
      :account_id,
      :outcome,
      :outcome_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a test run.</p>
    # @!attribute test_run_id
    #   <p>The unique identifier of the test run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the test run.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the test run started.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the test run ended.</p>
    #   @return [Time]
    # @!attribute test_template_arn
    #   <p>The ARN of the test template the test run was based on.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test run belongs to.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A human-readable reason for test run failure. Only present when the status is FAILED or ERROR.</p>
    #   @return [String]
    # @!attribute account_targeting
    #   <p>Indicates whether the test run targets resources in a single AWS account or across multiple accounts.</p>
    #   @return [String]
    class TestRunSummary < Struct.new(
      nil,
      :test_run_id,
      :status,
      :started_at,
      :ended_at,
      :test_template_arn,
      :service_arn,
      :error_message,
      :account_targeting,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a monitoring source to add to or remove from a test. Exactly one member is set.</p>
    # @!attribute success_criteria_alarm
    #   <p>A success criteria alarm that determines whether the test passes or fails.</p>
    #   @return [Types::SuccessCriteriaAlarmInput]
    # @!attribute observability_alarm
    #   <p>An observability alarm included for visibility only.</p>
    #   @return [Types::ObservabilityAlarmInput]
    class TestSourceInput < Struct.new(
      :success_criteria_alarm,
      :observability_alarm,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SuccessCriteriaAlarm < TestSourceInput; end
      class ObservabilityAlarm < TestSourceInput; end
      class Unknown < TestSourceInput; end
    end

    # <p>A configured monitoring source returned by ListTestSources. Exactly one member is set.</p>
    # @!attribute success_criteria_alarm
    #   <p>A configured success criteria alarm.</p>
    #   @return [Types::SuccessCriteriaAlarmSummary]
    # @!attribute observability_alarm
    #   <p>A configured observability alarm.</p>
    #   @return [Types::ObservabilityAlarmSummary]
    class TestSourceSummary < Struct.new(
      :success_criteria_alarm,
      :observability_alarm,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SuccessCriteriaAlarm < TestSourceSummary; end
      class ObservabilityAlarm < TestSourceSummary; end
      class Unknown < TestSourceSummary; end
    end

    # <p>Contains summary information about a test.</p>
    # @!attribute test_id
    #   <p>The unique identifier of the test.</p>
    #   @return [String]
    # @!attribute test_template_arn
    #   <p>The ARN of the test template the test was created from.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    # @!attribute total_test_runs
    #   <p>The total number of runs of the test.</p>
    #   @return [Integer]
    # @!attribute successful_test_runs
    #   <p>The number of successful runs of the test.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The timestamp when the test was created.</p>
    #   @return [Time]
    class TestSummary < Struct.new(
      nil,
      :test_id,
      :test_template_arn,
      :service_arn,
      :total_test_runs,
      :successful_test_runs,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A pre-configured, AWS recommended test that defines which resilience capability to validate, the fault actions it runs, and the parameters it accepts.</p>
    # @!attribute test_template_arn
    #   <p>The ARN of the test template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the test template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the test template.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters the test template accepts.</p>
    #   @return [Array<Types::TestTemplateParameter>]
    # @!attribute actions
    #   <p>The fault actions the test template runs.</p>
    #   @return [Array<Types::TestAction>]
    class TestTemplate < Struct.new(
      nil,
      :test_template_arn,
      :name,
      :description,
      :parameters,
      :actions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a parameter accepted by a test template.</p>
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the parameter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the parameter.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Indicates whether the parameter is required.</p>
    #   @return [Boolean]
    # @!attribute default_value
    #   <p>The default value of the parameter.</p>
    #   @return [String]
    # @!attribute max_values
    #   <p>The maximum number of values the parameter accepts.</p>
    #   @return [Integer]
    class TestTemplateParameter < Struct.new(
      nil,
      :name,
      :description,
      :type,
      :required,
      :default_value,
      :max_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a test template.</p>
    # @!attribute test_template_arn
    #   <p>The ARN of the test template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the test template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the test template.</p>
    #   @return [String]
    class TestTemplateSummary < Struct.new(
      nil,
      :test_template_arn,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A testing recommendation to address a finding.</p>
    # @!attribute suggested_changes
    #   <p>The list of suggested testing changes.</p>
    #   @return [Array<String>]
    class TestingRecommendation < Struct.new(
      nil,
      :suggested_changes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Too many requests — rate limit exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute assertion_id
    #   <p>The unique identifier of the assertion to update.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The updated text content of the assertion.</p>
    #   @return [String]
    class UpdateAssertionRequest < Struct.new(
      nil,
      :service_arn,
      :assertion_id,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute assertion
    #   <p>The updated assertion.</p>
    #   @return [Types::Assertion]
    class UpdateAssertionResponse < Struct.new(
      nil,
      :assertion,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute dependency_id
    #   <p>The identifier of the dependency to update.</p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The updated criticality level of the dependency.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment about the dependency.</p>
    #   @return [String]
    class UpdateDependencyRequest < Struct.new(
      nil,
      :service_arn,
      :dependency_id,
      :criticality,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dependency_id
    #   <p>The identifier of the updated dependency.</p>
    #   @return [String]
    # @!attribute dependency_name
    #   <p>The name of the updated dependency.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the dependency.</p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The criticality level of the dependency.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>The comment about the dependency.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The provider of the dependency.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the dependency was updated.</p>
    #   @return [Time]
    class UpdateDependencyResponse < Struct.new(
      nil,
      :dependency_id,
      :dependency_name,
      :location,
      :criticality,
      :comment,
      :provider,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding_id
    #   <p>The identifier of the finding to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status for the finding.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment about the finding update.</p>
    #   @return [String]
    class UpdateFailureModeFindingRequest < Struct.new(
      nil,
      :finding_id,
      :status,
      :service_arn,
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute finding
    #   <p>The updated finding.</p>
    #   @return [Types::Finding]
    class UpdateFailureModeFindingResponse < Struct.new(
      nil,
      :finding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description for services and policies.</p>
    #   @return [String]
    # @!attribute availability_slo
    #   <p>The updated availability SLO for the policy.</p>
    #   @return [Types::AvailabilitySlo]
    # @!attribute multi_az
    #   <p>The updated multi-AZ disaster recovery targets for the policy.</p>
    #   @return [Types::MultiAzTargets]
    # @!attribute multi_region
    #   <p>The updated multi-Region disaster recovery targets for the policy.</p>
    #   @return [Types::MultiRegionTargets]
    # @!attribute data_recovery
    #   <p>The updated data recovery targets for the policy.</p>
    #   @return [Types::DataRecoveryTargets]
    # @!attribute sharing_enabled
    #   <p>Specifies whether cross-account sharing is enabled for the policy. Disabling sharing stops member services from using the policy.</p>
    #   @return [Boolean]
    class UpdatePolicyRequest < Struct.new(
      nil,
      :policy_arn,
      :description,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery,
      :sharing_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The updated policy.</p>
    #   @return [Types::Policy]
    class UpdatePolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute service_function_id
    #   <p>The identifier of the service function to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute criticality
    #   <p>The updated criticality level of the service function.</p>
    #   @return [String]
    class UpdateServiceFunctionRequest < Struct.new(
      nil,
      :service_arn,
      :service_function_id,
      :name,
      :description,
      :criticality,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_function
    #   <p>The updated service function.</p>
    #   @return [Types::ServiceFunction]
    class UpdateServiceFunctionResponse < Struct.new(
      nil,
      :service_function,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description for services and policies.</p>
    #   @return [String]
    # @!attribute associated_systems
    #   <p>The updated systems to associate with the service.</p>
    #   @return [Array<Types::AssociatedSystem>]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute regions
    #   <p>The updated AWS Regions where the service operates.</p>
    #   @return [Array<String>]
    # @!attribute permission_model
    #   <p>The updated permission model for the service.</p>
    #   @return [Types::PermissionModel]
    # @!attribute dependency_discovery
    #   <p>Caller-settable values for dependency discovery. INITIALIZING is system-managed.</p>
    #   @return [String]
    # @!attribute report_configuration
    #   <p>Configuration for automatic report generation on a Service.</p>
    #   @return [Types::ServiceReportConfiguration]
    # @!attribute dev_ops_agent_configuration
    #   <p>The optional DevOps Agent integration configuration to set, replace, or disconnect for the service. If you omit this field, the existing DevOps Agent linkage stays unchanged.</p>
    #   @return [Types::DevOpsAgentConfiguration]
    class UpdateServiceRequest < Struct.new(
      nil,
      :service_arn,
      :description,
      :associated_systems,
      :policy_arn,
      :regions,
      :permission_model,
      :dependency_discovery,
      :report_configuration,
      :dev_ops_agent_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The updated service.</p>
    #   @return [Types::Service]
    class UpdateServiceResponse < Struct.new(
      nil,
      :service,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute sharing_enabled
    #   <p>Whether cross-account sharing is enabled for the system.</p>
    #   @return [Boolean]
    class UpdateSystemRequest < Struct.new(
      nil,
      :system_arn,
      :description,
      :sharing_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system
    #   <p>The updated system.</p>
    #   @return [Types::System]
    class UpdateSystemResponse < Struct.new(
      nil,
      :system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_id
    #   <p>The identifier of the test to update.</p>
    #   @return [String]
    # @!attribute service_arn
    #   <p>The ARN of the service the test belongs to.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The updated logging configuration for the test.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute stop_conditions
    #   <p>The updated stop conditions for the test.</p>
    #   @return [Array<Types::StopCondition>]
    # @!attribute role_name
    #   <p>The updated IAM execution role name.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The updated parameter values for the test.</p>
    #   @return [Hash<String, Array<String>>]
    class UpdateTestRequest < Struct.new(
      nil,
      :test_id,
      :service_arn,
      :logging_configuration,
      :stop_conditions,
      :role_name,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test
    #   <p>The updated test.</p>
    #   @return [Types::Test]
    class UpdateTestResponse < Struct.new(
      nil,
      :test,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute system_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute user_journey_id
    #   <p>The identifier of the user journey to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    class UpdateUserJourneyRequest < Struct.new(
      nil,
      :system_arn,
      :user_journey_id,
      :name,
      :description,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_journey
    #   <p>The updated user journey.</p>
    #   @return [Types::UserJourney]
    class UpdateUserJourneyResponse < Struct.new(
      nil,
      :user_journey,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a user journey that defines a critical path through a system.</p>
    # @!attribute user_journey_id
    #   <p>The unique identifier of the user journey.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Resource description.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>ARN identifier.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the user journey was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the user journey was last updated.</p>
    #   @return [Time]
    class UserJourney < Struct.new(
      nil,
      :user_journey_id,
      :name,
      :description,
      :policy_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes changes made to a user journey.</p>
    # @!attribute journey_description
    #   <p>Changes to the user journey description.</p>
    #   @return [Types::StringChange]
    # @!attribute associated_services
    #   <p>Changes to the services associated with the user journey.</p>
    #   @return [Types::ServiceReferenceChanges]
    class UserJourneyChanges < Struct.new(
      nil,
      :journey_description,
      :associated_services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a user journey.</p>
    # @!attribute user_journey_id
    #   <p>The unique identifier of the user journey.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Entity label (not part of ARN — spaces allowed).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the user journey was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the user journey was last updated.</p>
    #   @return [Time]
    class UserJourneySummary < Struct.new(
      nil,
      :user_journey_id,
      :name,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation error — invalid input parameters.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a field that failed validation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The validation error message for the field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
