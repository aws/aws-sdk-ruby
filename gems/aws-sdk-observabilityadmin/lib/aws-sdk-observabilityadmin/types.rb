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

    # Condition that matches based on the specific WAF action taken on the
    # request.
    #
    # @!attribute [rw] action
    #   The WAF action to match against (ALLOW, BLOCK, COUNT, CAPTCHA,
    #   CHALLENGE, EXCLUDED\_AS\_COUNT).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ActionCondition AWS API Documentation
    #
    class ActionCondition < Struct.new(
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Advanced event selectors let you create fine-grained selectors for
    # management, data, and network activity events.
    #
    # @!attribute [rw] name
    #   An optional, descriptive name for an advanced event selector, such
    #   as "Log data events for only two S3 buckets".
    #   @return [String]
    #
    # @!attribute [rw] field_selectors
    #   Contains all selector statements in an advanced event selector.
    #   @return [Array<Types::AdvancedFieldSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/AdvancedEventSelector AWS API Documentation
    #
    class AdvancedEventSelector < Struct.new(
      :name,
      :field_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines criteria for selecting resources based on field values.
    #
    # @!attribute [rw] field
    #   The name of the field to use for selection.
    #   @return [String]
    #
    # @!attribute [rw] equals
    #   Matches if the field value equals the specified value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] starts_with
    #   Matches if the field value starts with the specified value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ends_with
    #   Matches if the field value ends with the specified value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_equals
    #   Matches if the field value does not equal the specified value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_starts_with
    #   Matches if the field value does not start with the specified value.
    #   @return [Array<String>]
    #
    # @!attribute [rw] not_ends_with
    #   Matches if the field value does not end with the specified value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/AdvancedFieldSelector AWS API Documentation
    #
    class AdvancedFieldSelector < Struct.new(
      :field,
      :equals,
      :starts_with,
      :ends_with,
      :not_equals,
      :not_starts_with,
      :not_ends_with)
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

    # Parameters specific to Amazon Web Services CloudTrail telemetry
    # configuration.
    #
    # @!attribute [rw] advanced_event_selectors
    #   The advanced event selectors to use for filtering Amazon Web
    #   Services CloudTrail events.
    #   @return [Array<Types::AdvancedEventSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CloudtrailParameters AWS API Documentation
    #
    class CloudtrailParameters < Struct.new(
      :advanced_event_selectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single condition that can match based on WAF rule action or label
    # name.
    #
    # @!attribute [rw] action_condition
    #   Matches log records based on the WAF rule action taken (ALLOW,
    #   BLOCK, COUNT, etc.).
    #   @return [Types::ActionCondition]
    #
    # @!attribute [rw] label_name_condition
    #   Matches log records based on WAF rule labels applied to the request.
    #   @return [Types::LabelNameCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :action_condition,
      :label_name_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of pipeline configuration components including
    # sources, processors, and destinations.
    #
    # @!attribute [rw] sources
    #   The list of data sources configured in the pipeline.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] data_sources
    #   The list of data sources that provide telemetry data to the
    #   pipeline.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] processors
    #   The list of processors configured in the pipeline for data
    #   transformation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_count
    #   The total number of processors configured in the pipeline.
    #   @return [Integer]
    #
    # @!attribute [rw] sinks
    #   The list of destinations where processed data is sent.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ConfigurationSummary AWS API Documentation
    #
    class ConfigurationSummary < Struct.new(
      :sources,
      :data_sources,
      :processors,
      :processor_count,
      :sinks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation conflicts with the current state of the
    # specified resource or with another request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource which is in conflict with the
    #   requested operation.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource which is in conflict with the requested
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
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

    # @!attribute [rw] encryption
    #   The encryption configuration for the S3 Table integration, including
    #   the encryption algorithm and KMS key settings.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants
    #   permissions for the S3 Table integration to access necessary
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with the S3 Table integration
    #   resource for categorization and management purposes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateS3TableIntegrationInput AWS API Documentation
    #
    class CreateS3TableIntegrationInput < Struct.new(
      :encryption,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created S3 Table integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateS3TableIntegrationOutput AWS API Documentation
    #
    class CreateS3TableIntegrationOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the telemetry pipeline to create. The name must be
    #   unique within your account.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration that defines how the telemetry pipeline processes
    #   data, including sources, processors, and destinations. For more
    #   information about pipeline components, see the [Amazon CloudWatch
    #   User Guide][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/pipeline-components-reference.html
    #   @return [Types::TelemetryPipelineConfiguration]
    #
    # @!attribute [rw] tags
    #   The key-value pairs to associate with the telemetry pipeline
    #   resource for categorization and management purposes.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateTelemetryPipelineInput AWS API Documentation
    #
    class CreateTelemetryPipelineInput < Struct.new(
      :name,
      :configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the created telemetry pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/CreateTelemetryPipelineOutput AWS API Documentation
    #
    class CreateTelemetryPipelineOutput < Struct.new(
      :arn)
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

    # Information about a data source associated with the telemetry
    # pipeline. For CloudWatch Logs sources, this includes both a name and
    # type extracted from the log event metadata. For third-party sources
    # (such as S3), this includes only a name, with the type field left
    # empty.
    #
    # @!attribute [rw] name
    #   The name of the data source. For CloudWatch Logs sources, this
    #   corresponds to the `data_source_name` from the log event metadata.
    #   For third-party sources, this is either the configured
    #   `data_source_name` or defaults to the plugin name if not specified.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source. For CloudWatch Logs sources, this
    #   corresponds to the `data_source_type` from the log event metadata.
    #   For third-party sources, this field is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :name,
      :type)
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

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the S3 Table integration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/DeleteS3TableIntegrationInput AWS API Documentation
    #
    class DeleteS3TableIntegrationInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_identifier
    #   The ARN of the telemetry pipeline to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/DeleteTelemetryPipelineInput AWS API Documentation
    #
    class DeleteTelemetryPipelineInput < Struct.new(
      :pipeline_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/DeleteTelemetryPipelineOutput AWS API Documentation
    #
    class DeleteTelemetryPipelineOutput < Aws::EmptyStructure; end

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

    # Configuration parameters for ELB load balancer logging, including
    # output format and field delimiter settings.
    #
    # @!attribute [rw] output_format
    #   The format for ELB access log entries (plain text or JSON format).
    #   @return [String]
    #
    # @!attribute [rw] field_delimiter
    #   The delimiter character used to separate fields in ELB access log
    #   entries when using plain text format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ELBLoadBalancerLoggingParameters AWS API Documentation
    #
    class ELBLoadBalancerLoggingParameters < Struct.new(
      :output_format,
      :field_delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the encryption configuration for S3 Table integrations,
    # including the encryption algorithm and KMS key settings.
    #
    # @!attribute [rw] sse_algorithm
    #   The server-side encryption algorithm used for encrypting data in the
    #   S3 Table integration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used for encryption
    #   when using customer-managed keys.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/Encryption AWS API Documentation
    #
    class Encryption < Struct.new(
      :sse_algorithm,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a field in the request to redact from WAF logs, such as
    # headers, query parameters, or body content.
    #
    # @!attribute [rw] single_header
    #   Redacts a specific header field by name from WAF logs.
    #   @return [Types::SingleHeader]
    #
    # @!attribute [rw] uri_path
    #   Redacts the URI path from WAF logs.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   Redacts the entire query string from WAF logs.
    #   @return [String]
    #
    # @!attribute [rw] method
    #   Redacts the HTTP method from WAF logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/FieldToMatch AWS API Documentation
    #
    class FieldToMatch < Struct.new(
      :single_header,
      :uri_path,
      :query_string,
      :method)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single filter condition that specifies behavior, requirement, and
    # matching conditions for WAF log records.
    #
    # @!attribute [rw] behavior
    #   The action to take for log records matching this filter (KEEP or
    #   DROP).
    #   @return [String]
    #
    # @!attribute [rw] requirement
    #   Whether the log record must meet all conditions (MEETS\_ALL) or any
    #   condition (MEETS\_ANY) to match this filter.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The list of conditions that determine if a log record matches this
    #   filter.
    #   @return [Array<Types::Condition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :behavior,
      :requirement,
      :conditions)
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

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the S3 Table integration to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetS3TableIntegrationInput AWS API Documentation
    #
    class GetS3TableIntegrationInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the S3 Table integration.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used by the S3 Table
    #   integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the S3 Table integration.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The encryption configuration for the S3 Table integration.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] destination_table_bucket_arn
    #   The Amazon Resource Name (ARN) of the S3 bucket used as the
    #   destination for the table data.
    #   @return [String]
    #
    # @!attribute [rw] created_time_stamp
    #   The timestamp when the S3 Table integration was created.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetS3TableIntegrationOutput AWS API Documentation
    #
    class GetS3TableIntegrationOutput < Struct.new(
      :arn,
      :role_arn,
      :status,
      :encryption,
      :destination_table_bucket_arn,
      :created_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the resource tags for telemetry feature
    #   (`Running`, `Stopped`, or `Impaired`).
    #   @return [String]
    #
    # @!attribute [rw] aws_resource_explorer_managed_view_arn
    #   The Amazon Resource Name (ARN) of the Resource Explorer managed view
    #   used for resource tags for telemetry, if the feature is enabled.
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

    # @!attribute [rw] pipeline_identifier
    #   The identifier (name or ARN) of the telemetry pipeline to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryPipelineInput AWS API Documentation
    #
    class GetTelemetryPipelineInput < Struct.new(
      :pipeline_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   The complete telemetry pipeline resource information, including
    #   configuration, status, and metadata.
    #   @return [Types::TelemetryPipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/GetTelemetryPipelineOutput AWS API Documentation
    #
    class GetTelemetryPipelineOutput < Struct.new(
      :pipeline)
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

    # Contains summary information about an S3 Table integration for listing
    # operations.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the S3 Table integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the S3 Table integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/IntegrationSummary AWS API Documentation
    #
    class IntegrationSummary < Struct.new(
      :arn,
      :status)
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
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :amzn_error_type,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation cannot be completed on the specified resource
    # in the current state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Condition that matches based on WAF rule labels, with label names
    # limited to 1024 characters.
    #
    # @!attribute [rw] label_name
    #   The label name to match, supporting alphanumeric characters,
    #   underscores, hyphens, and colons.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/LabelNameCondition AWS API Documentation
    #
    class LabelNameCondition < Struct.new(
      :label_name)
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

    # @!attribute [rw] max_results
    #   The maximum number of S3 Table integrations to return in a single
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. A previous call generates
    #   this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListS3TableIntegrationsInput AWS API Documentation
    #
    class ListS3TableIntegrationsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_summaries
    #   A list of S3 Table integration summaries containing key information
    #   about each integration.
    #   @return [Array<Types::IntegrationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListS3TableIntegrationsOutput AWS API Documentation
    #
    class ListS3TableIntegrationsOutput < Struct.new(
      :integration_summaries,
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

    # @!attribute [rw] max_results
    #   The maximum number of telemetry pipelines to return in a single
    #   call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. A previous call generates
    #   this token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListTelemetryPipelinesInput AWS API Documentation
    #
    class ListTelemetryPipelinesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_summaries
    #   A list of telemetry pipeline summaries containing key information
    #   about each pipeline.
    #   @return [Array<Types::TelemetryPipelineSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ListTelemetryPipelinesOutput AWS API Documentation
    #
    class ListTelemetryPipelinesOutput < Struct.new(
      :pipeline_summaries,
      :next_token)
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

    # Configuration parameters for Amazon Bedrock AgentCore logging,
    # including `logType` settings.
    #
    # @!attribute [rw] log_types
    #   The type of log that the source is sending.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/LogDeliveryParameters AWS API Documentation
    #
    class LogDeliveryParameters < Struct.new(
      :log_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration that determines which WAF log records to keep or drop
    # based on specified conditions.
    #
    # @!attribute [rw] filters
    #   A list of filter conditions that determine log record handling
    #   behavior.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] default_behavior
    #   The default action (KEEP or DROP) for log records that don't match
    #   any filter conditions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/LoggingFilter AWS API Documentation
    #
    class LoggingFilter < Struct.new(
      :filters,
      :default_behavior)
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
    #   KMS Key ARN belonging to the primary destination account and backup
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
    #   KMS Key ARN belonging to the primary destination account and region,
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

    # Contains the output from pipeline test operations, including processed
    # records and any errors encountered.
    #
    # @!attribute [rw] record
    #   The processed record output from the pipeline test operation.
    #   @return [Types::Record]
    #
    # @!attribute [rw] error
    #   Any error that occurred during the pipeline test operation for this
    #   record.
    #   @return [Types::PipelineOutputError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/PipelineOutput AWS API Documentation
    #
    class PipelineOutput < Struct.new(
      :record,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed error information from pipeline test operations,
    # providing structured error responses for better debugging and
    # troubleshooting capabilities.
    #
    # @!attribute [rw] message
    #   The detailed error message describing what went wrong during the
    #   pipeline test operation for this record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/PipelineOutputError AWS API Documentation
    #
    class PipelineOutputError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a test record structure used for pipeline testing
    # operations to validate data processing.
    #
    # @!attribute [rw] data
    #   The data content of the test record used for pipeline validation.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the test record, indicating the format or category of
    #   the data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/Record AWS API Documentation
    #
    class Record < Struct.new(
      :data,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource (such as a telemetry rule) could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource which could not be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource which could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would exceed the allowed quota for the
    # specified resource type.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource which exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource which exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service of the exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the exceeded service quota.
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
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure containing a name field limited to 64 characters for header
    # or query parameter identification.
    #
    # @!attribute [rw] name
    #   The name value, limited to 64 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/SingleHeader AWS API Documentation
    #
    class SingleHeader < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of source plugin types used in the pipeline configuration (such
    # as `cloudwatch_logs` or `s3`). Currently supports a single source per
    # pipeline, but is structured as a list to accommodate multiple
    # pipelines in the configuration.
    #
    # @!attribute [rw] type
    #   The plugin name of the source, such as `cloudwatch_logs` or `s3`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/Source AWS API Documentation
    #
    class Source < Struct.new(
      :type)
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
    #   The Amazon Resource Name (ARN) of the Resource Explorer managed view
    #   created for resource tags for telemetry.
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
    #   Services::EC2::Instance`, or `Amazon Web Services::EKS::Cluster`,
    #   etc.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The identifier of the resource, for example for Amazon VPC, it would
    #   be `vpc-1a2b3c4d5e6f1a2b3`.
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
    # @!attribute [rw] cloudtrail_parameters
    #   Configuration parameters specific to Amazon Web Services CloudTrail
    #   when CloudTrail is the source type.
    #   @return [Types::CloudtrailParameters]
    #
    # @!attribute [rw] elb_load_balancer_logging_parameters
    #   Configuration parameters specific to ELB load balancer logging when
    #   ELB is the resource type.
    #   @return [Types::ELBLoadBalancerLoggingParameters]
    #
    # @!attribute [rw] waf_logging_parameters
    #   Configuration parameters specific to WAF logging when WAF is the
    #   resource type.
    #   @return [Types::WAFLoggingParameters]
    #
    # @!attribute [rw] log_delivery_parameters
    #   Configuration parameters specific to Amazon Bedrock AgentCore
    #   logging when Amazon Bedrock AgentCore is the resource type.
    #   @return [Types::LogDeliveryParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryDestinationConfiguration AWS API Documentation
    #
    class TelemetryDestinationConfiguration < Struct.new(
      :destination_type,
      :destination_pattern,
      :retention_in_days,
      :vpc_flow_log_parameters,
      :cloudtrail_parameters,
      :elb_load_balancer_logging_parameters,
      :waf_logging_parameters,
      :log_delivery_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a complete telemetry pipeline resource with configuration,
    # status, and metadata for data processing and transformation.
    #
    # @!attribute [rw] created_time_stamp
    #   The timestamp when the telemetry pipeline was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp when the telemetry pipeline was last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the telemetry pipeline.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the telemetry pipeline.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration that defines how the telemetry pipeline processes
    #   data.
    #   @return [Types::TelemetryPipelineConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the telemetry pipeline.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information about the pipeline status, including reasons
    #   for failure states.
    #   @return [Types::TelemetryPipelineStatusReason]
    #
    # @!attribute [rw] tags
    #   The key-value pairs associated with the telemetry pipeline resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryPipeline AWS API Documentation
    #
    class TelemetryPipeline < Struct.new(
      :created_time_stamp,
      :last_update_time_stamp,
      :arn,
      :name,
      :configuration,
      :status,
      :status_reason,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the configuration for a telemetry pipeline, including how data
    # flows from sources through processors to destinations.
    #
    # @!attribute [rw] body
    #   The pipeline configuration body that defines the data processing
    #   rules and transformations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryPipelineConfiguration AWS API Documentation
    #
    class TelemetryPipelineConfiguration < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides detailed information about the status of a telemetry
    # pipeline, including reasons for specific states.
    #
    # @!attribute [rw] description
    #   A description of the pipeline status reason, providing additional
    #   context about the current state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryPipelineStatusReason AWS API Documentation
    #
    class TelemetryPipelineStatusReason < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a telemetry pipeline for listing
    # operations.
    #
    # @!attribute [rw] created_time_stamp
    #   The timestamp when the telemetry pipeline was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_update_time_stamp
    #   The timestamp when the telemetry pipeline was last updated.
    #   @return [Integer]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the telemetry pipeline.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the telemetry pipeline.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the telemetry pipeline.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs associated with the telemetry pipeline resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] configuration_summary
    #   A summary of the pipeline configuration components.
    #   @return [Types::ConfigurationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryPipelineSummary AWS API Documentation
    #
    class TelemetryPipelineSummary < Struct.new(
      :created_time_stamp,
      :last_update_time_stamp,
      :arn,
      :name,
      :status,
      :tags,
      :configuration_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how telemetry should be configured for specific Amazon Web
    # Services resources.
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource to configure telemetry for
    #   (e.g., "AWS::EC2::VPC", "AWS::EKS::Cluster",
    #   "AWS::WAFv2::WebACL").
    #   @return [String]
    #
    # @!attribute [rw] telemetry_type
    #   The type of telemetry to collect (Logs, Metrics, or Traces).
    #   @return [String]
    #
    # @!attribute [rw] telemetry_source_types
    #   The specific telemetry source types to configure for the resource,
    #   such as VPC\_FLOW\_LOGS or EKS\_AUDIT\_LOGS. TelemetrySourceTypes
    #   must be correlated with the specific resource type.
    #   @return [Array<String>]
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
      :telemetry_source_types,
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
    # @!attribute [rw] telemetry_source_types
    #   The types of telemetry sources configured for this rule, such as VPC
    #   Flow Logs or EKS audit logs. TelemetrySourceTypes must be correlated
    #   with the specific resource type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TelemetryRuleSummary AWS API Documentation
    #
    class TelemetryRuleSummary < Struct.new(
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :resource_type,
      :telemetry_type,
      :telemetry_source_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] records
    #   The sample records to process through the pipeline configuration for
    #   testing purposes.
    #   @return [Array<Types::Record>]
    #
    # @!attribute [rw] configuration
    #   The pipeline configuration to test with the provided sample records.
    #   @return [Types::TelemetryPipelineConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TestTelemetryPipelineInput AWS API Documentation
    #
    class TestTelemetryPipelineInput < Struct.new(
      :records,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] results
    #   The results of processing the test records through the pipeline
    #   configuration, including any outputs or errors.
    #   @return [Array<Types::PipelineOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/TestTelemetryPipelineOutput AWS API Documentation
    #
    class TestTelemetryPipelineOutput < Struct.new(
      :results)
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

    # @!attribute [rw] pipeline_identifier
    #   The ARN of the telemetry pipeline to update.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The new configuration for the telemetry pipeline, including updated
    #   sources, processors, and destinations.
    #   @return [Types::TelemetryPipelineConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UpdateTelemetryPipelineInput AWS API Documentation
    #
    class UpdateTelemetryPipelineInput < Struct.new(
      :pipeline_identifier,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/UpdateTelemetryPipelineOutput AWS API Documentation
    #
    class UpdateTelemetryPipelineOutput < Aws::EmptyStructure; end

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

    # @!attribute [rw] configuration
    #   The pipeline configuration to validate for syntax and compatibility.
    #   @return [Types::TelemetryPipelineConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ValidateTelemetryPipelineConfigurationInput AWS API Documentation
    #
    class ValidateTelemetryPipelineConfigurationInput < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of validation errors found in the pipeline configuration, if
    #   any.
    #   @return [Array<Types::ValidationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ValidateTelemetryPipelineConfigurationOutput AWS API Documentation
    #
    class ValidateTelemetryPipelineConfigurationOutput < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a detailed validation error with message, reason, and field
    # mapping for comprehensive error reporting.
    #
    # @!attribute [rw] message
    #   The error message describing the validation issue.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason code or category for the validation error.
    #   @return [String]
    #
    # @!attribute [rw] field_map
    #   A mapping of field names to specific validation issues within the
    #   configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ValidationError AWS API Documentation
    #
    class ValidationError < Struct.new(
      :message,
      :reason,
      :field_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates input validation failed. Check your request parameters and
    # retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   The errors in the input which caused the exception.
    #   @return [Array<Types::ValidationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters for WAF logging, including redacted fields
    # and logging filters.
    #
    # @!attribute [rw] redacted_fields
    #   The fields to redact from WAF logs to protect sensitive information.
    #   @return [Array<Types::FieldToMatch>]
    #
    # @!attribute [rw] logging_filter
    #   A filter configuration that determines which WAF log records to
    #   include or exclude.
    #   @return [Types::LoggingFilter]
    #
    # @!attribute [rw] log_type
    #   The type of WAF logs to collect (currently supports WAF\_LOGS).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/observabilityadmin-2018-05-10/WAFLoggingParameters AWS API Documentation
    #
    class WAFLoggingParameters < Struct.new(
      :redacted_fields,
      :logging_filter,
      :log_type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

