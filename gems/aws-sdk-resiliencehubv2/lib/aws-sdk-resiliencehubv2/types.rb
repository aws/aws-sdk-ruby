# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Resiliencehubv2
  module Types

    # Access denied — caller lacks required permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the achievability status of a service's resilience targets
    # based on the most recent assessment.
    #
    # @!attribute [rw] availability_slo
    #   The achievability status of the availability SLO target for the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] multi_az_rto_rpo
    #   The achievability status of the multi-AZ RTO and RPO targets for the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] multi_region_rto_rpo
    #   The achievability status of the multi-Region RTO and RPO targets for
    #   the service.
    #   @return [String]
    #
    # @!attribute [rw] data_recovery_time_between_backups
    #   The achievability status of the data recovery time between backups
    #   for the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/Achievability AWS API Documentation
    #
    class Achievability < Struct.new(
      :availability_slo,
      :multi_az_rto_rpo,
      :multi_region_rto_rpo,
      :data_recovery_time_between_backups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a resilience assertion for a service.
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] assertion_id
    #   The unique identifier of the assertion.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text content of the assertion.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the assertion, indicating whether it was AI-generated
    #   or created by a user.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the assertion was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the assertion was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/Assertion AWS API Documentation
    #
    class Assertion < Struct.new(
      :service_arn,
      :assertion_id,
      :text,
      :source,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for an assertion created event.
    #
    # @!attribute [rw] assertion_id
    #   The unique identifier of the created assertion.
    #   @return [String]
    #
    # @!attribute [rw] assertion_name
    #   The name of the created assertion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/AssertionCreatedMetadata AWS API Documentation
    #
    class AssertionCreatedMetadata < Struct.new(
      :assertion_id,
      :assertion_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for an assertion deleted event.
    #
    # @!attribute [rw] assertion_id
    #   The unique identifier of the deleted assertion.
    #   @return [String]
    #
    # @!attribute [rw] assertion_name
    #   The name of the deleted assertion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/AssertionDeletedMetadata AWS API Documentation
    #
    class AssertionDeletedMetadata < Struct.new(
      :assertion_id,
      :assertion_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for an assertion updated event.
    #
    # @!attribute [rw] assertion_id
    #   The unique identifier of the updated assertion.
    #   @return [String]
    #
    # @!attribute [rw] assertion_name
    #   The name of the updated assertion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/AssertionUpdatedMetadata AWS API Documentation
    #
    class AssertionUpdatedMetadata < Struct.new(
      :assertion_id,
      :assertion_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the cost of running a failure mode assessment.
    #
    # @!attribute [rw] amount
    #   The cost amount for the assessment.
    #   @return [Float]
    #
    # @!attribute [rw] currency
    #   The currency of the assessment cost.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/AssessmentCost AWS API Documentation
    #
    class AssessmentCost < Struct.new(
      :amount,
      :currency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a failure mode assessment.
    #
    # @!attribute [rw] assessment_id
    #   The unique identifier of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   The current status of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_step
    #   The current step of the assessment process.
    #   @return [String]
    #
    # @!attribute [rw] total_findings
    #   The total number of findings generated by the assessment.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the assessment started.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the assessment ended.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   A message describing the error if the assessment failed.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code if the assessment failed.
    #   @return [String]
    #
    # @!attribute [rw] assessment_cost
    #   The cost of the assessment.
    #   @return [Types::AssessmentCost]
    #
    # @!attribute [rw] billable_assessment_unit_count
    #   The number of billable assessment units consumed by the assessment.
    #   @return [Integer]
    #
    # @!attribute [rw] achievability
    #   The achievability results from the assessment.
    #   @return [Types::Achievability]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/AssessmentSummary AWS API Documentation
    #
    class AssessmentSummary < Struct.new(
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
      :achievability)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a system associated with a service.
    #
    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] system_name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] user_journey_ids
    #   The list of user journey identifiers that associate this system with
    #   the service.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/AssociatedSystem AWS API Documentation
    #
    class AssociatedSystem < Struct.new(
      :system_arn,
      :system_name,
      :user_journey_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the availability service level objective (SLO) for a
    # resilience policy.
    #
    # @!attribute [rw] target
    #   The target availability percentage, expressed as a value between 0
    #   and 100.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/AvailabilitySlo AWS API Documentation
    #
    class AvailabilitySlo < Struct.new(
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Conflict — resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text content of the assertion.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateAssertionRequest AWS API Documentation
    #
    class CreateAssertionRequest < Struct.new(
      :service_arn,
      :text,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assertion
    #   The created assertion.
    #   @return [Types::Assertion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateAssertionResponse AWS API Documentation
    #
    class CreateAssertionResponse < Struct.new(
      :assertion)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration
    #   Resource configuration for an input source. Provide exactly one
    #   field.
    #   @return [Types::ResourceConfiguration]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateInputSourceRequest AWS API Documentation
    #
    class CreateInputSourceRequest < Struct.new(
      :service_arn,
      :resource_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] input_source_id
    #   The unique identifier assigned to the created input source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateInputSourceResponse AWS API Documentation
    #
    class CreateInputSourceResponse < Struct.new(
      :service_arn,
      :input_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description for services and policies.
    #   @return [String]
    #
    # @!attribute [rw] availability_slo
    #   The availability SLO for the resilience policy.
    #   @return [Types::AvailabilitySlo]
    #
    # @!attribute [rw] multi_az
    #   The multi-AZ disaster recovery targets for the resilience policy.
    #   @return [Types::MultiAzTargets]
    #
    # @!attribute [rw] multi_region
    #   The multi-Region disaster recovery targets for the resilience
    #   policy.
    #   @return [Types::MultiRegionTargets]
    #
    # @!attribute [rw] data_recovery
    #   The data recovery targets for the resilience policy.
    #   @return [Types::DataRecoveryTargets]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreatePolicyRequest AWS API Documentation
    #
    class CreatePolicyRequest < Struct.new(
      :name,
      :description,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery,
      :kms_key_id,
      :tags,
      :client_token)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The created resilience policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreatePolicyResponse AWS API Documentation
    #
    class CreatePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] report_type
    #   The type of report to generate.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateReportRequest AWS API Documentation
    #
    class CreateReportRequest < Struct.new(
      :service_arn,
      :report_type,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_generation_result
    #   The result of the report generation request.
    #   @return [Types::ReportGenerationResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateReportResponse AWS API Documentation
    #
    class CreateReportResponse < Struct.new(
      :report_generation_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Entity label (not part of ARN — spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] criticality
    #   The criticality level of the service function.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateServiceFunctionRequest AWS API Documentation
    #
    class CreateServiceFunctionRequest < Struct.new(
      :name,
      :service_arn,
      :description,
      :criticality,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function to associate resources with.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The list of resources to associate with the service function.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateServiceFunctionResourcesRequest AWS API Documentation
    #
    class CreateServiceFunctionResourcesRequest < Struct.new(
      :service_arn,
      :service_function_id,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The list of resources that were associated.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateServiceFunctionResourcesResponse AWS API Documentation
    #
    class CreateServiceFunctionResourcesResponse < Struct.new(
      :service_arn,
      :service_function_id,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_function
    #   The created service function.
    #   @return [Types::ServiceFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateServiceFunctionResponse AWS API Documentation
    #
    class CreateServiceFunctionResponse < Struct.new(
      :service_function)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description for services and policies.
    #   @return [String]
    #
    # @!attribute [rw] associated_systems
    #   The systems to associate with the service.
    #   @return [Array<Types::AssociatedSystem>]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The AWS Regions where the service operates.
    #   @return [Array<String>]
    #
    # @!attribute [rw] permission_model
    #   The permission model for the service.
    #   @return [Types::PermissionModel]
    #
    # @!attribute [rw] dependency_discovery
    #   Caller-settable values for dependency discovery. INITIALIZING is
    #   system-managed.
    #   @return [String]
    #
    # @!attribute [rw] report_configuration
    #   Configuration for automatic report generation on a Service.
    #   @return [Types::ServiceReportConfiguration]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateServiceRequest AWS API Documentation
    #
    class CreateServiceRequest < Struct.new(
      :name,
      :description,
      :associated_systems,
      :policy_arn,
      :regions,
      :permission_model,
      :dependency_discovery,
      :report_configuration,
      :kms_key_id,
      :tags,
      :client_token)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The created service.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateServiceResponse AWS API Documentation
    #
    class CreateServiceResponse < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] sharing_enabled
    #   Indicates whether cross-account sharing is enabled for the system.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateSystemRequest AWS API Documentation
    #
    class CreateSystemRequest < Struct.new(
      :name,
      :description,
      :sharing_enabled,
      :kms_key_id,
      :tags,
      :client_token)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] system
    #   The created system.
    #   @return [Types::System]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateSystemResponse AWS API Documentation
    #
    class CreateSystemResponse < Struct.new(
      :system)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Entity label (not part of ARN — spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateUserJourneyRequest AWS API Documentation
    #
    class CreateUserJourneyRequest < Struct.new(
      :system_arn,
      :name,
      :description,
      :policy_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_journey
    #   The created user journey.
    #   @return [Types::UserJourney]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CreateUserJourneyResponse AWS API Documentation
    #
    class CreateUserJourneyResponse < Struct.new(
      :user_journey)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a cross-account IAM role ARN and optional external ID.
    #
    # @!attribute [rw] cross_account_role_arn
    #   ARN of the IAM Role for the profile. Null if the permission profile
    #   is the 'Admin' profile.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID used for assuming the cross-account role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/CrossAccountRole AWS API Documentation
    #
    class CrossAccountRole < Struct.new(
      :cross_account_role_arn,
      :external_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines data recovery targets for a resilience policy.
    #
    # @!attribute [rw] time_between_backups_in_minutes
    #   The target time between backups, in minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DataRecoveryTargets AWS API Documentation
    #
    class DataRecoveryTargets < Struct.new(
      :time_between_backups_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] assertion_id
    #   The unique identifier of the assertion to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteAssertionRequest AWS API Documentation
    #
    class DeleteAssertionRequest < Struct.new(
      :service_arn,
      :assertion_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assertion_id
    #   The unique identifier of the deleted assertion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteAssertionResponse AWS API Documentation
    #
    class DeleteAssertionResponse < Struct.new(
      :assertion_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] input_source_id
    #   The identifier of the input source to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteInputSourceRequest AWS API Documentation
    #
    class DeleteInputSourceRequest < Struct.new(
      :service_arn,
      :input_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] input_source_id
    #   The identifier of the deleted input source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteInputSourceResponse AWS API Documentation
    #
    class DeleteInputSourceResponse < Struct.new(
      :service_arn,
      :input_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeletePolicyResponse AWS API Documentation
    #
    class DeletePolicyResponse < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteServiceFunctionRequest AWS API Documentation
    #
    class DeleteServiceFunctionRequest < Struct.new(
      :service_arn,
      :service_function_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function to remove resources from.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The list of resources to remove from the service function.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteServiceFunctionResourcesRequest AWS API Documentation
    #
    class DeleteServiceFunctionResourcesRequest < Struct.new(
      :service_arn,
      :service_function_id,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The list of resources that were removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteServiceFunctionResourcesResponse AWS API Documentation
    #
    class DeleteServiceFunctionResourcesResponse < Struct.new(
      :service_arn,
      :service_function_id,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_function_id
    #   The identifier of the deleted service function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteServiceFunctionResponse AWS API Documentation
    #
    class DeleteServiceFunctionResponse < Struct.new(
      :service_function_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteServiceRequest AWS API Documentation
    #
    class DeleteServiceRequest < Struct.new(
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteServiceResponse AWS API Documentation
    #
    class DeleteServiceResponse < Struct.new(
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteSystemRequest AWS API Documentation
    #
    class DeleteSystemRequest < Struct.new(
      :system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteSystemResponse AWS API Documentation
    #
    class DeleteSystemResponse < Struct.new(
      :system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] user_journey_id
    #   The identifier of the user journey to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteUserJourneyRequest AWS API Documentation
    #
    class DeleteUserJourneyRequest < Struct.new(
      :system_arn,
      :user_journey_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_journey_id
    #   The identifier of the deleted user journey.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DeleteUserJourneyResponse AWS API Documentation
    #
    class DeleteUserJourneyResponse < Struct.new(
      :user_journey_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for dependency discovery on a service.
    #
    # @!attribute [rw] status
    #   The current status of dependency discovery.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when dependency discovery was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] eligible_resource_count
    #   The count of resources eligible for dependency attribution.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   A status message for dependency discovery, displayed during the
    #   initialization state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DependencyDiscoveryConfig AWS API Documentation
    #
    class DependencyDiscoveryConfig < Struct.new(
      :status,
      :updated_at,
      :eligible_resource_count,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a discovered dependency.
    #
    # @!attribute [rw] dependency_id
    #   The unique identifier of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] dependency_name
    #   The name of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name associated with the dependency.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] last_detected_time
    #   The timestamp when the dependency was last detected.
    #   @return [Time]
    #
    # @!attribute [rw] source_regions
    #   The source Regions from which the dependency was detected.
    #   @return [Array<String>]
    #
    # @!attribute [rw] provider
    #   The provider of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] query_range
    #   The query range data for the dependency.
    #   @return [Types::QueryRange]
    #
    # @!attribute [rw] criticality
    #   The criticality level of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A user-provided comment about the dependency.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DependencySummary AWS API Documentation
    #
    class DependencySummary < Struct.new(
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
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the effective disaster recovery approach value for a service.
    #
    # @!attribute [rw] value
    #   The disaster recovery approach value.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Indicates whether the value comes from the service's own account or
    #   a cross-account policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/DisasterRecoverySource AWS API Documentation
    #
    class DisasterRecoverySource < Struct.new(
      :value,
      :policy_name,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains property information for a service topology edge.
    #
    # @!attribute [rw] topology_type
    #   The topology type of the edge.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   Human-readable relationship description. Only present for
    #   LLM-inferred edges.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/EdgePropertySummary AWS API Documentation
    #
    class EdgePropertySummary < Struct.new(
      :topology_type,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the effective resilience policy values for a service.
    #
    # @!attribute [rw] availability_slo
    #   The effective availability SLO value for the service.
    #   @return [Types::SloSource]
    #
    # @!attribute [rw] multi_az_rto
    #   The effective multi-AZ RTO value for the service, in minutes.
    #   @return [Types::TargetSource]
    #
    # @!attribute [rw] multi_az_rpo
    #   The effective multi-AZ RPO value for the service, in minutes.
    #   @return [Types::TargetSource]
    #
    # @!attribute [rw] multi_az_dr_approach
    #   The effective multi-AZ disaster recovery approach for the service.
    #   @return [Types::DisasterRecoverySource]
    #
    # @!attribute [rw] multi_region_rto
    #   The effective multi-Region RTO value for the service, in minutes.
    #   @return [Types::TargetSource]
    #
    # @!attribute [rw] multi_region_rpo
    #   The effective multi-Region RPO value for the service, in minutes.
    #   @return [Types::TargetSource]
    #
    # @!attribute [rw] multi_region_dr_approach
    #   The effective multi-Region disaster recovery approach for the
    #   service.
    #   @return [Types::DisasterRecoverySource]
    #
    # @!attribute [rw] data_recovery_time_between_backups
    #   The effective data recovery time between backups value for the
    #   service.
    #   @return [Types::TargetSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/EffectivePolicyValues AWS API Documentation
    #
    class EffectivePolicyValues < Struct.new(
      :availability_slo,
      :multi_az_rto,
      :multi_az_rpo,
      :multi_az_dr_approach,
      :multi_region_rto,
      :multi_region_rpo,
      :multi_region_dr_approach,
      :data_recovery_time_between_backups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an Amazon EKS cluster and its namespaces as an input source
    # for resource discovery.
    #
    # @!attribute [rw] cluster_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   The list of Kubernetes namespaces within the EKS cluster.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/EksSource AWS API Documentation
    #
    class EksSource < Struct.new(
      :cluster_arn,
      :namespaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the actor that triggered an event.
    #
    # @!attribute [rw] type
    #   The type of actor, either USER or SYSTEM.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the actor.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the actor.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The user name of the actor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/EventActor AWS API Documentation
    #
    class EventActor < Struct.new(
      :type,
      :principal_id,
      :account_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details when report generation failed.
    #
    # @!attribute [rw] error_code
    #   The error code describing why the report generation failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message describing why the report generation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/FailedReportOutput AWS API Documentation
    #
    class FailedReportOutput < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a resilience finding from a failure mode assessment.
    #
    # @!attribute [rw] finding_id
    #   The unique identifier of the finding.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the finding.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] failure_category
    #   The failure category of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] reasoning
    #   The reasoning behind the finding.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A user-provided comment about the finding.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the finding.
    #   @return [String]
    #
    # @!attribute [rw] service_functions
    #   The service functions associated with the finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] policy_component
    #   The policy component associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_and_code_recommendations
    #   Infrastructure and code recommendations to address the finding.
    #   @return [Array<Types::InfrastructureAndCodeRecommendation>]
    #
    # @!attribute [rw] observability_recommendations
    #   Observability recommendations to address the finding.
    #   @return [Array<Types::ObservabilityRecommendation>]
    #
    # @!attribute [rw] testing_recommendations
    #   Testing recommendations to address the finding.
    #   @return [Array<Types::TestingRecommendation>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the finding was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/Finding AWS API Documentation
    #
    class Finding < Struct.new(
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a finding.
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] finding_id
    #   The unique identifier of the finding.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the finding.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] failure_category
    #   The failure category of the finding.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] policy_component
    #   The policy component associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the finding was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/FindingSummary AWS API Documentation
    #
    class FindingSummary < Struct.new(
      :service_arn,
      :finding_id,
      :name,
      :description,
      :failure_category,
      :severity,
      :status,
      :policy_component,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_id
    #   The unique identifier of the finding to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetFailureModeFindingRequest AWS API Documentation
    #
    class GetFailureModeFindingRequest < Struct.new(
      :finding_id,
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding
    #   The requested finding.
    #   @return [Types::Finding]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetFailureModeFindingResponse AWS API Documentation
    #
    class GetFailureModeFindingResponse < Struct.new(
      :finding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The requested resilience policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetServiceRequest AWS API Documentation
    #
    class GetServiceRequest < Struct.new(
      :service_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The requested service.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetServiceResponse AWS API Documentation
    #
    class GetServiceResponse < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetSystemRequest AWS API Documentation
    #
    class GetSystemRequest < Struct.new(
      :system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system
    #   The requested system.
    #   @return [Types::System]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetSystemResponse AWS API Documentation
    #
    class GetSystemResponse < Struct.new(
      :system)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] user_journey_id
    #   The identifier of the user journey to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetUserJourneyRequest AWS API Documentation
    #
    class GetUserJourneyRequest < Struct.new(
      :system_arn,
      :user_journey_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_journey
    #   The requested user journey.
    #   @return [Types::UserJourney]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/GetUserJourneyResponse AWS API Documentation
    #
    class GetUserJourneyResponse < Struct.new(
      :user_journey)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] v1_app_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] skip_manually_added_resources
    #   Whether to skip manually added resources during import.
    #   @return [Boolean]
    #
    # @!attribute [rw] associated_systems
    #   The systems to associate with the imported service.
    #   @return [Array<Types::AssociatedSystem>]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ImportAppRequest AWS API Documentation
    #
    class ImportAppRequest < Struct.new(
      :v1_app_arn,
      :policy_arn,
      :kms_key_id,
      :skip_manually_added_resources,
      :associated_systems,
      :tags,
      :client_token)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The imported service.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ImportAppResponse AWS API Documentation
    #
    class ImportAppResponse < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] v1_policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] availability_slo
    #   The availability SLO to set on the imported policy.
    #   @return [Types::AvailabilitySlo]
    #
    # @!attribute [rw] multi_az_disaster_recovery_approach
    #   The multi-AZ disaster recovery approach for the imported policy.
    #   @return [String]
    #
    # @!attribute [rw] multi_region_disaster_recovery_approach
    #   The multi-Region disaster recovery approach for the imported policy.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ImportPolicyRequest AWS API Documentation
    #
    class ImportPolicyRequest < Struct.new(
      :v1_policy_arn,
      :kms_key_id,
      :availability_slo,
      :multi_az_disaster_recovery_approach,
      :multi_region_disaster_recovery_approach,
      :tags,
      :client_token)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The imported policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ImportPolicyResponse AWS API Documentation
    #
    class ImportPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # An infrastructure and code recommendation to address a finding.
    #
    # @!attribute [rw] suggested_changes
    #   The list of suggested changes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/InfrastructureAndCodeRecommendation AWS API Documentation
    #
    class InfrastructureAndCodeRecommendation < Struct.new(
      :suggested_changes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an input source by its identifier and type.
    #
    # @!attribute [rw] identifier
    #   The identifier of the input source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the input source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/InputSource AWS API Documentation
    #
    class InputSource < Struct.new(
      :identifier,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about an input source for a service.
    #
    # @!attribute [rw] input_source_id
    #   The unique identifier of the input source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the input source.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The resource tags used for discovery, if this input source uses
    #   tags.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] cfn_stack_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] tf_state_file_url
    #   S3 URL — virtual hosted-style or s3:// URI.
    #   @return [String]
    #
    # @!attribute [rw] eks
    #   The Amazon EKS configuration, if this input source uses EKS.
    #   @return [Types::EksSource]
    #
    # @!attribute [rw] design_file_s3_url
    #   S3 URL — virtual hosted-style or s3:// URI.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the input source was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/InputSourceSummary AWS API Documentation
    #
    class InputSourceSummary < Struct.new(
      :input_source_id,
      :type,
      :resource_tags,
      :cfn_stack_arn,
      :tf_state_file_url,
      :eks,
      :design_file_s3_url,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal service error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Filter assertions by source type.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListAssertionsRequest AWS API Documentation
    #
    class ListAssertionsRequest < Struct.new(
      :service_arn,
      :source,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assertions
    #   The list of assertions.
    #   @return [Array<Types::Assertion>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListAssertionsResponse AWS API Documentation
    #
    class ListAssertionsResponse < Struct.new(
      :assertions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] query_range_start_time
    #   The start time for the dependency query range.
    #   @return [Time]
    #
    # @!attribute [rw] query_range_end_time
    #   The end time for the dependency query range.
    #   @return [Time]
    #
    # @!attribute [rw] query_range_granularity
    #   The granularity for the dependency query range.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListDependenciesRequest AWS API Documentation
    #
    class ListDependenciesRequest < Struct.new(
      :service_arn,
      :query_range_start_time,
      :query_range_end_time,
      :query_range_granularity,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dependency_summaries
    #   The list of dependency summaries.
    #   @return [Array<Types::DependencySummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListDependenciesResponse AWS API Documentation
    #
    class ListDependenciesResponse < Struct.new(
      :dependency_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] assessment_statuses
    #   Specifies the assessment statuses to include in the results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] started_after
    #   Specifies that only assessments that started at or after this
    #   timestamp appear in the results.
    #   @return [Time]
    #
    # @!attribute [rw] ended_before
    #   Specifies that only assessments that ended at or before this
    #   timestamp appear in the results.
    #   @return [Time]
    #
    # @!attribute [rw] sort_by
    #   The field to use for sorting failure mode assessments.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sort order for results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListFailureModeAssessmentsRequest AWS API Documentation
    #
    class ListFailureModeAssessmentsRequest < Struct.new(
      :service_arn,
      :assessment_statuses,
      :started_after,
      :ended_before,
      :sort_by,
      :sort_order,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_summaries
    #   The list of assessment summaries.
    #   @return [Array<Types::AssessmentSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListFailureModeAssessmentsResponse AWS API Documentation
    #
    class ListFailureModeAssessmentsResponse < Struct.new(
      :assessment_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Filter findings by severity.
    #   @return [String]
    #
    # @!attribute [rw] failure_category
    #   Filter findings by failure category.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter findings by status.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListFailureModeFindingsRequest AWS API Documentation
    #
    class ListFailureModeFindingsRequest < Struct.new(
      :service_arn,
      :severity,
      :failure_category,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] findings_summary
    #   The list of finding summaries.
    #   @return [Array<Types::FindingSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListFailureModeFindingsResponse AWS API Documentation
    #
    class ListFailureModeFindingsResponse < Struct.new(
      :findings_summary,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Filter input sources by type.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListInputSourcesRequest AWS API Documentation
    #
    class ListInputSourcesRequest < Struct.new(
      :service_arn,
      :type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_source_summaries
    #   The list of input source summaries.
    #   @return [Array<Types::InputSourceSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListInputSourcesResponse AWS API Documentation
    #
    class ListInputSourcesResponse < Struct.new(
      :input_source_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_summaries
    #   The list of policy summaries.
    #   @return [Array<Types::PolicySummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :policy_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   Optional. If not provided, lists all reports owned by the account.
    #   @return [String]
    #
    # @!attribute [rw] report_type
    #   Filter reports by type.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListReportsRequest AWS API Documentation
    #
    class ListReportsRequest < Struct.new(
      :service_arn,
      :report_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_generation_results
    #   The list of report generation results.
    #   @return [Array<Types::ReportGenerationResult>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListReportsResponse AWS API Documentation
    #
    class ListReportsResponse < Struct.new(
      :report_generation_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_function_id
    #   Filter resources by service function identifier.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   Filter resources by AWS Region.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The CloudFormation resource types to include in the response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] billable
    #   Specifies whether to filter non-billable resources. When true (the
    #   default), the operation returns only billable resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListResourcesRequest AWS API Documentation
    #
    class ListResourcesRequest < Struct.new(
      :service_arn,
      :service_function_id,
      :aws_region,
      :resource_types,
      :billable,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_function_id
    #   The service function identifier for the returned resources.
    #   @return [String]
    #
    # @!attribute [rw] service_resources
    #   The list of service resources.
    #   @return [Array<Types::ServiceResource>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListResourcesResponse AWS API Documentation
    #
    class ListResourcesResponse < Struct.new(
      :service_function_id,
      :service_resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] event_types
    #   Filter events by type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The start time for filtering events.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time for filtering events.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceEventsRequest AWS API Documentation
    #
    class ListServiceEventsRequest < Struct.new(
      :service_arn,
      :event_types,
      :start_time,
      :end_time,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The list of service events.
    #   @return [Array<Types::ServiceEvent>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceEventsResponse AWS API Documentation
    #
    class ListServiceEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceFunctionsRequest AWS API Documentation
    #
    class ListServiceFunctionsRequest < Struct.new(
      :service_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_functions
    #   The list of service functions.
    #   @return [Array<Types::ServiceFunction>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceFunctionsResponse AWS API Documentation
    #
    class ListServiceFunctionsResponse < Struct.new(
      :service_functions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceTopologyEdgesRequest AWS API Documentation
    #
    class ListServiceTopologyEdgesRequest < Struct.new(
      :service_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_topology_edge_summaries
    #   The list of service topology edge summaries.
    #   @return [Array<Types::ServiceTopologyEdgeSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServiceTopologyEdgesResponse AWS API Documentation
    #
    class ListServiceTopologyEdgesResponse < Struct.new(
      :service_topology_edge_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] user_journey_id
    #   Filter services by user journey identifier.
    #   @return [String]
    #
    # @!attribute [rw] ou_id
    #   Filter services by organizational unit (OU) identifier.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Filter services by AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   Filter services by assessment status.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServicesRequest AWS API Documentation
    #
    class ListServicesRequest < Struct.new(
      :system_arn,
      :user_journey_id,
      :ou_id,
      :account_id,
      :assessment_status,
      :policy_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_summaries
    #   The list of service summaries.
    #   @return [Array<Types::ServiceSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListServicesResponse AWS API Documentation
    #
    class ListServicesResponse < Struct.new(
      :service_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] event_types
    #   Filter events by type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The start time for filtering events.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time for filtering events.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListSystemEventsRequest AWS API Documentation
    #
    class ListSystemEventsRequest < Struct.new(
      :system_arn,
      :event_types,
      :start_time,
      :end_time,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events
    #   The list of system events.
    #   @return [Array<Types::SystemEvent>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListSystemEventsResponse AWS API Documentation
    #
    class ListSystemEventsResponse < Struct.new(
      :events,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ou_id
    #   Filter systems by organizational unit (OU) identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListSystemsRequest AWS API Documentation
    #
    class ListSystemsRequest < Struct.new(
      :ou_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_summaries
    #   The list of system summaries.
    #   @return [Array<Types::SystemSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListSystemsResponse AWS API Documentation
    #
    class ListSystemsResponse < Struct.new(
      :system_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Pagination page size.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListUserJourneysRequest AWS API Documentation
    #
    class ListUserJourneysRequest < Struct.new(
      :system_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_journey_summaries
    #   The list of user journey summaries.
    #   @return [Array<Types::UserJourneySummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ListUserJourneysResponse AWS API Documentation
    #
    class ListUserJourneysResponse < Struct.new(
      :user_journey_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the multi-AZ disaster recovery targets for a resilience
    # policy.
    #
    # @!attribute [rw] rto_in_minutes
    #   The recovery time objective (RTO) target for multi-AZ, in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] rpo_in_minutes
    #   The recovery point objective (RPO) target for multi-AZ, in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] disaster_recovery_approach
    #   The disaster recovery approach for multi-AZ.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/MultiAzTargets AWS API Documentation
    #
    class MultiAzTargets < Struct.new(
      :rto_in_minutes,
      :rpo_in_minutes,
      :disaster_recovery_approach)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the multi-Region disaster recovery targets for a resilience
    # policy.
    #
    # @!attribute [rw] rto_in_minutes
    #   The recovery time objective (RTO) target for multi-Region, in
    #   minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] rpo_in_minutes
    #   The recovery point objective (RPO) target for multi-Region, in
    #   minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] disaster_recovery_approach
    #   The disaster recovery approach for multi-Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/MultiRegionTargets AWS API Documentation
    #
    class MultiRegionTargets < Struct.new(
      :rto_in_minutes,
      :rpo_in_minutes,
      :disaster_recovery_approach)
      SENSITIVE = []
      include Aws::Structure
    end

    # An observability recommendation to address a finding.
    #
    # @!attribute [rw] suggested_changes
    #   The list of suggested observability changes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ObservabilityRecommendation AWS API Documentation
    #
    class ObservabilityRecommendation < Struct.new(
      :suggested_changes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the permission model for a service.
    #
    # @!attribute [rw] invoker_role_name
    #   IAM role name (supports up to 64 characters per IAM limits).
    #   @return [String]
    #
    # @!attribute [rw] cross_account_roles
    #   The list of cross-account IAM role ARNs.
    #   @return [Array<Types::CrossAccountRole>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/PermissionModel AWS API Documentation
    #
    class PermissionModel < Struct.new(
      :invoker_role_name,
      :cross_account_roles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a resilience policy that defines availability and disaster
    # recovery requirements.
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description for services and policies.
    #   @return [String]
    #
    # @!attribute [rw] availability_slo
    #   The availability SLO defined in the policy.
    #   @return [Types::AvailabilitySlo]
    #
    # @!attribute [rw] multi_az
    #   The multi-AZ disaster recovery targets defined in the policy.
    #   @return [Types::MultiAzTargets]
    #
    # @!attribute [rw] multi_region
    #   The multi-Region disaster recovery targets defined in the policy.
    #   @return [Types::MultiRegionTargets]
    #
    # @!attribute [rw] data_recovery
    #   The data recovery targets defined in the policy.
    #   @return [Types::DataRecoveryTargets]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] associated_service_count
    #   The number of services associated with this policy.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/Policy AWS API Documentation
    #
    class Policy < Struct.new(
      :policy_arn,
      :name,
      :description,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery,
      :kms_key_id,
      :tags,
      :associated_service_count,
      :created_at,
      :updated_at)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Contains summary information about a resilience policy.
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] availability_slo
    #   The availability SLO defined in the policy.
    #   @return [Types::AvailabilitySlo]
    #
    # @!attribute [rw] multi_az
    #   The multi-AZ disaster recovery targets defined in the policy.
    #   @return [Types::MultiAzTargets]
    #
    # @!attribute [rw] multi_region
    #   The multi-Region disaster recovery targets defined in the policy.
    #   @return [Types::MultiRegionTargets]
    #
    # @!attribute [rw] data_recovery
    #   The data recovery targets defined in the policy.
    #   @return [Types::DataRecoveryTargets]
    #
    # @!attribute [rw] associated_service_count
    #   The number of services associated with this policy.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/PolicySummary AWS API Documentation
    #
    class PolicySummary < Struct.new(
      :policy_arn,
      :name,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery,
      :associated_service_count,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data point in a dependency query range.
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the data point.
    #   @return [Time]
    #
    # @!attribute [rw] query_count
    #   The number of queries at this data point.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/QueryDataPoint AWS API Documentation
    #
    class QueryDataPoint < Struct.new(
      :timestamp,
      :query_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a time range for dependency query data.
    #
    # @!attribute [rw] start_time
    #   The start time of the query range.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the query range.
    #   @return [Time]
    #
    # @!attribute [rw] granularity
    #   The granularity of the query range data points.
    #   @return [String]
    #
    # @!attribute [rw] data_points
    #   The data points within the query range.
    #   @return [Array<Types::QueryDataPoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/QueryRange AWS API Documentation
    #
    class QueryRange < Struct.new(
      :start_time,
      :end_time,
      :granularity,
      :data_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # Result of a report generation attempt.
    #
    # @!attribute [rw] report_type
    #   The type of the generated report.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the report generation.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   The service this report was generated for.
    #   @return [String]
    #
    # @!attribute [rw] assessment_id
    #   Present for FAILURE\_MODE reports.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the report was created.
    #   @return [Time]
    #
    # @!attribute [rw] report_output
    #   Present when status is SUCCEEDED or FAILED.
    #   @return [Types::ReportOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ReportGenerationResult AWS API Documentation
    #
    class ReportGenerationResult < Struct.new(
      :report_type,
      :status,
      :service_arn,
      :assessment_id,
      :created_at,
      :report_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Union of possible report outputs.
    #
    # @note ReportOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ReportOutput corresponding to the set member.
    #
    # @!attribute [rw] s3_report_output
    #   The S3 location where the report was written.
    #   @return [Types::S3ReportOutput]
    #
    # @!attribute [rw] failed_report_output
    #   Details when report generation failed.
    #   @return [Types::FailedReportOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ReportOutput AWS API Documentation
    #
    class ReportOutput < Struct.new(
      :s3_report_output,
      :failed_report_output,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3ReportOutput < ReportOutput; end
      class FailedReportOutput < ReportOutput; end
      class Unknown < ReportOutput; end
    end

    # Configuration for a report output destination.
    #
    # @note ReportOutputConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ReportOutputConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ReportOutputConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   S3 configuration for report output.
    #   @return [Types::S3ReportOutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ReportOutputConfiguration AWS API Documentation
    #
    class ReportOutputConfiguration < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ReportOutputConfiguration; end
      class Unknown < ReportOutputConfiguration; end
    end

    # Represents an AWS resource discovered by Resilience Hub.
    #
    # @!attribute [rw] identifier
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The AWS Region where the resource is located.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :identifier,
      :aws_region,
      :aws_account_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource configuration for an input source. Provide exactly one field.
    #
    # @note ResourceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] resource_tags
    #   The resource tags for tag-based resource discovery.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] cfn_stack_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] tf_state_file_url
    #   S3 URL — virtual hosted-style or s3:// URI.
    #   @return [String]
    #
    # @!attribute [rw] eks
    #   The Amazon EKS configuration for resource discovery.
    #   @return [Types::EksSource]
    #
    # @!attribute [rw] design_file_s3_url
    #   S3 URL — virtual hosted-style or s3:// URI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ResourceConfiguration AWS API Documentation
    #
    class ResourceConfiguration < Struct.new(
      :resource_tags,
      :cfn_stack_arn,
      :tf_state_file_url,
      :eks,
      :design_file_s3_url,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ResourceTags < ResourceConfiguration; end
      class CfnStackArn < ResourceConfiguration; end
      class TfStateFileUrl < ResourceConfiguration; end
      class Eks < ResourceConfiguration; end
      class DesignFileS3Url < ResourceConfiguration; end
      class Unknown < ResourceConfiguration; end
    end

    # Contains the status of resource discovery for a service.
    #
    # @!attribute [rw] status
    #   The current status of resource discovery.
    #   @return [String]
    #
    # @!attribute [rw] last_run_at
    #   The timestamp of the last resource discovery run.
    #   @return [Time]
    #
    # @!attribute [rw] error_code
    #   The error code if resource discovery failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error if resource discovery failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ResourceDiscoveryStatus AWS API Documentation
    #
    class ResourceDiscoveryStatus < Struct.new(
      :status,
      :last_run_at,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag key-value pair used for resource discovery.
    #
    # @!attribute [rw] key
    #   Tag key.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of tag values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 location where report was written.
    #
    # @!attribute [rw] s3_object_key
    #   The S3 object key for the generated report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/S3ReportOutput AWS API Documentation
    #
    class S3ReportOutput < Struct.new(
      :s3_object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # S3 configuration for report output.
    #
    # @!attribute [rw] bucket_path
    #   S3 bucket path where reports will be written (e.g.,
    #   my-bucket/ngrh-reports/).
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner
    #   Account ID of the bucket owner for cross-account access
    #   verification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/S3ReportOutputConfiguration AWS API Documentation
    #
    class S3ReportOutputConfiguration < Struct.new(
      :bucket_path,
      :bucket_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a service in Resilience Hub. A service is the primary unit
    # of resilience assessment.
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description for services and policies.
    #   @return [String]
    #
    # @!attribute [rw] associated_systems
    #   The systems associated with the service.
    #   @return [Array<Types::AssociatedSystem>]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The AWS Regions where the service operates.
    #   @return [Array<String>]
    #
    # @!attribute [rw] permission_model
    #   The permission model for the service.
    #   @return [Types::PermissionModel]
    #
    # @!attribute [rw] dependency_discovery
    #   The dependency discovery configuration for the service.
    #   @return [Types::DependencyDiscoveryConfig]
    #
    # @!attribute [rw] effective_policy_values
    #   The effective policy values for the service.
    #   @return [Types::EffectivePolicyValues]
    #
    # @!attribute [rw] achievability
    #   The achievability status of the service's resilience targets.
    #   @return [Types::Achievability]
    #
    # @!attribute [rw] report_configuration
    #   Configuration for automatic report generation on a Service.
    #   @return [Types::ServiceReportConfiguration]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] estimated_assessment_cost
    #   The estimated cost of running an assessment on the service.
    #   @return [Types::AssessmentCost]
    #
    # @!attribute [rw] resource_discovery
    #   The resource discovery status for the service.
    #   @return [Types::ResourceDiscoveryStatus]
    #
    # @!attribute [rw] assessment_status
    #   The current assessment status of the service.
    #   @return [String]
    #
    # @!attribute [rw] rerun_assessment
    #   Indicates whether the assessment should be rerun.
    #   @return [Boolean]
    #
    # @!attribute [rw] open_findings_count
    #   The number of open findings for the service.
    #   @return [Integer]
    #
    # @!attribute [rw] resolved_findings_count
    #   The number of resolved findings for the service.
    #   @return [Integer]
    #
    # @!attribute [rw] organization_id
    #   The AWS Organizations identifier for the service.
    #   @return [String]
    #
    # @!attribute [rw] ou_id
    #   The organizational unit (OU) identifier for the service.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID that owns the service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the service was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the service was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/Service AWS API Documentation
    #
    class Service < Struct.new(
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
      :created_at,
      :updated_at)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Metadata for a service achievability updated event.
    #
    # @!attribute [rw] assessment_id
    #   The assessment identifier that triggered the update.
    #   @return [String]
    #
    # @!attribute [rw] availability_slo
    #   The updated achievability status of the availability SLO.
    #   @return [String]
    #
    # @!attribute [rw] multi_az_rto_rpo
    #   The updated achievability status of the multi-AZ RTO and RPO
    #   targets.
    #   @return [String]
    #
    # @!attribute [rw] multi_region_rto_rpo
    #   The updated achievability status of the multi-Region RTO and RPO
    #   targets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceAchievabilityUpdatedMetadata AWS API Documentation
    #
    class ServiceAchievabilityUpdatedMetadata < Struct.new(
      :assessment_id,
      :availability_slo,
      :multi_az_rto_rpo,
      :multi_region_rto_rpo)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service created event.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceCreatedMetadata AWS API Documentation
    #
    class ServiceCreatedMetadata < Aws::EmptyStructure; end

    # Metadata for a service deleted event.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceDeletedMetadata AWS API Documentation
    #
    class ServiceDeletedMetadata < Aws::EmptyStructure; end

    # Represents an event in the service event log.
    #
    # @!attribute [rw] event_id
    #   The unique identifier of the event.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the event.
    #   @return [Time]
    #
    # @!attribute [rw] event_type
    #   The type of the event.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] actor
    #   The actor that triggered the event.
    #   @return [Types::EventActor]
    #
    # @!attribute [rw] event_details
    #   The details of the event.
    #   @return [Types::ServiceEventDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceEvent AWS API Documentation
    #
    class ServiceEvent < Struct.new(
      :event_id,
      :timestamp,
      :event_type,
      :service_arn,
      :actor,
      :event_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of a service event.
    #
    # @!attribute [rw] title
    #   The title of the event.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_metadata
    #   Type-specific metadata for each service event type.
    #   @return [Types::ServiceEventMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceEventDetails AWS API Documentation
    #
    class ServiceEventDetails < Struct.new(
      :title,
      :description,
      :event_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type-specific metadata for each service event type.
    #
    # @note ServiceEventMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ServiceEventMetadata corresponding to the set member.
    #
    # @!attribute [rw] service_created
    #   Metadata for a service created event.
    #   @return [Types::ServiceCreatedMetadata]
    #
    # @!attribute [rw] service_deleted
    #   Metadata for a service deleted event.
    #   @return [Types::ServiceDeletedMetadata]
    #
    # @!attribute [rw] service_system_associated
    #   Metadata for a service system associated event.
    #   @return [Types::ServiceSystemAssociatedMetadata]
    #
    # @!attribute [rw] service_system_disassociated
    #   Metadata for a service system disassociated event.
    #   @return [Types::ServiceSystemDisassociatedMetadata]
    #
    # @!attribute [rw] service_resources_associated
    #   Metadata for a service resources associated event.
    #   @return [Types::ServiceResourcesAssociatedMetadata]
    #
    # @!attribute [rw] service_resources_disassociated
    #   Metadata for a service resources disassociated event.
    #   @return [Types::ServiceResourcesDisassociatedMetadata]
    #
    # @!attribute [rw] service_workflow_updated
    #   Metadata for a service workflow updated event.
    #   @return [Types::ServiceWorkflowUpdatedMetadata]
    #
    # @!attribute [rw] service_input_sources_updated
    #   Metadata for a service input sources updated event.
    #   @return [Types::ServiceInputSourcesUpdatedMetadata]
    #
    # @!attribute [rw] service_policy_associated
    #   Metadata for a service policy associated event.
    #   @return [Types::ServicePolicyAssociatedMetadata]
    #
    # @!attribute [rw] service_policy_disassociated
    #   Metadata for a service policy disassociated event.
    #   @return [Types::ServicePolicyDisassociatedMetadata]
    #
    # @!attribute [rw] service_function_created
    #   Metadata for a service function created event.
    #   @return [Types::ServiceFunctionCreatedMetadata]
    #
    # @!attribute [rw] service_function_updated
    #   Metadata for a service function updated event.
    #   @return [Types::ServiceFunctionUpdatedMetadata]
    #
    # @!attribute [rw] service_function_deleted
    #   Metadata for a service function deleted event.
    #   @return [Types::ServiceFunctionDeletedMetadata]
    #
    # @!attribute [rw] service_function_resources_added
    #   Metadata for a service function resources added event.
    #   @return [Types::ServiceFunctionResourcesAddedMetadata]
    #
    # @!attribute [rw] service_function_resources_removed
    #   Metadata for a service function resources removed event.
    #   @return [Types::ServiceFunctionResourcesRemovedMetadata]
    #
    # @!attribute [rw] service_achievability_updated
    #   Metadata for a service achievability updated event.
    #   @return [Types::ServiceAchievabilityUpdatedMetadata]
    #
    # @!attribute [rw] assertion_created
    #   Metadata for an assertion created event.
    #   @return [Types::AssertionCreatedMetadata]
    #
    # @!attribute [rw] assertion_updated
    #   Metadata for an assertion updated event.
    #   @return [Types::AssertionUpdatedMetadata]
    #
    # @!attribute [rw] assertion_deleted
    #   Metadata for an assertion deleted event.
    #   @return [Types::AssertionDeletedMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceEventMetadata AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Represents a logical component of a service.
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_function_id
    #   The unique identifier of the service function.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Entity label (not part of ARN — spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] criticality
    #   The criticality level of the service function.
    #   @return [String]
    #
    # @!attribute [rw] resource_count
    #   The number of resources associated with the service function.
    #   @return [Integer]
    #
    # @!attribute [rw] source
    #   The source of the service function.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the service function was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the service function was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceFunction AWS API Documentation
    #
    class ServiceFunction < Struct.new(
      :service_arn,
      :service_function_id,
      :name,
      :description,
      :criticality,
      :resource_count,
      :source,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service function created event.
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the created service function.
    #   @return [String]
    #
    # @!attribute [rw] service_function_name
    #   The name of the created service function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceFunctionCreatedMetadata AWS API Documentation
    #
    class ServiceFunctionCreatedMetadata < Struct.new(
      :service_function_id,
      :service_function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service function deleted event.
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the deleted service function.
    #   @return [String]
    #
    # @!attribute [rw] service_function_name
    #   The name of the deleted service function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceFunctionDeletedMetadata AWS API Documentation
    #
    class ServiceFunctionDeletedMetadata < Struct.new(
      :service_function_id,
      :service_function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service function resources added event.
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function.
    #   @return [String]
    #
    # @!attribute [rw] service_function_name
    #   The name of the service function.
    #   @return [String]
    #
    # @!attribute [rw] resources_added
    #   The list of resource ARNs that were added.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceFunctionResourcesAddedMetadata AWS API Documentation
    #
    class ServiceFunctionResourcesAddedMetadata < Struct.new(
      :service_function_id,
      :service_function_name,
      :resources_added)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service function resources removed event.
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function.
    #   @return [String]
    #
    # @!attribute [rw] service_function_name
    #   The name of the service function.
    #   @return [String]
    #
    # @!attribute [rw] resources_removed
    #   The list of resource ARNs that were removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceFunctionResourcesRemovedMetadata AWS API Documentation
    #
    class ServiceFunctionResourcesRemovedMetadata < Struct.new(
      :service_function_id,
      :service_function_name,
      :resources_removed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service function updated event.
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function.
    #   @return [String]
    #
    # @!attribute [rw] service_function_name
    #   The name of the service function.
    #   @return [String]
    #
    # @!attribute [rw] resources_added
    #   The list of resource ARNs that were added.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resources_removed
    #   The list of resource ARNs that were removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceFunctionUpdatedMetadata AWS API Documentation
    #
    class ServiceFunctionUpdatedMetadata < Struct.new(
      :service_function_id,
      :service_function_name,
      :resources_added,
      :resources_removed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service input sources updated event.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceInputSourcesUpdatedMetadata AWS API Documentation
    #
    class ServiceInputSourcesUpdatedMetadata < Aws::EmptyStructure; end

    # Metadata for a service policy associated event.
    #
    # @!attribute [rw] policy_name
    #   The name of the associated policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServicePolicyAssociatedMetadata AWS API Documentation
    #
    class ServicePolicyAssociatedMetadata < Struct.new(
      :policy_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service policy disassociated event.
    #
    # @!attribute [rw] policy_name
    #   The name of the disassociated policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServicePolicyDisassociatedMetadata AWS API Documentation
    #
    class ServicePolicyDisassociatedMetadata < Struct.new(
      :policy_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Service quota exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a service by ID and name.
    #
    # @!attribute [rw] service_id
    #   The identifier of the referenced service.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the referenced service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceReference AWS API Documentation
    #
    class ServiceReference < Struct.new(
      :service_id,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes changes to service references.
    #
    # @!attribute [rw] added
    #   The list of service references that were added.
    #   @return [Array<Types::ServiceReference>]
    #
    # @!attribute [rw] removed
    #   The list of service references that were removed.
    #   @return [Array<Types::ServiceReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceReferenceChanges AWS API Documentation
    #
    class ServiceReferenceChanges < Struct.new(
      :added,
      :removed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for automatic report generation on a Service.
    #
    # @!attribute [rw] report_outputs
    #   Output destinations for generated reports.
    #   @return [Array<Types::ReportOutputConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceReportConfiguration AWS API Documentation
    #
    class ServiceReportConfiguration < Struct.new(
      :report_outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a resource associated with a service.
    #
    # @!attribute [rw] resource_identifier
    #   The identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] input_source
    #   The input source that discovered the resource.
    #   @return [Types::InputSource]
    #
    # @!attribute [rw] resource
    #   The resource details.
    #   @return [Types::Resource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceResource AWS API Documentation
    #
    class ServiceResource < Struct.new(
      :resource_identifier,
      :input_source,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service resources associated event.
    #
    # @!attribute [rw] resource_count
    #   The number of resources associated.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_types
    #   The types of resources associated.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceResourcesAssociatedMetadata AWS API Documentation
    #
    class ServiceResourcesAssociatedMetadata < Struct.new(
      :resource_count,
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service resources disassociated event.
    #
    # @!attribute [rw] resource_count
    #   The number of resources disassociated.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_types
    #   The types of resources disassociated.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceResourcesDisassociatedMetadata AWS API Documentation
    #
    class ServiceResourcesDisassociatedMetadata < Struct.new(
      :resource_count,
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a service.
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] associated_systems
    #   The systems associated with the service.
    #   @return [Array<Types::AssociatedSystem>]
    #
    # @!attribute [rw] regions
    #   The AWS Regions where the service operates.
    #   @return [Array<String>]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   The current assessment status of the service.
    #   @return [String]
    #
    # @!attribute [rw] open_findings_count
    #   The number of open findings.
    #   @return [Integer]
    #
    # @!attribute [rw] resolved_findings_count
    #   The number of resolved findings.
    #   @return [Integer]
    #
    # @!attribute [rw] dependency_discovery
    #   The dependency discovery configuration.
    #   @return [Types::DependencyDiscoveryConfig]
    #
    # @!attribute [rw] achievability
    #   The achievability status of the service's resilience targets.
    #   @return [Types::Achievability]
    #
    # @!attribute [rw] organization_id
    #   Displayed only if caller has access.
    #   @return [String]
    #
    # @!attribute [rw] ou_id
    #   Displayed only if caller has access.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   Displayed only if caller has access.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the service was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the service was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceSummary AWS API Documentation
    #
    class ServiceSummary < Struct.new(
      :service_arn,
      :name,
      :associated_systems,
      :regions,
      :policy_arn,
      :assessment_status,
      :open_findings_count,
      :resolved_findings_count,
      :dependency_discovery,
      :achievability,
      :organization_id,
      :ou_id,
      :account_id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service system associated event.
    #
    # @!attribute [rw] system_name
    #   The name of the associated system.
    #   @return [String]
    #
    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceSystemAssociatedMetadata AWS API Documentation
    #
    class ServiceSystemAssociatedMetadata < Struct.new(
      :system_name,
      :system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service system disassociated event.
    #
    # @!attribute [rw] system_id
    #   The identifier of the disassociated system.
    #   @return [String]
    #
    # @!attribute [rw] system_name
    #   The name of the disassociated system.
    #   @return [String]
    #
    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceSystemDisassociatedMetadata AWS API Documentation
    #
    class ServiceSystemDisassociatedMetadata < Struct.new(
      :system_id,
      :system_name,
      :system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a service topology edge.
    #
    # @!attribute [rw] source_resource_identifier
    #   The identifier of the source resource.
    #   @return [String]
    #
    # @!attribute [rw] destination_resource_identifier
    #   The identifier of the destination resource.
    #   @return [String]
    #
    # @!attribute [rw] source_region
    #   The AWS Region of the source resource.
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   The AWS Region of the destination resource.
    #   @return [String]
    #
    # @!attribute [rw] source_account
    #   The AWS account ID of the source resource.
    #   @return [String]
    #
    # @!attribute [rw] destination_account
    #   The AWS account ID of the destination resource.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The properties of the topology edge.
    #   @return [Array<Types::EdgePropertySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceTopologyEdgeSummary AWS API Documentation
    #
    class ServiceTopologyEdgeSummary < Struct.new(
      :source_resource_identifier,
      :destination_resource_identifier,
      :source_region,
      :destination_region,
      :source_account,
      :destination_account,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a service workflow updated event.
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function.
    #   @return [String]
    #
    # @!attribute [rw] service_function_name
    #   The name of the service function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ServiceWorkflowUpdatedMetadata AWS API Documentation
    #
    class ServiceWorkflowUpdatedMetadata < Struct.new(
      :service_function_id,
      :service_function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the effective availability SLO value and its source.
    #
    # @!attribute [rw] value
    #   The availability SLO percentage value.
    #   @return [Float]
    #
    # @!attribute [rw] policy_name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Indicates whether the value comes from the service's own account or
    #   a cross-account policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SloSource AWS API Documentation
    #
    class SloSource < Struct.new(
      :value,
      :policy_name,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/StartFailureModeAssessmentRequest AWS API Documentation
    #
    class StartFailureModeAssessmentRequest < Struct.new(
      :service_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_id
    #   The unique identifier of the started assessment.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] assessment_status
    #   The status of the started assessment.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the assessment started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/StartFailureModeAssessmentResponse AWS API Documentation
    #
    class StartFailureModeAssessmentResponse < Struct.new(
      :assessment_id,
      :service_arn,
      :assessment_status,
      :started_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a change from one string value to another.
    #
    # @!attribute [rw] old_value
    #   The old value.
    #   @return [String]
    #
    # @!attribute [rw] new_value
    #   The new value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/StringChange AWS API Documentation
    #
    class StringChange < Struct.new(
      :old_value,
      :new_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a system in Resilience Hub. A system is a logical grouping
    # of services.
    #
    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] system_id
    #   System ID for cross-account use without exposing account structure.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] sharing_enabled
    #   Indicates whether cross-account sharing is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key identifier — accepts key ID, key ARN, alias name, or alias
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The AWS Organizations identifier for the system.
    #   @return [String]
    #
    # @!attribute [rw] ou_id
    #   The organizational unit (OU) identifier for the system.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the system was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the system was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/System AWS API Documentation
    #
    class System < Struct.new(
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
      :updated_at)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Metadata for a system created event.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemCreatedMetadata AWS API Documentation
    #
    class SystemCreatedMetadata < Aws::EmptyStructure; end

    # Metadata for a system deleted event.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemDeletedMetadata AWS API Documentation
    #
    class SystemDeletedMetadata < Aws::EmptyStructure; end

    # Represents an event in the system event log.
    #
    # @!attribute [rw] event_id
    #   The unique identifier of the event.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of the event.
    #   @return [Time]
    #
    # @!attribute [rw] event_type
    #   The type of the event.
    #   @return [String]
    #
    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] actor
    #   The actor that triggered the event.
    #   @return [Types::EventActor]
    #
    # @!attribute [rw] event_details
    #   The details of the event.
    #   @return [Types::SystemEventDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemEvent AWS API Documentation
    #
    class SystemEvent < Struct.new(
      :event_id,
      :timestamp,
      :event_type,
      :system_arn,
      :actor,
      :event_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of a system event.
    #
    # @!attribute [rw] title
    #   The title of the event.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event.
    #   @return [String]
    #
    # @!attribute [rw] event_metadata
    #   Type-specific metadata for each system event type.
    #   @return [Types::SystemEventMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemEventDetails AWS API Documentation
    #
    class SystemEventDetails < Struct.new(
      :title,
      :description,
      :event_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type-specific metadata for each system event type.
    #
    # @note SystemEventMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SystemEventMetadata corresponding to the set member.
    #
    # @!attribute [rw] system_created
    #   Metadata for a system created event.
    #   @return [Types::SystemCreatedMetadata]
    #
    # @!attribute [rw] system_deleted
    #   Metadata for a system deleted event.
    #   @return [Types::SystemDeletedMetadata]
    #
    # @!attribute [rw] system_user_journey_created
    #   Metadata for a system user journey created event.
    #   @return [Types::SystemUserJourneyCreatedMetadata]
    #
    # @!attribute [rw] system_user_journey_updated
    #   Metadata for a system user journey updated event.
    #   @return [Types::SystemUserJourneyUpdatedMetadata]
    #
    # @!attribute [rw] system_user_journey_deleted
    #   Metadata for a system user journey deleted event.
    #   @return [Types::SystemUserJourneyDeletedMetadata]
    #
    # @!attribute [rw] system_service_associated
    #   Metadata for a system service associated event.
    #   @return [Types::SystemServiceAssociatedMetadata]
    #
    # @!attribute [rw] system_service_disassociated
    #   Metadata for a system service disassociated event.
    #   @return [Types::SystemServiceDisassociatedMetadata]
    #
    # @!attribute [rw] system_policy_associated
    #   Metadata for a system policy associated event.
    #   @return [Types::SystemPolicyAssociatedMetadata]
    #
    # @!attribute [rw] system_policy_disassociated
    #   Metadata for a system policy disassociated event.
    #   @return [Types::SystemPolicyDisassociatedMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemEventMetadata AWS API Documentation
    #
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
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Metadata for a system policy associated event.
    #
    # @!attribute [rw] policy_name
    #   The name of the associated policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemPolicyAssociatedMetadata AWS API Documentation
    #
    class SystemPolicyAssociatedMetadata < Struct.new(
      :policy_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a system policy disassociated event.
    #
    # @!attribute [rw] policy_name
    #   The name of the disassociated policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemPolicyDisassociatedMetadata AWS API Documentation
    #
    class SystemPolicyDisassociatedMetadata < Struct.new(
      :policy_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a system service associated event.
    #
    # @!attribute [rw] service_name
    #   The name of the associated service.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] user_journeys
    #   The user journeys linking the service to the system.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemServiceAssociatedMetadata AWS API Documentation
    #
    class SystemServiceAssociatedMetadata < Struct.new(
      :service_name,
      :service_arn,
      :user_journeys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a system service disassociated event.
    #
    # @!attribute [rw] service_name
    #   The name of the disassociated service.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] user_journeys_affected
    #   The user journeys affected by the disassociation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] comment
    #   A comment about the disassociation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemServiceDisassociatedMetadata AWS API Documentation
    #
    class SystemServiceDisassociatedMetadata < Struct.new(
      :service_name,
      :service_arn,
      :user_journeys_affected,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a system.
    #
    # @!attribute [rw] system_id
    #   System ID for cross-account use without exposing account structure.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] user_journeys_count
    #   The number of user journeys in the system.
    #   @return [Integer]
    #
    # @!attribute [rw] services_count
    #   The number of services in the system.
    #   @return [Integer]
    #
    # @!attribute [rw] organization_id
    #   Displayed only if caller has access.
    #   @return [String]
    #
    # @!attribute [rw] ou_id
    #   Displayed only if caller has access.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the system was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the system was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemSummary AWS API Documentation
    #
    class SystemSummary < Struct.new(
      :system_id,
      :name,
      :system_arn,
      :user_journeys_count,
      :services_count,
      :organization_id,
      :ou_id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a system user journey created event.
    #
    # @!attribute [rw] user_journey_name
    #   The name of the created user journey.
    #   @return [String]
    #
    # @!attribute [rw] associated_services
    #   The services associated with the created user journey.
    #   @return [Array<Types::ServiceReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemUserJourneyCreatedMetadata AWS API Documentation
    #
    class SystemUserJourneyCreatedMetadata < Struct.new(
      :user_journey_name,
      :associated_services)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a system user journey deleted event.
    #
    # @!attribute [rw] user_journey_name
    #   The name of the deleted user journey.
    #   @return [String]
    #
    # @!attribute [rw] associated_services_at_deletion
    #   The services that were associated at the time of deletion.
    #   @return [Array<Types::ServiceReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemUserJourneyDeletedMetadata AWS API Documentation
    #
    class SystemUserJourneyDeletedMetadata < Struct.new(
      :user_journey_name,
      :associated_services_at_deletion)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a system user journey updated event.
    #
    # @!attribute [rw] user_journey_name
    #   The name of the updated user journey.
    #   @return [String]
    #
    # @!attribute [rw] changes
    #   The changes made to the user journey.
    #   @return [Types::UserJourneyChanges]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/SystemUserJourneyUpdatedMetadata AWS API Documentation
    #
    class SystemUserJourneyUpdatedMetadata < Struct.new(
      :user_journey_name,
      :changes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Contains an effective RTO or RPO value and its source.
    #
    # @!attribute [rw] value
    #   The RTO or RPO value in minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_name
    #   Resource name (used in ARN — no spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Indicates whether the value comes from the service's own account or
    #   a cross-account policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/TargetSource AWS API Documentation
    #
    class TargetSource < Struct.new(
      :value,
      :policy_name,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # A testing recommendation to address a finding.
    #
    # @!attribute [rw] suggested_changes
    #   The list of suggested testing changes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/TestingRecommendation AWS API Documentation
    #
    class TestingRecommendation < Struct.new(
      :suggested_changes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Too many requests — rate limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] assertion_id
    #   The unique identifier of the assertion to update.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The updated text content of the assertion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateAssertionRequest AWS API Documentation
    #
    class UpdateAssertionRequest < Struct.new(
      :service_arn,
      :assertion_id,
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assertion
    #   The updated assertion.
    #   @return [Types::Assertion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateAssertionResponse AWS API Documentation
    #
    class UpdateAssertionResponse < Struct.new(
      :assertion)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] dependency_id
    #   The identifier of the dependency to update.
    #   @return [String]
    #
    # @!attribute [rw] criticality
    #   The updated criticality level of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment about the dependency.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateDependencyRequest AWS API Documentation
    #
    class UpdateDependencyRequest < Struct.new(
      :service_arn,
      :dependency_id,
      :criticality,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dependency_id
    #   The identifier of the updated dependency.
    #   @return [String]
    #
    # @!attribute [rw] dependency_name
    #   The name of the updated dependency.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] criticality
    #   The criticality level of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment about the dependency.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The provider of the dependency.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the dependency was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateDependencyResponse AWS API Documentation
    #
    class UpdateDependencyResponse < Struct.new(
      :dependency_id,
      :dependency_name,
      :location,
      :criticality,
      :comment,
      :provider,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding_id
    #   The identifier of the finding to update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status for the finding.
    #   @return [String]
    #
    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment about the finding update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateFailureModeFindingRequest AWS API Documentation
    #
    class UpdateFailureModeFindingRequest < Struct.new(
      :finding_id,
      :status,
      :service_arn,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] finding
    #   The updated finding.
    #   @return [Types::Finding]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateFailureModeFindingResponse AWS API Documentation
    #
    class UpdateFailureModeFindingResponse < Struct.new(
      :finding)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description for services and policies.
    #   @return [String]
    #
    # @!attribute [rw] availability_slo
    #   The updated availability SLO for the policy.
    #   @return [Types::AvailabilitySlo]
    #
    # @!attribute [rw] multi_az
    #   The updated multi-AZ disaster recovery targets for the policy.
    #   @return [Types::MultiAzTargets]
    #
    # @!attribute [rw] multi_region
    #   The updated multi-Region disaster recovery targets for the policy.
    #   @return [Types::MultiRegionTargets]
    #
    # @!attribute [rw] data_recovery
    #   The updated data recovery targets for the policy.
    #   @return [Types::DataRecoveryTargets]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdatePolicyRequest AWS API Documentation
    #
    class UpdatePolicyRequest < Struct.new(
      :policy_arn,
      :description,
      :availability_slo,
      :multi_az,
      :multi_region,
      :data_recovery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The updated policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdatePolicyResponse AWS API Documentation
    #
    class UpdatePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] service_function_id
    #   The identifier of the service function to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Entity label (not part of ARN — spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] criticality
    #   The updated criticality level of the service function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateServiceFunctionRequest AWS API Documentation
    #
    class UpdateServiceFunctionRequest < Struct.new(
      :service_arn,
      :service_function_id,
      :name,
      :description,
      :criticality)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_function
    #   The updated service function.
    #   @return [Types::ServiceFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateServiceFunctionResponse AWS API Documentation
    #
    class UpdateServiceFunctionResponse < Struct.new(
      :service_function)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description for services and policies.
    #   @return [String]
    #
    # @!attribute [rw] associated_systems
    #   The updated systems to associate with the service.
    #   @return [Array<Types::AssociatedSystem>]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The updated AWS Regions where the service operates.
    #   @return [Array<String>]
    #
    # @!attribute [rw] permission_model
    #   The updated permission model for the service.
    #   @return [Types::PermissionModel]
    #
    # @!attribute [rw] dependency_discovery
    #   Caller-settable values for dependency discovery. INITIALIZING is
    #   system-managed.
    #   @return [String]
    #
    # @!attribute [rw] report_configuration
    #   Configuration for automatic report generation on a Service.
    #   @return [Types::ServiceReportConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateServiceRequest AWS API Documentation
    #
    class UpdateServiceRequest < Struct.new(
      :service_arn,
      :description,
      :associated_systems,
      :policy_arn,
      :regions,
      :permission_model,
      :dependency_discovery,
      :report_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The updated service.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateServiceResponse AWS API Documentation
    #
    class UpdateServiceResponse < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] sharing_enabled
    #   Whether cross-account sharing is enabled for the system.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateSystemRequest AWS API Documentation
    #
    class UpdateSystemRequest < Struct.new(
      :system_arn,
      :description,
      :sharing_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system
    #   The updated system.
    #   @return [Types::System]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateSystemResponse AWS API Documentation
    #
    class UpdateSystemResponse < Struct.new(
      :system)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] system_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] user_journey_id
    #   The identifier of the user journey to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Entity label (not part of ARN — spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateUserJourneyRequest AWS API Documentation
    #
    class UpdateUserJourneyRequest < Struct.new(
      :system_arn,
      :user_journey_id,
      :name,
      :description,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_journey
    #   The updated user journey.
    #   @return [Types::UserJourney]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UpdateUserJourneyResponse AWS API Documentation
    #
    class UpdateUserJourneyResponse < Struct.new(
      :user_journey)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a user journey that defines a critical path through a
    # system.
    #
    # @!attribute [rw] user_journey_id
    #   The unique identifier of the user journey.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Entity label (not part of ARN — spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Resource description.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   ARN identifier.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the user journey was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the user journey was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UserJourney AWS API Documentation
    #
    class UserJourney < Struct.new(
      :user_journey_id,
      :name,
      :description,
      :policy_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes changes made to a user journey.
    #
    # @!attribute [rw] journey_description
    #   Changes to the user journey description.
    #   @return [Types::StringChange]
    #
    # @!attribute [rw] associated_services
    #   Changes to the services associated with the user journey.
    #   @return [Types::ServiceReferenceChanges]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UserJourneyChanges AWS API Documentation
    #
    class UserJourneyChanges < Struct.new(
      :journey_description,
      :associated_services)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a user journey.
    #
    # @!attribute [rw] user_journey_id
    #   The unique identifier of the user journey.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Entity label (not part of ARN — spaces allowed).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the user journey was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the user journey was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/UserJourneySummary AWS API Documentation
    #
    class UserJourneySummary < Struct.new(
      :user_journey_id,
      :name,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation error — invalid input parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a field that failed validation.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The validation error message for the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resiliencehubv2-2026-02-17/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

