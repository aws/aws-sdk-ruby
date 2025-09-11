# frozen_string_literal: true

# This is generated code!

module Aws::ObservabilityAdmin
  # This module contains the types returned by client operations.
  module Types

    # <p>
    #       Indicates you don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access management for Amazon Web Services resources</a> in the IAM user guide.
    #     </p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>
    #         The name of the exception.
    #       </p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The requested operation conflicts with the current state of the specified resource or with another request.
    #     </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p>
    #         A unique name for the organization-wide telemetry rule being created.
    #       </p>
    #   @return [String]
    # @!attribute rule
    #   <p>
    #         The configuration details for the organization-wide telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to across the organization.
    #       </p>
    #   @return [Types::TelemetryRule]
    # @!attribute tags
    #   <p>
    #         The key-value pairs to associate with the organization telemetry rule resource for categorization and management purposes.
    #       </p>
    #   @return [Hash<String, String>]
    class CreateTelemetryRuleForOrganizationInput < Struct.new(
      :rule_name,
      :rule,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the created organization telemetry rule.
    #       </p>
    #   @return [String]
    class CreateTelemetryRuleForOrganizationOutput < Struct.new(
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p>
    #         A unique name for the telemetry rule being created.
    #       </p>
    #   @return [String]
    # @!attribute rule
    #   <p>
    #         The configuration details for the telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to.
    #       </p>
    #   @return [Types::TelemetryRule]
    # @!attribute tags
    #   <p>
    #         The key-value pairs to associate with the telemetry rule resource for categorization and management purposes.
    #       </p>
    #   @return [Hash<String, String>]
    class CreateTelemetryRuleInput < Struct.new(
      :rule_name,
      :rule,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the created telemetry rule.
    #       </p>
    #   @return [String]
    class CreateTelemetryRuleOutput < Struct.new(
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the organization telemetry rule to delete.
    #       </p>
    #   @return [String]
    class DeleteTelemetryRuleForOrganizationInput < Struct.new(
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the telemetry rule to delete.
    #       </p>
    #   @return [String]
    class DeleteTelemetryRuleInput < Struct.new(
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>
    #         The onboarding status of the telemetry config feature for the organization.
    #       </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>
    #         This field describes the reason for the failure status. The field will only be populated if <code>Status</code> is <code>FAILED_START</code> or <code>FAILED_STOP</code>.
    #       </p>
    #   @return [String]
    class GetTelemetryEvaluationStatusForOrganizationOutput < Struct.new(
      :status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>
    #         The onboarding status of the telemetry config feature.
    #       </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>
    #         Describes the reason for the failure status. The field will only be populated if <code>Status</code> is <code>FAILED_START</code> or <code>FAILED_STOP</code>.
    #       </p>
    #   @return [String]
    class GetTelemetryEvaluationStatusOutput < Struct.new(
      :status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the organization telemetry rule to retrieve.
    #       </p>
    #   @return [String]
    class GetTelemetryRuleForOrganizationInput < Struct.new(
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p>
    #         The name of the organization telemetry rule.
    #       </p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the organization telemetry rule.
    #       </p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>
    #         The timestamp when the organization telemetry rule was created.
    #       </p>
    #   @return [Integer]
    # @!attribute last_update_time_stamp
    #   <p>
    #         The timestamp when the organization telemetry rule was last updated.
    #       </p>
    #   @return [Integer]
    # @!attribute telemetry_rule
    #   <p>
    #         The configuration details of the organization telemetry rule.
    #       </p>
    #   @return [Types::TelemetryRule]
    class GetTelemetryRuleForOrganizationOutput < Struct.new(
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :telemetry_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the telemetry rule to retrieve.
    #       </p>
    #   @return [String]
    class GetTelemetryRuleInput < Struct.new(
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p>
    #         The name of the telemetry rule.
    #       </p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the telemetry rule.
    #       </p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>
    #         The timestamp when the telemetry rule was created.
    #       </p>
    #   @return [Integer]
    # @!attribute last_update_time_stamp
    #   <p>
    #         The timestamp when the telemetry rule was last updated.
    #       </p>
    #   @return [Integer]
    # @!attribute telemetry_rule
    #   <p>
    #         The configuration details of the telemetry rule.
    #       </p>
    #   @return [Types::TelemetryRule]
    class GetTelemetryRuleOutput < Struct.new(
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :telemetry_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Indicates the request has failed to process because of an unknown server error, exception, or failure.
    #     </p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>
    #         The name of the exception.
    #       </p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_identifiers
    #   <p>
    #         A list of Amazon Web Services accounts used to filter the resources to those associated with the specified accounts.
    #       </p>
    #   @return [Array<String>]
    # @!attribute resource_identifier_prefix
    #   <p>
    #         A string used to filter resources in the organization which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>.
    #       </p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>
    #       A list of resource types used to filter resources in the organization. If this parameter is provided, the resources will be returned in the same order used in the request.
    #       </p>
    #   @return [Array<String>]
    # @!attribute telemetry_configuration_state
    #   <p>
    #         A key-value pair to filter resources in the organization based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state.
    #       </p>
    #   @return [Hash<String, String>]
    # @!attribute resource_tags
    #   <p>
    #         A key-value pair to filter resources in the organization based on tags associated with the resource. Fore more information about tags, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html">What are tags?</a>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p>
    #         A number field used to limit the number of results within the returned list.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of items to return. A previous call provides this token.
    #       </p>
    #   @return [String]
    class ListResourceTelemetryForOrganizationInput < Struct.new(
      :account_identifiers,
      :resource_identifier_prefix,
      :resource_types,
      :telemetry_configuration_state,
      :resource_tags,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute telemetry_configurations
    #   <p>
    #         A list of telemetry configurations for Amazon Web Services resources supported by telemetry config in the organization.
    #       </p>
    #   @return [Array<Types::TelemetryConfiguration>]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of items to return. A previous call provides this token.
    #       </p>
    #   @return [String]
    class ListResourceTelemetryForOrganizationOutput < Struct.new(
      :telemetry_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier_prefix
    #   <p>
    #         A string used to filter resources which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>.
    #       </p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>
    #         A list of resource types used to filter resources supported by telemetry config. If this parameter is provided, the resources will be returned in the same order used in the request.
    #       </p>
    #   @return [Array<String>]
    # @!attribute telemetry_configuration_state
    #   <p>
    #         A key-value pair to filter resources based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state.
    #       </p>
    #   @return [Hash<String, String>]
    # @!attribute resource_tags
    #   <p>
    #         A key-value pair to filter resources based on tags associated with the resource. For more information about tags, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html">What are tags?</a>
    #            </p>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p>
    #         A number field used to limit the number of results within the returned list.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of items to return. A previous call generates this token.
    #       </p>
    #   @return [String]
    class ListResourceTelemetryInput < Struct.new(
      :resource_identifier_prefix,
      :resource_types,
      :telemetry_configuration_state,
      :resource_tags,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute telemetry_configurations
    #   <p>
    #         A list of telemetry configurations for Amazon Web Services resources supported by telemetry config in the caller's account.
    #       </p>
    #   @return [Array<Types::TelemetryConfiguration>]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of items to return. A previous call generates this token.
    #       </p>
    #   @return [String]
    class ListResourceTelemetryOutput < Struct.new(
      :telemetry_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the telemetry rule resource whose tags you want to list.
    #       </p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>
    #         The list of tags associated with the telemetry rule resource.
    #       </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name_prefix
    #   <p>
    #         A string to filter organization telemetry rules whose names begin with the specified prefix.
    #       </p>
    #   @return [String]
    # @!attribute source_account_ids
    #   <p>
    #         The list of account IDs to filter organization telemetry rules by their source accounts.
    #       </p>
    #   @return [Array<String>]
    # @!attribute source_organization_unit_ids
    #   <p>
    #         The list of organizational unit IDs to filter organization telemetry rules by their source organizational units.
    #       </p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>
    #         The maximum number of organization telemetry rules to return in a single call.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of results. A previous call generates this token.
    #       </p>
    #   @return [String]
    class ListTelemetryRulesForOrganizationInput < Struct.new(
      :rule_name_prefix,
      :source_account_ids,
      :source_organization_unit_ids,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute telemetry_rule_summaries
    #   <p>
    #         A list of organization telemetry rule summaries.
    #       </p>
    #   @return [Array<Types::TelemetryRuleSummary>]
    # @!attribute next_token
    #   <p>
    #         A token to resume pagination of results.
    #       </p>
    #   @return [String]
    class ListTelemetryRulesForOrganizationOutput < Struct.new(
      :telemetry_rule_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name_prefix
    #   <p>
    #         A string to filter telemetry rules whose names begin with the specified prefix.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of telemetry rules to return in a single call.
    #       </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #         The token for the next set of results. A previous call generates this token.
    #       </p>
    #   @return [String]
    class ListTelemetryRulesInput < Struct.new(
      :rule_name_prefix,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute telemetry_rule_summaries
    #   <p>
    #         A list of telemetry rule summaries.
    #       </p>
    #   @return [Array<Types::TelemetryRuleSummary>]
    # @!attribute next_token
    #   <p>
    #         A token to resume pagination of results.
    #       </p>
    #   @return [String]
    class ListTelemetryRulesOutput < Struct.new(
      :telemetry_rule_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The specified resource (such as a telemetry rule) could not be found.
    #     </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The requested operation would exceed the allowed quota for the specified resource type.
    #     </p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>
    #         The name of the exception.
    #       </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the telemetry rule resource to tag.
    #       </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #         The key-value pairs to add or update for the telemetry rule resource.
    #       </p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       A model representing the state of a resource within an account according to telemetry config.
    #     </p>
    # @!attribute account_identifier
    #   <p>
    #         The account ID which contains the resource managed in telemetry configuration. An example of a valid account ID is <code>012345678901</code>.
    #       </p>
    #   @return [String]
    # @!attribute telemetry_configuration_state
    #   <p>
    #         The configuration state for the resource, for example <code>{ Logs: NotApplicable; Metrics: Enabled; Traces: NotApplicable; }</code>.
    #         </p>
    #   @return [Hash<String, String>]
    # @!attribute resource_type
    #   <p>
    #         The type of resource, for example <code>Amazon Web Services::EC2::Instance</code>.
    #       </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>
    #        The identifier of the resource, for example <code>i-0b22a22eec53b9321</code>.
    #       </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>
    #        Tags associated with the resource, for example <code>{ Name: "ExampleInstance", Environment: "Development" }</code>.
    #       </p>
    #   @return [Hash<String, String>]
    # @!attribute last_update_time_stamp
    #   <p>
    #         The timestamp of the last change to the telemetry configuration for the resource.  For example, <code>1728679196318</code>.
    #       </p>
    #   @return [Integer]
    class TelemetryConfiguration < Struct.new(
      :account_identifier,
      :telemetry_configuration_state,
      :resource_type,
      :resource_identifier,
      :resource_tags,
      :last_update_time_stamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Configuration specifying where and how telemetry data should be delivered for Amazon Web Services resources.
    #     </p>
    # @!attribute destination_type
    #   <p>
    #         The type of destination for the telemetry data (e.g., "Amazon CloudWatch Logs", "S3").
    #       </p>
    #   @return [String]
    # @!attribute destination_pattern
    #   <p>
    #         The pattern used to generate the destination path or name, supporting macros like &lt;resourceId&gt; and &lt;accountId&gt;.
    #       </p>
    #   @return [String]
    # @!attribute retention_in_days
    #   <p>
    #         The number of days to retain the telemetry data in the destination.
    #       </p>
    #   @return [Integer]
    # @!attribute vpc_flow_log_parameters
    #   <p>
    #         Configuration parameters specific to VPC Flow Logs when VPC is the resource type.
    #       </p>
    #   @return [Types::VPCFlowLogParameters]
    class TelemetryDestinationConfiguration < Struct.new(
      :destination_type,
      :destination_pattern,
      :retention_in_days,
      :vpc_flow_log_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Defines how telemetry should be configured for specific Amazon Web Services resources.
    #     </p>
    # @!attribute resource_type
    #   <p>
    #         The type of Amazon Web Services resource to configure telemetry for (e.g., "AWS::EC2::VPC").
    #       </p>
    #   @return [String]
    # @!attribute telemetry_type
    #   <p>
    #         The type of telemetry to collect (Logs, Metrics, or Traces).
    #       </p>
    #   @return [String]
    # @!attribute destination_configuration
    #   <p>
    #         Configuration specifying where and how the telemetry data should be delivered.
    #       </p>
    #   @return [Types::TelemetryDestinationConfiguration]
    # @!attribute scope
    #   <p>
    #         The organizational scope to which the rule applies, specified using accounts or organizational units.
    #       </p>
    #   @return [String]
    # @!attribute selection_criteria
    #   <p>
    #         Criteria for selecting which resources the rule applies to, such as resource tags.
    #       </p>
    #   @return [String]
    class TelemetryRule < Struct.new(
      :resource_type,
      :telemetry_type,
      :destination_configuration,
      :scope,
      :selection_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       A summary of a telemetry rule's key properties.
    #     </p>
    # @!attribute rule_name
    #   <p>
    #         The name of the telemetry rule.
    #       </p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the telemetry rule.
    #       </p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>
    #         The timestamp when the telemetry rule was created.
    #       </p>
    #   @return [Integer]
    # @!attribute last_update_time_stamp
    #   <p>
    #         The timestamp when the telemetry rule was last modified.
    #       </p>
    #   @return [Integer]
    # @!attribute resource_type
    #   <p>
    #         The type of Amazon Web Services resource the rule applies to.
    #       </p>
    #   @return [String]
    # @!attribute telemetry_type
    #   <p>
    #         The type of telemetry (Logs, Metrics, or Traces) the rule configures.
    #       </p>
    #   @return [String]
    class TelemetryRuleSummary < Struct.new(
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :resource_type,
      :telemetry_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The request throughput limit was exceeded.
    #     </p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the telemetry rule resource to remove tags from.
    #       </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>
    #         The list of tag keys to remove from the telemetry rule resource.
    #       </p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the organization telemetry rule to update.
    #       </p>
    #   @return [String]
    # @!attribute rule
    #   <p>
    #         The new configuration details for the organization telemetry rule, including resource type, telemetry type, and destination configuration.
    #       </p>
    #   @return [Types::TelemetryRule]
    class UpdateTelemetryRuleForOrganizationInput < Struct.new(
      :rule_identifier,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the updated organization telemetry rule.
    #       </p>
    #   @return [String]
    class UpdateTelemetryRuleForOrganizationOutput < Struct.new(
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>
    #         The identifier (name or ARN) of the telemetry rule to update.
    #       </p>
    #   @return [String]
    # @!attribute rule
    #   <p>
    #         The new configuration details for the telemetry rule.
    #       </p>
    #   @return [Types::TelemetryRule]
    class UpdateTelemetryRuleInput < Struct.new(
      :rule_identifier,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the updated telemetry rule.
    #       </p>
    #   @return [String]
    class UpdateTelemetryRuleOutput < Struct.new(
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Configuration parameters specific to VPC Flow Logs.
    #     </p>
    # @!attribute log_format
    #   <p>
    #         The format in which VPC Flow Log entries should be logged.
    #       </p>
    #   @return [String]
    # @!attribute traffic_type
    #   <p>
    #         The type of traffic to log (ACCEPT, REJECT, or ALL).
    #       </p>
    #   @return [String]
    # @!attribute max_aggregation_interval
    #   <p>
    #         The maximum interval in seconds between the capture of flow log records.
    #       </p>
    #   @return [Integer]
    class VPCFlowLogParameters < Struct.new(
      :log_format,
      :traffic_type,
      :max_aggregation_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #      Indicates input validation failed. Check your request parameters and retry the request.
    #     </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
