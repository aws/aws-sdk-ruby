# frozen_string_literal: true

# This is generated code!

module Aws::ObservabilityAdmin
  # This module contains the types returned by client operations.
  module Types

    # <p> Indicates you don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access management for Amazon Web Services resources</a> in the IAM user guide. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p> The name of the exception. </p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Condition that matches based on the specific WAF action taken on the request. </p>
    # @!attribute action
    #   <p> The WAF action to match against (ALLOW, BLOCK, COUNT, CAPTCHA, CHALLENGE, EXCLUDED_AS_COUNT). </p>
    #   @return [String]
    class ActionCondition < Struct.new(
      nil,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Advanced event selectors let you create fine-grained selectors for management, data, and network activity events.</p>
    # @!attribute name
    #   <p>An optional, descriptive name for an advanced event selector, such as "Log data events for only two S3 buckets".</p>
    #   @return [String]
    # @!attribute field_selectors
    #   <p>Contains all selector statements in an advanced event selector.</p>
    #   @return [Array<Types::AdvancedFieldSelector>]
    class AdvancedEventSelector < Struct.new(
      nil,
      :name,
      :field_selectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Defines criteria for selecting resources based on field values. </p>
    # @!attribute field
    #   <p> The name of the field to use for selection. </p>
    #   @return [String]
    # @!attribute equals
    #   <p> Matches if the field value equals the specified value. </p>
    #   @return [Array<String>]
    # @!attribute starts_with
    #   <p> Matches if the field value starts with the specified value. </p>
    #   @return [Array<String>]
    # @!attribute ends_with
    #   <p> Matches if the field value ends with the specified value. </p>
    #   @return [Array<String>]
    # @!attribute not_equals
    #   <p> Matches if the field value does not equal the specified value. </p>
    #   @return [Array<String>]
    # @!attribute not_starts_with
    #   <p> Matches if the field value does not start with the specified value. </p>
    #   @return [Array<String>]
    # @!attribute not_ends_with
    #   <p> Matches if the field value does not end with the specified value. </p>
    #   @return [Array<String>]
    class AdvancedFieldSelector < Struct.new(
      nil,
      :field,
      :equals,
      :starts_with,
      :ends_with,
      :not_equals,
      :not_starts_with,
      :not_ends_with,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how telemetry data should be centralized across an Amazon Web Services Organization, including source and destination configurations.</p>
    # @!attribute source
    #   <p>Configuration determining the source of the telemetry data to be centralized.</p>
    #   @return [Types::CentralizationRuleSource]
    # @!attribute destination
    #   <p>Configuration determining where the telemetry data should be centralized, backed up, as well as encryption configuration for the primary and backup destinations.</p>
    #   @return [Types::CentralizationRuleDestination]
    class CentralizationRule < Struct.new(
      nil,
      :source,
      :destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration specifying the primary destination for centralized telemetry data.</p>
    # @!attribute region
    #   <p>The primary destination region to which telemetry data should be centralized.</p>
    #   @return [String]
    # @!attribute account
    #   <p>The destination account (within the organization) to which the telemetry data should be centralized.</p>
    #   @return [String]
    # @!attribute destination_logs_configuration
    #   <p>Log specific configuration for centralization destination log groups.</p>
    #   @return [Types::DestinationLogsConfiguration]
    # @!attribute destination_metrics_configuration
    #   <p>Metric specific configuration for centralization destination metrics.</p>
    #   @return [Types::DestinationMetricsConfiguration]
    class CentralizationRuleDestination < Struct.new(
      nil,
      :region,
      :account,
      :destination_logs_configuration,
      :destination_metrics_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration specifying the source of telemetry data to be centralized.</p>
    # @!attribute regions
    #   <p>The list of source regions from which telemetry data should be centralized.</p>
    #   @return [Array<String>]
    # @!attribute scope
    #   <p>The organizational scope from which telemetry data should be centralized, specified using organization id, accounts or organizational unit ids.</p>
    #   @return [String]
    # @!attribute source_logs_configuration
    #   <p>Log specific configuration for centralization source log groups.</p>
    #   @return [Types::SourceLogsConfiguration]
    # @!attribute source_metrics_configuration
    #   <p>Metric specific configuration for centralization source metrics.</p>
    #   @return [Types::SourceMetricsConfiguration]
    # @!attribute source_context_graph_configuration
    #   <p>Configuration that enables centralization of the context graph for the selected sources. Including this configuration in a rule's source opts the rule into centralizing the context graph for the selected sources.</p>
    #   @return [Types::SourceContextGraphConfiguration]
    class CentralizationRuleSource < Struct.new(
      nil,
      :regions,
      :scope,
      :source_logs_configuration,
      :source_metrics_configuration,
      :source_context_graph_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a centralization rule's key properties and status.</p>
    # @!attribute rule_name
    #   <p>The name of the organization centralization rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the organization centralization rule.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The Amazon Web Services Account that created the organization centralization rule.</p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>The timestamp when the organization centralization rule was created.</p>
    #   @return [Integer]
    # @!attribute created_region
    #   <p>The Amazon Web Services region where the organization centralization rule was created.</p>
    #   @return [String]
    # @!attribute last_update_time_stamp
    #   <p>The timestamp when the organization centralization rule was last updated.</p>
    #   @return [Integer]
    # @!attribute rule_health
    #   <p>The health status of the organization centralization rule.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason why an organization centralization rule is marked UNHEALTHY.</p>
    #   @return [String]
    # @!attribute tag_propagation_status
    #   <p>The health status of tag propagation for this rule. This status is independent of the overall <code>RuleHealth</code> for log delivery. Returns <code>Healthy</code> when the most recent tag-propagation attempt succeeded, or <code>Unhealthy</code> when the most recent attempt failed.</p>
    #   @return [String]
    # @!attribute tag_propagation_failure_reason
    #   <p>The reason tag propagation is unhealthy for this rule. Only present when <code>TagPropagationStatus</code> is <code>Unhealthy</code>.</p>
    #   @return [String]
    # @!attribute context_graph_status
    #   <p>The status of context graph centralization for this rule. Returns <code>Provisioning</code> while the context graph is being set up, <code>Healthy</code> once it is active, or <code>Unhealthy</code> if provisioning failed. This status is independent of the overall <code>RuleHealth</code> for log delivery.</p>
    #   @return [String]
    # @!attribute destination_account_id
    #   <p>The primary destination account of the organization centralization rule.</p>
    #   @return [String]
    # @!attribute destination_region
    #   <p>The primary destination region of the organization centralization rule.</p>
    #   @return [String]
    class CentralizationRuleSummary < Struct.new(
      nil,
      :rule_name,
      :rule_arn,
      :creator_account_id,
      :created_time_stamp,
      :created_region,
      :last_update_time_stamp,
      :rule_health,
      :failure_reason,
      :tag_propagation_status,
      :tag_propagation_failure_reason,
      :context_graph_status,
      :destination_account_id,
      :destination_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Parameters specific to Amazon Web Services CloudTrail telemetry configuration. </p>
    # @!attribute advanced_event_selectors
    #   <p> The advanced event selectors to use for filtering Amazon Web Services CloudTrail events. </p>
    #   @return [Array<Types::AdvancedEventSelector>]
    class CloudtrailParameters < Struct.new(
      nil,
      :advanced_event_selectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A single condition that can match based on WAF rule action or label name. </p>
    # @!attribute action_condition
    #   <p> Matches log records based on the WAF rule action taken (ALLOW, BLOCK, COUNT, etc.). </p>
    #   @return [Types::ActionCondition]
    # @!attribute label_name_condition
    #   <p> Matches log records based on WAF rule labels applied to the request. </p>
    #   @return [Types::LabelNameCondition]
    class Condition < Struct.new(
      nil,
      :action_condition,
      :label_name_condition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of pipeline configuration components including sources, processors, and destinations.</p>
    # @!attribute sources
    #   <p>The list of data sources configured in the pipeline.</p>
    #   @return [Array<Types::Source>]
    # @!attribute data_sources
    #   <p>The list of data sources that provide telemetry data to the pipeline.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute processors
    #   <p>The list of processors configured in the pipeline for data transformation.</p>
    #   @return [Array<String>]
    # @!attribute processor_count
    #   <p>The total number of processors configured in the pipeline.</p>
    #   @return [Integer]
    # @!attribute sinks
    #   <p>The list of destinations where processed data is sent.</p>
    #   @return [Array<String>]
    class ConfigurationSummary < Struct.new(
      nil,
      :sources,
      :data_sources,
      :processors,
      :processor_count,
      :sinks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The requested operation conflicts with the current state of the specified resource or with another request. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The identifier of the resource which is in conflict with the requested operation. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of the resource which is in conflict with the requested operation. </p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p>A unique name for the organization-wide centralization rule being created.</p>
    #   @return [String]
    # @!attribute rule
    #   <p>The configuration details for the organization-wide centralization rule, including the source configuration and the destination configuration to centralize telemetry data across the organization.</p>
    #   @return [Types::CentralizationRule]
    # @!attribute tags
    #   <p>The key-value pairs to associate with the organization telemetry rule resource for categorization and management purposes.</p>
    #   @return [Hash<String, String>]
    class CreateCentralizationRuleForOrganizationInput < Struct.new(
      nil,
      :rule_name,
      :rule,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the created organization centralization rule.</p>
    #   @return [String]
    class CreateCentralizationRuleForOrganizationOutput < Struct.new(
      nil,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants Amazon CloudWatch permission to access the resources needed for the dataset integration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs to associate with the dataset integration resource for categorization and management purposes.</p>
    #   @return [Hash<String, String>]
    class CreateDatasetIntegrationInput < Struct.new(
      nil,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created dataset integration.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the dataset integration.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the dataset integration was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the dataset integration was last updated.</p>
    #   @return [Time]
    class CreateDatasetIntegrationOutput < Struct.new(
      nil,
      :arn,
      :role_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute encryption
    #   <p>The encryption configuration for the S3 Table integration, including the encryption algorithm and KMS key settings.</p>
    #   @return [Types::Encryption]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants permissions for the S3 Table integration to access necessary resources.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs to associate with the S3 Table integration resource for categorization and management purposes.</p>
    #   @return [Hash<String, String>]
    class CreateS3TableIntegrationInput < Struct.new(
      nil,
      :encryption,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created S3 Table integration.</p>
    #   @return [String]
    class CreateS3TableIntegrationOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the telemetry pipeline to create. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration that defines how the telemetry pipeline processes data, including sources, processors, and destinations. For more information about pipeline components, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/pipeline-components-reference.html">Amazon CloudWatch User Guide</a> </p>
    #   @return [Types::TelemetryPipelineConfiguration]
    # @!attribute tags
    #   <p>The key-value pairs to associate with the telemetry pipeline resource for categorization and management purposes.</p>
    #   @return [Hash<String, String>]
    class CreateTelemetryPipelineInput < Struct.new(
      nil,
      :name,
      :configuration,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created telemetry pipeline.</p>
    #   @return [String]
    class CreateTelemetryPipelineOutput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p> A unique name for the organization-wide telemetry rule being created. </p>
    #   @return [String]
    # @!attribute rule
    #   <p> The configuration details for the organization-wide telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to across the organization. </p>
    #   @return [Types::TelemetryRule]
    # @!attribute tags
    #   <p> The key-value pairs to associate with the organization telemetry rule resource for categorization and management purposes. </p>
    #   @return [Hash<String, String>]
    class CreateTelemetryRuleForOrganizationInput < Struct.new(
      nil,
      :rule_name,
      :rule,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the created organization telemetry rule. </p>
    #   @return [String]
    class CreateTelemetryRuleForOrganizationOutput < Struct.new(
      nil,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p> A unique name for the telemetry rule being created. </p>
    #   @return [String]
    # @!attribute rule
    #   <p> The configuration details for the telemetry rule, including the resource type, telemetry type, destination configuration, and selection criteria for which resources the rule applies to. </p>
    #   @return [Types::TelemetryRule]
    # @!attribute tags
    #   <p> The key-value pairs to associate with the telemetry rule resource for categorization and management purposes. </p>
    #   @return [Hash<String, String>]
    class CreateTelemetryRuleInput < Struct.new(
      nil,
      :rule_name,
      :rule,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the created telemetry rule. </p>
    #   @return [String]
    class CreateTelemetryRuleOutput < Struct.new(
      nil,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a data source associated with the telemetry pipeline. For CloudWatch Logs sources, this includes both a name and type extracted from the log event metadata. For third-party sources (such as S3), this includes only a name, with the type field left empty.</p>
    # @!attribute name
    #   <p>The name of the data source. For CloudWatch Logs sources, this corresponds to the <code>data_source_name</code> from the log event metadata. For third-party sources, this is either the configured <code>data_source_name</code> or defaults to the plugin name if not specified.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source. For CloudWatch Logs sources, this corresponds to the <code>data_source_type</code> from the log event metadata. For third-party sources, this field is empty.</p>
    #   @return [String]
    class DataSource < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a dataset integration, including its ARN, associated IAM role, and creation and update timestamps, as returned by <code>ListDatasetIntegrations</code>.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset integration.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the dataset integration.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the dataset integration was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the dataset integration was last updated.</p>
    #   @return [Time]
    class DatasetIntegrationSummary < Struct.new(
      nil,
      :arn,
      :role_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>The identifier (name or ARN) of the organization centralization rule to delete.</p>
    #   @return [String]
    class DeleteCentralizationRuleForOrganizationInput < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset integration to delete.</p>
    #   @return [String]
    class DeleteDatasetIntegrationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Table integration to delete.</p>
    #   @return [String]
    class DeleteS3TableIntegrationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_identifier
    #   <p>The ARN of the telemetry pipeline to delete.</p>
    #   @return [String]
    class DeleteTelemetryPipelineInput < Struct.new(
      nil,
      :pipeline_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTelemetryPipelineOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p> The identifier (name or ARN) of the organization telemetry rule to delete. </p>
    #   @return [String]
    class DeleteTelemetryRuleForOrganizationInput < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p> The identifier (name or ARN) of the telemetry rule to delete. </p>
    #   @return [String]
    class DeleteTelemetryRuleInput < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for centralization destination log groups, including encryption and backup settings.</p>
    # @!attribute logs_encryption_configuration
    #   <p>The encryption configuration for centralization destination log groups.</p>
    #   @return [Types::LogsEncryptionConfiguration]
    # @!attribute backup_configuration
    #   <p>Configuration defining the backup region and an optional KMS key for the backup destination.</p>
    #   @return [Types::LogsBackupConfiguration]
    # @!attribute log_group_name_configuration
    #   <p>Configuration that specifies a naming pattern for destination log groups created during centralization. The pattern supports static text and dynamic variables that are replaced with source attributes when log groups are created.</p>
    #   @return [Types::LogGroupNameConfiguration]
    # @!attribute tag_propagation_configuration
    #   <p>Specifies the tag propagation configuration for this centralization rule. When present, <code>LogGroupNameConfiguration</code> must use a <code>LogGroupNamePattern</code> that contains <code>${source.logGroup}</code>, <code>${source.accountId}</code>, and <code>${source.region}</code>.</p>
    #   @return [Types::TagPropagationConfiguration]
    class DestinationLogsConfiguration < Struct.new(
      nil,
      :logs_encryption_configuration,
      :backup_configuration,
      :log_group_name_configuration,
      :tag_propagation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for centralization destination metrics, including backup settings.</p>
    # @!attribute backup_configuration
    #   <p>Configuration defining the backup region for the metrics backup destination.</p>
    #   @return [Types::MetricsBackupConfiguration]
    class DestinationMetricsConfiguration < Struct.new(
      nil,
      :backup_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration parameters for ELB load balancer logging, including output format and field delimiter settings. </p>
    # @!attribute output_format
    #   <p> The format for ELB access log entries (plain text or JSON format). </p>
    #   @return [String]
    # @!attribute field_delimiter
    #   <p> The delimiter character used to separate fields in ELB access log entries when using plain text format. </p>
    #   @return [String]
    class ELBLoadBalancerLoggingParameters < Struct.new(
      nil,
      :output_format,
      :field_delimiter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the encryption configuration for S3 Table integrations, including the encryption algorithm and KMS key settings.</p>
    # @!attribute sse_algorithm
    #   <p>The server-side encryption algorithm used for encrypting data in the S3 Table integration.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used for encryption when using customer-managed keys.</p>
    #   @return [String]
    class Encryption < Struct.new(
      nil,
      :sse_algorithm,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies a field in the request to redact from WAF logs, such as headers, query parameters, or body content. </p>
    # @!attribute single_header
    #   <p> Redacts a specific header field by name from WAF logs. </p>
    #   @return [Types::SingleHeader]
    # @!attribute uri_path
    #   <p> Redacts the URI path from WAF logs. </p>
    #   @return [String]
    # @!attribute query_string
    #   <p> Redacts the entire query string from WAF logs. </p>
    #   @return [String]
    # @!attribute method
    #   <p> Redacts the HTTP method from WAF logs. </p>
    #   @return [String]
    class FieldToMatch < Struct.new(
      nil,
      :single_header,
      :uri_path,
      :query_string,
      :method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A single filter condition that specifies behavior, requirement, and matching conditions for WAF log records. </p>
    # @!attribute behavior
    #   <p> The action to take for log records matching this filter (KEEP or DROP). </p>
    #   @return [String]
    # @!attribute requirement
    #   <p> Whether the log record must meet all conditions (MEETS_ALL) or any condition (MEETS_ANY) to match this filter. </p>
    #   @return [String]
    # @!attribute conditions
    #   <p> The list of conditions that determine if a log record matches this filter. </p>
    #   @return [Array<Types::Condition>]
    class Filter < Struct.new(
      nil,
      :behavior,
      :requirement,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>The identifier (name or ARN) of the organization centralization rule to retrieve.</p>
    #   @return [String]
    class GetCentralizationRuleForOrganizationInput < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p>The name of the organization centralization rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the organization centralization rule.</p>
    #   @return [String]
    # @!attribute creator_account_id
    #   <p>The Amazon Web Services Account that created the organization centralization rule.</p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>The timestamp when the organization centralization rule was created.</p>
    #   @return [Integer]
    # @!attribute created_region
    #   <p>The Amazon Web Services region where the organization centralization rule was created.</p>
    #   @return [String]
    # @!attribute last_update_time_stamp
    #   <p>The timestamp when the organization centralization rule was last updated.</p>
    #   @return [Integer]
    # @!attribute rule_health
    #   <p>The health status of the organization centralization rule.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason why an organization centralization rule is marked UNHEALTHY.</p>
    #   @return [String]
    # @!attribute tag_propagation_status
    #   <p>The health status of tag propagation for this rule. This status is independent of the overall <code>RuleHealth</code> for log delivery. Returns <code>Healthy</code> when the most recent tag-propagation attempt succeeded, or <code>Unhealthy</code> when the most recent attempt failed.</p>
    #   @return [String]
    # @!attribute tag_propagation_failure_reason
    #   <p>The reason tag propagation is unhealthy for this rule. Only present when <code>TagPropagationStatus</code> is <code>Unhealthy</code>.</p>
    #   @return [String]
    # @!attribute context_graph_status
    #   <p>The status of context graph centralization for this rule. Returns <code>Provisioning</code> while the context graph is being set up, <code>Healthy</code> once it is active, or <code>Unhealthy</code> if provisioning failed. This status is independent of the overall <code>RuleHealth</code> for log delivery.</p>
    #   @return [String]
    # @!attribute centralization_rule
    #   <p>The configuration details for the organization centralization rule.</p>
    #   @return [Types::CentralizationRule]
    class GetCentralizationRuleForOrganizationOutput < Struct.new(
      nil,
      :rule_name,
      :rule_arn,
      :creator_account_id,
      :created_time_stamp,
      :created_region,
      :last_update_time_stamp,
      :rule_health,
      :failure_reason,
      :tag_propagation_status,
      :tag_propagation_failure_reason,
      :context_graph_status,
      :centralization_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset integration to retrieve.</p>
    #   @return [String]
    class GetDatasetIntegrationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset integration.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the dataset integration.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the dataset integration was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the dataset integration was last updated.</p>
    #   @return [Time]
    class GetDatasetIntegrationOutput < Struct.new(
      nil,
      :arn,
      :role_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Table integration to retrieve.</p>
    #   @return [String]
    class GetS3TableIntegrationInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Table integration.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the S3 Table integration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the S3 Table integration.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p>The encryption configuration for the S3 Table integration.</p>
    #   @return [Types::Encryption]
    # @!attribute destination_table_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the S3 bucket used as the destination for the table data.</p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p>The timestamp when the S3 Table integration was created.</p>
    #   @return [Integer]
    class GetS3TableIntegrationOutput < Struct.new(
      nil,
      :arn,
      :role_arn,
      :status,
      :encryption,
      :destination_table_bucket_arn,
      :created_time_stamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The current status of the resource tags for telemetry feature (<code>Running</code>, <code>Stopped</code>, or <code>Impaired</code>). </p>
    #   @return [String]
    # @!attribute aws_resource_explorer_managed_view_arn
    #   <p> The Amazon Resource Name (ARN) of the Resource Explorer managed view used for resource tags for telemetry, if the feature is enabled. </p>
    #   @return [String]
    class GetTelemetryEnrichmentStatusOutput < Struct.new(
      nil,
      :status,
      :aws_resource_explorer_managed_view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The onboarding status of the telemetry config feature for the organization. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p> This field describes the reason for the failure status. The field will only be populated if <code>Status</code> is <code>FAILED_START</code> or <code>FAILED_STOP</code>. </p>
    #   @return [String]
    # @!attribute home_region
    #   <p> The Amazon Web Services Region that is designated as the home region for multi-region telemetry evaluation for the organization. The home region is the single management point for all multi-region operations on this organization. This field is only present when multi-region telemetry evaluation is active. </p>
    #   @return [String]
    # @!attribute region_statuses
    #   <p> A list of per-region telemetry evaluation statuses for the organization. Each entry indicates the evaluation status for a specific spoke region included in the multi-region configuration. This field is only present when multi-region telemetry evaluation is active. </p>
    #   @return [Array<Types::RegionStatus>]
    class GetTelemetryEvaluationStatusForOrganizationOutput < Struct.new(
      nil,
      :status,
      :failure_reason,
      :home_region,
      :region_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The onboarding status of the telemetry config feature. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p> Describes the reason for the failure status. The field will only be populated if <code>Status</code> is <code>FAILED_START</code> or <code>FAILED_STOP</code>. </p>
    #   @return [String]
    # @!attribute home_region
    #   <p> The Amazon Web Services Region that is designated as the home region for multi-region telemetry evaluation. The home region is the single management point for all multi-region operations on this account. This field is only present when multi-region telemetry evaluation is active. </p>
    #   @return [String]
    # @!attribute region_statuses
    #   <p> A list of per-region telemetry evaluation statuses. Each entry indicates the evaluation status for a specific spoke region included in the multi-region configuration. This field is only present when multi-region telemetry evaluation is active. </p>
    #   @return [Array<Types::RegionStatus>]
    class GetTelemetryEvaluationStatusOutput < Struct.new(
      nil,
      :status,
      :failure_reason,
      :home_region,
      :region_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_identifier
    #   <p>The identifier (name or ARN) of the telemetry pipeline to retrieve.</p>
    #   @return [String]
    class GetTelemetryPipelineInput < Struct.new(
      nil,
      :pipeline_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline
    #   <p>The complete telemetry pipeline resource information, including configuration, status, and metadata.</p>
    #   @return [Types::TelemetryPipeline]
    class GetTelemetryPipelineOutput < Struct.new(
      nil,
      :pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p> The identifier (name or ARN) of the organization telemetry rule to retrieve. </p>
    #   @return [String]
    class GetTelemetryRuleForOrganizationInput < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p> The name of the organization telemetry rule. </p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the organization telemetry rule. </p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p> The timestamp when the organization telemetry rule was created. </p>
    #   @return [Integer]
    # @!attribute last_update_time_stamp
    #   <p> The timestamp when the organization telemetry rule was last updated. </p>
    #   @return [Integer]
    # @!attribute telemetry_rule
    #   <p> The configuration details of the organization telemetry rule. </p>
    #   @return [Types::TelemetryRule]
    # @!attribute home_region
    #   <p> The Amazon Web Services Region where the organization telemetry rule was originally created. For replicated rules in spoke regions, this indicates the region that manages the rule. For rules created without multi-region scope, this field is not present. </p>
    #   @return [String]
    # @!attribute is_replicated
    #   <p> Indicates whether this organization telemetry rule is a replica that was created in this region through multi-region fan-out from the home region. Replicated rules cannot be directly updated or deleted in the spoke region. To modify a replicated rule, make changes in the home region. </p>
    #   @return [Boolean]
    # @!attribute region_statuses
    #   <p> A list of per-region replication statuses for the organization telemetry rule. Each entry indicates the replication status of the rule in a specific spoke region. This field is only present for rules created with multi-region scope. </p>
    #   @return [Array<Types::RegionStatus>]
    class GetTelemetryRuleForOrganizationOutput < Struct.new(
      nil,
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :telemetry_rule,
      :home_region,
      :is_replicated,
      :region_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p> The identifier (name or ARN) of the telemetry rule to retrieve. </p>
    #   @return [String]
    class GetTelemetryRuleInput < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name
    #   <p> The name of the telemetry rule. </p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule. </p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p> The timestamp when the telemetry rule was created. </p>
    #   @return [Integer]
    # @!attribute last_update_time_stamp
    #   <p> The timestamp when the telemetry rule was last updated. </p>
    #   @return [Integer]
    # @!attribute telemetry_rule
    #   <p> The configuration details of the telemetry rule. </p>
    #   @return [Types::TelemetryRule]
    # @!attribute home_region
    #   <p> The Amazon Web Services Region where the telemetry rule was originally created. For replicated rules in spoke regions, this indicates the region that manages the rule. For rules created without multi-region scope, this field is not present. </p>
    #   @return [String]
    # @!attribute is_replicated
    #   <p> Indicates whether this telemetry rule is a replica that was created in this region through multi-region fan-out from the home region. Replicated rules cannot be directly updated or deleted in the spoke region. To modify a replicated rule, make changes in the home region. </p>
    #   @return [Boolean]
    # @!attribute region_statuses
    #   <p> A list of per-region replication statuses for the telemetry rule. Each entry indicates the replication status of the rule in a specific spoke region. This field is only present for rules created with multi-region scope. </p>
    #   @return [Array<Types::RegionStatus>]
    class GetTelemetryRuleOutput < Struct.new(
      nil,
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :telemetry_rule,
      :home_region,
      :is_replicated,
      :region_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an S3 Table integration for listing operations.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the S3 Table integration.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the S3 Table integration.</p>
    #   @return [String]
    class IntegrationSummary < Struct.new(
      nil,
      :arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Indicates the request has failed to process because of an unknown server error, exception, or failure. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p> The name of the exception. </p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :amzn_error_type,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The requested operation cannot be completed on the specified resource in the current state. </p>
    # @!attribute message
    #   @return [String]
    class InvalidStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Condition that matches based on WAF rule labels, with label names limited to 1024 characters. </p>
    # @!attribute label_name
    #   <p> The label name to match, supporting alphanumeric characters, underscores, hyphens, and colons. </p>
    #   @return [String]
    class LabelNameCondition < Struct.new(
      nil,
      :label_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name_prefix
    #   <p>A string to filter organization centralization rules whose names begin with the specified prefix.</p>
    #   @return [String]
    # @!attribute all_regions
    #   <p>A flag determining whether to return organization centralization rules from all regions or only the current region.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of organization centralization rules to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. A previous call generates this token.</p>
    #   @return [String]
    class ListCentralizationRulesForOrganizationInput < Struct.new(
      nil,
      :rule_name_prefix,
      :all_regions,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute centralization_rule_summaries
    #   <p>A list of centralization rule summaries.</p>
    #   @return [Array<Types::CentralizationRuleSummary>]
    # @!attribute next_token
    #   <p>A token to resume pagination of results.</p>
    #   @return [String]
    class ListCentralizationRulesForOrganizationOutput < Struct.new(
      nil,
      :centralization_rule_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. A previous call generates this token.</p>
    #   @return [String]
    class ListDatasetIntegrationsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_integration_summaries
    #   <p>The dataset integrations in your account.</p>
    #   @return [Array<Types::DatasetIntegrationSummary>]
    # @!attribute next_token
    #   <p>A token to resume pagination of results.</p>
    #   @return [String]
    class ListDatasetIntegrationsOutput < Struct.new(
      nil,
      :dataset_integration_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_identifiers
    #   <p> A list of Amazon Web Services accounts used to filter the resources to those associated with the specified accounts. </p>
    #   @return [Array<String>]
    # @!attribute resource_identifier_prefix
    #   <p> A string used to filter resources in the organization which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>. </p>
    #   @return [String]
    # @!attribute resource_types
    #   <p> A list of resource types used to filter resources in the organization. If this parameter is provided, the service returns the resources in the same order as specified in the request. Currently supported resource types for discovery are:</p> <ul> <li> <p> <code>AWS::EC2::Instance</code> </p> </li> <li> <p> <code>AWS::EC2::VPC</code> </p> </li> <li> <p> <code>AWS::Lambda::Function</code> </p> </li> <li> <p> <code>AWS::EKS::Cluster</code> </p> </li> <li> <p> <code>AWS::WAFv2::WebACL</code> </p> </li> <li> <p> <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> (Network Load Balancers only)</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute telemetry_configuration_state
    #   <p> A key-value pair to filter resources in the organization based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state. </p>
    #   @return [Hash<String, String>]
    # @!attribute resource_tags
    #   <p> A key-value pair to filter resources in the organization based on tags associated with the resource. Fore more information about tags, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html">What are tags?</a> </p>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p> A number field used to limit the number of results within the returned list. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next set of items to return. A previous call provides this token. </p>
    #   @return [String]
    class ListResourceTelemetryForOrganizationInput < Struct.new(
      nil,
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
    #   <p> A list of telemetry configurations for Amazon Web Services resources supported by telemetry config in the organization. </p>
    #   @return [Array<Types::TelemetryConfiguration>]
    # @!attribute next_token
    #   <p> The token for the next set of items to return. A previous call provides this token. </p>
    #   @return [String]
    class ListResourceTelemetryForOrganizationOutput < Struct.new(
      nil,
      :telemetry_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier_prefix
    #   <p> A string used to filter resources which have a <code>ResourceIdentifier</code> starting with the <code>ResourceIdentifierPrefix</code>. </p>
    #   @return [String]
    # @!attribute resource_types
    #   <p> A list of resource types used to filter resources supported by telemetry config. If this parameter is provided, the service returns the resources in the same order as specified in the request. Currently supported resource types for discovery are:</p> <ul> <li> <p> <code>AWS::EC2::Instance</code> </p> </li> <li> <p> <code>AWS::EC2::VPC</code> </p> </li> <li> <p> <code>AWS::Lambda::Function</code> </p> </li> <li> <p> <code>AWS::EKS::Cluster</code> </p> </li> <li> <p> <code>AWS::WAFv2::WebACL</code> </p> </li> <li> <p> <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code> (Network Load Balancers only)</p> </li> </ul>
    #   @return [Array<String>]
    # @!attribute telemetry_configuration_state
    #   <p> A key-value pair to filter resources based on the telemetry type and the state of the telemetry configuration. The key is the telemetry type and the value is the state. </p>
    #   @return [Hash<String, String>]
    # @!attribute resource_tags
    #   <p> A key-value pair to filter resources based on tags associated with the resource. For more information about tags, see <a href="https://docs.aws.amazon.com/whitepapers/latest/tagging-best-practices/what-are-tags.html">What are tags?</a> </p>
    #   @return [Hash<String, String>]
    # @!attribute max_results
    #   <p> A number field used to limit the number of results within the returned list. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next set of items to return. A previous call generates this token. </p>
    #   @return [String]
    class ListResourceTelemetryInput < Struct.new(
      nil,
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
    #   <p> A list of telemetry configurations for Amazon Web Services resources supported by telemetry config in the caller's account. </p>
    #   @return [Array<Types::TelemetryConfiguration>]
    # @!attribute next_token
    #   <p> The token for the next set of items to return. A previous call generates this token. </p>
    #   @return [String]
    class ListResourceTelemetryOutput < Struct.new(
      nil,
      :telemetry_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of S3 Table integrations to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. A previous call generates this token.</p>
    #   @return [String]
    class ListS3TableIntegrationsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_summaries
    #   <p>A list of S3 Table integration summaries containing key information about each integration.</p>
    #   @return [Array<Types::IntegrationSummary>]
    # @!attribute next_token
    #   <p>A token to resume pagination of results.</p>
    #   @return [String]
    class ListS3TableIntegrationsOutput < Struct.new(
      nil,
      :integration_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule resource whose tags you want to list. </p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> The list of tags associated with the telemetry rule resource. </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of telemetry pipelines to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. A previous call generates this token.</p>
    #   @return [String]
    class ListTelemetryPipelinesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_summaries
    #   <p>A list of telemetry pipeline summaries containing key information about each pipeline.</p>
    #   @return [Array<Types::TelemetryPipelineSummary>]
    # @!attribute next_token
    #   <p>A token to resume pagination of results.</p>
    #   @return [String]
    class ListTelemetryPipelinesOutput < Struct.new(
      nil,
      :pipeline_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name_prefix
    #   <p> A string to filter organization telemetry rules whose names begin with the specified prefix. </p>
    #   @return [String]
    # @!attribute source_account_ids
    #   <p> The list of account IDs to filter organization telemetry rules by their source accounts. </p>
    #   @return [Array<String>]
    # @!attribute source_organization_unit_ids
    #   <p> The list of organizational unit IDs to filter organization telemetry rules by their source organizational units. </p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p> The maximum number of organization telemetry rules to return in a single call. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next set of results. A previous call generates this token. </p>
    #   @return [String]
    class ListTelemetryRulesForOrganizationInput < Struct.new(
      nil,
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
    #   <p> A list of organization telemetry rule summaries. </p>
    #   @return [Array<Types::TelemetryRuleSummary>]
    # @!attribute next_token
    #   <p> A token to resume pagination of results. </p>
    #   @return [String]
    class ListTelemetryRulesForOrganizationOutput < Struct.new(
      nil,
      :telemetry_rule_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_name_prefix
    #   <p> A string to filter telemetry rules whose names begin with the specified prefix. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of telemetry rules to return in a single call. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next set of results. A previous call generates this token. </p>
    #   @return [String]
    class ListTelemetryRulesInput < Struct.new(
      nil,
      :rule_name_prefix,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute telemetry_rule_summaries
    #   <p> A list of telemetry rule summaries. </p>
    #   @return [Array<Types::TelemetryRuleSummary>]
    # @!attribute next_token
    #   <p> A token to resume pagination of results. </p>
    #   @return [String]
    class ListTelemetryRulesOutput < Struct.new(
      nil,
      :telemetry_rule_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration parameters for log delivery, including <code>logType</code> settings. Applies to resource types that support configurable log delivery, such as Amazon Bedrock Knowledge Bases, Amazon Bedrock AgentCore payment managers, and Elastic Load Balancing Application Load Balancers.</p>
    # @!attribute log_types
    #   <p>The types of logs to collect from the resource.</p>
    #   @return [Array<String>]
    class LogDeliveryParameters < Struct.new(
      nil,
      :log_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that specifies a naming pattern for destination log groups created during centralization. The pattern supports static text and dynamic variables that are replaced with source attributes when log groups are created.</p>
    # @!attribute log_group_name_pattern
    #   <p>The pattern used to generate destination log group names during centralization. The pattern can contain static text and dynamic variables that are replaced with source attributes. If a variable cannot be resolved, it inherits the value from its parent variable in the hierarchy. The pattern must be between 1 and 512 characters.</p> <p>Supported variables:</p> <ul> <li> <p> <b>${source.logGroup}</b> — The original log group name from the source account.</p> </li> <li> <p> <b>${source.accountId}</b> — The Amazon Web Services account ID where the log originated.</p> </li> <li> <p> <b>${source.region}</b> — The Amazon Web Services Region where the log originated.</p> </li> <li> <p> <b>${source.org.id}</b> — The Amazon Web Services Organization ID of the source account.</p> </li> <li> <p> <b>${source.org.ouId}</b> — The organizational unit ID of the source account.</p> </li> <li> <p> <b>${source.org.rootId}</b> — The organization Root ID.</p> </li> <li> <p> <b>${source.org.path}</b> — The organizational path from account to root.</p> </li> </ul>
    #   @return [String]
    class LogGroupNameConfiguration < Struct.new(
      nil,
      :log_group_name_pattern,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration that determines which WAF log records to keep or drop based on specified conditions. </p>
    # @!attribute filters
    #   <p> A list of filter conditions that determine log record handling behavior. </p>
    #   @return [Array<Types::Filter>]
    # @!attribute default_behavior
    #   <p> The default action (KEEP or DROP) for log records that don't match any filter conditions. </p>
    #   @return [String]
    class LoggingFilter < Struct.new(
      nil,
      :filters,
      :default_behavior,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for backing up centralized log data to a secondary region.</p>
    # @!attribute region
    #   <p>Logs specific backup destination region within the primary destination account to which log data should be centralized.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>KMS Key ARN belonging to the primary destination account and backup region, to encrypt newly created central log groups in the backup destination.</p>
    #   @return [String]
    class LogsBackupConfiguration < Struct.new(
      nil,
      :region,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for encrypting centralized destination log groups. By default, this configuration applies only to destination log groups whose corresponding source log groups are encrypted using customer managed KMS keys. To encrypt all destination log groups created by the rule, set <code>EncryptionScope</code> to <code>NEW_DESTINATION_LOG_GROUPS</code>.</p>
    # @!attribute encryption_strategy
    #   <p>Configuration that determines the encryption strategy of the destination log groups. CUSTOMER_MANAGED uses the configured KmsKeyArn to encrypt newly created destination log groups.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>KMS Key ARN belonging to the primary destination account and region, to encrypt newly created central log groups in the primary destination.</p>
    #   @return [String]
    # @!attribute encryption_conflict_resolution_strategy
    #   <p>Conflict resolution strategy for centralization if the encryption strategy is set to CUSTOMER_MANAGED and the destination log group is encrypted with an AWS_OWNED KMS Key. ALLOW lets centralization go through while SKIP prevents centralization into the destination log group.</p>
    #   @return [String]
    # @!attribute encryption_scope
    #   <p>Determines which newly created destination log groups are encrypted with the configured <code>KmsKeyArn</code> when <code>EncryptionStrategy</code> is <code>CUSTOMER_MANAGED</code>.</p> <p>If you set this to <code>ENCRYPTED_SOURCE_ONLY</code> (the default), only destination log groups whose source log group is encrypted with a customer managed KMS key use the configured <code>KmsKeyArn</code>. Destination log groups derived from Amazon Web Services owned encrypted source log groups remain Amazon Web Services owned encrypted.</p> <p>If you set this to <code>NEW_DESTINATION_LOG_GROUPS</code>, every new destination log group created by this rule uses the configured <code>KmsKeyArn</code>, regardless of the source log group's encryption posture.</p> <p>This field is not valid when <code>EncryptionStrategy</code> is <code>AWS_OWNED</code>.</p>
    #   @return [String]
    class LogsEncryptionConfiguration < Struct.new(
      nil,
      :encryption_strategy,
      :kms_key_arn,
      :encryption_conflict_resolution_strategy,
      :encryption_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for backing up centralized metrics data to a secondary region.</p>
    # @!attribute region
    #   <p>Metrics specific backup destination region within the primary destination account to which metrics data should be centralized.</p>
    #   @return [String]
    class MetricsBackupConfiguration < Struct.new(
      nil,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration parameters for Amazon MSK cluster monitoring, including enhanced monitoring level settings. </p>
    # @!attribute enhanced_monitoring
    #   <p> The level of enhanced monitoring for the MSK cluster. </p>
    #   @return [String]
    class MskMonitoringParameters < Struct.new(
      nil,
      :enhanced_monitoring,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output from pipeline test operations, including processed records and any errors encountered.</p>
    # @!attribute record
    #   <p>The processed record output from the pipeline test operation.</p>
    #   @return [Types::Record]
    # @!attribute error
    #   <p>Any error that occurred during the pipeline test operation for this record.</p>
    #   @return [Types::PipelineOutputError]
    class PipelineOutput < Struct.new(
      nil,
      :record,
      :error,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains detailed error information from pipeline test operations, providing structured error responses for better debugging and troubleshooting capabilities.</p>
    # @!attribute message
    #   <p>The detailed error message describing what went wrong during the pipeline test operation for this record.</p>
    #   @return [String]
    class PipelineOutputError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a test record structure used for pipeline testing operations to validate data processing.</p>
    # @!attribute data
    #   <p>The data content of the test record used for pipeline validation.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the test record, indicating the format or category of the data.</p>
    #   @return [String]
    class Record < Struct.new(
      nil,
      :data,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Represents the status of a multi-region operation in a specific Amazon Web Services Region. This structure is used to report per-region progress for both telemetry evaluation and telemetry rule replication. </p>
    # @!attribute region
    #   <p> The Amazon Web Services Region code (for example, <code>eu-west-1</code> or <code>us-west-2</code>) that this status applies to. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the operation in this region. For telemetry evaluation, valid values include <code>STARTING</code>, <code>RUNNING</code>, and <code>FAILED_START</code>. For telemetry rules, valid values include <code>PENDING</code>, <code>ACTIVE</code>, and <code>FAILED</code>. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p> The reason for a failure status in this region. This field is only populated when <code>Status</code> indicates a failure. </p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule in this spoke region. This field is only present for telemetry rule region statuses and is populated when the rule has been successfully created in the spoke region (status is <code>ACTIVE</code>). </p>
    #   @return [String]
    class RegionStatus < Struct.new(
      nil,
      :region,
      :status,
      :failure_reason,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The specified resource (such as a telemetry rule) could not be found. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The identifier of the resource which could not be found. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of the resource which could not be found. </p>
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

    # <p> The requested operation would exceed the allowed quota for the specified resource type. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p> The identifier of the resource which exceeds the service quota. </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p> The type of the resource which exceeds the service quota. </p>
    #   @return [String]
    # @!attribute service_code
    #   <p> The code for the service of the exceeded quota. </p>
    #   @return [String]
    # @!attribute quota_code
    #   <p> The code for the exceeded service quota. </p>
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p> The name of the exception. </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Structure containing a name field limited to 64 characters for header or query parameter identification. </p>
    # @!attribute name
    #   <p> The name value, limited to 64 characters. </p>
    #   @return [String]
    class SingleHeader < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of source plugin types used in the pipeline configuration (such as <code>cloudwatch_logs</code> or <code>s3</code>). Currently supports a single source per pipeline, but is structured as a list to accommodate multiple pipelines in the configuration.</p>
    # @!attribute type
    #   <p>The plugin name of the source, such as <code>cloudwatch_logs</code> or <code>s3</code>.</p>
    #   @return [String]
    class Source < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that enables centralization of the context graph for the selected sources. Including this configuration in a rule's source opts the rule into centralizing the context graph for the selected sources.</p>
    class SourceContextGraphConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for selecting and handling source log groups for centralization.</p>
    # @!attribute log_group_selection_criteria
    #   <p>The selection criteria that specifies which source log groups to centralize. The selection criteria uses the same format as OAM link filters.</p>
    #   @return [String]
    # @!attribute data_source_selection_criteria
    #   <p>The selection criteria that specifies which data sources to centralize. The selection criteria uses the same filter expression format as <code>LogGroupSelectionCriteria</code>, but operates on <code>DataSourceName</code> and <code>DataSourceType</code> operands. When both <code>LogGroupSelectionCriteria</code> and <code>DataSourceSelectionCriteria</code> are specified, a log event must match both criteria to be centralized.</p>
    #   @return [String]
    # @!attribute encrypted_log_group_strategy
    #   <p>A strategy determining whether to centralize source log groups that are encrypted with customer managed KMS keys (CMK). ALLOW will consider CMK encrypted source log groups for centralization while SKIP will skip CMK encrypted source log groups from centralization.</p>
    #   @return [String]
    class SourceLogsConfiguration < Struct.new(
      nil,
      :log_group_selection_criteria,
      :data_source_selection_criteria,
      :encrypted_log_group_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:log_group_selection_criteria] = '*' unless options.key?(:log_group_selection_criteria)
        super
      end
    end

    # <p>Configuration for selecting source metrics for centralization.</p>
    # @!attribute metrics_selection_criteria
    #   <p>The filter expression that selects which source metrics to centralize. Currently, only <code>*</code> (all metrics) is supported. Other values return a validation error.</p>
    #   @return [String]
    class SourceMetricsConfiguration < Struct.new(
      nil,
      :metrics_selection_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The status of the resource tags for telemetry feature after the start operation (<code>Running</code>, <code>Stopped</code>, or <code>Impaired</code>). </p>
    #   @return [String]
    # @!attribute aws_resource_explorer_managed_view_arn
    #   <p> The Amazon Resource Name (ARN) of the Resource Explorer managed view created for resource tags for telemetry. </p>
    #   @return [String]
    class StartTelemetryEnrichmentOutput < Struct.new(
      nil,
      :status,
      :aws_resource_explorer_managed_view_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p> An optional list of Amazon Web Services Regions to include in multi-region telemetry evaluation for the organization. The current region is always implicitly included and must not be specified in this list. When provided, telemetry evaluation starts in the current region and propagates to all specified regions for the organization. Mutually exclusive with <code>AllRegions</code>. If neither <code>Regions</code> nor <code>AllRegions</code> is provided, the operation applies only to the current region. </p>
    #   @return [Array<String>]
    # @!attribute all_regions
    #   <p> If set to <code>true</code>, telemetry evaluation for the organization starts in all Amazon Web Services Regions where Amazon CloudWatch Observability Admin is available in the current partition. The current region becomes the home region for managing multi-region evaluation for the organization. When new regions become available, evaluation automatically expands to include them. Mutually exclusive with <code>Regions</code>. </p>
    #   @return [Boolean]
    class StartTelemetryEvaluationForOrganizationInput < Struct.new(
      nil,
      :regions,
      :all_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p> An optional list of Amazon Web Services Regions to include in multi-region telemetry evaluation. The current region is always implicitly included and must not be specified in this list. When provided, telemetry evaluation starts in the current region and propagates to all specified regions. Mutually exclusive with <code>AllRegions</code>. If neither <code>Regions</code> nor <code>AllRegions</code> is provided, the operation applies only to the current region. </p>
    #   @return [Array<String>]
    # @!attribute all_regions
    #   <p> If set to <code>true</code>, telemetry evaluation starts in all Amazon Web Services Regions where Amazon CloudWatch Observability Admin is available in the current partition. The current region becomes the home region for managing multi-region evaluation. When new regions become available, evaluation automatically expands to include them. Mutually exclusive with <code>Regions</code>. </p>
    #   @return [Boolean]
    class StartTelemetryEvaluationInput < Struct.new(
      nil,
      :regions,
      :all_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p> The status of the resource tags for telemetry feature after the stop operation (<code>Running</code>, <code>Stopped</code>, or <code>Impaired</code>). </p>
    #   @return [String]
    class StopTelemetryEnrichmentOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies configuration for propagating resource tags from source log groups to centralized destination log groups. The service uses a customer-managed IAM role in the destination account to add, update, and remove tags on destination log groups.</p>
    # @!attribute destination_role_arn
    #   <p>The ARN of a customer-managed IAM role in the destination account. The service assumes this role to propagate tags to destination log groups. You must have <code>iam:PassRole</code> permission on this role.</p>
    #   @return [String]
    # @!attribute tag_conflict_resolution_strategy
    #   <p>The strategy for resolving conflicts when a tag key exists on both the source and destination log groups. If not specified, defaults to <code>UPDATE_SYNC</code>.</p> <ul> <li> <p> <code>ADD_ONLY</code> – Only adds new tags from the source without modifying existing destination tags.</p> </li> <li> <p> <code>UPDATE_SYNC</code> – Adds new tags and updates existing tags from the source. Does not remove destination tags that are absent from the source.</p> </li> <li> <p> <code>IN_SYNC</code> – Keeps destination tags fully synchronized with source tags, including removing destination tags that do not exist on the source.</p> </li> </ul>
    #   @return [String]
    class TagPropagationConfiguration < Struct.new(
      nil,
      :destination_role_arn,
      :tag_conflict_resolution_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule resource to tag. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The key-value pairs to add or update for the telemetry rule resource. </p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A model representing the state of a resource within an account according to telemetry config. </p>
    # @!attribute account_identifier
    #   <p> The account ID which contains the resource managed in telemetry configuration. An example of a valid account ID is <code>012345678901</code>. </p>
    #   @return [String]
    # @!attribute telemetry_configuration_state
    #   <p> The configuration state for the resource, for example <code>{ Logs: NotApplicable; Metrics: Enabled; Traces: NotApplicable; }</code>. </p>
    #   @return [Hash<String, String>]
    # @!attribute resource_type
    #   <p> The type of resource, for example <code>Amazon Web Services::EC2::Instance</code>, or <code>Amazon Web Services::EKS::Cluster</code>, etc. </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p> The identifier of the resource, for example for Amazon VPC, it would be <code>vpc-1a2b3c4d5e6f1a2b3</code>. </p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p> Tags associated with the resource, for example <code>{ Name: "ExampleInstance", Environment: "Development" }</code>. </p>
    #   @return [Hash<String, String>]
    # @!attribute last_update_time_stamp
    #   <p> The timestamp of the last change to the telemetry configuration for the resource. For example, <code>1728679196318</code>. </p>
    #   @return [Integer]
    # @!attribute telemetry_source_type
    #   <p> Specifies the type of telemetry source for a resource, such as EKS cluster logs. </p>
    #   @return [String]
    class TelemetryConfiguration < Struct.new(
      nil,
      :account_identifier,
      :telemetry_configuration_state,
      :resource_type,
      :resource_identifier,
      :resource_tags,
      :last_update_time_stamp,
      :telemetry_source_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration specifying where and how telemetry data should be delivered for Amazon Web Services resources. </p>
    # @!attribute destination_type
    #   <p> The type of destination for the telemetry data (e.g., "Amazon CloudWatch Logs", "S3"). </p>
    #   @return [String]
    # @!attribute destination_pattern
    #   <p> The pattern used to generate the destination path or name, supporting macros like &lt;resourceId&gt; and &lt;accountId&gt;. </p>
    #   @return [String]
    # @!attribute retention_in_days
    #   <p> The number of days to retain the telemetry data in the destination. </p>
    #   @return [Integer]
    # @!attribute vpc_flow_log_parameters
    #   <p> Configuration parameters specific to VPC Flow Logs when VPC is the resource type. </p>
    #   @return [Types::VPCFlowLogParameters]
    # @!attribute cloudtrail_parameters
    #   <p> Configuration parameters specific to Amazon Web Services CloudTrail when CloudTrail is the source type. </p>
    #   @return [Types::CloudtrailParameters]
    # @!attribute elb_load_balancer_logging_parameters
    #   <p> Configuration parameters specific to ELB load balancer logging when ELB is the resource type. </p>
    #   @return [Types::ELBLoadBalancerLoggingParameters]
    # @!attribute waf_logging_parameters
    #   <p> Configuration parameters specific to WAF logging when WAF is the resource type. </p>
    #   @return [Types::WAFLoggingParameters]
    # @!attribute log_delivery_parameters
    #   <p>The configuration parameters for log delivery when the resource type supports configurable log types, such as Amazon Bedrock Knowledge Bases, Amazon Bedrock AgentCore payment managers, or Elastic Load Balancing Application Load Balancers.</p>
    #   @return [Types::LogDeliveryParameters]
    # @!attribute msk_monitoring_parameters
    #   <p> Configuration parameters specific to MSK monitoring when MSK is the resource type. </p>
    #   @return [Types::MskMonitoringParameters]
    # @!attribute kms_key_arn
    #   <p> The Amazon Resource Name (ARN) of the customer-managed Amazon Web Services KMS key used to encrypt the log groups created during telemetry rule remediation. </p>
    #   @return [String]
    class TelemetryDestinationConfiguration < Struct.new(
      nil,
      :destination_type,
      :destination_pattern,
      :retention_in_days,
      :vpc_flow_log_parameters,
      :cloudtrail_parameters,
      :elb_load_balancer_logging_parameters,
      :waf_logging_parameters,
      :log_delivery_parameters,
      :msk_monitoring_parameters,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a complete telemetry pipeline resource with configuration, status, and metadata for data processing and transformation.</p>
    # @!attribute created_time_stamp
    #   <p>The timestamp when the telemetry pipeline was created.</p>
    #   @return [Integer]
    # @!attribute last_update_time_stamp
    #   <p>The timestamp when the telemetry pipeline was last updated.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the telemetry pipeline.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the telemetry pipeline.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration that defines how the telemetry pipeline processes data.</p>
    #   @return [Types::TelemetryPipelineConfiguration]
    # @!attribute status
    #   <p>The current status of the telemetry pipeline.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information about the pipeline status, including reasons for failure states.</p>
    #   @return [Types::TelemetryPipelineStatusReason]
    # @!attribute tags
    #   <p>The key-value pairs associated with the telemetry pipeline resource.</p>
    #   @return [Hash<String, String>]
    class TelemetryPipeline < Struct.new(
      nil,
      :created_time_stamp,
      :last_update_time_stamp,
      :arn,
      :name,
      :configuration,
      :status,
      :status_reason,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the configuration for a pipeline, including how data flows from sources through processors to destinations. The configuration is specified in YAML format and must include a valid pipeline definition with required source and sink components. This pipeline enables end-to-end telemetry data collection, transformation, and delivery while supporting optional processing steps and extensions for enhanced functionality.</p> <p>The primary pipeline configuration section are:</p> <ul> <li> <p> <b>Source:</b> Defines where log data originates from (S3 buckets, CloudWatch Logs, third-party APIs). Each pipeline must have exactly one source.</p> </li> <li> <p> <b>Processors (optional):</b> Transform, parse, and enrich log data as it flows through the pipeline. Processors are applied sequentially in the order they are defined.</p> </li> <li> <p> <b>Sink:</b> Defines the destination where processed log data is sent. Each pipeline must have exactly one sink.</p> </li> <li> <p> <b>Extensions (optional):</b> Provide additional functionality such as Amazon Web Services Secrets Manager integration for credential management.</p> </li> </ul> <p>For more details on each configuration section see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/cloudwatch-pipelines.html">CloudWatch pipelines User Guide</a>. Additional comprehensive configuration examples can be found in the <a href="https://docs.aws.amazon.com/cloudwatch/latest/observabilityadmin/API_CreateTelemetryPipeline.html#API_CreateTelemetryPipeline_Examples">CreateTelemetryPipeline API docs</a>.</p>
    # @!attribute body
    #   <p>The pipeline configuration body that defines the data processing rules and transformations.</p>
    #   @return [String]
    class TelemetryPipelineConfiguration < Struct.new(
      nil,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides detailed information about the status of a telemetry pipeline, including reasons for specific states.</p>
    # @!attribute description
    #   <p>A description of the pipeline status reason, providing additional context about the current state.</p>
    #   @return [String]
    class TelemetryPipelineStatusReason < Struct.new(
      nil,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a telemetry pipeline for listing operations.</p>
    # @!attribute created_time_stamp
    #   <p>The timestamp when the telemetry pipeline was created.</p>
    #   @return [Integer]
    # @!attribute last_update_time_stamp
    #   <p>The timestamp when the telemetry pipeline was last updated.</p>
    #   @return [Integer]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the telemetry pipeline.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the telemetry pipeline.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the telemetry pipeline.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs associated with the telemetry pipeline resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute configuration_summary
    #   <p>A summary of the pipeline configuration components.</p>
    #   @return [Types::ConfigurationSummary]
    class TelemetryPipelineSummary < Struct.new(
      nil,
      :created_time_stamp,
      :last_update_time_stamp,
      :arn,
      :name,
      :status,
      :tags,
      :configuration_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Defines how telemetry should be configured for specific Amazon Web Services resources. </p>
    # @!attribute resource_type
    #   <p> The type of Amazon Web Services resource to configure telemetry for (for example, <code>AWS::EC2::VPC</code>, <code>AWS::EKS::Cluster</code>, <code>AWS::ElasticLoadBalancingV2::LoadBalancer</code>, <code>AWS::Bedrock::KnowledgeBase</code>, or <code>AWS::BedrockAgentCore::PaymentManager</code>). </p>
    #   @return [String]
    # @!attribute telemetry_type
    #   <p> The type of telemetry to collect (Logs, Metrics, or Traces). </p>
    #   @return [String]
    # @!attribute telemetry_source_types
    #   <p> The specific telemetry source types to configure for the resource, such as VPC_FLOW_LOGS or EKS_AUDIT_LOGS. TelemetrySourceTypes must be correlated with the specific resource type. </p>
    #   @return [Array<String>]
    # @!attribute destination_configuration
    #   <p> Configuration specifying where and how the telemetry data should be delivered. </p>
    #   @return [Types::TelemetryDestinationConfiguration]
    # @!attribute scope
    #   <p> The organizational scope to which the rule applies, specified using accounts or organizational units. </p>
    #   @return [String]
    # @!attribute selection_criteria
    #   <p> Criteria for selecting which resources the rule applies to, such as resource tags. </p>
    #   @return [String]
    # @!attribute allow_field_updates
    #   <p> If set to <code>true</code>, Amazon CloudWatch Observability Admin detects and remediates configuration drift in telemetry resources that it manages. For example, if a VPC flow log's format, traffic type, or aggregation interval no longer matches the rule's destination configuration, the flow log is replaced with one that matches. Only Observability Admin-managed resources are updated; customer-created resources are never modified. Currently supported for <code>AWS::EC2::VPC</code> resources (VPC flow logs). </p>
    #   @return [Boolean]
    # @!attribute regions
    #   <p> An optional list of Amazon Web Services Regions where this telemetry rule should be replicated. When specified, the rule is created in the home region and automatically replicated to all listed regions. Mutually exclusive with <code>AllRegions</code>. </p>
    #   @return [Array<String>]
    # @!attribute all_regions
    #   <p> If set to <code>true</code>, the telemetry rule is replicated to all Amazon Web Services Regions where Amazon CloudWatch Observability Admin is available in the current partition. When new regions become available, the rule automatically replicates to them. Mutually exclusive with <code>Regions</code>. </p>
    #   @return [Boolean]
    class TelemetryRule < Struct.new(
      nil,
      :resource_type,
      :telemetry_type,
      :telemetry_source_types,
      :destination_configuration,
      :scope,
      :selection_criteria,
      :allow_field_updates,
      :regions,
      :all_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A summary of a telemetry rule's key properties. </p>
    # @!attribute rule_name
    #   <p> The name of the telemetry rule. </p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule. </p>
    #   @return [String]
    # @!attribute created_time_stamp
    #   <p> The timestamp when the telemetry rule was created. </p>
    #   @return [Integer]
    # @!attribute last_update_time_stamp
    #   <p> The timestamp when the telemetry rule was last modified. </p>
    #   @return [Integer]
    # @!attribute resource_type
    #   <p> The type of Amazon Web Services resource the rule applies to. </p>
    #   @return [String]
    # @!attribute telemetry_type
    #   <p> The type of telemetry (Logs, Metrics, or Traces) the rule configures. </p>
    #   @return [String]
    # @!attribute telemetry_source_types
    #   <p> The types of telemetry sources configured for this rule, such as VPC Flow Logs or EKS audit logs. TelemetrySourceTypes must be correlated with the specific resource type. </p>
    #   @return [Array<String>]
    class TelemetryRuleSummary < Struct.new(
      nil,
      :rule_name,
      :rule_arn,
      :created_time_stamp,
      :last_update_time_stamp,
      :resource_type,
      :telemetry_type,
      :telemetry_source_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute records
    #   <p>The sample records to process through the pipeline configuration for testing purposes.</p>
    #   @return [Array<Types::Record>]
    # @!attribute configuration
    #   <p>The pipeline configuration to test with the provided sample records.</p>
    #   @return [Types::TelemetryPipelineConfiguration]
    # @!attribute signal_type
    #   <p>The type of telemetry signal to test. If not specified, defaults to log processing.</p>
    #   @return [String]
    class TestTelemetryPipelineInput < Struct.new(
      nil,
      :records,
      :configuration,
      :signal_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The results of processing the test records through the pipeline configuration, including any outputs or errors.</p>
    #   @return [Array<Types::PipelineOutput>]
    class TestTelemetryPipelineOutput < Struct.new(
      nil,
      :results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The request throughput limit was exceeded. </p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the telemetry rule resource to remove tags from. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> The list of tag keys to remove from the telemetry rule resource. </p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>The identifier (name or ARN) of the organization centralization rule to update.</p>
    #   @return [String]
    # @!attribute rule
    #   <p>The configuration details for the organization-wide centralization rule, including the source configuration and the destination configuration to centralize telemetry data across the organization.</p>
    #   @return [Types::CentralizationRule]
    class UpdateCentralizationRuleForOrganizationInput < Struct.new(
      nil,
      :rule_identifier,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the updated organization centralization rule.</p>
    #   @return [String]
    class UpdateCentralizationRuleForOrganizationOutput < Struct.new(
      nil,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the dataset integration to update.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the dataset integration.</p>
    #   @return [String]
    class UpdateDatasetIntegrationInput < Struct.new(
      nil,
      :arn,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated dataset integration.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the updated dataset integration.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the dataset integration was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the dataset integration was last updated.</p>
    #   @return [Time]
    class UpdateDatasetIntegrationOutput < Struct.new(
      nil,
      :arn,
      :role_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_identifier
    #   <p>The ARN of the telemetry pipeline to update.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The new configuration for the telemetry pipeline, including updated sources, processors, and destinations.</p>
    #   @return [Types::TelemetryPipelineConfiguration]
    class UpdateTelemetryPipelineInput < Struct.new(
      nil,
      :pipeline_identifier,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateTelemetryPipelineOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p> The identifier (name or ARN) of the organization telemetry rule to update. </p>
    #   @return [String]
    # @!attribute rule
    #   <p> The new configuration details for the organization telemetry rule, including resource type, telemetry type, and destination configuration. </p>
    #   @return [Types::TelemetryRule]
    class UpdateTelemetryRuleForOrganizationInput < Struct.new(
      nil,
      :rule_identifier,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the updated organization telemetry rule. </p>
    #   @return [String]
    class UpdateTelemetryRuleForOrganizationOutput < Struct.new(
      nil,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p> The identifier (name or ARN) of the telemetry rule to update. </p>
    #   @return [String]
    # @!attribute rule
    #   <p> The new configuration details for the telemetry rule. </p>
    #   @return [Types::TelemetryRule]
    class UpdateTelemetryRuleInput < Struct.new(
      nil,
      :rule_identifier,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_arn
    #   <p> The Amazon Resource Name (ARN) of the updated telemetry rule. </p>
    #   @return [String]
    class UpdateTelemetryRuleOutput < Struct.new(
      nil,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration parameters specific to VPC Flow Logs. </p>
    # @!attribute log_format
    #   <p> The format in which VPC Flow Log entries should be logged. </p>
    #   @return [String]
    # @!attribute traffic_type
    #   <p> The type of traffic to log (ACCEPT, REJECT, or ALL). </p>
    #   @return [String]
    # @!attribute max_aggregation_interval
    #   <p> The maximum interval in seconds between the capture of flow log records. </p>
    #   @return [Integer]
    class VPCFlowLogParameters < Struct.new(
      nil,
      :log_format,
      :traffic_type,
      :max_aggregation_interval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>The pipeline configuration to validate for syntax and compatibility.</p>
    #   @return [Types::TelemetryPipelineConfiguration]
    class ValidateTelemetryPipelineConfigurationInput < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of validation errors found in the pipeline configuration, if any.</p>
    #   @return [Array<Types::ValidationError>]
    class ValidateTelemetryPipelineConfigurationOutput < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a detailed validation error with message, reason, and field mapping for comprehensive error reporting.</p>
    # @!attribute message
    #   <p>The error message describing the validation issue.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason code or category for the validation error.</p>
    #   @return [String]
    # @!attribute field_map
    #   <p>A mapping of field names to specific validation issues within the configuration.</p>
    #   @return [Hash<String, String>]
    class ValidationError < Struct.new(
      nil,
      :message,
      :reason,
      :field_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Indicates input validation failed. Check your request parameters and retry the request. </p>
    # @!attribute message
    #   @return [String]
    # @!attribute errors
    #   <p> The errors in the input which caused the exception. </p>
    #   @return [Array<Types::ValidationError>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration parameters for WAF logging, including redacted fields and logging filters. </p>
    # @!attribute redacted_fields
    #   <p> The fields to redact from WAF logs to protect sensitive information. </p>
    #   @return [Array<Types::FieldToMatch>]
    # @!attribute logging_filter
    #   <p> A filter configuration that determines which WAF log records to include or exclude. </p>
    #   @return [Types::LoggingFilter]
    # @!attribute log_type
    #   <p> The type of WAF logs to collect (currently supports WAF_LOGS). </p>
    #   @return [String]
    class WAFLoggingParameters < Struct.new(
      nil,
      :redacted_fields,
      :logging_filter,
      :log_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
