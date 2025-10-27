# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ObservabilityAdmin
  module Types

    # Indicates you don't have permissions to perform the requested
    # operation. The user or role that is making the request must have at
    # least one IAM permissions policy attached that grants the required
    # permissions. For more information, see [Access management for Amazon
    # Web Services resources][1] in the IAM user guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how telemetry data should be centralized across an Amazon Web
    # Services Organization, including source and destination
    # configurations.
    #
    # @!attribute [rw] source
    #   Configuration determining the source of the telemetry data to be
    #   centralized.
    #   @return [Types::CentralizationRuleSource]
    #
    # @!attribute [rw] destination
    #   Configuration determining where the telemetry data should be
    #   centralized, backed up, as well as encryption configuration for the
    #   primary and backup destinations.
    #   @return [Types::CentralizationRuleDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CentralizationRule AWS API Documentation
    #
    class CentralizationRule < Struct.new(
      :source,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration specifying the primary destination for centralized
    # telemetry data.
    #
    # @!attribute [rw] region
    #   The primary destination region to which telemetry data should be
    #   centralized.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The destination account (within the organization) to which the
    #   telemetry data should be centralized.
    #   @return [String]
    #
    # @!attribute [rw] destination_logs_configuration
    #   Log specific configuration for centralization destination log
    #   groups.
    #   @return [Types::DestinationLogsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CentralizationRuleDestination AWS API Documentation
    #
    class CentralizationRuleDestination < Struct.new(
      :region,
      :account,
      :destination_logs_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration specifying the source of telemetry data to be
    # centralized.
    #
    # @!attribute [rw] regions
    #   The list of source regions from which telemetry data should be
    #   centralized.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The organizational scope from which telemetry data should be
    #   centralized, specified using organization id, accounts or
    #   organizational unit ids.
    #   @return [String]
    #
    # @!attribute [rw] source_logs_configuration
    #   Log specific configuration for centralization source log groups.
    #   @return [Types::SourceLogsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CentralizationRuleSource AWS API Documentation
    #
    class CentralizationRuleSource < Struct.new(
      :regions,
      :scope,
      :source_logs_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a centralization rule's key properties and status.
    #
    # @!attribute [rw] rule_name
    #   The name of the organization centralization rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the organization centralization
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The Amazon Web Services Account that created the organization
    #   centralization rule.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The timestamp when the organization centralization rule was created.
    #   @return [Integer]
    #
    # @!attribute [rw] created_region
    #   The Amazon Web Services region where the organization centralization
    #   rule was created.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp when the organization centralization rule was last
    #   updated.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_health
    #   The health status of the organization centralization rule.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason why an organization centralization rule is marked
    #   UNHEALTHY.
    #   @return [String]
    #
    # @!attribute [rw] destination_account_id
    #   The primary destination account of the organization centralization
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   The primary destination region of the organization centralization
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CentralizationRuleSummary AWS API Documentation
    #
    class CentralizationRuleSummary < Struct.new(
      :rule_name,
      :rule_arn,
      :creator_account_id,
      :created_time_stamp,
      :created_region,
      :last_update_time_stamp,
      :rule_health,
      :failure_reason,
      :destination_account_id,
      :destination_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation conflicts with the current state of the
    # specified resource or with another request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name
    #   A unique name for the organization-wide centralization rule being
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The configuration details for the organization-wide centralization
    #   rule, including the source configuration and the destination
    #   configuration to centralize telemetry data across the organization.
    #   @return [Types::CentralizationRule]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with the organization telemetry
    #   rule resource for categorization and management purposes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateCentralizationRuleForOrganizationInput AWS API Documentation
    #
    class CreateCentralizationRuleForOrganizationInput < Struct.new(
      :rule_name,
      :rule,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the created organization
    #   centralization rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateCentralizationRuleForOrganizationOutput AWS API Documentation
    #
    class CreateCentralizationRuleForOrganizationOutput < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name
    #   A unique name for the organization-wide telemetry rule being
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The configuration details for the organization-wide telemetry rule,
    #   including the resource type, telemetry type, destination
    #   configuration, and selection criteria for which resources the rule
    #   applies to across the organization.
    #   @return [Types::TelemetryRule]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with the organization telemetry
    #   rule resource for categorization and management purposes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateTelemetryRuleForOrganizationInput AWS API Documentation
    #
    class CreateTelemetryRuleForOrganizationInput < Struct.new(
      :rule_name,
      :rule,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the created organization telemetry
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateTelemetryRuleForOrganizationOutput AWS API Documentation
    #
    class CreateTelemetryRuleForOrganizationOutput < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name
    #   A unique name for the telemetry rule being created.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The configuration details for the telemetry rule, including the
    #   resource type, telemetry type, destination configuration, and
    #   selection criteria for which resources the rule applies to.
    #   @return [Types::TelemetryRule]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with the telemetry rule resource
    #   for categorization and management purposes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateTelemetryRuleInput AWS API Documentation
    #
    class CreateTelemetryRuleInput < Struct.new(
      :rule_name,
      :rule,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the created telemetry rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateTelemetryRuleOutput AWS API Documentation
    #
    class CreateTelemetryRuleOutput < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the organization centralization rule
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/DeleteCentralizationRuleForOrganizationInput AWS API Documentation
    #
    class DeleteCentralizationRuleForOrganizationInput < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the organization telemetry rule to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/DeleteTelemetryRuleForOrganizationInput AWS API Documentation
    #
    class DeleteTelemetryRuleForOrganizationInput < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the telemetry rule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/DeleteTelemetryRuleInput AWS API Documentation
    #
    class DeleteTelemetryRuleInput < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for centralization destination log groups, including
    # encryption and backup settings.
    #
    # @!attribute [rw] logs_encryption_configuration
    #   The encryption configuration for centralization destination log
    #   groups.
    #   @return [Types::LogsEncryptionConfiguration]
    #
    # @!attribute [rw] backup_configuration
    #   Configuration defining the backup region and an optional KMS key for
    #   the backup destination.
    #   @return [Types::LogsBackupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/DestinationLogsConfiguration AWS API Documentation
    #
    class DestinationLogsConfiguration < Struct.new(
      :logs_encryption_configuration,
      :backup_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the organization centralization rule
    #   to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetCentralizationRuleForOrganizationInput AWS API Documentation
    #
    class GetCentralizationRuleForOrganizationInput < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name
    #   The name of the organization centralization rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the organization centralization
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] creator_account_id
    #   The Amazon Web Services Account that created the organization
    #   centralization rule.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The timestamp when the organization centralization rule was created.
    #   @return [Integer]
    #
    # @!attribute [rw] created_region
    #   The Amazon Web Services region where the organization centralization
    #   rule was created.
    #   @return [String]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp when the organization centralization rule was last
    #   updated.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_health
    #   The health status of the organization centralization rule.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason why an organization centralization rule is marked
    #   UNHEALTHY.
    #   @return [String]
    #
    # @!attribute [rw] centralization_rule
    #   The configuration details for the organization centralization rule.
    #   @return [Types::CentralizationRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetCentralizationRuleForOrganizationOutput AWS API Documentation
    #
    class GetCentralizationRuleForOrganizationOutput < Struct.new(
      :rule_name,
      :rule_arn,
      :creator_account_id,
      :created_time_stamp,
      :created_region,
      :last_update_time_stamp,
      :rule_health,
      :failure_reason,
      :centralization_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the resource tags for telemetry feature
    #   (`Running`, `Stopped`, or `Impaired`).
    #   @return [String]
    #
    # @!attribute [rw] aws_resource_explorer_managed_view_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Resource
    #   Explorer managed view used for resource tags for telemetry, if the
    #   feature is enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryEnrichmentStatusOutput AWS API Documentation
    #
    class GetTelemetryEnrichmentStatusOutput < Struct.new(
      :status,
      :aws_resource_explorer_managed_view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The onboarding status of the telemetry config feature for the
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   This field describes the reason for the failure status. The field
    #   will only be populated if `Status` is `FAILED_START` or
    #   `FAILED_STOP`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryEvaluationStatusForOrganizationOutput AWS API Documentation
    #
    class GetTelemetryEvaluationStatusForOrganizationOutput < Struct.new(
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The onboarding status of the telemetry config feature.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Describes the reason for the failure status. The field will only be
    #   populated if `Status` is `FAILED_START` or `FAILED_STOP`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryEvaluationStatusOutput AWS API Documentation
    #
    class GetTelemetryEvaluationStatusOutput < Struct.new(
      :status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the organization telemetry rule to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryRuleForOrganizationInput AWS API Documentation
    #
    class GetTelemetryRuleForOrganizationInput < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name
    #   The name of the organization telemetry rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the organization telemetry rule.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The timestamp when the organization telemetry rule was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp when the organization telemetry rule was last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] telemetry_rule
    #   The configuration details of the organization telemetry rule.
    #   @return [Types::TelemetryRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryRuleForOrganizationOutput AWS API Documentation
    #
    class GetTelemetryRuleForOrganizationOutput < Struct.new(
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :telemetry_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the telemetry rule to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryRuleInput AWS API Documentation
    #
    class GetTelemetryRuleInput < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name
    #   The name of the telemetry rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the telemetry rule.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The timestamp when the telemetry rule was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp when the telemetry rule was last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] telemetry_rule
    #   The configuration details of the telemetry rule.
    #   @return [Types::TelemetryRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryRuleOutput AWS API Documentation
    #
    class GetTelemetryRuleOutput < Struct.new(
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :telemetry_rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the request has failed to process because of an unknown
    # server error, exception, or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name_prefix
    #   A string to filter organization centralization rules whose names
    #   begin with the specified prefix.
    #   @return [String]
    #
    # @!attribute [rw] all_regions
    #   A flag determining whether to return organization centralization
    #   rules from all regions or only the current region.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of organization centralization rules to return in
    #   a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. A previous call generates
    #   this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListCentralizationRulesForOrganizationInput AWS API Documentation
    #
    class ListCentralizationRulesForOrganizationInput < Struct.new(
      :rule_name_prefix,
      :all_regions,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] centralization_rule_summaries
    #   A list of centralization rule summaries.
    #   @return [Array<Types::CentralizationRuleSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListCentralizationRulesForOrganizationOutput AWS API Documentation
    #
    class ListCentralizationRulesForOrganizationOutput < Struct.new(
      :centralization_rule_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_identifiers
    #   A list of Amazon Web Services accounts used to filter the resources
    #   to those associated with the specified accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_identifier_prefix
    #   A string used to filter resources in the organization which have a
    #   `ResourceIdentifier` starting with the `ResourceIdentifierPrefix`.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   A list of resource types used to filter resources in the
    #   organization. If this parameter is provided, the resources will be
    #   returned in the same order used in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] telemetry_configuration_state
    #   A key-value pair to filter resources in the organization based on
    #   the telemetry type and the state of the telemetry configuration. The
    #   key is the telemetry type and the value is the state.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_tags
    #   A key-value pair to filter resources in the organization based on
    #   tags associated with the resource. Fore more information about tags,
    #   see [What are tags?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   A number field used to limit the number of results within the
    #   returned list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. A previous call
    #   provides this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListResourceTelemetryForOrganizationInput AWS API Documentation
    #
    class ListResourceTelemetryForOrganizationInput < Struct.new(
      :account_identifiers,
      :resource_identifier_prefix,
      :resource_types,
      :telemetry_configuration_state,
      :resource_tags,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] telemetry_configurations
    #   A list of telemetry configurations for Amazon Web Services resources
    #   supported by telemetry config in the organization.
    #   @return [Array<Types::TelemetryConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. A previous call
    #   provides this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListResourceTelemetryForOrganizationOutput AWS API Documentation
    #
    class ListResourceTelemetryForOrganizationOutput < Struct.new(
      :telemetry_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier_prefix
    #   A string used to filter resources which have a `ResourceIdentifier`
    #   starting with the `ResourceIdentifierPrefix`.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   A list of resource types used to filter resources supported by
    #   telemetry config. If this parameter is provided, the resources will
    #   be returned in the same order used in the request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] telemetry_configuration_state
    #   A key-value pair to filter resources based on the telemetry type and
    #   the state of the telemetry configuration. The key is the telemetry
    #   type and the value is the state.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_tags
    #   A key-value pair to filter resources based on tags associated with
    #   the resource. For more information about tags, see [What are
    #   tags?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   A number field used to limit the number of results within the
    #   returned list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. A previous call
    #   generates this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListResourceTelemetryInput AWS API Documentation
    #
    class ListResourceTelemetryInput < Struct.new(
      :resource_identifier_prefix,
      :resource_types,
      :telemetry_configuration_state,
      :resource_tags,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] telemetry_configurations
    #   A list of telemetry configurations for Amazon Web Services resources
    #   supported by telemetry config in the caller's account.
    #   @return [Array<Types::TelemetryConfiguration>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. A previous call
    #   generates this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListResourceTelemetryOutput AWS API Documentation
    #
    class ListResourceTelemetryOutput < Struct.new(
      :telemetry_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the telemetry rule resource whose
    #   tags you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the telemetry rule resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name_prefix
    #   A string to filter organization telemetry rules whose names begin
    #   with the specified prefix.
    #   @return [String]
    #
    # @!attribute [rw] source_account_ids
    #   The list of account IDs to filter organization telemetry rules by
    #   their source accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_organization_unit_ids
    #   The list of organizational unit IDs to filter organization telemetry
    #   rules by their source organizational units.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of organization telemetry rules to return in a
    #   single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. A previous call generates
    #   this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListTelemetryRulesForOrganizationInput AWS API Documentation
    #
    class ListTelemetryRulesForOrganizationInput < Struct.new(
      :rule_name_prefix,
      :source_account_ids,
      :source_organization_unit_ids,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] telemetry_rule_summaries
    #   A list of organization telemetry rule summaries.
    #   @return [Array<Types::TelemetryRuleSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListTelemetryRulesForOrganizationOutput AWS API Documentation
    #
    class ListTelemetryRulesForOrganizationOutput < Struct.new(
      :telemetry_rule_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_name_prefix
    #   A string to filter telemetry rules whose names begin with the
    #   specified prefix.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of telemetry rules to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. A previous call generates
    #   this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListTelemetryRulesInput AWS API Documentation
    #
    class ListTelemetryRulesInput < Struct.new(
      :rule_name_prefix,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] telemetry_rule_summaries
    #   A list of telemetry rule summaries.
    #   @return [Array<Types::TelemetryRuleSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListTelemetryRulesOutput AWS API Documentation
    #
    class ListTelemetryRulesOutput < Struct.new(
      :telemetry_rule_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for backing up centralized log data to a secondary
    # region.
    #
    # @!attribute [rw] region
    #   Logs specific backup destination region within the primary
    #   destination account to which log data should be centralized.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   KMS Key arn belonging to the primary destination account and backup
    #   region, to encrypt newly created central log groups in the backup
    #   destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/LogsBackupConfiguration AWS API Documentation
    #
    class LogsBackupConfiguration < Struct.new(
      :region,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for encrypting centralized log groups. This
    # configuration is only applied to destination log groups for which the
    # corresponding source log groups are encrypted using Customer Managed
    # KMS Keys.
    #
    # @!attribute [rw] encryption_strategy
    #   Configuration that determines the encryption strategy of the
    #   destination log groups. CUSTOMER\_MANAGED uses the configured
    #   KmsKeyArn to encrypt newly created destination log groups.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   KMS Key arn belonging to the primary destination account and region,
    #   to encrypt newly created central log groups in the primary
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] encryption_conflict_resolution_strategy
    #   Conflict resolution strategy for centralization if the encryption
    #   strategy is set to CUSTOMER\_MANAGED and the destination log group
    #   is encrypted with an AWS\_OWNED KMS Key. ALLOW lets centralization
    #   go through while SKIP prevents centralization into the destination
    #   log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/LogsEncryptionConfiguration AWS API Documentation
    #
    class LogsEncryptionConfiguration < Struct.new(
      :encryption_strategy,
      :kms_key_arn,
      :encryption_conflict_resolution_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource (such as a telemetry rule) could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would exceed the allowed quota for the
    # specified resource type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for selecting and handling source log groups for
    # centralization.
    #
    # @!attribute [rw] log_group_selection_criteria
    #   The selection criteria that specifies which source log groups to
    #   centralize. The selection criteria uses the same format as OAM link
    #   filters.
    #   @return [String]
    #
    # @!attribute [rw] encrypted_log_group_strategy
    #   A strategy determining whether to centralize source log groups that
    #   are encrypted with customer managed KMS keys (CMK). ALLOW will
    #   consider CMK encrypted source log groups for centralization while
    #   SKIP will skip CMK encrypted source log groups from centralization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/SourceLogsConfiguration AWS API Documentation
    #
    class SourceLogsConfiguration < Struct.new(
      :log_group_selection_criteria,
      :encrypted_log_group_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the resource tags for telemetry feature after the
    #   start operation (`Running`, `Stopped`, or `Impaired`).
    #   @return [String]
    #
    # @!attribute [rw] aws_resource_explorer_managed_view_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Resource
    #   Explorer managed view created for resource tags for telemetry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/StartTelemetryEnrichmentOutput AWS API Documentation
    #
    class StartTelemetryEnrichmentOutput < Struct.new(
      :status,
      :aws_resource_explorer_managed_view_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the resource tags for telemetry feature after the stop
    #   operation (`Running`, `Stopped`, or `Impaired`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/StopTelemetryEnrichmentOutput AWS API Documentation
    #
    class StopTelemetryEnrichmentOutput < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the telemetry rule resource to
    #   tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to add or update for the telemetry rule
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A model representing the state of a resource within an account
    # according to telemetry config.
    #
    # @!attribute [rw] account_identifier
    #   The account ID which contains the resource managed in telemetry
    #   configuration. An example of a valid account ID is `012345678901`.
    #   @return [String]
    #
    # @!attribute [rw] telemetry_configuration_state
    #   The configuration state for the resource, for example `{ Logs:
    #   NotApplicable; Metrics: Enabled; Traces: NotApplicable; }`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_type
    #   The type of resource, for example `Amazon Web
    #   Services::EC2::Instance`.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier of the resource, for example `i-0b22a22eec53b9321`.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   Tags associated with the resource, for example `{ Name:
    #   "ExampleInstance", Environment: "Development" }`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp of the last change to the telemetry configuration for
    #   the resource. For example, `1728679196318`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryConfiguration AWS API Documentation
    #
    class TelemetryConfiguration < Struct.new(
      :account_identifier,
      :telemetry_configuration_state,
      :resource_type,
      :resource_identifier,
      :resource_tags,
      :last_update_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration specifying where and how telemetry data should be
    # delivered for Amazon Web Services resources.
    #
    # @!attribute [rw] destination_type
    #   The type of destination for the telemetry data (e.g., "Amazon
    #   CloudWatch Logs", "S3").
    #   @return [String]
    #
    # @!attribute [rw] destination_pattern
    #   The pattern used to generate the destination path or name,
    #   supporting macros like &lt;resourceId&gt; and &lt;accountId&gt;.
    #   @return [String]
    #
    # @!attribute [rw] retention_in_days
    #   The number of days to retain the telemetry data in the destination.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_flow_log_parameters
    #   Configuration parameters specific to VPC Flow Logs when VPC is the
    #   resource type.
    #   @return [Types::VPCFlowLogParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryDestinationConfiguration AWS API Documentation
    #
    class TelemetryDestinationConfiguration < Struct.new(
      :destination_type,
      :destination_pattern,
      :retention_in_days,
      :vpc_flow_log_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how telemetry should be configured for specific Amazon Web
    # Services resources.
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource to configure telemetry for
    #   (e.g., "AWS::EC2::VPC").
    #   @return [String]
    #
    # @!attribute [rw] telemetry_type
    #   The type of telemetry to collect (Logs, Metrics, or Traces).
    #   @return [String]
    #
    # @!attribute [rw] destination_configuration
    #   Configuration specifying where and how the telemetry data should be
    #   delivered.
    #   @return [Types::TelemetryDestinationConfiguration]
    #
    # @!attribute [rw] scope
    #   The organizational scope to which the rule applies, specified using
    #   accounts or organizational units.
    #   @return [String]
    #
    # @!attribute [rw] selection_criteria
    #   Criteria for selecting which resources the rule applies to, such as
    #   resource tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryRule AWS API Documentation
    #
    class TelemetryRule < Struct.new(
      :resource_type,
      :telemetry_type,
      :destination_configuration,
      :scope,
      :selection_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a telemetry rule's key properties.
    #
    # @!attribute [rw] rule_name
    #   The name of the telemetry rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the telemetry rule.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The timestamp when the telemetry rule was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp when the telemetry rule was last modified.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource the rule applies to.
    #   @return [String]
    #
    # @!attribute [rw] telemetry_type
    #   The type of telemetry (Logs, Metrics, or Traces) the rule
    #   configures.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryRuleSummary AWS API Documentation
    #
    class TelemetryRuleSummary < Struct.new(
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :resource_type,
      :telemetry_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request throughput limit was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the telemetry rule resource to
    #   remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the telemetry rule resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the organization centralization rule
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The configuration details for the organization-wide centralization
    #   rule, including the source configuration and the destination
    #   configuration to centralize telemetry data across the organization.
    #   @return [Types::CentralizationRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UpdateCentralizationRuleForOrganizationInput AWS API Documentation
    #
    class UpdateCentralizationRuleForOrganizationInput < Struct.new(
      :rule_identifier,
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the updated organization
    #   centralization rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UpdateCentralizationRuleForOrganizationOutput AWS API Documentation
    #
    class UpdateCentralizationRuleForOrganizationOutput < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the organization telemetry rule to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The new configuration details for the organization telemetry rule,
    #   including resource type, telemetry type, and destination
    #   configuration.
    #   @return [Types::TelemetryRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UpdateTelemetryRuleForOrganizationInput AWS API Documentation
    #
    class UpdateTelemetryRuleForOrganizationInput < Struct.new(
      :rule_identifier,
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the updated organization telemetry
    #   rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UpdateTelemetryRuleForOrganizationOutput AWS API Documentation
    #
    class UpdateTelemetryRuleForOrganizationOutput < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier (name or ARN) of the telemetry rule to update.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The new configuration details for the telemetry rule.
    #   @return [Types::TelemetryRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UpdateTelemetryRuleInput AWS API Documentation
    #
    class UpdateTelemetryRuleInput < Struct.new(
      :rule_identifier,
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the updated telemetry rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UpdateTelemetryRuleOutput AWS API Documentation
    #
    class UpdateTelemetryRuleOutput < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters specific to VPC Flow Logs.
    #
    # @!attribute [rw] log_format
    #   The format in which VPC Flow Log entries should be logged.
    #   @return [String]
    #
    # @!attribute [rw] traffic_type
    #   The type of traffic to log (ACCEPT, REJECT, or ALL).
    #   @return [String]
    #
    # @!attribute [rw] max_aggregation_interval
    #   The maximum interval in seconds between the capture of flow log
    #   records.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/VPCFlowLogParameters AWS API Documentation
    #
    class VPCFlowLogParameters < Struct.new(
      :log_format,
      :traffic_type,
      :max_aggregation_interval)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates input validation failed. Check your request parameters and
    # retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

