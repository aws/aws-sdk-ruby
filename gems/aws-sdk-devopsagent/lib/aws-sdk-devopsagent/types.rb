# frozen_string_literal: true

# This is generated code!

module Aws::DevOpsAgent
  # This module contains the types returned by client operations.
  module Types

    # <p>Configuration for AWS monitor account integration, allowing AIDevOps to monitor AWS resources.</p>
    # @!attribute assumable_role_arn
    #   <p>Role ARN to be assumed by AIDevOps to operate on behalf of customer.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>AWS Account Id corresponding to provided resources.</p>
    #   @return [String]
    # @!attribute account_type
    #   <p>Account Type 'monitor' for AIDevOps monitoring.</p>
    #   @return [String]
    # @!attribute agent_elevated_role_arn
    #   <p>Optional IAM role ARN to be assumed by AIDevOps for elevated directed actions on behalf of the customer. Used for mutating operations gated by elevatedActionsEnabled on the AgentSpace. When not provided, only non-elevated directed actions are available for this AWS account.</p>
    #   @return [String]
    # @!attribute agent_elevated_role_arn_status
    #   <p>Validation status of the agentElevatedRoleArn. Updated asynchronously after the customer registers an elevated role. Possible values: PENDING_CONFIRMATION (validation in progress), VALID (role validated), INVALID (validation failed).</p>
    #   @return [String]
    class AWSConfiguration < Struct.new(
      nil,
      :assumable_role_arn,
      :account_id,
      :account_type,
      :agent_elevated_role_arn,
      :agent_elevated_role_arn_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Access to the requested resource is denied due to insufficient permissions.</p>
    # @!attribute message
    #   <p>Detailed error message describing why access was denied.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union of service-specific details for different service types.</p>
    # @!attribute github
    #   <p>GitHub-specific service details.</p>
    #   @return [Types::RegisteredGithubServiceDetails]
    # @!attribute slack
    #   <p>Slack-specific service details.</p>
    #   @return [Types::RegisteredSlackServiceDetails]
    # @!attribute mcpserverdatadog
    #   <p>Datadog MCP server-specific service details.</p>
    #   @return [Types::RegisteredMCPServerDetails]
    # @!attribute mcpserver
    #   <p>MCP server-specific service details.</p>
    #   @return [Types::RegisteredMCPServerDetails]
    # @!attribute servicenow
    #   <p>ServiceNow-specific service details.</p>
    #   @return [Types::RegisteredServiceNowDetails]
    # @!attribute gitlab
    #   <p>GitLab-specific service details.</p>
    #   @return [Types::RegisteredGitLabServiceDetails]
    # @!attribute mcpserversplunk
    #   <p>Splunk MCP server-specific service details.</p>
    #   @return [Types::RegisteredMCPServerDetails]
    # @!attribute mcpservernewrelic
    #   <p>New Relic MCP server-specific service details.</p>
    #   @return [Types::RegisteredNewRelicDetails]
    # @!attribute azuredevops
    #   <p>Azure DevOps specific service details.</p>
    #   @return [Types::RegisteredAzureDevOpsServiceDetails]
    # @!attribute azureidentity
    #   <p>Azure identity details for services using Azure authentication.</p>
    #   @return [Types::RegisteredAzureIdentityDetails]
    # @!attribute mcpservergrafana
    #   <p>Grafana MCP server-specific service details.</p>
    #   @return [Types::RegisteredGrafanaServerDetails]
    # @!attribute pagerduty
    #   <p>Pagerduty service details.</p>
    #   @return [Types::RegisteredPagerDutyDetails]
    # @!attribute mcpserversigv4
    #   <p>SigV4-authenticated MCP server-specific service details.</p>
    #   @return [Types::RegisteredMCPServerSigV4Details]
    # @!attribute remoteagent
    #   <p>Remote A2A agent-specific service details (token-based auth).</p>
    #   @return [Types::RegisteredRemoteAgentDetails]
    # @!attribute remoteagentsigv4
    #   <p>Remote A2A agent-specific service details (SigV4 auth).</p>
    #   @return [Types::RegisteredRemoteAgentSigV4Details]
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
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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

    # <p>Additional steps required to complete service registration.</p>
    # @!attribute oauth
    #   <p>OAuth authorization step required.</p>
    #   @return [Types::OAuthAdditionalStepDetails]
    class AdditionalServiceRegistrationStep < Struct.new(
      :oauth,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Oauth < AdditionalServiceRegistrationStep; end
      class Unknown < AdditionalServiceRegistrationStep; end
    end

    # <p>Represents a complete AgentSpace with all its properties, timestamps, encryption settings, and unique identifier.</p>
    # @!attribute name
    #   <p>The name of the AgentSpace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AgentSpace.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale for the AgentSpace, which determines the language used in agent responses.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the resource was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the resource was last updated.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) customer managed key that's used to encrypt resources.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute preferences
    #   <p>The preferences configured on the agent space. Preferences that are not set take their default values.</p>
    #   @return [Hash<String, Boolean>]
    class AgentSpace < Struct.new(
      nil,
      :name,
      :description,
      :locale,
      :created_at,
      :updated_at,
      :kms_key_arn,
      :agent_space_id,
      :preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An approval decision supplied when resuming a paused agent execution. When an agent execution pauses to request approval for an elevated action, SendMessage streams an approval request carrying interrupt identifiers. This structure carries the decision back to the service — which paused tool invocation is being resumed, the opaque interrupt identifier that resumes it, the identifier of the approval request being resolved, optional display text of the control the user chose, and the action taken (APPROVED or REJECTED) — so the service can resume the paused execution. All members are optional on the wire; service-side validation is applied against the populated subset.</p>
    # @!attribute tool_use_id
    #   <p>Identifier of the specific paused tool invocation that requested approval. Correlates the approval decision back to the paused invocation.</p>
    #   @return [String]
    # @!attribute interrupt_id
    #   <p>An opaque resume identifier issued by the service when an agent execution pauses for approval. Provide it when resuming so the service can resume the correct paused execution.</p>
    #   @return [String]
    # @!attribute approval_id
    #   <p>Identifier of the approval request being resolved.</p>
    #   @return [String]
    # @!attribute button_text
    #   <p>Optional display text of the UI control the user chose (for example, "Approve Exact", "Approve Broader", or "Reject"), provided as auxiliary decision context.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action taken on the approval request — APPROVED or REJECTED.</p>
    #   @return [String]
    class ApprovalAction < Struct.new(
      nil,
      :tool_use_id,
      :interrupt_id,
      :approval_id,
      :button_text,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Tool-invocation pattern primitive used to express both an agent-requested approval and a finalized approval. The primitive is uniform across AWS and third-party tools: a tool identifier plus a map of argument pins that narrow which invocations the pattern matches.</p>
    # @!attribute tool
    #   <p>Identifier of the tool the pattern applies to (e.g. `use_aws` for AWS actions, or a third-party tool name).</p>
    #   @return [String]
    # @!attribute argument_pins
    #   <p>Argument constraints that narrow which tool invocations the pattern matches. For AWS tools, the map must include `operation` (the IAM action, e.g. `ec2:AuthorizeSecurityGroupIngress`) and `resource_arn` (the resource ARN or ARN glob); additional narrowing arguments go in further pin keys. The same `{tool, argumentPins}` shape is used uniformly for AWS and third-party tools, with tool-specific keys for third-party tools. Requests whose argument pins are collectively too large are rejected with a ValidationException.</p>
    #   @return [Hash<String, String>]
    class ApprovalPattern < Struct.new(
      nil,
      :tool,
      :argument_pins,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an asset in an agent space, including its identifier, type, metadata, version, and timestamps.</p>
    # @!attribute asset_id
    #   <p>The unique identifier for this asset</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of this asset</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata for this asset</p>
    #   @return [JSON]
    # @!attribute version
    #   <p>The version number of this asset</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>Timestamp when this asset was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this asset was last updated</p>
    #   @return [Time]
    class Asset < Struct.new(
      nil,
      :asset_id,
      :asset_type,
      :metadata,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Content for an asset: a single file, a zip bundle, or a source URL to import from</p>
    # @!attribute file
    #   <p>A single file with path and content</p>
    #   @return [Types::AssetFileContent]
    # @!attribute zip
    #   <p>A zip file containing multiple files</p>
    #   @return [Types::AssetZipContent]
    # @!attribute source_url
    #   <p>A source URL to import asset content from</p>
    #   @return [Types::AssetSourceUrlContent]
    class AssetContent < Struct.new(
      :file,
      :zip,
      :source_url,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class File < AssetContent; end
      class Zip < AssetContent; end
      class SourceUrl < AssetContent; end
      class Unknown < AssetContent; end
    end

    # <p>Represents a single file within an asset, including its path, content, version, and timestamps.</p>
    # @!attribute path
    #   <p>The path of this file within the asset</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of this file</p>
    #   @return [Types::AssetFileBody]
    # @!attribute metadata
    #   <p>The metadata for this file</p>
    #   @return [JSON]
    # @!attribute version
    #   <p>The asset version this file belongs to</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>Timestamp when this file was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this file was last updated</p>
    #   @return [Time]
    class AssetFile < Struct.new(
      nil,
      :path,
      :content,
      :metadata,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Content of an individual asset file</p>
    # @!attribute bytes
    #   <p>Binary file content</p>
    #   @return [String]
    # @!attribute text
    #   <p>Text file content</p>
    #   @return [String]
    class AssetFileBody < Struct.new(
      :bytes,
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Bytes < AssetFileBody; end
      class Text < AssetFileBody; end
      class Unknown < AssetFileBody; end
    end

    # <p>A single file with path and content</p>
    # @!attribute path
    #   <p>The path of the file within the asset</p>
    #   @return [String]
    # @!attribute body
    #   <p>The file content</p>
    #   @return [Types::AssetFileBody]
    # @!attribute metadata
    #   <p>Optional metadata for this file</p>
    #   @return [JSON]
    class AssetFileContent < Struct.new(
      nil,
      :path,
      :body,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of a file within an asset, including its path, version, and timestamps.</p>
    # @!attribute path
    #   <p>The path of this file within the asset</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata for this file</p>
    #   @return [JSON]
    # @!attribute version
    #   <p>The asset version this file belongs to</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>Timestamp when this file was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this file was last updated</p>
    #   @return [Time]
    class AssetFileSummary < Struct.new(
      nil,
      :path,
      :metadata,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Content for an asset sourced from an external URL.</p>
    # @!attribute url
    #   <p>The source URL to import asset content from.</p>
    #   @return [String]
    class AssetSourceUrlContent < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of an asset type, including its identifier and description.</p>
    # @!attribute asset_type
    #   <p>The asset type identifier</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the asset type</p>
    #   @return [String]
    class AssetTypeSummary < Struct.new(
      nil,
      :asset_type,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for a single version of an asset, including the version number and timestamps.</p>
    # @!attribute version
    #   <p>The version number of this asset</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>Timestamp when this asset version was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this asset version was last updated</p>
    #   @return [Time]
    class AssetVersionMetadata < Struct.new(
      nil,
      :version,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A zip file containing asset files</p>
    # @!attribute zip_file
    #   <p>The zip file bytes</p>
    #   @return [String]
    class AssetZipContent < Struct.new(
      nil,
      :zip_file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A block of content in an assistant message.</p>
    # @!attribute text
    #   <p>Text content from the assistant.</p>
    #   @return [String]
    # @!attribute tool_use
    #   <p>Tool use request from the assistant.</p>
    #   @return [JSON]
    class AssistantMessageBlock < Struct.new(
      :text,
      :tool_use,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < AssistantMessageBlock; end
      class ToolUse < AssistantMessageBlock; end
      class Unknown < AssistantMessageBlock; end
    end

    # <p>Input for creating a new service association within an AgentSpace.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The unique identifier of the service.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration that directs how AgentSpace interacts with the given service.</p>
    #   @return [Types::ServiceConfiguration]
    # @!attribute capabilities
    #   <p>Enabled capabilities for this association.</p>
    #   @return [Hash<String, Types::CapabilityConfiguration>]
    class AssociateServiceInput < Struct.new(
      nil,
      :agent_space_id,
      :service_id,
      :configuration,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the newly created association and optional webhook configuration.</p>
    # @!attribute association
    #   <p>Represents a service association within an AgentSpace, defining how the agent interacts with external services.</p>
    #   @return [Types::Association]
    # @!attribute webhook
    #   <p>Generic webhook configuration</p>
    #   @return [Types::GenericWebhook]
    class AssociateServiceOutput < Struct.new(
      nil,
      :association,
      :webhook,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a service association within an AgentSpace, defining how the agent interacts with external services.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the resource was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the resource was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Validation status</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The unique identifier of the given association.</p>
    #   @return [String]
    # @!attribute service_id
    #   <p>The identifier for associated service</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration that directs how AgentSpace interacts with the given service.</p>
    #   @return [Types::ServiceConfiguration]
    # @!attribute capabilities
    #   <p>Enabled capabilities for this association.</p>
    #   @return [Hash<String, Types::CapabilityConfiguration>]
    class Association < Struct.new(
      nil,
      :agent_space_id,
      :created_at,
      :updated_at,
      :status,
      :association_id,
      :service_id,
      :configuration,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Azure subscription integration.</p>
    # @!attribute subscription_id
    #   <p>Azure subscription ID corresponding to provided resources.</p>
    #   @return [String]
    class AzureConfiguration < Struct.new(
      nil,
      :subscription_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Azure DevOps project integration.</p>
    # @!attribute organization_name
    #   <p>Azure DevOps organization name.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>Azure DevOps project ID.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>Azure DevOps project name.</p>
    #   @return [String]
    class AzureDevOpsConfiguration < Struct.new(
      nil,
      :organization_name,
      :project_id,
      :project_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Capability configuration for the AWS DevOps Agent.</p>
    # @!attribute enabled
    #   <p>Whether the capability is enabled.</p>
    #   @return [Boolean]
    # @!attribute trigger_filter_groups
    #   <p>Optional trigger filter groups. Evaluated only when enabled=true; retained while the capability is disabled, so re-enabling restores the prior trigger behavior.</p>
    #   @return [Array<Types::TriggerFilterGroup>]
    class CapabilityConfiguration < Struct.new(
      nil,
      :enabled,
      :trigger_filter_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single chat execution summary</p>
    # @!attribute execution_id
    #   <p>The unique identifier for the execution</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when the chat was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when the chat was last updated</p>
    #   @return [Time]
    # @!attribute summary
    #   <p>Summary or title of the chat</p>
    #   @return [String]
    class ChatExecution < Struct.new(
      nil,
      :execution_id,
      :created_at,
      :updated_at,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource.</p>
    # @!attribute message
    #   <p>Detailed error message describing the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the content size exceeds the allowed limit.</p>
    # @!attribute message
    #   @return [String]
    class ContentSizeExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a new AgentSpace.</p>
    # @!attribute name
    #   <p>The name of the AgentSpace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AgentSpace.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale for the AgentSpace, which determines the language used in agent responses.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) customer managed key that's used to encrypt resources.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Client-provided token to ensure request idempotency. When the same token is provided in subsequent calls, the same response is returned within a 8-hour window.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to add to the AgentSpace at creation time.</p>
    #   @return [Hash<String, String>]
    # @!attribute preferences
    #   <p>The preferences to configure on the agent space. Preferences not provided take their default values.</p>
    #   @return [Hash<String, Boolean>]
    class CreateAgentSpaceInput < Struct.new(
      nil,
      :name,
      :description,
      :locale,
      :kms_key_arn,
      :client_token,
      :tags,
      :preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the newly created AgentSpace.</p>
    # @!attribute agent_space
    #   <p>Represents a complete AgentSpace with all its properties, timestamps, encryption settings, and unique identifier.</p>
    #   @return [Types::AgentSpace]
    # @!attribute tags
    #   <p>Tags associated with the created AgentSpace.</p>
    #   @return [Hash<String, String>]
    class CreateAgentSpaceOutput < Struct.new(
      nil,
      :agent_space,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for creating an asset file</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset to create the file in</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the file within the asset</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the file to create</p>
    #   @return [Types::AssetFileBody]
    # @!attribute metadata
    #   <p>Optional metadata describing this file</p>
    #   @return [JSON]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier used for idempotent asset file creation</p>
    #   @return [String]
    class CreateAssetFileRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :path,
      :content,
      :metadata,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for creating an asset file</p>
    # @!attribute file
    #   <p>The asset file object</p>
    #   @return [Types::AssetFile]
    class CreateAssetFileResponse < Struct.new(
      nil,
      :file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for creating a new asset</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space where the asset will be created</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>The type of asset to create</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata describing this asset</p>
    #   @return [JSON]
    # @!attribute content
    #   <p>The content for the asset. Provide a single file, a zip bundle, or a sourceUrl to import from an external source.</p>
    #   @return [Types::AssetContent]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier used for idempotent asset creation</p>
    #   @return [String]
    class CreateAssetRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_type,
      :metadata,
      :content,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for creating a new asset</p>
    # @!attribute asset
    #   <p>The asset object</p>
    #   @return [Types::Asset]
    class CreateAssetResponse < Struct.new(
      nil,
      :asset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for creating a new backlog task</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space where the task will be created</p>
    #   @return [String]
    # @!attribute reference
    #   <p>Optional reference information for the task</p>
    #   @return [Types::ReferenceInput]
    # @!attribute task_type
    #   <p>The type of task being created</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the backlog task</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional detailed description of the task</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority level of the task</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Client-provided token for idempotent operations</p>
    #   @return [String]
    class CreateBacklogTaskRequest < Struct.new(
      nil,
      :agent_space_id,
      :reference,
      :task_type,
      :title,
      :description,
      :priority,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing the created backlog task</p>
    # @!attribute task
    #   <p>The newly created task object</p>
    #   @return [Types::Task]
    class CreateBacklogTaskResponse < Struct.new(
      nil,
      :task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for creating a new chat</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space where the chat will be created.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user identifier for the chat. This field is deprecated and will be ignored — the service resolves user identity from the authenticated session.</p>
    #   @deprecated
    #     userId is managed by the service and should not be provided by the caller
    #     Since: 2026-04-15
    #   @return [String]
    # @!attribute user_type
    #   <p>The authentication type of the user</p>
    #   @return [String]
    class CreateChatRequest < Struct.new(
      nil,
      :agent_space_id,
      :user_id,
      :user_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for creating a new chat</p>
    # @!attribute execution_id
    #   <p>The unique identifier for the created execution</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when the chat was created</p>
    #   @return [Time]
    class CreateChatResponse < Struct.new(
      nil,
      :execution_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a new Private Connection.</p>
    # @!attribute name
    #   <p>Unique name for this Private Connection within the account.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>Private Connection mode configuration.</p>
    #   @return [Types::PrivateConnectionMode]
    # @!attribute tags
    #   <p>Tags to add to the Private Connection at creation time.</p>
    #   @return [Hash<String, String>]
    class CreatePrivateConnectionInput < Struct.new(
      nil,
      :name,
      :mode,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the newly created Private Connection summary.</p>
    # @!attribute name
    #   <p>The name of the Private Connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Private Connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The service-managed Resource Gateway ARN. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>IP address or DNS name of the target resource. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>VPC identifier of the service-managed Resource Gateway. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The Resource Configuration ARN. Only present for self-managed Private Connections.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Private Connection.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The expiry time of the certificate associated with the Private Connection. Only present when a certificate is associated.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>DNS resolution mode for the Private Connection's resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>Message describing the reason for a failed Private Connection creation, if applicable.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the created Private Connection.</p>
    #   @return [Hash<String, String>]
    class CreatePrivateConnectionOutput < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for creating a new Trigger</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space where the Trigger will be created</p>
    #   @return [String]
    # @!attribute type
    #   <p>How the new Trigger fires</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition that fires the new Trigger</p>
    #   @return [Types::TriggerCondition]
    # @!attribute action
    #   <p>The action the new Trigger performs when it fires</p>
    #   @return [JSON]
    # @!attribute status
    #   <p>The initial status of the Trigger</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier used for idempotent Trigger creation</p>
    #   @return [String]
    class CreateTriggerRequest < Struct.new(
      nil,
      :agent_space_id,
      :type,
      :condition,
      :action,
      :status,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for creating a new Trigger</p>
    # @!attribute trigger
    #   <p>The Trigger object</p>
    #   @return [Types::Trigger]
    class CreateTriggerResponse < Struct.new(
      nil,
      :trigger,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Cron or rate schedule. Trigger-created custom-agent schedules use an EventBridge flexible window of up to 30 minutes for load distribution.</p>
    # @!attribute expression
    #   <p>EventBridge cron or rate expression that anchors the flexible window</p>
    #   @return [String]
    class CronSchedule < Struct.new(
      nil,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Daily recurrence</p>
    class DailyRecurrence < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authorization configuration for Datadog MCP server (uses authorization discovery only).</p>
    # @!attribute authorization_discovery
    #   <p>Datadog MCP server authorization discovery configuration.</p>
    #   @return [Types::MCPServerAuthorizationDiscoveryConfig]
    class DatadogAuthorizationConfig < Struct.new(
      :authorization_discovery,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AuthorizationDiscovery < DatadogAuthorizationConfig; end
      class Unknown < DatadogAuthorizationConfig; end
    end

    # <p>Complete service details for Datadog MCP server integration.</p>
    # @!attribute name
    #   <p>MCP server name.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>MCP server endpoint URL.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the MCP server.</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>Datadog MCP server authorization configuration (only authorization discovery is supported).</p>
    #   @return [Types::DatadogAuthorizationConfig]
    class DatadogServiceDetails < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deleting an AgentSpace.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    class DeleteAgentSpaceInput < Struct.new(
      nil,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Empty output for successful AgentSpace deletion.</p>
    class DeleteAgentSpaceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for deleting an asset file</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset containing the file</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the file within the asset to delete</p>
    #   @return [String]
    class DeleteAssetFileRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for deleting an asset file</p>
    class DeleteAssetFileResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for deleting an asset</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset to delete</p>
    #   @return [String]
    class DeleteAssetRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for deleting an asset</p>
    class DeleteAssetResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deleting an existing Private Connection.</p>
    # @!attribute name
    #   <p>The name of the Private Connection.</p>
    #   @return [String]
    class DeletePrivateConnectionInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the status of the Private Connection deletion.</p>
    # @!attribute name
    #   <p>The name of the Private Connection.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Private Connection.</p>
    #   @return [String]
    class DeletePrivateConnectionOutput < Struct.new(
      nil,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for deleting a Trigger</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the Trigger</p>
    #   @return [String]
    # @!attribute trigger_id
    #   <p>The unique identifier of the Trigger to delete</p>
    #   @return [String]
    class DeleteTriggerRequest < Struct.new(
      nil,
      :agent_space_id,
      :trigger_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for deleting a Trigger</p>
    class DeleteTriggerResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deregistering a service.</p>
    # @!attribute service_id
    #   <p>The service id to deregister. A service can only be deregistered if it is not associated with any AgentSpace.</p>
    #   @return [String]
    class DeregisterServiceInput < Struct.new(
      nil,
      :service_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Empty output for successful service deregistration.</p>
    class DeregisterServiceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for describing an existing Private Connection.</p>
    # @!attribute name
    #   <p>The name of the Private Connection.</p>
    #   @return [String]
    class DescribePrivateConnectionInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the Private Connection details.</p>
    # @!attribute name
    #   <p>The name of the Private Connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Private Connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The service-managed Resource Gateway ARN. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>IP address or DNS name of the target resource. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>VPC identifier of the service-managed Resource Gateway. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The Resource Configuration ARN. Only present for self-managed Private Connections.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Private Connection.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The expiry time of the certificate associated with the Private Connection. Only present when a certificate is associated.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>DNS resolution mode for the Private Connection's resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>Message describing the reason for a failed Private Connection, if applicable.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the Private Connection.</p>
    #   @return [Hash<String, String>]
    class DescribePrivateConnectionOutput < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for disabling the Operator App for an AgentSpace.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute auth_flow
    #   <p>The authentication flow configured for the operator App. e.g. idc</p>
    #   @return [String]
    class DisableOperatorAppInput < Struct.new(
      nil,
      :agent_space_id,
      :auth_flow,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for removing a service association from an AgentSpace.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The unique identifier of the given association.</p>
    #   @return [String]
    class DisassociateServiceInput < Struct.new(
      nil,
      :agent_space_id,
      :association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Empty output for successful service disassociation.</p>
    class DisassociateServiceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Dynatrace monitoring integration.</p>
    # @!attribute env_id
    #   <p>Dynatrace environment id</p>
    #   @return [String]
    # @!attribute resources
    #   <p>List of Dynatrace resources to monitor</p>
    #   @return [Array<String>]
    class DynatraceConfiguration < Struct.new(
      nil,
      :env_id,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OAuth client credentials configuration for Dynatrace.</p>
    # @!attribute client_name
    #   <p>User friendly OAuth client name specified by end user.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>OAuth client ID for authenticating with the service.</p>
    #   @return [String]
    # @!attribute exchange_parameters
    #   <p>OAuth token exchange parameters for authenticating with the service.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_secret
    #   <p>OAuth client secret for authenticating with the service.</p>
    #   @return [String]
    class DynatraceOAuthClientCredentialsConfig < Struct.new(
      nil,
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authorization configuration options for Dynatrace service.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute o_auth_client_credentials
    #   <p>OAuth client credentials configuration.</p>
    #   @return [Types::DynatraceOAuthClientCredentialsConfig]
    class DynatraceServiceAuthorizationConfig < Struct.new(
      :o_auth_client_credentials,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OAuthClientCredentials < DynatraceServiceAuthorizationConfig; end
      class Unknown < DynatraceServiceAuthorizationConfig; end
    end

    # <p>Complete service details for Dynatrace integration.</p>
    # @!attribute account_urn
    #   <p>Dynatrace resource account urn.</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>Dynatrace OAuth client credentials configuration. Use this when registering with OAuth client credentials flow.</p>
    #   @return [Types::DynatraceServiceAuthorizationConfig]
    class DynatraceServiceDetails < Struct.new(
      nil,
      :account_urn,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for enabling the Operator App for an AgentSpace.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute auth_flow
    #   <p>The authentication flow configured for the operator App. e.g. iam or idc</p>
    #   @return [String]
    # @!attribute operator_app_role_arn
    #   <p>The IAM role end users assume to access AIDevOps APIs</p>
    #   @return [String]
    # @!attribute idc_instance_arn
    #   <p>The IdC instance Arn used to create an IdC auth application</p>
    #   @return [String]
    # @!attribute issuer_url
    #   <p>The OIDC issuer URL of the external Identity Provider</p>
    #   @return [String]
    # @!attribute idp_client_id
    #   <p>The OIDC client ID for the IdP application</p>
    #   @return [String]
    # @!attribute idp_client_secret
    #   <p>The OIDC client secret for the IdP application</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The Identity Provider name (e.g., Entra, Okta, Google)</p>
    #   @return [String]
    class EnableOperatorAppInput < Struct.new(
      nil,
      :agent_space_id,
      :auth_flow,
      :operator_app_role_arn,
      :idc_instance_arn,
      :issuer_url,
      :idp_client_id,
      :idp_client_secret,
      :provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the enabled Operator App configuration.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute operator_app_url
    #   <p>The URL for operators to access the Operator App</p>
    #   @return [String]
    # @!attribute iam
    #   <p>Configuration for IAM-based authentication flow for the Operator App.</p>
    #   @return [Types::IamAuthConfiguration]
    # @!attribute idc
    #   <p>Configuration for AWS Identity Center (IdC) authentication flow for the Operator App.</p>
    #   @return [Types::IdcAuthConfiguration]
    # @!attribute idp
    #   <p>Configuration for external Identity Provider OIDC authentication flow for the Operator App.</p>
    #   @return [Types::IdpAuthConfiguration]
    class EnableOperatorAppOutput < Struct.new(
      nil,
      :agent_space_id,
      :operator_app_url,
      :iam,
      :idc,
      :idp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Event Channel integration.</p>
    class EventChannelConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Service details for Event Channel integration.</p>
    # @!attribute type
    #   <p>The type of event channel</p>
    #   @return [String]
    class EventChannelDetails < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an execution instance with its lifecycle information</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing this execution</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier for this execution</p>
    #   @return [String]
    # @!attribute parent_execution_id
    #   <p>The identifier of the parent execution, if this is a child execution</p>
    #   @return [String]
    # @!attribute agent_sub_task
    #   <p>The specific subtask being executed by the agent</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when this execution was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this execution was last updated</p>
    #   @return [Time]
    # @!attribute execution_status
    #   <p>The current status of this execution</p>
    #   @return [String]
    # @!attribute agent_type
    #   <p>The type of agent that performed this execution.</p>
    #   @return [String]
    # @!attribute uid
    #   <p>The unique identifier for the user session associated with this execution</p>
    #   @return [String]
    class Execution < Struct.new(
      nil,
      :agent_space_id,
      :execution_id,
      :parent_execution_id,
      :agent_sub_task,
      :created_at,
      :updated_at,
      :execution_status,
      :agent_type,
      :uid,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Generic webhook configuration for services that support webhook notifications.</p>
    # @!attribute webhook_url
    #   <p>The webhook URL endpoint</p>
    #   @return [String]
    # @!attribute webhook_id
    #   <p>The unique webhook identifier</p>
    #   @return [String]
    # @!attribute webhook_type
    #   <p>The webhook authentication type</p>
    #   @return [String]
    # @!attribute webhook_secret
    #   <p>The webhook secret for authentication</p>
    #   @return [String]
    # @!attribute api_key
    #   <p>API Key for API Key webhook authentication</p>
    #   @return [String]
    class GenericWebhook < Struct.new(
      nil,
      :webhook_url,
      :webhook_id,
      :webhook_type,
      :webhook_secret,
      :api_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetAccountUsageInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute monthly_account_investigation_hours
    #   <p>Monthly investigation hours usage and limit for an account</p>
    #   @return [Types::UsageMetric]
    # @!attribute monthly_account_evaluation_hours
    #   <p>Monthly evaluation hours usage and limit for an account</p>
    #   @return [Types::UsageMetric]
    # @!attribute monthly_account_system_learning_hours
    #   <p>Monthly system learning hours usage and limit for an account</p>
    #   @return [Types::UsageMetric]
    # @!attribute monthly_account_on_demand_hours
    #   <p>Monthly on-demand hours usage and limit for an account</p>
    #   @return [Types::UsageMetric]
    # @!attribute monthly_account_grader_hours
    #   <p>Represents a usage metric with its configured limit and current usage value.</p>
    #   @return [Types::UsageMetric]
    # @!attribute usage_period_start_time
    #   <p>The start time of the usage tracking period</p>
    #   @return [Time]
    # @!attribute usage_period_end_time
    #   <p>The end time of the usage tracking period</p>
    #   @return [Time]
    class GetAccountUsageOutput < Struct.new(
      nil,
      :monthly_account_investigation_hours,
      :monthly_account_evaluation_hours,
      :monthly_account_system_learning_hours,
      :monthly_account_on_demand_hours,
      :monthly_account_grader_hours,
      :usage_period_start_time,
      :usage_period_end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving a specific AgentSpace by ID.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute included_data
    #   <p>How much data to include in the response.</p>
    #   @return [String]
    class GetAgentSpaceInput < Struct.new(
      nil,
      :agent_space_id,
      :included_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the requested AgentSpace details.</p>
    # @!attribute agent_space
    #   <p>Represents a complete AgentSpace with all its properties, timestamps, encryption settings, and unique identifier.</p>
    #   @return [Types::AgentSpace]
    # @!attribute tags
    #   <p>Tags associated with the AgentSpace.</p>
    #   @return [Hash<String, String>]
    class GetAgentSpaceOutput < Struct.new(
      nil,
      :agent_space,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for getting an asset's content as a zip bundle</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset</p>
    #   @return [String]
    # @!attribute asset_version
    #   <p>The specific asset version to export. If omitted, the latest version is returned.</p>
    #   @return [Integer]
    class GetAssetContentRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :asset_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for getting an asset's content as a zip bundle</p>
    # @!attribute content
    #   <p>The asset content as a zip file</p>
    #   @return [Types::AssetZipContent]
    # @!attribute version
    #   <p>The asset version this content belongs to</p>
    #   @return [Integer]
    class GetAssetContentResponse < Struct.new(
      nil,
      :content,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for getting an asset file</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset containing the file</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the file within the asset to retrieve</p>
    #   @return [String]
    # @!attribute asset_version
    #   <p>The specific asset version to retrieve the file from. If omitted, the latest version is returned.</p>
    #   @return [Integer]
    class GetAssetFileRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :path,
      :asset_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for getting an asset file</p>
    # @!attribute file
    #   <p>The asset file object</p>
    #   @return [Types::AssetFile]
    class GetAssetFileResponse < Struct.new(
      nil,
      :file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for getting an asset</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset to retrieve</p>
    #   @return [String]
    # @!attribute asset_version
    #   <p>The specific version of the asset to retrieve. If omitted, the latest version is returned.</p>
    #   @return [Integer]
    class GetAssetRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :asset_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for getting an asset</p>
    # @!attribute asset
    #   <p>The asset object</p>
    #   @return [Types::Asset]
    class GetAssetResponse < Struct.new(
      nil,
      :asset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving a specific service association.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The unique identifier of the given association.</p>
    #   @return [String]
    class GetAssociationInput < Struct.new(
      nil,
      :agent_space_id,
      :association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the requested association details.</p>
    # @!attribute association
    #   <p>Represents a service association within an AgentSpace, defining how the agent interacts with external services.</p>
    #   @return [Types::Association]
    class GetAssociationOutput < Struct.new(
      nil,
      :association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for retrieving a specific backlog task</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the task</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the task to retrieve</p>
    #   @return [String]
    class GetBacklogTaskRequest < Struct.new(
      nil,
      :agent_space_id,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing the requested backlog task</p>
    # @!attribute task
    #   <p>The requested task object</p>
    #   @return [Types::Task]
    class GetBacklogTaskResponse < Struct.new(
      nil,
      :task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving Operator App configuration.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    class GetOperatorAppInput < Struct.new(
      nil,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the Operator App configuration including authentication details.</p>
    # @!attribute operator_app_url
    #   <p>The URL for operators to access the Operator App</p>
    #   @return [String]
    # @!attribute iam
    #   <p>Configuration for IAM-based authentication flow for the Operator App.</p>
    #   @return [Types::IamAuthConfiguration]
    # @!attribute idc
    #   <p>Configuration for AWS Identity Center (IdC) authentication flow for the Operator App.</p>
    #   @return [Types::IdcAuthConfiguration]
    # @!attribute idp
    #   <p>Configuration for external Identity Provider OIDC authentication flow for the Operator App.</p>
    #   @return [Types::IdpAuthConfiguration]
    class GetOperatorAppOutput < Struct.new(
      nil,
      :operator_app_url,
      :iam,
      :idc,
      :idp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for retrieving a specific recommendation</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the recommendation</p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The unique identifier for the recommendation to retrieve</p>
    #   @return [String]
    # @!attribute recommendation_version
    #   <p>Specific version of the recommendation to retrieve. If not specified, returns the latest version.</p>
    #   @return [Integer]
    class GetRecommendationRequest < Struct.new(
      nil,
      :agent_space_id,
      :recommendation_id,
      :recommendation_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing the requested recommendation</p>
    # @!attribute recommendation
    #   <p>The requested recommendation</p>
    #   @return [Types::Recommendation]
    class GetRecommendationResponse < Struct.new(
      nil,
      :recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving a specific service association.</p>
    # @!attribute service_id
    #   <p>The unique identifier of the given service.</p>
    #   @return [String]
    class GetServiceInput < Struct.new(
      nil,
      :service_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the requested service details.</p>
    # @!attribute service
    #   <p>Represents a registered service with its configuration and accessible resources.</p>
    #   @return [Types::RegisteredService]
    # @!attribute tags
    #   <p>Tags associated with the Service.</p>
    #   @return [Hash<String, String>]
    class GetServiceOutput < Struct.new(
      nil,
      :service,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for getting a Trigger</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the Trigger</p>
    #   @return [String]
    # @!attribute trigger_id
    #   <p>The unique identifier of the Trigger to retrieve</p>
    #   @return [String]
    class GetTriggerRequest < Struct.new(
      nil,
      :agent_space_id,
      :trigger_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for getting a Trigger</p>
    # @!attribute trigger
    #   <p>The Trigger object</p>
    #   @return [Types::Trigger]
    class GetTriggerResponse < Struct.new(
      nil,
      :trigger,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for GitHub repository integration.</p>
    # @!attribute repo_name
    #   <p>Associated Github repo name</p>
    #   @return [String]
    # @!attribute repo_id
    #   <p>Associated Github repo ID</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The GitHub repository owner name.</p>
    #   @return [String]
    # @!attribute owner_type
    #   <p>Type of GitHub repository owner.</p>
    #   @return [String]
    # @!attribute instance_identifier
    #   <p>GitHub instance identifier (e.g., github.com or github.enterprise.com)</p>
    #   @return [String]
    # @!attribute runtime_role_arn
    #   <p>Optional role ARN that AIDevOps assumes at runtime for automatic verification testing and VPC connectivity on this association.</p>
    #   @deprecated
    #     Superseded by the ReleaseManagement association. Configure the runtime role on the ReleaseManagement association and reference it via releaseManagementAssociationId.
    #     Since: 2026-08-04
    #   @return [String]
    # @!attribute release_management_association_id
    #   <p>The identifier of the release management association that this repository maps to for automatic verification testing.</p>
    #   @return [String]
    class GitHubConfiguration < Struct.new(
      nil,
      :repo_name,
      :repo_id,
      :owner,
      :owner_type,
      :instance_identifier,
      :runtime_role_arn,
      :release_management_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for GitLab project integration.</p>
    # @!attribute project_id
    #   <p>GitLab numeric project ID.</p>
    #   @return [String]
    # @!attribute project_path
    #   <p>Full GitLab project path (e.g., namespace/project-name).</p>
    #   @return [String]
    # @!attribute instance_identifier
    #   <p>GitLab instance identifier (e.g., gitlab.com or e2e.gamma.dev.us-east-1.gitlab.falco.ai.aws.dev)</p>
    #   @return [String]
    # @!attribute runtime_role_arn
    #   <p>Optional role ARN that AIDevOps assumes at runtime for automatic verification testing and VPC connectivity on this association.</p>
    #   @deprecated
    #     Superseded by the ReleaseManagement association. Configure the runtime role on the ReleaseManagement association and reference it via releaseManagementAssociationId.
    #     Since: 2026-08-04
    #   @return [String]
    # @!attribute release_management_association_id
    #   <p>The identifier of the release management association that this project maps to for automatic verification testing.</p>
    #   @return [String]
    class GitLabConfiguration < Struct.new(
      nil,
      :project_id,
      :project_path,
      :instance_identifier,
      :runtime_role_arn,
      :release_management_association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Service details for GitLab integration.</p>
    # @!attribute target_url
    #   <p>GitLab instance URL (e.g., https://gitlab.com or self-hosted instance).</p>
    #   @return [String]
    # @!attribute token_type
    #   <p>Type of GitLab access token</p>
    #   @return [String]
    # @!attribute token_value
    #   <p>GitLab access token value</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>Optional GitLab group ID for group-level access tokens</p>
    #   @return [String]
    class GitLabDetails < Struct.new(
      nil,
      :target_url,
      :token_type,
      :token_value,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a goal with all its properties and metadata</p>
    # @!attribute agent_space_arn
    #   <p>The unique identifier for the agent space containing this goal</p>
    #   @return [String]
    # @!attribute goal_id
    #   <p>The unique identifier for this goal</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the goal</p>
    #   @return [String]
    # @!attribute content
    #   <p>Content of the goal</p>
    #   @return [Types::GoalContent]
    # @!attribute status
    #   <p>Current status of the goal itself</p>
    #   @return [String]
    # @!attribute goal_type
    #   <p>Type of goal based on its origin</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when this goal was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this goal was last updated</p>
    #   @return [Time]
    # @!attribute last_evaluated_at
    #   <p>Timestamp when the goal was last evaluated</p>
    #   @return [Time]
    # @!attribute last_task_id
    #   <p>ID of the most recent task associated with this goal</p>
    #   @return [String]
    # @!attribute last_successful_task_id
    #   <p>ID of the most recent successful task associated with this goal</p>
    #   @return [String]
    # @!attribute version
    #   <p>Version number for optimistic locking</p>
    #   @return [Integer]
    # @!attribute evaluation_schedule
    #   <p>Goal Schedule. Allows to schedule the goal to run periodically, as well as disable a goal temporarily</p>
    #   @return [Types::GoalSchedule]
    class Goal < Struct.new(
      nil,
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
      :evaluation_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:goal_type] = 'ONCALL_REPORT' unless options.key?(:goal_type)
        super
      end
    end

    # <p>Content of a goal</p>
    # @!attribute description
    #   <p>A detailed description of the goal.</p>
    #   @return [String]
    # @!attribute objectives
    #   <p>The objectives to be achieved for this goal.</p>
    #   @return [String]
    class GoalContent < Struct.new(
      nil,
      :description,
      :objectives,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Schedule configuration for goal evaluations</p>
    # @!attribute state
    #   <p>Whether the schedule is enabled or disabled</p>
    #   @return [String]
    # @!attribute expression
    #   <p>Schedule expression (e.g., 'rate(7 days)')</p>
    #   @return [String]
    class GoalSchedule < Struct.new(
      nil,
      :state,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Schedule configuration for updating goal evaluations</p>
    # @!attribute state
    #   <p>Whether the schedule is enabled or disabled</p>
    #   @return [String]
    class GoalScheduleInput < Struct.new(
      nil,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complete service details for Grafana MCP server integration.</p>
    # @!attribute name
    #   <p>MCP server name.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>MCP server endpoint URL.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the MCP server.</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>Grafana MCP server authorization configuration (experimental).</p>
    #   @return [Types::MCPServerAuthorizationConfig]
    class GrafanaServiceDetails < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for IAM-based authentication flow for the Operator App.</p>
    # @!attribute operator_app_role_arn
    #   <p>The IAM role end users assume to access AIDevOps APIs</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the Operator App IAM auth flow was enabled.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the Operator App IAM auth flow was updated.</p>
    #   @return [Time]
    class IamAuthConfiguration < Struct.new(
      nil,
      :operator_app_role_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AWS Identity Center (IdC) authentication flow for the Operator App.</p>
    # @!attribute operator_app_role_arn
    #   <p>The IAM role end users assume to access AIDevOps APIs</p>
    #   @return [String]
    # @!attribute idc_instance_arn
    #   <p>The IdC instance Arn used to create an IdC auth application</p>
    #   @return [String]
    # @!attribute idc_application_arn
    #   <p>The IdC application Arn created for IdC auth</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the Operator App IdC auth flow was enabled.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the Operator App IdC auth flow was updated.</p>
    #   @return [Time]
    class IdcAuthConfiguration < Struct.new(
      nil,
      :operator_app_role_arn,
      :idc_instance_arn,
      :idc_application_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Calls to the customer Identity Center have failed</p>
    # @!attribute message
    #   <p>Detailed error message describing why the call fails</p>
    #   @return [String]
    # @!attribute underlying_error_code
    #   <p>The Idc error code</p>
    #   @return [String]
    class IdentityCenterServiceException < Struct.new(
      nil,
      :message,
      :underlying_error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for external Identity Provider OIDC authentication flow for the Operator App.</p>
    # @!attribute issuer_url
    #   <p>The OIDC issuer URL of the external Identity Provider</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The OIDC client ID for the IdP application</p>
    #   @return [String]
    # @!attribute operator_app_role_arn
    #   <p>The IAM role end users assume to access AIDevOps APIs</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The Identity Provider name (e.g., Entra, Okta, Google)</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the Operator App IdP auth flow was enabled.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the Operator App IdP auth flow was updated.</p>
    #   @return [Time]
    class IdpAuthConfiguration < Struct.new(
      nil,
      :issuer_url,
      :client_id,
      :operator_app_role_arn,
      :provider,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when an unexpected error occurs in the processing of a request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters provided in the request are invalid.</p>
    # @!attribute message
    #   <p>Detailed error message describing which parameter is invalid and why.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a journal record containing execution details and content</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing this record</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution ID associated with this journal record</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier for this journal record</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of this journal record</p>
    #   @return [JSON]
    # @!attribute created_at
    #   <p>Timestamp when this journal record was created</p>
    #   @return [Time]
    # @!attribute record_type
    #   <p>The type of this journal record</p>
    #   @return [String]
    # @!attribute user_reference
    #   <p>Reference to the user associated with this journal record</p>
    #   @return [Types::UserReference]
    class JournalRecord < Struct.new(
      nil,
      :agent_space_id,
      :execution_id,
      :record_id,
      :content,
      :created_at,
      :record_type,
      :user_reference,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing AgentSpaces with pagination support.</p>
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for the next page of results.</p>
    #   @return [String]
    # @!attribute included_data
    #   <p>How much data to include in the response.</p>
    #   @return [String]
    class ListAgentSpacesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :included_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing a list of AgentSpaces and pagination token.</p>
    # @!attribute next_token
    #   <p>Token to retrieve the next page of results, if there are more results.</p>
    #   @return [String]
    # @!attribute agent_spaces
    #   <p>The list of AgentSpaces.</p>
    #   @return [Array<Types::AgentSpace>]
    class ListAgentSpacesOutput < Struct.new(
      nil,
      :next_token,
      :agent_spaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing asset files</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset whose files to list</p>
    #   @return [String]
    # @!attribute asset_version
    #   <p>The specific asset version to list files from. If omitted, files from the latest version are returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single response</p>
    #   @return [Integer]
    class ListAssetFilesRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :asset_version,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing asset files</p>
    # @!attribute items
    #   <p>The list of asset file summaries</p>
    #   @return [Array<Types::AssetFileSummary>]
    # @!attribute next_token
    #   <p>Pagination token to retrieve the next page of results. Absent when there are no more results.</p>
    #   @return [String]
    class ListAssetFilesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing asset types</p>
    # @!attribute next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single response</p>
    #   @return [Integer]
    class ListAssetTypesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing asset types</p>
    # @!attribute items
    #   <p>The list of supported asset types</p>
    #   @return [Array<Types::AssetTypeSummary>]
    # @!attribute next_token
    #   <p>Pagination token to retrieve the next page of results. Absent when there are no more results.</p>
    #   @return [String]
    class ListAssetTypesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing asset versions</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset whose versions to list</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single response</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    #   @return [String]
    class ListAssetVersionsRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing asset versions</p>
    # @!attribute items
    #   <p>The list of version metadata for the asset</p>
    #   @return [Array<Types::AssetVersionMetadata>]
    # @!attribute next_token
    #   <p>Pagination token to retrieve the next page of results. Absent when there are no more results.</p>
    #   @return [String]
    class ListAssetVersionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing assets</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space to list assets from</p>
    #   @return [String]
    # @!attribute asset_type
    #   <p>Filter results to only assets of this type</p>
    #   @return [String]
    # @!attribute updated_after
    #   <p>Filter results to only assets updated after this timestamp</p>
    #   @return [Time]
    # @!attribute updated_before
    #   <p>Filter results to only assets updated before this timestamp</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single response</p>
    #   @return [Integer]
    class ListAssetsRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_type,
      :updated_after,
      :updated_before,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing assets</p>
    # @!attribute items
    #   <p>The list of assets for the agent space</p>
    #   @return [Array<Types::Asset>]
    # @!attribute next_token
    #   <p>Pagination token to retrieve the next page of results. Absent when there are no more results.</p>
    #   @return [String]
    class ListAssetsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing service associations within an AgentSpace.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for the next page of results.</p>
    #   @return [String]
    # @!attribute filter_service_types
    #   <p>A comma-separated list of service types to filter list associations output</p>
    #   @return [String]
    class ListAssociationsInput < Struct.new(
      nil,
      :agent_space_id,
      :max_results,
      :next_token,
      :filter_service_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing a list of service associations and pagination token.</p>
    # @!attribute next_token
    #   <p>Token to retrieve the next page of results, if there are more results.</p>
    #   @return [String]
    # @!attribute associations
    #   <p>The list of associations.</p>
    #   @return [Array<Types::Association>]
    class ListAssociationsOutput < Struct.new(
      nil,
      :next_token,
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing backlog tasks with filtering, sorting, and pagination support</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the tasks</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filter criteria to apply when listing tasks Filtering restrictions: - Each filter field list is limited to a single value - Filtering by Priority and Status at the same time when not filtering by Type is not permitted - Timestamp filters (createdAfter, createdBefore) can be combined with other filters when not sorting by priority</p>
    #   @return [Types::TaskFilter]
    # @!attribute limit
    #   <p>Maximum number of tasks to return in a single response (1-1000, default: 100)</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results</p>
    #   @return [String]
    # @!attribute sort_field
    #   <p>Field to sort by Sorting restrictions: - Only sorting on createdAt is supported when using priority or status filters alone. - Sorting by priority is not supported when using Timestamp filters (createdAfter, createdBefore)</p>
    #   @return [String]
    # @!attribute order
    #   <p>Sort order for the tasks based on sortField (default: DESC)</p>
    #   @return [String]
    class ListBacklogTasksRequest < Struct.new(
      nil,
      :agent_space_id,
      :filter,
      :limit,
      :next_token,
      :sort_field,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing a list of backlog tasks</p>
    # @!attribute tasks
    #   <p>List of backlog tasks</p>
    #   @return [Array<Types::Task>]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results, if more results are available</p>
    #   @return [String]
    class ListBacklogTasksResponse < Struct.new(
      nil,
      :tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing chats</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space to list chats from.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user identifier to list chats for. This field is deprecated and will be ignored — the service resolves user identity from the authenticated session.</p>
    #   @deprecated
    #     userId is managed by the service and should not be provided by the caller
    #     Since: 2026-04-15
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for pagination</p>
    #   @return [String]
    class ListChatsRequest < Struct.new(
      nil,
      :agent_space_id,
      :user_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing chats</p>
    # @!attribute executions
    #   <p>List of recent chat executions</p>
    #   @return [Array<Types::ChatExecution>]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results</p>
    #   @return [String]
    class ListChatsResponse < Struct.new(
      nil,
      :executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing executions</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the task whose executions to retrieve</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Maximum number of executions to return</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for pagination to retrieve the next set of results</p>
    #   @return [String]
    class ListExecutionsRequest < Struct.new(
      nil,
      :agent_space_id,
      :task_id,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing executions</p>
    # @!attribute executions
    #   <p>List of executions</p>
    #   @return [Array<Types::Execution>]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results, if available</p>
    #   @return [String]
    class ListExecutionsResponse < Struct.new(
      nil,
      :executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing goals</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter goals by goal status</p>
    #   @return [String]
    # @!attribute goal_type
    #   <p>Filter goals by goal type</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Maximum number of goals to return</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token for the next set of results</p>
    #   @return [String]
    class ListGoalsRequest < Struct.new(
      nil,
      :agent_space_id,
      :status,
      :goal_type,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing the list of goals</p>
    # @!attribute goals
    #   <p>List of goals matching the criteria</p>
    #   @return [Array<Types::Goal>]
    # @!attribute next_token
    #   <p>Pagination token for the next set of results</p>
    #   @return [String]
    class ListGoalsResponse < Struct.new(
      nil,
      :goals,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing journal records with filtering and pagination support</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the execution</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier of the execution whose journal records to retrieve</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Maximum number of records to return in a single response (1-100, default: 100)</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results</p>
    #   @return [String]
    # @!attribute record_type
    #   <p>Filter records by type (empty string returns all types)</p>
    #   @return [String]
    # @!attribute order
    #   <p>Sort order for the records based on timestamp (default: DESC)</p>
    #   @return [String]
    class ListJournalRecordsRequest < Struct.new(
      nil,
      :agent_space_id,
      :execution_id,
      :limit,
      :next_token,
      :record_type,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing a list of journal records</p>
    # @!attribute records
    #   <p>List of journal records matching the request criteria</p>
    #   @return [Array<Types::JournalRecord>]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results, if more results are available</p>
    #   @return [String]
    class ListJournalRecordsResponse < Struct.new(
      nil,
      :records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing pending messages with filtering and pagination support</p>
    # @!attribute agent_space_id
    #   <p>Unique identifier for an agent space (allows alphanumeric characters and hyphens; 1-64 characters)</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier of the execution whose journal records to retrieve</p>
    #   @return [String]
    class ListPendingMessagesRequest < Struct.new(
      nil,
      :agent_space_id,
      :execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing a list of pending messages</p>
    # @!attribute agent_space_id
    #   <p>Unique identifier for an agent space (allows alphanumeric characters and hyphens; 1-64 characters)</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier for the execution.</p>
    #   @return [String]
    # @!attribute messages
    #   <p>The list of pending messages for the execution.</p>
    #   @return [Array<Types::PendingMessage>]
    # @!attribute created_at
    #   <p>Timestamp when the pending messages were created.</p>
    #   @return [Time]
    class ListPendingMessagesResponse < Struct.new(
      nil,
      :agent_space_id,
      :execution_id,
      :messages,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:messages] = [] unless options.key?(:messages)
        super
      end
    end

    # <p>Input for listing Private Connections in the caller's account.</p>
    class ListPrivateConnectionsInput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the list of Private Connections.</p>
    # @!attribute private_connections
    #   <p>The list of Private Connections.</p>
    #   @return [Array<Types::PrivateConnectionSummary>]
    class ListPrivateConnectionsOutput < Struct.new(
      nil,
      :private_connections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing recommendations with filtering and pagination support</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the recommendations</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>Optional task ID to filter recommendations by specific task</p>
    #   @return [String]
    # @!attribute goal_id
    #   <p>Optional goal ID to filter recommendations by specific goal</p>
    #   @return [String]
    # @!attribute status
    #   <p>Optional status to filter recommendations by their current status</p>
    #   @return [String]
    # @!attribute priority
    #   <p>Optional priority to filter recommendations by priority level</p>
    #   @return [String]
    # @!attribute limit
    #   <p>Maximum number of recommendations to return in a single response</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results</p>
    #   @return [String]
    class ListRecommendationsRequest < Struct.new(
      nil,
      :agent_space_id,
      :task_id,
      :goal_id,
      :status,
      :priority,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing a list of recommendations</p>
    # @!attribute recommendations
    #   <p>List of recommendations matching the request criteria</p>
    #   @return [Array<Types::Recommendation>]
    # @!attribute next_token
    #   <p>Token for retrieving the next page of results, if more results are available</p>
    #   @return [String]
    class ListRecommendationsResponse < Struct.new(
      nil,
      :recommendations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing registered services with optional filtering by service type.</p>
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Token for the next page of results.</p>
    #   @return [String]
    # @!attribute filter_service_type
    #   <p>Optional filter to list only services of a specific type.</p>
    #   @return [String]
    class ListServicesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :filter_service_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing a list of registered services and pagination token.</p>
    # @!attribute next_token
    #   <p>Token to retrieve the next page of results, if there are more results.</p>
    #   @return [String]
    # @!attribute services
    #   <p>List of registered services.</p>
    #   @return [Array<Types::RegisteredService>]
    class ListServicesOutput < Struct.new(
      nil,
      :next_token,
      :services,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing Triggers in an agent space</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space whose Triggers should be listed</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter results to Triggers in this status</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination token from a previous response to retrieve the next page of results</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single response</p>
    #   @return [Integer]
    class ListTriggersRequest < Struct.new(
      nil,
      :agent_space_id,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing Triggers</p>
    # @!attribute items
    #   <p>The list of Triggers</p>
    #   @return [Array<Types::Trigger>]
    # @!attribute next_token
    #   <p>Pagination token to retrieve the next page of results</p>
    #   @return [String]
    class ListTriggersResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing service webhooks within an association.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The unique identifier of the given association.</p>
    #   @return [String]
    class ListWebhooksInput < Struct.new(
      nil,
      :agent_space_id,
      :association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing a list of service association webhooks.</p>
    # @!attribute webhooks
    #   <p>The list of association webhooks.</p>
    #   @return [Array<Types::Webhook>]
    class ListWebhooksOutput < Struct.new(
      nil,
      :webhooks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>API key configuration for MCP server.</p>
    # @!attribute api_key_name
    #   <p>User friendly API key name specified by end user.</p>
    #   @return [String]
    # @!attribute api_key_value
    #   <p>API key value for authenticating with the service.</p>
    #   @return [String]
    # @!attribute api_key_header
    #   <p>HTTP header name to send the API key in requests to the service.</p>
    #   @return [String]
    class MCPServerAPIKeyConfig < Struct.new(
      nil,
      :api_key_name,
      :api_key_value,
      :api_key_header,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authorization configuration options for MCP server, supporting OAuth, API key, bearer token, and authorization discovery methods.</p>
    # @!attribute o_auth_client_credentials
    #   <p>MCP server configuration with OAuth client credentials.</p>
    #   @return [Types::MCPServerOAuthClientCredentialsConfig]
    # @!attribute o_auth3_lo
    #   <p>MCP server configuration with OAuth 3LO.</p>
    #   @return [Types::MCPServerOAuth3LOConfig]
    # @!attribute api_key
    #   <p>MCP server configuration with API key authentication.</p>
    #   @return [Types::MCPServerAPIKeyConfig]
    # @!attribute bearer_token
    #   <p>MCP server configuration with Bearer token (RFC 6750).</p>
    #   @return [Types::MCPServerBearerTokenConfig]
    # @!attribute custom_headers
    #   <p>MCP server configuration with one or more custom authentication headers.</p>
    #   @return [Types::MCPServerCustomHeadersConfig]
    # @!attribute authorization_discovery
    #   <p>MCP server authorization discovery configuration.</p>
    #   @return [Types::MCPServerAuthorizationDiscoveryConfig]
    class MCPServerAuthorizationConfig < Struct.new(
      :o_auth_client_credentials,
      :o_auth3_lo,
      :api_key,
      :bearer_token,
      :custom_headers,
      :authorization_discovery,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OAuthClientCredentials < MCPServerAuthorizationConfig; end
      class OAuth3LO < MCPServerAuthorizationConfig; end
      class ApiKey < MCPServerAuthorizationConfig; end
      class BearerToken < MCPServerAuthorizationConfig; end
      class CustomHeaders < MCPServerAuthorizationConfig; end
      class AuthorizationDiscovery < MCPServerAuthorizationConfig; end
      class Unknown < MCPServerAuthorizationConfig; end
    end

    # <p>Authorization discovery configuration for MCP server.</p>
    # @!attribute return_to_endpoint
    #   <p>The endpoint to return to after OAuth flow completes (must be AWS console domain)</p>
    #   @return [String]
    class MCPServerAuthorizationDiscoveryConfig < Struct.new(
      nil,
      :return_to_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Bearer token configuration for MCP server (RFC 6750).</p>
    # @!attribute token_name
    #   <p>User friendly bearer token name specified by end user.</p>
    #   @return [String]
    # @!attribute token_value
    #   <p>Bearer token value in alphanumeric for authenticating with the service.</p>
    #   @return [String]
    # @!attribute authorization_header
    #   <p>HTTP header name to send the bearer token in requests to the service. Defaults to 'Authorization' per RFC 6750.</p>
    #   @return [String]
    class MCPServerBearerTokenConfig < Struct.new(
      nil,
      :token_name,
      :token_value,
      :authorization_header,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:authorization_header] = 'Authorization' unless options.key?(:authorization_header)
        super
      end
    end

    # <p>Configuration for Model Context Protocol (MCP) server integration.</p>
    # @!attribute tools
    #   <p>List of MCP tools can be used with the association.</p>
    #   @return [Array<String>]
    # @!attribute tool_details
    #   <p>List of MCP tools with their access categorization. When provided, the tool names must match those in the tools member.</p>
    #   @return [Array<Types::MCPToolDetail>]
    class MCPServerConfiguration < Struct.new(
      nil,
      :tools,
      :tool_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for authenticating to an MCP server with custom HTTP headers.</p>
    # @!attribute headers
    #   <p>Custom headers map.</p>
    #   @return [Hash<String, String>]
    class MCPServerCustomHeadersConfig < Struct.new(
      nil,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Mixin for webhook update support.</p>
    # @!attribute enabled_elevated_tools
    #   <p>The subset of elevated-access tools enabled for this integration.</p>
    #   @return [Array<Types::MCPToolDetail>]
    class MCPServerDatadogConfiguration < Struct.new(
      nil,
      :enabled_elevated_tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complete service details for MCP server integration.</p>
    # @!attribute name
    #   <p>MCP server name.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>MCP server endpoint URL.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the MCP server.</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>MCP server authorization configuration.</p>
    #   @return [Types::MCPServerAuthorizationConfig]
    class MCPServerDetails < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Grafana MCP server integration, used with an AWS-hosted MCP server.</p>
    # @!attribute endpoint
    #   <p>Grafana instance URL (e.g., https://your-instance.grafana.net)</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The Grafana organization ID that can be used.</p>
    #   @return [String]
    # @!attribute tools
    #   <p>List of MCP tools that can be used.</p>
    #   @return [Array<String>]
    # @!attribute enabled_elevated_tools
    #   <p>The subset of elevated-access tools enabled for this integration.</p>
    #   @return [Array<Types::MCPToolDetail>]
    class MCPServerGrafanaConfiguration < Struct.new(
      nil,
      :endpoint,
      :organization_id,
      :tools,
      :enabled_elevated_tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Mixin for webhook update support.</p>
    # @!attribute account_id
    #   <p>New Relic Account ID</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>MCP server endpoint URL (e.g., https://mcp.newrelic.com/mcp/)</p>
    #   @return [String]
    class MCPServerNewRelicConfiguration < Struct.new(
      nil,
      :account_id,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OAuth 3-legged authorization configuration for MCP server.</p>
    # @!attribute client_name
    #   <p>User friendly OAuth client name specified by end user.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>OAuth client ID for authenticating with the service.</p>
    #   @return [String]
    # @!attribute exchange_parameters
    #   <p>OAuth token exchange parameters for authenticating with the service.</p>
    #   @return [Hash<String, String>]
    # @!attribute return_to_endpoint
    #   <p>The endpoint to return to after OAuth flow completes (must be AWS console domain)</p>
    #   @return [String]
    # @!attribute authorization_url
    #   <p>OAuth authorization URL for 3LO authentication.</p>
    #   @return [String]
    # @!attribute exchange_url
    #   <p>OAuth token exchange URL.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>OAuth client secret for authenticating with the service. Required for confidential clients or when PKCE is not supported. Optional for public clients using PKCE.</p>
    #   @return [String]
    # @!attribute support_code_challenge
    #   <p>Whether the service supports PKCE (Proof Key for Code Exchange) for enhanced security during the OAuth flow.</p>
    #   @return [Boolean]
    # @!attribute scopes
    #   <p>OAuth scopes for 3LO authentication. The service will always request scope offline_access.</p>
    #   @return [Array<String>]
    class MCPServerOAuth3LOConfig < Struct.new(
      nil,
      :client_name,
      :client_id,
      :exchange_parameters,
      :return_to_endpoint,
      :authorization_url,
      :exchange_url,
      :client_secret,
      :support_code_challenge,
      :scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:support_code_challenge] = false unless options.key?(:support_code_challenge)
        super
      end
    end

    # <p>OAuth client credentials configuration for MCP server.</p>
    # @!attribute client_name
    #   <p>User friendly OAuth client name specified by end user.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>OAuth client ID for authenticating with the service.</p>
    #   @return [String]
    # @!attribute exchange_parameters
    #   <p>OAuth token exchange parameters for authenticating with the service.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_secret
    #   <p>OAuth client secret for authenticating with the service.</p>
    #   @return [String]
    # @!attribute exchange_url
    #   <p>OAuth token exchange URL.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>OAuth scopes for 3LO authentication. The service will always request scope offline_access.</p>
    #   @return [Array<String>]
    class MCPServerOAuthClientCredentialsConfig < Struct.new(
      nil,
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret,
      :exchange_url,
      :scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authorization configuration for SigV4-authenticated MCP server.</p>
    # @!attribute region
    #   <p>AWS region for SigV4 signing. Use '*' for SigV4a multi-region signing.</p>
    #   @return [String]
    # @!attribute service
    #   <p>AWS service name for SigV4 signing.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>Deprecated — use mcpRoleArn instead. IAM role ARN to assume for SigV4 signing.</p>
    #   @deprecated
    #     Use mcpRoleArn instead.
    #     Since: 2026-05-27
    #   @return [String]
    # @!attribute mcp_role_arn
    #   <p>IAM role ARN to assume for SigV4 signing. Optional — when omitted, credentials are resolved at runtime via a monitor account association.</p>
    #   @return [String]
    # @!attribute custom_headers
    #   <p>Custom headers for the SigV4 MCP server.</p>
    #   @return [Hash<String, String>]
    class MCPServerSigV4AuthorizationConfig < Struct.new(
      nil,
      :region,
      :service,
      :role_arn,
      :mcp_role_arn,
      :custom_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:role_arn] = '' unless options.key?(:role_arn)
        super
      end
    end

    # <p>Configuration for SigV4-authenticated MCP server integration.</p>
    # @!attribute tools
    #   <p>List of MCP tools available for the association.</p>
    #   @return [Array<String>]
    # @!attribute tool_details
    #   <p>List of MCP tools with their access categorization. When provided, the tool names must match those in the tools member.</p>
    #   @return [Array<Types::MCPToolDetail>]
    class MCPServerSigV4Configuration < Struct.new(
      nil,
      :tools,
      :tool_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complete service details for SigV4-authenticated MCP server integration.</p>
    # @!attribute name
    #   <p>MCP server name.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>MCP server endpoint URL.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the MCP server.</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>MCP Server SigV4 authorization configuration.</p>
    #   @return [Types::MCPServerSigV4AuthorizationConfig]
    class MCPServerSigV4ServiceDetails < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Mixin for webhook update support.</p>
    class MCPServerSplunkConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An MCP tool together with its access categorization.</p>
    # @!attribute name
    #   <p>The name of the MCP tool.</p>
    #   @return [String]
    # @!attribute tool_classification
    #   <p>The access categorization of the MCP tool.</p>
    #   @return [String]
    class MCPToolDetail < Struct.new(
      nil,
      :name,
      :tool_classification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A message in a conversation, either from the user or the assistant.</p>
    # @!attribute user_message
    #   <p>A message from the user.</p>
    #   @return [Array<Types::UserMessageBlock>]
    # @!attribute assistant_message
    #   <p>A message from the assistant.</p>
    #   @return [Array<Types::AssistantMessageBlock>]
    class Message < Struct.new(
      :user_message,
      :assistant_message,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UserMessage < Message; end
      class AssistantMessage < Message; end
      class Unknown < Message; end
    end

    # <p>Monthly recurrence</p>
    # @!attribute day_of_month
    #   <p>Day of month the window recurs on</p>
    #   @return [Integer]
    class MonthlyRecurrence < Struct.new(
      nil,
      :day_of_month,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how AWS DevOps Agent reaches your application using a Release Management Environment</p>
    # @!attribute private_access
    #   <p>Private network access to the resource inside a VPC, using a private connection.</p>
    #   @return [Types::PrivateNetworkAccess]
    class NetworkAccessConfiguration < Struct.new(
      :private_access,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PrivateAccess < NetworkAccessConfiguration; end
      class Unknown < NetworkAccessConfiguration; end
    end

    # <p>API key authentication configuration for New Relic service.</p>
    # @!attribute api_key
    #   <p>New Relic User API Key</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>New Relic Account ID</p>
    #   @return [String]
    # @!attribute region
    #   <p>New Relic region (US or EU)</p>
    #   @return [String]
    # @!attribute application_ids
    #   <p>List of monitored APM application IDs in New Relic</p>
    #   @return [Array<String>]
    # @!attribute entity_guids
    #   <p>List of globally unique IDs for New Relic resources (apps, hosts, services)</p>
    #   @return [Array<String>]
    # @!attribute alert_policy_ids
    #   <p>List of alert policy IDs grouping related conditions</p>
    #   @return [Array<String>]
    class NewRelicApiKeyConfig < Struct.new(
      nil,
      :api_key,
      :account_id,
      :region,
      :application_ids,
      :entity_guids,
      :alert_policy_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authorization configuration options for New Relic service.</p>
    # @!attribute api_key
    #   <p>New Relic API Key authentication (apiKey, accountId, region).</p>
    #   @return [Types::NewRelicApiKeyConfig]
    class NewRelicServiceAuthorizationConfig < Struct.new(
      :api_key,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ApiKey < NewRelicServiceAuthorizationConfig; end
      class Unknown < NewRelicServiceAuthorizationConfig; end
    end

    # <p>Complete service details for New Relic integration.</p>
    # @!attribute authorization_config
    #   <p>New Relic MCP server authorization configuration.</p>
    #   @return [Types::NewRelicServiceAuthorizationConfig]
    class NewRelicServiceDetails < Struct.new(
      nil,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for completing OAuth authorization step.</p>
    # @!attribute authorization_url
    #   <p>The URL to redirect the user to for OAuth authorization.</p>
    #   @return [String]
    class OAuthAdditionalStepDetails < Struct.new(
      nil,
      :authorization_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authorization configuration options for PagerDuty service.</p>
    # @!attribute o_auth_client_credentials
    #   <p>OAuth client credentials configuration.</p>
    #   @return [Types::PagerDutyOAuthClientCredentialsConfig]
    class PagerDutyAuthorizationConfig < Struct.new(
      :o_auth_client_credentials,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OAuthClientCredentials < PagerDutyAuthorizationConfig; end
      class Unknown < PagerDutyAuthorizationConfig; end
    end

    # <p>Configuration for Pagerduty integration.</p>
    # @!attribute services
    #   <p>List of Pagerduty service available for the association.</p>
    #   @return [Array<String>]
    # @!attribute customer_email
    #   <p>Email to be used in Pagerduty API header</p>
    #   @return [String]
    class PagerDutyConfiguration < Struct.new(
      nil,
      :services,
      :customer_email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complete service details for PagerDuty integration</p>
    # @!attribute scopes
    #   <p>PagerDuty scopes.</p>
    #   @return [Array<String>]
    # @!attribute authorization_config
    #   <p>PagerDuty authorization configuration</p>
    #   @return [Types::PagerDutyAuthorizationConfig]
    class PagerDutyDetails < Struct.new(
      nil,
      :scopes,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OAuth client credentials configuration for PagerDuty.</p>
    # @!attribute client_name
    #   <p>User friendly OAuth client name specified by end user.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>OAuth client ID for authenticating with the service.</p>
    #   @return [String]
    # @!attribute exchange_parameters
    #   <p>OAuth token exchange parameters for authenticating with the service.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_secret
    #   <p>OAuth client secret for authenticating with the service.</p>
    #   @return [String]
    class PagerDutyOAuthClientCredentialsConfig < Struct.new(
      nil,
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A regex-based match condition. Passes when the value matches any pattern.</p>
    # @!attribute patterns
    #   <p>Anchored full-match regex patterns. The condition passes when the value matches at least one pattern.</p>
    #   @return [Array<String>]
    class PatternFilter < Struct.new(
      nil,
      :patterns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a pending message in an agent execution.</p>
    # @!attribute message_id
    #   <p>The unique identifier for this pending message.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message content.</p>
    #   @return [Types::Message]
    class PendingMessage < Struct.new(
      nil,
      :message_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Private Connection mode — either service-managed or self-managed.</p>
    # @!attribute service_managed
    #   <p>Service manages the Resource Gateway lifecycle.</p>
    #   @return [Types::ServiceManagedInput]
    # @!attribute self_managed
    #   <p>Caller manages their own resource configuration.</p>
    #   @return [Types::SelfManagedInput]
    class PrivateConnectionMode < Struct.new(
      :service_managed,
      :self_managed,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ServiceManaged < PrivateConnectionMode; end
      class SelfManaged < PrivateConnectionMode; end
      class Unknown < PrivateConnectionMode; end
    end

    # <p>Summary of a Private Connection.</p>
    # @!attribute name
    #   <p>The name of the Private Connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Private Connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The service-managed Resource Gateway ARN. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>IP address or DNS name of the target resource. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>VPC identifier of the service-managed Resource Gateway. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The Resource Configuration ARN. Only present for self-managed Private Connections.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Private Connection.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The expiry time of the certificate associated with the Private Connection. Only present when a certificate is associated.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>DNS resolution mode for the Private Connection's resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>Message describing the reason for a failed Private Connection, if applicable.</p>
    #   @return [String]
    class PrivateConnectionSummary < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Private network access to the resource inside a VPC, using a private connection.</p>
    # @!attribute private_connection_name
    #   <p>Name of the private connection that supplies the VPC configuration for this release management environment.</p>
    #   @return [String]
    # @!attribute runtime_role_arn
    #   <p>Role ARN that AWS DevOps Agent assumes at runtime to connect to your VPC.</p>
    #   @return [String]
    class PrivateNetworkAccess < Struct.new(
      nil,
      :private_connection_name,
      :runtime_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a recommendation with all its properties and metadata</p>
    # @!attribute agent_space_arn
    #   <p>ARN of the agent space this recommendation belongs to</p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The unique identifier for this recommendation</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>ID of the task that generated the recommendation</p>
    #   @return [String]
    # @!attribute goal_id
    #   <p>ID of the goal this recommendation is associated with</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the recommendation</p>
    #   @return [String]
    # @!attribute content
    #   <p>Content of the recommendation</p>
    #   @return [Types::RecommendationContent]
    # @!attribute status
    #   <p>Current status of the recommendation</p>
    #   @return [String]
    # @!attribute priority
    #   <p>Priority level of the recommendation</p>
    #   @return [String]
    # @!attribute goal_version
    #   <p>Version of the goal at the time this recommendation was generated</p>
    #   @return [Integer]
    # @!attribute additional_context
    #   <p>Additional context for recommendation</p>
    #   @return [String]
    # @!attribute rank_position
    #   <p>Position in ranked list (1 = highest priority)</p>
    #   @return [Integer]
    # @!attribute ranked_at
    #   <p>Timestamp when the recommendation was last ranked</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>Timestamp when this recommendation was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this recommendation was last updated</p>
    #   @return [Time]
    # @!attribute version
    #   <p>Version number for optimistic locking</p>
    #   @return [Integer]
    class Recommendation < Struct.new(
      nil,
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
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Content of a recommendation</p>
    # @!attribute summary
    #   <p>A brief summary of the recommendation.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>Agent-ready specification with detailed implementation steps</p>
    #   @return [String]
    class RecommendationContent < Struct.new(
      nil,
      :summary,
      :spec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Recurrence cadence for a time-range schedule</p>
    # @!attribute daily
    #   <p>The window recurs every day</p>
    #   @return [Types::DailyRecurrence]
    # @!attribute weekly
    #   <p>The window recurs once per week</p>
    #   @return [Types::WeeklyRecurrence]
    # @!attribute monthly
    #   <p>The window recurs once per month</p>
    #   @return [Types::MonthlyRecurrence]
    class Recurrence < Struct.new(
      :daily,
      :weekly,
      :monthly,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Daily < Recurrence; end
      class Weekly < Recurrence; end
      class Monthly < Recurrence; end
      class Unknown < Recurrence; end
    end

    # <p>Reference information linking a task to external systems - for input with validation</p>
    # @!attribute system
    #   <p>The name of the external system</p>
    #   @return [String]
    # @!attribute title
    #   <p>Optional title for the reference</p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>The unique identifier in the external system</p>
    #   @return [String]
    # @!attribute reference_url
    #   <p>URL to access the reference in the external system</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>Association identifier of the external system</p>
    #   @return [String]
    class ReferenceInput < Struct.new(
      nil,
      :system,
      :title,
      :reference_id,
      :reference_url,
      :association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Reference information linking a task to external systems - for output without validation</p>
    # @!attribute system
    #   <p>The name of the external system</p>
    #   @return [String]
    # @!attribute title
    #   <p>Optional title for the reference</p>
    #   @return [String]
    # @!attribute reference_id
    #   <p>The unique identifier in the external system</p>
    #   @return [String]
    # @!attribute reference_url
    #   <p>URL to access the reference in the external system</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>Association identifier of the external system</p>
    #   @return [String]
    class ReferenceOutput < Struct.new(
      nil,
      :system,
      :title,
      :reference_id,
      :reference_url,
      :association_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for registering a new service with the platform.</p>
    # @!attribute service
    #   <p>Services that can be registered via the post-registration API (excludes OAuth 3LO services).</p>
    #   @return [String]
    # @!attribute service_details
    #   <p>Service-specific authorization configuration parameters</p>
    #   @return [Types::ServiceDetails]
    # @!attribute kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) customer managed key that's used to encrypt resources.</p>
    #   @return [String]
    # @!attribute private_connection_name
    #   <p>The name of the private connection to use for VPC connectivity.</p>
    #   @return [String]
    # @!attribute target_url_private_connection_name
    #   <p>The name of the private connection to use for API calls (target URL) only. Cannot be specified when privateConnectionName is provided.</p>
    #   @return [String]
    # @!attribute exchange_url_private_connection_name
    #   <p>The name of the private connection to use for OAuth token exchange requests only. Cannot be specified when privateConnectionName is provided.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name for the service registration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to add to the Service at registration time.</p>
    #   @return [Hash<String, String>]
    class RegisterServiceInput < Struct.new(
      nil,
      :service,
      :service_details,
      :kms_key_arn,
      :private_connection_name,
      :target_url_private_connection_name,
      :exchange_url_private_connection_name,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the service ID and any additional steps required for registration.</p>
    # @!attribute service_id
    #   <p>Service ID - present when registration is complete, absent when additional steps are required</p>
    #   @return [String]
    # @!attribute additional_step
    #   <p>Indicates if additional steps are required to complete service registration (e.g., 3-legged OAuth)</p>
    #   @return [Types::AdditionalServiceRegistrationStep]
    # @!attribute kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) customer managed key that's used to encrypt resources.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the registered Service.</p>
    #   @return [Hash<String, String>]
    class RegisterServiceOutput < Struct.new(
      nil,
      :service_id,
      :additional_step,
      :kms_key_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered Azure DevOps service.</p>
    # @!attribute organization_name
    #   <p>The Azure DevOps Organization name associated with the service.</p>
    #   @return [String]
    class RegisteredAzureDevOpsServiceDetails < Struct.new(
      nil,
      :organization_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered Azure identity using AWS Outbound Identity Federation.</p>
    # @!attribute tenant_id
    #   <p>The Azure Active Directory tenant ID for the identity.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The client ID of the service principal or managed identity used for authentication.</p>
    #   @return [String]
    # @!attribute web_identity_role_arn
    #   <p>The role ARN to be assumed by DevOps Agent for requesting Web Identity Token.</p>
    #   @return [String]
    # @!attribute web_identity_token_audiences
    #   <p>The audiences for the Web Identity Token.</p>
    #   @return [Array<String>]
    class RegisteredAzureIdentityDetails < Struct.new(
      nil,
      :tenant_id,
      :client_id,
      :web_identity_role_arn,
      :web_identity_token_audiences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered GitLab instance.</p>
    # @!attribute target_url
    #   <p>The GitLab instance URL.</p>
    #   @return [String]
    # @!attribute token_type
    #   <p>Type of GitLab access token</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>Optional GitLab group ID for group-level access tokens</p>
    #   @return [String]
    class RegisteredGitLabServiceDetails < Struct.new(
      nil,
      :target_url,
      :token_type,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered GitHub service.</p>
    # @!attribute owner
    #   <p>The GitHub repository owner name.</p>
    #   @return [String]
    # @!attribute owner_type
    #   <p>The GitHub repository owner type.</p>
    #   @return [String]
    # @!attribute target_url
    #   <p>The GitHub Enterprise Server instance URL (absent for github.com).</p>
    #   @return [String]
    class RegisteredGithubServiceDetails < Struct.new(
      nil,
      :owner,
      :owner_type,
      :target_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered Grafana server, used by the built-in MCP server.</p>
    # @!attribute endpoint
    #   <p>Grafana instance URL (e.g., https://your-instance.grafana.net)</p>
    #   @return [String]
    # @!attribute authorization_method
    #   <p>The authz method used by the MCP server.</p>
    #   @return [String]
    class RegisteredGrafanaServerDetails < Struct.new(
      nil,
      :endpoint,
      :authorization_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered MCP (Model Context Protocol) server.</p>
    # @!attribute name
    #   <p>The MCP server name.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The MCP server endpoint URL.</p>
    #   @return [String]
    # @!attribute authorization_method
    #   <p>The MCP server uses this authorization method.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the MCP server.</p>
    #   @return [String]
    # @!attribute api_key_header
    #   <p>If the MCP server uses API key authentication, these details are provided.</p>
    #   @return [String]
    # @!attribute custom_header_names
    #   <p>The configured custom authentication header names when the MCP server uses custom-header authentication. Secret values are not returned.</p>
    #   @return [Array<String>]
    class RegisteredMCPServerDetails < Struct.new(
      nil,
      :name,
      :endpoint,
      :authorization_method,
      :description,
      :api_key_header,
      :custom_header_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered SigV4-authenticated MCP server.</p>
    # @!attribute name
    #   <p>MCP server name.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>MCP server endpoint URL.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the MCP server.</p>
    #   @return [String]
    # @!attribute region
    #   <p>AWS region for SigV4 signing. Use '*' for SigV4a multi-region signing.</p>
    #   @return [String]
    # @!attribute service
    #   <p>AWS service name for SigV4 signing.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>IAM role ARN to assume for SigV4 signing.</p>
    #   @deprecated
    #     Use mcpRoleArn instead.
    #     Since: 2026-05-27
    #   @return [String]
    # @!attribute mcp_role_arn
    #   <p>AWS IAM role ARN.</p>
    #   @return [String]
    # @!attribute custom_headers
    #   <p>Custom headers for the SigV4 MCP server.</p>
    #   @return [Hash<String, String>]
    class RegisteredMCPServerSigV4Details < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :region,
      :service,
      :role_arn,
      :mcp_role_arn,
      :custom_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:role_arn] = '' unless options.key?(:role_arn)
        super
      end
    end

    # <p>Details specific to a registered NewRelic instance.</p>
    # @!attribute account_id
    #   <p>The NewRelic account ID.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The NewRelic region (determines API endpoint).</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional user description.</p>
    #   @return [String]
    class RegisteredNewRelicDetails < Struct.new(
      nil,
      :account_id,
      :region,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered PagerDuty service.</p>
    # @!attribute scopes
    #   <p>The scopes that were assigned to the service</p>
    #   @return [Array<String>]
    class RegisteredPagerDutyDetails < Struct.new(
      nil,
      :scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered token-based remote A2A agent.</p>
    # @!attribute name
    #   <p>Name identifier for a remote A2A agent.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>HTTPS endpoint URL for a remote A2A agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description field</p>
    #   @return [String]
    # @!attribute authorization_method
    #   <p>The authorization method used by the remote agent.</p>
    #   @return [String]
    # @!attribute api_key_header
    #   <p>If the remote agent uses API key authentication, the header name.</p>
    #   @return [String]
    class RegisteredRemoteAgentDetails < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :authorization_method,
      :api_key_header,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered SigV4-authenticated remote A2A agent.</p>
    # @!attribute name
    #   <p>Name identifier for a remote A2A agent.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>HTTPS endpoint URL for a remote A2A agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description field</p>
    #   @return [String]
    # @!attribute region
    #   <p>AWS region identifier or wildcard (*) for SigV4a multi-region signing.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The AWS service name for SigV4 signing.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>AWS IAM role ARN.</p>
    #   @return [String]
    class RegisteredRemoteAgentSigV4Details < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :region,
      :service,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a registered service with its configuration and accessible resources.</p>
    # @!attribute service_id
    #   <p>The unique identifier of a service.</p>
    #   @return [String]
    # @!attribute service_type
    #   <p>The service type e.g github or dynatrace</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the registered service.</p>
    #   @return [String]
    # @!attribute accessible_resources
    #   <p>List of accessible resources for this service.</p>
    #   @return [Array<JSON>]
    # @!attribute additional_service_details
    #   <p>Additional details specific to the service type.</p>
    #   @return [Types::AdditionalServiceDetails]
    # @!attribute kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) customer managed key that's used to encrypt resources.</p>
    #   @return [String]
    # @!attribute private_connection_name
    #   <p>The name of the private connection used for VPC connectivity.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the service was registered.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the service was last updated.</p>
    #   @return [Time]
    class RegisteredService < Struct.new(
      nil,
      :service_id,
      :service_type,
      :name,
      :accessible_resources,
      :additional_service_details,
      :kms_key_arn,
      :private_connection_name,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered ServiceNow instance.</p>
    # @!attribute instance_url
    #   <p>The ServiceNow instance url</p>
    #   @return [String]
    class RegisteredServiceNowDetails < Struct.new(
      nil,
      :instance_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details specific to a registered Slack workspace.</p>
    # @!attribute team_id
    #   <p>The Slack team ID.</p>
    #   @return [String]
    # @!attribute team_name
    #   <p>The Slack team name.</p>
    #   @return [String]
    class RegisteredSlackServiceDetails < Struct.new(
      nil,
      :team_id,
      :team_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a release management environment.</p>
    # @!attribute name
    #   <p>The name for this release management environment.</p>
    #   @return [String]
    # @!attribute network_access
    #   <p>Specifies how AWS DevOps Agent reaches your application using a Release Management Environment</p>
    #   @return [Types::NetworkAccessConfiguration]
    class ReleaseManagementConfiguration < Struct.new(
      nil,
      :name,
      :network_access,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>API key configuration for remote A2A agent.</p>
    # @!attribute api_key_name
    #   <p>User friendly API key name specified by end user.</p>
    #   @return [String]
    # @!attribute api_key_value
    #   <p>API key value for authenticating with the service.</p>
    #   @return [String]
    # @!attribute api_key_header
    #   <p>HTTP header name to send the API key in requests to the service.</p>
    #   @return [String]
    class RemoteAgentAPIKeyConfig < Struct.new(
      nil,
      :api_key_name,
      :api_key_value,
      :api_key_header,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authorization configuration for remote A2A agents with token-based auth (API key, OAuth, bearer token).</p>
    # @!attribute api_key
    #   <p>Remote agent configuration with API key authentication.</p>
    #   @return [Types::RemoteAgentAPIKeyConfig]
    # @!attribute o_auth_client_credentials
    #   <p>Remote agent configuration with OAuth client credentials.</p>
    #   @return [Types::RemoteAgentOAuthClientCredentialsConfig]
    # @!attribute bearer_token
    #   <p>Remote agent configuration with Bearer token (RFC 6750).</p>
    #   @return [Types::RemoteAgentBearerTokenConfig]
    class RemoteAgentAuthorizationConfig < Struct.new(
      :api_key,
      :o_auth_client_credentials,
      :bearer_token,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ApiKey < RemoteAgentAuthorizationConfig; end
      class OAuthClientCredentials < RemoteAgentAuthorizationConfig; end
      class BearerToken < RemoteAgentAuthorizationConfig; end
      class Unknown < RemoteAgentAuthorizationConfig; end
    end

    # <p>Bearer token configuration for remote A2A agent (RFC 6750).</p>
    # @!attribute token_name
    #   <p>User friendly bearer token name specified by end user.</p>
    #   @return [String]
    # @!attribute token_value
    #   <p>Bearer token value in alphanumeric for authenticating with the service.</p>
    #   @return [String]
    # @!attribute authorization_header
    #   <p>HTTP header name to send the bearer token in requests to the service. Defaults to 'Authorization' per RFC 6750.</p>
    #   @return [String]
    class RemoteAgentBearerTokenConfig < Struct.new(
      nil,
      :token_name,
      :token_value,
      :authorization_header,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:authorization_header] = 'Authorization' unless options.key?(:authorization_header)
        super
      end
    end

    # <p>Configuration for token-based remote A2A agent integration.</p>
    class RemoteAgentConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OAuth client credentials configuration for remote A2A agent.</p>
    # @!attribute client_name
    #   <p>User friendly OAuth client name specified by end user.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>OAuth client ID for authenticating with the service.</p>
    #   @return [String]
    # @!attribute exchange_parameters
    #   <p>OAuth token exchange parameters for authenticating with the service.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_secret
    #   <p>OAuth client secret for authenticating with the service.</p>
    #   @return [String]
    # @!attribute exchange_url
    #   <p>OAuth token exchange URL.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>OAuth scopes for authentication.</p>
    #   @return [Array<String>]
    class RemoteAgentOAuthClientCredentialsConfig < Struct.new(
      nil,
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret,
      :exchange_url,
      :scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complete service details for token-based remote A2A agent integration.</p>
    # @!attribute name
    #   <p>Name identifier for a remote A2A agent.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>HTTPS endpoint URL for a remote A2A agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description field</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>Remote agent authorization configuration.</p>
    #   @return [Types::RemoteAgentAuthorizationConfig]
    class RemoteAgentServiceDetails < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>SigV4 authorization configuration for remote A2A agent.</p>
    # @!attribute region
    #   <p>AWS region identifier or wildcard (*) for SigV4a multi-region signing.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The AWS service name for SigV4 signing.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>AWS IAM role ARN.</p>
    #   @return [String]
    class RemoteAgentSigV4AuthorizationConfig < Struct.new(
      nil,
      :region,
      :service,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for SigV4-authenticated remote A2A agent integration.</p>
    class RemoteAgentSigV4Configuration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Complete service details for SigV4-authenticated remote A2A agent integration.</p>
    # @!attribute name
    #   <p>Name identifier for a remote A2A agent.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>HTTPS endpoint URL for a remote A2A agent.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description field</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>Remote agent SigV4 authorization configuration.</p>
    #   @return [Types::RemoteAgentSigV4AuthorizationConfig]
    class RemoteAgentSigV4ServiceDetails < Struct.new(
      nil,
      :name,
      :endpoint,
      :description,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource could not be found.</p>
    # @!attribute message
    #   <p>Detailed error message describing which resource was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Expression-based schedule condition. CreateTrigger callers using this condition supply expression and omit spec. Trigger responses always use this condition, include the persisted or derived expression, and also include spec when the trigger was created from a structured schedule.</p>
    # @!attribute expression
    #   <p>EventBridge cron or rate expression. Required for existing request and response compatibility. For a structured schedule response, this is the expression derived by Backlog.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>Structured schedule source of truth (cron | timeRange). On CreateTrigger supply exactly one of spec or expression. Present in responses together with the derived expression for structured triggers.</p>
    #   @return [Types::ScheduleSpec]
    class ScheduleCondition < Struct.new(
      nil,
      :expression,
      :spec,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structured schedule specification. Select exactly one schedule form.</p>
    # @!attribute cron
    #   <p>Runs on an EventBridge cron or rate cadence</p>
    #   @return [Types::CronSchedule]
    # @!attribute time_range
    #   <p>Runs within a recurring time-of-day window</p>
    #   @return [Types::TimeRangeSchedule]
    class ScheduleSpec < Struct.new(
      :cron,
      :time_range,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Cron < ScheduleSpec; end
      class TimeRange < ScheduleSpec; end
      class Unknown < ScheduleSpec; end
    end

    # <p>Configuration for a self-managed Private Connection.</p>
    # @!attribute resource_configuration_id
    #   <p>The ID or ARN of the resource configuration.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>Certificate for the Private Connection.</p>
    #   @return [String]
    class SelfManagedInput < Struct.new(
      nil,
      :resource_configuration_id,
      :certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union of possible delta payloads within a content block delta event</p>
    # @!attribute text_delta
    #   <p>Text delta for text-based content blocks</p>
    #   @return [Types::SendMessageTextDelta]
    # @!attribute json_delta
    #   <p>JSON delta for structured content blocks</p>
    #   @return [Types::SendMessageJsonDelta]
    class SendMessageContentBlockDelta < Struct.new(
      :text_delta,
      :json_delta,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TextDelta < SendMessageContentBlockDelta; end
      class JsonDelta < SendMessageContentBlockDelta; end
      class Unknown < SendMessageContentBlockDelta; end
    end

    # <p>Event emitted for each incremental content delta within a content block</p>
    # @!attribute index
    #   <p>Zero-based index of the content block</p>
    #   @return [Integer]
    # @!attribute delta
    #   <p>The incremental content delta</p>
    #   @return [Types::SendMessageContentBlockDelta]
    # @!attribute sequence_number
    #   <p>Event sequence number</p>
    #   @return [Integer]
    class SendMessageContentBlockDeltaEvent < Struct.new(
      nil,
      :index,
      :delta,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event emitted when a new content block starts</p>
    # @!attribute index
    #   <p>Zero-based index of the content block</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of content in this block</p>
    #   @return [String]
    # @!attribute id
    #   <p>Block identifier</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>Optional parent block ID for nested content blocks (e.g. subagent tool calls)</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>Event sequence number</p>
    #   @return [Integer]
    class SendMessageContentBlockStartEvent < Struct.new(
      nil,
      :index,
      :type,
      :id,
      :parent_id,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event emitted when a content block is complete</p>
    # @!attribute index
    #   <p>Zero-based index of the content block</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>The type of content in this block</p>
    #   @return [String]
    # @!attribute text
    #   <p>The accumulated complete content text</p>
    #   @return [String]
    # @!attribute last
    #   <p>Whether this is the final content block in the response</p>
    #   @return [Boolean]
    # @!attribute sequence_number
    #   <p>Event sequence number</p>
    #   @return [Integer]
    class SendMessageContentBlockStopEvent < Struct.new(
      nil,
      :index,
      :type,
      :text,
      :last,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Context object for additional message metadata</p>
    # @!attribute current_page
    #   <p>The current page or view the user is on</p>
    #   @return [String]
    # @!attribute last_message
    #   <p>The ID of the last message in the conversation</p>
    #   @return [String]
    # @!attribute user_action_response
    #   <p>Response to a UI prompt (not a text conversation message). Set this to the sentinel value `"APPROVAL_ACTION"` when the request is resuming a paused execution after an approval decision; in that case the structured decision is provided on the sibling `approvalAction` member. Preserved as a String for backward compatibility: clients that predate the typed approval field may still encode UI-prompt responses as JSON in this field.</p>
    #   @return [String]
    # @!attribute approval_action
    #   <p>An approval decision supplied when resuming a paused agent execution. When an agent execution pauses to request approval for an elevated action, SendMessage streams an approval request carrying interrupt identifiers. To resume the paused execution, call SendMessage again with `userActionResponse` set to `"APPROVAL_ACTION"` and this member populated with those identifiers and the decision (APPROVED or REJECTED). Optional; omit it for messages that are not resuming an approval.</p>
    #   @return [Types::ApprovalAction]
    class SendMessageContext < Struct.new(
      nil,
      :current_page,
      :last_message,
      :user_action_response,
      :approval_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event stream for chat message responses using the content block model. Events follow a lifecycle: responseCreated -&gt; responseInProgress -&gt; (contentBlockStart/contentBlockDelta/contentBlockStop events) -&gt; responseCompleted|responseFailed SendMessage always uses content block mode — legacy per-field events (outputTextDelta, functionCallArgumentsDelta, etc.) are not emitted.</p>
    # @!attribute response_created
    #   <p>Emitted when the response is created</p>
    #   @return [Types::SendMessageResponseCreatedEvent]
    # @!attribute response_in_progress
    #   <p>Emitted while the response is being generated</p>
    #   @return [Types::SendMessageResponseInProgressEvent]
    # @!attribute response_completed
    #   <p>Emitted when the response completes successfully</p>
    #   @return [Types::SendMessageResponseCompletedEvent]
    # @!attribute response_failed
    #   <p>Emitted when the response fails</p>
    #   @return [Types::SendMessageResponseFailedEvent]
    # @!attribute summary
    #   <p>Emitted to provide a summary of agent actions</p>
    #   @return [Types::SendMessageSummaryEvent]
    # @!attribute heartbeat
    #   <p>Heartbeat event sent periodically to keep the connection alive during idle periods</p>
    #   @return [Types::SendMessageHeartbeatEvent]
    # @!attribute content_block_start
    #   <p>Emitted when a new content block starts</p>
    #   @return [Types::SendMessageContentBlockStartEvent]
    # @!attribute content_block_delta
    #   <p>Emitted for each incremental content delta within a content block</p>
    #   @return [Types::SendMessageContentBlockDeltaEvent]
    # @!attribute content_block_stop
    #   <p>Emitted when a content block is complete</p>
    #   @return [Types::SendMessageContentBlockStopEvent]
    class SendMessageEvents < Struct.new(
      :response_created,
      :response_in_progress,
      :response_completed,
      :response_failed,
      :summary,
      :heartbeat,
      :content_block_start,
      :content_block_delta,
      :content_block_stop,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ResponseCreated < SendMessageEvents; end
      class ResponseInProgress < SendMessageEvents; end
      class ResponseCompleted < SendMessageEvents; end
      class ResponseFailed < SendMessageEvents; end
      class Summary < SendMessageEvents; end
      class Heartbeat < SendMessageEvents; end
      class ContentBlockStart < SendMessageEvents; end
      class ContentBlockDelta < SendMessageEvents; end
      class ContentBlockStop < SendMessageEvents; end
      class Unknown < SendMessageEvents; end
    end

    # <p>Heartbeat event to keep connection alive</p>
    class SendMessageHeartbeatEvent < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>JSON delta containing partial JSON</p>
    # @!attribute partial_json
    #   <p>Partial JSON string</p>
    #   @return [String]
    class SendMessageJsonDelta < Struct.new(
      nil,
      :partial_json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for sending a chat message</p>
    # @!attribute agent_space_id
    #   <p>The agent space identifier</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution identifier for the chat session</p>
    #   @return [String]
    # @!attribute content
    #   <p>The user message content</p>
    #   @return [String]
    # @!attribute context
    #   <p>Optional context for the message</p>
    #   @return [Types::SendMessageContext]
    # @!attribute user_id
    #   <p>User identifier. This field is deprecated and will be ignored — the service resolves user identity from the authenticated session.</p>
    #   @deprecated
    #     userId is managed by the service and should not be provided by the caller
    #     Since: 2026-04-15
    #   @return [String]
    # @!attribute asset_ids
    #   <p>Optional list of asset identifiers to attach to the message</p>
    #   @return [Array<String>]
    # @!attribute model_tier
    #   <p>Optional model tier selection. Valid values: smart, balanced, fast. Absent or unrecognized values default to balanced.</p>
    #   @return [String]
    class SendMessageRequest < Struct.new(
      nil,
      :agent_space_id,
      :execution_id,
      :content,
      :context,
      :user_id,
      :asset_ids,
      :model_tier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for sending chat message events</p>
    # @!attribute events
    #   <p>The stream of chat message events</p>
    #   @return [Types::SendMessageEvents]
    class SendMessageResponse < Struct.new(
      nil,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event emitted when the response completes successfully</p>
    # @!attribute response_id
    #   <p>The response ID</p>
    #   @return [String]
    # @!attribute usage
    #   <p>Token usage information</p>
    #   @return [Types::SendMessageUsageInfo]
    # @!attribute sequence_number
    #   <p>Event sequence number</p>
    #   @return [Integer]
    class SendMessageResponseCompletedEvent < Struct.new(
      nil,
      :response_id,
      :usage,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event emitted when the response is created</p>
    # @!attribute response_id
    #   <p>The response ID</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>Event sequence number</p>
    #   @return [Integer]
    class SendMessageResponseCreatedEvent < Struct.new(
      nil,
      :response_id,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event emitted when the response fails</p>
    # @!attribute response_id
    #   <p>The response ID</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Error code</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Error message</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>Event sequence number</p>
    #   @return [Integer]
    class SendMessageResponseFailedEvent < Struct.new(
      nil,
      :response_id,
      :error_code,
      :error_message,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event emitted while the response is being generated</p>
    # @!attribute response_id
    #   <p>The response ID</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>Event sequence number</p>
    #   @return [Integer]
    class SendMessageResponseInProgressEvent < Struct.new(
      nil,
      :response_id,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Event summarizing agent actions</p>
    # @!attribute content
    #   <p>Summary content</p>
    #   @return [String]
    # @!attribute sequence_number
    #   <p>Event sequence number</p>
    #   @return [Integer]
    class SendMessageSummaryEvent < Struct.new(
      nil,
      :content,
      :sequence_number,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Text delta containing a text fragment</p>
    # @!attribute text
    #   <p>The text fragment</p>
    #   @return [String]
    class SendMessageTextDelta < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Token usage information</p>
    # @!attribute input_tokens
    #   <p>Number of input tokens</p>
    #   @return [Integer]
    # @!attribute output_tokens
    #   <p>Number of output tokens</p>
    #   @return [Integer]
    # @!attribute total_tokens
    #   <p>Total tokens used</p>
    #   @return [Integer]
    class SendMessageUsageInfo < Struct.new(
      nil,
      :input_tokens,
      :output_tokens,
      :total_tokens,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union of all supported service configuration types. Each service has its own specific configuration structure.</p>
    # @!attribute source_aws
    #   <p>AWS source account configuration for monitoring resources.</p>
    #   @return [Types::SourceAwsConfiguration]
    # @!attribute aws
    #   <p>AWS monitor account configuration.</p>
    #   @return [Types::AWSConfiguration]
    # @!attribute github
    #   <p>GitHub repository integration configuration.</p>
    #   @return [Types::GitHubConfiguration]
    # @!attribute slack
    #   <p>Slack workspace integration configuration.</p>
    #   @return [Types::SlackConfiguration]
    # @!attribute dynatrace
    #   <p>Dynatrace monitoring integration configuration.</p>
    #   @return [Types::DynatraceConfiguration]
    # @!attribute servicenow
    #   <p>ServiceNow instance integration configuration.</p>
    #   @return [Types::ServiceNowConfiguration]
    # @!attribute mcpservernewrelic
    #   <p>NewRelic instance integration configuration.</p>
    #   @return [Types::MCPServerNewRelicConfiguration]
    # @!attribute mcpserverdatadog
    #   <p>Datadog MCP server integration configuration.</p>
    #   @return [Types::MCPServerDatadogConfiguration]
    # @!attribute mcpserver
    #   <p>MCP (Model Context Protocol) server integration configuration.</p>
    #   @return [Types::MCPServerConfiguration]
    # @!attribute gitlab
    #   <p>GitLab project integration configuration.</p>
    #   @return [Types::GitLabConfiguration]
    # @!attribute mcpserversplunk
    #   <p>Splunk MCP server integration configuration.</p>
    #   @return [Types::MCPServerSplunkConfiguration]
    # @!attribute event_channel
    #   <p>Event Channel instance integration configuration.</p>
    #   @return [Types::EventChannelConfiguration]
    # @!attribute azure
    #   <p>Azure subscription integration configuration.</p>
    #   @return [Types::AzureConfiguration]
    # @!attribute azuredevops
    #   <p>Azure DevOps project integration configuration.</p>
    #   @return [Types::AzureDevOpsConfiguration]
    # @!attribute mcpservergrafana
    #   <p>Grafana MCP server integration configuration.</p>
    #   @return [Types::MCPServerGrafanaConfiguration]
    # @!attribute pagerduty
    #   <p>PagerDuty integration configuration</p>
    #   @return [Types::PagerDutyConfiguration]
    # @!attribute mcpserversigv4
    #   <p>SigV4-authenticated MCP server integration configuration.</p>
    #   @return [Types::MCPServerSigV4Configuration]
    # @!attribute remoteagent
    #   <p>Remote A2A agent integration configuration (token-based auth).</p>
    #   @return [Types::RemoteAgentConfiguration]
    # @!attribute remoteagentsigv4
    #   <p>Remote A2A agent integration configuration (SigV4 auth).</p>
    #   @return [Types::RemoteAgentSigV4Configuration]
    # @!attribute release_management
    #   <p>Release management network environment configuration</p>
    #   @return [Types::ReleaseManagementConfiguration]
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
      :release_management,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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
      class ReleaseManagement < ServiceConfiguration; end
      class Unknown < ServiceConfiguration; end
    end

    # <p>Union of service-specific configuration details for service registration.</p>
    # @!attribute dynatrace
    #   <p>Dynatrace-specific service details.</p>
    #   @return [Types::DynatraceServiceDetails]
    # @!attribute servicenow
    #   <p>ServiceNow-specific service details.</p>
    #   @return [Types::ServiceNowServiceDetails]
    # @!attribute mcpserverdatadog
    #   <p>Datadog MCP server-specific service details.</p>
    #   @return [Types::DatadogServiceDetails]
    # @!attribute mcpserver
    #   <p>MCP server-specific service details.</p>
    #   @return [Types::MCPServerDetails]
    # @!attribute gitlab
    #   <p>GitLab-specific service details.</p>
    #   @return [Types::GitLabDetails]
    # @!attribute mcpserversplunk
    #   <p>Splunk MCP server-specific service details.</p>
    #   @return [Types::MCPServerDetails]
    # @!attribute mcpservernewrelic
    #   <p>New Relic-specific service details.</p>
    #   @return [Types::NewRelicServiceDetails]
    # @!attribute event_channel
    #   <p>Event Channel specific service details.</p>
    #   @return [Types::EventChannelDetails]
    # @!attribute mcpservergrafana
    #   <p>Datadog MCP server-specific service details.</p>
    #   @return [Types::GrafanaServiceDetails]
    # @!attribute pagerduty
    #   <p>PagerDuty specific service details.</p>
    #   @return [Types::PagerDutyDetails]
    # @!attribute azureidentity
    #   <p>Azure integration with AWS Outbound Identity Federation specific service details.</p>
    #   @return [Types::RegisteredAzureIdentityDetails]
    # @!attribute mcpserversigv4
    #   <p>SigV4-authenticated MCP server-specific service details.</p>
    #   @return [Types::MCPServerSigV4ServiceDetails]
    # @!attribute remoteagent
    #   <p>Remote A2A agent service details (token-based auth).</p>
    #   @return [Types::RemoteAgentServiceDetails]
    # @!attribute remoteagentsigv4
    #   <p>Remote A2A agent service details (SigV4 auth).</p>
    #   @return [Types::RemoteAgentSigV4ServiceDetails]
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
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

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

    # <p>Configuration for a service-managed Private Connection.</p>
    # @!attribute host_address
    #   <p>IP address or DNS name of the target resource.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>VPC to create the service-managed Resource Gateway in.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Subnets that the service-managed Resource Gateway will span.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>Security groups to attach to the service-managed Resource Gateway. If not specified, a default security group is created.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>IP address type of the service-managed Resource Gateway.</p>
    #   @return [String]
    # @!attribute ipv4_addresses_per_eni
    #   <p>Number of IPv4 addresses in each ENI for the service-managed Resource Gateway.</p>
    #   @return [Integer]
    # @!attribute port_ranges
    #   <p>TCP port ranges that a consumer can use to access the resource.</p>
    #   @return [Array<String>]
    # @!attribute certificate
    #   <p>Certificate for the Private Connection.</p>
    #   @return [String]
    # @!attribute dns_resolution
    #   <p>DNS resolution mode for the resource gateway. Defaults to PUBLIC when not set.</p>
    #   @return [String]
    class ServiceManagedInput < Struct.new(
      nil,
      :host_address,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :port_ranges,
      :certificate,
      :dns_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for ServiceNow instance integration.</p>
    # @!attribute instance_id
    #   <p>ServiceNow instance ID</p>
    #   @return [String]
    # @!attribute auth_scopes
    #   <p>Scoped down authentication scopes for fine grained control</p>
    #   @return [Array<String>]
    class ServiceNowConfiguration < Struct.new(
      nil,
      :instance_id,
      :auth_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OAuth client credentials configuration for ServiceNow.</p>
    # @!attribute client_name
    #   <p>User friendly OAuth client name specified by end user.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>OAuth client ID for authenticating with the service.</p>
    #   @return [String]
    # @!attribute exchange_parameters
    #   <p>OAuth token exchange parameters for authenticating with the service.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_secret
    #   <p>OAuth client secret for authenticating with the service.</p>
    #   @return [String]
    class ServiceNowOAuthClientCredentialsConfig < Struct.new(
      nil,
      :client_name,
      :client_id,
      :exchange_parameters,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authorization configuration options for ServiceNow service.</p>
    # @!attribute o_auth_client_credentials
    #   <p>OAuth client credentials configuration.</p>
    #   @return [Types::ServiceNowOAuthClientCredentialsConfig]
    class ServiceNowServiceAuthorizationConfig < Struct.new(
      :o_auth_client_credentials,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OAuthClientCredentials < ServiceNowServiceAuthorizationConfig; end
      class Unknown < ServiceNowServiceAuthorizationConfig; end
    end

    # <p>Complete service details for ServiceNow integration.</p>
    # @!attribute instance_url
    #   <p>ServiceNow instance URL.</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>ServiceNow OAuth client credentials configuration. Use this when registering with OAuth client credentials flow.</p>
    #   @return [Types::ServiceNowServiceAuthorizationConfig]
    class ServiceNowServiceDetails < Struct.new(
      nil,
      :instance_url,
      :authorization_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed the service quota limit.</p>
    # @!attribute message
    #   <p>Detailed error message describing which quota was exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for bidirectional Slack communication.</p>
    # @!attribute role_arn
    #   <p>IAM role ARN that AWS DevOps Agent assumes to exchange messages with your Slack workspace on behalf of this association.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether bidirectional communication is enabled for this association. When you set this value to true, you can mention the agent in a configured Slack channel and it responds in that channel. When you omit this value or set it to false, the agent ignores mentions and only sends notifications.</p>
    #   @return [Boolean]
    class SlackBidirectionalConfiguration < Struct.new(
      nil,
      :role_arn,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a Slack channel with its ID and optional name.</p>
    # @!attribute channel_name
    #   <p>Slack channel name</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>Slack channel ID</p>
    #   @return [String]
    class SlackChannel < Struct.new(
      nil,
      :channel_name,
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Slack workspace integration.</p>
    # @!attribute workspace_id
    #   <p>Associated Slack workspace ID</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>Associated Slack workspace name</p>
    #   @return [String]
    # @!attribute transmission_target
    #   <p>Transmission targets for agent notifications</p>
    #   @return [Types::SlackTransmissionTarget]
    # @!attribute bidirectional
    #   <p>Optional bidirectional communication configuration. Supply this configuration and set enabled to true so you can interact with the agent directly from Slack.</p>
    #   @return [Types::SlackBidirectionalConfiguration]
    class SlackConfiguration < Struct.new(
      nil,
      :workspace_id,
      :workspace_name,
      :transmission_target,
      :bidirectional,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines Slack channels for different types of agent notifications.</p>
    # @!attribute ops_oncall_target
    #   <p>Destination for On-call Agent (Ops1)</p>
    #   @return [Types::SlackChannel]
    # @!attribute ops_sre_target
    #   <p>Destination for SRE Agent (Ops1.5)</p>
    #   @return [Types::SlackChannel]
    class SlackTransmissionTarget < Struct.new(
      nil,
      :ops_oncall_target,
      :ops_sre_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AWS source account integration. Setting the role ARNs on this configuration requires the caller to have at least the iam:PassRole permission (see assumableRoleArn).</p>
    # @!attribute account_id
    #   <p>AWS Account Id corresponding to provided resources.</p>
    #   @return [String]
    # @!attribute account_type
    #   <p>Account Type 'source' for AIDevOps monitoring.</p>
    #   @return [String]
    # @!attribute assumable_role_arn
    #   <p>Role ARN to be assumed by AIDevOps to operate on behalf of customer. To set this role ARN on AssociateService or UpdateAssociation, the caller must have at least the iam:PassRole permission on arn:aws:iam::&lt;account-id&gt;:role/* in the caller's own account, with the condition iam:PassedToService set to aidevops.amazonaws.com. A broader iam:PassRole grant also satisfies this requirement.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>External ID for additional security when assuming the role. Used to prevent the confused deputy problem.</p>
    #   @return [String]
    # @!attribute agent_elevated_role_arn
    #   <p>Optional IAM role ARN to be assumed by AIDevOps for elevated directed actions on behalf of the customer. Used for mutating operations gated by elevatedActionsEnabled on the AgentSpace. When not provided, only non-elevated directed actions are available for this AWS account. Setting this role is subject to the same minimum iam:PassRole requirement described on assumableRoleArn.</p>
    #   @return [String]
    # @!attribute agent_elevated_role_arn_status
    #   <p>Validation status of the agentElevatedRoleArn. Updated asynchronously after the customer registers an elevated role. Possible values: PENDING_CONFIRMATION (validation in progress), VALID (role validated), INVALID (validation failed).</p>
    #   @return [String]
    class SourceAwsConfiguration < Struct.new(
      nil,
      :account_id,
      :account_type,
      :assumable_role_arn,
      :external_id,
      :agent_elevated_role_arn,
      :agent_elevated_role_arn_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to add to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a backlog task with all its properties and metadata</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing this task</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier for this task</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The execution ID associated with this task, if any</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the task</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional detailed description of the task</p>
    #   @return [String]
    # @!attribute reference
    #   <p>Optional reference information linking this task to external systems</p>
    #   @return [Types::ReferenceOutput]
    # @!attribute task_type
    #   <p>The type of this task</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority level of this task</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of this task</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when this task was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this task was last updated</p>
    #   @return [Time]
    # @!attribute version
    #   <p>Version number for optimistic locking</p>
    #   @return [Integer]
    # @!attribute support_metadata
    #   <p>Optional support metadata for the task</p>
    #   @return [JSON]
    # @!attribute metadata
    #   <p>Optional metadata for the task</p>
    #   @return [JSON]
    # @!attribute primary_task_id
    #   <p>The task ID of the primary investigation this task is linked to</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Explanation for why the task status was changed (e.g., linked reason)</p>
    #   @return [String]
    # @!attribute has_linked_tasks
    #   <p>Indicates if this task has other tasks linked to it</p>
    #   @return [Boolean]
    class Task < Struct.new(
      nil,
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
      :has_linked_tasks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_linked_tasks] = false unless options.key?(:has_linked_tasks)
        super
      end
    end

    # <p>Filter criteria for listing backlog tasks, supporting time range, priority, status, and type filters.</p>
    # @!attribute created_after
    #   <p>Filter for tasks created after this timestamp inclusive</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>Filter for tasks created before this timestamp exclusive</p>
    #   @return [Time]
    # @!attribute priority
    #   <p>Filter by priority (single value only)</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Filter by status (single value only)</p>
    #   @return [Array<String>]
    # @!attribute task_type
    #   <p>Filter by task type (single value only)</p>
    #   @return [Array<String>]
    # @!attribute primary_task_id
    #   <p>Filter by primary task ID to get linked tasks</p>
    #   @return [String]
    class TaskFilter < Struct.new(
      nil,
      :created_after,
      :created_before,
      :priority,
      :status,
      :task_type,
      :primary_task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled due to too many requests. Please slow down and try again.</p>
    # @!attribute message
    #   <p>Detailed error message describing the throttling condition.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Recurring time-of-day window in UTC. The service derives an EventBridge expression anchored at startAfter and a flexible-window width from the interval to startBefore. A startBefore earlier than startAfter wraps past midnight.</p>
    # @!attribute start_after
    #   <p>Earliest time of day the trigger may fire</p>
    #   @return [String]
    # @!attribute start_before
    #   <p>Latest time of day the trigger may fire</p>
    #   @return [String]
    # @!attribute recurrence
    #   <p>How the window recurs</p>
    #   @return [Types::Recurrence]
    class TimeRangeSchedule < Struct.new(
      nil,
      :start_after,
      :start_before,
      :recurrence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Trigger fires on a schedule and invokes an agent</p>
    # @!attribute trigger_id
    #   <p>The unique identifier for this Trigger</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The agent space this Trigger belongs to</p>
    #   @return [String]
    # @!attribute type
    #   <p>How this Trigger fires</p>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition that fires this Trigger</p>
    #   @return [Types::TriggerCondition]
    # @!attribute action
    #   <p>The action this Trigger performs when it fires</p>
    #   @return [JSON]
    # @!attribute status
    #   <p>The status of this Trigger</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp when this Trigger was created</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>Timestamp when this Trigger was last updated</p>
    #   @return [Time]
    class Trigger < Struct.new(
      nil,
      :trigger_id,
      :agent_space_id,
      :type,
      :condition,
      :action,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how a Trigger fires.</p>
    # @!attribute schedule
    #   <p>Schedule-based firing condition. On CreateTrigger supply exactly one of the schedule condition's expression or spec.</p>
    #   @return [Types::ScheduleCondition]
    class TriggerCondition < Struct.new(
      :schedule,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Schedule < TriggerCondition; end
      class Unknown < TriggerCondition; end
    end

    # <p>A group of trigger conditions. The group matches when ALL present conditions pass. A group cannot be empty: at least one condition must be present.</p>
    # @!attribute events
    #   <p>Passes when the webhook event is one of the listed events.</p>
    #   @return [Array<String>]
    # @!attribute target_branches
    #   <p>Passes when the change request target branch matches. Applicable to RELEASE_READINESS_REVIEW only.</p>
    #   @return [Types::PatternFilter]
    class TriggerFilterGroup < Struct.new(
      nil,
      :events,
      :target_branches,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating an existing AgentSpace's properties. All fields except agentSpaceId are optional for partial updates.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the AgentSpace.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the AgentSpace.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The updated locale for the AgentSpace, which determines the language used in agent responses.</p>
    #   @return [String]
    # @!attribute preferences
    #   <p>The preferences to configure on the agent space. When provided, this replaces the full set of configured preferences; preferences not included revert to their default values. When omitted, the current preferences are left unchanged.</p>
    #   @return [Hash<String, Boolean>]
    class UpdateAgentSpaceInput < Struct.new(
      nil,
      :agent_space_id,
      :name,
      :description,
      :locale,
      :preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the updated AgentSpace.</p>
    # @!attribute agent_space
    #   <p>Represents a complete AgentSpace with all its properties, timestamps, encryption settings, and unique identifier.</p>
    #   @return [Types::AgentSpace]
    class UpdateAgentSpaceOutput < Struct.new(
      nil,
      :agent_space,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for UpdateApprovalAction. Submits the terminal decision (APPROVED or REJECTED) against an approval request, optionally carrying the finalized pattern and time-to-live when the action is APPROVED, or a free-text rationale when the action is REJECTED. Cross-field invariants between `action` and the approve-only / reject-only members are enforced by service-side validation.</p>
    # @!attribute agent_space_id
    #   <p>The agent space identifier — multi-tenant workspace scope. Bound from the request URI.</p>
    #   @return [String]
    # @!attribute approval_id
    #   <p>Identifier of the approval request being resolved. A UUID. Bound from the request URI.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to take on the approval request — APPROVED or REJECTED.</p>
    #   @return [String]
    # @!attribute final_pattern
    #   <p>The finalized pattern (tool + argumentPins) that scopes the approval. Required when `action` is APPROVED; must be absent when `action` is REJECTED. The pattern narrows, and must not widen, the invocation originally requested by the agent. This cross-field invariant is enforced by service-side validation.</p>
    #   @return [Types::ApprovalPattern]
    # @!attribute reason
    #   <p>Optional free-text rationale for the decision. Permitted when `action` is REJECTED; ignored when `action` is APPROVED.</p>
    #   @return [String]
    # @!attribute ttl_seconds
    #   <p>Approval lifetime in seconds, starting from when the decision is submitted. Required when `action` is APPROVED AND `singleUse` is false; must be absent when `action` is REJECTED or when `singleUse` is true (a single-use approval backs one executed action and the redemption window collapses). Cross-field invariants are enforced by service-side validation; the @range bound here is the operation-boundary check that always applies (a maximum of 4 hours).</p>
    #   @return [Integer]
    # @!attribute single_use
    #   <p>Whether the approved action backs a single executed tool call (true) or is reusable within ttlSeconds (false). Required when `action` is APPROVED; must be absent when `action` is REJECTED. When true, ttlSeconds must be absent (the redemption window collapses to the single use). When false, ttlSeconds is required and bounds the reuse window. Cross-field invariants are enforced by service-side validation.</p>
    #   @return [Boolean]
    class UpdateApprovalActionRequest < Struct.new(
      nil,
      :agent_space_id,
      :approval_id,
      :action,
      :final_pattern,
      :reason,
      :ttl_seconds,
      :single_use,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for UpdateApprovalAction. Reports the post-submission lifecycle status of the approval request and, when applicable, the absolute expiry timestamp. The status is a lifecycle state distinct from the action verb — an APPROVED submission transitions the request to APPROVED status (live, redeemable); a REJECTED submission transitions it to REJECTED status (terminal).</p>
    # @!attribute approval_id
    #   <p>Identifier of the approval request that was resolved. Echoed back so the client can correlate the response with the request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Lifecycle status of the approval request immediately after submission. Expected post-submission states are APPROVED (when the action is APPROVED) or REJECTED (when the action is REJECTED); PENDING is not returned from this operation, and REVOKED and REDEEMED are reachable only via subsequent reads.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>Absolute timestamp at which the approval expires. Set when status is APPROVED (computed as the submission time plus ttlSeconds); absent when status is REJECTED.</p>
    #   @return [Time]
    class UpdateApprovalActionResponse < Struct.new(
      nil,
      :approval_id,
      :status,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for updating an asset file</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset containing the file</p>
    #   @return [String]
    # @!attribute path
    #   <p>The path of the file within the asset to update</p>
    #   @return [String]
    # @!attribute content
    #   <p>Updated file content. If omitted, the existing content is unchanged.</p>
    #   @return [Types::AssetFileBody]
    # @!attribute metadata
    #   <p>Metadata fields to update. Only the fields present in this document are updated. Omitted fields retain their current values.</p>
    #   @return [JSON]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier used for idempotent asset file update</p>
    #   @return [String]
    class UpdateAssetFileRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :path,
      :content,
      :metadata,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for updating an asset file</p>
    # @!attribute file
    #   <p>The asset file object</p>
    #   @return [Types::AssetFile]
    class UpdateAssetFileResponse < Struct.new(
      nil,
      :file,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for updating an asset</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the asset</p>
    #   @return [String]
    # @!attribute asset_id
    #   <p>The unique identifier of the asset to update</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Metadata fields to update. Only the fields present in this document are updated. Omitted fields retain their current values.</p>
    #   @return [JSON]
    # @!attribute content
    #   <p>Optional content update. A single file adds or replaces one file; a zip replaces all files; a sourceUrl re-syncs from the original source.</p>
    #   @return [Types::AssetContent]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier used for idempotent asset update</p>
    #   @return [String]
    class UpdateAssetRequest < Struct.new(
      nil,
      :agent_space_id,
      :asset_id,
      :metadata,
      :content,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for updating an asset</p>
    # @!attribute asset
    #   <p>The asset object</p>
    #   @return [Types::Asset]
    class UpdateAssetResponse < Struct.new(
      nil,
      :asset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating an existing service association. Present fields are fully replaced; absent fields are left unchanged.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The unique identifier of the given association.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration that directs how AgentSpace interacts with the given service. The entire configuration is replaced on update.</p>
    #   @return [Types::ServiceConfiguration]
    # @!attribute capabilities
    #   <p>Enabled capabilities for this association.</p>
    #   @return [Hash<String, Types::CapabilityConfiguration>]
    class UpdateAssociationInput < Struct.new(
      nil,
      :agent_space_id,
      :association_id,
      :configuration,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the updated association and optional webhook configuration.</p>
    # @!attribute association
    #   <p>Represents a service association within an AgentSpace, defining how the agent interacts with external services.</p>
    #   @return [Types::Association]
    # @!attribute webhook
    #   <p>Generic webhook configuration</p>
    #   @return [Types::GenericWebhook]
    class UpdateAssociationOutput < Struct.new(
      nil,
      :association,
      :webhook,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for updating a task</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the task</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the task to update</p>
    #   @return [String]
    # @!attribute task_status
    #   <p>Updated task status</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Client-provided token for idempotent operations</p>
    #   @return [String]
    class UpdateBacklogTaskRequest < Struct.new(
      nil,
      :agent_space_id,
      :task_id,
      :task_status,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing the updated task</p>
    # @!attribute task
    #   <p>The updated task object</p>
    #   @return [Types::Task]
    class UpdateBacklogTaskResponse < Struct.new(
      nil,
      :task,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for updating a goal</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the goal</p>
    #   @return [String]
    # @!attribute goal_id
    #   <p>The unique identifier of the goal to update</p>
    #   @return [String]
    # @!attribute evaluation_schedule
    #   <p>Update goal schedule state</p>
    #   @return [Types::GoalScheduleInput]
    # @!attribute client_token
    #   <p>Client-provided token for idempotent operations</p>
    #   @return [String]
    class UpdateGoalRequest < Struct.new(
      nil,
      :agent_space_id,
      :goal_id,
      :evaluation_schedule,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing the updated goal</p>
    # @!attribute goal
    #   <p>The updated goal object</p>
    #   @return [Types::Goal]
    class UpdateGoalResponse < Struct.new(
      nil,
      :goal,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating the external Identity Provider configuration for the Operator App.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute idp_client_secret
    #   <p>The OIDC client secret for the IdP application</p>
    #   @return [String]
    class UpdateOperatorAppIdpConfigInput < Struct.new(
      nil,
      :agent_space_id,
      :idp_client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the updated IdP configuration.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    # @!attribute idp
    #   <p>Configuration for external Identity Provider OIDC authentication flow for the Operator App.</p>
    #   @return [Types::IdpAuthConfiguration]
    class UpdateOperatorAppIdpConfigOutput < Struct.new(
      nil,
      :agent_space_id,
      :idp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating the certificate of a Private Connection.</p>
    # @!attribute name
    #   <p>The name of the Private Connection.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>The new certificate for the Private Connection.</p>
    #   @return [String]
    class UpdatePrivateConnectionCertificateInput < Struct.new(
      nil,
      :name,
      :certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output containing the updated Private Connection summary.</p>
    # @!attribute name
    #   <p>The name of the Private Connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Private Connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The service-managed Resource Gateway ARN. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>IP address or DNS name of the target resource. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>VPC identifier of the service-managed Resource Gateway. Only present for service-managed Private Connections.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The Resource Configuration ARN. Only present for self-managed Private Connections.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Private Connection.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The expiry time of the certificate associated with the Private Connection. Only present when a certificate is associated.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>DNS resolution mode for the Private Connection's resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>Message describing the reason for a failed Private Connection update, if applicable.</p>
    #   @return [String]
    class UpdatePrivateConnectionCertificateOutput < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for updating an existing recommendation</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the recommendation</p>
    #   @return [String]
    # @!attribute recommendation_id
    #   <p>The unique identifier for the recommendation to update</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the recommendation</p>
    #   @return [String]
    # @!attribute additional_context
    #   <p>Additional context for recommendation</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique token that ensures idempotency of the request</p>
    #   @return [String]
    class UpdateRecommendationRequest < Struct.new(
      nil,
      :agent_space_id,
      :recommendation_id,
      :status,
      :additional_context,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure containing the updated recommendation</p>
    # @!attribute recommendation
    #   <p>The updated recommendation</p>
    #   @return [Types::Recommendation]
    class UpdateRecommendationResponse < Struct.new(
      nil,
      :recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for updating a Trigger</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier for the agent space containing the Trigger</p>
    #   @return [String]
    # @!attribute trigger_id
    #   <p>The unique identifier of the Trigger to update</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status for the Trigger</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier used for idempotent Trigger update</p>
    #   @return [String]
    class UpdateTriggerRequest < Struct.new(
      nil,
      :agent_space_id,
      :trigger_id,
      :status,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for updating a Trigger</p>
    # @!attribute trigger
    #   <p>The Trigger object</p>
    #   @return [Types::Trigger]
    class UpdateTriggerResponse < Struct.new(
      nil,
      :trigger,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a usage metric with its configured limit and current usage value.</p>
    # @!attribute limit
    #   <p>Configured limit for this metric. A value of -1 indicates no limit is enforced.</p>
    #   @return [Integer]
    # @!attribute usage
    #   <p>Current usage for this metric</p>
    #   @return [Float]
    class UsageMetric < Struct.new(
      nil,
      :limit,
      :usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A block of content in a user message.</p>
    # @!attribute text
    #   <p>Text content from the user.</p>
    #   @return [String]
    # @!attribute tool_result
    #   <p>Tool execution result provided by the user.</p>
    #   @return [JSON]
    class UserMessageBlock < Struct.new(
      :text,
      :tool_result,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < UserMessageBlock; end
      class ToolResult < UserMessageBlock; end
      class Unknown < UserMessageBlock; end
    end

    # <p>Reference to a user in the system</p>
    # @!attribute user_id
    #   <p>The unique identifier for the user</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The type of user</p>
    #   @return [String]
    class UserReference < Struct.new(
      nil,
      :user_id,
      :user_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for validating an aws association</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the AgentSpace</p>
    #   @return [String]
    class ValidateAwsAssociationsInput < Struct.new(
      nil,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Empty Output for successful validating an aws association</p>
    class ValidateAwsAssociationsOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   <p>A summary of the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of specific failures encountered while validating the input. A member can appear in this list more than once if it failed to satisfy multiple constraints.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes one specific validation failure for an input member.</p>
    # @!attribute path
    #   <p>A JSONPointer expression to the structure member whose value failed to satisfy the modeled constraints.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed description of the validation failure.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :path,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a complete Webhook with all its properties, and unique identifier.</p>
    # @!attribute webhook_url
    #   <p>Webhook endpoint URL.</p>
    #   @return [String]
    # @!attribute webhook_type
    #   <p>Webhook authentication type.</p>
    #   @return [String]
    # @!attribute webhook_id
    #   <p>The unique identifier of the Webhook</p>
    #   @return [String]
    class Webhook < Struct.new(
      nil,
      :webhook_url,
      :webhook_type,
      :webhook_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Weekly recurrence</p>
    # @!attribute day_of_week
    #   <p>Day of week the window recurs on</p>
    #   @return [String]
    class WeeklyRecurrence < Struct.new(
      nil,
      :day_of_week,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
