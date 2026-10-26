# frozen_string_literal: true

# This is generated code!

module Aws::Amp
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of an alert manager definition. It is the configuration for the alert manager, including information about receivers for routing alerts.</p>
    # @!attribute status
    #   <p>A structure that displays the current status of the alert manager definition..</p>
    #   @return [Types::AlertManagerDefinitionStatus]
    # @!attribute data
    #   <p>The actual alert manager definition.</p> <p>For details about the alert manager definition, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html">AlertManagedDefinitionData</a>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the alert manager definition was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time that the alert manager definition was most recently changed.</p>
    #   @return [Time]
    class AlertManagerDefinitionDescription < Struct.new(
      nil,
      :status,
      :data,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the alert manager. </p>
    # @!attribute status_code
    #   <p>The current status of the alert manager. </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>If there is a failure, the reason for the failure.</p>
    #   @return [String]
    class AlertManagerDefinitionStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>AmpConfiguration</code> structure defines the Amazon Managed Service for Prometheus instance a scraper should send metrics to.</p>
    # @!attribute workspace_arn
    #   <p>ARN of the Amazon Managed Service for Prometheus workspace.</p>
    #   @return [String]
    class AmpConfiguration < Struct.new(
      nil,
      :workspace_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the anomaly detection algorithm.</p>
    # @!attribute random_cut_forest
    #   <p>The Random Cut Forest algorithm configuration for anomaly detection.</p>
    #   @return [Types::RandomCutForestConfiguration]
    class AnomalyDetectorConfiguration < Struct.new(
      :random_cut_forest,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RandomCutForest < AnomalyDetectorConfiguration; end
      class Unknown < AnomalyDetectorConfiguration; end
    end

    # <p>Detailed information about an anomaly detector.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_id
    #   <p>The unique identifier of the anomaly detector.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The user-friendly name of the anomaly detector.</p>
    #   @return [String]
    # @!attribute evaluation_interval_in_seconds
    #   <p>The frequency, in seconds, at which the anomaly detector evaluates metrics.</p>
    #   @return [Integer]
    # @!attribute missing_data_action
    #   <p>The action taken when data is missing during evaluation.</p>
    #   @return [Types::AnomalyDetectorMissingDataAction]
    # @!attribute configuration
    #   <p>The algorithm configuration of the anomaly detector.</p>
    #   @return [Types::AnomalyDetectorConfiguration]
    # @!attribute labels
    #   <p>The Amazon Managed Service for Prometheus metric labels associated with the anomaly detector.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The current status of the anomaly detector.</p>
    #   @return [Types::AnomalyDetectorStatus]
    # @!attribute created_at
    #   <p>The timestamp when the anomaly detector was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The timestamp when the anomaly detector was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags applied to the anomaly detector.</p>
    #   @return [Hash<String, String>]
    class AnomalyDetectorDescription < Struct.new(
      nil,
      :arn,
      :anomaly_detector_id,
      :alias,
      :evaluation_interval_in_seconds,
      :missing_data_action,
      :configuration,
      :labels,
      :status,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the action to take when data is missing during anomaly detection evaluation.</p>
    # @!attribute mark_as_anomaly
    #   <p>Marks missing data points as anomalies.</p>
    #   @return [Boolean]
    # @!attribute skip
    #   <p>Skips evaluation when data is missing.</p>
    #   @return [Boolean]
    class AnomalyDetectorMissingDataAction < Struct.new(
      :mark_as_anomaly,
      :skip,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MarkAsAnomaly < AnomalyDetectorMissingDataAction; end
      class Skip < AnomalyDetectorMissingDataAction; end
      class Unknown < AnomalyDetectorMissingDataAction; end
    end

    # <p>The status information of an anomaly detector.</p>
    # @!attribute status_code
    #   <p>The status code of the anomaly detector.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A description of the current status of the anomaly detector.</p>
    #   @return [String]
    class AnomalyDetectorStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an anomaly detector for list operations.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the anomaly detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_id
    #   <p>The unique identifier of the anomaly detector.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The user-friendly name of the anomaly detector.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the anomaly detector.</p>
    #   @return [Types::AnomalyDetectorStatus]
    # @!attribute created_at
    #   <p>The timestamp when the anomaly detector was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The timestamp when the anomaly detector was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags applied to the anomaly detector.</p>
    #   @return [Hash<String, String>]
    class AnomalyDetectorSummary < Struct.new(
      nil,
      :arn,
      :anomaly_detector_id,
      :alias,
      :status,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration identifies the CloudWatch dataset used as a scraper destination.</p>
    # @!attribute dataset_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch dataset. To use the default dataset, specify <code>arn:aws:cloudwatch:&lt;region&gt;:&lt;account-id&gt;:dataset/default</code>.</p>
    #   @return [String]
    class CloudWatchConfiguration < Struct.new(
      nil,
      :dataset_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for logging to CloudWatch Logs.</p>
    # @!attribute log_group_arn
    #   <p>The ARN of the CloudWatch log group to which the vended log data will be published. This log group must exist prior to calling this operation.</p>
    #   @return [String]
    class CloudWatchLogDestination < Struct.new(
      nil,
      :log_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for a scraper component.</p>
    # @!attribute options
    #   <p>Configuration options for the scraper component.</p>
    #   @return [Hash<String, String>]
    class ComponentConfig < Struct.new(
      nil,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause an inconsistent state.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
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

    # <p>Represents the input of a <code>CreateAlertManagerDefinition</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to add the alert manager definition to.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The alert manager definition to add. A base64-encoded version of the YAML alert manager definition file.</p> <p>For details about the alert manager definition, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html">AlertManagedDefinitionData</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class CreateAlertManagerDefinitionInput < Struct.new(
      nil,
      :workspace_id,
      :data,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateAlertManagerDefinition</code> operation.</p>
    # @!attribute status
    #   <p>A structure that displays the current status of the alert manager definition.</p>
    #   @return [Types::AlertManagerDefinitionStatus]
    class CreateAlertManagerDefinitionOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the workspace where the anomaly detector will be created.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>A user-friendly name for the anomaly detector.</p>
    #   @return [String]
    # @!attribute evaluation_interval_in_seconds
    #   <p>The frequency, in seconds, at which the anomaly detector evaluates metrics. The default value is 60 seconds.</p>
    #   @return [Integer]
    # @!attribute missing_data_action
    #   <p>Specifies the action to take when data is missing during evaluation.</p>
    #   @return [Types::AnomalyDetectorMissingDataAction]
    # @!attribute configuration
    #   <p>The algorithm configuration for the anomaly detector.</p>
    #   @return [Types::AnomalyDetectorConfiguration]
    # @!attribute labels
    #   <p>The Amazon Managed Service for Prometheus metric labels to associate with the anomaly detector.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The metadata to apply to the anomaly detector to assist with categorization and organization.</p>
    #   @return [Hash<String, String>]
    class CreateAnomalyDetectorRequest < Struct.new(
      nil,
      :workspace_id,
      :alias,
      :evaluation_interval_in_seconds,
      :missing_data_action,
      :configuration,
      :labels,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_id
    #   <p>The unique identifier of the created anomaly detector.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created anomaly detector.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status information of the created anomaly detector.</p>
    #   @return [Types::AnomalyDetectorStatus]
    # @!attribute tags
    #   <p>The tags applied to the created anomaly detector.</p>
    #   @return [Hash<String, String>]
    class CreateAnomalyDetectorResponse < Struct.new(
      nil,
      :anomaly_detector_id,
      :arn,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateLoggingConfiguration</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to create the logging configuration for.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The ARN of the CloudWatch log group to which the vended log data will be published. This log group must exist prior to calling this operation.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class CreateLoggingConfigurationInput < Struct.new(
      nil,
      :workspace_id,
      :log_group_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateLoggingConfiguration</code> operation.</p>
    # @!attribute status
    #   <p>A structure that displays the current status of the logging configuration.</p>
    #   @return [Types::LoggingConfigurationStatus]
    class CreateLoggingConfigurationOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace for which to create the query logging configuration.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>The destinations where query logs will be sent. Only CloudWatch Logs destination is supported. The list must contain exactly one element.</p>
    #   @return [Array<Types::LoggingDestination>]
    # @!attribute client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class CreateQueryLoggingConfigurationRequest < Struct.new(
      nil,
      :workspace_id,
      :destinations,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the query logging configuration.</p>
    #   @return [Types::QueryLoggingConfigurationStatus]
    class CreateQueryLoggingConfigurationResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateRuleGroupsNamespace</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to add the rule groups namespace.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the new rule groups namespace.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The rules file to use in the new namespace.</p> <p>Contains the base64-encoded version of the YAML rules file.</p> <p>For details about the rule groups namespace structure, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html">RuleGroupsNamespaceData</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tag keys and values to associate with the rule groups namespace.</p>
    #   @return [Hash<String, String>]
    class CreateRuleGroupsNamespaceInput < Struct.new(
      nil,
      :workspace_id,
      :name,
      :data,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateRuleGroupsNamespace</code> operation.</p>
    # @!attribute name
    #   <p>The name of the new rule groups namespace.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the new rule groups namespace.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A structure that returns the current status of the rule groups namespace.</p>
    #   @return [Types::RuleGroupsNamespaceStatus]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the namespace.</p>
    #   @return [Hash<String, String>]
    class CreateRuleGroupsNamespaceOutput < Struct.new(
      nil,
      :name,
      :arn,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateScraper</code> operation.</p>
    # @!attribute alias
    #   <p>(optional) An alias to associate with the scraper. This is for your use, and does not need to be unique.</p>
    #   @return [String]
    # @!attribute scrape_configuration
    #   <p>The configuration file to use in the new scraper. For more information, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration">Scraper configuration</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>
    #   @return [Types::ScrapeConfiguration]
    # @!attribute source
    #   <p>The Amazon EKS or Amazon Web Services cluster from which the scraper will collect metrics.</p>
    #   @return [Types::Source]
    # @!attribute destination
    #   <p>The destination where the scraper sends the collected metrics. Valid destinations are Amazon Managed Service for Prometheus workspaces and CloudWatch datasets.</p>
    #   @return [Types::Destination]
    # @!attribute role_configuration
    #   <p>Use this structure to enable cross-account access, so that you can use a target account to access Prometheus metrics from source accounts.</p>
    #   @return [Types::RoleConfiguration]
    # @!attribute client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>(Optional) The list of tag keys and values to associate with the scraper.</p>
    #   @return [Hash<String, String>]
    # @!attribute exporters
    #   <p>The exporter configurations for the scraper. You can configure at most one Amazon OpenSearch Service domain. If you don't specify a value, the scraper is created without an exporter configuration.</p>
    #   @return [Array<Types::ExporterConfiguration>]
    class CreateScraperRequest < Struct.new(
      nil,
      :alias,
      :scrape_configuration,
      :source,
      :destination,
      :role_configuration,
      :client_token,
      :tags,
      :exporters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateScraper</code> operation.</p>
    # @!attribute scraper_id
    #   <p>The ID of the new scraper.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the new scraper.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A structure that displays the current status of the scraper.</p>
    #   @return [Types::ScraperStatus]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the scraper.</p>
    #   @return [Hash<String, String>]
    class CreateScraperResponse < Struct.new(
      nil,
      :scraper_id,
      :arn,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateWorkspace</code> operation.</p>
    # @!attribute alias
    #   <p>An alias that you assign to this workspace to help you identify it. It does not need to be unique.</p> <p>Blank spaces at the beginning or end of the alias that you specify will be trimmed from the value used.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tag keys and values to associate with the workspace.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>(optional) The ARN for a customer managed KMS key to use for encrypting data within your workspace. For more information about using your own key in your workspace, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html">Encryption at rest</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>
    #   @return [String]
    class CreateWorkspaceInput < Struct.new(
      nil,
      :alias,
      :client_token,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateWorkspace</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The unique ID for the new workspace.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN for the new workspace.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the new workspace. Immediately after you create the workspace, the status is usually <code>CREATING</code>.</p>
    #   @return [Types::WorkspaceStatus]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the workspace.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>(optional) If the workspace was created with a customer managed KMS key, the ARN for the key used.</p>
    #   @return [String]
    class CreateWorkspaceOutput < Struct.new(
      nil,
      :workspace_id,
      :arn,
      :status,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteAlertManagerDefinition</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to delete the alert manager definition from.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class DeleteAlertManagerDefinitionInput < Struct.new(
      nil,
      :workspace_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the workspace containing the anomaly detector to delete.</p>
    #   @return [String]
    # @!attribute anomaly_detector_id
    #   <p>The identifier of the anomaly detector to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class DeleteAnomalyDetectorRequest < Struct.new(
      nil,
      :workspace_id,
      :anomaly_detector_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteLoggingConfiguration</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace containing the logging configuration to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class DeleteLoggingConfigurationInput < Struct.new(
      nil,
      :workspace_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace from which to delete the query logging configuration.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class DeleteQueryLoggingConfigurationRequest < Struct.new(
      nil,
      :workspace_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace from which to delete the resource-based policy.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is safe to retry (idempotent).</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy to delete. Use this parameter to ensure that you are deleting the correct version of the policy.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      nil,
      :workspace_id,
      :client_token,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteRuleGroupsNamespace</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace containing the rule groups namespace and definition to delete.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule groups namespace to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class DeleteRuleGroupsNamespaceInput < Struct.new(
      nil,
      :workspace_id,
      :name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scraper_id
    #   <p>The ID of the scraper whose logging configuration will be deleted.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is processed exactly once.</p>
    #   @return [String]
    class DeleteScraperLoggingConfigurationRequest < Struct.new(
      nil,
      :scraper_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteScraper</code> operation.</p>
    # @!attribute scraper_id
    #   <p>The ID of the scraper to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class DeleteScraperRequest < Struct.new(
      nil,
      :scraper_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DeleteScraper</code> operation.</p>
    # @!attribute scraper_id
    #   <p>The ID of the scraper to delete.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the scraper.</p>
    #   @return [Types::ScraperStatus]
    class DeleteScraperResponse < Struct.new(
      nil,
      :scraper_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteWorkspace</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class DeleteWorkspaceInput < Struct.new(
      nil,
      :workspace_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeAlertManagerDefinition</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to retrieve the alert manager definition from.</p>
    #   @return [String]
    class DescribeAlertManagerDefinitionInput < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeAlertManagerDefinition</code> operation.</p>
    # @!attribute alert_manager_definition
    #   <p>The alert manager definition.</p>
    #   @return [Types::AlertManagerDefinitionDescription]
    class DescribeAlertManagerDefinitionOutput < Struct.new(
      nil,
      :alert_manager_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the workspace containing the anomaly detector.</p>
    #   @return [String]
    # @!attribute anomaly_detector_id
    #   <p>The identifier of the anomaly detector to describe.</p>
    #   @return [String]
    class DescribeAnomalyDetectorRequest < Struct.new(
      nil,
      :workspace_id,
      :anomaly_detector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector
    #   <p>The detailed information about the anomaly detector.</p>
    #   @return [Types::AnomalyDetectorDescription]
    class DescribeAnomalyDetectorResponse < Struct.new(
      nil,
      :anomaly_detector,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeLoggingConfiguration</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to describe the logging configuration for.</p>
    #   @return [String]
    class DescribeLoggingConfigurationInput < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeLoggingConfiguration</code> operation.</p>
    # @!attribute logging_configuration
    #   <p>A structure that displays the information about the logging configuration.</p>
    #   @return [Types::LoggingConfigurationMetadata]
    class DescribeLoggingConfigurationOutput < Struct.new(
      nil,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace for which to retrieve the query logging configuration.</p>
    #   @return [String]
    class DescribeQueryLoggingConfigurationRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute query_logging_configuration
    #   <p>The detailed information about the query logging configuration for the specified workspace.</p>
    #   @return [Types::QueryLoggingConfigurationMetadata]
    class DescribeQueryLoggingConfigurationResponse < Struct.new(
      nil,
      :query_logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to describe the resource-based policy for.</p>
    #   @return [String]
    class DescribeResourcePolicyRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_document
    #   <p>The JSON policy document for the resource-based policy attached to the workspace.</p>
    #   @return [String]
    # @!attribute policy_status
    #   <p>The current status of the resource-based policy.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the current resource-based policy.</p>
    #   @return [String]
    class DescribeResourcePolicyResponse < Struct.new(
      nil,
      :policy_document,
      :policy_status,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeRuleGroupsNamespace</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace containing the rule groups namespace.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule groups namespace that you want information for.</p>
    #   @return [String]
    class DescribeRuleGroupsNamespaceInput < Struct.new(
      nil,
      :workspace_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeRuleGroupsNamespace</code> operation.</p>
    # @!attribute rule_groups_namespace
    #   <p>The information about the rule groups namespace.</p>
    #   @return [Types::RuleGroupsNamespaceDescription]
    class DescribeRuleGroupsNamespaceOutput < Struct.new(
      nil,
      :rule_groups_namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scraper_id
    #   <p>The ID of the scraper whose logging configuration will be described.</p>
    #   @return [String]
    class DescribeScraperLoggingConfigurationRequest < Struct.new(
      nil,
      :scraper_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the scraper logging configuration.</p>
    #   @return [Types::ScraperLoggingConfigurationStatus]
    # @!attribute scraper_id
    #   <p>The ID of the scraper.</p>
    #   @return [String]
    # @!attribute logging_destination
    #   <p>The destination where scraper logs are sent.</p>
    #   @return [Types::ScraperLoggingDestination]
    # @!attribute scraper_components
    #   <p>The list of scraper components configured for logging.</p>
    #   @return [Array<Types::ScraperComponent>]
    # @!attribute modified_at
    #   <p>The date and time when the logging configuration was last modified.</p>
    #   @return [Time]
    class DescribeScraperLoggingConfigurationResponse < Struct.new(
      nil,
      :status,
      :scraper_id,
      :logging_destination,
      :scraper_components,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeScraper</code> operation.</p>
    # @!attribute scraper_id
    #   <p>The ID of the scraper to describe.</p>
    #   @return [String]
    class DescribeScraperRequest < Struct.new(
      nil,
      :scraper_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeScraper</code> operation.</p>
    # @!attribute scraper
    #   <p>Contains details about the scraper.</p>
    #   @return [Types::ScraperDescription]
    class DescribeScraperResponse < Struct.new(
      nil,
      :scraper,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that you want to retrieve information for. To find the IDs of your workspaces, use the <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm">ListWorkspaces</a> operation.</p>
    #   @return [String]
    class DescribeWorkspaceConfigurationRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_configuration
    #   <p>This structure contains the information about the workspace configuration.</p>
    #   @return [Types::WorkspaceConfigurationDescription]
    class DescribeWorkspaceConfigurationResponse < Struct.new(
      nil,
      :workspace_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DescribeWorkspace</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to describe.</p>
    #   @return [String]
    class DescribeWorkspaceInput < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DescribeWorkspace</code> operation.</p>
    # @!attribute workspace
    #   <p>A structure that contains details about the workspace.</p>
    #   @return [Types::WorkspaceDescription]
    class DescribeWorkspaceOutput < Struct.new(
      nil,
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Where to send the metrics from a scraper.</p>
    # @!attribute amp_configuration
    #   <p>The Amazon Managed Service for Prometheus workspace to send metrics to.</p>
    #   @return [Types::AmpConfiguration]
    # @!attribute cloud_watch_configuration
    #   <p>The CloudWatch dataset to send metrics to.</p>
    #   @return [Types::CloudWatchConfiguration]
    class Destination < Struct.new(
      :amp_configuration,
      :cloud_watch_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AmpConfiguration < Destination; end
      class CloudWatchConfiguration < Destination; end
      class Unknown < Destination; end
    end

    # <p>The <code>EksConfiguration</code> structure describes the connection to the Amazon EKS cluster from which a scraper collects metrics.</p>
    # @!attribute cluster_arn
    #   <p>ARN of the Amazon EKS cluster.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of the security group IDs for the Amazon EKS cluster VPC configuration.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs for the Amazon EKS cluster VPC configuration.</p>
    #   @return [Array<String>]
    class EksConfiguration < Struct.new(
      nil,
      :cluster_arn,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration for an exporter managed by the scraper.</p>
    # @!attribute open_search_configuration
    #   <p>The configuration that the scraper uses to export metrics to an Amazon OpenSearch Service domain.</p>
    #   @return [Types::OpenSearchExporterConfiguration]
    class ExporterConfiguration < Struct.new(
      :open_search_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OpenSearchConfiguration < ExporterConfiguration; end
      class Unknown < ExporterConfiguration; end
    end

    # <p>Represents the input of a <code>GetDefaultScraperConfiguration</code> operation.</p>
    class GetDefaultScraperConfigurationRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetDefaultScraperConfiguration</code> operation.</p>
    # @!attribute configuration
    #   <p>The configuration file. Base 64 encoded. For more information, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration">Scraper configuration</a>in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>
    #   @return [String]
    class GetDefaultScraperConfigurationResponse < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for threshold settings that determine when values near expected values should be ignored during anomaly detection.</p>
    # @!attribute amount
    #   <p>The absolute amount by which values can differ from expected values before being considered anomalous.</p>
    #   @return [Float]
    # @!attribute ratio
    #   <p>The ratio by which values can differ from expected values before being considered anomalous.</p>
    #   @return [Float]
    class IgnoreNearExpected < Struct.new(
      :amount,
      :ratio,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Amount < IgnoreNearExpected; end
      class Ratio < IgnoreNearExpected; end
      class Unknown < IgnoreNearExpected; end
    end

    # <p>An unexpected error occurred during the processing of the request.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Advice to clients on when the call can be safely retried.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure defines one label set used to enforce active time series limits for the workspace, and defines the limit for that label set.</p> <p>A label set is a unique combination of label-value pairs. Use them to control time series limits and to monitor usage by specific label groups. Example label sets might be <code>team:finance</code> or <code>env:prod</code> </p>
    # @!attribute limits
    #   <p>This structure contains the information about the limits that apply to time series that match this label set.</p>
    #   @return [Types::LimitsPerLabelSetEntry]
    # @!attribute label_set
    #   <p>This defines one label set that will have an enforced active time series limit. </p> <p>Label values accept ASCII characters and must contain at least one character that isn't whitespace. ASCII control characters are not accepted. If the label name is metric name label <code>__<i>name</i>__</code>, then the <i>metric</i> part of the name must conform to the following pattern: <code>[a-zA-Z_:][a-zA-Z0-9_:]*</code> </p>
    #   @return [Hash<String, String>]
    class LimitsPerLabelSet < Struct.new(
      nil,
      :limits,
      :label_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the information about the limits that apply to time series that match one label set.</p>
    # @!attribute max_series
    #   <p>The maximum number of active series that can be ingested that match this label set. </p> <p>Setting this to 0 causes no label set limit to be enforced, but it does cause Amazon Managed Service for Prometheus to vend label set metrics to CloudWatch</p>
    #   @return [Integer]
    class LimitsPerLabelSetEntry < Struct.new(
      nil,
      :max_series,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the workspace containing the anomaly detectors to list.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>Filters the results to anomaly detectors with the specified alias.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range is 1 to 1000.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to continue retrieving results.</p>
    #   @return [String]
    class ListAnomalyDetectorsRequest < Struct.new(
      nil,
      :workspace_id,
      :alias,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_detectors
    #   <p>The list of anomaly detectors in the workspace.</p>
    #   @return [Array<Types::AnomalyDetectorSummary>]
    # @!attribute next_token
    #   <p>The pagination token to retrieve the next set of results.</p>
    #   @return [String]
    class ListAnomalyDetectorsResponse < Struct.new(
      nil,
      :anomaly_detectors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListRuleGroupsNamespaces</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace containing the rule groups namespaces.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Use this parameter to filter the rule groups namespaces that are returned. Only the namespaces with names that begin with the value that you specify are returned.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. You receive this token from a previous call, and use it to get the next page of results. The other parameters must be the same as the initial call.</p> <p>For example, if your initial request has <code>maxResults</code> of 10, and there are 12 rule groups namespaces to return, then your initial request will return 10 and a <code>nextToken</code>. Using the next token in a subsequent call will return the remaining 2 namespaces.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return. The default is 100.</p>
    #   @return [Integer]
    class ListRuleGroupsNamespacesInput < Struct.new(
      nil,
      :workspace_id,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListRuleGroupsNamespaces</code> operation.</p>
    # @!attribute rule_groups_namespaces
    #   <p>The returned list of rule groups namespaces.</p>
    #   @return [Array<Types::RuleGroupsNamespaceSummary>]
    # @!attribute next_token
    #   <p>A token indicating that there are more results to retrieve. You can use this token as part of your next <code>ListRuleGroupsNamespaces</code> request to retrieve those results.</p>
    #   @return [String]
    class ListRuleGroupsNamespacesOutput < Struct.new(
      nil,
      :rule_groups_namespaces,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListScrapers</code> operation.</p>
    # @!attribute filters
    #   <p>(Optional) A list of key-value pairs to filter the list of scrapers returned. Keys include <code>status</code>, <code>sourceArn</code>, <code>destinationArn</code>, and <code>alias</code>.</p> <p>Filters on the same key are <code>OR</code>'d together, and filters on different keys are <code>AND</code>'d together. For example, <code>status=ACTIVE&amp;status=CREATING&amp;alias=Test</code>, will return all scrapers that have the alias Test, and are either in status ACTIVE or CREATING.</p> <p>To find all active scrapers that are sending metrics to a specific Amazon Managed Service for Prometheus workspace, you would use the ARN of the workspace in a query:</p> <p> <code>status=ACTIVE&amp;destinationArn=arn:aws:aps:us-east-1:123456789012:workspace/ws-example1-1234-abcd-56ef-123456789012</code> </p> <p>If this is included, it filters the results to only the scrapers that match the filter.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute next_token
    #   <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Optional) The maximum number of scrapers to return in one <code>ListScrapers</code> operation. The range is 1-1000.</p> <p>If you omit this parameter, the default of 100 is used.</p>
    #   @return [Integer]
    class ListScrapersRequest < Struct.new(
      nil,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListScrapers</code> operation.</p>
    # @!attribute scrapers
    #   <p>A list of <code>ScraperSummary</code> structures giving information about scrapers in the account that match the filters provided.</p>
    #   @return [Array<Types::ScraperSummary>]
    # @!attribute next_token
    #   <p>A token indicating that there are more results to retrieve. You can use this token as part of your next <code>ListScrapers</code> operation to retrieve those results.</p>
    #   @return [String]
    class ListScrapersResponse < Struct.new(
      nil,
      :scrapers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to list tages for. Must be a workspace, scraper, or rule groups namespace resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tag keys and values associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>ListWorkspaces</code> operation.</p>
    # @!attribute next_token
    #   <p>The token for the next set of items to return. You receive this token from a previous call, and use it to get the next page of results. The other parameters must be the same as the initial call.</p> <p>For example, if your initial request has <code>maxResults</code> of 10, and there are 12 workspaces to return, then your initial request will return 10 and a <code>nextToken</code>. Using the next token in a subsequent call will return the remaining 2 workspaces.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>If this is included, it filters the results to only the workspaces with names that start with the value that you specify here.</p> <p>Amazon Managed Service for Prometheus will automatically strip any blank spaces from the beginning and end of the alias that you specify.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of workspaces to return per request. The default is 100.</p>
    #   @return [Integer]
    class ListWorkspacesInput < Struct.new(
      nil,
      :next_token,
      :alias,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>ListWorkspaces</code> operation.</p>
    # @!attribute workspaces
    #   <p>An array of <code>WorkspaceSummary</code> structures containing information about the workspaces requested.</p>
    #   @return [Array<Types::WorkspaceSummary>]
    # @!attribute next_token
    #   <p>A token indicating that there are more results to retrieve. You can use this token as part of your next <code>ListWorkspaces</code> request to retrieve those results.</p>
    #   @return [String]
    class ListWorkspacesOutput < Struct.new(
      nil,
      :workspaces,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the current rules and alerting logging configuration for the workspace.</p> <note> <p>These logging configurations are only for rules and alerting logs.</p> </note>
    # @!attribute status
    #   <p>The current status of the logging configuration.</p>
    #   @return [Types::LoggingConfigurationStatus]
    # @!attribute workspace
    #   <p>The ID of the workspace the logging configuration is for.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The ARN of the CloudWatch log group to which the vended log data will be published.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the logging configuration was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time that the logging configuration was most recently changed.</p>
    #   @return [Time]
    class LoggingConfigurationMetadata < Struct.new(
      nil,
      :status,
      :workspace,
      :log_group_arn,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the logging configuration. </p>
    # @!attribute status_code
    #   <p>The current status of the current rules and alerting logging configuration.</p> <note> <p>These logging configurations are only for rules and alerting logs.</p> </note>
    #   @return [String]
    # @!attribute status_reason
    #   <p>If failed, the reason for the failure.</p>
    #   @return [String]
    class LoggingConfigurationStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a destination and its associated filtering criteria for query logging.</p>
    # @!attribute cloud_watch_logs
    #   <p>Configuration details for logging to CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogDestination]
    # @!attribute filters
    #   <p>Filtering criteria that determine which queries are logged.</p>
    #   @return [Types::LoggingFilter]
    class LoggingDestination < Struct.new(
      nil,
      :cloud_watch_logs,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filtering criteria that determine which queries are logged.</p>
    # @!attribute qsp_threshold
    #   <p>The Query Samples Processed (QSP) threshold above which queries will be logged. Queries processing more samples than this threshold will be captured in logs.</p>
    #   @return [Integer]
    class LoggingFilter < Struct.new(
      nil,
      :qsp_threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for exporting metrics to an Amazon OpenSearch Service domain.</p>
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon OpenSearch Service domain.</p>
    #   @return [String]
    class OpenSearchExporterConfiguration < Struct.new(
      nil,
      :domain_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PutAlertManagerDefinition</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to update the alert manager definition in.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The alert manager definition to use. A base64-encoded version of the YAML alert manager definition file.</p> <p>For details about the alert manager definition, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html">AlertManagedDefinitionData</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class PutAlertManagerDefinitionInput < Struct.new(
      nil,
      :workspace_id,
      :data,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PutAlertManagerDefinition</code> operation.</p>
    # @!attribute status
    #   <p>A structure that returns the current status of the alert manager definition.</p>
    #   @return [Types::AlertManagerDefinitionStatus]
    class PutAlertManagerDefinitionOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the workspace containing the anomaly detector to update.</p>
    #   @return [String]
    # @!attribute anomaly_detector_id
    #   <p>The identifier of the anomaly detector to update.</p>
    #   @return [String]
    # @!attribute evaluation_interval_in_seconds
    #   <p>The frequency, in seconds, at which the anomaly detector evaluates metrics.</p>
    #   @return [Integer]
    # @!attribute missing_data_action
    #   <p>Specifies the action to take when data is missing during evaluation.</p>
    #   @return [Types::AnomalyDetectorMissingDataAction]
    # @!attribute configuration
    #   <p>The algorithm configuration for the anomaly detector.</p>
    #   @return [Types::AnomalyDetectorConfiguration]
    # @!attribute labels
    #   <p>The Amazon Managed Service for Prometheus metric labels to associate with the anomaly detector.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class PutAnomalyDetectorRequest < Struct.new(
      nil,
      :workspace_id,
      :anomaly_detector_id,
      :evaluation_interval_in_seconds,
      :missing_data_action,
      :configuration,
      :labels,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute anomaly_detector_id
    #   <p>The unique identifier of the updated anomaly detector.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated anomaly detector.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status information of the updated anomaly detector.</p>
    #   @return [Types::AnomalyDetectorStatus]
    # @!attribute tags
    #   <p>The tags applied to the updated anomaly detector.</p>
    #   @return [Hash<String, String>]
    class PutAnomalyDetectorResponse < Struct.new(
      nil,
      :anomaly_detector_id,
      :arn,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to attach the resource-based policy to.</p>
    #   @return [String]
    # @!attribute policy_document
    #   <p>The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the request is safe to retry (idempotent).</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy to update. Use this parameter to ensure that you are updating the correct version of the policy. If you don't specify a revision ID, the policy is updated regardless of its current revision.</p> <p>For the first <b>PUT</b> request on a workspace that doesn't have an existing resource policy, you can specify <code>NO_POLICY</code> as the revision ID.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      nil,
      :workspace_id,
      :policy_document,
      :client_token,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_status
    #   <p>The current status of the resource-based policy.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the newly created or updated resource-based policy.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      nil,
      :policy_status,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>PutRuleGroupsNamespace</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace where you are updating the rule groups namespace.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule groups namespace that you are updating.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The new rules file to use in the namespace. A base64-encoded version of the YAML rule groups file.</p> <p>For details about the rule groups namespace structure, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html">RuleGroupsNamespaceData</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class PutRuleGroupsNamespaceInput < Struct.new(
      nil,
      :workspace_id,
      :name,
      :data,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>PutRuleGroupsNamespace</code> operation.</p>
    # @!attribute name
    #   <p>The name of the rule groups namespace that was updated.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the rule groups namespace.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A structure that includes the current status of the rule groups namespace.</p>
    #   @return [Types::RuleGroupsNamespaceStatus]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the namespace.</p>
    #   @return [Hash<String, String>]
    class PutRuleGroupsNamespaceOutput < Struct.new(
      nil,
      :name,
      :arn,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata for a query logging configuration.</p>
    # @!attribute status
    #   <p>The current status of the query logging configuration.</p>
    #   @return [Types::QueryLoggingConfigurationStatus]
    # @!attribute workspace
    #   <p>The ID of the workspace associated with this query logging configuration.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>The configured destinations for the query logging configuration.</p>
    #   @return [Array<Types::LoggingDestination>]
    # @!attribute created_at
    #   <p>The date and time when the query logging configuration was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time when the query logging configuration was last modified.</p>
    #   @return [Time]
    class QueryLoggingConfigurationMetadata < Struct.new(
      nil,
      :status,
      :workspace,
      :destinations,
      :created_at,
      :modified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status information for a query logging configuration.</p>
    # @!attribute status_code
    #   <p>The current status of the query logging configuration.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>If there is a failure, the reason for the failure.</p>
    #   @return [String]
    class QueryLoggingConfigurationStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for the Random Cut Forest algorithm used for anomaly detection in time-series data.</p>
    # @!attribute query
    #   <p>The Prometheus query used to retrieve the time-series data for anomaly detection.</p> <important> <p>Random Cut Forest queries must be wrapped by a supported PromQL aggregation operator. For more information, see <a href="https://prometheus.io/docs/prometheus/latest/querying/operators/#aggregation-operators">Aggregation operators</a> on the <i>Prometheus docs</i> website.</p> <p> <b>Supported PromQL aggregation operators</b>: <code>avg</code>, <code>count</code>, <code>group</code>, <code>max</code>, <code>min</code>, <code>quantile</code>, <code>stddev</code>, <code>stdvar</code>, and <code>sum</code>.</p> </important>
    #   @return [String]
    # @!attribute shingle_size
    #   <p>The number of consecutive data points used to create a shingle for the Random Cut Forest algorithm. The default number is 8 consecutive data points.</p>
    #   @return [Integer]
    # @!attribute sample_size
    #   <p>The number of data points sampled from the input stream for the Random Cut Forest algorithm. The default number is 256 consecutive data points.</p>
    #   @return [Integer]
    # @!attribute ignore_near_expected_from_above
    #   <p>Configuration for ignoring values that are near expected values from above during anomaly detection.</p>
    #   @return [Types::IgnoreNearExpected]
    # @!attribute ignore_near_expected_from_below
    #   <p>Configuration for ignoring values that are near expected values from below during anomaly detection.</p>
    #   @return [Types::IgnoreNearExpected]
    class RandomCutForestConfiguration < Struct.new(
      nil,
      :query,
      :shingle_size,
      :sample_size,
      :ignore_near_expected_from_above,
      :ignore_near_expected_from_below,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:shingle_size] = 8 unless options.key?(:shingle_size)
        options[:sample_size] = 256 unless options.key?(:sample_size)
        super
      end
    end

    # <p>The request references a resources that doesn't exist.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
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

    # <p>Use this structure to enable cross-account access, so that you can use a target account to access Prometheus metrics from source accounts.</p>
    # @!attribute source_role_arn
    #   <p>The Amazon Resource Name (ARN) of the role used in the source account to enable cross-account scraping. For information about the contents of this policy, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#cross-account-remote-write">Cross-account setup</a>.</p>
    #   @return [String]
    # @!attribute target_role_arn
    #   <p>The Amazon Resource Name (ARN) of the role used in the target account to enable cross-account scraping. For information about the contents of this policy, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#cross-account-remote-write">Cross-account setup</a>.</p>
    #   @return [String]
    class RoleConfiguration < Struct.new(
      nil,
      :source_role_arn,
      :target_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details about one rule groups namespace. </p>
    # @!attribute arn
    #   <p>The ARN of the rule groups namespace. For example, <code>arn:aws:aps:&lt;region&gt;:123456789012:rulegroupsnamespace/ws-example1-1234-abcd-5678-ef90abcd1234/rulesfile1</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule groups namespace.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the rule groups namespace.</p>
    #   @return [Types::RuleGroupsNamespaceStatus]
    # @!attribute data
    #   <p>The rule groups file used in the namespace.</p> <p>For details about the rule groups namespace structure, see <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html">RuleGroupsNamespaceData</a>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the rule groups namespace was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time that the rule groups namespace was most recently changed.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the rule groups namespace.</p>
    #   @return [Hash<String, String>]
    class RuleGroupsNamespaceDescription < Struct.new(
      nil,
      :arn,
      :name,
      :status,
      :data,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status information about a rule groups namespace. </p>
    # @!attribute status_code
    #   <p>The current status of the namespace.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the failure, if any.</p>
    #   @return [String]
    class RuleGroupsNamespaceStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The high-level information about a rule groups namespace. To retrieve more information, use <code>DescribeRuleGroupsNamespace</code>.</p>
    # @!attribute arn
    #   <p>The ARN of the rule groups namespace.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the rule groups namespace.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A structure that displays the current status of the rule groups namespace.</p>
    #   @return [Types::RuleGroupsNamespaceStatus]
    # @!attribute created_at
    #   <p>The date and time that the rule groups namespace was created.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The date and time that the rule groups namespace was most recently changed.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the rule groups namespace.</p>
    #   @return [Hash<String, String>]
    class RuleGroupsNamespaceSummary < Struct.new(
      nil,
      :arn,
      :name,
      :status,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A scrape configuration for a scraper, base 64 encoded. For more information, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration">Scraper configuration</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p>
    # @!attribute configuration_blob
    #   <p>The base 64 encoded scrape configuration file.</p>
    #   @return [String]
    class ScrapeConfiguration < Struct.new(
      :configuration_blob,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ConfigurationBlob < ScrapeConfiguration; end
      class Unknown < ScrapeConfiguration; end
    end

    # <p>A component of a Amazon Managed Service for Prometheus scraper that can be configured for logging.</p>
    # @!attribute type
    #   <p>The type of the scraper component.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The configuration settings for the scraper component.</p>
    #   @return [Types::ComponentConfig]
    class ScraperComponent < Struct.new(
      nil,
      :type,
      :config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>ScraperDescription</code> structure contains the full details about one scraper in your account.</p>
    # @!attribute alias
    #   <p>(Optional) A name associated with the scraper.</p>
    #   @return [String]
    # @!attribute scraper_id
    #   <p>The ID of the scraper. For example, <code>s-example1-1234-abcd-5678-ef9012abcd34</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the scraper. For example, <code>arn:aws:aps:&lt;region&gt;:123456798012:scraper/s-example1-1234-abcd-5678-ef9012abcd34</code>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the scraper to discover and collect metrics on your behalf.</p> <p>For example, <code>arn:aws:iam::123456789012:role/service-role/AmazonGrafanaServiceRole-12example</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A structure that contains the current status of the scraper.</p>
    #   @return [Types::ScraperStatus]
    # @!attribute created_at
    #   <p>The date and time that the scraper was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The date and time that the scraper was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>(Optional) The list of tag keys and values associated with the scraper.</p>
    #   @return [Hash<String, String>]
    # @!attribute status_reason
    #   <p>If there is a failure, the reason for the failure.</p>
    #   @return [String]
    # @!attribute scrape_configuration
    #   <p>The configuration in use by the scraper.</p>
    #   @return [Types::ScrapeConfiguration]
    # @!attribute source
    #   <p>The Amazon EKS cluster from which the scraper collects metrics.</p>
    #   @return [Types::Source]
    # @!attribute destination
    #   <p>The destination where the scraper sends metrics. Valid destinations are Amazon Managed Service for Prometheus workspaces and CloudWatch datasets.</p>
    #   @return [Types::Destination]
    # @!attribute role_configuration
    #   <p>This structure displays information about the IAM roles used for cross-account scraping configuration.</p>
    #   @return [Types::RoleConfiguration]
    # @!attribute exporters
    #   <p>The exporter configurations for the scraper, if configured. The list contains at most one configuration for an Amazon OpenSearch Service domain.</p>
    #   @return [Array<Types::ExporterConfiguration>]
    class ScraperDescription < Struct.new(
      nil,
      :alias,
      :scraper_id,
      :arn,
      :role_arn,
      :status,
      :created_at,
      :last_modified_at,
      :tags,
      :status_reason,
      :scrape_configuration,
      :source,
      :destination,
      :role_configuration,
      :exporters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of a scraper logging configuration.</p>
    # @!attribute status_code
    #   <p>The status code of the scraper logging configuration.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the scraper logging configuration.</p>
    #   @return [String]
    class ScraperLoggingConfigurationStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination where scraper logs are sent.</p>
    # @!attribute cloud_watch_logs
    #   <p>The CloudWatch Logs configuration for the scraper logging destination.</p>
    #   @return [Types::CloudWatchLogDestination]
    class ScraperLoggingDestination < Struct.new(
      :cloud_watch_logs,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CloudWatchLogs < ScraperLoggingDestination; end
      class Unknown < ScraperLoggingDestination; end
    end

    # <p>The <code>ScraperStatus</code> structure contains status information about the scraper.</p>
    # @!attribute status_code
    #   <p>The current status of the scraper.</p>
    #   @return [String]
    class ScraperStatus < Struct.new(
      nil,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>ScraperSummary</code> structure contains a summary of the details about one scraper in your account.</p>
    # @!attribute alias
    #   <p>(Optional) A name associated with the scraper.</p>
    #   @return [String]
    # @!attribute scraper_id
    #   <p>The ID of the scraper.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the scraper.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the scraper to discover and collect metrics on your behalf.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A structure that contains the current status of the scraper.</p>
    #   @return [Types::ScraperStatus]
    # @!attribute created_at
    #   <p>The date and time that the scraper was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The date and time that the scraper was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>(Optional) The list of tag keys and values associated with the scraper.</p>
    #   @return [Hash<String, String>]
    # @!attribute status_reason
    #   <p>If there is a failure, the reason for the failure.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The Amazon EKS cluster from which the scraper collects metrics.</p>
    #   @return [Types::Source]
    # @!attribute destination
    #   <p>The destination where the scraper sends metrics. Valid destinations are Amazon Managed Service for Prometheus workspaces and CloudWatch datasets.</p>
    #   @return [Types::Destination]
    # @!attribute role_configuration
    #   <p>This structure displays information about the IAM roles used for cross-account scraping configuration.</p>
    #   @return [Types::RoleConfiguration]
    # @!attribute exporters
    #   <p>The exporter configurations for the scraper, if configured. The list contains at most one configuration for an Amazon OpenSearch Service domain.</p>
    #   @return [Array<Types::ExporterConfiguration>]
    class ScraperSummary < Struct.new(
      nil,
      :alias,
      :scraper_id,
      :arn,
      :role_arn,
      :status,
      :created_at,
      :last_modified_at,
      :tags,
      :status_reason,
      :source,
      :destination,
      :role_configuration,
      :exporters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Completing the request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Service quotas code for the originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Service quotas code of the originating quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of collected metrics for a scraper.</p>
    # @!attribute eks_configuration
    #   <p>The Amazon EKS cluster from which a scraper collects metrics.</p>
    #   @return [Types::EksConfiguration]
    # @!attribute vpc_configuration
    #   <p>The Amazon VPC configuration for the Prometheus collector when connecting to Amazon MSK clusters. This configuration enables secure, private network connectivity between the collector and your Amazon MSK cluster within your Amazon VPC.</p>
    #   @return [Types::VpcConfiguration]
    class Source < Struct.new(
      :eks_configuration,
      :vpc_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EksConfiguration < Source; end
      class VpcConfiguration < Source; end
      class Unknown < Source; end
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to apply tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tag keys and values to associate with the resource.</p> <p>Keys must not begin with <code>aws:</code>.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Service quotas code for the originating service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Service quotas code for the originating quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Advice to clients on when the call can be safely retried.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource from which to remove a tag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>UpdateLoggingConfiguration</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to update the logging configuration for.</p>
    #   @return [String]
    # @!attribute log_group_arn
    #   <p>The ARN of the CloudWatch log group to which the vended log data will be published.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class UpdateLoggingConfigurationInput < Struct.new(
      nil,
      :workspace_id,
      :log_group_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of an <code>UpdateLoggingConfiguration</code> operation.</p>
    # @!attribute status
    #   <p>A structure that contains the current status of the logging configuration.</p>
    #   @return [Types::LoggingConfigurationStatus]
    class UpdateLoggingConfigurationOutput < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace for which to update the query logging configuration.</p>
    #   @return [String]
    # @!attribute destinations
    #   <p>The destinations where query logs will be sent. Only CloudWatch Logs destination is supported. The list must contain exactly one element.</p>
    #   @return [Array<Types::LoggingDestination>]
    # @!attribute client_token
    #   <p>(Optional) A unique, case-sensitive identifier that you can provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class UpdateQueryLoggingConfigurationRequest < Struct.new(
      nil,
      :workspace_id,
      :destinations,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the query logging configuration.</p>
    #   @return [Types::QueryLoggingConfigurationStatus]
    class UpdateQueryLoggingConfigurationResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scraper_id
    #   <p>The ID of the scraper whose logging configuration will be updated.</p>
    #   @return [String]
    # @!attribute logging_destination
    #   <p>The destination where scraper logs will be sent.</p>
    #   @return [Types::ScraperLoggingDestination]
    # @!attribute scraper_components
    #   <p>The list of scraper components to configure for logging.</p>
    #   @return [Array<Types::ScraperComponent>]
    class UpdateScraperLoggingConfigurationRequest < Struct.new(
      nil,
      :scraper_id,
      :logging_destination,
      :scraper_components,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the updated scraper logging configuration.</p>
    #   @return [Types::ScraperLoggingConfigurationStatus]
    class UpdateScraperLoggingConfigurationResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scraper_id
    #   <p>The ID of the scraper to update.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The new alias of the scraper.</p>
    #   @return [String]
    # @!attribute scrape_configuration
    #   <p>Contains the base-64 encoded YAML configuration for the scraper.</p> <note> <p>For more information about configuring a scraper, see <a href="https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html">Using an Amazon Web Services managed collector</a> in the <i>Amazon Managed Service for Prometheus User Guide</i>.</p> </note>
    #   @return [Types::ScrapeConfiguration]
    # @!attribute destination
    #   <p>The new destination where the scraper sends metrics. Valid destinations are Amazon Managed Service for Prometheus workspaces and CloudWatch datasets.</p>
    #   @return [Types::Destination]
    # @!attribute role_configuration
    #   <p>Use this structure to enable cross-account access, so that you can use a target account to access Prometheus metrics from source accounts.</p>
    #   @return [Types::RoleConfiguration]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    # @!attribute exporters
    #   <p>The exporter configurations for the scraper. You can configure at most one Amazon OpenSearch Service domain. If you don't specify a value, the existing exporter configuration remains unchanged.</p>
    #   @return [Array<Types::ExporterConfiguration>]
    class UpdateScraperRequest < Struct.new(
      nil,
      :scraper_id,
      :alias,
      :scrape_configuration,
      :destination,
      :role_configuration,
      :client_token,
      :exporters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scraper_id
    #   <p>The ID of the updated scraper.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated scraper.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A structure that displays the current status of the scraper.</p>
    #   @return [Types::ScraperStatus]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the scraper.</p>
    #   @return [Hash<String, String>]
    class UpdateScraperResponse < Struct.new(
      nil,
      :scraper_id,
      :arn,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of an <code>UpdateWorkspaceAlias</code> operation.</p>
    # @!attribute workspace_id
    #   <p>The ID of the workspace to update.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The new alias for the workspace. It does not need to be unique.</p> <p>Amazon Managed Service for Prometheus will automatically strip any blank spaces from the beginning and end of the alias that you specify.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique identifier that you can provide to ensure the idempotency of the request. Case-sensitive.</p>
    #   @return [String]
    class UpdateWorkspaceAliasInput < Struct.new(
      nil,
      :workspace_id,
      :alias,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that you want to update. To find the IDs of your workspaces, use the <a href="https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm">ListWorkspaces</a> operation.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>You can include a token in your operation to make it an idempotent opeartion. </p>
    #   @return [String]
    # @!attribute limits_per_label_set
    #   <p>This is an array of structures, where each structure defines a label set for the workspace, and defines the active time series limit for each of those label sets. Each label name in a label set must be unique.</p>
    #   @return [Array<Types::LimitsPerLabelSet>]
    # @!attribute retention_period_in_days
    #   <p>Specifies how many days that metrics will be retained in the workspace.</p>
    #   @return [Integer]
    # @!attribute out_of_order_time_window_in_seconds
    #   <p>Specifies the time window in seconds for accepting out of order samples. Out of order samples older than this window are rejected.</p>
    #   @return [Integer]
    # @!attribute rule_query_offset_in_seconds
    #   <p>Specifies the duration in seconds to offset rule evaluation queries into the past. This allows ingested samples to be available before rule evaluation.</p>
    #   @return [Integer]
    class UpdateWorkspaceConfigurationRequest < Struct.new(
      nil,
      :workspace_id,
      :client_token,
      :limits_per_label_set,
      :retention_period_in_days,
      :out_of_order_time_window_in_seconds,
      :rule_query_offset_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the workspace configuration.</p>
    #   @return [Types::WorkspaceConfigurationStatus]
    class UpdateWorkspaceConfigurationResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Reason the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field that caused the error, if applicable.</p>
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

    # <p>Information about a field passed into a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>The name of the field that caused an exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why the field caused an exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon VPC configuration that specifies the network settings for a Prometheus collector to securely connect to Amazon MSK clusters. This configuration includes the security groups and subnets that control network access and placement for the collector.</p>
    # @!attribute security_group_ids
    #   <p>The security group IDs that control network access for the Prometheus collector. These security groups must allow the collector to communicate with your Amazon MSK cluster on the required ports.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>The subnet IDs where the Prometheus collector will be deployed. The subnets must be in the same Amazon VPC as your Amazon MSK cluster and have network connectivity to the cluster.</p>
    #   @return [Array<String>]
    class VpcConfiguration < Struct.new(
      nil,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the description of the workspace configuration.</p>
    # @!attribute status
    #   <p>This structure displays the current status of the workspace configuration, and might also contain a reason for that status.</p>
    #   @return [Types::WorkspaceConfigurationStatus]
    # @!attribute limits_per_label_set
    #   <p>This is an array of structures, where each structure displays one label sets for the workspace and the limits for that label set.</p>
    #   @return [Array<Types::LimitsPerLabelSet>]
    # @!attribute retention_period_in_days
    #   <p>This field displays how many days that metrics are retained in the workspace.</p>
    #   @return [Integer]
    # @!attribute out_of_order_time_window_in_seconds
    #   <p>This field displays the out of order time window in seconds for accepting out of order samples.</p>
    #   @return [Integer]
    # @!attribute rule_query_offset_in_seconds
    #   <p>This field displays the duration in seconds that rule evaluation queries are offset into the past.</p>
    #   @return [Integer]
    class WorkspaceConfigurationDescription < Struct.new(
      nil,
      :status,
      :limits_per_label_set,
      :retention_period_in_days,
      :out_of_order_time_window_in_seconds,
      :rule_query_offset_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure displays the current status of the workspace configuration, and might also contain a reason for that status.</p>
    # @!attribute status_code
    #   <p>The current status of the workspace configuration.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status, if a reason is available.</p>
    #   @return [String]
    class WorkspaceConfigurationStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The full details about one Amazon Managed Service for Prometheus workspace in your account.</p>
    # @!attribute workspace_id
    #   <p>The unique ID for the workspace. For example, <code>ws-example1-1234-abcd-5678-ef90abcd1234</code>.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias that is assigned to this workspace to help identify it. It does not need to be unique.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the workspace. For example, <code>arn:aws:aps:&lt;region&gt;:123456789012:workspace/ws-example1-1234-abcd-5678-ef90abcd1234</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the workspace.</p>
    #   @return [Types::WorkspaceStatus]
    # @!attribute prometheus_endpoint
    #   <p>The Prometheus endpoint available for this workspace. For example, <code>https://aps-workspaces.&lt;region&gt;.amazonaws.com/workspaces/ws-example1-1234-abcd-5678-ef90abcd1234/api/v1/</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the workspace was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the workspace.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>(optional) If the workspace was created with a customer managed KMS key, the ARN for the key used.</p>
    #   @return [String]
    class WorkspaceDescription < Struct.new(
      nil,
      :workspace_id,
      :alias,
      :arn,
      :status,
      :prometheus_endpoint,
      :created_at,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the workspace.</p>
    # @!attribute status_code
    #   <p>The current status of the workspace.</p>
    #   @return [String]
    class WorkspaceStatus < Struct.new(
      nil,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information about one Amazon Managed Service for Prometheus workspace in your account. </p>
    # @!attribute workspace_id
    #   <p>The unique ID for the workspace.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias that is assigned to this workspace to help identify it. It does not need to be unique.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the workspace.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the workspace.</p>
    #   @return [Types::WorkspaceStatus]
    # @!attribute created_at
    #   <p>The date and time that the workspace was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The list of tag keys and values that are associated with the workspace.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>(optional) If the workspace was created with a customer managed KMS key, the ARN for the key used.</p>
    #   @return [String]
    class WorkspaceSummary < Struct.new(
      nil,
      :workspace_id,
      :alias,
      :arn,
      :status,
      :created_at,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
