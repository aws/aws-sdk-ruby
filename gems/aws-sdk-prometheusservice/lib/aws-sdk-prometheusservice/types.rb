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
    # @!attribute [rw] created_at
    #   The date and time that the alert manager definition was created.
    #   @return [Time]
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
    # @!attribute [rw] modified_at
    #   The date and time that the alert manager definition was most
    #   recently changed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   A structure that displays the current status of the alert manager
    #   definition..
    #   @return [Types::AlertManagerDefinitionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/AlertManagerDefinitionDescription AWS API Documentation
    #
    class AlertManagerDefinitionDescription < Struct.new(
      :created_at,
      :data,
      :modified_at,
      :status)
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
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to add the alert manager definition to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateAlertManagerDefinitionRequest AWS API Documentation
    #
    class CreateAlertManagerDefinitionRequest < Struct.new(
      :client_token,
      :data,
      :workspace_id)
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
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data
    #   will be published. This log group must exist prior to calling this
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to create the logging configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateLoggingConfigurationRequest AWS API Documentation
    #
    class CreateLoggingConfigurationRequest < Struct.new(
      :client_token,
      :log_group_arn,
      :workspace_id)
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

    # Represents the input of a `CreateRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    # @!attribute [rw] name
    #   The name for the new rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values to associate with the rule groups
    #   namespace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to add the rule groups namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateRuleGroupsNamespaceRequest AWS API Documentation
    #
    class CreateRuleGroupsNamespaceRequest < Struct.new(
      :client_token,
      :data,
      :name,
      :tags,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the new rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new rule groups namespace.
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
      :arn,
      :name,
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
    # @!attribute [rw] client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide
    #   to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The Amazon Managed Service for Prometheus workspace to send metrics
    #   to.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] role_configuration
    #   The scraper role configuration for the workspace.
    #   @return [Types::RoleConfiguration]
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
    # @!attribute [rw] tags
    #   (Optional) The list of tag keys and values to associate with the
    #   scraper.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateScraperRequest AWS API Documentation
    #
    class CreateScraperRequest < Struct.new(
      :alias,
      :client_token,
      :destination,
      :role_configuration,
      :scrape_configuration,
      :source,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateScraper` operation.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the new scraper.
    #   @return [String]
    #
    # @!attribute [rw] scraper_id
    #   The ID of the new scraper.
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
      :arn,
      :scraper_id,
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
    # @!attribute [rw] tags
    #   The list of tag keys and values to associate with the workspace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateWorkspaceRequest AWS API Documentation
    #
    class CreateWorkspaceRequest < Struct.new(
      :alias,
      :client_token,
      :kms_key_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateWorkspace` operation.
    #
    # @!attribute [rw] arn
    #   The ARN for the new workspace.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   (optional) If the workspace was created with a customer managed KMS
    #   key, the ARN for the key used.
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
    # @!attribute [rw] workspace_id
    #   The unique ID for the new workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateWorkspaceResponse AWS API Documentation
    #
    class CreateWorkspaceResponse < Struct.new(
      :arn,
      :kms_key_arn,
      :status,
      :tags,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteAlertManagerDefinition` operation.
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete the alert manager definition from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteAlertManagerDefinitionRequest AWS API Documentation
    #
    class DeleteAlertManagerDefinitionRequest < Struct.new(
      :client_token,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteLoggingConfiguration` operation.
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace containing the logging configuration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteLoggingConfigurationRequest AWS API Documentation
    #
    class DeleteLoggingConfigurationRequest < Struct.new(
      :client_token,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace to delete.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace containing the rule groups namespace and
    #   definition to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteRuleGroupsNamespaceRequest AWS API Documentation
    #
    class DeleteRuleGroupsNamespaceRequest < Struct.new(
      :client_token,
      :name,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteScraper` operation.
    #
    # @!attribute [rw] client_token
    #   (Optional) A unique, case-sensitive identifier that you can provide
    #   to ensure the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] scraper_id
    #   The ID of the scraper to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteScraperRequest AWS API Documentation
    #
    class DeleteScraperRequest < Struct.new(
      :client_token,
      :scraper_id)
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
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DeleteWorkspaceRequest AWS API Documentation
    #
    class DeleteWorkspaceRequest < Struct.new(
      :client_token,
      :workspace_id)
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

    # Represents the input of a `DescribeRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace that you want information for.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace containing the rule groups namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeRuleGroupsNamespaceRequest AWS API Documentation
    #
    class DescribeRuleGroupsNamespaceRequest < Struct.new(
      :name,
      :workspace_id)
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

    # Represents the input of a `ListRuleGroupsNamespaces` operation.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return. The default is 100.
    #   @return [Integer]
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
    # @!attribute [rw] workspace_id
    #   The ID of the workspace containing the rule groups namespaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListRuleGroupsNamespacesRequest AWS API Documentation
    #
    class ListRuleGroupsNamespacesRequest < Struct.new(
      :max_results,
      :name,
      :next_token,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListRuleGroupsNamespaces` operation.
    #
    # @!attribute [rw] next_token
    #   A token indicating that there are more results to retrieve. You can
    #   use this token as part of your next `ListRuleGroupsNamespaces`
    #   request to retrieve those results.
    #   @return [String]
    #
    # @!attribute [rw] rule_groups_namespaces
    #   The returned list of rule groups namespaces.
    #   @return [Array<Types::RuleGroupsNamespaceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListRuleGroupsNamespacesResponse AWS API Documentation
    #
    class ListRuleGroupsNamespacesResponse < Struct.new(
      :next_token,
      :rule_groups_namespaces)
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
    # @!attribute [rw] max_results
    #   Optional) The maximum number of scrapers to return in one
    #   `ListScrapers` operation. The range is 1-1000.
    #
    #   If you omit this parameter, the default of 100 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   (Optional) The token for the next set of items to return. (You
    #   received this token from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListScrapersRequest AWS API Documentation
    #
    class ListScrapersRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListScrapers` operation.
    #
    # @!attribute [rw] next_token
    #   A token indicating that there are more results to retrieve. You can
    #   use this token as part of your next `ListScrapers` operation to
    #   retrieve those results.
    #   @return [String]
    #
    # @!attribute [rw] scrapers
    #   A list of `ScraperSummary` structures giving information about
    #   scrapers in the account that match the filters provided.
    #   @return [Array<Types::ScraperSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListScrapersResponse AWS API Documentation
    #
    class ListScrapersResponse < Struct.new(
      :next_token,
      :scrapers)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListWorkspacesRequest AWS API Documentation
    #
    class ListWorkspacesRequest < Struct.new(
      :alias,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `ListWorkspaces` operation.
    #
    # @!attribute [rw] next_token
    #   A token indicating that there are more results to retrieve. You can
    #   use this token as part of your next `ListWorkspaces` request to
    #   retrieve those results.
    #   @return [String]
    #
    # @!attribute [rw] workspaces
    #   An array of `WorkspaceSummary` structures containing information
    #   about the workspaces requested.
    #   @return [Array<Types::WorkspaceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListWorkspacesResponse AWS API Documentation
    #
    class ListWorkspacesResponse < Struct.new(
      :next_token,
      :workspaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the logging configuration for the
    # workspace.
    #
    # @!attribute [rw] created_at
    #   The date and time that the logging configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data
    #   will be published.
    #   @return [String]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the logging configuration was most recently
    #   changed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the logging configuration.
    #   @return [Types::LoggingConfigurationStatus]
    #
    # @!attribute [rw] workspace
    #   The ID of the workspace the logging configuration is for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/LoggingConfigurationMetadata AWS API Documentation
    #
    class LoggingConfigurationMetadata < Struct.new(
      :created_at,
      :log_group_arn,
      :modified_at,
      :status,
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the logging configuration.
    #
    # @!attribute [rw] status_code
    #   The current status of the logging configuration.
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

    # Represents the input of a `PutAlertManagerDefinition` operation.
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update the alert manager definition in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutAlertManagerDefinitionRequest AWS API Documentation
    #
    class PutAlertManagerDefinitionRequest < Struct.new(
      :client_token,
      :data,
      :workspace_id)
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

    # Represents the input of a `PutRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
    # @!attribute [rw] name
    #   The name of the rule groups namespace that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace where you are updating the rule groups
    #   namespace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutRuleGroupsNamespaceRequest AWS API Documentation
    #
    class PutRuleGroupsNamespaceRequest < Struct.new(
      :client_token,
      :data,
      :name,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `PutRuleGroupsNamespace` operation.
    #
    # @!attribute [rw] arn
    #   The ARN of the rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace that was updated.
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
      :arn,
      :name,
      :status,
      :tags)
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

    # To configure roles that allows users to write to an Amazon Managed
    # Service for Prometheus workspace in a different account.
    #
    # @!attribute [rw] source_role_arn
    #   A ARN identifying the source role configuration.
    #   @return [String]
    #
    # @!attribute [rw] target_role_arn
    #   A ARN identifying the target role configuration.
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
    # @!attribute [rw] created_at
    #   The date and time that the rule groups namespace was created.
    #   @return [Time]
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
    # @!attribute [rw] modified_at
    #   The date and time that the rule groups namespace was most recently
    #   changed.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the rule groups namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
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
      :created_at,
      :data,
      :modified_at,
      :name,
      :status,
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
    # @!attribute [rw] created_at
    #   The date and time that the rule groups namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The date and time that the rule groups namespace was most recently
    #   changed.
    #   @return [Time]
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
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the rule
    #   groups namespace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/RuleGroupsNamespaceSummary AWS API Documentation
    #
    class RuleGroupsNamespaceSummary < Struct.new(
      :arn,
      :created_at,
      :modified_at,
      :name,
      :status,
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
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the scraper. For example,
    #   `arn:aws:aps:<region>:123456798012:scraper/s-example1-1234-abcd-5678-ef9012abcd34`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the scraper was created.
    #   @return [Time]
    #
    # @!attribute [rw] destination
    #   The Amazon Managed Service for Prometheus workspace the scraper
    #   sends metrics to.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] last_modified_at
    #   The date and time that the scraper was last modified.
    #   @return [Time]
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
    # @!attribute [rw] role_configuration
    #   To configure roles that allows users to write to an Amazon Managed
    #   Service for Prometheus workspace in a different account.
    #   @return [Types::RoleConfiguration]
    #
    # @!attribute [rw] scrape_configuration
    #   The configuration in use by the scraper.
    #   @return [Types::ScrapeConfiguration]
    #
    # @!attribute [rw] scraper_id
    #   The ID of the scraper. For example,
    #   `s-example1-1234-abcd-5678-ef9012abcd34`.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The Amazon EKS cluster from which the scraper collects metrics.
    #   @return [Types::Source]
    #
    # @!attribute [rw] status
    #   A structure that contains the current status of the scraper.
    #   @return [Types::ScraperStatus]
    #
    # @!attribute [rw] status_reason
    #   If there is a failure, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   (Optional) The list of tag keys and values associated with the
    #   scraper.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ScraperDescription AWS API Documentation
    #
    class ScraperDescription < Struct.new(
      :alias,
      :arn,
      :created_at,
      :destination,
      :last_modified_at,
      :role_arn,
      :role_configuration,
      :scrape_configuration,
      :scraper_id,
      :source,
      :status,
      :status_reason,
      :tags)
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
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the scraper.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the scraper was created.
    #   @return [Time]
    #
    # @!attribute [rw] destination
    #   The Amazon Managed Service for Prometheus workspace the scraper
    #   sends metrics to.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] last_modified_at
    #   The date and time that the scraper was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the scraper to discover and collect metrics on your
    #   behalf.
    #   @return [String]
    #
    # @!attribute [rw] role_configuration
    #   To configure roles that allows users to write to an Amazon Managed
    #   Service for Prometheus workspace in a different account.
    #   @return [Types::RoleConfiguration]
    #
    # @!attribute [rw] scraper_id
    #   The ID of the scraper.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The Amazon EKS cluster from which the scraper collects metrics.
    #   @return [Types::Source]
    #
    # @!attribute [rw] status
    #   A structure that contains the current status of the scraper.
    #   @return [Types::ScraperStatus]
    #
    # @!attribute [rw] status_reason
    #   If there is a failure, the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   (Optional) The list of tag keys and values associated with the
    #   scraper.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ScraperSummary AWS API Documentation
    #
    class ScraperSummary < Struct.new(
      :alias,
      :arn,
      :created_at,
      :destination,
      :last_modified_at,
      :role_arn,
      :role_configuration,
      :scraper_id,
      :source,
      :status,
      :status_reason,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Completing the request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service quotas code of the originating quota.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
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
    # @!attribute [rw] quota_code
    #   Service quotas code for the originating quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   Service quotas code for the originating service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
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
    # @!attribute [rw] client_token
    #   A unique identifier that you can provide to ensure the idempotency
    #   of the request. Case-sensitive.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CloudWatch log group to which the vended log data
    #   will be published.
    #   @return [String]
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update the logging configuration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateLoggingConfigurationRequest AWS API Documentation
    #
    class UpdateLoggingConfigurationRequest < Struct.new(
      :client_token,
      :log_group_arn,
      :workspace_id)
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

    # @!attribute [rw] alias
    #   The new alias of the scraper.
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
    # @!attribute [rw] destination
    #   The new Amazon Managed Service for Prometheus workspace to send
    #   metrics to.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] role_configuration
    #   The scraper role configuration for the workspace.
    #   @return [Types::RoleConfiguration]
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
    # @!attribute [rw] scraper_id
    #   The ID of the scraper to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateScraperRequest AWS API Documentation
    #
    class UpdateScraperRequest < Struct.new(
      :alias,
      :client_token,
      :destination,
      :role_configuration,
      :scrape_configuration,
      :scraper_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated scraper.
    #   @return [String]
    #
    # @!attribute [rw] scraper_id
    #   The ID of the updated scraper.
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
      :arn,
      :scraper_id,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of an `UpdateWorkspaceAlias` operation.
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
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateWorkspaceAliasRequest AWS API Documentation
    #
    class UpdateWorkspaceAliasRequest < Struct.new(
      :alias,
      :client_token,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] field_list
    #   The field that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason the request failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a field passed into a request that resulted in an
    # exception.
    #
    # @!attribute [rw] message
    #   A message describing why the field caused an exception.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field that caused an exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The full details about one Amazon Managed Service for Prometheus
    # workspace in your account.
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
    # @!attribute [rw] created_at
    #   The date and time that the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_arn
    #   (optional) If the workspace was created with a customer managed KMS
    #   key, the ARN for the key used.
    #   @return [String]
    #
    # @!attribute [rw] prometheus_endpoint
    #   The Prometheus endpoint available for this workspace. For example,
    #   `https://aps-workspaces.<region>.amazonaws.com/workspaces/ws-example1-1234-abcd-5678-ef90abcd1234/api/v1/`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the workspace.
    #   @return [Types::WorkspaceStatus]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   workspace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workspace_id
    #   The unique ID for the workspace. For example,
    #   `ws-example1-1234-abcd-5678-ef90abcd1234`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceDescription AWS API Documentation
    #
    class WorkspaceDescription < Struct.new(
      :alias,
      :arn,
      :created_at,
      :kms_key_arn,
      :prometheus_endpoint,
      :status,
      :tags,
      :workspace_id)
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
    # @!attribute [rw] alias
    #   The alias that is assigned to this workspace to help identify it. It
    #   does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_arn
    #   (optional) If the workspace was created with a customer managed KMS
    #   key, the ARN for the key used.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the workspace.
    #   @return [Types::WorkspaceStatus]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that are associated with the
    #   workspace.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workspace_id
    #   The unique ID for the workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceSummary AWS API Documentation
    #
    class WorkspaceSummary < Struct.new(
      :alias,
      :arn,
      :created_at,
      :kms_key_arn,
      :status,
      :tags,
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

