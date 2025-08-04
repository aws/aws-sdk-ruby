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

