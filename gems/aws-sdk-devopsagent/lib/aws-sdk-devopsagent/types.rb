# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DevOpsAgent
  module Types

    # Configuration for AWS monitor account integration, allowing AIDevOps
    # to monitor AWS resources.
    #
    # @!attribute [rw] assumable_role_arn
    #   Role ARN to be assumed by AIDevOps to operate on behalf of customer.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   AWS Account Id corresponding to provided resources.
    #   @return [String]
    #
    # @!attribute [rw] account_type
    #   Account Type 'monitor' for AIDevOps monitoring.
    #   @return [String]
    #
    # @!attribute [rw] agent_elevated_role_arn
    #   Optional IAM role ARN to be assumed by AIDevOps for elevated
    #   directed actions on behalf of the customer. Used for mutating
    #   operations gated by elevatedActionsEnabled on the AgentSpace. When
    #   not provided, only non-elevated directed actions are available for
    #   this AWS account.
    #   @return [String]
    #
    # @!attribute [rw] agent_elevated_role_arn_status
    #   Validation status of the agentElevatedRoleArn. Updated
    #   asynchronously after the customer registers an elevated role.
    #   Possible values: PENDING\_CONFIRMATION (validation in progress),
    #   VALID (role validated), INVALID (validation failed).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AWSConfiguration AWS API Documentation
    #
    class AWSConfiguration < Struct.new(
      :assumable_role_arn,
      :account_id,
      :account_type,
      :agent_elevated_role_arn,
      :agent_elevated_role_arn_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access to the requested resource is denied due to insufficient
    # permissions.
    #
    # @!attribute [rw] message
    #   Detailed error message describing why access was denied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Union of service-specific details for different service types.
    #
    # @note AdditionalServiceDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AdditionalServiceDetails corresponding to the set member.
    #
    # @!attribute [rw] github
    #   GitHub-specific service details.
    #   @return [Types::RegisteredGithubServiceDetails]
    #
    # @!attribute [rw] slack
    #   Slack-specific service details.
    #   @return [Types::RegisteredSlackServiceDetails]
    #
    # @!attribute [rw] mcpserverdatadog
    #   Datadog MCP server-specific service details.
    #   @return [Types::RegisteredMCPServerDetails]
    #
    # @!attribute [rw] mcpserver
    #   MCP server-specific service details.
    #   @return [Types::RegisteredMCPServerDetails]
    #
    # @!attribute [rw] servicenow
    #   ServiceNow-specific service details.
    #   @return [Types::RegisteredServiceNowDetails]
    #
    # @!attribute [rw] gitlab
    #   GitLab-specific service details.
    #   @return [Types::RegisteredGitLabServiceDetails]
    #
    # @!attribute [rw] mcpserversplunk
    #   Splunk MCP server-specific service details.
    #   @return [Types::RegisteredMCPServerDetails]
    #
    # @!attribute [rw] mcpservernewrelic
    #   New Relic MCP server-specific service details.
    #   @return [Types::RegisteredNewRelicDetails]
    #
    # @!attribute [rw] azuredevops
    #   Azure DevOps specific service details.
    #   @return [Types::RegisteredAzureDevOpsServiceDetails]
    #
    # @!attribute [rw] azureidentity
    #   Azure identity details for services using Azure authentication.
    #   @return [Types::RegisteredAzureIdentityDetails]
    #
    # @!attribute [rw] mcpservergrafana
    #   Grafana MCP server-specific service details.
    #   @return [Types::RegisteredGrafanaServerDetails]
    #
    # @!attribute [rw] pagerduty
    #   Pagerduty service details.
    #   @return [Types::RegisteredPagerDutyDetails]
    #
    # @!attribute [rw] mcpserversigv4
    #   SigV4-authenticated MCP server-specific service details.
    #   @return [Types::RegisteredMCPServerSigV4Details]
    #
    # @!attribute [rw] remoteagent
    #   Remote A2A agent-specific service details (token-based auth).
    #   @return [Types::RegisteredRemoteAgentDetails]
    #
    # @!attribute [rw] remoteagentsigv4
    #   Remote A2A agent-specific service details (SigV4 auth).
    #   @return [Types::RegisteredRemoteAgentSigV4Details]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AdditionalServiceDetails AWS API Documentation
    #
    class AdditionalServiceDetails < Struct.new(
      :github,
      :slack,
      :mcpserverdatadog,
      :mcpserver,
      :servicenow,
      :gitlab,
      :mcpserversplunk,
      :mcpservernewrelic,
      :azuredevops,
      :azureidentity,
      :mcpservergrafana,
      :pagerduty,
      :mcpserversigv4,
      :remoteagent,
      :remoteagentsigv4,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Github < AdditionalServiceDetails; end
      class Slack < AdditionalServiceDetails; end
      class Mcpserverdatadog < AdditionalServiceDetails; end
      class Mcpserver < AdditionalServiceDetails; end
      class Servicenow < AdditionalServiceDetails; end
      class Gitlab < AdditionalServiceDetails; end
      class Mcpserversplunk < AdditionalServiceDetails; end
      class Mcpservernewrelic < AdditionalServiceDetails; end
      class Azuredevops < AdditionalServiceDetails; end
      class Azureidentity < AdditionalServiceDetails; end
      class Mcpservergrafana < AdditionalServiceDetails; end
      class Pagerduty < AdditionalServiceDetails; end
      class Mcpserversigv4 < AdditionalServiceDetails; end
      class Remoteagent < AdditionalServiceDetails; end
      class Remoteagentsigv4 < AdditionalServiceDetails; end
      class Unknown < AdditionalServiceDetails; end
    end

    # Additional steps required to complete service registration.
    #
    # @note AdditionalServiceRegistrationStep is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AdditionalServiceRegistrationStep corresponding to the set member.
    #
    # @!attribute [rw] oauth
    #   OAuth authorization step required.
    #   @return [Types::OAuthAdditionalStepDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AdditionalServiceRegistrationStep AWS API Documentation
    #
    class AdditionalServiceRegistrationStep < Struct.new(
      :oauth,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Oauth < AdditionalServiceRegistrationStep; end
      class Unknown < AdditionalServiceRegistrationStep; end
    end

    # Represents a complete AgentSpace with all its properties, timestamps,
    # encryption settings, and unique identifier.
    #
    # @!attribute [rw] name
    #   The name of the AgentSpace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AgentSpace.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The locale for the AgentSpace, which determines the language used in
    #   agent responses.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) customer managed
    #   key that's used to encrypt resources.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] preferences
    #   The preferences configured on the agent space. Preferences that are
    #   not set take their default values.
    #   @return [Hash<String,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AgentSpace AWS API Documentation
    #
    class AgentSpace < Struct.new(
      :name,
      :description,
      :locale,
      :created_at,
      :updated_at,
      :kms_key_arn,
      :agent_space_id,
      :preferences)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # An approval decision supplied when resuming a paused agent execution.
    # When an agent execution pauses to request approval for an elevated
    # action, SendMessage streams an approval request carrying interrupt
    # identifiers. This structure carries the decision back to the service —
    # which paused tool invocation is being resumed, the opaque interrupt
    # identifier that resumes it, the identifier of the approval request
    # being resolved, optional display text of the control the user chose,
    # and the action taken (APPROVED or REJECTED) — so the service can
    # resume the paused execution. All members are optional on the wire;
    # service-side validation is applied against the populated subset.
    #
    # @!attribute [rw] tool_use_id
    #   Identifier of the specific paused tool invocation that requested
    #   approval. Correlates the approval decision back to the paused
    #   invocation.
    #   @return [String]
    #
    # @!attribute [rw] interrupt_id
    #   An opaque resume identifier issued by the service when an agent
    #   execution pauses for approval. Provide it when resuming so the
    #   service can resume the correct paused execution.
    #   @return [String]
    #
    # @!attribute [rw] approval_id
    #   Identifier of the approval request being resolved.
    #   @return [String]
    #
    # @!attribute [rw] button_text
    #   Optional display text of the UI control the user chose (for example,
    #   "Approve Exact", "Approve Broader", or "Reject"), provided as
    #   auxiliary decision context.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action taken on the approval request — APPROVED or REJECTED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ApprovalAction AWS API Documentation
    #
    class ApprovalAction < Struct.new(
      :tool_use_id,
      :interrupt_id,
      :approval_id,
      :button_text,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tool-invocation pattern primitive used to express both an
    # agent-requested approval and a finalized approval. The primitive is
    # uniform across AWS and third-party tools: a tool identifier plus a map
    # of argument pins that narrow which invocations the pattern matches.
    #
    # @!attribute [rw] tool
    #   Identifier of the tool the pattern applies to (e.g. `use\_aws` for
    #   AWS actions, or a third-party tool name).
    #   @return [String]
    #
    # @!attribute [rw] argument_pins
    #   Argument constraints that narrow which tool invocations the pattern
    #   matches. For AWS tools, the map must include `operation` (the IAM
    #   action, e.g. `ec2:AuthorizeSecurityGroupIngress`) and
    #   `resource\_arn` (the resource ARN or ARN glob); additional
    #   narrowing arguments go in further pin keys. The same `\{tool,
    #   argumentPins}` shape is used uniformly for AWS and third-party
    #   tools, with tool-specific keys for third-party tools. Requests whose
    #   argument pins are collectively too large are rejected with a
    #   ValidationException.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ApprovalPattern AWS API Documentation
    #
    class ApprovalPattern < Struct.new(
      :tool,
      :argument_pins)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an asset in an agent space, including its identifier, type,
    # metadata, version, and timestamps.
    #
    # @!attribute [rw] asset_id
    #   The unique identifier for this asset
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of this asset
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata for this asset
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] version
    #   The version number of this asset
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this asset was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this asset was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Asset AWS API Documentation
    #
    class Asset < Struct.new(
      :asset_id,
      :asset_type,
      :metadata,
      :version,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content for an asset: a single file, a zip bundle, or a source URL to
    # import from
    #
    # @note AssetContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] file
    #   A single file with path and content
    #   @return [Types::AssetFileContent]
    #
    # @!attribute [rw] zip
    #   A zip file containing multiple files
    #   @return [Types::AssetZipContent]
    #
    # @!attribute [rw] source_url
    #   A source URL to import asset content from
    #   @return [Types::AssetSourceUrlContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetContent AWS API Documentation
    #
    class AssetContent < Struct.new(
      :file,
      :zip,
      :source_url,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < AssetContent; end
      class Zip < AssetContent; end
      class SourceUrl < AssetContent; end
      class Unknown < AssetContent; end
    end

    # Represents a single file within an asset, including its path, content,
    # version, and timestamps.
    #
    # @!attribute [rw] path
    #   The path of this file within the asset
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of this file
    #   @return [Types::AssetFileBody]
    #
    # @!attribute [rw] metadata
    #   The metadata for this file
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] version
    #   The asset version this file belongs to
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this file was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this file was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetFile AWS API Documentation
    #
    class AssetFile < Struct.new(
      :path,
      :content,
      :metadata,
      :version,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content of an individual asset file
    #
    # @note AssetFileBody is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AssetFileBody is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AssetFileBody corresponding to the set member.
    #
    # @!attribute [rw] bytes
    #   Binary file content
    #   @return [String]
    #
    # @!attribute [rw] text
    #   Text file content
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetFileBody AWS API Documentation
    #
    class AssetFileBody < Struct.new(
      :bytes,
      :text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Bytes < AssetFileBody; end
      class Text < AssetFileBody; end
      class Unknown < AssetFileBody; end
    end

    # A single file with path and content
    #
    # @!attribute [rw] path
    #   The path of the file within the asset
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The file content
    #   @return [Types::AssetFileBody]
    #
    # @!attribute [rw] metadata
    #   Optional metadata for this file
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetFileContent AWS API Documentation
    #
    class AssetFileContent < Struct.new(
      :path,
      :body,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of a file within an asset, including its path, version, and
    # timestamps.
    #
    # @!attribute [rw] path
    #   The path of this file within the asset
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata for this file
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] version
    #   The asset version this file belongs to
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this file was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this file was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetFileSummary AWS API Documentation
    #
    class AssetFileSummary < Struct.new(
      :path,
      :metadata,
      :version,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content for an asset sourced from an external URL.
    #
    # @!attribute [rw] url
    #   The source URL to import asset content from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetSourceUrlContent AWS API Documentation
    #
    class AssetSourceUrlContent < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an asset type, including its identifier and description.
    #
    # @!attribute [rw] asset_type
    #   The asset type identifier
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the asset type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetTypeSummary AWS API Documentation
    #
    class AssetTypeSummary < Struct.new(
      :asset_type,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for a single version of an asset, including the version
    # number and timestamps.
    #
    # @!attribute [rw] version
    #   The version number of this asset
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this asset version was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this asset version was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetVersionMetadata AWS API Documentation
    #
    class AssetVersionMetadata < Struct.new(
      :version,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A zip file containing asset files
    #
    # @!attribute [rw] zip_file
    #   The zip file bytes
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssetZipContent AWS API Documentation
    #
    class AssetZipContent < Struct.new(
      :zip_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # A block of content in an assistant message.
    #
    # @note AssistantMessageBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AssistantMessageBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   Text content from the assistant.
    #   @return [String]
    #
    # @!attribute [rw] tool_use
    #   Tool use request from the assistant.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssistantMessageBlock AWS API Documentation
    #
    class AssistantMessageBlock < Struct.new(
      :text,
      :tool_use,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < AssistantMessageBlock; end
      class ToolUse < AssistantMessageBlock; end
      class Unknown < AssistantMessageBlock; end
    end

    # Input for creating a new service association within an AgentSpace.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The unique identifier of the service.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration that directs how AgentSpace interacts with the
    #   given service.
    #   @return [Types::ServiceConfiguration]
    #
    # @!attribute [rw] capabilities
    #   Enabled capabilities for this association.
    #   @return [Hash<String,Types::CapabilityConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssociateServiceInput AWS API Documentation
    #
    class AssociateServiceInput < Struct.new(
      :agent_space_id,
      :service_id,
      :configuration,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the newly created association and optional webhook
    # configuration.
    #
    # @!attribute [rw] association
    #   Represents a service association within an AgentSpace, defining how
    #   the agent interacts with external services.
    #   @return [Types::Association]
    #
    # @!attribute [rw] webhook
    #   Generic webhook configuration
    #   @return [Types::GenericWebhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AssociateServiceOutput AWS API Documentation
    #
    class AssociateServiceOutput < Struct.new(
      :association,
      :webhook)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a service association within an AgentSpace, defining how
    # the agent interacts with external services.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Validation status
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The unique identifier of the given association.
    #   @return [String]
    #
    # @!attribute [rw] service_id
    #   The identifier for associated service
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration that directs how AgentSpace interacts with the
    #   given service.
    #   @return [Types::ServiceConfiguration]
    #
    # @!attribute [rw] capabilities
    #   Enabled capabilities for this association.
    #   @return [Hash<String,Types::CapabilityConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Association AWS API Documentation
    #
    class Association < Struct.new(
      :agent_space_id,
      :created_at,
      :updated_at,
      :status,
      :association_id,
      :service_id,
      :configuration,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Azure subscription integration.
    #
    # @!attribute [rw] subscription_id
    #   Azure subscription ID corresponding to provided resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AzureConfiguration AWS API Documentation
    #
    class AzureConfiguration < Struct.new(
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Azure DevOps project integration.
    #
    # @!attribute [rw] organization_name
    #   Azure DevOps organization name.
    #   @return [String]
    #
    # @!attribute [rw] project_id
    #   Azure DevOps project ID.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   Azure DevOps project name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/AzureDevOpsConfiguration AWS API Documentation
    #
    class AzureDevOpsConfiguration < Struct.new(
      :organization_name,
      :project_id,
      :project_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Capability configuration for the AWS DevOps Agent.
    #
    # @!attribute [rw] enabled
    #   Whether the capability is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] trigger_filter_groups
    #   Optional trigger filter groups. Evaluated only when enabled=true;
    #   retained while the capability is disabled, so re-enabling restores
    #   the prior trigger behavior.
    #   @return [Array<Types::TriggerFilterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CapabilityConfiguration AWS API Documentation
    #
    class CapabilityConfiguration < Struct.new(
      :enabled,
      :trigger_filter_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single chat execution summary
    #
    # @!attribute [rw] execution_id
    #   The unique identifier for the execution
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the chat was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the chat was last updated
    #   @return [Time]
    #
    # @!attribute [rw] summary
    #   Summary or title of the chat
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ChatExecution AWS API Documentation
    #
    class ChatExecution < Struct.new(
      :execution_id,
      :created_at,
      :updated_at,
      :summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource.
    #
    # @!attribute [rw] message
    #   Detailed error message describing the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the content size exceeds the allowed
    # limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ContentSizeExceededException AWS API Documentation
    #
    class ContentSizeExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new AgentSpace.
    #
    # @!attribute [rw] name
    #   The name of the AgentSpace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AgentSpace.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The locale for the AgentSpace, which determines the language used in
    #   agent responses.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) customer managed
    #   key that's used to encrypt resources.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client-provided token to ensure request idempotency. When the same
    #   token is provided in subsequent calls, the same response is returned
    #   within a 8-hour window.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to add to the AgentSpace at creation time.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] preferences
    #   The preferences to configure on the agent space. Preferences not
    #   provided take their default values.
    #   @return [Hash<String,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateAgentSpaceInput AWS API Documentation
    #
    class CreateAgentSpaceInput < Struct.new(
      :name,
      :description,
      :locale,
      :kms_key_arn,
      :client_token,
      :tags,
      :preferences)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Output containing the newly created AgentSpace.
    #
    # @!attribute [rw] agent_space
    #   Represents a complete AgentSpace with all its properties,
    #   timestamps, encryption settings, and unique identifier.
    #   @return [Types::AgentSpace]
    #
    # @!attribute [rw] tags
    #   Tags associated with the created AgentSpace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateAgentSpaceOutput AWS API Documentation
    #
    class CreateAgentSpaceOutput < Struct.new(
      :agent_space,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for creating an asset file
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset to create the file in
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the file within the asset
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of the file to create
    #   @return [Types::AssetFileBody]
    #
    # @!attribute [rw] metadata
    #   Optional metadata describing this file
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier used for idempotent asset file
    #   creation
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateAssetFileRequest AWS API Documentation
    #
    class CreateAssetFileRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :path,
      :content,
      :metadata,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for creating an asset file
    #
    # @!attribute [rw] file
    #   The asset file object
    #   @return [Types::AssetFile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateAssetFileResponse AWS API Documentation
    #
    class CreateAssetFileResponse < Struct.new(
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for creating a new asset
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space where the asset will be
    #   created
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   The type of asset to create
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata describing this asset
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] content
    #   The content for the asset. Provide a single file, a zip bundle, or a
    #   sourceUrl to import from an external source.
    #   @return [Types::AssetContent]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier used for idempotent asset
    #   creation
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateAssetRequest AWS API Documentation
    #
    class CreateAssetRequest < Struct.new(
      :agent_space_id,
      :asset_type,
      :metadata,
      :content,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for creating a new asset
    #
    # @!attribute [rw] asset
    #   The asset object
    #   @return [Types::Asset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateAssetResponse AWS API Documentation
    #
    class CreateAssetResponse < Struct.new(
      :asset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for creating a new backlog task
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space where the task will be
    #   created
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   Optional reference information for the task
    #   @return [Types::ReferenceInput]
    #
    # @!attribute [rw] task_type
    #   The type of task being created
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the backlog task
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional detailed description of the task
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority level of the task
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client-provided token for idempotent operations
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateBacklogTaskRequest AWS API Documentation
    #
    class CreateBacklogTaskRequest < Struct.new(
      :agent_space_id,
      :reference,
      :task_type,
      :title,
      :description,
      :priority,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing the created backlog task
    #
    # @!attribute [rw] task
    #   The newly created task object
    #   @return [Types::Task]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateBacklogTaskResponse AWS API Documentation
    #
    class CreateBacklogTaskResponse < Struct.new(
      :task)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for creating a new chat
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space where the chat will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user identifier for the chat. This field is deprecated and will
    #   be ignored — the service resolves user identity from the
    #   authenticated session.
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The authentication type of the user
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateChatRequest AWS API Documentation
    #
    class CreateChatRequest < Struct.new(
      :agent_space_id,
      :user_id,
      :user_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for creating a new chat
    #
    # @!attribute [rw] execution_id
    #   The unique identifier for the created execution
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the chat was created
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateChatResponse AWS API Documentation
    #
    class CreateChatResponse < Struct.new(
      :execution_id,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new Private Connection.
    #
    # @!attribute [rw] name
    #   Unique name for this Private Connection within the account.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   Private Connection mode configuration.
    #   @return [Types::PrivateConnectionMode]
    #
    # @!attribute [rw] tags
    #   Tags to add to the Private Connection at creation time.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreatePrivateConnectionInput AWS API Documentation
    #
    class CreatePrivateConnectionInput < Struct.new(
      :name,
      :mode,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the newly created Private Connection summary.
    #
    # @!attribute [rw] name
    #   The name of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The service-managed Resource Gateway ARN. Only present for
    #   service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   IP address or DNS name of the target resource. Only present for
    #   service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   VPC identifier of the service-managed Resource Gateway. Only present
    #   for service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The Resource Configuration ARN. Only present for self-managed
    #   Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The expiry time of the certificate associated with the Private
    #   Connection. Only present when a certificate is associated.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   DNS resolution mode for the Private Connection's resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Message describing the reason for a failed Private Connection
    #   creation, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the created Private Connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreatePrivateConnectionOutput AWS API Documentation
    #
    class CreatePrivateConnectionOutput < Struct.new(
      :name,
      :type,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :status,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for creating a new Trigger
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space where the Trigger will be
    #   created
    #   @return [String]
    #
    # @!attribute [rw] type
    #   How the new Trigger fires
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition that fires the new Trigger
    #   @return [Types::TriggerCondition]
    #
    # @!attribute [rw] action
    #   The action the new Trigger performs when it fires
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status
    #   The initial status of the Trigger
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier used for idempotent Trigger
    #   creation
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateTriggerRequest AWS API Documentation
    #
    class CreateTriggerRequest < Struct.new(
      :agent_space_id,
      :type,
      :condition,
      :action,
      :status,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for creating a new Trigger
    #
    # @!attribute [rw] trigger
    #   The Trigger object
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/CreateTriggerResponse AWS API Documentation
    #
    class CreateTriggerResponse < Struct.new(
      :trigger)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authorization configuration for Datadog MCP server (uses authorization
    # discovery only).
    #
    # @note DatadogAuthorizationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] authorization_discovery
    #   Datadog MCP server authorization discovery configuration.
    #   @return [Types::MCPServerAuthorizationDiscoveryConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DatadogAuthorizationConfig AWS API Documentation
    #
    class DatadogAuthorizationConfig < Struct.new(
      :authorization_discovery,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AuthorizationDiscovery < DatadogAuthorizationConfig; end
      class Unknown < DatadogAuthorizationConfig; end
    end

    # Complete service details for Datadog MCP server integration.
    #
    # @!attribute [rw] name
    #   MCP server name.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   MCP server endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the MCP server.
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   Datadog MCP server authorization configuration (only authorization
    #   discovery is supported).
    #   @return [Types::DatadogAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DatadogServiceDetails AWS API Documentation
    #
    class DatadogServiceDetails < Struct.new(
      :name,
      :endpoint,
      :description,
      :authorization_config)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Input for deleting an AgentSpace.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteAgentSpaceInput AWS API Documentation
    #
    class DeleteAgentSpaceInput < Struct.new(
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Empty output for successful AgentSpace deletion.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteAgentSpaceOutput AWS API Documentation
    #
    class DeleteAgentSpaceOutput < Aws::EmptyStructure; end

    # Request structure for deleting an asset file
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset containing the file
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the file within the asset to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteAssetFileRequest AWS API Documentation
    #
    class DeleteAssetFileRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for deleting an asset file
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteAssetFileResponse AWS API Documentation
    #
    class DeleteAssetFileResponse < Aws::EmptyStructure; end

    # Request structure for deleting an asset
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteAssetRequest AWS API Documentation
    #
    class DeleteAssetRequest < Struct.new(
      :agent_space_id,
      :asset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for deleting an asset
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteAssetResponse AWS API Documentation
    #
    class DeleteAssetResponse < Aws::EmptyStructure; end

    # Input for deleting an existing Private Connection.
    #
    # @!attribute [rw] name
    #   The name of the Private Connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeletePrivateConnectionInput AWS API Documentation
    #
    class DeletePrivateConnectionInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the status of the Private Connection deletion.
    #
    # @!attribute [rw] name
    #   The name of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Private Connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeletePrivateConnectionOutput AWS API Documentation
    #
    class DeletePrivateConnectionOutput < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for deleting a Trigger
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the Trigger
    #   @return [String]
    #
    # @!attribute [rw] trigger_id
    #   The unique identifier of the Trigger to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteTriggerRequest AWS API Documentation
    #
    class DeleteTriggerRequest < Struct.new(
      :agent_space_id,
      :trigger_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for deleting a Trigger
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeleteTriggerResponse AWS API Documentation
    #
    class DeleteTriggerResponse < Aws::EmptyStructure; end

    # Input for deregistering a service.
    #
    # @!attribute [rw] service_id
    #   The service id to deregister. A service can only be deregistered if
    #   it is not associated with any AgentSpace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeregisterServiceInput AWS API Documentation
    #
    class DeregisterServiceInput < Struct.new(
      :service_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Empty output for successful service deregistration.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DeregisterServiceOutput AWS API Documentation
    #
    class DeregisterServiceOutput < Aws::EmptyStructure; end

    # Input for describing an existing Private Connection.
    #
    # @!attribute [rw] name
    #   The name of the Private Connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DescribePrivateConnectionInput AWS API Documentation
    #
    class DescribePrivateConnectionInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the Private Connection details.
    #
    # @!attribute [rw] name
    #   The name of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The service-managed Resource Gateway ARN. Only present for
    #   service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   IP address or DNS name of the target resource. Only present for
    #   service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   VPC identifier of the service-managed Resource Gateway. Only present
    #   for service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The Resource Configuration ARN. Only present for self-managed
    #   Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The expiry time of the certificate associated with the Private
    #   Connection. Only present when a certificate is associated.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   DNS resolution mode for the Private Connection's resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Message describing the reason for a failed Private Connection, if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the Private Connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DescribePrivateConnectionOutput AWS API Documentation
    #
    class DescribePrivateConnectionOutput < Struct.new(
      :name,
      :type,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :status,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for disabling the Operator App for an AgentSpace.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] auth_flow
    #   The authentication flow configured for the operator App. e.g. idc
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DisableOperatorAppInput AWS API Documentation
    #
    class DisableOperatorAppInput < Struct.new(
      :agent_space_id,
      :auth_flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for removing a service association from an AgentSpace.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The unique identifier of the given association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DisassociateServiceInput AWS API Documentation
    #
    class DisassociateServiceInput < Struct.new(
      :agent_space_id,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Empty output for successful service disassociation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DisassociateServiceOutput AWS API Documentation
    #
    class DisassociateServiceOutput < Aws::EmptyStructure; end

    # Configuration for Dynatrace monitoring integration.
    #
    # @!attribute [rw] env_id
    #   Dynatrace environment id
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   List of Dynatrace resources to monitor
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DynatraceConfiguration AWS API Documentation
    #
    class DynatraceConfiguration < Struct.new(
      :env_id,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # OAuth client credentials configuration for Dynatrace.
    #
    # @!attribute [rw] client_name
    #   User friendly OAuth client name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   OAuth client ID for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] exchange_parameters
    #   OAuth token exchange parameters for authenticating with the service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_secret
    #   OAuth client secret for authenticating with the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DynatraceOAuthClientCredentialsConfig AWS API Documentation
    #
    class DynatraceOAuthClientCredentialsConfig < Struct.new(
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret)
      SENSITIVE = [:client_id, :exchange_parameters, :client_secret]
      include Aws::Structure
    end

    # Authorization configuration options for Dynatrace service.
    #
    # @note DynatraceServiceAuthorizationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] o_auth_client_credentials
    #   OAuth client credentials configuration.
    #   @return [Types::DynatraceOAuthClientCredentialsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DynatraceServiceAuthorizationConfig AWS API Documentation
    #
    class DynatraceServiceAuthorizationConfig < Struct.new(
      :o_auth_client_credentials,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OAuthClientCredentials < DynatraceServiceAuthorizationConfig; end
      class Unknown < DynatraceServiceAuthorizationConfig; end
    end

    # Complete service details for Dynatrace integration.
    #
    # @!attribute [rw] account_urn
    #   Dynatrace resource account urn.
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   Dynatrace OAuth client credentials configuration. Use this when
    #   registering with OAuth client credentials flow.
    #   @return [Types::DynatraceServiceAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/DynatraceServiceDetails AWS API Documentation
    #
    class DynatraceServiceDetails < Struct.new(
      :account_urn,
      :authorization_config)
      SENSITIVE = [:authorization_config]
      include Aws::Structure
    end

    # Input for enabling the Operator App for an AgentSpace.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] auth_flow
    #   The authentication flow configured for the operator App. e.g. iam or
    #   idc
    #   @return [String]
    #
    # @!attribute [rw] operator_app_role_arn
    #   The IAM role end users assume to access AIDevOps APIs
    #   @return [String]
    #
    # @!attribute [rw] idc_instance_arn
    #   The IdC instance Arn used to create an IdC auth application
    #   @return [String]
    #
    # @!attribute [rw] issuer_url
    #   The OIDC issuer URL of the external Identity Provider
    #   @return [String]
    #
    # @!attribute [rw] idp_client_id
    #   The OIDC client ID for the IdP application
    #   @return [String]
    #
    # @!attribute [rw] idp_client_secret
    #   The OIDC client secret for the IdP application
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The Identity Provider name (e.g., Entra, Okta, Google)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/EnableOperatorAppInput AWS API Documentation
    #
    class EnableOperatorAppInput < Struct.new(
      :agent_space_id,
      :auth_flow,
      :operator_app_role_arn,
      :idc_instance_arn,
      :issuer_url,
      :idp_client_id,
      :idp_client_secret,
      :provider)
      SENSITIVE = [:idp_client_secret]
      include Aws::Structure
    end

    # Output containing the enabled Operator App configuration.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] operator_app_url
    #   The URL for operators to access the Operator App
    #   @return [String]
    #
    # @!attribute [rw] iam
    #   Configuration for IAM-based authentication flow for the Operator
    #   App.
    #   @return [Types::IamAuthConfiguration]
    #
    # @!attribute [rw] idc
    #   Configuration for AWS Identity Center (IdC) authentication flow for
    #   the Operator App.
    #   @return [Types::IdcAuthConfiguration]
    #
    # @!attribute [rw] idp
    #   Configuration for external Identity Provider OIDC authentication
    #   flow for the Operator App.
    #   @return [Types::IdpAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/EnableOperatorAppOutput AWS API Documentation
    #
    class EnableOperatorAppOutput < Struct.new(
      :agent_space_id,
      :operator_app_url,
      :iam,
      :idc,
      :idp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Event Channel integration.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/EventChannelConfiguration AWS API Documentation
    #
    class EventChannelConfiguration < Aws::EmptyStructure; end

    # Service details for Event Channel integration.
    #
    # @!attribute [rw] type
    #   The type of event channel
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/EventChannelDetails AWS API Documentation
    #
    class EventChannelDetails < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an execution instance with its lifecycle information
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing this execution
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier for this execution
    #   @return [String]
    #
    # @!attribute [rw] parent_execution_id
    #   The identifier of the parent execution, if this is a child execution
    #   @return [String]
    #
    # @!attribute [rw] agent_sub_task
    #   The specific subtask being executed by the agent
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this execution was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this execution was last updated
    #   @return [Time]
    #
    # @!attribute [rw] execution_status
    #   The current status of this execution
    #   @return [String]
    #
    # @!attribute [rw] agent_type
    #   The type of agent that performed this execution.
    #   @return [String]
    #
    # @!attribute [rw] uid
    #   The unique identifier for the user session associated with this
    #   execution
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Execution AWS API Documentation
    #
    class Execution < Struct.new(
      :agent_space_id,
      :execution_id,
      :parent_execution_id,
      :agent_sub_task,
      :created_at,
      :updated_at,
      :execution_status,
      :agent_type,
      :uid)
      SENSITIVE = []
      include Aws::Structure
    end

    # Generic webhook configuration for services that support webhook
    # notifications.
    #
    # @!attribute [rw] webhook_url
    #   The webhook URL endpoint
    #   @return [String]
    #
    # @!attribute [rw] webhook_id
    #   The unique webhook identifier
    #   @return [String]
    #
    # @!attribute [rw] webhook_type
    #   The webhook authentication type
    #   @return [String]
    #
    # @!attribute [rw] webhook_secret
    #   The webhook secret for authentication
    #   @return [String]
    #
    # @!attribute [rw] api_key
    #   API Key for API Key webhook authentication
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GenericWebhook AWS API Documentation
    #
    class GenericWebhook < Struct.new(
      :webhook_url,
      :webhook_id,
      :webhook_type,
      :webhook_secret,
      :api_key)
      SENSITIVE = [:webhook_secret, :api_key]
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAccountUsageInput AWS API Documentation
    #
    class GetAccountUsageInput < Aws::EmptyStructure; end

    # @!attribute [rw] monthly_account_investigation_hours
    #   Monthly investigation hours usage and limit for an account
    #   @return [Types::UsageMetric]
    #
    # @!attribute [rw] monthly_account_evaluation_hours
    #   Monthly evaluation hours usage and limit for an account
    #   @return [Types::UsageMetric]
    #
    # @!attribute [rw] monthly_account_system_learning_hours
    #   Monthly system learning hours usage and limit for an account
    #   @return [Types::UsageMetric]
    #
    # @!attribute [rw] monthly_account_on_demand_hours
    #   Monthly on-demand hours usage and limit for an account
    #   @return [Types::UsageMetric]
    #
    # @!attribute [rw] usage_period_start_time
    #   The start time of the usage tracking period
    #   @return [Time]
    #
    # @!attribute [rw] usage_period_end_time
    #   The end time of the usage tracking period
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAccountUsageOutput AWS API Documentation
    #
    class GetAccountUsageOutput < Struct.new(
      :monthly_account_investigation_hours,
      :monthly_account_evaluation_hours,
      :monthly_account_system_learning_hours,
      :monthly_account_on_demand_hours,
      :usage_period_start_time,
      :usage_period_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving a specific AgentSpace by ID.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAgentSpaceInput AWS API Documentation
    #
    class GetAgentSpaceInput < Struct.new(
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the requested AgentSpace details.
    #
    # @!attribute [rw] agent_space
    #   Represents a complete AgentSpace with all its properties,
    #   timestamps, encryption settings, and unique identifier.
    #   @return [Types::AgentSpace]
    #
    # @!attribute [rw] tags
    #   Tags associated with the AgentSpace.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAgentSpaceOutput AWS API Documentation
    #
    class GetAgentSpaceOutput < Struct.new(
      :agent_space,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for getting an asset's content as a zip bundle
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_version
    #   The specific asset version to export. If omitted, the latest version
    #   is returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssetContentRequest AWS API Documentation
    #
    class GetAssetContentRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :asset_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for getting an asset's content as a zip bundle
    #
    # @!attribute [rw] content
    #   The asset content as a zip file
    #   @return [Types::AssetZipContent]
    #
    # @!attribute [rw] version
    #   The asset version this content belongs to
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssetContentResponse AWS API Documentation
    #
    class GetAssetContentResponse < Struct.new(
      :content,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for getting an asset file
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset containing the file
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the file within the asset to retrieve
    #   @return [String]
    #
    # @!attribute [rw] asset_version
    #   The specific asset version to retrieve the file from. If omitted,
    #   the latest version is returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssetFileRequest AWS API Documentation
    #
    class GetAssetFileRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :path,
      :asset_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for getting an asset file
    #
    # @!attribute [rw] file
    #   The asset file object
    #   @return [Types::AssetFile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssetFileResponse AWS API Documentation
    #
    class GetAssetFileResponse < Struct.new(
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for getting an asset
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset to retrieve
    #   @return [String]
    #
    # @!attribute [rw] asset_version
    #   The specific version of the asset to retrieve. If omitted, the
    #   latest version is returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssetRequest AWS API Documentation
    #
    class GetAssetRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :asset_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for getting an asset
    #
    # @!attribute [rw] asset
    #   The asset object
    #   @return [Types::Asset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssetResponse AWS API Documentation
    #
    class GetAssetResponse < Struct.new(
      :asset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving a specific service association.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The unique identifier of the given association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssociationInput AWS API Documentation
    #
    class GetAssociationInput < Struct.new(
      :agent_space_id,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the requested association details.
    #
    # @!attribute [rw] association
    #   Represents a service association within an AgentSpace, defining how
    #   the agent interacts with external services.
    #   @return [Types::Association]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetAssociationOutput AWS API Documentation
    #
    class GetAssociationOutput < Struct.new(
      :association)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for retrieving a specific backlog task
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the task
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task to retrieve
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetBacklogTaskRequest AWS API Documentation
    #
    class GetBacklogTaskRequest < Struct.new(
      :agent_space_id,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing the requested backlog task
    #
    # @!attribute [rw] task
    #   The requested task object
    #   @return [Types::Task]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetBacklogTaskResponse AWS API Documentation
    #
    class GetBacklogTaskResponse < Struct.new(
      :task)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving Operator App configuration.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetOperatorAppInput AWS API Documentation
    #
    class GetOperatorAppInput < Struct.new(
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the Operator App configuration including
    # authentication details.
    #
    # @!attribute [rw] operator_app_url
    #   The URL for operators to access the Operator App
    #   @return [String]
    #
    # @!attribute [rw] iam
    #   Configuration for IAM-based authentication flow for the Operator
    #   App.
    #   @return [Types::IamAuthConfiguration]
    #
    # @!attribute [rw] idc
    #   Configuration for AWS Identity Center (IdC) authentication flow for
    #   the Operator App.
    #   @return [Types::IdcAuthConfiguration]
    #
    # @!attribute [rw] idp
    #   Configuration for external Identity Provider OIDC authentication
    #   flow for the Operator App.
    #   @return [Types::IdpAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetOperatorAppOutput AWS API Documentation
    #
    class GetOperatorAppOutput < Struct.new(
      :operator_app_url,
      :iam,
      :idc,
      :idp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for retrieving a specific recommendation
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the
    #   recommendation
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The unique identifier for the recommendation to retrieve
    #   @return [String]
    #
    # @!attribute [rw] recommendation_version
    #   Specific version of the recommendation to retrieve. If not
    #   specified, returns the latest version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetRecommendationRequest AWS API Documentation
    #
    class GetRecommendationRequest < Struct.new(
      :agent_space_id,
      :recommendation_id,
      :recommendation_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing the requested recommendation
    #
    # @!attribute [rw] recommendation
    #   The requested recommendation
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetRecommendationResponse AWS API Documentation
    #
    class GetRecommendationResponse < Struct.new(
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving a specific service association.
    #
    # @!attribute [rw] service_id
    #   The unique identifier of the given service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetServiceInput AWS API Documentation
    #
    class GetServiceInput < Struct.new(
      :service_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the requested service details.
    #
    # @!attribute [rw] service
    #   Represents a registered service with its configuration and
    #   accessible resources.
    #   @return [Types::RegisteredService]
    #
    # @!attribute [rw] tags
    #   Tags associated with the Service.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetServiceOutput AWS API Documentation
    #
    class GetServiceOutput < Struct.new(
      :service,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for getting a Trigger
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the Trigger
    #   @return [String]
    #
    # @!attribute [rw] trigger_id
    #   The unique identifier of the Trigger to retrieve
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetTriggerRequest AWS API Documentation
    #
    class GetTriggerRequest < Struct.new(
      :agent_space_id,
      :trigger_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for getting a Trigger
    #
    # @!attribute [rw] trigger
    #   The Trigger object
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GetTriggerResponse AWS API Documentation
    #
    class GetTriggerResponse < Struct.new(
      :trigger)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for GitHub repository integration.
    #
    # @!attribute [rw] repo_name
    #   Associated Github repo name
    #   @return [String]
    #
    # @!attribute [rw] repo_id
    #   Associated Github repo ID
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The GitHub repository owner name.
    #   @return [String]
    #
    # @!attribute [rw] owner_type
    #   Type of GitHub repository owner.
    #   @return [String]
    #
    # @!attribute [rw] instance_identifier
    #   GitHub instance identifier (e.g., github.com or
    #   github.enterprise.com)
    #   @return [String]
    #
    # @!attribute [rw] runtime_role_arn
    #   Optional role ARN that AIDevOps assumes at runtime for automatic
    #   verification testing and VPC connectivity on this association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GitHubConfiguration AWS API Documentation
    #
    class GitHubConfiguration < Struct.new(
      :repo_name,
      :repo_id,
      :owner,
      :owner_type,
      :instance_identifier,
      :runtime_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for GitLab project integration.
    #
    # @!attribute [rw] project_id
    #   GitLab numeric project ID.
    #   @return [String]
    #
    # @!attribute [rw] project_path
    #   Full GitLab project path (e.g., namespace/project-name).
    #   @return [String]
    #
    # @!attribute [rw] instance_identifier
    #   GitLab instance identifier (e.g., gitlab.com or
    #   e2e.gamma.dev.us-east-1.gitlab.falco.ai.aws.dev)
    #   @return [String]
    #
    # @!attribute [rw] runtime_role_arn
    #   Optional role ARN that AIDevOps assumes at runtime for automatic
    #   verification testing and VPC connectivity on this association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GitLabConfiguration AWS API Documentation
    #
    class GitLabConfiguration < Struct.new(
      :project_id,
      :project_path,
      :instance_identifier,
      :runtime_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Service details for GitLab integration.
    #
    # @!attribute [rw] target_url
    #   GitLab instance URL (e.g., https://gitlab.com or self-hosted
    #   instance).
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   Type of GitLab access token
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   GitLab access token value
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   Optional GitLab group ID for group-level access tokens
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GitLabDetails AWS API Documentation
    #
    class GitLabDetails < Struct.new(
      :target_url,
      :token_type,
      :token_value,
      :group_id)
      SENSITIVE = [:token_value]
      include Aws::Structure
    end

    # Represents a goal with all its properties and metadata
    #
    # @!attribute [rw] agent_space_arn
    #   The unique identifier for the agent space containing this goal
    #   @return [String]
    #
    # @!attribute [rw] goal_id
    #   The unique identifier for this goal
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the goal
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Content of the goal
    #   @return [Types::GoalContent]
    #
    # @!attribute [rw] status
    #   Current status of the goal itself
    #   @return [String]
    #
    # @!attribute [rw] goal_type
    #   Type of goal based on its origin
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this goal was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this goal was last updated
    #   @return [Time]
    #
    # @!attribute [rw] last_evaluated_at
    #   Timestamp when the goal was last evaluated
    #   @return [Time]
    #
    # @!attribute [rw] last_task_id
    #   ID of the most recent task associated with this goal
    #   @return [String]
    #
    # @!attribute [rw] last_successful_task_id
    #   ID of the most recent successful task associated with this goal
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version number for optimistic locking
    #   @return [Integer]
    #
    # @!attribute [rw] evaluation_schedule
    #   Goal Schedule. Allows to schedule the goal to run periodically, as
    #   well as disable a goal temporarily
    #   @return [Types::GoalSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Goal AWS API Documentation
    #
    class Goal < Struct.new(
      :agent_space_arn,
      :goal_id,
      :title,
      :content,
      :status,
      :goal_type,
      :created_at,
      :updated_at,
      :last_evaluated_at,
      :last_task_id,
      :last_successful_task_id,
      :version,
      :evaluation_schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content of a goal
    #
    # @!attribute [rw] description
    #   A detailed description of the goal.
    #   @return [String]
    #
    # @!attribute [rw] objectives
    #   The objectives to be achieved for this goal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GoalContent AWS API Documentation
    #
    class GoalContent < Struct.new(
      :description,
      :objectives)
      SENSITIVE = []
      include Aws::Structure
    end

    # Schedule configuration for goal evaluations
    #
    # @!attribute [rw] state
    #   Whether the schedule is enabled or disabled
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   Schedule expression (e.g., 'rate(7 days)')
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GoalSchedule AWS API Documentation
    #
    class GoalSchedule < Struct.new(
      :state,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Schedule configuration for updating goal evaluations
    #
    # @!attribute [rw] state
    #   Whether the schedule is enabled or disabled
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GoalScheduleInput AWS API Documentation
    #
    class GoalScheduleInput < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complete service details for Grafana MCP server integration.
    #
    # @!attribute [rw] name
    #   MCP server name.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   MCP server endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the MCP server.
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   Grafana MCP server authorization configuration (experimental).
    #   @return [Types::MCPServerAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/GrafanaServiceDetails AWS API Documentation
    #
    class GrafanaServiceDetails < Struct.new(
      :name,
      :endpoint,
      :description,
      :authorization_config)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Configuration for IAM-based authentication flow for the Operator App.
    #
    # @!attribute [rw] operator_app_role_arn
    #   The IAM role end users assume to access AIDevOps APIs
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Operator App IAM auth flow was enabled.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the Operator App IAM auth flow was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/IamAuthConfiguration AWS API Documentation
    #
    class IamAuthConfiguration < Struct.new(
      :operator_app_role_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for AWS Identity Center (IdC) authentication flow for
    # the Operator App.
    #
    # @!attribute [rw] operator_app_role_arn
    #   The IAM role end users assume to access AIDevOps APIs
    #   @return [String]
    #
    # @!attribute [rw] idc_instance_arn
    #   The IdC instance Arn used to create an IdC auth application
    #   @return [String]
    #
    # @!attribute [rw] idc_application_arn
    #   The IdC application Arn created for IdC auth
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Operator App IdC auth flow was enabled.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the Operator App IdC auth flow was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/IdcAuthConfiguration AWS API Documentation
    #
    class IdcAuthConfiguration < Struct.new(
      :operator_app_role_arn,
      :idc_instance_arn,
      :idc_application_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Calls to the customer Identity Center have failed
    #
    # @!attribute [rw] message
    #   Detailed error message describing why the call fails
    #   @return [String]
    #
    # @!attribute [rw] underlying_error_code
    #   The Idc error code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/IdentityCenterServiceException AWS API Documentation
    #
    class IdentityCenterServiceException < Struct.new(
      :message,
      :underlying_error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for external Identity Provider OIDC authentication flow
    # for the Operator App.
    #
    # @!attribute [rw] issuer_url
    #   The OIDC issuer URL of the external Identity Provider
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The OIDC client ID for the IdP application
    #   @return [String]
    #
    # @!attribute [rw] operator_app_role_arn
    #   The IAM role end users assume to access AIDevOps APIs
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The Identity Provider name (e.g., Entra, Okta, Google)
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Operator App IdP auth flow was enabled.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the Operator App IdP auth flow was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/IdpAuthConfiguration AWS API Documentation
    #
    class IdpAuthConfiguration < Struct.new(
      :issuer_url,
      :client_id,
      :operator_app_role_arn,
      :provider,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when an unexpected error occurs in the
    # processing of a request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters provided in the request are invalid.
    #
    # @!attribute [rw] message
    #   Detailed error message describing which parameter is invalid and
    #   why.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a journal record containing execution details and content
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing this record
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution ID associated with this journal record
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The unique identifier for this journal record
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of this journal record
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this journal record was created
    #   @return [Time]
    #
    # @!attribute [rw] record_type
    #   The type of this journal record
    #   @return [String]
    #
    # @!attribute [rw] user_reference
    #   Reference to the user associated with this journal record
    #   @return [Types::UserReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/JournalRecord AWS API Documentation
    #
    class JournalRecord < Struct.new(
      :agent_space_id,
      :execution_id,
      :record_id,
      :content,
      :created_at,
      :record_type,
      :user_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing AgentSpaces with pagination support.
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAgentSpacesInput AWS API Documentation
    #
    class ListAgentSpacesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing a list of AgentSpaces and pagination token.
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of results, if there are more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] agent_spaces
    #   The list of AgentSpaces.
    #   @return [Array<Types::AgentSpace>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAgentSpacesOutput AWS API Documentation
    #
    class ListAgentSpacesOutput < Struct.new(
      :next_token,
      :agent_spaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing asset files
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset whose files to list
    #   @return [String]
    #
    # @!attribute [rw] asset_version
    #   The specific asset version to list files from. If omitted, files
    #   from the latest version are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response to retrieve the next page
    #   of results
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single response
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssetFilesRequest AWS API Documentation
    #
    class ListAssetFilesRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :asset_version,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing asset files
    #
    # @!attribute [rw] items
    #   The list of asset file summaries
    #   @return [Array<Types::AssetFileSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssetFilesResponse AWS API Documentation
    #
    class ListAssetFilesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing asset types
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response to retrieve the next page
    #   of results
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single response
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssetTypesRequest AWS API Documentation
    #
    class ListAssetTypesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing asset types
    #
    # @!attribute [rw] items
    #   The list of supported asset types
    #   @return [Array<Types::AssetTypeSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssetTypesResponse AWS API Documentation
    #
    class ListAssetTypesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing asset versions
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset whose versions to list
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single response
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response to retrieve the next page
    #   of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssetVersionsRequest AWS API Documentation
    #
    class ListAssetVersionsRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing asset versions
    #
    # @!attribute [rw] items
    #   The list of version metadata for the asset
    #   @return [Array<Types::AssetVersionMetadata>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssetVersionsResponse AWS API Documentation
    #
    class ListAssetVersionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing assets
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space to list assets from
    #   @return [String]
    #
    # @!attribute [rw] asset_type
    #   Filter results to only assets of this type
    #   @return [String]
    #
    # @!attribute [rw] updated_after
    #   Filter results to only assets updated after this timestamp
    #   @return [Time]
    #
    # @!attribute [rw] updated_before
    #   Filter results to only assets updated before this timestamp
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response to retrieve the next page
    #   of results
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single response
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssetsRequest AWS API Documentation
    #
    class ListAssetsRequest < Struct.new(
      :agent_space_id,
      :asset_type,
      :updated_after,
      :updated_before,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing assets
    #
    # @!attribute [rw] items
    #   The list of assets for the agent space
    #   @return [Array<Types::Asset>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssetsResponse AWS API Documentation
    #
    class ListAssetsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing service associations within an AgentSpace.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter_service_types
    #   A comma-separated list of service types to filter list associations
    #   output
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssociationsInput AWS API Documentation
    #
    class ListAssociationsInput < Struct.new(
      :agent_space_id,
      :max_results,
      :next_token,
      :filter_service_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing a list of service associations and pagination token.
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of results, if there are more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] associations
    #   The list of associations.
    #   @return [Array<Types::Association>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListAssociationsOutput AWS API Documentation
    #
    class ListAssociationsOutput < Struct.new(
      :next_token,
      :associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing backlog tasks with filtering, sorting,
    # and pagination support
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the tasks
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filter criteria to apply when listing tasks Filtering restrictions:
    #   - Each filter field list is limited to a single value - Filtering by
    #   Priority and Status at the same time when not filtering by Type is
    #   not permitted - Timestamp filters (createdAfter, createdBefore) can
    #   be combined with other filters when not sorting by priority
    #   @return [Types::TaskFilter]
    #
    # @!attribute [rw] limit
    #   Maximum number of tasks to return in a single response (1-1000,
    #   default: 100)
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results
    #   @return [String]
    #
    # @!attribute [rw] sort_field
    #   Field to sort by Sorting restrictions: - Only sorting on createdAt
    #   is supported when using priority or status filters alone. - Sorting
    #   by priority is not supported when using Timestamp filters
    #   (createdAfter, createdBefore)
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Sort order for the tasks based on sortField (default: DESC)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListBacklogTasksRequest AWS API Documentation
    #
    class ListBacklogTasksRequest < Struct.new(
      :agent_space_id,
      :filter,
      :limit,
      :next_token,
      :sort_field,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing a list of backlog tasks
    #
    # @!attribute [rw] tasks
    #   List of backlog tasks
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results, if more results are
    #   available
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListBacklogTasksResponse AWS API Documentation
    #
    class ListBacklogTasksResponse < Struct.new(
      :tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing chats
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space to list chats from.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user identifier to list chats for. This field is deprecated and
    #   will be ignored — the service resolves user identity from the
    #   authenticated session.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListChatsRequest AWS API Documentation
    #
    class ListChatsRequest < Struct.new(
      :agent_space_id,
      :user_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing chats
    #
    # @!attribute [rw] executions
    #   List of recent chat executions
    #   @return [Array<Types::ChatExecution>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListChatsResponse AWS API Documentation
    #
    class ListChatsResponse < Struct.new(
      :executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing executions
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task whose executions to retrieve
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of executions to return
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListExecutionsRequest AWS API Documentation
    #
    class ListExecutionsRequest < Struct.new(
      :agent_space_id,
      :task_id,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing executions
    #
    # @!attribute [rw] executions
    #   List of executions
    #   @return [Array<Types::Execution>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results, if available
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListExecutionsResponse AWS API Documentation
    #
    class ListExecutionsResponse < Struct.new(
      :executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing goals
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter goals by goal status
    #   @return [String]
    #
    # @!attribute [rw] goal_type
    #   Filter goals by goal type
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of goals to return
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListGoalsRequest AWS API Documentation
    #
    class ListGoalsRequest < Struct.new(
      :agent_space_id,
      :status,
      :goal_type,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing the list of goals
    #
    # @!attribute [rw] goals
    #   List of goals matching the criteria
    #   @return [Array<Types::Goal>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListGoalsResponse AWS API Documentation
    #
    class ListGoalsResponse < Struct.new(
      :goals,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing journal records with filtering and
    # pagination support
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the execution
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier of the execution whose journal records to
    #   retrieve
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of records to return in a single response (1-100,
    #   default: 100)
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   Filter records by type (empty string returns all types)
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Sort order for the records based on timestamp (default: DESC)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListJournalRecordsRequest AWS API Documentation
    #
    class ListJournalRecordsRequest < Struct.new(
      :agent_space_id,
      :execution_id,
      :limit,
      :next_token,
      :record_type,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing a list of journal records
    #
    # @!attribute [rw] records
    #   List of journal records matching the request criteria
    #   @return [Array<Types::JournalRecord>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results, if more results are
    #   available
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListJournalRecordsResponse AWS API Documentation
    #
    class ListJournalRecordsResponse < Struct.new(
      :records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing pending messages with filtering and
    # pagination support
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier for an agent space (allows alphanumeric characters
    #   and hyphens; 1-64 characters)
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier of the execution whose journal records to
    #   retrieve
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListPendingMessagesRequest AWS API Documentation
    #
    class ListPendingMessagesRequest < Struct.new(
      :agent_space_id,
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing a list of pending messages
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier for an agent space (allows alphanumeric characters
    #   and hyphens; 1-64 characters)
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier for the execution.
    #   @return [String]
    #
    # @!attribute [rw] messages
    #   The list of pending messages for the execution.
    #   @return [Array<Types::PendingMessage>]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the pending messages were created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListPendingMessagesResponse AWS API Documentation
    #
    class ListPendingMessagesResponse < Struct.new(
      :agent_space_id,
      :execution_id,
      :messages,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing Private Connections in the caller's account.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListPrivateConnectionsInput AWS API Documentation
    #
    class ListPrivateConnectionsInput < Aws::EmptyStructure; end

    # Output containing the list of Private Connections.
    #
    # @!attribute [rw] private_connections
    #   The list of Private Connections.
    #   @return [Array<Types::PrivateConnectionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListPrivateConnectionsOutput AWS API Documentation
    #
    class ListPrivateConnectionsOutput < Struct.new(
      :private_connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing recommendations with filtering and
    # pagination support
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the
    #   recommendations
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   Optional task ID to filter recommendations by specific task
    #   @return [String]
    #
    # @!attribute [rw] goal_id
    #   Optional goal ID to filter recommendations by specific goal
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Optional status to filter recommendations by their current status
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Optional priority to filter recommendations by priority level
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Maximum number of recommendations to return in a single response
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListRecommendationsRequest AWS API Documentation
    #
    class ListRecommendationsRequest < Struct.new(
      :agent_space_id,
      :task_id,
      :goal_id,
      :status,
      :priority,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing a list of recommendations
    #
    # @!attribute [rw] recommendations
    #   List of recommendations matching the request criteria
    #   @return [Array<Types::Recommendation>]
    #
    # @!attribute [rw] next_token
    #   Token for retrieving the next page of results, if more results are
    #   available
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListRecommendationsResponse AWS API Documentation
    #
    class ListRecommendationsResponse < Struct.new(
      :recommendations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing registered services with optional filtering by
    # service type.
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] filter_service_type
    #   Optional filter to list only services of a specific type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListServicesInput AWS API Documentation
    #
    class ListServicesInput < Struct.new(
      :max_results,
      :next_token,
      :filter_service_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing a list of registered services and pagination token.
    #
    # @!attribute [rw] next_token
    #   Token to retrieve the next page of results, if there are more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] services
    #   List of registered services.
    #   @return [Array<Types::RegisteredService>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListServicesOutput AWS API Documentation
    #
    class ListServicesOutput < Struct.new(
      :next_token,
      :services)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing Triggers in an agent space
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space whose Triggers should be
    #   listed
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter results to Triggers in this status
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token from a previous response to retrieve the next page
    #   of results
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single response
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListTriggersRequest AWS API Documentation
    #
    class ListTriggersRequest < Struct.new(
      :agent_space_id,
      :status,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing Triggers
    #
    # @!attribute [rw] items
    #   The list of Triggers
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] next_token
    #   Pagination token to retrieve the next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListTriggersResponse AWS API Documentation
    #
    class ListTriggersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing service webhooks within an association.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The unique identifier of the given association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListWebhooksInput AWS API Documentation
    #
    class ListWebhooksInput < Struct.new(
      :agent_space_id,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing a list of service association webhooks.
    #
    # @!attribute [rw] webhooks
    #   The list of association webhooks.
    #   @return [Array<Types::Webhook>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ListWebhooksOutput AWS API Documentation
    #
    class ListWebhooksOutput < Struct.new(
      :webhooks)
      SENSITIVE = []
      include Aws::Structure
    end

    # API key configuration for MCP server.
    #
    # @!attribute [rw] api_key_name
    #   User friendly API key name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] api_key_value
    #   API key value for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] api_key_header
    #   HTTP header name to send the API key in requests to the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerAPIKeyConfig AWS API Documentation
    #
    class MCPServerAPIKeyConfig < Struct.new(
      :api_key_name,
      :api_key_value,
      :api_key_header)
      SENSITIVE = [:api_key_value]
      include Aws::Structure
    end

    # Authorization configuration options for MCP server, supporting OAuth,
    # API key, bearer token, and authorization discovery methods.
    #
    # @note MCPServerAuthorizationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] o_auth_client_credentials
    #   MCP server configuration with OAuth client credentials.
    #   @return [Types::MCPServerOAuthClientCredentialsConfig]
    #
    # @!attribute [rw] o_auth_3_lo
    #   MCP server configuration with OAuth 3LO.
    #   @return [Types::MCPServerOAuth3LOConfig]
    #
    # @!attribute [rw] api_key
    #   MCP server configuration with API key authentication.
    #   @return [Types::MCPServerAPIKeyConfig]
    #
    # @!attribute [rw] bearer_token
    #   MCP server configuration with Bearer token (RFC 6750).
    #   @return [Types::MCPServerBearerTokenConfig]
    #
    # @!attribute [rw] authorization_discovery
    #   MCP server authorization discovery configuration.
    #   @return [Types::MCPServerAuthorizationDiscoveryConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerAuthorizationConfig AWS API Documentation
    #
    class MCPServerAuthorizationConfig < Struct.new(
      :o_auth_client_credentials,
      :o_auth_3_lo,
      :api_key,
      :bearer_token,
      :authorization_discovery,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OAuthClientCredentials < MCPServerAuthorizationConfig; end
      class OAuth3Lo < MCPServerAuthorizationConfig; end
      class ApiKey < MCPServerAuthorizationConfig; end
      class BearerToken < MCPServerAuthorizationConfig; end
      class AuthorizationDiscovery < MCPServerAuthorizationConfig; end
      class Unknown < MCPServerAuthorizationConfig; end
    end

    # Authorization discovery configuration for MCP server.
    #
    # @!attribute [rw] return_to_endpoint
    #   The endpoint to return to after OAuth flow completes (must be AWS
    #   console domain)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerAuthorizationDiscoveryConfig AWS API Documentation
    #
    class MCPServerAuthorizationDiscoveryConfig < Struct.new(
      :return_to_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Bearer token configuration for MCP server (RFC 6750).
    #
    # @!attribute [rw] token_name
    #   User friendly bearer token name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   Bearer token value in alphanumeric for authenticating with the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] authorization_header
    #   HTTP header name to send the bearer token in requests to the
    #   service. Defaults to 'Authorization' per RFC 6750.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerBearerTokenConfig AWS API Documentation
    #
    class MCPServerBearerTokenConfig < Struct.new(
      :token_name,
      :token_value,
      :authorization_header)
      SENSITIVE = [:token_value]
      include Aws::Structure
    end

    # Configuration for Model Context Protocol (MCP) server integration.
    #
    # @!attribute [rw] tools
    #   List of MCP tools can be used with the association.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tool_details
    #   List of MCP tools with their access categorization. When provided,
    #   the tool names must match those in the tools member.
    #   @return [Array<Types::MCPToolDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerConfiguration AWS API Documentation
    #
    class MCPServerConfiguration < Struct.new(
      :tools,
      :tool_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mixin for webhook update support.
    #
    # @!attribute [rw] enabled_elevated_tools
    #   The subset of elevated-access tools enabled for this integration.
    #   @return [Array<Types::MCPToolDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerDatadogConfiguration AWS API Documentation
    #
    class MCPServerDatadogConfiguration < Struct.new(
      :enabled_elevated_tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complete service details for MCP server integration.
    #
    # @!attribute [rw] name
    #   MCP server name.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   MCP server endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the MCP server.
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   MCP server authorization configuration.
    #   @return [Types::MCPServerAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerDetails AWS API Documentation
    #
    class MCPServerDetails < Struct.new(
      :name,
      :endpoint,
      :description,
      :authorization_config)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Configuration for Grafana MCP server integration, used with an
    # AWS-hosted MCP server.
    #
    # @!attribute [rw] endpoint
    #   Grafana instance URL (e.g., https://your-instance.grafana.net)
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The Grafana organization ID that can be used.
    #   @return [String]
    #
    # @!attribute [rw] tools
    #   List of MCP tools that can be used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled_elevated_tools
    #   The subset of elevated-access tools enabled for this integration.
    #   @return [Array<Types::MCPToolDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerGrafanaConfiguration AWS API Documentation
    #
    class MCPServerGrafanaConfiguration < Struct.new(
      :endpoint,
      :organization_id,
      :tools,
      :enabled_elevated_tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mixin for webhook update support.
    #
    # @!attribute [rw] account_id
    #   New Relic Account ID
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   MCP server endpoint URL (e.g., https://mcp.newrelic.com/mcp/)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerNewRelicConfiguration AWS API Documentation
    #
    class MCPServerNewRelicConfiguration < Struct.new(
      :account_id,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # OAuth 3-legged authorization configuration for MCP server.
    #
    # @!attribute [rw] client_name
    #   User friendly OAuth client name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   OAuth client ID for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] exchange_parameters
    #   OAuth token exchange parameters for authenticating with the service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] return_to_endpoint
    #   The endpoint to return to after OAuth flow completes (must be AWS
    #   console domain)
    #   @return [String]
    #
    # @!attribute [rw] authorization_url
    #   OAuth authorization URL for 3LO authentication.
    #   @return [String]
    #
    # @!attribute [rw] exchange_url
    #   OAuth token exchange URL.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   OAuth client secret for authenticating with the service. Required
    #   for confidential clients or when PKCE is not supported. Optional for
    #   public clients using PKCE.
    #   @return [String]
    #
    # @!attribute [rw] support_code_challenge
    #   Whether the service supports PKCE (Proof Key for Code Exchange) for
    #   enhanced security during the OAuth flow.
    #   @return [Boolean]
    #
    # @!attribute [rw] scopes
    #   OAuth scopes for 3LO authentication. The service will always request
    #   scope offline\_access.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerOAuth3LOConfig AWS API Documentation
    #
    class MCPServerOAuth3LOConfig < Struct.new(
      :client_name,
      :client_id,
      :exchange_parameters,
      :return_to_endpoint,
      :authorization_url,
      :exchange_url,
      :client_secret,
      :support_code_challenge,
      :scopes)
      SENSITIVE = [:client_id, :exchange_parameters, :client_secret]
      include Aws::Structure
    end

    # OAuth client credentials configuration for MCP server.
    #
    # @!attribute [rw] client_name
    #   User friendly OAuth client name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   OAuth client ID for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] exchange_parameters
    #   OAuth token exchange parameters for authenticating with the service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_secret
    #   OAuth client secret for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] exchange_url
    #   OAuth token exchange URL.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   OAuth scopes for 3LO authentication. The service will always request
    #   scope offline\_access.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerOAuthClientCredentialsConfig AWS API Documentation
    #
    class MCPServerOAuthClientCredentialsConfig < Struct.new(
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret,
      :exchange_url,
      :scopes)
      SENSITIVE = [:client_id, :exchange_parameters, :client_secret]
      include Aws::Structure
    end

    # Authorization configuration for SigV4-authenticated MCP server.
    #
    # @!attribute [rw] region
    #   AWS region for SigV4 signing. Use '*' for SigV4a multi-region
    #   signing.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   AWS service name for SigV4 signing.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Deprecated — use mcpRoleArn instead. IAM role ARN to assume for
    #   SigV4 signing.
    #   @return [String]
    #
    # @!attribute [rw] mcp_role_arn
    #   IAM role ARN to assume for SigV4 signing. Optional — when omitted,
    #   credentials are resolved at runtime via a monitor account
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] custom_headers
    #   Custom headers for the SigV4 MCP server.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerSigV4AuthorizationConfig AWS API Documentation
    #
    class MCPServerSigV4AuthorizationConfig < Struct.new(
      :region,
      :service,
      :role_arn,
      :mcp_role_arn,
      :custom_headers)
      SENSITIVE = [:custom_headers]
      include Aws::Structure
    end

    # Configuration for SigV4-authenticated MCP server integration.
    #
    # @!attribute [rw] tools
    #   List of MCP tools available for the association.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tool_details
    #   List of MCP tools with their access categorization. When provided,
    #   the tool names must match those in the tools member.
    #   @return [Array<Types::MCPToolDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerSigV4Configuration AWS API Documentation
    #
    class MCPServerSigV4Configuration < Struct.new(
      :tools,
      :tool_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complete service details for SigV4-authenticated MCP server
    # integration.
    #
    # @!attribute [rw] name
    #   MCP server name.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   MCP server endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the MCP server.
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   MCP Server SigV4 authorization configuration.
    #   @return [Types::MCPServerSigV4AuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerSigV4ServiceDetails AWS API Documentation
    #
    class MCPServerSigV4ServiceDetails < Struct.new(
      :name,
      :endpoint,
      :description,
      :authorization_config)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Mixin for webhook update support.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPServerSplunkConfiguration AWS API Documentation
    #
    class MCPServerSplunkConfiguration < Aws::EmptyStructure; end

    # An MCP tool together with its access categorization.
    #
    # @!attribute [rw] name
    #   The name of the MCP tool.
    #   @return [String]
    #
    # @!attribute [rw] tool_classification
    #   The access categorization of the MCP tool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/MCPToolDetail AWS API Documentation
    #
    class MCPToolDetail < Struct.new(
      :name,
      :tool_classification)
      SENSITIVE = []
      include Aws::Structure
    end

    # A message in a conversation, either from the user or the assistant.
    #
    # @note Message is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Message corresponding to the set member.
    #
    # @!attribute [rw] user_message
    #   A message from the user.
    #   @return [Array<Types::UserMessageBlock>]
    #
    # @!attribute [rw] assistant_message
    #   A message from the assistant.
    #   @return [Array<Types::AssistantMessageBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Message AWS API Documentation
    #
    class Message < Struct.new(
      :user_message,
      :assistant_message,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class UserMessage < Message; end
      class AssistantMessage < Message; end
      class Unknown < Message; end
    end

    # API key authentication configuration for New Relic service.
    #
    # @!attribute [rw] api_key
    #   New Relic User API Key
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   New Relic Account ID
    #   @return [String]
    #
    # @!attribute [rw] region
    #   New Relic region (US or EU)
    #   @return [String]
    #
    # @!attribute [rw] application_ids
    #   List of monitored APM application IDs in New Relic
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_guids
    #   List of globally unique IDs for New Relic resources (apps, hosts,
    #   services)
    #   @return [Array<String>]
    #
    # @!attribute [rw] alert_policy_ids
    #   List of alert policy IDs grouping related conditions
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/NewRelicApiKeyConfig AWS API Documentation
    #
    class NewRelicApiKeyConfig < Struct.new(
      :api_key,
      :account_id,
      :region,
      :application_ids,
      :entity_guids,
      :alert_policy_ids)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # Authorization configuration options for New Relic service.
    #
    # @note NewRelicServiceAuthorizationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] api_key
    #   New Relic API Key authentication (apiKey, accountId, region).
    #   @return [Types::NewRelicApiKeyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/NewRelicServiceAuthorizationConfig AWS API Documentation
    #
    class NewRelicServiceAuthorizationConfig < Struct.new(
      :api_key,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ApiKey < NewRelicServiceAuthorizationConfig; end
      class Unknown < NewRelicServiceAuthorizationConfig; end
    end

    # Complete service details for New Relic integration.
    #
    # @!attribute [rw] authorization_config
    #   New Relic MCP server authorization configuration.
    #   @return [Types::NewRelicServiceAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/NewRelicServiceDetails AWS API Documentation
    #
    class NewRelicServiceDetails < Struct.new(
      :authorization_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for completing OAuth authorization step.
    #
    # @!attribute [rw] authorization_url
    #   The URL to redirect the user to for OAuth authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/OAuthAdditionalStepDetails AWS API Documentation
    #
    class OAuthAdditionalStepDetails < Struct.new(
      :authorization_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authorization configuration options for PagerDuty service.
    #
    # @note PagerDutyAuthorizationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] o_auth_client_credentials
    #   OAuth client credentials configuration.
    #   @return [Types::PagerDutyOAuthClientCredentialsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/PagerDutyAuthorizationConfig AWS API Documentation
    #
    class PagerDutyAuthorizationConfig < Struct.new(
      :o_auth_client_credentials,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OAuthClientCredentials < PagerDutyAuthorizationConfig; end
      class Unknown < PagerDutyAuthorizationConfig; end
    end

    # Configuration for Pagerduty integration.
    #
    # @!attribute [rw] services
    #   List of Pagerduty service available for the association.
    #   @return [Array<String>]
    #
    # @!attribute [rw] customer_email
    #   Email to be used in Pagerduty API header
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/PagerDutyConfiguration AWS API Documentation
    #
    class PagerDutyConfiguration < Struct.new(
      :services,
      :customer_email)
      SENSITIVE = [:customer_email]
      include Aws::Structure
    end

    # Complete service details for PagerDuty integration
    #
    # @!attribute [rw] scopes
    #   PagerDuty scopes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authorization_config
    #   PagerDuty authorization configuration
    #   @return [Types::PagerDutyAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/PagerDutyDetails AWS API Documentation
    #
    class PagerDutyDetails < Struct.new(
      :scopes,
      :authorization_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # OAuth client credentials configuration for PagerDuty.
    #
    # @!attribute [rw] client_name
    #   User friendly OAuth client name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   OAuth client ID for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] exchange_parameters
    #   OAuth token exchange parameters for authenticating with the service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_secret
    #   OAuth client secret for authenticating with the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/PagerDutyOAuthClientCredentialsConfig AWS API Documentation
    #
    class PagerDutyOAuthClientCredentialsConfig < Struct.new(
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret)
      SENSITIVE = [:client_id, :exchange_parameters, :client_secret]
      include Aws::Structure
    end

    # A regex-based match condition. Passes when the value matches any
    # pattern.
    #
    # @!attribute [rw] patterns
    #   Anchored full-match regex patterns. The condition passes when the
    #   value matches at least one pattern.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/PatternFilter AWS API Documentation
    #
    class PatternFilter < Struct.new(
      :patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a pending message in an agent execution.
    #
    # @!attribute [rw] message_id
    #   The unique identifier for this pending message.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message content.
    #   @return [Types::Message]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/PendingMessage AWS API Documentation
    #
    class PendingMessage < Struct.new(
      :message_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Private Connection mode — either service-managed or self-managed.
    #
    # @note PrivateConnectionMode is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] service_managed
    #   Service manages the Resource Gateway lifecycle.
    #   @return [Types::ServiceManagedInput]
    #
    # @!attribute [rw] self_managed
    #   Caller manages their own resource configuration.
    #   @return [Types::SelfManagedInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/PrivateConnectionMode AWS API Documentation
    #
    class PrivateConnectionMode < Struct.new(
      :service_managed,
      :self_managed,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ServiceManaged < PrivateConnectionMode; end
      class SelfManaged < PrivateConnectionMode; end
      class Unknown < PrivateConnectionMode; end
    end

    # Summary of a Private Connection.
    #
    # @!attribute [rw] name
    #   The name of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The service-managed Resource Gateway ARN. Only present for
    #   service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   IP address or DNS name of the target resource. Only present for
    #   service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   VPC identifier of the service-managed Resource Gateway. Only present
    #   for service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The Resource Configuration ARN. Only present for self-managed
    #   Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The expiry time of the certificate associated with the Private
    #   Connection. Only present when a certificate is associated.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   DNS resolution mode for the Private Connection's resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Message describing the reason for a failed Private Connection, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/PrivateConnectionSummary AWS API Documentation
    #
    class PrivateConnectionSummary < Struct.new(
      :name,
      :type,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :status,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a recommendation with all its properties and metadata
    #
    # @!attribute [rw] agent_space_arn
    #   ARN of the agent space this recommendation belongs to
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The unique identifier for this recommendation
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   ID of the task that generated the recommendation
    #   @return [String]
    #
    # @!attribute [rw] goal_id
    #   ID of the goal this recommendation is associated with
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the recommendation
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Content of the recommendation
    #   @return [Types::RecommendationContent]
    #
    # @!attribute [rw] status
    #   Current status of the recommendation
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Priority level of the recommendation
    #   @return [String]
    #
    # @!attribute [rw] goal_version
    #   Version of the goal at the time this recommendation was generated
    #   @return [Integer]
    #
    # @!attribute [rw] additional_context
    #   Additional context for recommendation
    #   @return [String]
    #
    # @!attribute [rw] rank_position
    #   Position in ranked list (1 = highest priority)
    #   @return [Integer]
    #
    # @!attribute [rw] ranked_at
    #   Timestamp when the recommendation was last ranked
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this recommendation was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this recommendation was last updated
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   Version number for optimistic locking
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :agent_space_arn,
      :recommendation_id,
      :task_id,
      :goal_id,
      :title,
      :content,
      :status,
      :priority,
      :goal_version,
      :additional_context,
      :rank_position,
      :ranked_at,
      :created_at,
      :updated_at,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content of a recommendation
    #
    # @!attribute [rw] summary
    #   A brief summary of the recommendation.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   Agent-ready specification with detailed implementation steps
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RecommendationContent AWS API Documentation
    #
    class RecommendationContent < Struct.new(
      :summary,
      :spec)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reference information linking a task to external systems - for input
    # with validation
    #
    # @!attribute [rw] system
    #   The name of the external system
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Optional title for the reference
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The unique identifier in the external system
    #   @return [String]
    #
    # @!attribute [rw] reference_url
    #   URL to access the reference in the external system
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   Association identifier of the external system
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ReferenceInput AWS API Documentation
    #
    class ReferenceInput < Struct.new(
      :system,
      :title,
      :reference_id,
      :reference_url,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reference information linking a task to external systems - for output
    # without validation
    #
    # @!attribute [rw] system
    #   The name of the external system
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Optional title for the reference
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The unique identifier in the external system
    #   @return [String]
    #
    # @!attribute [rw] reference_url
    #   URL to access the reference in the external system
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   Association identifier of the external system
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ReferenceOutput AWS API Documentation
    #
    class ReferenceOutput < Struct.new(
      :system,
      :title,
      :reference_id,
      :reference_url,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for registering a new service with the platform.
    #
    # @!attribute [rw] service
    #   Services that can be registered via the post-registration API
    #   (excludes OAuth 3LO services).
    #   @return [String]
    #
    # @!attribute [rw] service_details
    #   Service-specific authorization configuration parameters
    #   @return [Types::ServiceDetails]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) customer managed
    #   key that's used to encrypt resources.
    #   @return [String]
    #
    # @!attribute [rw] private_connection_name
    #   The name of the private connection to use for VPC connectivity.
    #   @return [String]
    #
    # @!attribute [rw] target_url_private_connection_name
    #   The name of the private connection to use for API calls (target URL)
    #   only. Cannot be specified when privateConnectionName is provided.
    #   @return [String]
    #
    # @!attribute [rw] exchange_url_private_connection_name
    #   The name of the private connection to use for OAuth token exchange
    #   requests only. Cannot be specified when privateConnectionName is
    #   provided.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name for the service registration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to add to the Service at registration time.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisterServiceInput AWS API Documentation
    #
    class RegisterServiceInput < Struct.new(
      :service,
      :service_details,
      :kms_key_arn,
      :private_connection_name,
      :target_url_private_connection_name,
      :exchange_url_private_connection_name,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the service ID and any additional steps required for
    # registration.
    #
    # @!attribute [rw] service_id
    #   Service ID - present when registration is complete, absent when
    #   additional steps are required
    #   @return [String]
    #
    # @!attribute [rw] additional_step
    #   Indicates if additional steps are required to complete service
    #   registration (e.g., 3-legged OAuth)
    #   @return [Types::AdditionalServiceRegistrationStep]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) customer managed
    #   key that's used to encrypt resources.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the registered Service.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisterServiceOutput AWS API Documentation
    #
    class RegisterServiceOutput < Struct.new(
      :service_id,
      :additional_step,
      :kms_key_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered Azure DevOps service.
    #
    # @!attribute [rw] organization_name
    #   The Azure DevOps Organization name associated with the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredAzureDevOpsServiceDetails AWS API Documentation
    #
    class RegisteredAzureDevOpsServiceDetails < Struct.new(
      :organization_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered Azure identity using AWS Outbound
    # Identity Federation.
    #
    # @!attribute [rw] tenant_id
    #   The Azure Active Directory tenant ID for the identity.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID of the service principal or managed identity used for
    #   authentication.
    #   @return [String]
    #
    # @!attribute [rw] web_identity_role_arn
    #   The role ARN to be assumed by DevOps Agent for requesting Web
    #   Identity Token.
    #   @return [String]
    #
    # @!attribute [rw] web_identity_token_audiences
    #   The audiences for the Web Identity Token.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredAzureIdentityDetails AWS API Documentation
    #
    class RegisteredAzureIdentityDetails < Struct.new(
      :tenant_id,
      :client_id,
      :web_identity_role_arn,
      :web_identity_token_audiences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered GitLab instance.
    #
    # @!attribute [rw] target_url
    #   The GitLab instance URL.
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   Type of GitLab access token
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   Optional GitLab group ID for group-level access tokens
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredGitLabServiceDetails AWS API Documentation
    #
    class RegisteredGitLabServiceDetails < Struct.new(
      :target_url,
      :token_type,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered GitHub service.
    #
    # @!attribute [rw] owner
    #   The GitHub repository owner name.
    #   @return [String]
    #
    # @!attribute [rw] owner_type
    #   The GitHub repository owner type.
    #   @return [String]
    #
    # @!attribute [rw] target_url
    #   The GitHub Enterprise Server instance URL (absent for github.com).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredGithubServiceDetails AWS API Documentation
    #
    class RegisteredGithubServiceDetails < Struct.new(
      :owner,
      :owner_type,
      :target_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered Grafana server, used by the built-in
    # MCP server.
    #
    # @!attribute [rw] endpoint
    #   Grafana instance URL (e.g., https://your-instance.grafana.net)
    #   @return [String]
    #
    # @!attribute [rw] authorization_method
    #   The authz method used by the MCP server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredGrafanaServerDetails AWS API Documentation
    #
    class RegisteredGrafanaServerDetails < Struct.new(
      :endpoint,
      :authorization_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered MCP (Model Context Protocol) server.
    #
    # @!attribute [rw] name
    #   The MCP server name.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The MCP server endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] authorization_method
    #   The MCP server uses this authorization method.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the MCP server.
    #   @return [String]
    #
    # @!attribute [rw] api_key_header
    #   If the MCP server uses API key authentication, these details are
    #   provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredMCPServerDetails AWS API Documentation
    #
    class RegisteredMCPServerDetails < Struct.new(
      :name,
      :endpoint,
      :authorization_method,
      :description,
      :api_key_header)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Details specific to a registered SigV4-authenticated MCP server.
    #
    # @!attribute [rw] name
    #   MCP server name.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   MCP server endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the MCP server.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   AWS region for SigV4 signing. Use '*' for SigV4a multi-region
    #   signing.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   AWS service name for SigV4 signing.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   IAM role ARN to assume for SigV4 signing.
    #   @return [String]
    #
    # @!attribute [rw] mcp_role_arn
    #   AWS IAM role ARN.
    #   @return [String]
    #
    # @!attribute [rw] custom_headers
    #   Custom headers for the SigV4 MCP server.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredMCPServerSigV4Details AWS API Documentation
    #
    class RegisteredMCPServerSigV4Details < Struct.new(
      :name,
      :endpoint,
      :description,
      :region,
      :service,
      :role_arn,
      :mcp_role_arn,
      :custom_headers)
      SENSITIVE = [:description, :custom_headers]
      include Aws::Structure
    end

    # Details specific to a registered NewRelic instance.
    #
    # @!attribute [rw] account_id
    #   The NewRelic account ID.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The NewRelic region (determines API endpoint).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional user description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredNewRelicDetails AWS API Documentation
    #
    class RegisteredNewRelicDetails < Struct.new(
      :account_id,
      :region,
      :description)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Details specific to a registered PagerDuty service.
    #
    # @!attribute [rw] scopes
    #   The scopes that were assigned to the service
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredPagerDutyDetails AWS API Documentation
    #
    class RegisteredPagerDutyDetails < Struct.new(
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered token-based remote A2A agent.
    #
    # @!attribute [rw] name
    #   Name identifier for a remote A2A agent.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   HTTPS endpoint URL for a remote A2A agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description field
    #   @return [String]
    #
    # @!attribute [rw] authorization_method
    #   The authorization method used by the remote agent.
    #   @return [String]
    #
    # @!attribute [rw] api_key_header
    #   If the remote agent uses API key authentication, the header name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredRemoteAgentDetails AWS API Documentation
    #
    class RegisteredRemoteAgentDetails < Struct.new(
      :name,
      :endpoint,
      :description,
      :authorization_method,
      :api_key_header)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Details specific to a registered SigV4-authenticated remote A2A agent.
    #
    # @!attribute [rw] name
    #   Name identifier for a remote A2A agent.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   HTTPS endpoint URL for a remote A2A agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description field
    #   @return [String]
    #
    # @!attribute [rw] region
    #   AWS region identifier or wildcard (*) for SigV4a multi-region
    #   signing.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The AWS service name for SigV4 signing.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   AWS IAM role ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredRemoteAgentSigV4Details AWS API Documentation
    #
    class RegisteredRemoteAgentSigV4Details < Struct.new(
      :name,
      :endpoint,
      :description,
      :region,
      :service,
      :role_arn)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Represents a registered service with its configuration and accessible
    # resources.
    #
    # @!attribute [rw] service_id
    #   The unique identifier of a service.
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   The service type e.g github or dynatrace
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the registered service.
    #   @return [String]
    #
    # @!attribute [rw] accessible_resources
    #   List of accessible resources for this service.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] additional_service_details
    #   Additional details specific to the service type.
    #   @return [Types::AdditionalServiceDetails]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the AWS Key Management Service (AWS KMS) customer managed
    #   key that's used to encrypt resources.
    #   @return [String]
    #
    # @!attribute [rw] private_connection_name
    #   The name of the private connection used for VPC connectivity.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the service was registered.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the service was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredService AWS API Documentation
    #
    class RegisteredService < Struct.new(
      :service_id,
      :service_type,
      :name,
      :accessible_resources,
      :additional_service_details,
      :kms_key_arn,
      :private_connection_name,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered ServiceNow instance.
    #
    # @!attribute [rw] instance_url
    #   The ServiceNow instance url
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredServiceNowDetails AWS API Documentation
    #
    class RegisteredServiceNowDetails < Struct.new(
      :instance_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details specific to a registered Slack workspace.
    #
    # @!attribute [rw] team_id
    #   The Slack team ID.
    #   @return [String]
    #
    # @!attribute [rw] team_name
    #   The Slack team name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RegisteredSlackServiceDetails AWS API Documentation
    #
    class RegisteredSlackServiceDetails < Struct.new(
      :team_id,
      :team_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # API key configuration for remote A2A agent.
    #
    # @!attribute [rw] api_key_name
    #   User friendly API key name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] api_key_value
    #   API key value for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] api_key_header
    #   HTTP header name to send the API key in requests to the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentAPIKeyConfig AWS API Documentation
    #
    class RemoteAgentAPIKeyConfig < Struct.new(
      :api_key_name,
      :api_key_value,
      :api_key_header)
      SENSITIVE = [:api_key_value]
      include Aws::Structure
    end

    # Authorization configuration for remote A2A agents with token-based
    # auth (API key, OAuth, bearer token).
    #
    # @note RemoteAgentAuthorizationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] api_key
    #   Remote agent configuration with API key authentication.
    #   @return [Types::RemoteAgentAPIKeyConfig]
    #
    # @!attribute [rw] o_auth_client_credentials
    #   Remote agent configuration with OAuth client credentials.
    #   @return [Types::RemoteAgentOAuthClientCredentialsConfig]
    #
    # @!attribute [rw] bearer_token
    #   Remote agent configuration with Bearer token (RFC 6750).
    #   @return [Types::RemoteAgentBearerTokenConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentAuthorizationConfig AWS API Documentation
    #
    class RemoteAgentAuthorizationConfig < Struct.new(
      :api_key,
      :o_auth_client_credentials,
      :bearer_token,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ApiKey < RemoteAgentAuthorizationConfig; end
      class OAuthClientCredentials < RemoteAgentAuthorizationConfig; end
      class BearerToken < RemoteAgentAuthorizationConfig; end
      class Unknown < RemoteAgentAuthorizationConfig; end
    end

    # Bearer token configuration for remote A2A agent (RFC 6750).
    #
    # @!attribute [rw] token_name
    #   User friendly bearer token name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] token_value
    #   Bearer token value in alphanumeric for authenticating with the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] authorization_header
    #   HTTP header name to send the bearer token in requests to the
    #   service. Defaults to 'Authorization' per RFC 6750.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentBearerTokenConfig AWS API Documentation
    #
    class RemoteAgentBearerTokenConfig < Struct.new(
      :token_name,
      :token_value,
      :authorization_header)
      SENSITIVE = [:token_value]
      include Aws::Structure
    end

    # Configuration for token-based remote A2A agent integration.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentConfiguration AWS API Documentation
    #
    class RemoteAgentConfiguration < Aws::EmptyStructure; end

    # OAuth client credentials configuration for remote A2A agent.
    #
    # @!attribute [rw] client_name
    #   User friendly OAuth client name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   OAuth client ID for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] exchange_parameters
    #   OAuth token exchange parameters for authenticating with the service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_secret
    #   OAuth client secret for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] exchange_url
    #   OAuth token exchange URL.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   OAuth scopes for authentication.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentOAuthClientCredentialsConfig AWS API Documentation
    #
    class RemoteAgentOAuthClientCredentialsConfig < Struct.new(
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret,
      :exchange_url,
      :scopes)
      SENSITIVE = [:client_id, :exchange_parameters, :client_secret]
      include Aws::Structure
    end

    # Complete service details for token-based remote A2A agent integration.
    #
    # @!attribute [rw] name
    #   Name identifier for a remote A2A agent.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   HTTPS endpoint URL for a remote A2A agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description field
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   Remote agent authorization configuration.
    #   @return [Types::RemoteAgentAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentServiceDetails AWS API Documentation
    #
    class RemoteAgentServiceDetails < Struct.new(
      :name,
      :endpoint,
      :description,
      :authorization_config)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # SigV4 authorization configuration for remote A2A agent.
    #
    # @!attribute [rw] region
    #   AWS region identifier or wildcard (*) for SigV4a multi-region
    #   signing.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The AWS service name for SigV4 signing.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   AWS IAM role ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentSigV4AuthorizationConfig AWS API Documentation
    #
    class RemoteAgentSigV4AuthorizationConfig < Struct.new(
      :region,
      :service,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for SigV4-authenticated remote A2A agent integration.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentSigV4Configuration AWS API Documentation
    #
    class RemoteAgentSigV4Configuration < Aws::EmptyStructure; end

    # Complete service details for SigV4-authenticated remote A2A agent
    # integration.
    #
    # @!attribute [rw] name
    #   Name identifier for a remote A2A agent.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   HTTPS endpoint URL for a remote A2A agent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description field
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   Remote agent SigV4 authorization configuration.
    #   @return [Types::RemoteAgentSigV4AuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/RemoteAgentSigV4ServiceDetails AWS API Documentation
    #
    class RemoteAgentSigV4ServiceDetails < Struct.new(
      :name,
      :endpoint,
      :description,
      :authorization_config)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The requested resource could not be found.
    #
    # @!attribute [rw] message
    #   Detailed error message describing which resource was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Schedule-based condition that fires the Trigger
    #
    # @!attribute [rw] expression
    #   The schedule expression
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ScheduleCondition AWS API Documentation
    #
    class ScheduleCondition < Struct.new(
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a self-managed Private Connection.
    #
    # @!attribute [rw] resource_configuration_id
    #   The ID or ARN of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   Certificate for the Private Connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SelfManagedInput AWS API Documentation
    #
    class SelfManagedInput < Struct.new(
      :resource_configuration_id,
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Union of possible delta payloads within a content block delta event
    #
    # @note SendMessageContentBlockDelta is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SendMessageContentBlockDelta corresponding to the set member.
    #
    # @!attribute [rw] text_delta
    #   Text delta for text-based content blocks
    #   @return [Types::SendMessageTextDelta]
    #
    # @!attribute [rw] json_delta
    #   JSON delta for structured content blocks
    #   @return [Types::SendMessageJsonDelta]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageContentBlockDelta AWS API Documentation
    #
    class SendMessageContentBlockDelta < Struct.new(
      :text_delta,
      :json_delta,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TextDelta < SendMessageContentBlockDelta; end
      class JsonDelta < SendMessageContentBlockDelta; end
      class Unknown < SendMessageContentBlockDelta; end
    end

    # Event emitted for each incremental content delta within a content
    # block
    #
    # @!attribute [rw] index
    #   Zero-based index of the content block
    #   @return [Integer]
    #
    # @!attribute [rw] delta
    #   The incremental content delta
    #   @return [Types::SendMessageContentBlockDelta]
    #
    # @!attribute [rw] sequence_number
    #   Event sequence number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageContentBlockDeltaEvent AWS API Documentation
    #
    class SendMessageContentBlockDeltaEvent < Struct.new(
      :index,
      :delta,
      :sequence_number,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event emitted when a new content block starts
    #
    # @!attribute [rw] index
    #   Zero-based index of the content block
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of content in this block
    #   @return [String]
    #
    # @!attribute [rw] id
    #   Block identifier
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   Optional parent block ID for nested content blocks (e.g. subagent
    #   tool calls)
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   Event sequence number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageContentBlockStartEvent AWS API Documentation
    #
    class SendMessageContentBlockStartEvent < Struct.new(
      :index,
      :type,
      :id,
      :parent_id,
      :sequence_number,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event emitted when a content block is complete
    #
    # @!attribute [rw] index
    #   Zero-based index of the content block
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of content in this block
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The accumulated complete content text
    #   @return [String]
    #
    # @!attribute [rw] last
    #   Whether this is the final content block in the response
    #   @return [Boolean]
    #
    # @!attribute [rw] sequence_number
    #   Event sequence number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageContentBlockStopEvent AWS API Documentation
    #
    class SendMessageContentBlockStopEvent < Struct.new(
      :index,
      :type,
      :text,
      :last,
      :sequence_number,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Context object for additional message metadata
    #
    # @!attribute [rw] current_page
    #   The current page or view the user is on
    #   @return [String]
    #
    # @!attribute [rw] last_message
    #   The ID of the last message in the conversation
    #   @return [String]
    #
    # @!attribute [rw] user_action_response
    #   Response to a UI prompt (not a text conversation message). Set this
    #   to the sentinel value `"APPROVAL\_ACTION"` when the request is
    #   resuming a paused execution after an approval decision; in that case
    #   the structured decision is provided on the sibling
    #   `approvalAction` member. Preserved as a String for backward
    #   compatibility: clients that predate the typed approval field may
    #   still encode UI-prompt responses as JSON in this field.
    #   @return [String]
    #
    # @!attribute [rw] approval_action
    #   An approval decision supplied when resuming a paused agent
    #   execution. When an agent execution pauses to request approval for an
    #   elevated action, SendMessage streams an approval request carrying
    #   interrupt identifiers. To resume the paused execution, call
    #   SendMessage again with `userActionResponse` set to
    #   `"APPROVAL\_ACTION"` and this member populated with those
    #   identifiers and the decision (APPROVED or REJECTED). Optional; omit
    #   it for messages that are not resuming an approval.
    #   @return [Types::ApprovalAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageContext AWS API Documentation
    #
    class SendMessageContext < Struct.new(
      :current_page,
      :last_message,
      :user_action_response,
      :approval_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Heartbeat event to keep connection alive
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageHeartbeatEvent AWS API Documentation
    #
    class SendMessageHeartbeatEvent < Struct.new(
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # JSON delta containing partial JSON
    #
    # @!attribute [rw] partial_json
    #   Partial JSON string
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageJsonDelta AWS API Documentation
    #
    class SendMessageJsonDelta < Struct.new(
      :partial_json)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for sending a chat message
    #
    # @!attribute [rw] agent_space_id
    #   The agent space identifier
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution identifier for the chat session
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The user message content
    #   @return [String]
    #
    # @!attribute [rw] context
    #   Optional context for the message
    #   @return [Types::SendMessageContext]
    #
    # @!attribute [rw] user_id
    #   User identifier. This field is deprecated and will be ignored — the
    #   service resolves user identity from the authenticated session.
    #   @return [String]
    #
    # @!attribute [rw] asset_ids
    #   Optional list of asset identifiers to attach to the message
    #   @return [Array<String>]
    #
    # @!attribute [rw] model_tier
    #   Optional model tier selection. Valid values: smart, balanced, fast.
    #   Absent or unrecognized values default to balanced.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageRequest AWS API Documentation
    #
    class SendMessageRequest < Struct.new(
      :agent_space_id,
      :execution_id,
      :content,
      :context,
      :user_id,
      :asset_ids,
      :model_tier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for sending chat message events
    #
    # @!attribute [rw] events
    #   The stream of chat message events
    #   @return [Types::SendMessageEvents]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageResponse AWS API Documentation
    #
    class SendMessageResponse < Struct.new(
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event emitted when the response completes successfully
    #
    # @!attribute [rw] response_id
    #   The response ID
    #   @return [String]
    #
    # @!attribute [rw] usage
    #   Token usage information
    #   @return [Types::SendMessageUsageInfo]
    #
    # @!attribute [rw] sequence_number
    #   Event sequence number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageResponseCompletedEvent AWS API Documentation
    #
    class SendMessageResponseCompletedEvent < Struct.new(
      :response_id,
      :usage,
      :sequence_number,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event emitted when the response is created
    #
    # @!attribute [rw] response_id
    #   The response ID
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   Event sequence number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageResponseCreatedEvent AWS API Documentation
    #
    class SendMessageResponseCreatedEvent < Struct.new(
      :response_id,
      :sequence_number,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event emitted when the response fails
    #
    # @!attribute [rw] response_id
    #   The response ID
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   Error code
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error message
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   Event sequence number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageResponseFailedEvent AWS API Documentation
    #
    class SendMessageResponseFailedEvent < Struct.new(
      :response_id,
      :error_code,
      :error_message,
      :sequence_number,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event emitted while the response is being generated
    #
    # @!attribute [rw] response_id
    #   The response ID
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   Event sequence number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageResponseInProgressEvent AWS API Documentation
    #
    class SendMessageResponseInProgressEvent < Struct.new(
      :response_id,
      :sequence_number,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event summarizing agent actions
    #
    # @!attribute [rw] content
    #   Summary content
    #   @return [String]
    #
    # @!attribute [rw] sequence_number
    #   Event sequence number
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageSummaryEvent AWS API Documentation
    #
    class SendMessageSummaryEvent < Struct.new(
      :content,
      :sequence_number,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Text delta containing a text fragment
    #
    # @!attribute [rw] text
    #   The text fragment
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageTextDelta AWS API Documentation
    #
    class SendMessageTextDelta < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # Token usage information
    #
    # @!attribute [rw] input_tokens
    #   Number of input tokens
    #   @return [Integer]
    #
    # @!attribute [rw] output_tokens
    #   Number of output tokens
    #   @return [Integer]
    #
    # @!attribute [rw] total_tokens
    #   Total tokens used
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageUsageInfo AWS API Documentation
    #
    class SendMessageUsageInfo < Struct.new(
      :input_tokens,
      :output_tokens,
      :total_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Union of all supported service configuration types. Each service has
    # its own specific configuration structure.
    #
    # @note ServiceConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ServiceConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ServiceConfiguration corresponding to the set member.
    #
    # @!attribute [rw] source_aws
    #   AWS source account configuration for monitoring resources.
    #   @return [Types::SourceAwsConfiguration]
    #
    # @!attribute [rw] aws
    #   AWS monitor account configuration.
    #   @return [Types::AWSConfiguration]
    #
    # @!attribute [rw] github
    #   GitHub repository integration configuration.
    #   @return [Types::GitHubConfiguration]
    #
    # @!attribute [rw] slack
    #   Slack workspace integration configuration.
    #   @return [Types::SlackConfiguration]
    #
    # @!attribute [rw] dynatrace
    #   Dynatrace monitoring integration configuration.
    #   @return [Types::DynatraceConfiguration]
    #
    # @!attribute [rw] servicenow
    #   ServiceNow instance integration configuration.
    #   @return [Types::ServiceNowConfiguration]
    #
    # @!attribute [rw] mcpservernewrelic
    #   NewRelic instance integration configuration.
    #   @return [Types::MCPServerNewRelicConfiguration]
    #
    # @!attribute [rw] mcpserverdatadog
    #   Datadog MCP server integration configuration.
    #   @return [Types::MCPServerDatadogConfiguration]
    #
    # @!attribute [rw] mcpserver
    #   MCP (Model Context Protocol) server integration configuration.
    #   @return [Types::MCPServerConfiguration]
    #
    # @!attribute [rw] gitlab
    #   GitLab project integration configuration.
    #   @return [Types::GitLabConfiguration]
    #
    # @!attribute [rw] mcpserversplunk
    #   Splunk MCP server integration configuration.
    #   @return [Types::MCPServerSplunkConfiguration]
    #
    # @!attribute [rw] event_channel
    #   Event Channel instance integration configuration.
    #   @return [Types::EventChannelConfiguration]
    #
    # @!attribute [rw] azure
    #   Azure subscription integration configuration.
    #   @return [Types::AzureConfiguration]
    #
    # @!attribute [rw] azuredevops
    #   Azure DevOps project integration configuration.
    #   @return [Types::AzureDevOpsConfiguration]
    #
    # @!attribute [rw] mcpservergrafana
    #   Grafana MCP server integration configuration.
    #   @return [Types::MCPServerGrafanaConfiguration]
    #
    # @!attribute [rw] pagerduty
    #   PagerDuty integration configuration
    #   @return [Types::PagerDutyConfiguration]
    #
    # @!attribute [rw] mcpserversigv4
    #   SigV4-authenticated MCP server integration configuration.
    #   @return [Types::MCPServerSigV4Configuration]
    #
    # @!attribute [rw] remoteagent
    #   Remote A2A agent integration configuration (token-based auth).
    #   @return [Types::RemoteAgentConfiguration]
    #
    # @!attribute [rw] remoteagentsigv4
    #   Remote A2A agent integration configuration (SigV4 auth).
    #   @return [Types::RemoteAgentSigV4Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ServiceConfiguration AWS API Documentation
    #
    class ServiceConfiguration < Struct.new(
      :source_aws,
      :aws,
      :github,
      :slack,
      :dynatrace,
      :servicenow,
      :mcpservernewrelic,
      :mcpserverdatadog,
      :mcpserver,
      :gitlab,
      :mcpserversplunk,
      :event_channel,
      :azure,
      :azuredevops,
      :mcpservergrafana,
      :pagerduty,
      :mcpserversigv4,
      :remoteagent,
      :remoteagentsigv4,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SourceAws < ServiceConfiguration; end
      class Aws < ServiceConfiguration; end
      class Github < ServiceConfiguration; end
      class Slack < ServiceConfiguration; end
      class Dynatrace < ServiceConfiguration; end
      class Servicenow < ServiceConfiguration; end
      class Mcpservernewrelic < ServiceConfiguration; end
      class Mcpserverdatadog < ServiceConfiguration; end
      class Mcpserver < ServiceConfiguration; end
      class Gitlab < ServiceConfiguration; end
      class Mcpserversplunk < ServiceConfiguration; end
      class EventChannel < ServiceConfiguration; end
      class Azure < ServiceConfiguration; end
      class Azuredevops < ServiceConfiguration; end
      class Mcpservergrafana < ServiceConfiguration; end
      class Pagerduty < ServiceConfiguration; end
      class Mcpserversigv4 < ServiceConfiguration; end
      class Remoteagent < ServiceConfiguration; end
      class Remoteagentsigv4 < ServiceConfiguration; end
      class Unknown < ServiceConfiguration; end
    end

    # Union of service-specific configuration details for service
    # registration.
    #
    # @note ServiceDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] dynatrace
    #   Dynatrace-specific service details.
    #   @return [Types::DynatraceServiceDetails]
    #
    # @!attribute [rw] servicenow
    #   ServiceNow-specific service details.
    #   @return [Types::ServiceNowServiceDetails]
    #
    # @!attribute [rw] mcpserverdatadog
    #   Datadog MCP server-specific service details.
    #   @return [Types::DatadogServiceDetails]
    #
    # @!attribute [rw] mcpserver
    #   MCP server-specific service details.
    #   @return [Types::MCPServerDetails]
    #
    # @!attribute [rw] gitlab
    #   GitLab-specific service details.
    #   @return [Types::GitLabDetails]
    #
    # @!attribute [rw] mcpserversplunk
    #   Splunk MCP server-specific service details.
    #   @return [Types::MCPServerDetails]
    #
    # @!attribute [rw] mcpservernewrelic
    #   New Relic-specific service details.
    #   @return [Types::NewRelicServiceDetails]
    #
    # @!attribute [rw] event_channel
    #   Event Channel specific service details.
    #   @return [Types::EventChannelDetails]
    #
    # @!attribute [rw] mcpservergrafana
    #   Datadog MCP server-specific service details.
    #   @return [Types::GrafanaServiceDetails]
    #
    # @!attribute [rw] pagerduty
    #   PagerDuty specific service details.
    #   @return [Types::PagerDutyDetails]
    #
    # @!attribute [rw] azureidentity
    #   Azure integration with AWS Outbound Identity Federation specific
    #   service details.
    #   @return [Types::RegisteredAzureIdentityDetails]
    #
    # @!attribute [rw] mcpserversigv4
    #   SigV4-authenticated MCP server-specific service details.
    #   @return [Types::MCPServerSigV4ServiceDetails]
    #
    # @!attribute [rw] remoteagent
    #   Remote A2A agent service details (token-based auth).
    #   @return [Types::RemoteAgentServiceDetails]
    #
    # @!attribute [rw] remoteagentsigv4
    #   Remote A2A agent service details (SigV4 auth).
    #   @return [Types::RemoteAgentSigV4ServiceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ServiceDetails AWS API Documentation
    #
    class ServiceDetails < Struct.new(
      :dynatrace,
      :servicenow,
      :mcpserverdatadog,
      :mcpserver,
      :gitlab,
      :mcpserversplunk,
      :mcpservernewrelic,
      :event_channel,
      :mcpservergrafana,
      :pagerduty,
      :azureidentity,
      :mcpserversigv4,
      :remoteagent,
      :remoteagentsigv4,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Dynatrace < ServiceDetails; end
      class Servicenow < ServiceDetails; end
      class Mcpserverdatadog < ServiceDetails; end
      class Mcpserver < ServiceDetails; end
      class Gitlab < ServiceDetails; end
      class Mcpserversplunk < ServiceDetails; end
      class Mcpservernewrelic < ServiceDetails; end
      class EventChannel < ServiceDetails; end
      class Mcpservergrafana < ServiceDetails; end
      class Pagerduty < ServiceDetails; end
      class Azureidentity < ServiceDetails; end
      class Mcpserversigv4 < ServiceDetails; end
      class Remoteagent < ServiceDetails; end
      class Remoteagentsigv4 < ServiceDetails; end
      class Unknown < ServiceDetails; end
    end

    # Configuration for a service-managed Private Connection.
    #
    # @!attribute [rw] host_address
    #   IP address or DNS name of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   VPC to create the service-managed Resource Gateway in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Subnets that the service-managed Resource Gateway will span.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Security groups to attach to the service-managed Resource Gateway.
    #   If not specified, a default security group is created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   IP address type of the service-managed Resource Gateway.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses_per_eni
    #   Number of IPv4 addresses in each ENI for the service-managed
    #   Resource Gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] port_ranges
    #   TCP port ranges that a consumer can use to access the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] certificate
    #   Certificate for the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] dns_resolution
    #   DNS resolution mode for the resource gateway. Defaults to PUBLIC
    #   when not set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ServiceManagedInput AWS API Documentation
    #
    class ServiceManagedInput < Struct.new(
      :host_address,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :port_ranges,
      :certificate,
      :dns_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for ServiceNow instance integration.
    #
    # @!attribute [rw] instance_id
    #   ServiceNow instance ID
    #   @return [String]
    #
    # @!attribute [rw] auth_scopes
    #   Scoped down authentication scopes for fine grained control
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ServiceNowConfiguration AWS API Documentation
    #
    class ServiceNowConfiguration < Struct.new(
      :instance_id,
      :auth_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # OAuth client credentials configuration for ServiceNow.
    #
    # @!attribute [rw] client_name
    #   User friendly OAuth client name specified by end user.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   OAuth client ID for authenticating with the service.
    #   @return [String]
    #
    # @!attribute [rw] exchange_parameters
    #   OAuth token exchange parameters for authenticating with the service.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_secret
    #   OAuth client secret for authenticating with the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ServiceNowOAuthClientCredentialsConfig AWS API Documentation
    #
    class ServiceNowOAuthClientCredentialsConfig < Struct.new(
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret)
      SENSITIVE = [:client_id, :exchange_parameters, :client_secret]
      include Aws::Structure
    end

    # Authorization configuration options for ServiceNow service.
    #
    # @note ServiceNowServiceAuthorizationConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] o_auth_client_credentials
    #   OAuth client credentials configuration.
    #   @return [Types::ServiceNowOAuthClientCredentialsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ServiceNowServiceAuthorizationConfig AWS API Documentation
    #
    class ServiceNowServiceAuthorizationConfig < Struct.new(
      :o_auth_client_credentials,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OAuthClientCredentials < ServiceNowServiceAuthorizationConfig; end
      class Unknown < ServiceNowServiceAuthorizationConfig; end
    end

    # Complete service details for ServiceNow integration.
    #
    # @!attribute [rw] instance_url
    #   ServiceNow instance URL.
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   ServiceNow OAuth client credentials configuration. Use this when
    #   registering with OAuth client credentials flow.
    #   @return [Types::ServiceNowServiceAuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ServiceNowServiceDetails AWS API Documentation
    #
    class ServiceNowServiceDetails < Struct.new(
      :instance_url,
      :authorization_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed the service quota limit.
    #
    # @!attribute [rw] message
    #   Detailed error message describing which quota was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for bidirectional Slack communication.
    #
    # @!attribute [rw] role_arn
    #   IAM role ARN that AWS DevOps Agent assumes to exchange messages with
    #   your Slack workspace on behalf of this association.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether bidirectional communication is enabled for this association.
    #   When you set this value to true, you can mention the agent in a
    #   configured Slack channel and it responds in that channel. When you
    #   omit this value or set it to false, the agent ignores mentions and
    #   only sends notifications.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SlackBidirectionalConfiguration AWS API Documentation
    #
    class SlackBidirectionalConfiguration < Struct.new(
      :role_arn,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a Slack channel with its ID and optional name.
    #
    # @!attribute [rw] channel_name
    #   Slack channel name
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   Slack channel ID
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SlackChannel AWS API Documentation
    #
    class SlackChannel < Struct.new(
      :channel_name,
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Slack workspace integration.
    #
    # @!attribute [rw] workspace_id
    #   Associated Slack workspace ID
    #   @return [String]
    #
    # @!attribute [rw] workspace_name
    #   Associated Slack workspace name
    #   @return [String]
    #
    # @!attribute [rw] transmission_target
    #   Transmission targets for agent notifications
    #   @return [Types::SlackTransmissionTarget]
    #
    # @!attribute [rw] bidirectional
    #   Optional bidirectional communication configuration. Supply this
    #   configuration and set enabled to true so you can interact with the
    #   agent directly from Slack.
    #   @return [Types::SlackBidirectionalConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SlackConfiguration AWS API Documentation
    #
    class SlackConfiguration < Struct.new(
      :workspace_id,
      :workspace_name,
      :transmission_target,
      :bidirectional)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines Slack channels for different types of agent notifications.
    #
    # @!attribute [rw] ops_oncall_target
    #   Destination for On-call Agent (Ops1)
    #   @return [Types::SlackChannel]
    #
    # @!attribute [rw] ops_sre_target
    #   Destination for SRE Agent (Ops1.5)
    #   @return [Types::SlackChannel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SlackTransmissionTarget AWS API Documentation
    #
    class SlackTransmissionTarget < Struct.new(
      :ops_oncall_target,
      :ops_sre_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for AWS source account integration. Setting the role
    # ARNs on this configuration requires the caller to have at least the
    # iam:PassRole permission (see assumableRoleArn).
    #
    # @!attribute [rw] account_id
    #   AWS Account Id corresponding to provided resources.
    #   @return [String]
    #
    # @!attribute [rw] account_type
    #   Account Type 'source' for AIDevOps monitoring.
    #   @return [String]
    #
    # @!attribute [rw] assumable_role_arn
    #   Role ARN to be assumed by AIDevOps to operate on behalf of customer.
    #   To set this role ARN on AssociateService or UpdateAssociation, the
    #   caller must have at least the iam:PassRole permission on
    #   arn:aws:iam::&lt;account-id&gt;:role/* in the caller's own
    #   account, with the condition iam:PassedToService set to
    #   aidevops.amazonaws.com. A broader iam:PassRole grant also satisfies
    #   this requirement.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   External ID for additional security when assuming the role. Used to
    #   prevent the confused deputy problem.
    #   @return [String]
    #
    # @!attribute [rw] agent_elevated_role_arn
    #   Optional IAM role ARN to be assumed by AIDevOps for elevated
    #   directed actions on behalf of the customer. Used for mutating
    #   operations gated by elevatedActionsEnabled on the AgentSpace. When
    #   not provided, only non-elevated directed actions are available for
    #   this AWS account. Setting this role is subject to the same minimum
    #   iam:PassRole requirement described on assumableRoleArn.
    #   @return [String]
    #
    # @!attribute [rw] agent_elevated_role_arn_status
    #   Validation status of the agentElevatedRoleArn. Updated
    #   asynchronously after the customer registers an elevated role.
    #   Possible values: PENDING\_CONFIRMATION (validation in progress),
    #   VALID (role validated), INVALID (validation failed).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SourceAwsConfiguration AWS API Documentation
    #
    class SourceAwsConfiguration < Struct.new(
      :account_id,
      :account_type,
      :assumable_role_arn,
      :external_id,
      :agent_elevated_role_arn,
      :agent_elevated_role_arn_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Represents a backlog task with all its properties and metadata
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing this task
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier for this task
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The execution ID associated with this task, if any
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the task
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional detailed description of the task
    #   @return [String]
    #
    # @!attribute [rw] reference
    #   Optional reference information linking this task to external systems
    #   @return [Types::ReferenceOutput]
    #
    # @!attribute [rw] task_type
    #   The type of this task
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority level of this task
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this task
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this task was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this task was last updated
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   Version number for optimistic locking
    #   @return [Integer]
    #
    # @!attribute [rw] support_metadata
    #   Optional support metadata for the task
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] metadata
    #   Optional metadata for the task
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] primary_task_id
    #   The task ID of the primary investigation this task is linked to
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Explanation for why the task status was changed (e.g., linked
    #   reason)
    #   @return [String]
    #
    # @!attribute [rw] has_linked_tasks
    #   Indicates if this task has other tasks linked to it
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Task AWS API Documentation
    #
    class Task < Struct.new(
      :agent_space_id,
      :task_id,
      :execution_id,
      :title,
      :description,
      :reference,
      :task_type,
      :priority,
      :status,
      :created_at,
      :updated_at,
      :version,
      :support_metadata,
      :metadata,
      :primary_task_id,
      :status_reason,
      :has_linked_tasks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter criteria for listing backlog tasks, supporting time range,
    # priority, status, and type filters.
    #
    # @!attribute [rw] created_after
    #   Filter for tasks created after this timestamp inclusive
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   Filter for tasks created before this timestamp exclusive
    #   @return [Time]
    #
    # @!attribute [rw] priority
    #   Filter by priority (single value only)
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Filter by status (single value only)
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_type
    #   Filter by task type (single value only)
    #   @return [Array<String>]
    #
    # @!attribute [rw] primary_task_id
    #   Filter by primary task ID to get linked tasks
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/TaskFilter AWS API Documentation
    #
    class TaskFilter < Struct.new(
      :created_after,
      :created_before,
      :priority,
      :status,
      :task_type,
      :primary_task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled due to too many requests. Please slow down
    # and try again.
    #
    # @!attribute [rw] message
    #   Detailed error message describing the throttling condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Trigger fires on a schedule and invokes an agent
    #
    # @!attribute [rw] trigger_id
    #   The unique identifier for this Trigger
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The agent space this Trigger belongs to
    #   @return [String]
    #
    # @!attribute [rw] type
    #   How this Trigger fires
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition that fires this Trigger
    #   @return [Types::TriggerCondition]
    #
    # @!attribute [rw] action
    #   The action this Trigger performs when it fires
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status
    #   The status of this Trigger
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when this Trigger was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when this Trigger was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Trigger AWS API Documentation
    #
    class Trigger < Struct.new(
      :trigger_id,
      :agent_space_id,
      :type,
      :condition,
      :action,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the firing condition for a Trigger
    #
    # @note TriggerCondition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TriggerCondition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TriggerCondition corresponding to the set member.
    #
    # @!attribute [rw] schedule
    #   Time-based firing condition
    #   @return [Types::ScheduleCondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/TriggerCondition AWS API Documentation
    #
    class TriggerCondition < Struct.new(
      :schedule,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Schedule < TriggerCondition; end
      class Unknown < TriggerCondition; end
    end

    # A group of trigger conditions. The group matches when ALL present
    # conditions pass. A group cannot be empty: at least one condition must
    # be present.
    #
    # @!attribute [rw] events
    #   Passes when the webhook event is one of the listed events.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_branches
    #   Passes when the change request target branch matches. Applicable to
    #   RELEASE\_READINESS\_REVIEW only.
    #   @return [Types::PatternFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/TriggerFilterGroup AWS API Documentation
    #
    class TriggerFilterGroup < Struct.new(
      :events,
      :target_branches)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Input for updating an existing AgentSpace's properties. All fields
    # except agentSpaceId are optional for partial updates.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the AgentSpace.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the AgentSpace.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The updated locale for the AgentSpace, which determines the language
    #   used in agent responses.
    #   @return [String]
    #
    # @!attribute [rw] preferences
    #   The preferences to configure on the agent space. When provided, this
    #   replaces the full set of configured preferences; preferences not
    #   included revert to their default values. When omitted, the current
    #   preferences are left unchanged.
    #   @return [Hash<String,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAgentSpaceInput AWS API Documentation
    #
    class UpdateAgentSpaceInput < Struct.new(
      :agent_space_id,
      :name,
      :description,
      :locale,
      :preferences)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Output containing the updated AgentSpace.
    #
    # @!attribute [rw] agent_space
    #   Represents a complete AgentSpace with all its properties,
    #   timestamps, encryption settings, and unique identifier.
    #   @return [Types::AgentSpace]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAgentSpaceOutput AWS API Documentation
    #
    class UpdateAgentSpaceOutput < Struct.new(
      :agent_space)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for UpdateApprovalAction. Submits the terminal
    # decision (APPROVED or REJECTED) against an approval request,
    # optionally carrying the finalized pattern and time-to-live when the
    # action is APPROVED, or a free-text rationale when the action is
    # REJECTED. Cross-field invariants between `action` and the
    # approve-only / reject-only members are enforced by service-side
    # validation.
    #
    # @!attribute [rw] agent_space_id
    #   The agent space identifier — multi-tenant workspace scope. Bound
    #   from the request URI.
    #   @return [String]
    #
    # @!attribute [rw] approval_id
    #   Identifier of the approval request being resolved. A UUID. Bound
    #   from the request URI.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action to take on the approval request — APPROVED or REJECTED.
    #   @return [String]
    #
    # @!attribute [rw] final_pattern
    #   The finalized pattern (tool + argumentPins) that scopes the
    #   approval. Required when `action` is APPROVED; must be absent when
    #   `action` is REJECTED. The pattern narrows, and must not widen, the
    #   invocation originally requested by the agent. This cross-field
    #   invariant is enforced by service-side validation.
    #   @return [Types::ApprovalPattern]
    #
    # @!attribute [rw] reason
    #   Optional free-text rationale for the decision. Permitted when
    #   `action` is REJECTED; ignored when `action` is APPROVED.
    #   @return [String]
    #
    # @!attribute [rw] ttl_seconds
    #   Approval lifetime in seconds, starting from when the decision is
    #   submitted. Required when `action` is APPROVED AND `singleUse` is
    #   false; must be absent when `action` is REJECTED or when
    #   `singleUse` is true (a single-use approval backs one executed
    #   action and the redemption window collapses). Cross-field invariants
    #   are enforced by service-side validation; the @range bound here is
    #   the operation-boundary check that always applies (a maximum of 4
    #   hours).
    #   @return [Integer]
    #
    # @!attribute [rw] single_use
    #   Whether the approved action backs a single executed tool call (true)
    #   or is reusable within ttlSeconds (false). Required when `action`
    #   is APPROVED; must be absent when `action` is REJECTED. When true,
    #   ttlSeconds must be absent (the redemption window collapses to the
    #   single use). When false, ttlSeconds is required and bounds the reuse
    #   window. Cross-field invariants are enforced by service-side
    #   validation.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateApprovalActionRequest AWS API Documentation
    #
    class UpdateApprovalActionRequest < Struct.new(
      :agent_space_id,
      :approval_id,
      :action,
      :final_pattern,
      :reason,
      :ttl_seconds,
      :single_use)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for UpdateApprovalAction. Reports the
    # post-submission lifecycle status of the approval request and, when
    # applicable, the absolute expiry timestamp. The status is a lifecycle
    # state distinct from the action verb — an APPROVED submission
    # transitions the request to APPROVED status (live, redeemable); a
    # REJECTED submission transitions it to REJECTED status (terminal).
    #
    # @!attribute [rw] approval_id
    #   Identifier of the approval request that was resolved. Echoed back so
    #   the client can correlate the response with the request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Lifecycle status of the approval request immediately after
    #   submission. Expected post-submission states are APPROVED (when the
    #   action is APPROVED) or REJECTED (when the action is REJECTED);
    #   PENDING is not returned from this operation, and REVOKED and
    #   REDEEMED are reachable only via subsequent reads.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   Absolute timestamp at which the approval expires. Set when status is
    #   APPROVED (computed as the submission time plus ttlSeconds); absent
    #   when status is REJECTED.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateApprovalActionResponse AWS API Documentation
    #
    class UpdateApprovalActionResponse < Struct.new(
      :approval_id,
      :status,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for updating an asset file
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset containing the file
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the file within the asset to update
    #   @return [String]
    #
    # @!attribute [rw] content
    #   Updated file content. If omitted, the existing content is unchanged.
    #   @return [Types::AssetFileBody]
    #
    # @!attribute [rw] metadata
    #   Metadata fields to update. Only the fields present in this document
    #   are updated. Omitted fields retain their current values.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier used for idempotent asset file
    #   update
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAssetFileRequest AWS API Documentation
    #
    class UpdateAssetFileRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :path,
      :content,
      :metadata,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for updating an asset file
    #
    # @!attribute [rw] file
    #   The asset file object
    #   @return [Types::AssetFile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAssetFileResponse AWS API Documentation
    #
    class UpdateAssetFileResponse < Struct.new(
      :file)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for updating an asset
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the asset
    #   @return [String]
    #
    # @!attribute [rw] asset_id
    #   The unique identifier of the asset to update
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Metadata fields to update. Only the fields present in this document
    #   are updated. Omitted fields retain their current values.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] content
    #   Optional content update. A single file adds or replaces one file; a
    #   zip replaces all files; a sourceUrl re-syncs from the original
    #   source.
    #   @return [Types::AssetContent]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier used for idempotent asset update
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAssetRequest AWS API Documentation
    #
    class UpdateAssetRequest < Struct.new(
      :agent_space_id,
      :asset_id,
      :metadata,
      :content,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for updating an asset
    #
    # @!attribute [rw] asset
    #   The asset object
    #   @return [Types::Asset]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAssetResponse AWS API Documentation
    #
    class UpdateAssetResponse < Struct.new(
      :asset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating an existing service association. Present fields are
    # fully replaced; absent fields are left unchanged.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The unique identifier of the given association.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration that directs how AgentSpace interacts with the
    #   given service. The entire configuration is replaced on update.
    #   @return [Types::ServiceConfiguration]
    #
    # @!attribute [rw] capabilities
    #   Enabled capabilities for this association.
    #   @return [Hash<String,Types::CapabilityConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAssociationInput AWS API Documentation
    #
    class UpdateAssociationInput < Struct.new(
      :agent_space_id,
      :association_id,
      :configuration,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the updated association and optional webhook
    # configuration.
    #
    # @!attribute [rw] association
    #   Represents a service association within an AgentSpace, defining how
    #   the agent interacts with external services.
    #   @return [Types::Association]
    #
    # @!attribute [rw] webhook
    #   Generic webhook configuration
    #   @return [Types::GenericWebhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateAssociationOutput AWS API Documentation
    #
    class UpdateAssociationOutput < Struct.new(
      :association,
      :webhook)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for updating a task
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the task
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task to update
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   Updated task status
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Client-provided token for idempotent operations
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateBacklogTaskRequest AWS API Documentation
    #
    class UpdateBacklogTaskRequest < Struct.new(
      :agent_space_id,
      :task_id,
      :task_status,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing the updated task
    #
    # @!attribute [rw] task
    #   The updated task object
    #   @return [Types::Task]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateBacklogTaskResponse AWS API Documentation
    #
    class UpdateBacklogTaskResponse < Struct.new(
      :task)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for updating a goal
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the goal
    #   @return [String]
    #
    # @!attribute [rw] goal_id
    #   The unique identifier of the goal to update
    #   @return [String]
    #
    # @!attribute [rw] evaluation_schedule
    #   Update goal schedule state
    #   @return [Types::GoalScheduleInput]
    #
    # @!attribute [rw] client_token
    #   Client-provided token for idempotent operations
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateGoalRequest AWS API Documentation
    #
    class UpdateGoalRequest < Struct.new(
      :agent_space_id,
      :goal_id,
      :evaluation_schedule,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing the updated goal
    #
    # @!attribute [rw] goal
    #   The updated goal object
    #   @return [Types::Goal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateGoalResponse AWS API Documentation
    #
    class UpdateGoalResponse < Struct.new(
      :goal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating the external Identity Provider configuration for
    # the Operator App.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] idp_client_secret
    #   The OIDC client secret for the IdP application
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateOperatorAppIdpConfigInput AWS API Documentation
    #
    class UpdateOperatorAppIdpConfigInput < Struct.new(
      :agent_space_id,
      :idp_client_secret)
      SENSITIVE = [:idp_client_secret]
      include Aws::Structure
    end

    # Output containing the updated IdP configuration.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @!attribute [rw] idp
    #   Configuration for external Identity Provider OIDC authentication
    #   flow for the Operator App.
    #   @return [Types::IdpAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateOperatorAppIdpConfigOutput AWS API Documentation
    #
    class UpdateOperatorAppIdpConfigOutput < Struct.new(
      :agent_space_id,
      :idp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating the certificate of a Private Connection.
    #
    # @!attribute [rw] name
    #   The name of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The new certificate for the Private Connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdatePrivateConnectionCertificateInput AWS API Documentation
    #
    class UpdatePrivateConnectionCertificateInput < Struct.new(
      :name,
      :certificate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output containing the updated Private Connection summary.
    #
    # @!attribute [rw] name
    #   The name of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The service-managed Resource Gateway ARN. Only present for
    #   service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   IP address or DNS name of the target resource. Only present for
    #   service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   VPC identifier of the service-managed Resource Gateway. Only present
    #   for service-managed Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The Resource Configuration ARN. Only present for self-managed
    #   Private Connections.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Private Connection.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The expiry time of the certificate associated with the Private
    #   Connection. Only present when a certificate is associated.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   DNS resolution mode for the Private Connection's resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   Message describing the reason for a failed Private Connection
    #   update, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdatePrivateConnectionCertificateOutput AWS API Documentation
    #
    class UpdatePrivateConnectionCertificateOutput < Struct.new(
      :name,
      :type,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :status,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for updating an existing recommendation
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the
    #   recommendation
    #   @return [String]
    #
    # @!attribute [rw] recommendation_id
    #   The unique identifier for the recommendation to update
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the recommendation
    #   @return [String]
    #
    # @!attribute [rw] additional_context
    #   Additional context for recommendation
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token that ensures idempotency of the request
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateRecommendationRequest AWS API Documentation
    #
    class UpdateRecommendationRequest < Struct.new(
      :agent_space_id,
      :recommendation_id,
      :status,
      :additional_context,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure containing the updated recommendation
    #
    # @!attribute [rw] recommendation
    #   The updated recommendation
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateRecommendationResponse AWS API Documentation
    #
    class UpdateRecommendationResponse < Struct.new(
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for updating a Trigger
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier for the agent space containing the Trigger
    #   @return [String]
    #
    # @!attribute [rw] trigger_id
    #   The unique identifier of the Trigger to update
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status for the Trigger
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier used for idempotent Trigger
    #   update
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateTriggerRequest AWS API Documentation
    #
    class UpdateTriggerRequest < Struct.new(
      :agent_space_id,
      :trigger_id,
      :status,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for updating a Trigger
    #
    # @!attribute [rw] trigger
    #   The Trigger object
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UpdateTriggerResponse AWS API Documentation
    #
    class UpdateTriggerResponse < Struct.new(
      :trigger)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a usage metric with its configured limit and current usage
    # value.
    #
    # @!attribute [rw] limit
    #   Configured limit for this metric. A value of -1 indicates no limit
    #   is enforced.
    #   @return [Integer]
    #
    # @!attribute [rw] usage
    #   Current usage for this metric
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UsageMetric AWS API Documentation
    #
    class UsageMetric < Struct.new(
      :limit,
      :usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A block of content in a user message.
    #
    # @note UserMessageBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of UserMessageBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   Text content from the user.
    #   @return [String]
    #
    # @!attribute [rw] tool_result
    #   Tool execution result provided by the user.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UserMessageBlock AWS API Documentation
    #
    class UserMessageBlock < Struct.new(
      :text,
      :tool_result,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Text < UserMessageBlock; end
      class ToolResult < UserMessageBlock; end
      class Unknown < UserMessageBlock; end
    end

    # Reference to a user in the system
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user
    #   @return [String]
    #
    # @!attribute [rw] user_type
    #   The type of user
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/UserReference AWS API Documentation
    #
    class UserReference < Struct.new(
      :user_id,
      :user_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for validating an aws association
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the AgentSpace
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ValidateAwsAssociationsInput AWS API Documentation
    #
    class ValidateAwsAssociationsInput < Struct.new(
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Empty Output for successful validating an aws association
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ValidateAwsAssociationsOutput AWS API Documentation
    #
    class ValidateAwsAssociationsOutput < Aws::EmptyStructure; end

    # The input fails to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] message
    #   A summary of the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of specific failures encountered while validating the input.
    #   A member can appear in this list more than once if it failed to
    #   satisfy multiple constraints.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes one specific validation failure for an input member.
    #
    # @!attribute [rw] path
    #   A JSONPointer expression to the structure member whose value failed
    #   to satisfy the modeled constraints.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed description of the validation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a complete Webhook with all its properties, and unique
    # identifier.
    #
    # @!attribute [rw] webhook_url
    #   Webhook endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] webhook_type
    #   Webhook authentication type.
    #   @return [String]
    #
    # @!attribute [rw] webhook_id
    #   The unique identifier of the Webhook
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/Webhook AWS API Documentation
    #
    class Webhook < Struct.new(
      :webhook_url,
      :webhook_type,
      :webhook_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event stream for chat message responses using the content block model.
    # Events follow a lifecycle: responseCreated -&gt; responseInProgress
    # -&gt; (contentBlockStart/contentBlockDelta/contentBlockStop events)
    # -&gt; responseCompleted\|responseFailed SendMessage always uses
    # content block mode — legacy per-field events (outputTextDelta,
    # functionCallArgumentsDelta, etc.) are not emitted.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/devops-agent-2026-01-01/SendMessageEvents AWS API Documentation
    #
    class SendMessageEvents < Enumerator

      def event_types
        [
          :response_created,
          :response_in_progress,
          :response_completed,
          :response_failed,
          :summary,
          :heartbeat,
          :content_block_start,
          :content_block_delta,
          :content_block_stop
        ]
      end

    end

  end
end

