# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PrometheusService
  module Types

    # User does not have sufficient access to perform this action.
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

    # Represents the properties of an alert manager definition.
    #
    # @!attribute [rw] status
    #   The status of alert manager definition.
    #   @return [Types::AlertManagerDefinitionStatus]
    #
    # @!attribute [rw] data
    #   The alert manager definition.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the alert manager definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time when the alert manager definition was modified.
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

    # Represents the status of a definition.
    #
    # @!attribute [rw] status_code
    #   Status code of this definition.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for failure if any.
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

    # Updating or deleting a resource can cause an inconsistent state.
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

    # Represents the input of a CreateAlertManagerDefinition operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace in which to create the alert manager
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The alert manager definition data.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the output of a CreateAlertManagerDefinition operation.
    #
    # @!attribute [rw] status
    #   The status of alert manager definition.
    #   @return [Types::AlertManagerDefinitionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateAlertManagerDefinitionResponse AWS API Documentation
    #
    class CreateAlertManagerDefinitionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a CreateLoggingConfiguration operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to vend logs to.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CW log group to which the vended log data will be
    #   published.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the output of a CreateLoggingConfiguration operation.
    #
    # @!attribute [rw] status
    #   The status of the logging configuration.
    #   @return [Types::LoggingConfigurationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateLoggingConfigurationResponse AWS API Documentation
    #
    class CreateLoggingConfigurationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a CreateRuleGroupsNamespace operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace in which to create the rule group namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The rule groups namespace name.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The namespace data that define the rule groups.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional, user-provided tags for this rule groups namespace.
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

    # Represents the output of a CreateRuleGroupsNamespace operation.
    #
    # @!attribute [rw] name
    #   The rule groups namespace name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of rule groups namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
    #
    # @!attribute [rw] tags
    #   The tags of this rule groups namespace.
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

    # Represents the input of a CreateWorkspace operation.
    #
    # @!attribute [rw] alias
    #   An optional user-assigned alias for this workspace. This alias is
    #   for user reference and does not need to be unique.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Optional, user-provided tags for this workspace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateWorkspaceRequest AWS API Documentation
    #
    class CreateWorkspaceRequest < Struct.new(
      :alias,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a CreateWorkspace operation.
    #
    # @!attribute [rw] workspace_id
    #   The generated ID of the workspace that was just created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the workspace that was just created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the workspace that was just created (usually
    #   CREATING).
    #   @return [Types::WorkspaceStatus]
    #
    # @!attribute [rw] tags
    #   The tags of this workspace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/CreateWorkspaceResponse AWS API Documentation
    #
    class CreateWorkspaceResponse < Struct.new(
      :workspace_id,
      :arn,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a DeleteAlertManagerDefinition operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace in which to delete the alert manager
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the input of a DeleteLoggingConfiguration operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to vend logs to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the input of a DeleteRuleGroupsNamespace operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete rule group definition.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The rule groups namespace name.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the input of a DeleteWorkspace operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the input of a DescribeAlertManagerDefinition operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeAlertManagerDefinitionRequest AWS API Documentation
    #
    class DescribeAlertManagerDefinitionRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a DescribeAlertManagerDefinition operation.
    #
    # @!attribute [rw] alert_manager_definition
    #   The properties of the selected workspace's alert manager
    #   definition.
    #   @return [Types::AlertManagerDefinitionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeAlertManagerDefinitionResponse AWS API Documentation
    #
    class DescribeAlertManagerDefinitionResponse < Struct.new(
      :alert_manager_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a DescribeLoggingConfiguration operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to vend logs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeLoggingConfigurationRequest AWS API Documentation
    #
    class DescribeLoggingConfigurationRequest < Struct.new(
      :workspace_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a DescribeLoggingConfiguration operation.
    #
    # @!attribute [rw] logging_configuration
    #   Metadata object containing information about the logging
    #   configuration of a workspace.
    #   @return [Types::LoggingConfigurationMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeLoggingConfigurationResponse AWS API Documentation
    #
    class DescribeLoggingConfigurationResponse < Struct.new(
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a DescribeRuleGroupsNamespace operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to describe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The rule groups namespace.
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

    # Represents the output of a DescribeRuleGroupsNamespace operation.
    #
    # @!attribute [rw] rule_groups_namespace
    #   The selected rule groups namespace.
    #   @return [Types::RuleGroupsNamespaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeRuleGroupsNamespaceResponse AWS API Documentation
    #
    class DescribeRuleGroupsNamespaceResponse < Struct.new(
      :rule_groups_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a DescribeWorkspace operation.
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

    # Represents the output of a DescribeWorkspace operation.
    #
    # @!attribute [rw] workspace
    #   The properties of the selected workspace.
    #   @return [Types::WorkspaceDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/DescribeWorkspaceResponse AWS API Documentation
    #
    class DescribeWorkspaceResponse < Struct.new(
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error during processing of request.
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

    # Represents the input of a ListRuleGroupsNamespaces operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Optional filter for rule groups namespace name. Only the rule groups
    #   namespace that begin with this value will be returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page in a paginated list. This
    #   token is obtained from the output of the previous
    #   ListRuleGroupsNamespaces request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum results to return in response (default=100, maximum=1000).
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

    # Represents the output of a ListRuleGroupsNamespaces operation.
    #
    # @!attribute [rw] rule_groups_namespaces
    #   The list of the selected rule groups namespaces.
    #   @return [Array<Types::RuleGroupsNamespaceSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to use when requesting the next page in this list.
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

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
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
    #   The list of tags assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a ListWorkspaces operation.
    #
    # @!attribute [rw] next_token
    #   Pagination token to request the next page in a paginated list. This
    #   token is obtained from the output of the previous ListWorkspaces
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   Optional filter for workspace alias. Only the workspaces with
    #   aliases that begin with this value will be returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum results to return in response (default=100, maximum=1000).
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

    # Represents the output of a ListWorkspaces operation.
    #
    # @!attribute [rw] workspaces
    #   The list of existing workspaces, including those undergoing creation
    #   or deletion.
    #   @return [Array<Types::WorkspaceSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to use when requesting the next page in this list.
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

    # Represents the properties of a logging configuration metadata.
    #
    # @!attribute [rw] status
    #   The status of the logging configuration.
    #   @return [Types::LoggingConfigurationStatus]
    #
    # @!attribute [rw] workspace
    #   The workspace where the logging configuration exists.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CW log group to which the vended log data will be
    #   published.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the logging configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time when the logging configuration was modified.
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

    # Represents the status of a logging configuration.
    #
    # @!attribute [rw] status_code
    #   Status code of the logging configuration.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for failure if any.
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

    # Represents the input of a PutAlertManagerDefinition operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace in which to update the alert manager
    #   definition.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The alert manager definition data.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the output of a PutAlertManagerDefinition operation.
    #
    # @!attribute [rw] status
    #   The status of alert manager definition.
    #   @return [Types::AlertManagerDefinitionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/PutAlertManagerDefinitionResponse AWS API Documentation
    #
    class PutAlertManagerDefinitionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a PutRuleGroupsNamespace operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace in which to update the rule group namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The rule groups namespace name.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The namespace data that define the rule groups.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the output of a PutRuleGroupsNamespace operation.
    #
    # @!attribute [rw] name
    #   The rule groups namespace name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of rule groups namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
    #
    # @!attribute [rw] tags
    #   The tags of this rule groups namespace.
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

    # Request references a resource which does not exist.
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

    # Represents a description of the rule groups namespace.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The rule groups namespace name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of rule groups namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
    #
    # @!attribute [rw] data
    #   The rule groups namespace data.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the rule groups namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time when the rule groups namespace was modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags of this rule groups namespace.
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

    # Represents the status of a namespace.
    #
    # @!attribute [rw] status_code
    #   Status code of this namespace.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for failure if any.
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

    # Represents a summary of the rule groups namespace.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this rule groups namespace.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The rule groups namespace name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of rule groups namespace.
    #   @return [Types::RuleGroupsNamespaceStatus]
    #
    # @!attribute [rw] created_at
    #   The time when the rule groups namespace was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The time when the rule groups namespace was modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags of this rule groups namespace.
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

    # Request would cause a service quota to be exceeded.
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
    #   Service Quotas requirement to identify originating service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating quota.
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

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags assigned to the resource.
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

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service Quotas requirement to identify originating service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service Quotas requirement to identify originating quota.
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
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   One or more tag keys
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

    # Represents the input of an UpdateLoggingConfiguration operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace to vend logs to.
    #   @return [String]
    #
    # @!attribute [rw] log_group_arn
    #   The ARN of the CW log group to which the vended log data will be
    #   published.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # Represents the output of an UpdateLoggingConfiguration operation.
    #
    # @!attribute [rw] status
    #   The status of the logging configuration.
    #   @return [Types::LoggingConfigurationStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/UpdateLoggingConfigurationResponse AWS API Documentation
    #
    class UpdateLoggingConfigurationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of an UpdateWorkspaceAlias operation.
    #
    # @!attribute [rw] workspace_id
    #   The ID of the workspace being updated.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The new alias of the workspace.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure
    #   the idempotency of the request.
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

    # The input fails to satisfy the constraints specified by an AWS
    # service.
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
    #   The field that caused the error, if applicable. If more than one
    #   field caused the error, pick one and elaborate in the message.
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

    # Stores information about a field passed inside a request that resulted
    # in an exception.
    #
    # @!attribute [rw] name
    #   The field name.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message describing why the field failed validation.
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

    # Represents the properties of a workspace.
    #
    # @!attribute [rw] workspace_id
    #   Unique string identifying this workspace.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   Alias of this workspace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this workspace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this workspace.
    #   @return [Types::WorkspaceStatus]
    #
    # @!attribute [rw] prometheus_endpoint
    #   Prometheus endpoint URI.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags of this workspace.
    #   @return [Hash<String,String>]
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the status of a workspace.
    #
    # @!attribute [rw] status_code
    #   Status code of this workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceStatus AWS API Documentation
    #
    class WorkspaceStatus < Struct.new(
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a summary of the properties of a workspace.
    #
    # @!attribute [rw] workspace_id
    #   Unique string identifying this workspace.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   Alias of this workspace.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The AmazonResourceName of this workspace.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this workspace.
    #   @return [Types::WorkspaceStatus]
    #
    # @!attribute [rw] created_at
    #   The time when the workspace was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags of this workspace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amp-2020-08-01/WorkspaceSummary AWS API Documentation
    #
    class WorkspaceSummary < Struct.new(
      :workspace_id,
      :alias,
      :arn,
      :status,
      :created_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
