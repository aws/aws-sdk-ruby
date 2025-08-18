# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PrometheusService
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an alert manager definition. It is the configuration
    # for the alert manager, including information about receivers for
    # routing alerts.
    #
    # @!attribute [rw] status
    #   A structure that displays the current status of the alert manager
    #   definition..
    #   @return [Types::AlertManagerDefinitionStatus]
    #
    # @!attribute [rw] data
    #   The actual alert manager definition.
    #
    #   For details about the alert manager definition, see
    #   [AlertManagedDefinitionData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the alert manager definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the alert manager definition was most
    #   recently changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/AlertManagerDefinitionDescription AWS API Documentation
    #
    class AlertManagerDefinitionDescription < Struct.new(
      :status,
      :data,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the alert manager.
    #
    # @!attribute [rw] status_code
    #   The current status of the alert manager.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   If there is a failure, the reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/AlertManagerDefinitionStatus AWS API Documentation
    #
    class AlertManagerDefinitionStatus < Struct.new(
      :status_code,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `AmpConfiguration` structure defines the Amazon Managed Service
    # for Prometheus instance a scraper should send metrics to.
    #
    # @!attribute [rw] workspace_arn
    #   ARN of the Amazon Managed Service for Prometheus workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/AmpConfiguration AWS API Documentation
    #
    class AmpConfiguration < Struct.new(
      :workspace_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details for logging to CloudWatch Logs.
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data
    #   will be published. This log group must exist prior to calling this
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CloudWatchLogDestination AWS API Documentation
    #
    class CloudWatchLogDestination < Struct.new(
      :log_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateAlertManagerDefinition` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to add the alert manager definition to.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The alert manager definition to add. A base64-encoded version of the
    #   YAML alert manager definition file.
    #
    #   For details about the alert manager definition, see
    #   [AlertManagedDefinitionData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateAlertManagerDefinitionRequest AWS API Documentation
    #
    class CreateAlertManagerDefinitionRequest < Struct.new(
      :workspace_id,
      :data,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateAlertManagerDefinition` operation.
    #
    # @!attribute [rw] status
    #   A structure that displays the current status of the alert manager
    #   definition.
    #   @return [Types::AlertManagerDefinitionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateAlertManagerDefinitionResponse AWS API Documentation
    #
    class CreateAlertManagerDefinitionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateLoggingConfiguration` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to create the logging configuration for.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data
    #   will be published. This log group must exist prior to calling this
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateLoggingConfigurationRequest AWS API Documentation
    #
    class CreateLoggingConfigurationRequest < Struct.new(
      :workspace_id,
      :log_group_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateLoggingConfiguration` operation.
    #
    # @!attribute [rw] status
    #   A structure that displays the current status of the logging
    #   configuration.
    #   @return [Types::LoggingConfigurationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateLoggingConfigurationResponse AWS API Documentation
    #
    class CreateLoggingConfigurationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace for which to create the query logging
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The destinations where query logs will be sent. Only CloudWatch Logs
    #   destination is supported. The list must contain exactly one element.
    #   @return [Array<Types::LoggingDestination>]
    #
    # @!attribute [rw] client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide
    #   to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateQueryLoggingConfigurationRequest AWS API Documentation
    #
    class CreateQueryLoggingConfigurationRequest < Struct.new(
      :workspace_id,
      :destinations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the query logging configuration.
    #   @return [Types::QueryLoggingConfigurationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateQueryLoggingConfigurationResponse AWS API Documentation
    #
    class CreateQueryLoggingConfigurationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to add the rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the new rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The rules file to use in the new namespace.
    #
    #   Contains the base64-encoded version of the YAML rules file.
    #
    #   For details about the rule groups namespace structure, see
    #   [RuleGroupsNamespaceData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values to associate with the rule groups
    #   namespace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateRuleGroupsNamespaceRequest AWS API Documentation
    #
    class CreateRuleGroupsNamespaceRequest < Struct.new(
      :workspace_id,
      :name,
      :data,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] name
    #   The name of the new rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the new rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A structure that returns the current status of the rule groups
    #   namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   namespace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateRuleGroupsNamespaceResponse AWS API Documentation
    #
    class CreateRuleGroupsNamespaceResponse < Struct.new(
      :name,
      :arn,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateScraper` operation.
    #
    # @!attribute [rw] alias
    #   (optional) An alias to associate with the scraper. This is for your
    #   use, and does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] scrape_configuration
    #   The configuration file to use in the new scraper. For more
    #   information, see [Scraper configuration][1] in the *Amazon Managed
    #   Service for Prometheus User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration
    #   @return [Types::ScrapeConfiguration]
    #
    # @!attribute [rw] source
    #   The Amazon EKS cluster from which the scraper will collect metrics.
    #   @return [Types::Source]
    #
    # @!attribute [rw] destination
    #   The Amazon Managed Service for Prometheus workspace to send metrics
    #   to.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] role_configuration
    #   Use this structure to enable cross-account access, so that you can
    #   use a target account to access Prometheus metrics from source
    #   accounts.
    #   @return [Types::RoleConfiguration]
    #
    # @!attribute [rw] client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide
    #   to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   (Optional) The list of tag keys and values to associate with the
    #   scraper.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateScraperRequest AWS API Documentation
    #
    class CreateScraperRequest < Struct.new(
      :alias,
      :scrape_configuration,
      :source,
      :destination,
      :role_configuration,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateScraper` operation.
    #
    # @!attribute [rw] scraper_id
    #   The ID of the new scraper.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the new scraper.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A structure that displays the current status of the scraper.
    #   @return [Types::ScraperStatus]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   scraper.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateScraperResponse AWS API Documentation
    #
    class CreateScraperResponse < Struct.new(
      :scraper_id,
      :arn,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateWorkspace` operation.
    #
    # @!attribute [rw] alias
    #   An alias that you assign to this workspace to help you identify it.
    #   It does not need to be unique.
    #
    #   Blank spaces at the beginning or end of the alias that you specify
    #   will be trimmed from the value used.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values to associate with the workspace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   (optional) The ARN for a customer managed KMS key to use for
    #   encrypting data within your workspace. For more information about
    #   using your own key in your workspace, see [Encryption at rest][1] in
    #   the *Amazon Managed Service for Prometheus User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/encryption-at-rest-Amazon-Service-Prometheus.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateWorkspaceRequest AWS API Documentation
    #
    class CreateWorkspaceRequest < Struct.new(
      :alias,
      :client_token,
      :tags,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateWorkspace` operation.
    #
    # @!attribute [rw] workspace_id
    #   The unique ID for the new workspace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN for the new workspace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the new workspace. Immediately after you
    #   create the workspace, the status is usually `CREATING`.
    #   @return [Types::WorkspaceStatus]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   workspace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   (optional) If the workspace was created with a customer managed KMS
    #   key, the ARN for the key used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateWorkspaceResponse AWS API Documentation
    #
    class CreateWorkspaceResponse < Struct.new(
      :workspace_id,
      :arn,
      :status,
      :tags,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteAlertManagerDefinition` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete the alert manager definition from.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteAlertManagerDefinitionRequest AWS API Documentation
    #
    class DeleteAlertManagerDefinitionRequest < Struct.new(
      :workspace_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteLoggingConfiguration` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace containing the logging configuration to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteLoggingConfigurationRequest AWS API Documentation
    #
    class DeleteLoggingConfigurationRequest < Struct.new(
      :workspace_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace from which to delete the query logging
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide
    #   to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteQueryLoggingConfigurationRequest AWS API Documentation
    #
    class DeleteQueryLoggingConfigurationRequest < Struct.new(
      :workspace_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace from which to delete the resource-based
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is safe to retry (idempotent).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the policy to delete. Use this parameter to
    #   ensure that you are deleting the correct version of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :workspace_id,
      :client_token,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace containing the rule groups namespace and
    #   definition to delete.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteRuleGroupsNamespaceRequest AWS API Documentation
    #
    class DeleteRuleGroupsNamespaceRequest < Struct.new(
      :workspace_id,
      :name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteScraper` operation.
    #
    # @!attribute [rw] scraper_id
    #   The ID of the scraper to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide
    #   to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteScraperRequest AWS API Documentation
    #
    class DeleteScraperRequest < Struct.new(
      :scraper_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DeleteScraper` operation.
    #
    # @!attribute [rw] scraper_id
    #   The ID of the scraper to delete.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the scraper.
    #   @return [Types::ScraperStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteScraperResponse AWS API Documentation
    #
    class DeleteScraperResponse < Struct.new(
      :scraper_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteWorkspace` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteWorkspaceRequest AWS API Documentation
    #
    class DeleteWorkspaceRequest < Struct.new(
      :workspace_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeAlertManagerDefinition` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to retrieve the alert manager definition
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeAlertManagerDefinitionRequest AWS API Documentation
    #
    class DescribeAlertManagerDefinitionRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeAlertManagerDefinition` operation.
    #
    # @!attribute [rw] alert_manager_definition
    #   The alert manager definition.
    #   @return [Types::AlertManagerDefinitionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeAlertManagerDefinitionResponse AWS API Documentation
    #
    class DescribeAlertManagerDefinitionResponse < Struct.new(
      :alert_manager_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeLoggingConfiguration` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to describe the logging configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeLoggingConfigurationRequest AWS API Documentation
    #
    class DescribeLoggingConfigurationRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeLoggingConfiguration` operation.
    #
    # @!attribute [rw] logging_configuration
    #   A structure that displays the information about the logging
    #   configuration.
    #   @return [Types::LoggingConfigurationMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeLoggingConfigurationResponse AWS API Documentation
    #
    class DescribeLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace for which to retrieve the query logging
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeQueryLoggingConfigurationRequest AWS API Documentation
    #
    class DescribeQueryLoggingConfigurationRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] query_logging_configuration
    #   The detailed information about the query logging configuration for
    #   the specified workspace.
    #   @return [Types::QueryLoggingConfigurationMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeQueryLoggingConfigurationResponse AWS API Documentation
    #
    class DescribeQueryLoggingConfigurationResponse < Struct.new(
      :query_logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace to describe the resource-based policy for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeResourcePolicyRequest AWS API Documentation
    #
    class DescribeResourcePolicyRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_document
    #   The JSON policy document for the resource-based policy attached to
    #   the workspace.
    #   @return [String]
    #
    # @!attribute [rw] policy_status
    #   The current status of the resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the current resource-based policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeResourcePolicyResponse AWS API Documentation
    #
    class DescribeResourcePolicyResponse < Struct.new(
      :policy_document,
      :policy_status,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace containing the rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace that you want information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeRuleGroupsNamespaceRequest AWS API Documentation
    #
    class DescribeRuleGroupsNamespaceRequest < Struct.new(
      :workspace_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] rule_groups_namespace
    #   The information about the rule groups namespace.
    #   @return [Types::RuleGroupsNamespaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeRuleGroupsNamespaceResponse AWS API Documentation
    #
    class DescribeRuleGroupsNamespaceResponse < Struct.new(
      :rule_groups_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeScraper` operation.
    #
    # @!attribute [rw] scraper_id
    #   The ID of the scraper to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeScraperRequest AWS API Documentation
    #
    class DescribeScraperRequest < Struct.new(
      :scraper_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeScraper` operation.
    #
    # @!attribute [rw] scraper
    #   Contains details about the scraper.
    #   @return [Types::ScraperDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeScraperResponse AWS API Documentation
    #
    class DescribeScraperResponse < Struct.new(
      :scraper)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that you want to retrieve information for.
    #   To find the IDs of your workspaces, use the [ListWorkspaces][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeWorkspaceConfigurationRequest AWS API Documentation
    #
    class DescribeWorkspaceConfigurationRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_configuration
    #   This structure contains the information about the workspace
    #   configuration.
    #   @return [Types::WorkspaceConfigurationDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeWorkspaceConfigurationResponse AWS API Documentation
    #
    class DescribeWorkspaceConfigurationResponse < Struct.new(
      :workspace_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DescribeWorkspace` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeWorkspaceRequest AWS API Documentation
    #
    class DescribeWorkspaceRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DescribeWorkspace` operation.
    #
    # @!attribute [rw] workspace
    #   A structure that contains details about the workspace.
    #   @return [Types::WorkspaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeWorkspaceResponse AWS API Documentation
    #
    class DescribeWorkspaceResponse < Struct.new(
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Where to send the metrics from a scraper.
    #
    # @note Destination is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Destination is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Destination corresponding to the set member.
    #
    # @!attribute [rw] amp_configuration
    #   The Amazon Managed Service for Prometheus workspace to send metrics
    #   to.
    #   @return [Types::AmpConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :amp_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AmpConfiguration < Destination; end
      class Unknown < Destination; end
    end

    # The `EksConfiguration` structure describes the connection to the
    # Amazon EKS cluster from which a scraper collects metrics.
    #
    # @!attribute [rw] cluster_arn
    #   ARN of the Amazon EKS cluster.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of the security group IDs for the Amazon EKS cluster VPC
    #   configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs for the Amazon EKS cluster VPC configuration.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/EksConfiguration AWS API Documentation
    #
    class EksConfiguration < Struct.new(
      :cluster_arn,
      :security_group_ids,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetDefaultScraperConfiguration` operation.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/GetDefaultScraperConfigurationRequest AWS API Documentation
    #
    class GetDefaultScraperConfigurationRequest < Aws::EmptyStructure; end

    # Represents the output of a `GetDefaultScraperConfiguration` operation.
    #
    # @!attribute [rw] configuration
    #   The configuration file. Base 64 encoded. For more information, see
    #   [Scraper configuration][1]in the *Amazon Managed Service for
    #   Prometheus User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/GetDefaultScraperConfigurationResponse AWS API Documentation
    #
    class GetDefaultScraperConfigurationResponse < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of the request.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure defines one label set used to enforce active time
    # series limits for the workspace, and defines the limit for that label
    # set.
    #
    # A label set is a unique combination of label-value pairs. Use them to
    # control time series limits and to monitor usage by specific label
    # groups. Example label sets might be `team:finance` or `env:prod`
    #
    # @!attribute [rw] limits
    #   This structure contains the information about the limits that apply
    #   to time series that match this label set.
    #   @return [Types::LimitsPerLabelSetEntry]
    #
    # @!attribute [rw] label_set
    #   This defines one label set that will have an enforced active time
    #   series limit.
    #
    #   Label values accept ASCII characters and must contain at least one
    #   character that isn't whitespace. ASCII control characters are not
    #   accepted. If the label name is metric name label `__name__`, then
    #   the *metric* part of the name must conform to the following pattern:
    #   `[a-zA-Z_:][a-zA-Z0-9_:]*`
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/LimitsPerLabelSet AWS API Documentation
    #
    class LimitsPerLabelSet < Struct.new(
      :limits,
      :label_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the information about the limits that apply to
    # time series that match one label set.
    #
    # @!attribute [rw] max_series
    #   The maximum number of active series that can be ingested that match
    #   this label set.
    #
    #   Setting this to 0 causes no label set limit to be enforced, but it
    #   does cause Amazon Managed Service for Prometheus to vend label set
    #   metrics to CloudWatch
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/LimitsPerLabelSetEntry AWS API Documentation
    #
    class LimitsPerLabelSetEntry < Struct.new(
      :max_series)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListRuleGroupsNamespaces` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace containing the rule groups namespaces.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Use this parameter to filter the rule groups namespaces that are
    #   returned. Only the namespaces with names that begin with the value
    #   that you specify are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. You receive this
    #   token from a previous call, and use it to get the next page of
    #   results. The other parameters must be the same as the initial call.
    #
    #   For example, if your initial request has `maxResults` of 10, and
    #   there are 12 rule groups namespaces to return, then your initial
    #   request will return 10 and a `nextToken`. Using the next token in a
    #   subsequent call will return the remaining 2 namespaces.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. The default is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListRuleGroupsNamespacesRequest AWS API Documentation
    #
    class ListRuleGroupsNamespacesRequest < Struct.new(
      :workspace_id,
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListRuleGroupsNamespaces` operation.
    #
    # @!attribute [rw] rule_groups_namespaces
    #   The returned list of rule groups namespaces.
    #   @return [Array<Types::RuleGroupsNamespaceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token indicating that there are more results to retrieve. You can
    #   use this token as part of your next `ListRuleGroupsNamespaces`
    #   request to retrieve those results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListRuleGroupsNamespacesResponse AWS API Documentation
    #
    class ListRuleGroupsNamespacesResponse < Struct.new(
      :rule_groups_namespaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListScrapers` operation.
    #
    # @!attribute [rw] filters
    #   (Optional) A list of key-value pairs to filter the list of scrapers
    #   returned. Keys include `status`, `sourceArn`, `destinationArn`, and
    #   `alias`.
    #
    #   Filters on the same key are `OR`'d together, and filters on
    #   different keys are `AND`'d together. For example,
    #   `status=ACTIVE&status=CREATING&alias=Test`, will return all scrapers
    #   that have the alias Test, and are either in status ACTIVE or
    #   CREATING.
    #
    #   To find all active scrapers that are sending metrics to a specific
    #   Amazon Managed Service for Prometheus workspace, you would use the
    #   ARN of the workspace in a query:
    #
    #   `status=ACTIVE&destinationArn=arn:aws:aps:us-east-1:123456789012:workspace/ws-example1-1234-abcd-56ef-123456789012`
    #
    #   If this is included, it filters the results to only the scrapers
    #   that match the filter.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Optional) The maximum number of scrapers to return in one
    #   `ListScrapers` operation. The range is 1-1000.
    #
    #   If you omit this parameter, the default of 100 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListScrapersRequest AWS API Documentation
    #
    class ListScrapersRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListScrapers` operation.
    #
    # @!attribute [rw] scrapers
    #   A list of `ScraperSummary` structures giving information about
    #   scrapers in the account that match the filters provided.
    #   @return [Array<Types::ScraperSummary>]
    #
    # @!attribute [rw] next_token
    #   A token indicating that there are more results to retrieve. You can
    #   use this token as part of your next `ListScrapers` operation to
    #   retrieve those results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListScrapersResponse AWS API Documentation
    #
    class ListScrapersResponse < Struct.new(
      :scrapers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to list tages for. Must be a workspace,
    #   scraper, or rule groups namespace resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `ListWorkspaces` operation.
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. You receive this
    #   token from a previous call, and use it to get the next page of
    #   results. The other parameters must be the same as the initial call.
    #
    #   For example, if your initial request has `maxResults` of 10, and
    #   there are 12 workspaces to return, then your initial request will
    #   return 10 and a `nextToken`. Using the next token in a subsequent
    #   call will return the remaining 2 workspaces.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   If this is included, it filters the results to only the workspaces
    #   with names that start with the value that you specify here.
    #
    #   Amazon Managed Service for Prometheus will automatically strip any
    #   blank spaces from the beginning and end of the alias that you
    #   specify.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of workspaces to return per request. The default
    #   is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListWorkspacesRequest AWS API Documentation
    #
    class ListWorkspacesRequest < Struct.new(
      :next_token,
      :alias,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListWorkspaces` operation.
    #
    # @!attribute [rw] workspaces
    #   An array of `WorkspaceSummary` structures containing information
    #   about the workspaces requested.
    #   @return [Array<Types::WorkspaceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token indicating that there are more results to retrieve. You can
    #   use this token as part of your next `ListWorkspaces` request to
    #   retrieve those results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListWorkspacesResponse AWS API Documentation
    #
    class ListWorkspacesResponse < Struct.new(
      :workspaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the current rules and alerting logging
    # configuration for the workspace.
    #
    # <note markdown="1"> These logging configurations are only for rules and alerting logs.
    #
    #  </note>
    #
    # @!attribute [rw] status
    #   The current status of the logging configuration.
    #   @return [Types::LoggingConfigurationStatus]
    #
    # @!attribute [rw] workspace
    #   The ID of the workspace the logging configuration is for.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data
    #   will be published.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the logging configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the logging configuration was most recently
    #   changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/LoggingConfigurationMetadata AWS API Documentation
    #
    class LoggingConfigurationMetadata < Struct.new(
      :status,
      :workspace,
      :log_group_arn,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the logging configuration.
    #
    # @!attribute [rw] status_code
    #   The current status of the current rules and alerting logging
    #   configuration.
    #
    #   <note markdown="1"> These logging configurations are only for rules and alerting logs.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   If failed, the reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/LoggingConfigurationStatus AWS API Documentation
    #
    class LoggingConfigurationStatus < Struct.new(
      :status_code,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a destination and its associated filtering criteria for query
    # logging.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Configuration details for logging to CloudWatch Logs.
    #   @return [Types::CloudWatchLogDestination]
    #
    # @!attribute [rw] filters
    #   Filtering criteria that determine which queries are logged.
    #   @return [Types::LoggingFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/LoggingDestination AWS API Documentation
    #
    class LoggingDestination < Struct.new(
      :cloud_watch_logs,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filtering criteria that determine which queries are logged.
    #
    # @!attribute [rw] qsp_threshold
    #   The Query Samples Processed (QSP) threshold above which queries will
    #   be logged. Queries processing more samples than this threshold will
    #   be captured in logs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/LoggingFilter AWS API Documentation
    #
    class LoggingFilter < Struct.new(
      :qsp_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PutAlertManagerDefinition` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update the alert manager definition in.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The alert manager definition to use. A base64-encoded version of the
    #   YAML alert manager definition file.
    #
    #   For details about the alert manager definition, see
    #   [AlertManagedDefinitionData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-AlertManagerDefinitionData.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutAlertManagerDefinitionRequest AWS API Documentation
    #
    class PutAlertManagerDefinitionRequest < Struct.new(
      :workspace_id,
      :data,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PutAlertManagerDefinition` operation.
    #
    # @!attribute [rw] status
    #   A structure that returns the current status of the alert manager
    #   definition.
    #   @return [Types::AlertManagerDefinitionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutAlertManagerDefinitionResponse AWS API Documentation
    #
    class PutAlertManagerDefinitionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace to attach the resource-based policy to.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON policy document to use as the resource-based policy. This
    #   policy defines the permissions that other AWS accounts or services
    #   have to access your workspace.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   request is safe to retry (idempotent).
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the policy to update. Use this parameter to
    #   ensure that you are updating the correct version of the policy. If
    #   you don't specify a revision ID, the policy is updated regardless
    #   of its current revision.
    #
    #   For the first **PUT** request on a workspace that doesn't have an
    #   existing resource policy, you can specify `NO_POLICY` as the
    #   revision ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :workspace_id,
      :policy_document,
      :client_token,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_status
    #   The current status of the resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the newly created or updated resource-based
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :policy_status,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `PutRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace where you are updating the rule groups
    #   namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The new rules file to use in the namespace. A base64-encoded version
    #   of the YAML rule groups file.
    #
    #   For details about the rule groups namespace structure, see
    #   [RuleGroupsNamespaceData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutRuleGroupsNamespaceRequest AWS API Documentation
    #
    class PutRuleGroupsNamespaceRequest < Struct.new(
      :workspace_id,
      :name,
      :data,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PutRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace that was updated.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A structure that includes the current status of the rule groups
    #   namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   namespace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutRuleGroupsNamespaceResponse AWS API Documentation
    #
    class PutRuleGroupsNamespaceResponse < Struct.new(
      :name,
      :arn,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata for a query logging configuration.
    #
    # @!attribute [rw] status
    #   The current status of the query logging configuration.
    #   @return [Types::QueryLoggingConfigurationStatus]
    #
    # @!attribute [rw] workspace
    #   The ID of the workspace associated with this query logging
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The configured destinations for the query logging configuration.
    #   @return [Array<Types::LoggingDestination>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the query logging configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time when the query logging configuration was last
    #   modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/QueryLoggingConfigurationMetadata AWS API Documentation
    #
    class QueryLoggingConfigurationMetadata < Struct.new(
      :status,
      :workspace,
      :destinations,
      :created_at,
      :modified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status information for a query logging configuration.
    #
    # @!attribute [rw] status_code
    #   The current status of the query logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   If there is a failure, the reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/QueryLoggingConfigurationStatus AWS API Documentation
    #
    class QueryLoggingConfigurationStatus < Struct.new(
      :status_code,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resources that doesn't exist.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to enable cross-account access, so that you can use
    # a target account to access Prometheus metrics from source accounts.
    #
    # @!attribute [rw] source_role_arn
    #   The Amazon Resource Name (ARN) of the role used in the source
    #   account to enable cross-account scraping. For information about the
    #   contents of this policy, see [Cross-account setup][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#cross-account-remote-write
    #   @return [String]
    #
    # @!attribute [rw] target_role_arn
    #   The Amazon Resource Name (ARN) of the role used in the target
    #   account to enable cross-account scraping. For information about the
    #   contents of this policy, see [Cross-account setup][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#cross-account-remote-write
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/RoleConfiguration AWS API Documentation
    #
    class RoleConfiguration < Struct.new(
      :source_role_arn,
      :target_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about one rule groups namespace.
    #
    # @!attribute [rw] arn
    #   The ARN of the rule groups namespace. For example,
    #   `arn:aws:aps:<region>:123456789012:rulegroupsnamespace/ws-example1-1234-abcd-5678-ef90abcd1234/rulesfile1`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the rule groups namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
    #
    # @!attribute [rw] data
    #   The rule groups file used in the namespace.
    #
    #   For details about the rule groups namespace structure, see
    #   [RuleGroupsNamespaceData][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/yaml-RuleGroupsNamespaceData.html
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the rule groups namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the rule groups namespace was most recently
    #   changed.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the rule
    #   groups namespace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/RuleGroupsNamespaceDescription AWS API Documentation
    #
    class RuleGroupsNamespaceDescription < Struct.new(
      :arn,
      :name,
      :status,
      :data,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status information about a rule groups namespace.
    #
    # @!attribute [rw] status_code
    #   The current status of the namespace.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the failure, if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/RuleGroupsNamespaceStatus AWS API Documentation
    #
    class RuleGroupsNamespaceStatus < Struct.new(
      :status_code,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The high-level information about a rule groups namespace. To retrieve
    # more information, use `DescribeRuleGroupsNamespace`.
    #
    # @!attribute [rw] arn
    #   The ARN of the rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A structure that displays the current status of the rule groups
    #   namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
    #
    # @!attribute [rw] created_at
    #   The date and time that the rule groups namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the rule groups namespace was most recently
    #   changed.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the rule
    #   groups namespace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/RuleGroupsNamespaceSummary AWS API Documentation
    #
    class RuleGroupsNamespaceSummary < Struct.new(
      :arn,
      :name,
      :status,
      :created_at,
      :modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A scrape configuration for a scraper, base 64 encoded. For more
    # information, see [Scraper configuration][1] in the *Amazon Managed
    # Service for Prometheus User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration
    #
    # @note ScrapeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ScrapeConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ScrapeConfiguration corresponding to the set member.
    #
    # @!attribute [rw] configuration_blob
    #   The base 64 encoded scrape configuration file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ScrapeConfiguration AWS API Documentation
    #
    class ScrapeConfiguration < Struct.new(
      :configuration_blob,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ConfigurationBlob < ScrapeConfiguration; end
      class Unknown < ScrapeConfiguration; end
    end

    # The `ScraperDescription` structure contains the full details about one
    # scraper in your account.
    #
    # @!attribute [rw] alias
    #   (Optional) A name associated with the scraper.
    #   @return [String]
    #
    # @!attribute [rw] scraper_id
    #   The ID of the scraper. For example,
    #   `s-example1-1234-abcd-5678-ef9012abcd34`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the scraper. For example,
    #   `arn:aws:aps:<region>:123456798012:scraper/s-example1-1234-abcd-5678-ef9012abcd34`.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the scraper to discover and collect metrics on your
    #   behalf.
    #
    #   For example,
    #   `arn:aws:iam::123456789012:role/service-role/AmazonGrafanaServiceRole-12example`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A structure that contains the current status of the scraper.
    #   @return [Types::ScraperStatus]
    #
    # @!attribute [rw] created_at
    #   The date and time that the scraper was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_at
    #   The date and time that the scraper was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   (Optional) The list of tag keys and values associated with the
    #   scraper.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status_reason
    #   If there is a failure, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] scrape_configuration
    #   The configuration in use by the scraper.
    #   @return [Types::ScrapeConfiguration]
    #
    # @!attribute [rw] source
    #   The Amazon EKS cluster from which the scraper collects metrics.
    #   @return [Types::Source]
    #
    # @!attribute [rw] destination
    #   The Amazon Managed Service for Prometheus workspace the scraper
    #   sends metrics to.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] role_configuration
    #   This structure displays information about the IAM roles used for
    #   cross-account scraping configuration.
    #   @return [Types::RoleConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ScraperDescription AWS API Documentation
    #
    class ScraperDescription < Struct.new(
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
      :role_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `ScraperStatus` structure contains status information about the
    # scraper.
    #
    # @!attribute [rw] status_code
    #   The current status of the scraper.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ScraperStatus AWS API Documentation
    #
    class ScraperStatus < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `ScraperSummary` structure contains a summary of the details about
    # one scraper in your account.
    #
    # @!attribute [rw] alias
    #   (Optional) A name associated with the scraper.
    #   @return [String]
    #
    # @!attribute [rw] scraper_id
    #   The ID of the scraper.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the scraper.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the scraper to discover and collect metrics on your
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A structure that contains the current status of the scraper.
    #   @return [Types::ScraperStatus]
    #
    # @!attribute [rw] created_at
    #   The date and time that the scraper was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_at
    #   The date and time that the scraper was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   (Optional) The list of tag keys and values associated with the
    #   scraper.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status_reason
    #   If there is a failure, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The Amazon EKS cluster from which the scraper collects metrics.
    #   @return [Types::Source]
    #
    # @!attribute [rw] destination
    #   The Amazon Managed Service for Prometheus workspace the scraper
    #   sends metrics to.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] role_configuration
    #   This structure displays information about the IAM roles used for
    #   cross-account scraping configuration.
    #   @return [Types::RoleConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ScraperSummary AWS API Documentation
    #
    class ScraperSummary < Struct.new(
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
      :role_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Completing the request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service quotas code for the originating service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service quotas code of the originating quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source of collected metrics for a scraper.
    #
    # @note Source is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Source is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Source corresponding to the set member.
    #
    # @!attribute [rw] eks_configuration
    #   The Amazon EKS cluster from which a scraper collects metrics.
    #   @return [Types::EksConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/Source AWS API Documentation
    #
    class Source < Struct.new(
      :eks_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EksConfiguration < Source; end
      class Unknown < Source; end
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to apply tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values to associate with the resource.
    #
    #   Keys must not begin with `aws:`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service quotas code for the originating service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service quotas code for the originating quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource from which to remove a tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Represents the input of an `UpdateLoggingConfiguration` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update the logging configuration for.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data
    #   will be published.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateLoggingConfigurationRequest AWS API Documentation
    #
    class UpdateLoggingConfigurationRequest < Struct.new(
      :workspace_id,
      :log_group_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of an `UpdateLoggingConfiguration` operation.
    #
    # @!attribute [rw] status
    #   A structure that contains the current status of the logging
    #   configuration.
    #   @return [Types::LoggingConfigurationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateLoggingConfigurationResponse AWS API Documentation
    #
    class UpdateLoggingConfigurationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace for which to update the query logging
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] destinations
    #   The destinations where query logs will be sent. Only CloudWatch Logs
    #   destination is supported. The list must contain exactly one element.
    #   @return [Array<Types::LoggingDestination>]
    #
    # @!attribute [rw] client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide
    #   to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateQueryLoggingConfigurationRequest AWS API Documentation
    #
    class UpdateQueryLoggingConfigurationRequest < Struct.new(
      :workspace_id,
      :destinations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the query logging configuration.
    #   @return [Types::QueryLoggingConfigurationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateQueryLoggingConfigurationResponse AWS API Documentation
    #
    class UpdateQueryLoggingConfigurationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scraper_id
    #   The ID of the scraper to update.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The new alias of the scraper.
    #   @return [String]
    #
    # @!attribute [rw] scrape_configuration
    #   Contains the base-64 encoded YAML configuration for the scraper.
    #
    #   <note markdown="1"> For more information about configuring a scraper, see [Using an
    #   Amazon Web Services managed collector][1] in the *Amazon Managed
    #   Service for Prometheus User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html
    #   @return [Types::ScrapeConfiguration]
    #
    # @!attribute [rw] destination
    #   The new Amazon Managed Service for Prometheus workspace to send
    #   metrics to.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] role_configuration
    #   Use this structure to enable cross-account access, so that you can
    #   use a target account to access Prometheus metrics from source
    #   accounts.
    #   @return [Types::RoleConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateScraperRequest AWS API Documentation
    #
    class UpdateScraperRequest < Struct.new(
      :scraper_id,
      :alias,
      :scrape_configuration,
      :destination,
      :role_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scraper_id
    #   The ID of the updated scraper.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated scraper.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A structure that displays the current status of the scraper.
    #   @return [Types::ScraperStatus]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   scraper.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateScraperResponse AWS API Documentation
    #
    class UpdateScraperResponse < Struct.new(
      :scraper_id,
      :arn,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of an `UpdateWorkspaceAlias` operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The new alias for the workspace. It does not need to be unique.
    #
    #   Amazon Managed Service for Prometheus will automatically strip any
    #   blank spaces from the beginning and end of the alias that you
    #   specify.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateWorkspaceAliasRequest AWS API Documentation
    #
    class UpdateWorkspaceAliasRequest < Struct.new(
      :workspace_id,
      :alias,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workspace_id
    #   The ID of the workspace that you want to update. To find the IDs of
    #   your workspaces, use the [ListWorkspaces][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/prometheus/latest/APIReference/API_ListWorkspaces.htm
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   You can include a token in your operation to make it an idempotent
    #   opeartion.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] limits_per_label_set
    #   This is an array of structures, where each structure defines a label
    #   set for the workspace, and defines the active time series limit for
    #   each of those label sets. Each label name in a label set must be
    #   unique.
    #   @return [Array<Types::LimitsPerLabelSet>]
    #
    # @!attribute [rw] retention_period_in_days
    #   Specifies how many days that metrics will be retained in the
    #   workspace.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateWorkspaceConfigurationRequest AWS API Documentation
    #
    class UpdateWorkspaceConfigurationRequest < Struct.new(
      :workspace_id,
      :client_token,
      :limits_per_label_set,
      :retention_period_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the workspace configuration.
    #   @return [Types::WorkspaceConfigurationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateWorkspaceConfigurationResponse AWS API Documentation
    #
    class UpdateWorkspaceConfigurationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The field that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a field passed into a request that resulted in an
    # exception.
    #
    # @!attribute [rw] name
    #   The name of the field that caused an exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing why the field caused an exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the description of the workspace
    # configuration.
    #
    # @!attribute [rw] status
    #   This structure displays the current status of the workspace
    #   configuration, and might also contain a reason for that status.
    #   @return [Types::WorkspaceConfigurationStatus]
    #
    # @!attribute [rw] limits_per_label_set
    #   This is an array of structures, where each structure displays one
    #   label sets for the workspace and the limits for that label set.
    #   @return [Array<Types::LimitsPerLabelSet>]
    #
    # @!attribute [rw] retention_period_in_days
    #   This field displays how many days that metrics are retained in the
    #   workspace.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceConfigurationDescription AWS API Documentation
    #
    class WorkspaceConfigurationDescription < Struct.new(
      :status,
      :limits_per_label_set,
      :retention_period_in_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure displays the current status of the workspace
    # configuration, and might also contain a reason for that status.
    #
    # @!attribute [rw] status_code
    #   The current status of the workspace configuration.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status, if a reason is available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceConfigurationStatus AWS API Documentation
    #
    class WorkspaceConfigurationStatus < Struct.new(
      :status_code,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The full details about one Amazon Managed Service for Prometheus
    # workspace in your account.
    #
    # @!attribute [rw] workspace_id
    #   The unique ID for the workspace. For example,
    #   `ws-example1-1234-abcd-5678-ef90abcd1234`.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias that is assigned to this workspace to help identify it. It
    #   does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the workspace. For example,
    #   `arn:aws:aps:<region>:123456789012:workspace/ws-example1-1234-abcd-5678-ef90abcd1234`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the workspace.
    #   @return [Types::WorkspaceStatus]
    #
    # @!attribute [rw] prometheus_endpoint
    #   The Prometheus endpoint available for this workspace. For example,
    #   `https://aps-workspaces.<region>.amazonaws.com/workspaces/ws-example1-1234-abcd-5678-ef90abcd1234/api/v1/`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   workspace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   (optional) If the workspace was created with a customer managed KMS
    #   key, the ARN for the key used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceDescription AWS API Documentation
    #
    class WorkspaceDescription < Struct.new(
      :workspace_id,
      :alias,
      :arn,
      :status,
      :prometheus_endpoint,
      :created_at,
      :tags,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the workspace.
    #
    # @!attribute [rw] status_code
    #   The current status of the workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceStatus AWS API Documentation
    #
    class WorkspaceStatus < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about one Amazon Managed Service for Prometheus
    # workspace in your account.
    #
    # @!attribute [rw] workspace_id
    #   The unique ID for the workspace.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias that is assigned to this workspace to help identify it. It
    #   does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the workspace.
    #   @return [Types::WorkspaceStatus]
    #
    # @!attribute [rw] created_at
    #   The date and time that the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   workspace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   (optional) If the workspace was created with a customer managed KMS
    #   key, the ARN for the key used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceSummary AWS API Documentation
    #
    class WorkspaceSummary < Struct.new(
      :workspace_id,
      :alias,
      :arn,
      :status,
      :created_at,
      :tags,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

