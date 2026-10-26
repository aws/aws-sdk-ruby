# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentCoreControl
  # This module contains the types returned by client operations.
  module Types

    # <p>The Agent-to-Agent (A2A) protocol descriptor for a registry record. Contains the agent card definition as defined by the A2A protocol specification.</p>
    # @!attribute agent_card
    #   <p>The agent card definition for the A2A agent, as defined by the A2A protocol specification.</p>
    #   @return [Types::AgentCardDefinition]
    class A2aDescriptor < Struct.new(
      nil,
      :agent_card,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a request is denied per access permissions</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An action to take when a gateway rule's conditions are met.</p>
    # @!attribute configuration_bundle
    #   <p>An action that applies a configuration bundle override to the request.</p>
    #   @return [Types::ConfigurationBundleAction]
    # @!attribute route_to_target
    #   <p>An action that routes the request to a specific target.</p>
    #   @return [Types::RouteToTargetAction]
    class Action < Struct.new(
      :configuration_bundle,
      :route_to_target,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ConfigurationBundle < Action; end
      class RouteToTarget < Action; end
      class Unknown < Action; end
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset to add examples to. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute source
    #   <p> Source of examples to add. Provide either inline examples or an S3 URI pointing to a JSONL file. </p>
    #   @return [Types::DataSourceType]
    class AddDatasetExamplesRequest < Struct.new(
      nil,
      :dataset_id,
      :client_token,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the dataset. </p>
    #   @return [String]
    # @!attribute added_count
    #   <p> The number of examples added. </p>
    #   @return [Integer]
    # @!attribute updated_at
    #   <p> The timestamp when the examples were added. </p>
    #   @return [Time]
    # @!attribute example_ids
    #   <p> IDs of all added examples (auto-generated UUIDs). </p>
    #   @return [Array<String>]
    class AddDatasetExamplesResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :status,
      :added_count,
      :updated_at,
      :example_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The agent card definition for an A2A descriptor. Contains the schema version and inline content for the agent card.</p>
    # @!attribute schema_version
    #   <p>The schema version of the agent card based on the A2A protocol specification.</p>
    #   @return [String]
    # @!attribute inline_content
    #   <p>The JSON content containing the A2A agent card definition, conforming to the A2A protocol specification.</p>
    #   @return [String]
    class AgentCardDefinition < Struct.new(
      nil,
      :schema_version,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an agent runtime. An agent runtime is the execution environment for a Amazon Bedrock AgentCore Agent.</p>
    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the agent runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the agent runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The version of the agent runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_name
    #   <p>The name of the agent runtime.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the agent runtime.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the agent runtime was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the agent runtime.</p>
    #   @return [String]
    class AgentRuntime < Struct.new(
      nil,
      :agent_runtime_arn,
      :agent_runtime_id,
      :agent_runtime_version,
      :agent_runtime_name,
      :description,
      :last_updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The artifact of the agent.</p>
    # @!attribute container_configuration
    #   <p>The container configuration for the agent artifact.</p>
    #   @return [Types::ContainerConfiguration]
    # @!attribute code_configuration
    #   <p>The code configuration for the agent runtime artifact, including the source code location and execution settings.</p>
    #   @return [Types::CodeConfiguration]
    class AgentRuntimeArtifact < Struct.new(
      :container_configuration,
      :code_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContainerConfiguration < AgentRuntimeArtifact; end
      class CodeConfiguration < AgentRuntimeArtifact; end
      class Unknown < AgentRuntimeArtifact; end
    end

    # <p>Contains information about an agent runtime endpoint. An endpoint provides a way to connect to and interact with an agent runtime.</p>
    # @!attribute name
    #   <p>The name of the agent runtime endpoint.</p>
    #   @return [String]
    # @!attribute live_version
    #   <p>The live version of the agent runtime endpoint. This is the version that is currently serving requests.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>The target version of the agent runtime endpoint. This is the version that the endpoint is being updated to.</p>
    #   @return [String]
    # @!attribute agent_runtime_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the agent runtime endpoint.</p>
    #   @return [String]
    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the agent runtime associated with the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the agent runtime endpoint.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the agent runtime endpoint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the agent runtime endpoint.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the agent runtime endpoint was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the agent runtime endpoint was last updated.</p>
    #   @return [Time]
    class AgentRuntimeEndpoint < Struct.new(
      nil,
      :name,
      :live_version,
      :target_version,
      :agent_runtime_endpoint_arn,
      :agent_runtime_arn,
      :status,
      :id,
      :description,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an agent runtime version associated with a capacity provider. This is returned by <code>ListAgentRuntimeVersionsByCapacityProvider</code>.</p>
    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the agent runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The version of the agent runtime.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the agent runtime version.</p>
    #   @return [String]
    class AgentRuntimeVersionSummary < Struct.new(
      nil,
      :agent_runtime_arn,
      :agent_runtime_version,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The agent skills descriptor for a registry record. Contains an optional skill markdown definition in human-readable format and an optional structured skill definition.</p>
    # @!attribute skill_md
    #   <p>The optional skill markdown definition describing the agent's skills in a human-readable format.</p>
    #   @return [Types::SkillMdDefinition]
    # @!attribute skill_definition
    #   <p>The structured skill definition with schema version and content.</p>
    #   @return [Types::SkillDefinition]
    class AgentSkillsDescriptor < Struct.new(
      nil,
      :skill_md,
      :skill_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that restricts which workloads in the request's identity chain are allowed to invoke the target, identified by their hosting environments and workload identities. At launch, this is supported only for AgentCore Runtime targets, and the allowed workloads are AgentCore Gateways.</p>
    # @!attribute hosting_environments
    #   <p>The list of hosting environments whose workloads are allowed to invoke the target. At launch, the only supported hosting environment is AgentCore Gateway.</p>
    #   @return [Array<Types::HostingEnvironment>]
    # @!attribute workload_identities
    #   <p>The list of workload identities that are allowed to invoke the target.</p>
    #   @return [Array<String>]
    class AllowedWorkloadConfiguration < Struct.new(
      nil,
      :hosting_environments,
      :workload_identities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an Amazon API Gateway target.</p>
    # @!attribute rest_api_id
    #   <p>The ID of the API Gateway REST API.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The ID of the stage of the REST API to add as a target.</p>
    #   @return [String]
    # @!attribute api_gateway_tool_configuration
    #   <p>The configuration for defining REST API tool filters and overrides for the gateway target.</p>
    #   @return [Types::ApiGatewayToolConfiguration]
    class ApiGatewayTargetConfiguration < Struct.new(
      nil,
      :rest_api_id,
      :stage,
      :api_gateway_tool_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for defining REST API tool filters and overrides for the gateway target.</p>
    # @!attribute tool_overrides
    #   <p>A list of explicit tool definitions with optional custom names and descriptions.</p>
    #   @return [Array<Types::ApiGatewayToolOverride>]
    # @!attribute tool_filters
    #   <p>A list of path and method patterns to expose as tools using metadata from the REST API's OpenAPI specification.</p>
    #   @return [Array<Types::ApiGatewayToolFilter>]
    class ApiGatewayToolConfiguration < Struct.new(
      nil,
      :tool_overrides,
      :tool_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies which operations from an API Gateway REST API are exposed as tools. Tool names and descriptions are derived from the operationId and description fields in the API's exported OpenAPI specification.</p>
    # @!attribute filter_path
    #   <p>Resource path to match in the REST API. Supports exact paths (for example, <code>/pets</code>) or wildcard paths (for example, <code>/pets/*</code> to match all paths under <code>/pets</code>). Must match existing paths in the REST API.</p>
    #   @return [String]
    # @!attribute methods
    #   <p>The methods to filter for.</p>
    #   @return [Array<String>]
    class ApiGatewayToolFilter < Struct.new(
      nil,
      :filter_path,
      :methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings to override configurations for a tool.</p>
    # @!attribute name
    #   <p>The name of tool. Identifies the tool in the Model Context Protocol.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the tool. Provides information about the purpose and usage of the tool. If not provided, uses the description from the API's OpenAPI specification.</p>
    #   @return [String]
    # @!attribute path
    #   <p>Resource path in the REST API (e.g., <code>/pets</code>). Must explicitly match an existing path in the REST API.</p>
    #   @return [String]
    # @!attribute method
    #   <p>The HTTP method to expose for the specified path.</p>
    #   @return [String]
    class ApiGatewayToolOverride < Struct.new(
      nil,
      :name,
      :description,
      :path,
      :method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an API key credential provider.</p>
    # @!attribute name
    #   <p>The name of the API key credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the API key credential provider.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the API key credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the API key credential provider was last updated.</p>
    #   @return [Time]
    class ApiKeyCredentialProviderItem < Struct.new(
      nil,
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for API schema.</p>
    # @!attribute s3
    #   <p>The Amazon S3 configuration for a gateway. This structure defines how the gateway accesses files in Amazon S3.</p>
    #   @return [Types::S3Configuration]
    # @!attribute inline_payload
    #   <p>The inline payload containing the API schema definition.</p>
    #   @return [String]
    class ApiSchemaConfiguration < Struct.new(
      :s3,
      :inline_payload,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ApiSchemaConfiguration; end
      class InlinePayload < ApiSchemaConfiguration; end
      class Unknown < ApiSchemaConfiguration; end
    end

    # <p>Configuration for the registry record approval workflow. Controls whether records added to the registry require explicit approval before becoming active.</p>
    # @!attribute auto_approval
    #   <p>Whether registry records are auto-approved. When set to <code>true</code>, records are automatically approved upon creation. When set to <code>false</code> (the default), records require explicit approval for security purposes.</p>
    #   @return [Boolean]
    class ApprovalConfiguration < Struct.new(
      nil,
      :auto_approval,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_approval] = false unless options.key?(:auto_approval)
        super
      end
    end

    # <p>Configuration settings for connecting to Atlassian services using OAuth2 authentication. This includes the client credentials required to authenticate with Atlassian's OAuth2 authorization server.</p>
    # @!attribute client_id
    #   <p>The client ID for the Atlassian OAuth2 provider. This identifier is assigned by Atlassian when you register your application.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the Atlassian OAuth2 provider. This secret is assigned by Atlassian and used along with the client ID to authenticate your application.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret for the Atlassian OAuth2 provider. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class AtlassianOauth2ProviderConfigInput < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>The configuration details returned for an Atlassian OAuth2 provider, including the client ID and OAuth2 discovery information.</p>
    # @!attribute oauth_discovery
    #   <p>Contains the discovery information for an OAuth2 provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the Atlassian OAuth2 provider.</p>
    #   @return [String]
    class AtlassianOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the authorization data that is returned when a gateway target is configured with a credential provider with authorization code grant type and requires user federation.</p>
    # @!attribute oauth2
    #   <p>OAuth2 authorization data for the gateway target.</p>
    #   @return [Types::OAuth2AuthorizationData]
    class AuthorizationData < Struct.new(
      :oauth2,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Oauth2 < AuthorizationData; end
      class Unknown < AuthorizationData; end
    end

    # <p>Represents inbound authorization configuration options used to authenticate incoming requests. </p>
    # @!attribute custom_jwt_authorizer
    #   <p>The inbound JWT-based authorization, specifying how incoming requests should be authenticated.</p>
    #   @return [Types::CustomJWTAuthorizerConfiguration]
    class AuthorizerConfiguration < Struct.new(
      :custom_jwt_authorizer,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomJWTAuthorizer < AuthorizerConfiguration; end
      class Unknown < AuthorizerConfiguration; end
    end

    # <p>Defines the value or values to match for and the relationship of the match.</p>
    # @!attribute claim_match_value
    #   <p>The value or values to match for.</p>
    #   @return [Types::ClaimMatchValueType]
    # @!attribute claim_match_operator
    #   <p>Defines the relationship between the claim field value and the value or values you're matching for.</p>
    #   @return [String]
    class AuthorizingClaimMatchValueType < Struct.new(
      nil,
      :claim_match_value,
      :claim_match_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute rate_limits
    #   <p>The complete set of rate limits for this gateway. This operation replaces all existing rate limits in a single request. If the operation fails, no rate limits are changed.</p>
    #   @return [Array<Types::BatchPutLimitEntry>]
    class BatchPutGatewayRateLimitsRequest < Struct.new(
      nil,
      :gateway_identifier,
      :client_token,
      :rate_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rate_limits
    #   <p>The resulting set of rate limits after the batch operation.</p>
    #   @return [Array<Types::GatewayRateLimitDetail>]
    class BatchPutGatewayRateLimitsResponse < Struct.new(
      nil,
      :rate_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rate limit definition within a batch put request. If you provide a <code>rateLimitId</code>, the service uses it for upsert matching against existing rate limits.</p>
    # @!attribute rate_limit_id
    #   <p>The unique identifier of the rate limit. If provided, the service uses it for upsert matching against existing rate limits.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional human-readable description for this rate limit. If not provided, the rate limit is created without a description.</p>
    #   @return [String]
    # @!attribute dimension_keys
    #   <p>The ordered list of dimension key names that define the scope of this rate limit.</p>
    #   @return [Array<String>]
    # @!attribute entries
    #   <p>The list of rule entries that map dimension values to rate configurations.</p>
    #   @return [Array<Types::LimitEntry>]
    class BatchPutLimitEntry < Struct.new(
      nil,
      :rate_limit_id,
      :description,
      :dimension_keys,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration for using Amazon Bedrock models in evaluator assessments, including model selection and inference parameters. </p>
    # @!attribute model_id
    #   <p> The identifier of the Amazon Bedrock model to use for evaluation. Must be a supported foundation model available in your region. </p>
    #   @return [String]
    # @!attribute inference_config
    #   <p> The inference configuration parameters that control model behavior during evaluation, including temperature, token limits, and sampling settings. </p>
    #   @return [Types::InferenceConfiguration]
    # @!attribute additional_model_request_fields
    #   <p> Additional model-specific request fields to customize model behavior beyond the standard inference configuration. </p>
    #   @return [JSON]
    class BedrockEvaluatorModelConfig < Struct.new(
      nil,
      :model_id,
      :inference_config,
      :additional_model_request_fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Browser enterprise policy configuration.</p>
    # @!attribute location
    #   <p>The location of the enterprise policy file.</p>
    #   @return [Types::ResourceLocation]
    # @!attribute type
    #   <p>The type of browser enterprise policy. Available values are <code>MANAGED</code> and <code>RECOMMENDED</code>.</p>
    #   @return [String]
    class BrowserEnterprisePolicy < Struct.new(
      nil,
      :location,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The network configuration for a browser. This structure defines how the browser connects to the network.</p>
    # @!attribute network_mode
    #   <p>The network mode for the browser. This field specifies how the browser connects to the network.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the browser. This configuration is required when the network mode is set to <code>VPC</code>.</p>
    #   @return [Types::VpcConfig]
    class BrowserNetworkConfiguration < Struct.new(
      nil,
      :network_mode,
      :vpc_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:network_mode] = 'PUBLIC' unless options.key?(:network_mode)
        super
      end
    end

    # <p>Contains summary information about a browser profile. A browser profile stores persistent browser data that can be reused across browser sessions.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the browser profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The Amazon Resource Name (ARN) of the browser profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the browser profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the browser profile. Possible values include READY, SAVING, DELETING, and DELETED.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the browser profile was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the browser profile was last updated.</p>
    #   @return [Time]
    # @!attribute last_saved_at
    #   <p>The timestamp when browser session data was last saved to this profile.</p>
    #   @return [Time]
    # @!attribute last_saved_browser_session_id
    #   <p>The identifier of the browser session from which data was last saved to this profile.</p>
    #   @return [String]
    # @!attribute last_saved_browser_id
    #   <p>The identifier of the browser from which data was last saved to this profile.</p>
    #   @return [String]
    class BrowserProfileSummary < Struct.new(
      nil,
      :profile_id,
      :profile_arn,
      :name,
      :description,
      :status,
      :created_at,
      :last_updated_at,
      :last_saved_at,
      :last_saved_browser_session_id,
      :last_saved_browser_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for enabling browser signing capabilities that allow agents to cryptographically identify themselves to websites using HTTP message signatures.</p>
    # @!attribute enabled
    #   <p>Specifies whether browser signing is enabled. When enabled, the browser will cryptographically sign HTTP requests to identify itself as an AI agent to bot control vendors.</p>
    #   @return [Boolean]
    class BrowserSigningConfigInput < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>The current browser signing configuration that shows whether cryptographic agent identification is enabled for web bot authentication.</p>
    # @!attribute enabled
    #   <p>Indicates whether browser signing is currently enabled for cryptographic agent identification using HTTP message signatures.</p>
    #   @return [Boolean]
    class BrowserSigningConfigOutput < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Contains summary information about a browser. A browser enables Amazon Bedrock AgentCore Agent to interact with web content.</p>
    # @!attribute browser_id
    #   <p>The unique identifier of the browser.</p>
    #   @return [String]
    # @!attribute browser_arn
    #   <p>The Amazon Resource Name (ARN) of the browser.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the browser.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the browser.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the browser was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the browser was last updated.</p>
    #   @return [Time]
    class BrowserSummary < Struct.new(
      nil,
      :browser_id,
      :browser_arn,
      :name,
      :description,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for customer-managed compute capacity for the AgentCore Runtime. A capacity provider runs the AgentCore Runtime on the Instances compute type, using Amazon Web Services managed compute in your account.</p>
    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider to use for the AgentCore Runtime.</p>
    #   @return [String]
    class CapacityProviderConfiguration < Struct.new(
      nil,
      :capacity_provider_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a capacity provider, as returned by <code>ListCapacityProviders</code>. Each summary includes the capacity provider identifier, Amazon Resource Name (ARN), name, status, and last-updated timestamp.</p>
    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the capacity provider.</p>
    #   @return [String]
    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the capacity provider.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the capacity provider. For possible values, see <code>CapacityProviderStatus</code>.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the capacity provider was last updated.</p>
    #   @return [Time]
    class CapacityProviderSummary < Struct.new(
      nil,
      :capacity_provider_id,
      :capacity_provider_arn,
      :name,
      :status,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a capacity provider volume mounted into the AgentCore Runtime. This references a persistent volume by its logical name, as defined in the capacity provider's list of volumes.</p>
    # @!attribute volume_name
    #   <p>The logical name of the capacity provider volume to mount. This name must match a volume that is defined in the capacity provider's list of volumes.</p>
    #   @return [String]
    # @!attribute mount_path
    #   <p>The mount path for the capacity provider volume inside the AgentCore Runtime. The path must be under <code>/mnt</code> with exactly one subdirectory level (for example, <code>/mnt/data</code>).</p>
    #   @return [String]
    class CapacityProviderVolumeConfiguration < Struct.new(
      nil,
      :volume_name,
      :mount_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Capacity Reservation targeting option for the instances.</p>
    # @!attribute capacity_reservation_preference
    #   <p>The Capacity Reservation preference for the instances.</p>
    #   @return [String]
    # @!attribute capacity_reservation_target
    #   <p>The target Capacity Reservation or Capacity Reservation group for the instances.</p>
    #   @return [Types::CapacityReservationTarget]
    class CapacityReservationSpecification < Struct.new(
      nil,
      :capacity_reservation_preference,
      :capacity_reservation_target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the target Capacity Reservation or Capacity Reservation group for the instances.</p>
    # @!attribute capacity_reservation_id
    #   <p>The ID of the Capacity Reservation in which to run the instances.</p>
    #   @return [String]
    # @!attribute capacity_reservation_resource_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Capacity Reservation resource group in which to run the instances.</p>
    #   @return [String]
    class CapacityReservationTarget < Struct.new(
      nil,
      :capacity_reservation_id,
      :capacity_reservation_resource_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The definition of a categorical rating scale option that provides a named category with its description for evaluation scoring. </p>
    # @!attribute definition
    #   <p> The description that explains what this categorical rating represents and when it should be used. </p>
    #   @return [String]
    # @!attribute label
    #   <p> The label or name of this categorical rating option. </p>
    #   @return [String]
    class CategoricalScaleDefinition < Struct.new(
      nil,
      :definition,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a Cedar policy statement within the AgentCore Policy system. Cedar is a policy language designed for authorization that provides human-readable, analyzable, and high-performance policy evaluation for controlling agent behavior and access decisions. </p>
    # @!attribute statement
    #   <p>The Cedar policy statement that defines the authorization logic. This statement follows Cedar syntax and specifies principals, actions, resources, and conditions that determine when access should be allowed or denied.</p>
    #   @return [String]
    class CedarPolicy < Struct.new(
      nil,
      :statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A certificate to install in the browser or code interpreter.</p>
    # @!attribute location
    #   <p>The location of the certificate.</p>
    #   @return [Types::CertificateLocation]
    class Certificate < Struct.new(
      nil,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a private certificate authority (CA) certificate that the gateway uses to verify TLS connections to the target endpoint. Use this when the target presents a certificate issued by a private CA that is not trusted by default. Specify exactly one certificate source. The configuration is a reference only and never contains the certificate content.</p>
    # @!attribute s3
    #   <p>The Amazon S3 location of the PEM-encoded private CA certificate.</p>
    #   @return [Types::S3CertificateConfiguration]
    # @!attribute secrets_manager
    #   <p>The Amazon Web Services Secrets Manager location of the PEM-encoded private CA certificate.</p>
    #   @return [Types::SecretsManagerCertificateConfiguration]
    class CertificateConfiguration < Struct.new(
      :s3,
      :secrets_manager,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < CertificateConfiguration; end
      class SecretsManager < CertificateConfiguration; end
      class Unknown < CertificateConfiguration; end
    end

    # <p>The location from which to retrieve a certificate.</p>
    # @!attribute secrets_manager
    #   <p>The Amazon Web Services Secrets Manager location of the certificate.</p>
    #   @return [Types::SecretsManagerLocation]
    class CertificateLocation < Struct.new(
      :secrets_manager,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SecretsManager < CertificateLocation; end
      class Unknown < CertificateLocation; end
    end

    # <p>The value or values to match for.</p> <ul> <li> <p>Include a <code>matchValueString</code> with the <code>EQUALS</code> operator to specify a string that matches the claim field value.</p> </li> <li> <p>Include a <code>matchValueArray</code> to specify an array of string values. You can use the following operators:</p> <ul> <li> <p>Use <code>CONTAINS</code> to yield a match if the claim field value is in the array.</p> </li> <li> <p>Use <code>CONTAINS_ANY</code> to yield a match if the claim field value contains any of the strings in the array.</p> </li> </ul> </li> </ul>
    # @!attribute match_value_string
    #   <p>The string value to match for.</p>
    #   @return [String]
    # @!attribute match_value_string_list
    #   <p>An array of strings to check for a match.</p>
    #   @return [Array<String>]
    class ClaimMatchValueType < Struct.new(
      :match_value_string,
      :match_value_string_list,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MatchValueString < ClaimMatchValueType; end
      class MatchValueStringList < ClaimMatchValueType; end
      class Unknown < ClaimMatchValueType; end
    end

    # <p> The configuration for reading agent traces from CloudWatch logs as input for online evaluation. </p>
    # @!attribute log_group_names
    #   <p> The list of CloudWatch log group names to monitor for agent traces.</p>
    #   @return [Array<String>]
    # @!attribute log_group_name_prefixes
    #   <p> The list of CloudWatch log group name prefixes to monitor for agent traces. Specify this instead of <code>logGroupNames</code> to match log groups by prefix. Specify either <code>logGroupNames</code> or <code>logGroupNamePrefixes</code>, not both. One of the two is required. </p>
    #   @return [Array<String>]
    # @!attribute service_names
    #   <p> The list of service names to filter traces within the specified log groups. Used to identify relevant agent sessions. </p>
    #   @return [Array<String>]
    class CloudWatchLogsInputConfig < Struct.new(
      nil,
      :log_group_names,
      :log_group_name_prefixes,
      :service_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:log_group_names] = [] unless options.key?(:log_group_names)
        super
      end
    end

    # <p> The configuration for writing evaluation results to CloudWatch logs with embedded metric format (EMF) for monitoring. </p>
    # @!attribute log_group_name
    #   <p> The name of the CloudWatch log group where evaluation results will be written. An existing log group is used as-is; otherwise the service creates it, which requires the evaluation execution role to grant <code>logs:CreateLogGroup</code> on the log group. Don't specify this value when <code>resultDestination</code> is <code>SOURCE_LOG_GROUP</code>. The name can't be under the service-reserved <code>/aws/bedrock-agentcore/evaluations/</code> namespace, apart from this configuration's own service-managed default group. </p>
    #   @return [String]
    # @!attribute metrics_namespace
    #   <p> The CloudWatch metrics namespace where evaluation result metrics are published. If you omit this value, the service publishes metrics to <code>Bedrock-AgentCore/Evaluations</code>. This value can't begin with <code>AWS/</code>. </p>
    #   @return [String]
    # @!attribute result_destination
    #   <p> The destination where evaluation results are written. Valid values: </p> <ul> <li> <p> <code>DEDICATED_LOG_GROUP</code> (default) – Writes results to a dedicated result log group.</p> </li> <li> <p> <code>SOURCE_LOG_GROUP</code> – Writes results back to the log group that the agent traces were read from. If you use this value, don't specify <code>logGroupName</code>.</p> </li> </ul>
    #   @return [String]
    class CloudWatchOutputConfig < Struct.new(
      nil,
      :log_group_name,
      :metrics_namespace,
      :result_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:log_group_name] = '' unless options.key?(:log_group_name)
        options[:result_destination] = 'DEDICATED_LOG_GROUP' unless options.key?(:result_destination)
        super
      end
    end

    # <p>Configuration for periodic batch evaluation clustering, specifying how often clustering jobs run.</p>
    # @!attribute frequencies
    #   <p>The list of frequencies at which clustering batch evaluations are triggered.</p>
    #   @return [Array<String>]
    class ClusteringConfig < Struct.new(
      nil,
      :frequencies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source code configuration that specifies the location and details of the code to be executed.</p>
    # @!attribute s3
    #   <p>The Amazon Amazon S3 object that contains the source code for the agent runtime.</p>
    #   @return [Types::S3Location]
    class Code < Struct.new(
      :s3,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < Code; end
      class Unknown < Code; end
    end

    # <p> Configuration for a code-based evaluator. Specify the Lambda function to use for evaluation. </p>
    # @!attribute lambda_config
    #   <p> The Lambda function configuration for code-based evaluation. </p>
    #   @return [Types::LambdaEvaluatorConfig]
    class CodeBasedEvaluatorConfig < Struct.new(
      :lambda_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class LambdaConfig < CodeBasedEvaluatorConfig; end
      class Unknown < CodeBasedEvaluatorConfig; end
    end

    # <p>The configuration for the source code that defines how the agent runtime code should be executed, including the code location, runtime environment, and entry point.</p>
    # @!attribute code
    #   <p>The source code location and configuration details.</p>
    #   @return [Types::Code]
    # @!attribute runtime
    #   <p>The runtime environment for executing the agent code. Specify the programming language and version to use for the agent runtime. For valid values, see the list of supported runtimes.</p>
    #   @return [String]
    # @!attribute entry_point
    #   <p>The entry point for the code execution, specifying the function or method that should be invoked when the code runs.</p>
    #   @return [Array<String>]
    class CodeConfiguration < Struct.new(
      nil,
      :code,
      :runtime,
      :entry_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The network configuration for a code interpreter. This structure defines how the code interpreter connects to the network.</p>
    # @!attribute network_mode
    #   <p>The network mode for the code interpreter. This field specifies how the code interpreter connects to the network.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the code interpreter. This configuration is required when the network mode is set to <code>VPC</code>.</p>
    #   @return [Types::VpcConfig]
    class CodeInterpreterNetworkConfiguration < Struct.new(
      nil,
      :network_mode,
      :vpc_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:network_mode] = 'SANDBOX' unless options.key?(:network_mode)
        super
      end
    end

    # <p>Contains summary information about a code interpreter. A code interpreter enables Amazon Bedrock AgentCore Agent to execute code.</p>
    # @!attribute code_interpreter_id
    #   <p>The unique identifier of the code interpreter.</p>
    #   @return [String]
    # @!attribute code_interpreter_arn
    #   <p>The Amazon Resource Name (ARN) of the code interpreter.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code interpreter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the code interpreter.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code interpreter.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the code interpreter was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the code interpreter was last updated.</p>
    #   @return [Time]
    class CodeInterpreterSummary < Struct.new(
      nil,
      :code_interpreter_id,
      :code_interpreter_arn,
      :name,
      :description,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Coinbase CDP configuration — credentials provided by Coinbase Developer Platform.</p>
    # @!attribute api_key_id
    #   <p>The API key identifier provided by Coinbase Developer Platform.</p>
    #   @return [String]
    # @!attribute api_key_secret
    #   <p>The API key secret provided by Coinbase Developer Platform.</p>
    #   @return [String]
    # @!attribute api_key_secret_source
    #   <p>The source type of the API key secret for the Coinbase Developer Platform. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute api_key_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the API key secret. This includes the secret ID and the JSON key used to extract the API key secret value from the secret. Required when <code>apiKeySecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute wallet_secret
    #   <p>The wallet secret provided by Coinbase Developer Platform.</p>
    #   @return [String]
    # @!attribute wallet_secret_source
    #   <p>The source type of the wallet secret for the Coinbase Developer Platform. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute wallet_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the wallet secret. This includes the secret ID and the JSON key used to extract the wallet secret value from the secret. Required when <code>walletSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    class CoinbaseCdpConfigurationInput < Struct.new(
      nil,
      :api_key_id,
      :api_key_secret,
      :api_key_secret_source,
      :api_key_secret_config,
      :wallet_secret,
      :wallet_secret_source,
      :wallet_secret_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:api_key_secret] = '' unless options.key?(:api_key_secret)
        options[:wallet_secret] = '' unless options.key?(:wallet_secret)
        super
      end
    end

    # <p>Coinbase CDP configuration output with secret ARNs.</p>
    # @!attribute api_key_id
    #   <p>The API key identifier provided by Coinbase Developer Platform.</p>
    #   @return [String]
    # @!attribute api_key_secret_arn
    #   <p>Contains information about a secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute api_key_secret_json_key
    #   <p>The JSON key used to extract the API key secret value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute api_key_secret_source
    #   <p>The source type of the API key secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute wallet_secret_arn
    #   <p>Contains information about a secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute wallet_secret_json_key
    #   <p>The JSON key used to extract the wallet secret value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute wallet_secret_source
    #   <p>The source type of the wallet secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class CoinbaseCdpConfigurationOutput < Struct.new(
      nil,
      :api_key_id,
      :api_key_secret_arn,
      :api_key_secret_json_key,
      :api_key_secret_source,
      :wallet_secret_arn,
      :wallet_secret_json_key,
      :wallet_secret_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the service-managed Coinbase CDP secrets to rotate.</p>
    # @!attribute secrets
    #   <p>The secrets to rotate. Specify at least one value. Each secret that you specify is rotated independently.</p> <ul> <li> <p> <code>API_KEY</code> - The API key that the payment connector uses to call Coinbase CDP. Rotate it as routine maintenance, or if you suspect that it is compromised.</p> </li> <li> <p> <code>WALLET_SECRET</code> - The wallet secret that signs transactions. Rotate it only if it is lost or compromised. Coinbase CDP allows one wallet secret per project, so it is replaced in place and signing can be briefly interrupted.</p> </li> </ul>
    #   @return [Array<String>]
    class CoinbaseCdpRotationTargets < Struct.new(
      nil,
      :secrets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a component within a configuration bundle. The component type is inferred from the component identifier ARN.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute configuration
    #   <p>The configuration values as a flexible JSON document.</p>
    #   @return [JSON]
    class ComponentConfiguration < Struct.new(
      nil,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The compute configuration for a capacity provider. This structure defines the type and settings of the compute resources used to launch instances.</p>
    # @!attribute ec2_configuration
    #   <p>The Amazon EC2 compute configuration for the capacity provider.</p>
    #   @return [Types::Ec2Configuration]
    class ComputeConfiguration < Struct.new(
      :ec2_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Ec2Configuration < ComputeConfiguration; end
      class Unknown < ComputeConfiguration; end
    end

    # <p>Exception thrown when a resource is modified concurrently by multiple requests.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A condition that determines when a gateway rule applies. Conditions can match on principals or request paths.</p>
    # @!attribute match_principals
    #   <p>A condition that matches on the identity of the caller making the request.</p>
    #   @return [Types::MatchPrincipals]
    # @!attribute match_paths
    #   <p>A condition that matches on the request path.</p>
    #   @return [Types::MatchPaths]
    class Condition < Struct.new(
      :match_principals,
      :match_paths,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MatchPrincipals < Condition; end
      class MatchPaths < Condition; end
      class Unknown < Condition; end
    end

    # <p>An action that applies a configuration bundle override, either as a static override or a weighted split for A/B testing.</p>
    # @!attribute static_override
    #   <p>A static configuration bundle override that applies a single bundle version to all matching requests.</p>
    #   @return [Types::StaticOverride]
    # @!attribute weighted_override
    #   <p>A weighted configuration bundle override that splits traffic between multiple bundle versions based on configured weights.</p>
    #   @return [Types::WeightedOverride]
    class ConfigurationBundleAction < Struct.new(
      :static_override,
      :weighted_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StaticOverride < ConfigurationBundleAction; end
      class WeightedOverride < ConfigurationBundleAction; end
      class Unknown < ConfigurationBundleAction; end
    end

    # <p>A reference to a specific version of a configuration bundle.</p>
    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_version
    #   <p>The version of the configuration bundle.</p>
    #   @return [String]
    class ConfigurationBundleReference < Struct.new(
      nil,
      :bundle_arn,
      :bundle_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a configuration bundle.</p>
    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_name
    #   <p>The name of the configuration bundle.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configuration bundle.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the configuration bundle was created.</p>
    #   @return [Time]
    class ConfigurationBundleSummary < Struct.new(
      nil,
      :bundle_arn,
      :bundle_id,
      :bundle_name,
      :description,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a configuration bundle version.</p>
    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version identifier of this configuration bundle version.</p>
    #   @return [String]
    # @!attribute lineage_metadata
    #   <p>The version lineage metadata, including parent versions, branch name, and creation source.</p>
    #   @return [Types::VersionLineageMetadata]
    # @!attribute version_created_at
    #   <p>The timestamp when this version was created.</p>
    #   @return [Time]
    class ConfigurationBundleVersionSummary < Struct.new(
      nil,
      :bundle_arn,
      :bundle_id,
      :version_id,
      :lineage_metadata,
      :version_created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when there is a conflict performing an operation</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a single tool within a connector.</p>
    # @!attribute name
    #   <p>The tool or operation name (for example, <code>retrieve</code> or <code>webSearch</code>).</p>
    #   @return [String]
    # @!attribute description
    #   <p>An agent-facing description override for this tool.</p>
    #   @return [String]
    # @!attribute parameter_values
    #   <p>Parameters to set as fixed or default values when provisioning this tool.</p>
    #   @return [JSON]
    # @!attribute parameter_overrides
    #   <p>Parameters to expose to the agent at runtime, with optional description overrides.</p>
    #   @return [Array<Types::ConnectorParameterOverride>]
    class ConnectorConfiguration < Struct.new(
      nil,
      :name,
      :description,
      :parameter_values,
      :parameter_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a parameter override for a connector tool, allowing you to control parameter visibility and descriptions.</p>
    # @!attribute path
    #   <p>A JSON Pointer path identifying the parameter (for example, <code>/numberOfResults</code> or <code>/filter</code>).</p>
    #   @return [String]
    # @!attribute description
    #   <p>An agent-facing description override for this parameter.</p>
    #   @return [String]
    # @!attribute visible
    #   <p>Whether this parameter is visible to the agent. If not specified, uses the service default.</p>
    #   @return [Boolean]
    class ConnectorParameterOverride < Struct.new(
      nil,
      :path,
      :description,
      :visible,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source identifying the connector integration.</p>
    # @!attribute connector_id
    #   <p>The identifier for the connector integration (for example, <code>bedrock-knowledge-bases</code>).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the connector to use (for example, <code>1.1.0</code>). If you don't specify a version, the service uses the latest available version.</p>
    #   @return [String]
    class ConnectorSource < Struct.new(
      nil,
      :connector_id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a connector integration target. Connectors provide pre-built integrations with Amazon Web Services services and third-party tools.</p>
    # @!attribute source
    #   <p>The source configuration identifying which connector to use.</p>
    #   @return [Types::ConnectorSource]
    # @!attribute enabled
    #   <p>A list of tool names to enable from this connector. If absent, all tools provided by the connector are enabled.</p>
    #   @return [Array<String>]
    # @!attribute configurations
    #   <p>A list of per-tool configurations for the connector.</p>
    #   @return [Array<Types::ConnectorConfiguration>]
    class ConnectorTargetConfiguration < Struct.new(
      nil,
      :source,
      :enabled,
      :configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identity provider configuration used to authenticate end users to the consent portal.</p>
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth2 credential provider used to authenticate end users to the consent portal.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth2 scopes that the consent portal requests when authenticating end users.</p>
    #   @return [Array<String>]
    # @!attribute audience
    #   <p>The audience value that the consent portal includes when requesting tokens from the identity provider.</p>
    #   @return [String]
    class ConsentPortalIdpConfig < Struct.new(
      nil,
      :credential_provider_arn,
      :scopes,
      :audience,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource served by the consent portal.</p>
    # @!attribute identifier
    #   <p>The identifier of the source resource. For an <code>agentcore-gateway</code> source, this is the gateway ID or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the source resource.</p>
    #   @return [String]
    class ConsentPortalSource < Struct.new(
      nil,
      :identifier,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a consent portal.</p>
    # @!attribute sources
    #   <p>The resources served by the consent portal.</p>
    #   @return [Array<Types::ConsentPortalSource>]
    # @!attribute consent_portal_arn
    #   <p>The Amazon Resource Name (ARN) of the consent portal.</p>
    #   @return [String]
    # @!attribute consent_portal_id
    #   <p>The unique identifier of the consent portal.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the consent portal was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the consent portal.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the consent portal.</p>
    #   @return [String]
    # @!attribute portal_url
    #   <p>The URL used to access the consent portal.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the consent portal.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp for when the consent portal was last updated.</p>
    #   @return [Time]
    class ConsentPortalSummary < Struct.new(
      nil,
      :sources,
      :consent_portal_arn,
      :consent_portal_id,
      :created_at,
      :description,
      :name,
      :portal_url,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains consolidation configuration information for a memory strategy.</p>
    # @!attribute custom_consolidation_configuration
    #   <p>The custom consolidation configuration.</p>
    #   @return [Types::CustomConsolidationConfiguration]
    class ConsolidationConfiguration < Struct.new(
      :custom_consolidation_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomConsolidationConfiguration < ConsolidationConfiguration; end
      class Unknown < ConsolidationConfiguration; end
    end

    # <p>Representation of a container configuration.</p>
    # @!attribute container_uri
    #   <p>The ECR URI of the container.</p>
    #   @return [String]
    class ContainerConfiguration < Struct.new(
      nil,
      :container_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents content input for policy generation operations. This structure encapsulates the natural language descriptions or other content formats that are used as input for AI-powered policy generation.</p>
    # @!attribute raw_text
    #   <p>The raw text content containing natural language descriptions of desired policy behavior. This text is processed by AI to generate corresponding Dogwood policy statements that match the described intent.</p>
    #   @return [String]
    class Content < Struct.new(
      :raw_text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RawText < Content; end
      class Unknown < Content; end
    end

    # <p>Defines what content to stream and at what level of detail.</p>
    # @!attribute type
    #   <p>Type of content to stream.</p>
    #   @return [String]
    # @!attribute level
    #   <p>Level of detail for streamed content.</p>
    #   @return [String]
    class ContentConfiguration < Struct.new(
      nil,
      :type,
      :level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:level] = 'METADATA_ONLY' unless options.key?(:level)
        super
      end
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to create an endpoint for.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The version of the AgentCore Runtime to use for the endpoint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the agent runtime endpoint. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateAgentRuntimeEndpointRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :name,
      :agent_runtime_version,
      :description,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_version
    #   <p>The target version of the AgentCore Runtime for the endpoint.</p>
    #   @return [String]
    # @!attribute agent_runtime_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the AgentCore Runtime endpoint was created.</p>
    #   @return [Time]
    class CreateAgentRuntimeEndpointResponse < Struct.new(
      nil,
      :target_version,
      :agent_runtime_endpoint_arn,
      :agent_runtime_arn,
      :agent_runtime_id,
      :endpoint_name,
      :status,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_name
    #   <p>The name of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_artifact
    #   <p>The artifact of the AgentCore Runtime.</p>
    #   @return [Types::AgentRuntimeArtifact]
    # @!attribute role_arn
    #   <p>The IAM role ARN that provides permissions for the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The network configuration for the AgentCore Runtime.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the AgentCore Runtime.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute request_header_configuration
    #   <p>Configuration for HTTP request headers that will be passed through to the runtime.</p>
    #   @return [Types::RequestHeaderConfiguration]
    # @!attribute protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    #   @return [Types::ProtocolConfiguration]
    # @!attribute lifecycle_configuration
    #   <p>The life cycle configuration for the AgentCore Runtime.</p>
    #   @return [Types::LifecycleConfiguration]
    # @!attribute environment_variables
    #   <p>Environment variables to set in the AgentCore Runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute filesystem_configurations
    #   <p>The filesystem configurations to mount into the AgentCore Runtime. Use filesystem configurations to provide persistent storage to your AgentCore Runtime sessions.</p>
    #   @return [Array<Types::FilesystemConfiguration>]
    # @!attribute capacity_provider_configuration
    #   <p>The capacity provider configuration for the AgentCore Runtime. Use a capacity provider to run the AgentCore Runtime on the Instances compute type, which provisions Amazon Web Services managed compute in your account.</p>
    #   @return [Types::CapacityProviderConfiguration]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the agent runtime. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute platform_version
    #   <p>The version of the runtime platform to use for the AgentCore Runtime.</p>
    #   @return [String]
    class CreateAgentRuntimeRequest < Struct.new(
      nil,
      :agent_runtime_name,
      :agent_runtime_artifact,
      :role_arn,
      :network_configuration,
      :client_token,
      :description,
      :authorizer_configuration,
      :request_header_configuration,
      :protocol_configuration,
      :lifecycle_configuration,
      :environment_variables,
      :filesystem_configurations,
      :capacity_provider_configuration,
      :tags,
      :platform_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the AgentCore Runtime.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The version of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the AgentCore Runtime was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the AgentCore Runtime.</p>
    #   @return [String]
    class CreateAgentRuntimeResponse < Struct.new(
      nil,
      :agent_runtime_arn,
      :workload_identity_details,
      :agent_runtime_id,
      :agent_runtime_version,
      :created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the API key credential provider. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute api_key
    #   <p>The API key to use for authentication. This value is encrypted and stored securely.</p>
    #   @return [String]
    # @!attribute api_key_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the API key. This includes the secret ID and the JSON key used to extract the API key value from the secret. Required when <code>apiKeySecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute api_key_secret_source
    #   <p>The source type of the API key secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the API key credential provider. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateApiKeyCredentialProviderRequest < Struct.new(
      nil,
      :name,
      :api_key,
      :api_key_secret_config,
      :api_key_secret_source,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret containing the API key.</p>
    #   @return [Types::Secret]
    # @!attribute api_key_secret_json_key
    #   <p>The JSON key used to extract the API key value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute api_key_secret_source
    #   <p>The source type of the API key secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the created API key credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the created API key credential provider.</p>
    #   @return [String]
    class CreateApiKeyCredentialProviderResponse < Struct.new(
      nil,
      :api_key_secret_arn,
      :api_key_secret_json_key,
      :api_key_secret_source,
      :name,
      :credential_provider_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the browser profile. The name must be unique within your account and can contain alphanumeric characters and underscores.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the browser profile. Use this field to describe the purpose or contents of the profile.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the browser profile. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateBrowserProfileRequest < Struct.new(
      nil,
      :name,
      :description,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the created browser profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The Amazon Resource Name (ARN) of the created browser profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the browser profile was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the browser profile.</p>
    #   @return [String]
    class CreateBrowserProfileResponse < Struct.new(
      nil,
      :profile_id,
      :profile_arn,
      :created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the browser. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the browser.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the browser to access Amazon Web Services services.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The network configuration for the browser. This configuration specifies the network mode for the browser.</p>
    #   @return [Types::BrowserNetworkConfiguration]
    # @!attribute recording
    #   <p>The recording configuration for the browser. When enabled, browser sessions are recorded and stored in the specified Amazon S3 location.</p>
    #   @return [Types::RecordingConfig]
    # @!attribute browser_signing
    #   <p>The browser signing configuration that enables cryptographic agent identification using HTTP message signatures for web bot authentication.</p>
    #   @return [Types::BrowserSigningConfigInput]
    # @!attribute enterprise_policies
    #   <p>A list of enterprise policy files for the browser.</p>
    #   @return [Array<Types::BrowserEnterprisePolicy>]
    # @!attribute certificates
    #   <p>A list of certificates to install in the browser.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute filesystem_configurations
    #   <p>The file system configurations to mount into the browser. Use these configurations to mount your own Amazon Simple Storage Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access points. Your sessions can then access your data. If you don't specify this field, no file systems are mounted.</p>
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the browser. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateBrowserRequest < Struct.new(
      nil,
      :name,
      :description,
      :execution_role_arn,
      :network_configuration,
      :recording,
      :browser_signing,
      :enterprise_policies,
      :certificates,
      :filesystem_configurations,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_id
    #   <p>The unique identifier of the created browser.</p>
    #   @return [String]
    # @!attribute browser_arn
    #   <p>The Amazon Resource Name (ARN) of the created browser.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the browser was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the browser.</p>
    #   @return [String]
    class CreateBrowserResponse < Struct.new(
      nil,
      :browser_id,
      :browser_arn,
      :created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the capacity provider. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the capacity provider. If you don't specify a description, the service creates the capacity provider without one.</p>
    #   @return [String]
    # @!attribute permissions_configuration
    #   <p>The permissions configuration for the capacity provider. This specifies the IAM role that AgentCore uses to manage the Amazon EC2 instances on your behalf.</p>
    #   @return [Types::PermissionsConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to associate with the capacity provider. If you don't specify tags, the capacity provider is created with no tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute compute_configuration
    #   <p>The compute configuration for the capacity provider. This defines the Amazon EC2 compute resources used to launch instances: the operating system, allowed instance types, networking, and storage.</p>
    #   @return [Types::ComputeConfiguration]
    class CreateCapacityProviderInput < Struct.new(
      nil,
      :name,
      :description,
      :permissions_configuration,
      :client_token,
      :tags,
      :compute_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the created capacity provider.</p>
    #   @return [String]
    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the capacity provider.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the capacity provider. For possible values, see <code>CapacityProviderStatus</code>.</p>
    #   @return [String]
    class CreateCapacityProviderOutput < Struct.new(
      nil,
      :capacity_provider_id,
      :capacity_provider_arn,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the code interpreter. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the code interpreter.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the code interpreter to access Amazon Web Services services.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The network configuration for the code interpreter. This configuration specifies the network mode for the code interpreter.</p>
    #   @return [Types::CodeInterpreterNetworkConfiguration]
    # @!attribute certificates
    #   <p>A list of certificates to install in the code interpreter.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute filesystem_configurations
    #   <p>The file system configurations to mount into the code interpreter. Use these configurations to mount your own Amazon Simple Storage Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access points. Your sessions can then access your data. If you don't specify this field, no file systems are mounted.</p>
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock AgentCore ignores the request but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the code interpreter. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateCodeInterpreterRequest < Struct.new(
      nil,
      :name,
      :description,
      :execution_role_arn,
      :network_configuration,
      :certificates,
      :filesystem_configurations,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_id
    #   <p>The unique identifier of the created code interpreter.</p>
    #   @return [String]
    # @!attribute code_interpreter_arn
    #   <p>The Amazon Resource Name (ARN) of the created code interpreter.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the code interpreter was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the code interpreter.</p>
    #   @return [String]
    class CreateCodeInterpreterResponse < Struct.new(
      nil,
      :code_interpreter_id,
      :code_interpreter_arn,
      :created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute bundle_name
    #   <p>The name for the configuration bundle. Names must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the configuration bundle.</p>
    #   @return [String]
    # @!attribute components
    #   <p>A map of component identifiers to their configurations. Each component represents a configurable element within the bundle.</p>
    #   @return [Hash<String, Types::ComponentConfiguration>]
    # @!attribute branch_name
    #   <p>The branch name for version tracking. Defaults to <code>mainline</code> if not specified.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>A commit message describing the initial version of the configuration bundle.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The source that created this version, including the source name and optional ARN.</p>
    #   @return [Types::VersionCreatedBySource]
    # @!attribute kms_key_arn
    #   <p>Optional KMS key ARN for encrypting component configurations.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the configuration bundle. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateConfigurationBundleRequest < Struct.new(
      nil,
      :client_token,
      :bundle_name,
      :description,
      :components,
      :branch_name,
      :commit_message,
      :created_by,
      :kms_key_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the created configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The unique identifier of the created configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The initial version identifier of the configuration bundle.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the configuration bundle was created.</p>
    #   @return [Time]
    class CreateConfigurationBundleResponse < Struct.new(
      nil,
      :bundle_arn,
      :bundle_id,
      :version_id,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the consent portal assumes to access the resources defined in its sources.</p>
    #   @return [String]
    # @!attribute idp_config
    #   <p>The identity provider configuration that the consent portal uses to authenticate end users.</p>
    #   @return [Types::ConsentPortalIdpConfig]
    # @!attribute name
    #   <p>The name of the consent portal. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The resources served by the consent portal. Currently, we only support type <code>agentcore-gateway</code>.</p>
    #   @return [Array<Types::ConsentPortalSource>]
    # @!attribute description
    #   <p>The description of the consent portal.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the consent portal. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateConsentPortalRequest < Struct.new(
      nil,
      :execution_role_arn,
      :idp_config,
      :name,
      :sources,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>The resources served by the consent portal.</p>
    #   @return [Array<Types::ConsentPortalSource>]
    # @!attribute consent_portal_arn
    #   <p>The Amazon Resource Name (ARN) of the consent portal.</p>
    #   @return [String]
    # @!attribute consent_portal_id
    #   <p>The unique identifier of the consent portal.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the consent portal was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the consent portal.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the consent portal assumes to access the resources defined in its sources.</p>
    #   @return [String]
    # @!attribute idp_config
    #   <p>The identity provider configuration that the consent portal uses to authenticate end users.</p>
    #   @return [Types::ConsentPortalIdpConfig]
    # @!attribute name
    #   <p>The name of the consent portal.</p>
    #   @return [String]
    # @!attribute portal_url
    #   <p>The URL used to access the consent portal.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the consent portal.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A message that provides additional information about the current status of the consent portal.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp for when the consent portal was last updated.</p>
    #   @return [Time]
    class CreateConsentPortalResponse < Struct.new(
      nil,
      :sources,
      :consent_portal_arn,
      :consent_portal_id,
      :created_at,
      :description,
      :execution_role_arn,
      :idp_config,
      :name,
      :portal_url,
      :status,
      :status_reason,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p> Human-readable name for the dataset. Must be unique within the account. Immutable after creation. </p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the dataset. </p>
    #   @return [String]
    # @!attribute source
    #   <p> Source of initial examples. Provide either inline examples or an S3 URI pointing to a JSONL file. </p>
    #   @return [Types::DataSourceType]
    # @!attribute schema_type
    #   <p> Versioned schema type governing the structure of examples. Immutable after creation. </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p> Optional KMS key ARN for server-side encryption on service Amazon S3 writes. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> A map of tag keys and values to assign to the dataset. </p>
    #   @return [Hash<String, String>]
    class CreateDatasetRequest < Struct.new(
      nil,
      :client_token,
      :dataset_name,
      :description,
      :source,
      :schema_type,
      :kms_key_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the created dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the created dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p> Always CREATING immediately after this call. Poll <code>GetDataset</code> until status transitions to ACTIVE or CREATE_FAILED. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the dataset was created. </p>
    #   @return [Time]
    class CreateDatasetResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :status,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset to publish a version for. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class CreateDatasetVersionRequest < Struct.new(
      nil,
      :dataset_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p> Always UPDATING immediately after this call. Poll <code>GetDataset</code> until status transitions to ACTIVE or UPDATE_FAILED. </p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p> The version number being created. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the version creation was initiated. </p>
    #   @return [Time]
    class CreateDatasetVersionResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :status,
      :dataset_version,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute evaluator_name
    #   <p> The name of the evaluator. Must be unique within your account. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the evaluator that explains its purpose and evaluation criteria. </p>
    #   @return [String]
    # @!attribute evaluator_config
    #   <p> The configuration for the evaluator. Specify either LLM-as-a-Judge settings with instructions, rating scale, and model configuration, or code-based settings with a customer-managed Lambda function. </p>
    #   @return [Types::EvaluatorConfig]
    # @!attribute level
    #   <p> The evaluation level that determines the scope of evaluation. Valid values are <code>TOOL_CALL</code> for individual tool invocations, <code>TRACE</code> for single request-response interactions, or <code>SESSION</code> for entire conversation sessions. </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p> The Amazon Resource Name (ARN) of a customer managed KMS key to use for encrypting sensitive evaluator data, including instructions and rating scale. If you don't specify a KMS key, the evaluator data is encrypted with an Amazon Web Services owned key. Only symmetric encryption KMS keys are supported. For more information, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html">Encryption at rest for AgentCore Evaluations</a>. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to an AgentCore Evaluator. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateEvaluatorRequest < Struct.new(
      nil,
      :client_token,
      :evaluator_name,
      :description,
      :evaluator_config,
      :level,
      :kms_key_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluator_arn
    #   <p> The Amazon Resource Name (ARN) of the created evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_id
    #   <p> The unique identifier of the created evaluator. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the evaluator was created. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The status of the evaluator creation operation. </p>
    #   @return [String]
    class CreateEvaluatorResponse < Struct.new(
      nil,
      :evaluator_arn,
      :evaluator_id,
      :created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway to create the rate limit for.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute rate_limit_id
    #   <p>An optional customer-defined identifier for the rate limit. If not provided, the system generates one.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional human-readable description for this rate limit. If not provided, the rate limit is created without a description.</p>
    #   @return [String]
    # @!attribute dimension_keys
    #   <p>The ordered list of dimension key names that define the scope of this rate limit. Must be unique per gateway—no two rate limits can share the same dimension keys.</p>
    #   @return [Array<String>]
    # @!attribute entries
    #   <p>The rule entries that map dimension values to rate configurations.</p>
    #   @return [Array<Types::LimitEntry>]
    class CreateGatewayRateLimitRequest < Struct.new(
      nil,
      :gateway_identifier,
      :client_token,
      :rate_limit_id,
      :description,
      :dimension_keys,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Shared fields for <code>GatewayRateLimit</code> responses.</p>
    # @!attribute rate_limit_id
    #   <p>The unique identifier of the created rate limit.</p>
    #   @return [String]
    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The human-readable description of the rate limit.</p>
    #   @return [String]
    # @!attribute dimension_keys
    #   <p>The ordered list of dimension key names that define the scope of this rate limit.</p>
    #   @return [Array<String>]
    # @!attribute entries
    #   <p>The list of rule entries that map dimension values to rate configurations.</p>
    #   @return [Array<Types::LimitEntry>]
    # @!attribute status
    #   <p>The current status of the rate limit.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the rate limit was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the rate limit was last updated.</p>
    #   @return [Time]
    class CreateGatewayRateLimitResponse < Struct.new(
      nil,
      :rate_limit_id,
      :gateway_identifier,
      :description,
      :dimension_keys,
      :entries,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the gateway. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the gateway.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the gateway to access Amazon Web Services services.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The protocol type for the gateway.</p>
    #   @return [String]
    # @!attribute protocol_configuration
    #   <p>The configuration settings for the protocol specified in the <code>protocolType</code> parameter.</p>
    #   @return [Types::GatewayProtocolConfiguration]
    # @!attribute authorizer_type
    #   <p>The type of authorizer to use for the gateway.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> <li> <p> <code>NONE</code> - No authorization</p> </li> </ul>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the gateway. Required if <code>authorizerType</code> is <code>CUSTOM_JWT</code>.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt data associated with the gateway.</p>
    #   @return [String]
    # @!attribute interceptor_configurations
    #   <p>A list of configuration settings for a gateway interceptor. Gateway interceptors allow custom code to be invoked during gateway invocations.</p>
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    # @!attribute policy_engine_configuration
    #   <p>The policy engine configuration for the gateway. A policy engine is a collection of policies that evaluates and authorizes agent tool calls. When associated with a gateway, the policy engine intercepts all agent requests and determines whether to allow or deny each action based on the defined policies.</p>
    #   @return [Types::GatewayPolicyEngineConfiguration]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of key-value pairs to associate with the gateway as metadata tags.</p>
    #   @return [Hash<String, String>]
    class CreateGatewayRequest < Struct.new(
      nil,
      :name,
      :description,
      :client_token,
      :role_arn,
      :protocol_type,
      :protocol_configuration,
      :authorizer_type,
      :authorizer_configuration,
      :kms_key_arn,
      :interceptor_configurations,
      :policy_engine_configuration,
      :exception_level,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the created gateway.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the created gateway.</p>
    #   @return [String]
    # @!attribute gateway_url
    #   <p>The URL endpoint for the created gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the gateway was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the gateway was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the gateway.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the current status of the gateway.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the gateway.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the gateway.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The protocol type of the gateway.</p>
    #   @return [String]
    # @!attribute protocol_configuration
    #   <p>The configuration settings for the protocol used by the gateway.</p>
    #   @return [Types::GatewayProtocolConfiguration]
    # @!attribute authorizer_type
    #   <p>The type of authorizer used by the gateway.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the created gateway.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt data associated with the gateway.</p>
    #   @return [String]
    # @!attribute custom_transform_configuration
    #   <p>The custom transformation configuration for the gateway. This configuration defines how the gateway transforms requests and responses.</p>
    #   @return [Types::CustomTransformConfiguration]
    # @!attribute interceptor_configurations
    #   <p>The list of interceptor configurations for the created gateway.</p>
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    # @!attribute policy_engine_configuration
    #   <p>The policy engine configuration for the created gateway.</p>
    #   @return [Types::GatewayPolicyEngineConfiguration]
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the created gateway.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services WAF web ACL associated with the gateway.</p>
    #   @return [String]
    # @!attribute waf_configuration
    #   <p>The Amazon Web Services WAF configuration for the gateway.</p>
    #   @return [Types::WafConfiguration]
    class CreateGatewayResponse < Struct.new(
      nil,
      :gateway_arn,
      :gateway_id,
      :gateway_url,
      :created_at,
      :updated_at,
      :status,
      :status_reasons,
      :name,
      :description,
      :role_arn,
      :protocol_type,
      :protocol_configuration,
      :authorizer_type,
      :authorizer_configuration,
      :kms_key_arn,
      :custom_transform_configuration,
      :interceptor_configurations,
      :policy_engine_configuration,
      :workload_identity_details,
      :exception_level,
      :web_acl_arn,
      :waf_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:protocol_type] = 'MCP' unless options.key?(:protocol_type)
        super
      end
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to create a rule for.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the rule. Rules are evaluated in order of priority, with lower numbers evaluated first. Must be between 1 and 1,000,000.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The conditions that must be met for the rule to apply. Conditions can match on principals (IAM ARNs) or request paths.</p>
    #   @return [Array<Types::Condition>]
    # @!attribute actions
    #   <p>The actions to take when the rule conditions are met. Actions can route to a specific target or apply a configuration bundle override.</p>
    #   @return [Array<Types::Action>]
    # @!attribute description
    #   <p>The description of the gateway rule.</p>
    #   @return [String]
    class CreateGatewayRuleRequest < Struct.new(
      nil,
      :gateway_identifier,
      :client_token,
      :priority,
      :conditions,
      :actions,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The unique identifier of the gateway rule.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway that the rule belongs to.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the rule. Rules are evaluated in order of priority, with lower numbers evaluated first.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The conditions that must be met for the rule to apply.</p>
    #   @return [Array<Types::Condition>]
    # @!attribute actions
    #   <p>The actions to take when the rule conditions are met.</p>
    #   @return [Array<Types::Action>]
    # @!attribute description
    #   <p>The description of the gateway rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the rule was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the rule.</p>
    #   @return [String]
    # @!attribute system
    #   <p>System-managed metadata for rules created by automated processes.</p>
    #   @return [Types::SystemManagedBlock]
    class CreateGatewayRuleResponse < Struct.new(
      nil,
      :rule_id,
      :gateway_arn,
      :priority,
      :conditions,
      :actions,
      :description,
      :created_at,
      :status,
      :system,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to create a target for.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the gateway target. The name must be unique within the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the gateway target.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>The configuration settings for the target, including endpoint information and schema definitions.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute credential_provider_configurations
    #   <p>The credential provider configurations for the target. These configurations specify how the gateway authenticates with the target endpoint.</p>
    #   @return [Array<Types::CredentialProviderConfiguration>]
    # @!attribute metadata_configuration
    #   <p>Optional configuration for HTTP header and query parameter propagation to and from the gateway target.</p>
    #   @return [Types::MetadataConfiguration]
    # @!attribute private_endpoint
    #   <p>The private endpoint configuration for the gateway target. Use this to connect the gateway to private resources in your VPC.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute certificate_configurations
    #   <p>The private certificate authority (CA) configurations for the gateway target. Use this to have the gateway trust a private CA when it establishes TLS connections to the target endpoint. Provide each certificate by reference to an Amazon S3 object or an Amazon Web Services Secrets Manager secret. You can specify only one certificate authority configuration in this list.</p>
    #   @return [Array<Types::CertificateConfiguration>]
    class CreateGatewayTargetRequest < Struct.new(
      nil,
      :gateway_identifier,
      :name,
      :description,
      :client_token,
      :target_configuration,
      :credential_provider_configurations,
      :metadata_configuration,
      :private_endpoint,
      :certificate_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the created target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the target was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the target.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the current status of the target.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the target.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the target.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>The configuration settings for the target.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute credential_provider_configurations
    #   <p>The credential provider configurations for the target.</p>
    #   @return [Array<Types::CredentialProviderConfiguration>]
    # @!attribute last_synchronized_at
    #   <p>The last synchronization of the target.</p>
    #   @return [Time]
    # @!attribute metadata_configuration
    #   <p>The metadata configuration that was applied to the created gateway target.</p>
    #   @return [Types::MetadataConfiguration]
    # @!attribute private_endpoint
    #   <p>The private endpoint configuration for the gateway target.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute private_endpoint_managed_resources
    #   <p>The managed resources created by the gateway for private endpoint connectivity.</p>
    #   @return [Array<Types::ManagedResourceDetails>]
    # @!attribute authorization_data
    #   <p>OAuth2 authorization data for the created gateway target. This data is returned when a target is configured with a credential provider with authorization code grant type and requires user federation.</p>
    #   @return [Types::AuthorizationData]
    # @!attribute protocol_type
    #   <p>The protocol type of the created gateway target.</p>
    #   @return [String]
    # @!attribute certificate_configurations
    #   <p>The private certificate authority (CA) configurations for the gateway target.</p>
    #   @return [Array<Types::CertificateConfiguration>]
    class CreateGatewayTargetResponse < Struct.new(
      nil,
      :gateway_arn,
      :target_id,
      :created_at,
      :updated_at,
      :status,
      :status_reasons,
      :name,
      :description,
      :target_configuration,
      :credential_provider_configurations,
      :last_synchronized_at,
      :metadata_configuration,
      :private_endpoint,
      :private_endpoint_managed_resources,
      :authorization_data,
      :protocol_type,
      :certificate_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness to create an endpoint for.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint. Must start with a letter and contain only alphanumeric characters and underscores.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>The harness version that the endpoint points to and serves invocations from.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the endpoint.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to apply to the endpoint resource.</p>
    #   @return [Hash<String, String>]
    class CreateHarnessEndpointRequest < Struct.new(
      nil,
      :harness_id,
      :endpoint_name,
      :target_version,
      :description,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The endpoint that was created.</p>
    #   @return [Types::HarnessEndpoint]
    class CreateHarnessEndpointResponse < Struct.new(
      nil,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_name
    #   <p>The name of the harness. Must start with a letter and contain only alphanumeric characters and underscores.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role that the harness assumes when running. This role must have permissions for the services the agent needs to access, such as Amazon Bedrock for model invocation.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The compute environment configuration for the harness, including network and lifecycle settings.</p>
    #   @return [Types::HarnessEnvironmentProviderRequest]
    # @!attribute environment_artifact
    #   <p>The environment artifact for the harness, such as a custom container image containing additional dependencies.</p>
    #   @return [Types::HarnessEnvironmentArtifact]
    # @!attribute environment_variables
    #   <p>Environment variables to set in the harness runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorizer_configuration
    #   <p>Represents inbound authorization configuration options used to authenticate incoming requests. </p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute model
    #   <p>The model configuration for the harness. Supports Amazon Bedrock, OpenAI, and Google Gemini model providers.</p>
    #   @return [Types::HarnessModelConfiguration]
    # @!attribute system_prompt
    #   <p>The system prompt that defines the agent's behavior and instructions.</p>
    #   @return [Array<Types::HarnessSystemContentBlock>]
    # @!attribute tools
    #   <p>The tools available to the agent, such as remote MCP servers, AgentCore Gateway, AgentCore Browser, Code Interpreter, or inline functions.</p>
    #   @return [Array<Types::HarnessTool>]
    # @!attribute skills
    #   <p>The skills available to the agent. Skills are bundles of files that the agent can pull into its context on demand.</p>
    #   @return [Array<Types::HarnessSkill>]
    # @!attribute allowed_tools
    #   <p>The tools that the agent is allowed to use. Supports glob patterns such as * for all tools, @builtin for all built-in tools, or @serverName/toolName for specific MCP server tools.</p>
    #   @return [Array<String>]
    # @!attribute memory
    #   <p>The AgentCore Memory configuration for persisting conversation context across sessions.</p>
    #   @return [Types::HarnessMemoryConfiguration]
    # @!attribute truncation
    #   <p>The truncation configuration for managing conversation context when it exceeds model limits.</p>
    #   @return [Types::HarnessTruncationConfiguration]
    # @!attribute hooks
    #   <p>The lifecycle hooks to run at defined points in the agent loop.</p>
    #   @return [Array<Types::HarnessHook>]
    # @!attribute max_iterations
    #   <p>The maximum number of iterations the agent loop can execute per invocation.</p>
    #   @return [Integer]
    # @!attribute max_tokens
    #   <p>The maximum total number of output tokens the agent can generate across all model calls within a single invocation.</p>
    #   @return [Integer]
    # @!attribute timeout_seconds
    #   <p>The maximum duration in seconds for the agent loop execution per invocation.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Tags to apply to the harness resource.</p>
    #   @return [Hash<String, String>]
    class CreateHarnessRequest < Struct.new(
      nil,
      :harness_name,
      :client_token,
      :execution_role_arn,
      :environment,
      :environment_artifact,
      :environment_variables,
      :authorizer_configuration,
      :model,
      :system_prompt,
      :tools,
      :skills,
      :allowed_tools,
      :memory,
      :truncation,
      :hooks,
      :max_iterations,
      :max_tokens,
      :timeout_seconds,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness
    #   <p>The harness that was created.</p>
    #   @return [Types::Harness]
    class CreateHarnessResponse < Struct.new(
      nil,
      :harness,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request but does not return an error.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the memory. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the memory.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the memory data.</p>
    #   @return [String]
    # @!attribute memory_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides permissions for the memory to access Amazon Web Services services.</p>
    #   @return [String]
    # @!attribute event_expiry_duration
    #   <p>The duration after which memory events expire. Specified as an ISO 8601 duration.</p>
    #   @return [Integer]
    # @!attribute memory_strategies
    #   <p>The memory strategies to use for this memory. Strategies define how information is extracted, processed, and consolidated.</p>
    #   @return [Array<Types::MemoryStrategyInput>]
    # @!attribute indexed_keys
    #   <p>Metadata keys to index for filtering. Once declared, indexed keys cannot be removed.</p>
    #   @return [Array<Types::IndexedKey>]
    # @!attribute namespace_keys
    #   <p>The namespace variable key definitions with optional validation rules. Use these <code>namespaceKeys</code> in <code>namespaceTemplates</code> to control namespace hierarchy.</p>
    #   @return [Array<Types::NamespaceKeyEntry>]
    # @!attribute stream_delivery_resources
    #   <p>Configuration for streaming memory record data to external resources.</p>
    #   @return [Types::StreamDeliveryResources]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to an AgentCore Memory. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateMemoryInput < Struct.new(
      nil,
      :client_token,
      :name,
      :description,
      :encryption_key_arn,
      :memory_execution_role_arn,
      :event_expiry_duration,
      :memory_strategies,
      :indexed_keys,
      :namespace_keys,
      :stream_delivery_resources,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory
    #   <p>The details of the created memory, including its ID, ARN, name, description, and configuration settings.</p>
    #   @return [Types::Memory]
    class CreateMemoryOutput < Struct.new(
      nil,
      :memory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the OAuth2 credential provider. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider. This specifies which OAuth2 implementation to use.</p>
    #   @return [String]
    # @!attribute oauth2_provider_config_input
    #   <p>The configuration settings for the OAuth2 provider, including client ID, client secret, and other vendor-specific settings.</p>
    #   @return [Types::Oauth2ProviderConfigInput]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the OAuth2 credential provider. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateOauth2CredentialProviderRequest < Struct.new(
      nil,
      :name,
      :credential_provider_vendor,
      :oauth2_provider_config_input,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the client secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute client_secret_json_key
    #   <p>The JSON key used to extract the client secret value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute callback_url
    #   <p>Callback URL to register on the OAuth2 credential provider as an allowed callback URL. This URL is where the OAuth2 authorization server redirects users after they complete the authorization flow.</p>
    #   @return [String]
    # @!attribute oauth2_provider_config_output
    #   <p>Contains the output configuration for an OAuth2 provider.</p>
    #   @return [Types::Oauth2ProviderConfigOutput]
    # @!attribute status
    #   <p>The current status of the OAuth2 credential provider.</p>
    #   @return [String]
    class CreateOauth2CredentialProviderResponse < Struct.new(
      nil,
      :client_secret_arn,
      :client_secret_json_key,
      :client_secret_source,
      :name,
      :credential_provider_arn,
      :callback_url,
      :oauth2_provider_config_output,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute online_evaluation_config_name
    #   <p> The name of the online evaluation configuration. Must be unique within your account. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the online evaluation configuration that explains its monitoring purpose and scope. </p>
    #   @return [String]
    # @!attribute rule
    #   <p> The evaluation rule that defines sampling configuration, filters, and session detection settings for the online evaluation. </p>
    #   @return [Types::Rule]
    # @!attribute data_source_config
    #   <p> The data source configuration that specifies CloudWatch log groups and service names to monitor for agent traces. </p>
    #   @return [Types::DataSourceConfig]
    # @!attribute evaluators
    #   <p> The list of evaluators to apply during online evaluation. Can include both built-in evaluators and custom evaluators created with <code>CreateEvaluator</code>. </p>
    #   @return [Array<Types::EvaluatorReference>]
    # @!attribute insights
    #   <p>The list of insight types to run against agent sessions.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute clustering_config
    #   <p>Configuration for periodic batch evaluation clustering of insight results.</p>
    #   @return [Types::ClusteringConfig]
    # @!attribute output_config
    #   <p> The configuration that specifies where evaluation results should be written for monitoring and analysis. </p>
    #   @return [Types::OutputConfig]
    # @!attribute evaluation_execution_role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role that grants permissions to read from CloudWatch logs, write evaluation results, and invoke Amazon Bedrock models for evaluation. If the configuration references evaluators encrypted with a customer managed KMS key, this role must also have <code>kms:Decrypt</code> permission on the KMS key. The service validates this permission at configuration creation time. For more information, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html">Encryption at rest for AgentCore Evaluations</a>. </p>
    #   @return [String]
    # @!attribute enable_on_create
    #   <p> Whether to enable the online evaluation configuration immediately upon creation. If true, evaluation begins automatically. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to an AgentCore Online Evaluation Config. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateOnlineEvaluationConfigRequest < Struct.new(
      nil,
      :client_token,
      :online_evaluation_config_name,
      :description,
      :rule,
      :data_source_config,
      :evaluators,
      :insights,
      :clustering_config,
      :output_config,
      :evaluation_execution_role_arn,
      :enable_on_create,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute online_evaluation_config_arn
    #   <p> The Amazon Resource Name (ARN) of the created online evaluation configuration. </p>
    #   @return [String]
    # @!attribute online_evaluation_config_id
    #   <p> The unique identifier of the created online evaluation configuration. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the online evaluation configuration was created. </p>
    #   @return [Time]
    # @!attribute output_config
    #   <p> The configuration that specifies where evaluation results should be written for monitoring and analysis. </p>
    #   @return [Types::OutputConfig]
    # @!attribute status
    #   <p> The status of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute execution_status
    #   <p> The execution status indicating whether the online evaluation is currently running. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p> The reason for failure if the online evaluation configuration creation or execution failed. </p>
    #   @return [String]
    class CreateOnlineEvaluationConfigResponse < Struct.new(
      nil,
      :online_evaluation_config_arn,
      :online_evaluation_config_id,
      :created_at,
      :output_config,
      :status,
      :execution_status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the payment manager to create the connector for.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the payment connector.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the payment connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of payment connector, which determines the payment provider integration.</p>
    #   @return [String]
    # @!attribute credential_provider_configurations
    #   <p>The credential provider configurations for the payment connector. These configurations specify how the connector authenticates with the payment provider.</p>
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    # @!attribute provision_mode
    #   <p>The provision mode for creating the payment connector. If you don't specify a value, the default is <code>MANUAL</code>.</p> <ul> <li> <p> <code>MANUAL</code> - You provide the credential provider configurations directly.</p> </li> <li> <p> <code>QUICK_CREATE</code> - The service orchestrates OAuth consent and provisions the credential provider for you.</p> </li> </ul>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class CreatePaymentConnectorRequest < Struct.new(
      nil,
      :payment_manager_id,
      :name,
      :description,
      :type,
      :credential_provider_configurations,
      :provision_mode,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_connector_id
    #   <p>The unique identifier of the created payment connector.</p>
    #   @return [String]
    # @!attribute payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the created payment connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the created payment connector.</p>
    #   @return [String]
    # @!attribute credential_provider_configurations
    #   <p>The credential provider configurations for the created payment connector.</p>
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    # @!attribute created_at
    #   <p>The timestamp when the payment connector was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the payment connector. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute authorization_url
    #   <p>The URL that the user must open to complete OAuth consent. This field is only present when the payment connector status is <code>PENDING_AUTHENTICATION</code>.</p>
    #   @return [String]
    class CreatePaymentConnectorResponse < Struct.new(
      nil,
      :payment_connector_id,
      :payment_manager_id,
      :name,
      :type,
      :credential_provider_configurations,
      :created_at,
      :status,
      :authorization_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Unique name for the payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor type for the payment credential provider (e.g., CoinbaseCDP, StripePrivy).</p>
    #   @return [String]
    # @!attribute provider_configuration_input
    #   <p>Configuration specific to the vendor, including API credentials.</p>
    #   @return [Types::PaymentProviderConfigurationInput]
    # @!attribute tags
    #   <p>Optional tags for resource organization.</p>
    #   @return [Hash<String, String>]
    class CreatePaymentCredentialProviderRequest < Struct.new(
      nil,
      :name,
      :credential_provider_vendor,
      :provider_configuration_input,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the created payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor type for the created payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the created payment credential provider.</p>
    #   @return [String]
    # @!attribute provider_configuration_output
    #   <p>Output configuration (contains secret ARNs, excludes actual secret values).</p>
    #   @return [Types::PaymentProviderConfigurationOutput]
    class CreatePaymentCredentialProviderResponse < Struct.new(
      nil,
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :provider_configuration_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the payment manager.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the payment manager.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer to use for the payment manager.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the payment manager.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the payment manager assumes to access resources on your behalf.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the payment manager.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key to use for encrypting sensitive payment manager data at rest. If you don't specify a key, the data is encrypted with an Amazon Web Services owned key.</p>
    #   @return [String]
    class CreatePaymentManagerRequest < Struct.new(
      nil,
      :name,
      :description,
      :authorizer_type,
      :authorizer_configuration,
      :role_arn,
      :client_token,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_arn
    #   <p>The Amazon Resource Name (ARN) of the created payment manager.</p>
    #   @return [String]
    # @!attribute payment_manager_id
    #   <p>The unique identifier of the created payment manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the created payment manager.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer for the created payment manager.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>Represents inbound authorization configuration options used to authenticate incoming requests. </p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the created payment manager.</p>
    #   @return [String]
    # @!attribute workload_identity_details
    #   <p>The information about the workload identity.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute created_at
    #   <p>The timestamp when the payment manager was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the payment manager. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the created payment manager.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt sensitive payment manager data at rest, if configured.</p>
    #   @return [String]
    class CreatePaymentManagerResponse < Struct.new(
      nil,
      :payment_manager_arn,
      :payment_manager_id,
      :name,
      :authorizer_type,
      :authorizer_configuration,
      :role_arn,
      :workload_identity_details,
      :created_at,
      :status,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The customer-assigned immutable name for the policy engine. This name identifies the policy engine and cannot be changed after creation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the policy engine's purpose and scope (1-4,096 characters). This helps administrators understand the policy engine's role in the overall governance strategy. Document which Gateway this engine will be associated with, what types of tools or workflows it governs, and the team or service responsible for maintaining it. Clear descriptions are essential when managing multiple policy engines across different services or environments.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request with the same client token, the service returns the same response without creating a duplicate policy engine.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to an AgentCore Policy. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreatePolicyEngineRequest < Struct.new(
      nil,
      :name,
      :description,
      :client_token,
      :encryption_key_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier for the created policy engine. This system-generated identifier consists of the user name plus a 10-character generated suffix and is used for all subsequent policy engine operations.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the created policy engine. This matches the name provided in the request and serves as the human-readable identifier.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy engine was created. This is automatically set by the service and used for auditing and lifecycle management.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy engine was last updated. For newly created policy engines, this matches the <code>createdAt</code> timestamp.</p>
    #   @return [Time]
    # @!attribute policy_engine_arn
    #   <p>The Amazon Resource Name (ARN) of the created policy engine. This globally unique identifier can be used for cross-service references and IAM policy statements.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy engine. A status of <code>ACTIVE</code> indicates the policy engine is ready for use.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the policy engine's purpose.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the policy engine status. This provides details about any failures or the current state of the policy engine creation process.</p>
    #   @return [Array<String>]
    class CreatePolicyEngineResponse < Struct.new(
      nil,
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The customer-assigned immutable name for the policy. Must be unique within the account. This name is used for policy identification and cannot be changed after creation.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The Cedar or Dogwood policy statement that defines the access control rules. This contains the actual policy logic written in Cedar or Dogwood, specifying effect (permit or forbid), principals, actions, resources, and conditions for agent behavior control.</p>
    #   @return [Types::PolicyDefinition]
    # @!attribute description
    #   <p>A human-readable description of the policy's purpose and functionality (1-4,096 characters). This helps policy administrators understand the policy's intent, business rules, and operational scope. Use this field to document why the policy exists, what business requirement it addresses, and any special considerations for maintenance. Clear descriptions are essential for policy governance, auditing, and troubleshooting.</p>
    #   @return [String]
    # @!attribute validation_mode
    #   <p>The validation mode for the policy creation. Determines how Cedar analyzer validation results are handled during policy creation. FAIL_ON_ANY_FINDINGS (default) runs the Cedar analyzer to validate the policy against the Cedar schema and tool context, failing creation if the analyzer detects any validation issues to ensure strict conformance. IGNORE_ALL_FINDINGS runs the Cedar analyzer but allows policy creation even if validation issues are detected, useful for testing or when the policy schema is evolving. Use FAIL_ON_ANY_FINDINGS for production policies to ensure correctness, and IGNORE_ALL_FINDINGS only when you understand and accept the analyzer findings.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The enforcement mode for the policy. Run this policy in <code>LOG_ONLY</code> mode to collect data on how it affects your application. Once you are satisfied with the data gathered, switch the policy to <code>ACTIVE</code>. Defaults to <code>ACTIVE</code>.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine which contains this policy. Policy engines group related policies and provide the execution context for policy evaluation.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure the idempotency of the request. The Amazon Web Services SDK automatically generates this token, so you don't need to provide it in most cases. If you retry a request with the same client token, the service returns the same response without creating a duplicate policy.</p>
    #   @return [String]
    class CreatePolicyRequest < Struct.new(
      nil,
      :name,
      :definition,
      :description,
      :validation_mode,
      :enforcement_mode,
      :policy_engine_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier for the created policy. This is a system-generated identifier consisting of the user name plus a 10-character generated suffix, used for all subsequent policy operations.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the created policy. This matches the name provided in the request and serves as the human-readable identifier for the policy.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages this policy. This confirms the policy engine assignment and is used for policy evaluation routing.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy was created. This is automatically set by the service and used for auditing and lifecycle management.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last updated. For newly created policies, this matches the createdAt timestamp.</p>
    #   @return [Time]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the created policy. This globally unique identifier can be used for cross-service references and IAM policy statements.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy. A status of <code>ACTIVE</code> indicates the policy is ready for use.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The enforcement mode of the created policy.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The Cedar or Dogwood policy statement that was created. This is the validated policy definition that will be used for agent behavior control and access decisions.</p>
    #   @return [Types::PolicyDefinition]
    # @!attribute description
    #   <p>The human-readable description of the policy's purpose and functionality. This helps administrators understand and manage the policy.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the policy status. This provides details about any failures or the current state of the policy creation process.</p>
    #   @return [Array<String>]
    class CreatePolicyResponse < Struct.new(
      nil,
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode,
      :definition,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforcement_mode] = 'ACTIVE' unless options.key?(:enforcement_mode)
        super
      end
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry where the record will be created. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry record.</p>
    #   @return [String]
    # @!attribute descriptor_type
    #   <p>The descriptor type of the registry record.</p> <ul> <li> <p> <code>MCP</code> - Model Context Protocol descriptor for MCP-compatible servers and tools.</p> </li> <li> <p> <code>A2A</code> - Agent-to-Agent protocol descriptor.</p> </li> <li> <p> <code>CUSTOM</code> - Custom descriptor type for resources such as APIs, Lambda functions, or servers not conforming to a standard protocol.</p> </li> <li> <p> <code>AGENT_SKILLS</code> - Agent skills descriptor for defining agent skill definitions.</p> </li> </ul>
    #   @return [String]
    # @!attribute descriptors
    #   <p>The descriptor-type-specific configuration containing the resource schema and metadata. The structure of this field depends on the <code>descriptorType</code> you specify.</p>
    #   @return [Types::Descriptors]
    # @!attribute record_version
    #   <p>The version of the registry record. Use this to track different versions of the record's content.</p>
    #   @return [String]
    # @!attribute synchronization_type
    #   <p>The type of synchronization to use for keeping the record metadata up to date from an external source. Possible values include <code>FROM_URL</code> and <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute synchronization_configuration
    #   <p>The configuration for synchronizing registry record metadata from an external source, such as a URL-based MCP server.</p>
    #   @return [Types::SynchronizationConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class CreateRegistryRecordRequest < Struct.new(
      nil,
      :registry_id,
      :name,
      :description,
      :descriptor_type,
      :descriptors,
      :record_version,
      :synchronization_type,
      :synchronization_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the created registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the registry record. Set to <code>CREATING</code> while the asynchronous workflow is in progress.</p>
    #   @return [String]
    class CreateRegistryRecordResponse < Struct.new(
      nil,
      :record_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the registry. The name must be unique within your account and can contain alphanumeric characters and underscores.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the registry.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer to use for the registry. This controls the authorization method for the Search and Invoke APIs used by consumers, and does not affect the standard CRUDL APIs for registry and registry record management used by administrators.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the registry. Required if <code>authorizerType</code> is <code>CUSTOM_JWT</code>. For details, see the <code>AuthorizerConfiguration</code> data type.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute approval_configuration
    #   <p>The approval configuration for registry records. Controls whether records require explicit approval before becoming active. See the <code>ApprovalConfiguration</code> data type for supported configuration options.</p>
    #   @return [Types::ApprovalConfiguration]
    class CreateRegistryRequest < Struct.new(
      nil,
      :name,
      :description,
      :authorizer_type,
      :authorizer_configuration,
      :client_token,
      :approval_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the created registry.</p>
    #   @return [String]
    class CreateRegistryResponse < Struct.new(
      nil,
      :registry_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workload identity. The name must be unique within your account.</p>
    #   @return [String]
    # @!attribute allowed_resource_oauth2_return_urls
    #   <p>The list of allowed OAuth2 return URLs for resources associated with this workload identity.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the workload identity. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateWorkloadIdentityRequest < Struct.new(
      nil,
      :name,
      :allowed_resource_oauth2_return_urls,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workload identity.</p>
    #   @return [String]
    # @!attribute workload_identity_arn
    #   <p>The Amazon Resource Name (ARN) of the workload identity.</p>
    #   @return [String]
    # @!attribute allowed_resource_oauth2_return_urls
    #   <p>The list of allowed OAuth2 return URLs for resources associated with this workload identity.</p>
    #   @return [Array<String>]
    class CreateWorkloadIdentityResponse < Struct.new(
      nil,
      :name,
      :workload_identity_arn,
      :allowed_resource_oauth2_return_urls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A credential provider for gateway authentication. This structure contains the configuration for authenticating with the target endpoint.</p>
    # @!attribute oauth_credential_provider
    #   <p>The OAuth credential provider. This provider uses OAuth authentication to access the target endpoint.</p>
    #   @return [Types::OAuthCredentialProvider]
    # @!attribute api_key_credential_provider
    #   <p>The API key credential provider. This provider uses an API key to authenticate with the target endpoint.</p>
    #   @return [Types::GatewayApiKeyCredentialProvider]
    # @!attribute iam_credential_provider
    #   <p>The IAM credential provider. This provider uses IAM authentication with SigV4 signing to access the target endpoint.</p>
    #   @return [Types::IamCredentialProvider]
    class CredentialProvider < Struct.new(
      :oauth_credential_provider,
      :api_key_credential_provider,
      :iam_credential_provider,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OauthCredentialProvider < CredentialProvider; end
      class ApiKeyCredentialProvider < CredentialProvider; end
      class IamCredentialProvider < CredentialProvider; end
      class Unknown < CredentialProvider; end
    end

    # <p>The configuration for a credential provider. This structure defines how the gateway authenticates with the target endpoint.</p>
    # @!attribute credential_provider_type
    #   <p>The type of credential provider. This field specifies which authentication method the gateway uses.</p>
    #   @return [String]
    # @!attribute credential_provider
    #   <p>The credential provider. This field contains the specific configuration for the credential provider type.</p>
    #   @return [Types::CredentialProvider]
    class CredentialProviderConfiguration < Struct.new(
      nil,
      :credential_provider_type,
      :credential_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the service-managed credentials to rotate. Provide the member that matches the payment connector's <code>type</code>.</p>
    # @!attribute coinbase_cdp
    #   <p>The credentials to rotate for a Coinbase CDP payment connector.</p>
    #   @return [Types::CoinbaseCdpRotationTargets]
    class CredentialRotationConfig < Struct.new(
      :coinbase_cdp,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CoinbaseCDP < CredentialRotationConfig; end
      class Unknown < CredentialRotationConfig; end
    end

    # <p>The credential provider configuration for a payment connector. Specifies the payment provider type and its associated credential provider.</p>
    # @!attribute coinbase_cdp
    #   <p>The credential provider configuration for a Coinbase CDP payment connector.</p>
    #   @return [Types::PaymentCredentialProviderConfiguration]
    # @!attribute stripe_privy
    #   <p>The credential provider configuration for a Stripe Privy payment connector.</p>
    #   @return [Types::PaymentCredentialProviderConfiguration]
    class CredentialsProviderConfiguration < Struct.new(
      :coinbase_cdp,
      :stripe_privy,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CoinbaseCDP < CredentialsProviderConfiguration; end
      class StripePrivy < CredentialsProviderConfiguration; end
      class Unknown < CredentialsProviderConfiguration; end
    end

    # <p>Defines the name of a custom claim field and rules for finding matches to authenticate its value.</p>
    # @!attribute inbound_token_claim_name
    #   <p>The name of the custom claim field to check.</p>
    #   @return [String]
    # @!attribute inbound_token_claim_value_type
    #   <p>The data type of the claim value to check for.</p> <ul> <li> <p>Use <code>STRING</code> if you want to find an exact match to a string you define.</p> </li> <li> <p>Use <code>STRING_ARRAY</code> if you want to fnd a match to at least one value in an array you define.</p> </li> </ul>
    #   @return [String]
    # @!attribute authorizing_claim_match_value
    #   <p>Defines the value or values to match for and the relationship of the match.</p>
    #   @return [Types::AuthorizingClaimMatchValueType]
    class CustomClaimValidationType < Struct.new(
      nil,
      :inbound_token_claim_name,
      :inbound_token_claim_value_type,
      :authorizing_claim_match_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for custom configuration of a memory strategy.</p>
    # @!attribute semantic_override
    #   <p>The semantic override configuration for a custom memory strategy.</p>
    #   @return [Types::SemanticOverrideConfigurationInput]
    # @!attribute summary_override
    #   <p>The summary override configuration for a custom memory strategy.</p>
    #   @return [Types::SummaryOverrideConfigurationInput]
    # @!attribute user_preference_override
    #   <p>The user preference override configuration for a custom memory strategy.</p>
    #   @return [Types::UserPreferenceOverrideConfigurationInput]
    # @!attribute episodic_override
    #   <p>The episodic memory strategy override configuration for a custom memory strategy.</p>
    #   @return [Types::EpisodicOverrideConfigurationInput]
    # @!attribute self_managed_configuration
    #   <p>The self managed configuration for a custom memory strategy.</p>
    #   @return [Types::SelfManagedConfigurationInput]
    class CustomConfigurationInput < Struct.new(
      :semantic_override,
      :summary_override,
      :user_preference_override,
      :episodic_override,
      :self_managed_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticOverride < CustomConfigurationInput; end
      class SummaryOverride < CustomConfigurationInput; end
      class UserPreferenceOverride < CustomConfigurationInput; end
      class EpisodicOverride < CustomConfigurationInput; end
      class SelfManagedConfiguration < CustomConfigurationInput; end
      class Unknown < CustomConfigurationInput; end
    end

    # <p>Contains custom consolidation configuration information.</p>
    # @!attribute semantic_consolidation_override
    #   <p>The semantic consolidation override configuration.</p>
    #   @return [Types::SemanticConsolidationOverride]
    # @!attribute summary_consolidation_override
    #   <p>The summary consolidation override configuration.</p>
    #   @return [Types::SummaryConsolidationOverride]
    # @!attribute user_preference_consolidation_override
    #   <p>The user preference consolidation override configuration.</p>
    #   @return [Types::UserPreferenceConsolidationOverride]
    # @!attribute episodic_consolidation_override
    #   <p>The configurations to override the default consolidation step for the episodic memory strategy.</p>
    #   @return [Types::EpisodicConsolidationOverride]
    class CustomConsolidationConfiguration < Struct.new(
      :semantic_consolidation_override,
      :summary_consolidation_override,
      :user_preference_consolidation_override,
      :episodic_consolidation_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticConsolidationOverride < CustomConsolidationConfiguration; end
      class SummaryConsolidationOverride < CustomConsolidationConfiguration; end
      class UserPreferenceConsolidationOverride < CustomConsolidationConfiguration; end
      class EpisodicConsolidationOverride < CustomConsolidationConfiguration; end
      class Unknown < CustomConsolidationConfiguration; end
    end

    # <p>Input for a custom consolidation configuration.</p>
    # @!attribute semantic_consolidation_override
    #   <p>The semantic consolidation override configuration input.</p>
    #   @return [Types::SemanticOverrideConsolidationConfigurationInput]
    # @!attribute summary_consolidation_override
    #   <p>The summary consolidation override configuration input.</p>
    #   @return [Types::SummaryOverrideConsolidationConfigurationInput]
    # @!attribute user_preference_consolidation_override
    #   <p>The user preference consolidation override configuration input.</p>
    #   @return [Types::UserPreferenceOverrideConsolidationConfigurationInput]
    # @!attribute episodic_consolidation_override
    #   <p>Configurations to override the consolidation step of the episodic strategy.</p>
    #   @return [Types::EpisodicOverrideConsolidationConfigurationInput]
    class CustomConsolidationConfigurationInput < Struct.new(
      :semantic_consolidation_override,
      :summary_consolidation_override,
      :user_preference_consolidation_override,
      :episodic_consolidation_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticConsolidationOverride < CustomConsolidationConfigurationInput; end
      class SummaryConsolidationOverride < CustomConsolidationConfigurationInput; end
      class UserPreferenceConsolidationOverride < CustomConsolidationConfigurationInput; end
      class EpisodicConsolidationOverride < CustomConsolidationConfigurationInput; end
      class Unknown < CustomConsolidationConfigurationInput; end
    end

    # <p>A custom descriptor for a registry record. Use this for resources such as APIs, Lambda functions, or servers that do not conform to a standard protocol like MCP or A2A.</p>
    # @!attribute inline_content
    #   <p>The custom descriptor content as a valid JSON document. You can define any custom schema that describes your resource.</p>
    #   @return [String]
    class CustomDescriptor < Struct.new(
      nil,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains custom extraction configuration information.</p>
    # @!attribute semantic_extraction_override
    #   <p>The semantic extraction override configuration.</p>
    #   @return [Types::SemanticExtractionOverride]
    # @!attribute user_preference_extraction_override
    #   <p>The user preference extraction override configuration.</p>
    #   @return [Types::UserPreferenceExtractionOverride]
    # @!attribute episodic_extraction_override
    #   <p>The configurations to override the default extraction step for the episodic memory strategy.</p>
    #   @return [Types::EpisodicExtractionOverride]
    class CustomExtractionConfiguration < Struct.new(
      :semantic_extraction_override,
      :user_preference_extraction_override,
      :episodic_extraction_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticExtractionOverride < CustomExtractionConfiguration; end
      class UserPreferenceExtractionOverride < CustomExtractionConfiguration; end
      class EpisodicExtractionOverride < CustomExtractionConfiguration; end
      class Unknown < CustomExtractionConfiguration; end
    end

    # <p>Input for a custom extraction configuration.</p>
    # @!attribute semantic_extraction_override
    #   <p>The semantic extraction override configuration input.</p>
    #   @return [Types::SemanticOverrideExtractionConfigurationInput]
    # @!attribute user_preference_extraction_override
    #   <p>The user preference extraction override configuration input.</p>
    #   @return [Types::UserPreferenceOverrideExtractionConfigurationInput]
    # @!attribute episodic_extraction_override
    #   <p>Configurations to override the extraction step of the episodic strategy.</p>
    #   @return [Types::EpisodicOverrideExtractionConfigurationInput]
    class CustomExtractionConfigurationInput < Struct.new(
      :semantic_extraction_override,
      :user_preference_extraction_override,
      :episodic_extraction_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticExtractionOverride < CustomExtractionConfigurationInput; end
      class UserPreferenceExtractionOverride < CustomExtractionConfigurationInput; end
      class EpisodicExtractionOverride < CustomExtractionConfigurationInput; end
      class Unknown < CustomExtractionConfigurationInput; end
    end

    # <p>Configuration for inbound JWT-based authorization, specifying how incoming requests should be authenticated.</p>
    # @!attribute discovery_url
    #   <p>This URL is used to fetch OpenID Connect configuration or authorization server metadata for validating incoming tokens.</p>
    #   @return [String]
    # @!attribute allowed_audience
    #   <p>Represents individual audience values that are validated in the incoming JWT token validation process.</p>
    #   @return [Array<String>]
    # @!attribute allowed_clients
    #   <p>Represents individual client IDs that are validated in the incoming JWT token validation process.</p>
    #   @return [Array<String>]
    # @!attribute allowed_scopes
    #   <p>An array of scopes that are allowed to access the token.</p>
    #   @return [Array<String>]
    # @!attribute advertised_scope_mapping
    #   <p>A map that associates each scope in <code>allowedScopes</code> with a corresponding advertised scope value. The advertised scope appears in OAuth protected resource metadata and <code>WWW-Authenticate</code> response headers. Use this parameter when the scope that clients request from your identity provider differs from the scope in the validated token. Each key is a scope from <code>allowedScopes</code> that the service uses for token validation. Each value is the corresponding scope that the service advertises to clients. Scopes without a mapping entry appear unchanged to clients.</p>
    #   @return [Hash<String, String>]
    # @!attribute custom_claims
    #   <p>An array of objects that define a custom claim validation name, value, and operation </p>
    #   @return [Array<Types::CustomClaimValidationType>]
    # @!attribute private_endpoint
    #   <p>The private endpoint configuration for a gateway target. Defines how the gateway connects to private resources in your VPC.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute private_endpoint_overrides
    #   <p>The private endpoint overrides for the custom JWT authorizer configuration.</p>
    #   @return [Array<Types::PrivateEndpointOverride>]
    # @!attribute allowed_workload_configuration
    #   <p>The configuration that restricts which workloads in the request's identity chain are allowed to invoke the target, identified by their hosting environments and workload identities. At launch, this is supported only for AgentCore Runtime targets, and the allowed workloads are AgentCore Gateways.</p>
    #   @return [Types::AllowedWorkloadConfiguration]
    class CustomJWTAuthorizerConfiguration < Struct.new(
      nil,
      :discovery_url,
      :allowed_audience,
      :allowed_clients,
      :allowed_scopes,
      :advertised_scope_mapping,
      :custom_claims,
      :private_endpoint,
      :private_endpoint_overrides,
      :allowed_workload_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a custom memory strategy.</p>
    # @!attribute name
    #   <p>The name of the custom memory strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the custom memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The namespaces associated with the custom memory strategy.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates associated with the custom memory strategy.</p>
    #   @return [Array<String>]
    # @!attribute configuration
    #   <p>The configuration for the custom memory strategy.</p>
    #   @return [Types::CustomConfigurationInput]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata fields on records generated by this strategy.</p>
    #   @return [Types::MemoryRecordSchema]
    # @!attribute record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) configuration for memory records generated by this strategy. Set <code>recordExpiryDurationDays</code> to the number of days after which records expire. If not specified, records generated by this strategy do not expire.</p>
    #   @return [Types::RecordExpirySpecification]
    class CustomMemoryStrategyInput < Struct.new(
      nil,
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :configuration,
      :memory_record_schema,
      :record_expiry_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration for a custom OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the custom provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the custom OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the custom OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute on_behalf_of_token_exchange_config
    #   <p>The configuration for on-behalf-of token exchange. This enables authentication flows that use RFC 8693 token exchange or RFC 7523 JWT authorization grants.</p>
    #   @return [Types::OnBehalfOfTokenExchangeConfigType]
    # @!attribute client_authentication_method
    #   <p>The client authentication method to use when authenticating with the token endpoint.</p>
    #   @return [String]
    # @!attribute private_key_jwt_config
    #   <p>The private_key_jwt client authentication configuration for this credential provider. When specified, the credential provider uses JWT client assertions to authenticate with the token endpoint.</p>
    #   @return [Types::PrivateKeyJwtConfig]
    # @!attribute private_endpoint
    #   <p>The default private endpoint for the custom OAuth2 provider, enabling secure connectivity through a VPC Lattice resource configuration.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute private_endpoint_overrides
    #   <p>The private endpoint overrides for the custom OAuth2 provider configuration.</p>
    #   @return [Array<Types::PrivateEndpointOverride>]
    class CustomOauth2ProviderConfigInput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      :on_behalf_of_token_exchange_config,
      :client_authentication_method,
      :private_key_jwt_config,
      :private_endpoint,
      :private_endpoint_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_id] = '' unless options.key?(:client_id)
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>Output configuration for a custom OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the custom provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the custom OAuth2 provider.</p>
    #   @return [String]
    # @!attribute on_behalf_of_token_exchange_config
    #   <p>The configuration for on-behalf-of token exchange.</p>
    #   @return [Types::OnBehalfOfTokenExchangeConfigType]
    # @!attribute client_authentication_method
    #   <p>The client authentication method used when authenticating with the token endpoint.</p>
    #   @return [String]
    # @!attribute private_endpoint
    #   <p>The default private endpoint for the custom OAuth2 provider, enabling secure connectivity through a VPC Lattice resource configuration.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute private_endpoint_overrides
    #   <p>The private endpoint overrides for the custom OAuth2 provider configuration.</p>
    #   @return [Array<Types::PrivateEndpointOverride>]
    # @!attribute private_key_jwt_config
    #   <p>The configuration for private_key_jwt client authentication used by this OAuth2 credential provider.</p>
    #   @return [Types::PrivateKeyJwtConfig]
    class CustomOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      :on_behalf_of_token_exchange_config,
      :client_authentication_method,
      :private_endpoint,
      :private_endpoint_overrides,
      :private_key_jwt_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations for a custom reflection strategy.</p>
    # @!attribute episodic_reflection_override
    #   <p>The configuration for a reflection strategy to override the default one.</p>
    #   @return [Types::EpisodicReflectionOverride]
    class CustomReflectionConfiguration < Struct.new(
      :episodic_reflection_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EpisodicReflectionOverride < CustomReflectionConfiguration; end
      class Unknown < CustomReflectionConfiguration; end
    end

    # <p>Input for a custom reflection configuration.</p>
    # @!attribute episodic_reflection_override
    #   <p>The reflection override configuration input.</p>
    #   @return [Types::EpisodicOverrideReflectionConfigurationInput]
    class CustomReflectionConfigurationInput < Struct.new(
      :episodic_reflection_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EpisodicReflectionOverride < CustomReflectionConfigurationInput; end
      class Unknown < CustomReflectionConfigurationInput; end
    end

    # <p>The configuration for custom transformations applied to requests and responses through the gateway. This structure defines how the gateway transforms data.</p>
    # @!attribute lambda
    #   <p>The Lambda configuration for custom transformations. This configuration defines how the gateway uses a Lambda function to transform data.</p>
    #   @return [Types::LambdaTransformConfiguration]
    class CustomTransformConfiguration < Struct.new(
      nil,
      :lambda,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration that specifies where to read agent traces for online evaluation. </p>
    # @!attribute cloud_watch_logs
    #   <p> The CloudWatch logs configuration for reading agent traces from log groups. </p>
    #   @return [Types::CloudWatchLogsInputConfig]
    class DataSourceConfig < Struct.new(
      :cloud_watch_logs,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CloudWatchLogs < DataSourceConfig; end
      class Unknown < DataSourceConfig; end
    end

    # <p> Source of examples to add to the dataset. </p>
    # @!attribute inline_examples
    #   <p> Inline examples provided directly in the request body. </p>
    #   @return [Types::InlineExamplesSource]
    # @!attribute s3_source
    #   <p> Amazon S3 URI pointing to a JSONL file in the customer's bucket. </p>
    #   @return [Types::S3Source]
    class DataSourceType < Struct.new(
      :inline_examples,
      :s3_source,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class InlineExamples < DataSourceType; end
      class S3Source < DataSourceType; end
      class Unknown < DataSourceType; end
    end

    # <p> Summary information about a dataset. </p>
    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p> The name of the dataset. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the dataset. </p>
    #   @return [String]
    # @!attribute draft_status
    #   <p> Publish synchronization state. Only authoritative when status is ACTIVE. </p>
    #   @return [String]
    # @!attribute schema_type
    #   <p> The schema type of the dataset. </p>
    #   @return [String]
    # @!attribute example_count
    #   <p> The number of examples in the dataset. </p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p> The timestamp when the dataset was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The timestamp when the dataset was last updated. </p>
    #   @return [Time]
    class DatasetSummary < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :dataset_name,
      :description,
      :status,
      :draft_status,
      :schema_type,
      :example_count,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Summary information about a published dataset version. </p>
    # @!attribute dataset_version
    #   <p> The version number of this published snapshot. </p>
    #   @return [String]
    # @!attribute example_count
    #   <p> The number of examples in this version. </p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p> The timestamp when this version was published. </p>
    #   @return [Time]
    class DatasetVersionSummary < Struct.new(
      nil,
      :dataset_version,
      :example_count,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception thrown when decryption of a secret fails.</p>
    # @!attribute message
    #   @return [String]
    class DecryptionFailure < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime associated with the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteAgentRuntimeEndpointRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :endpoint_name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the AgentCore Runtime endpoint deletion.</p>
    #   @return [String]
    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    class DeleteAgentRuntimeEndpointResponse < Struct.new(
      nil,
      :status,
      :agent_runtime_id,
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to delete.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The version of the AgentCore Runtime to delete. When you provide this value, only that version is deleted. When you omit it, the entire AgentCore Runtime and all of its versions are deleted.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request but does not return an error.</p>
    #   @return [String]
    class DeleteAgentRuntimeRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :agent_runtime_version,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the AgentCore Runtime deletion.</p>
    #   @return [String]
    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The version of the AgentCore Runtime that was deleted. This value is present only when you delete a single version.</p>
    #   @return [String]
    class DeleteAgentRuntimeResponse < Struct.new(
      nil,
      :status,
      :agent_runtime_id,
      :agent_runtime_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the API key credential provider to delete.</p>
    #   @return [String]
    class DeleteApiKeyCredentialProviderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApiKeyCredentialProviderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the browser profile to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteBrowserProfileRequest < Struct.new(
      nil,
      :profile_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the deleted browser profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted browser profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the browser profile deletion.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the browser profile was last updated.</p>
    #   @return [Time]
    # @!attribute last_saved_at
    #   <p>The timestamp when browser session data was last saved to this profile before deletion.</p>
    #   @return [Time]
    class DeleteBrowserProfileResponse < Struct.new(
      nil,
      :profile_id,
      :profile_arn,
      :status,
      :last_updated_at,
      :last_saved_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_id
    #   <p>The unique identifier of the browser to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteBrowserRequest < Struct.new(
      nil,
      :browser_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_id
    #   <p>The unique identifier of the deleted browser.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the browser deletion.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the browser was last updated.</p>
    #   @return [Time]
    class DeleteBrowserResponse < Struct.new(
      nil,
      :browser_id,
      :status,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the capacity provider to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class DeleteCapacityProviderInput < Struct.new(
      nil,
      :capacity_provider_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the deleted capacity provider.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the capacity provider. For possible values, see <code>CapacityProviderStatus</code>.</p>
    #   @return [String]
    class DeleteCapacityProviderOutput < Struct.new(
      nil,
      :capacity_provider_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_id
    #   <p>The unique identifier of the code interpreter to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteCodeInterpreterRequest < Struct.new(
      nil,
      :code_interpreter_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_id
    #   <p>The unique identifier of the deleted code interpreter.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code interpreter deletion.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the code interpreter was last updated.</p>
    #   @return [Time]
    class DeleteCodeInterpreterResponse < Struct.new(
      nil,
      :code_interpreter_id,
      :status,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle to delete.</p>
    #   @return [String]
    class DeleteConfigurationBundleRequest < Struct.new(
      nil,
      :bundle_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The unique identifier of the deleted configuration bundle.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the configuration bundle deletion operation.</p>
    #   @return [String]
    class DeleteConfigurationBundleResponse < Struct.new(
      nil,
      :bundle_arn,
      :bundle_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consent_portal_identifier
    #   <p>The identifier of the consent portal. You can specify either the consent portal ID or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteConsentPortalRequest < Struct.new(
      nil,
      :consent_portal_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteConsentPortalResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute example_ids
    #   <p> The IDs of the examples to delete. </p>
    #   @return [Array<String>]
    class DeleteDatasetExamplesRequest < Struct.new(
      nil,
      :dataset_id,
      :client_token,
      :example_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the dataset. </p>
    #   @return [String]
    # @!attribute deleted_count
    #   <p> The number of examples deleted. </p>
    #   @return [Integer]
    # @!attribute updated_at
    #   <p> The timestamp when the examples were deleted. </p>
    #   @return [Time]
    class DeleteDatasetExamplesResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :status,
      :deleted_count,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset to delete. </p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p> Optional version to delete. If absent, deletes the entire dataset. If provided, deletes only that specific version. </p>
    #   @return [String]
    class DeleteDatasetRequest < Struct.new(
      nil,
      :dataset_id,
      :dataset_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the dataset after the delete request. </p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p> The version that was deleted. </p>
    #   @return [String]
    # @!attribute updated_at
    #   <p> The timestamp when the delete was initiated. </p>
    #   @return [Time]
    class DeleteDatasetResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :status,
      :dataset_version,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluator_id
    #   <p> The unique identifier of the evaluator to delete. </p>
    #   @return [String]
    class DeleteEvaluatorRequest < Struct.new(
      nil,
      :evaluator_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluator_arn
    #   <p> The Amazon Resource Name (ARN) of the deleted evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_id
    #   <p> The unique identifier of the deleted evaluator. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the evaluator deletion operation. </p>
    #   @return [String]
    class DeleteEvaluatorResponse < Struct.new(
      nil,
      :evaluator_arn,
      :evaluator_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute rate_limit_id
    #   <p>The unique identifier of the rate limit to delete.</p>
    #   @return [String]
    class DeleteGatewayRateLimitRequest < Struct.new(
      nil,
      :gateway_identifier,
      :rate_limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rate_limit_id
    #   <p>The unique identifier of the deleted rate limit.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the rate limit deletion.</p>
    #   @return [String]
    class DeleteGatewayRateLimitResponse < Struct.new(
      nil,
      :rate_limit_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to delete.</p>
    #   @return [String]
    class DeleteGatewayRequest < Struct.new(
      nil,
      :gateway_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_id
    #   <p>The unique identifier of the deleted gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the gateway deletion.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the current status of the gateway deletion.</p>
    #   @return [Array<String>]
    class DeleteGatewayResponse < Struct.new(
      nil,
      :gateway_id,
      :status,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway containing the rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the rule to delete.</p>
    #   @return [String]
    class DeleteGatewayRuleRequest < Struct.new(
      nil,
      :gateway_identifier,
      :rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The unique identifier of the deleted rule.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the rule deletion operation.</p>
    #   @return [String]
    class DeleteGatewayRuleResponse < Struct.new(
      nil,
      :rule_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway associated with the target.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the gateway target to delete.</p>
    #   @return [String]
    class DeleteGatewayTargetRequest < Struct.new(
      nil,
      :gateway_identifier,
      :target_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the deleted gateway target.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the gateway target deletion.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the current status of the gateway target deletion.</p>
    #   @return [Array<String>]
    class DeleteGatewayTargetResponse < Struct.new(
      nil,
      :gateway_arn,
      :target_id,
      :status,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness that the endpoint belongs to.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class DeleteHarnessEndpointRequest < Struct.new(
      nil,
      :harness_id,
      :endpoint_name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The endpoint that was deleted.</p>
    #   @return [Types::HarnessEndpoint]
    class DeleteHarnessEndpointResponse < Struct.new(
      nil,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute delete_managed_memory
    #   <p>Whether to delete the managed memory on harness deletion. Default: true. If false, the memory is disassociated and becomes a regular customer-owned resource.</p>
    #   @return [Boolean]
    class DeleteHarnessRequest < Struct.new(
      nil,
      :harness_id,
      :client_token,
      :delete_managed_memory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness
    #   <p>The harness that was deleted.</p>
    #   @return [Types::Harness]
    class DeleteHarnessResponse < Struct.new(
      nil,
      :harness,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A client token is used for keeping track of idempotent requests. It can contain a session id which can be around 250 chars, combined with a unique Amazon Web Services identifier.</p>
    #   @return [String]
    # @!attribute memory_id
    #   <p>The unique identifier of the memory to delete.</p>
    #   @return [String]
    class DeleteMemoryInput < Struct.new(
      nil,
      :client_token,
      :memory_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The unique identifier of the deleted AgentCore Memory resource.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the AgentCore Memory resource deletion.</p>
    #   @return [String]
    class DeleteMemoryOutput < Struct.new(
      nil,
      :memory_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deleting a memory strategy.</p>
    # @!attribute memory_strategy_id
    #   <p>The unique identifier of the memory strategy to delete.</p>
    #   @return [String]
    class DeleteMemoryStrategyInput < Struct.new(
      nil,
      :memory_strategy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the OAuth2 credential provider to delete.</p>
    #   @return [String]
    class DeleteOauth2CredentialProviderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteOauth2CredentialProviderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute online_evaluation_config_id
    #   <p> The unique identifier of the online evaluation configuration to delete. </p>
    #   @return [String]
    class DeleteOnlineEvaluationConfigRequest < Struct.new(
      nil,
      :online_evaluation_config_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute online_evaluation_config_arn
    #   <p> The Amazon Resource Name (ARN) of the deleted online evaluation configuration. </p>
    #   @return [String]
    # @!attribute online_evaluation_config_id
    #   <p> The unique identifier of the deleted online evaluation configuration. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the online evaluation configuration deletion operation. </p>
    #   @return [String]
    class DeleteOnlineEvaluationConfigResponse < Struct.new(
      nil,
      :online_evaluation_config_arn,
      :online_evaluation_config_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The unique identifier of the payment connector to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class DeletePaymentConnectorRequest < Struct.new(
      nil,
      :payment_manager_id,
      :payment_connector_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the payment connector, set to <code>DELETING</code> when deletion is initiated. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The unique identifier of the deleted payment connector.</p>
    #   @return [String]
    class DeletePaymentConnectorResponse < Struct.new(
      nil,
      :status,
      :payment_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the payment credential provider to delete.</p>
    #   @return [String]
    class DeletePaymentCredentialProviderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeletePaymentCredentialProviderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the payment manager to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class DeletePaymentManagerRequest < Struct.new(
      nil,
      :payment_manager_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the payment manager, set to <code>DELETING</code> when deletion is initiated. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute payment_manager_id
    #   <p>The unique identifier of the deleted payment manager.</p>
    #   @return [String]
    class DeletePaymentManagerResponse < Struct.new(
      nil,
      :status,
      :payment_manager_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier of the policy engine to be deleted. This must be a valid policy engine ID that exists within the account.</p>
    #   @return [String]
    class DeletePolicyEngineRequest < Struct.new(
      nil,
      :policy_engine_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier of the policy engine being deleted. This confirms which policy engine the deletion operation targets.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the deleted policy engine.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the deleted policy engine was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the deleted policy engine was last modified before deletion. This tracks the final state of the policy engine before it was removed from the system.</p>
    #   @return [Time]
    # @!attribute policy_engine_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted policy engine. This globally unique identifier confirms which policy engine resource was successfully removed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the policy engine deletion operation. This provides status about any issues that occurred during the deletion process.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The human-readable description of the deleted policy engine.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the deletion status. This provides details about the deletion process or any issues that may have occurred.</p>
    #   @return [Array<String>]
    class DeletePolicyEngineResponse < Struct.new(
      nil,
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages the policy to be deleted. This ensures the policy is deleted from the correct policy engine context.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The unique identifier of the policy to be deleted. This must be a valid policy ID that exists within the specified policy engine.</p>
    #   @return [String]
    class DeletePolicyRequest < Struct.new(
      nil,
      :policy_engine_id,
      :policy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier of the policy being deleted. This confirms which policy the deletion operation targets.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the deleted policy. This confirms which policy was successfully removed from the system and matches the name that was originally assigned during policy creation.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine from which the policy was deleted. This confirms the policy engine context for the deletion operation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the deleted policy was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the deleted policy was last modified before deletion. This tracks the final state of the policy before it was removed from the system.</p>
    #   @return [Time]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted policy. This globally unique identifier confirms which policy resource was successfully removed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the policy deletion operation. This provides information about any issues that occurred during the deletion process.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The enforcement mode of the deleted policy.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Represents the definition structure for policies within the AgentCore Policy system. This structure encapsulates different policy formats and languages that can be used to define access control rules.</p>
    #   @return [Types::PolicyDefinition]
    # @!attribute description
    #   <p>The human-readable description of the deleted policy.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the deletion status. This provides details about the deletion process or any issues that may have occurred.</p>
    #   @return [Array<String>]
    class DeletePolicyResponse < Struct.new(
      nil,
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode,
      :definition,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforcement_mode] = 'ACTIVE' unless options.key?(:enforcement_mode)
        super
      end
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to delete. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    #   @return [String]
    class DeleteRegistryRecordRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRegistryRecordResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry to delete. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    class DeleteRegistryRequest < Struct.new(
      nil,
      :registry_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the registry, set to <code>DELETING</code> when deletion is initiated. For a list of all possible registry statuses, see the <code>RegistryStatus</code> data type.</p>
    #   @return [String]
    class DeleteRegistryResponse < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to delete the resource policy.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workload identity to delete.</p>
    #   @return [String]
    class DeleteWorkloadIdentityRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkloadIdentityResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration for a derived evaluator. It reuses an existing evaluator's logic on your own model. </p>
    # @!attribute base_evaluator_id
    #   <p> The identifier of the base evaluator whose logic to run (a <code>Builtin.*</code> or <code>ThirdParty.*</code> evaluator). </p>
    #   @return [String]
    # @!attribute model_config
    #   <p> The configuration of the evaluator model that you supply. </p>
    #   @return [Types::EvaluatorModelConfig]
    class DerivedEvaluatorConfig < Struct.new(
      nil,
      :base_evaluator_id,
      :model_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains descriptor-type-specific configurations for a registry record. Only the descriptor matching the record's <code>descriptorType</code> should be populated.</p>
    # @!attribute mcp
    #   <p>The Model Context Protocol (MCP) descriptor configuration. Use this when the <code>descriptorType</code> is <code>MCP</code>.</p>
    #   @return [Types::McpDescriptor]
    # @!attribute a2a
    #   <p>The Agent-to-Agent (A2A) protocol descriptor configuration. Use this when the <code>descriptorType</code> is <code>A2A</code>.</p>
    #   @return [Types::A2aDescriptor]
    # @!attribute custom
    #   <p>The custom descriptor configuration. Use this when the <code>descriptorType</code> is <code>CUSTOM</code>.</p>
    #   @return [Types::CustomDescriptor]
    # @!attribute agent_skills
    #   <p>The agent skills descriptor configuration. Use this when the <code>descriptorType</code> is <code>AGENT_SKILLS</code>.</p>
    #   @return [Types::AgentSkillsDescriptor]
    class Descriptors < Struct.new(
      nil,
      :mcp,
      :a2a,
      :custom,
      :agent_skills,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an Amazon EBS-backed persistent volume. The service creates persistent volumes when a session first launches, and the volumes survive instance termination. The volumes persist until you delete the session.</p>
    # @!attribute name
    #   <p>The logical name of the volume. Use this name to reference the volume when you mount it into an agent runtime.</p>
    #   @return [String]
    # @!attribute size_gi_b
    #   <p>The size of the volume, in GiB.</p>
    #   @return [Integer]
    # @!attribute volume_type
    #   <p>The Amazon EBS volume type. If you do not specify a type, the default is <code>gp3</code>.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>The number of IOPS to provision. Valid only for <code>gp3</code>, <code>io1</code>, and <code>io2</code> volumes.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>The throughput, in MiB/s. Valid only for <code>gp3</code> volumes.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Specifies whether to encrypt the volume. If <code>true</code>, the service encrypts the volume with the KMS key that you specify in <code>kmsKeyId</code>, or the default KMS key for Amazon EBS if you do not specify one. The default is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key to use for encryption.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>An optional Amazon EBS snapshot ID. If provided, the volume is initialized from this snapshot the first time it is created. On subsequent restarts, the existing volume is used and the snapshot is ignored.</p>
    #   @return [String]
    class EbsVolumeConfiguration < Struct.new(
      nil,
      :name,
      :size_gi_b,
      :volume_type,
      :iops,
      :throughput,
      :encrypted,
      :kms_key_id,
      :snapshot_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_type] = 'gp3' unless options.key?(:volume_type)
        super
      end
    end

    # <p>The configuration for Amazon EC2-based compute, including the launch template source, networking, storage volumes, and instance lifecycle settings.</p>
    # @!attribute launch_template_source
    #   <p>The source of the launch template configuration that defines how instances are launched.</p>
    #   @return [Types::LaunchTemplateSource]
    # @!attribute vpc_configuration
    #   <p>The VPC configuration for launching instances, including subnets and security groups.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute volumes
    #   <p>The named persistent Amazon EBS volumes for the capacity provider. A capacity provider can define up to five volumes.</p>
    #   @return [Array<Types::VolumeConfiguration>]
    # @!attribute lifecycle_configuration
    #   <p>The lifecycle configuration for instances in the capacity provider.</p>
    #   @return [Types::InstanceLifecycleConfiguration]
    # @!attribute root_volume
    #   <p>The configuration for the instance root volume. Specify the amount of free space to guarantee and, optionally, the Amazon EBS performance and encryption settings. The device name and delete-on-termination behavior are not configurable.</p>
    #   @return [Types::RootVolumeConfiguration]
    class Ec2Configuration < Struct.new(
      nil,
      :launch_template_source,
      :vpc_configuration,
      :volumes,
      :lifecycle_configuration,
      :root_volume,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an Amazon EFS access point filesystem mounted into the AgentCore Runtime. EFS access points provide shared file storage accessible from your AgentCore Runtime sessions.</p>
    # @!attribute access_point_arn
    #   <p>The ARN of the EFS access point to mount into the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute mount_path
    #   <p>The mount path for the EFS access point inside the AgentCore Runtime. The path must be under <code>/mnt</code> with exactly one subdirectory level (for example, <code>/mnt/data</code>).</p>
    #   @return [String]
    class EfsAccessPointConfiguration < Struct.new(
      nil,
      :access_point_arn,
      :mount_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for mounting an Amazon Elastic File System (Amazon EFS) access point that you own into a session.</p>
    # @!attribute access_point_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Elastic File System (Amazon EFS) access point to mount.</p>
    #   @return [String]
    # @!attribute mount_path
    #   <p>The absolute path within the session at which the access point is mounted, for example <code>/mnt/efs</code>. Each mount path must be unique across all file system configurations in the session.</p>
    #   @return [String]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Elastic File System (Amazon EFS) file system that owns the access point.</p>
    #   @return [String]
    class EfsConfiguration < Struct.new(
      nil,
      :access_point_arn,
      :mount_path,
      :file_system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception thrown when encryption of a secret fails.</p>
    # @!attribute message
    #   @return [String]
    class EncryptionFailure < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A block device mapping for an instance store (ephemeral) volume.</p>
    # @!attribute device_name
    #   <p>The device name, for example <code>/dev/sdh</code> or <code>xvdh</code>.</p>
    #   @return [String]
    # @!attribute virtual_name
    #   <p>The virtual device name (<code>ephemeralN</code>). Instance store volumes are numbered starting from 0. The number of available instance store volumes depends on the instance type. After you connect to the instance, you must mount the volume.</p>
    #   @return [String]
    # @!attribute ebs
    #   <p>The shared Amazon EBS performance and encryption properties for a volume. These properties are common across the different volume configurations for a capacity provider.</p>
    #   @return [Types::EphemeralEBSVolumeConfiguration]
    class EphemeralBlockDeviceMapping < Struct.new(
      nil,
      :device_name,
      :virtual_name,
      :ebs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The shared Amazon EBS performance and encryption properties for a volume. These properties are common across the different volume configurations for a capacity provider.</p>
    # @!attribute volume_type
    #   <p>The Amazon EBS volume type. If you do not specify a type, the default is <code>gp3</code>.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>The number of IOPS to provision. For <code>gp3</code>, <code>io1</code>, and <code>io2</code> volumes, this is the number of IOPS provisioned for the volume. For <code>gp2</code> volumes, this sets the baseline IOPS performance. It also controls the rate at which the volume accumulates I/O credits for bursting. Supported values: <code>gp3</code>, 3,000–80,000; <code>io1</code>, 100–64,000; <code>io2</code>, 100–256,000.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>The throughput to provision, in MiB/s. Valid only for <code>gp3</code> volumes. Valid range: 125–2,000 MiB/s.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Specifies whether to encrypt the volume. Encrypted volumes can be attached only to instances that support Amazon EBS encryption. If you create a volume from a snapshot, you cannot specify an encryption value.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The identifier (key ID, key alias, key ARN, or alias ARN) of the customer managed KMS key to use for Amazon EBS encryption.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The ID of the snapshot.</p>
    #   @return [String]
    # @!attribute volume_size
    #   <p>The size of the volume, in GiB. You must specify either a snapshot ID or a volume size. Supported sizes: <code>gp2</code>, 1–16,384; <code>gp3</code>, 1–65,536; <code>io1</code>, 4–16,384; <code>io2</code>, 4–65,536.</p>
    #   @return [Integer]
    # @!attribute volume_initialization_rate
    #   <p>The rate at which the volume is initialized after creation, in MiB/s. Supported only for volumes created from snapshots. Valid range: 100–300 MiB/s.</p>
    #   @return [Integer]
    # @!attribute ebs_card_index
    #   <p>The index of the Amazon EBS card. Applies to instances with multiple Amazon EBS cards.</p>
    #   @return [Integer]
    class EphemeralEBSVolumeConfiguration < Struct.new(
      nil,
      :volume_type,
      :iops,
      :throughput,
      :encrypted,
      :kms_key_id,
      :snapshot_id,
      :volume_size,
      :volume_initialization_rate,
      :ebs_card_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_type] = 'gp3' unless options.key?(:volume_type)
        super
      end
    end

    # <p>Contains configurations to override the default consolidation step for the episodic memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text appended to the prompt for the consolidation step of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID used for the consolidation step of the episodic memory strategy.</p>
    #   @return [String]
    class EpisodicConsolidationOverride < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations to override the default extraction step for the episodic memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text appended to the prompt for the extraction step of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID used for the extraction step of the episodic memory strategy.</p>
    #   @return [String]
    class EpisodicExtractionOverride < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating an episodic memory strategy.</p>
    # @!attribute name
    #   <p>The name of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The namespaces for which to create episodes.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates for which to create episodes.</p>
    #   @return [Array<String>]
    # @!attribute reflection_configuration
    #   <p>The configuration for the reflections created with the episodic memory strategy.</p>
    #   @return [Types::EpisodicReflectionConfigurationInput]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata fields on records generated by this strategy.</p>
    #   @return [Types::MemoryRecordSchema]
    # @!attribute record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) configuration for memory records generated by this strategy. Set <code>recordExpiryDurationDays</code> to the number of days after which records expire. If not specified, records generated by this strategy do not expire.</p>
    #   @return [Types::RecordExpirySpecification]
    class EpisodicMemoryStrategyInput < Struct.new(
      nil,
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :reflection_configuration,
      :memory_record_schema,
      :record_expiry_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the configuration to override the episodic memory strategy.</p>
    # @!attribute extraction
    #   <p>Contains configurations for overriding the extraction step of the episodic memory strategy.</p>
    #   @return [Types::EpisodicOverrideExtractionConfigurationInput]
    # @!attribute consolidation
    #   <p>Contains configurations for overriding the consolidation step of the episodic memory strategy.</p>
    #   @return [Types::EpisodicOverrideConsolidationConfigurationInput]
    # @!attribute reflection
    #   <p>Contains configurations for overriding the reflection step of the episodic memory strategy.</p>
    #   @return [Types::EpisodicOverrideReflectionConfigurationInput]
    class EpisodicOverrideConfigurationInput < Struct.new(
      nil,
      :extraction,
      :consolidation,
      :reflection,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations for overriding the consolidation step of the episodic memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for the consolidation step of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for the consolidation step of the episodic memory strategy.</p>
    #   @return [String]
    class EpisodicOverrideConsolidationConfigurationInput < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations for overriding the extraction step of the episodic memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for the extraction step of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for the extraction step of the episodic memory strategy.</p>
    #   @return [String]
    class EpisodicOverrideExtractionConfigurationInput < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations for overriding the reflection step of the episodic memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for reflection step of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for the reflection step of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The namespaces to use for episodic reflection. Can be less nested than the episodic namespaces.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates to use for episodic reflection. Can be less nested than the episodic namespaces.</p>
    #   @return [Array<String>]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata fields on records generated by this reflection override.</p>
    #   @return [Types::MemoryRecordSchema]
    class EpisodicOverrideReflectionConfigurationInput < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      :namespaces,
      :namespace_templates,
      :memory_record_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the reflections created with the episodic memory strategy.</p>
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The namespaces for which to create reflections. Can be less nested than the episodic namespaces.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates for which to create reflections. Can be less nested than the episodic namespaces.</p>
    #   @return [Array<String>]
    # @!attribute memory_record_schema
    #   <p>"Schema for metadata fields on records generated by reflections.</p>
    #   @return [Types::MemoryRecordSchema]
    class EpisodicReflectionConfiguration < Struct.new(
      nil,
      :namespaces,
      :namespace_templates,
      :memory_record_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An episodic reflection configuration input.</p>
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The namespaces over which to create reflections. Can be less nested than episode namespaces.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates over which to create reflections. Can be less nested than episode namespaces.</p>
    #   @return [Array<String>]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata fields on records generated by reflections.</p>
    #   @return [Types::MemoryRecordSchema]
    class EpisodicReflectionConfigurationInput < Struct.new(
      nil,
      :namespaces,
      :namespace_templates,
      :memory_record_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configurations to override the default reflection step for the episodic memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text appended to the prompt for the reflection step of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID used for the reflection step of the episodic memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter. The namespaces over which reflections were created. Can be less nested than the episodic namespaces.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates over which reflections were created. Can be less nested than the episodic namespaces.</p>
    #   @return [Array<String>]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata fields on records generated by this reflection override.</p>
    #   @return [Types::MemoryRecordSchema]
    class EpisodicReflectionOverride < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      :namespaces,
      :namespace_templates,
      :memory_record_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration that defines how an evaluator assesses agent performance, including the evaluation method and parameters. </p>
    # @!attribute llm_as_a_judge
    #   <p> The LLM-as-a-Judge configuration that uses a language model to evaluate agent performance based on custom instructions and rating scales. </p>
    #   @return [Types::LlmAsAJudgeEvaluatorConfig]
    # @!attribute code_based
    #   <p> Configuration for a code-based evaluator that uses a customer-managed Lambda function to programmatically assess agent performance. </p>
    #   @return [Types::CodeBasedEvaluatorConfig]
    # @!attribute derived
    #   <p> The configuration for an evaluator derived from an existing base evaluator (a built-in or third-party evaluator), run on your own model. The base evaluator supplies the prompt and scoring. </p>
    #   @return [Types::DerivedEvaluatorConfig]
    class EvaluatorConfig < Struct.new(
      :llm_as_a_judge,
      :code_based,
      :derived,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class LlmAsAJudge < EvaluatorConfig; end
      class CodeBased < EvaluatorConfig; end
      class Derived < EvaluatorConfig; end
      class Unknown < EvaluatorConfig; end
    end

    # <p> The model configuration that specifies which foundation model to use for evaluation and how to configure it. </p>
    # @!attribute bedrock_evaluator_model_config
    #   <p> The Amazon Bedrock model configuration for evaluation. </p>
    #   @return [Types::BedrockEvaluatorModelConfig]
    # @!attribute responses_evaluator_model_config
    #   <p> The OpenResponses model configuration for evaluation. </p>
    #   @return [Types::OpenResponsesEvaluatorModelConfig]
    class EvaluatorModelConfig < Struct.new(
      :bedrock_evaluator_model_config,
      :responses_evaluator_model_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BedrockEvaluatorModelConfig < EvaluatorModelConfig; end
      class ResponsesEvaluatorModelConfig < EvaluatorModelConfig; end
      class Unknown < EvaluatorModelConfig; end
    end

    # <p> The reference to an evaluator used in online evaluation configurations, containing the evaluator identifier. </p>
    # @!attribute evaluator_id
    #   <p> The unique identifier of the evaluator. Can reference builtin evaluators (e.g., Builtin.Helpfulness) or custom evaluators. </p>
    #   @return [String]
    class EvaluatorReference < Struct.new(
      :evaluator_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EvaluatorId < EvaluatorReference; end
      class Unknown < EvaluatorReference; end
    end

    # <p> The summary information about an evaluator, including basic metadata and status information. </p>
    # @!attribute evaluator_arn
    #   <p> The Amazon Resource Name (ARN) of the evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_id
    #   <p> The unique identifier of the evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_name
    #   <p> The name of the evaluator. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_type
    #   <p> The type of evaluator, indicating whether it is a built-in evaluator provided by the service or a custom evaluator created by the user. </p>
    #   @return [String]
    # @!attribute provider
    #   <p> The source of the evaluator's logic: Amazon Web Services, a third-party library, or you. </p>
    #   @return [String]
    # @!attribute level
    #   <p> The evaluation level (<code>TOOL_CALL</code>, <code>TRACE</code>, or <code>SESSION</code>) that determines the scope of evaluation. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the evaluator. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the evaluator was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The timestamp when the evaluator was last updated. </p>
    #   @return [Time]
    # @!attribute locked_for_modification
    #   <p> Whether the evaluator is locked for modification due to being referenced by active online evaluation configurations. </p>
    #   @return [Boolean]
    # @!attribute kms_key_arn
    #   <p> The Amazon Resource Name (ARN) of the customer managed KMS key used to encrypt the evaluator's sensitive data. This field is only present for evaluators encrypted with a customer managed key. </p>
    #   @return [String]
    class EvaluatorSummary < Struct.new(
      nil,
      :evaluator_arn,
      :evaluator_id,
      :evaluator_name,
      :description,
      :evaluator_type,
      :provider,
      :level,
      :status,
      :created_at,
      :updated_at,
      :locked_for_modification,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for metadata extraction from conversational content.</p>
    # @!attribute llm_extraction_config
    #   <p>Model-based extraction using a definition and instructions.</p>
    #   @return [Types::LlmExtractionConfig]
    class ExtractionConfig < Struct.new(
      :llm_extraction_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class LlmExtractionConfig < ExtractionConfig; end
      class Unknown < ExtractionConfig; end
    end

    # <p>Contains extraction configuration information for a memory strategy.</p>
    # @!attribute custom_extraction_configuration
    #   <p>The custom extraction configuration.</p>
    #   @return [Types::CustomExtractionConfiguration]
    class ExtractionConfiguration < Struct.new(
      :custom_extraction_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomExtractionConfiguration < ExtractionConfiguration; end
      class Unknown < ExtractionConfiguration; end
    end

    # <p>Configuration for a filesystem that can be mounted into the AgentCore Runtime.</p>
    # @!attribute session_storage
    #   <p>Configuration for session storage. Session storage provides persistent storage that is preserved across AgentCore Runtime session invocations.</p>
    #   @return [Types::SessionStorageConfiguration]
    # @!attribute s3_files_access_point
    #   <p>Configuration for an Amazon S3 Files access point to mount into the AgentCore Runtime.</p>
    #   @return [Types::S3FilesAccessPointConfiguration]
    # @!attribute efs_access_point
    #   <p>Configuration for an Amazon EFS access point to mount into the AgentCore Runtime.</p>
    #   @return [Types::EfsAccessPointConfiguration]
    # @!attribute capacity_provider_volume
    #   <p>Configuration for a capacity provider volume to mount into the AgentCore Runtime. This mounts a persistent volume that is defined on the capacity provider, referenced by its logical name.</p>
    #   @return [Types::CapacityProviderVolumeConfiguration]
    class FilesystemConfiguration < Struct.new(
      :session_storage,
      :s3_files_access_point,
      :efs_access_point,
      :capacity_provider_volume,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SessionStorage < FilesystemConfiguration; end
      class S3FilesAccessPoint < FilesystemConfiguration; end
      class EfsAccessPoint < FilesystemConfiguration; end
      class CapacityProviderVolume < FilesystemConfiguration; end
      class Unknown < FilesystemConfiguration; end
    end

    # <p> The filter that applies conditions to agent traces during online evaluation to determine which traces should be evaluated. </p>
    # @!attribute key
    #   <p> The key or field name to filter on within the agent trace data. </p>
    #   @return [String]
    # @!attribute operator
    #   <p> The comparison operator to use for filtering. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value to compare against using the specified operator. </p>
    #   @return [Types::FilterValue]
    class Filter < Struct.new(
      nil,
      :key,
      :operator,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The value used in filter comparisons, supporting different data types for flexible filtering criteria. </p>
    # @!attribute string_value
    #   <p> The string value for text-based filtering. </p>
    #   @return [String]
    # @!attribute double_value
    #   <p> The numeric value for numerical filtering and comparisons. </p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p> The boolean value for true/false filtering conditions. </p>
    #   @return [Boolean]
    class FilterValue < Struct.new(
      :string_value,
      :double_value,
      :boolean_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < FilterValue; end
      class DoubleValue < FilterValue; end
      class BooleanValue < FilterValue; end
      class Unknown < FilterValue; end
    end

    # <p>Represents a finding or issue discovered during policy generation or validation. Findings provide insights about potential problems, recommendations, or validation results from policy analysis operations. Finding types include: VALID (policy is ready to use), INVALID (policy has validation errors that must be fixed), NOT_TRANSLATABLE (input couldn't be converted to policy), ALLOW_ALL (policy would allow all actions, potential security risk), ALLOW_NONE (policy would allow no actions, unusable), DENY_ALL (policy would deny all actions, may be too restrictive), and DENY_NONE (policy would deny no actions, ineffective). Review all findings before creating policies from generated assets to ensure they match your security requirements.</p>
    # @!attribute type
    #   <p>The type or category of the finding. This classifies the finding as an error, warning, recommendation, or informational message to help users understand the severity and nature of the issue.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the finding. This provides detailed information about the issue, recommendation, or validation result to help users understand and address the finding. </p>
    #   @return [String]
    class Finding < Struct.new(
      nil,
      :type,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for synchronizing from a URL-based MCP server.</p>
    # @!attribute url
    #   <p>The HTTPS URL of the MCP server to synchronize from.</p>
    #   @return [String]
    # @!attribute credential_provider_configurations
    #   <p>Optional list of credential provider configurations for authenticating with the MCP server. At most one credential provider configuration can be specified.</p>
    #   @return [Array<Types::RegistryRecordCredentialProviderConfiguration>]
    class FromUrlSynchronizationConfiguration < Struct.new(
      nil,
      :url,
      :credential_provider_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An API key credential provider for gateway authentication. This structure contains the configuration for authenticating with the target endpoint using an API key.</p>
    # @!attribute provider_arn
    #   <p>The Amazon Resource Name (ARN) of the API key credential provider. This ARN identifies the provider in Amazon Web Services.</p>
    #   @return [String]
    # @!attribute credential_parameter_name
    #   <p>The name of the credential parameter for the API key. This parameter name is used when sending the API key to the target endpoint.</p>
    #   @return [String]
    # @!attribute credential_prefix
    #   <p>The prefix for the API key credential. This prefix is added to the API key when sending it to the target endpoint.</p>
    #   @return [String]
    # @!attribute credential_location
    #   <p>The location of the API key credential. This field specifies where in the request the API key should be placed.</p>
    #   @return [String]
    class GatewayApiKeyCredentialProvider < Struct.new(
      nil,
      :provider_arn,
      :credential_parameter_name,
      :credential_prefix,
      :credential_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an interceptor on a gateway. This structure defines settings for an interceptor that will be invoked during the invocation of the gateway.</p>
    # @!attribute interceptor
    #   <p>The infrastructure settings of an interceptor configuration. This structure defines how the interceptor can be invoked.</p>
    #   @return [Types::InterceptorConfiguration]
    # @!attribute interception_points
    #   <p>The supported points of interception. This field specifies which points during the gateway invocation to invoke the interceptor</p>
    #   @return [Array<String>]
    # @!attribute input_configuration
    #   <p>The configuration for the input of the interceptor. This field specifies how the input to the interceptor is constructed</p>
    #   @return [Types::InterceptorInputConfiguration]
    class GatewayInterceptorConfiguration < Struct.new(
      nil,
      :interceptor,
      :interception_points,
      :input_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a policy engine associated with a gateway. A policy engine is a collection of policies that evaluates and authorizes agent tool calls. When associated with a gateway, the policy engine intercepts all agent requests and determines whether to allow or deny each action based on the defined policies.</p>
    # @!attribute arn
    #   <p>The ARN of the policy engine. The policy engine contains Cedar or Dogwood policies that define fine-grained authorization rules specifying who can perform what actions on which resources as agents interact through the gateway.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The enforcement mode for the policy engine. Valid values include:</p> <ul> <li> <p> <code>LOG_ONLY</code> - The policy engine evaluates each action against your policies and adds traces on whether tool calls would be allowed or denied, but does not enforce the decision. Use this mode to test and validate policies before enabling enforcement.</p> </li> <li> <p> <code>ENFORCE</code> - The policy engine evaluates actions against your policies and enforces decisions by allowing or denying agent operations. Test and validate policies in <code>LOG_ONLY</code> mode before enabling enforcement to avoid unintended denials or adversely affecting production traffic.</p> </li> </ul>
    #   @return [String]
    class GatewayPolicyEngineConfiguration < Struct.new(
      nil,
      :arn,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a gateway protocol. This structure defines how the gateway communicates with external services.</p>
    # @!attribute mcp
    #   <p>The configuration for the Model Context Protocol (MCP). This protocol enables communication between Amazon Bedrock Agent and external tools.</p>
    #   @return [Types::MCPGatewayConfiguration]
    class GatewayProtocolConfiguration < Struct.new(
      :mcp,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Mcp < GatewayProtocolConfiguration; end
      class Unknown < GatewayProtocolConfiguration; end
    end

    # <p>Contains detailed information about a gateway rate limit, including its configuration and current status.</p>
    # @!attribute rate_limit_id
    #   <p>The unique identifier of the rate limit.</p>
    #   @return [String]
    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The human-readable description of the rate limit.</p>
    #   @return [String]
    # @!attribute dimension_keys
    #   <p>The ordered list of dimension key names that define the scope of this rate limit.</p>
    #   @return [Array<String>]
    # @!attribute entries
    #   <p>The list of rule entries that map dimension values to rate configurations.</p>
    #   @return [Array<Types::LimitEntry>]
    # @!attribute status
    #   <p>The current status of the rate limit.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the rate limit was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the rate limit was last updated.</p>
    #   @return [Time]
    class GatewayRateLimitDetail < Struct.new(
      nil,
      :rate_limit_id,
      :gateway_identifier,
      :description,
      :dimension_keys,
      :entries,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about a gateway rule.</p>
    # @!attribute rule_id
    #   <p>The unique identifier of the gateway rule.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway that the rule belongs to.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the rule. Rules are evaluated in order of priority, with lower numbers evaluated first.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The conditions that must be met for the rule to apply.</p>
    #   @return [Array<Types::Condition>]
    # @!attribute actions
    #   <p>The actions to take when the rule conditions are met.</p>
    #   @return [Array<Types::Action>]
    # @!attribute description
    #   <p>The description of the gateway rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the rule was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the rule.</p>
    #   @return [String]
    # @!attribute system
    #   <p>System-managed metadata for rules created by automated processes.</p>
    #   @return [Types::SystemManagedBlock]
    # @!attribute updated_at
    #   <p>The timestamp when the rule was last updated.</p>
    #   @return [Time]
    class GatewayRuleDetail < Struct.new(
      nil,
      :rule_id,
      :gateway_arn,
      :priority,
      :conditions,
      :actions,
      :description,
      :created_at,
      :status,
      :system,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a gateway.</p>
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the gateway.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the gateway was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the gateway was last updated.</p>
    #   @return [Time]
    # @!attribute authorizer_type
    #   <p>The type of authorizer used by the gateway.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The protocol type used by the gateway.</p>
    #   @return [String]
    class GatewaySummary < Struct.new(
      nil,
      :gateway_id,
      :name,
      :status,
      :description,
      :created_at,
      :updated_at,
      :authorizer_type,
      :protocol_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:protocol_type] = 'MCP' unless options.key?(:protocol_type)
        super
      end
    end

    # <p>The gateway target.</p>
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway target.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The target ID.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time at which the target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time at which the target was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the gateway target.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The status reasons for the target status.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the gateway target.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the gateway target.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>The configuration for a gateway target. This structure defines how the gateway connects to and interacts with the target endpoint.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute credential_provider_configurations
    #   <p>The provider configurations.</p>
    #   @return [Array<Types::CredentialProviderConfiguration>]
    # @!attribute last_synchronized_at
    #   <p>The last synchronization time.</p>
    #   @return [Time]
    # @!attribute metadata_configuration
    #   <p>The metadata configuration for HTTP header and query parameter propagation to and from this gateway target.</p>
    #   @return [Types::MetadataConfiguration]
    # @!attribute private_endpoint
    #   <p>The private endpoint configuration for a gateway target. Defines how the gateway connects to private resources in your VPC.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute private_endpoint_managed_resources
    #   <p>A list of managed resources created by the gateway for private endpoint connectivity. These resources are created in your account when you use a managed VPC Lattice resource configuration.</p>
    #   @return [Array<Types::ManagedResourceDetails>]
    # @!attribute authorization_data
    #   <p>OAuth2 authorization data for the gateway target. This data is returned when a target is configured with a credential provider with authorization code grant type and requires user federation.</p>
    #   @return [Types::AuthorizationData]
    # @!attribute protocol_type
    #   <p>The protocol type of the gateway target.</p>
    #   @return [String]
    # @!attribute certificate_configurations
    #   <p>The private certificate authority (CA) configurations for the gateway target.</p>
    #   @return [Array<Types::CertificateConfiguration>]
    class GatewayTarget < Struct.new(
      nil,
      :gateway_arn,
      :target_id,
      :created_at,
      :updated_at,
      :status,
      :status_reasons,
      :name,
      :description,
      :target_configuration,
      :credential_provider_configurations,
      :last_synchronized_at,
      :metadata_configuration,
      :private_endpoint,
      :private_endpoint_managed_resources,
      :authorization_data,
      :protocol_type,
      :certificate_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime associated with the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint to retrieve.</p>
    #   @return [String]
    class GetAgentRuntimeEndpointRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute live_version
    #   <p>The currently deployed version of the AgentCore Runtime on the endpoint.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>The target version of the AgentCore Runtime for the endpoint.</p>
    #   @return [String]
    # @!attribute agent_runtime_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the AgentCore Runtime endpoint was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the AgentCore Runtime endpoint was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason for failure if the AgentCore Runtime endpoint is in a failed state.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    class GetAgentRuntimeEndpointResponse < Struct.new(
      nil,
      :live_version,
      :target_version,
      :agent_runtime_endpoint_arn,
      :agent_runtime_arn,
      :description,
      :status,
      :created_at,
      :last_updated_at,
      :failure_reason,
      :name,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to retrieve.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The version of the AgentCore Runtime to retrieve.</p>
    #   @return [String]
    class GetAgentRuntimeRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :agent_runtime_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_name
    #   <p>The name of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The version of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the AgentCore Runtime was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the AgentCore Runtime was last updated.</p>
    #   @return [Time]
    # @!attribute role_arn
    #   <p>The IAM role ARN that provides permissions for the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The network configuration for the AgentCore Runtime.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute status
    #   <p>The current status of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute lifecycle_configuration
    #   <p>The life cycle configuration for the AgentCore Runtime.</p>
    #   @return [Types::LifecycleConfiguration]
    # @!attribute failure_reason
    #   <p>The reason for failure if the AgentCore Runtime is in a failed state.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the AgentCore Runtime.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute agent_runtime_artifact
    #   <p>The artifact of the AgentCore Runtime.</p>
    #   @return [Types::AgentRuntimeArtifact]
    # @!attribute protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    #   @return [Types::ProtocolConfiguration]
    # @!attribute environment_variables
    #   <p>Environment variables set in the AgentCore Runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the AgentCore Runtime.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute request_header_configuration
    #   <p>Configuration for HTTP request headers that will be passed through to the runtime.</p>
    #   @return [Types::RequestHeaderConfiguration]
    # @!attribute metadata_configuration
    #   <p>Configuration for microVM Metadata Service (MMDS) settings for the AgentCore Runtime.</p>
    #   @return [Types::RuntimeMetadataConfiguration]
    # @!attribute filesystem_configurations
    #   <p>The filesystem configurations mounted into the AgentCore Runtime.</p>
    #   @return [Array<Types::FilesystemConfiguration>]
    # @!attribute capacity_provider_configuration
    #   <p>The capacity provider configuration for the AgentCore Runtime.</p>
    #   @return [Types::CapacityProviderConfiguration]
    # @!attribute platform_version
    #   <p>The version of the runtime platform used by the AgentCore Runtime.</p>
    #   @return [String]
    class GetAgentRuntimeResponse < Struct.new(
      nil,
      :agent_runtime_arn,
      :agent_runtime_name,
      :agent_runtime_id,
      :agent_runtime_version,
      :created_at,
      :last_updated_at,
      :role_arn,
      :network_configuration,
      :status,
      :lifecycle_configuration,
      :failure_reason,
      :description,
      :workload_identity_details,
      :agent_runtime_artifact,
      :protocol_configuration,
      :environment_variables,
      :authorizer_configuration,
      :request_header_configuration,
      :metadata_configuration,
      :filesystem_configurations,
      :capacity_provider_configuration,
      :platform_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the API key credential provider to retrieve.</p>
    #   @return [String]
    class GetApiKeyCredentialProviderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the API key secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute api_key_secret_json_key
    #   <p>The JSON key used to extract the API key value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute api_key_secret_source
    #   <p>The source type of the API key secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API key credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the API key credential provider.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the API key credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the API key credential provider was last updated.</p>
    #   @return [Time]
    class GetApiKeyCredentialProviderResponse < Struct.new(
      nil,
      :api_key_secret_arn,
      :api_key_secret_json_key,
      :api_key_secret_source,
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the browser profile to retrieve.</p>
    #   @return [String]
    class GetBrowserProfileRequest < Struct.new(
      nil,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the browser profile.</p>
    #   @return [String]
    # @!attribute profile_arn
    #   <p>The Amazon Resource Name (ARN) of the browser profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the browser profile.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the browser profile.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the browser profile was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the browser profile was last updated.</p>
    #   @return [Time]
    # @!attribute last_saved_at
    #   <p>The timestamp when browser session data was last saved to this profile.</p>
    #   @return [Time]
    # @!attribute last_saved_browser_session_id
    #   <p>The identifier of the browser session from which data was last saved to this profile.</p>
    #   @return [String]
    # @!attribute last_saved_browser_id
    #   <p>The identifier of the browser from which data was last saved to this profile.</p>
    #   @return [String]
    class GetBrowserProfileResponse < Struct.new(
      nil,
      :profile_id,
      :profile_arn,
      :name,
      :description,
      :status,
      :created_at,
      :last_updated_at,
      :last_saved_at,
      :last_saved_browser_session_id,
      :last_saved_browser_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_id
    #   <p>The unique identifier of the browser to retrieve.</p>
    #   @return [String]
    class GetBrowserRequest < Struct.new(
      nil,
      :browser_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_id
    #   <p>The unique identifier of the browser.</p>
    #   @return [String]
    # @!attribute browser_arn
    #   <p>The Amazon Resource Name (ARN) of the browser.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the browser.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The IAM role ARN that provides permissions for the browser.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The network configuration for a browser. This structure defines how the browser connects to the network.</p>
    #   @return [Types::BrowserNetworkConfiguration]
    # @!attribute recording
    #   <p>The recording configuration for a browser. This structure defines how browser sessions are recorded.</p>
    #   @return [Types::RecordingConfig]
    # @!attribute browser_signing
    #   <p>The browser signing configuration that shows whether cryptographic agent identification is enabled for web bot authentication.</p>
    #   @return [Types::BrowserSigningConfigOutput]
    # @!attribute enterprise_policies
    #   <p>The list of enterprise policy files configured for the browser.</p>
    #   @return [Array<Types::BrowserEnterprisePolicy>]
    # @!attribute certificates
    #   <p>The list of certificates configured for the browser.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute filesystem_configurations
    #   <p>The file system configurations mounted into the browser. Each entry describes an access point and its mount path.</p>
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    # @!attribute status
    #   <p>The current status of the browser.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for failure if the browser is in a failed state.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the browser was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the browser was last updated.</p>
    #   @return [Time]
    class GetBrowserResponse < Struct.new(
      nil,
      :browser_id,
      :browser_arn,
      :name,
      :description,
      :execution_role_arn,
      :network_configuration,
      :recording,
      :browser_signing,
      :enterprise_policies,
      :certificates,
      :filesystem_configurations,
      :status,
      :failure_reason,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the capacity provider.</p>
    #   @return [String]
    class GetCapacityProviderInput < Struct.new(
      nil,
      :capacity_provider_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the capacity provider.</p>
    #   @return [String]
    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the capacity provider.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the capacity provider. For possible values, see <code>CapacityProviderStatus</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the capacity provider, if one was provided.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>A reason code for a capacity provider that is not in the <code>READY</code> state. Use this code for programmatic error handling.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A human-readable message that describes why the capacity provider is not in the <code>READY</code> state. Because these messages can change, use <code>statusCode</code> for programmatic error handling.</p>
    #   @return [String]
    # @!attribute permissions_configuration
    #   <p>The permissions configuration for the capacity provider.</p>
    #   @return [Types::PermissionsConfiguration]
    # @!attribute compute_configuration
    #   <p>The compute configuration for the capacity provider.</p>
    #   @return [Types::ComputeConfiguration]
    # @!attribute created_at
    #   <p>The timestamp when the capacity provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the capacity provider was last updated.</p>
    #   @return [Time]
    class GetCapacityProviderOutput < Struct.new(
      nil,
      :capacity_provider_id,
      :capacity_provider_arn,
      :name,
      :status,
      :description,
      :status_code,
      :status_reason,
      :permissions_configuration,
      :compute_configuration,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_id
    #   <p>The unique identifier of the code interpreter to retrieve.</p>
    #   @return [String]
    class GetCodeInterpreterRequest < Struct.new(
      nil,
      :code_interpreter_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_id
    #   <p>The unique identifier of the code interpreter.</p>
    #   @return [String]
    # @!attribute code_interpreter_arn
    #   <p>The Amazon Resource Name (ARN) of the code interpreter.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the code interpreter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the code interpreter.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The IAM role ARN that provides permissions for the code interpreter.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The network configuration for a code interpreter. This structure defines how the code interpreter connects to the network.</p>
    #   @return [Types::CodeInterpreterNetworkConfiguration]
    # @!attribute status
    #   <p>The current status of the code interpreter.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>The list of certificates configured for the code interpreter.</p>
    #   @return [Array<Types::Certificate>]
    # @!attribute filesystem_configurations
    #   <p>The file system configurations mounted into the code interpreter. Each entry describes an access point and its mount path.</p>
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    # @!attribute failure_reason
    #   <p>The reason for failure if the code interpreter is in a failed state.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the code interpreter was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the code interpreter was last updated.</p>
    #   @return [Time]
    class GetCodeInterpreterResponse < Struct.new(
      nil,
      :code_interpreter_id,
      :code_interpreter_arn,
      :name,
      :description,
      :execution_role_arn,
      :network_configuration,
      :status,
      :certificates,
      :filesystem_configurations,
      :failure_reason,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle to retrieve.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The branch name to get the latest version from. If not specified, returns the latest version on the mainline branch.</p>
    #   @return [String]
    class GetConfigurationBundleRequest < Struct.new(
      nil,
      :bundle_id,
      :branch_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_name
    #   <p>The name of the configuration bundle.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version identifier of this configuration bundle.</p>
    #   @return [String]
    # @!attribute components
    #   <p>A map of component identifiers to their configurations for this version.</p>
    #   @return [Hash<String, Types::ComponentConfiguration>]
    # @!attribute lineage_metadata
    #   <p>The version lineage metadata, including parent versions, branch name, and creation source.</p>
    #   @return [Types::VersionLineageMetadata]
    # @!attribute created_at
    #   <p>The timestamp when the configuration bundle was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the configuration bundle was last updated.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>KMS key ARN used to encrypt component configurations, if CMK was provided.</p>
    #   @return [String]
    class GetConfigurationBundleResponse < Struct.new(
      nil,
      :bundle_arn,
      :bundle_id,
      :bundle_name,
      :description,
      :version_id,
      :components,
      :lineage_metadata,
      :created_at,
      :updated_at,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version identifier of the configuration bundle version to retrieve.</p>
    #   @return [String]
    class GetConfigurationBundleVersionRequest < Struct.new(
      nil,
      :bundle_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_name
    #   <p>The name of the configuration bundle.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version identifier of this configuration bundle version.</p>
    #   @return [String]
    # @!attribute components
    #   <p>A map of component identifiers to their configurations for this version.</p>
    #   @return [Hash<String, Types::ComponentConfiguration>]
    # @!attribute lineage_metadata
    #   <p>The version lineage metadata, including parent versions, branch name, and creation source.</p>
    #   @return [Types::VersionLineageMetadata]
    # @!attribute created_at
    #   <p>The timestamp when the configuration bundle was created.</p>
    #   @return [Time]
    # @!attribute version_created_at
    #   <p>The timestamp when this specific version was created.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>KMS key ARN used to encrypt component configurations, if CMK was provided.</p>
    #   @return [String]
    class GetConfigurationBundleVersionResponse < Struct.new(
      nil,
      :bundle_arn,
      :bundle_id,
      :bundle_name,
      :description,
      :version_id,
      :components,
      :lineage_metadata,
      :created_at,
      :version_created_at,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consent_portal_identifier
    #   <p>The identifier of the consent portal. You can specify either the consent portal ID or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetConsentPortalRequest < Struct.new(
      nil,
      :consent_portal_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>The resources served by the consent portal.</p>
    #   @return [Array<Types::ConsentPortalSource>]
    # @!attribute consent_portal_arn
    #   <p>The Amazon Resource Name (ARN) of the consent portal.</p>
    #   @return [String]
    # @!attribute consent_portal_id
    #   <p>The unique identifier of the consent portal.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the consent portal was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the consent portal.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the consent portal assumes to access the resources defined in its sources.</p>
    #   @return [String]
    # @!attribute idp_config
    #   <p>The identity provider configuration that the consent portal uses to authenticate end users.</p>
    #   @return [Types::ConsentPortalIdpConfig]
    # @!attribute name
    #   <p>The name of the consent portal.</p>
    #   @return [String]
    # @!attribute portal_url
    #   <p>The URL used to access the consent portal.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the consent portal.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A message that provides additional information about the current status of the consent portal.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp for when the consent portal was last updated.</p>
    #   @return [Time]
    class GetConsentPortalResponse < Struct.new(
      nil,
      :sources,
      :consent_portal_arn,
      :consent_portal_id,
      :created_at,
      :description,
      :execution_role_arn,
      :idp_config,
      :name,
      :portal_url,
      :status,
      :status_reason,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset to retrieve. </p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p> Version to retrieve: "DRAFT" or a version number. Defaults to DRAFT if absent. </p>
    #   @return [String]
    class GetDatasetRequest < Struct.new(
      nil,
      :dataset_id,
      :dataset_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p> The resolved version: "DRAFT" (default) or the requested version number. </p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p> The name of the dataset. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the dataset. </p>
    #   @return [String]
    # @!attribute draft_status
    #   <p> Publish synchronization state. Only authoritative when status is ACTIVE. MODIFIED indicates DRAFT has unpublished changes. UNMODIFIED indicates DRAFT matches the latest published version. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p> Populated when status is CREATE_FAILED, UPDATE_FAILED, or DELETE_FAILED. Describes the reason for the failure. </p>
    #   @return [String]
    # @!attribute schema_type
    #   <p> The schema type declared at create time. Immutable after creation. </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p> KMS key ARN used for server-side encryption on service Amazon S3 writes, if configured. </p>
    #   @return [String]
    # @!attribute example_count
    #   <p> The number of examples in the DRAFT. </p>
    #   @return [Integer]
    # @!attribute download_url
    #   <p> Presigned Amazon S3 URL to download the consolidated dataset file for the resolved version. Expires after 5 minutes. Omitted if the file does not yet exist. </p>
    #   @return [String]
    # @!attribute download_url_expires_at
    #   <p> Expiry timestamp for the download URL. </p>
    #   @return [Time]
    # @!attribute created_at
    #   <p> The timestamp when the dataset was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The timestamp when the dataset was last updated. </p>
    #   @return [Time]
    # @!attribute tags
    #   <p> The tags associated with the dataset. </p>
    #   @return [Hash<String, String>]
    class GetDatasetResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :dataset_version,
      :dataset_name,
      :description,
      :status,
      :draft_status,
      :failure_reason,
      :schema_type,
      :kms_key_arn,
      :example_count,
      :download_url,
      :download_url_expires_at,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluator_id
    #   <p> The unique identifier of the evaluator to retrieve. Can be a built-in evaluator ID (e.g., Builtin.Helpfulness) or a custom evaluator ID. </p>
    #   @return [String]
    # @!attribute included_data
    #   <p> Controls which data is returned in the response. <code>ALL_DATA</code> (default) returns the full evaluator including decrypted instructions and rating scale. For evaluators encrypted with a customer managed KMS key, this requires <code>kms:Decrypt</code> permission on the key. <code>METADATA_ONLY</code> returns evaluator metadata and model configuration without instructions or rating scale, and does not require any KMS permissions. </p>
    #   @return [String]
    class GetEvaluatorRequest < Struct.new(
      nil,
      :evaluator_id,
      :included_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluator_arn
    #   <p> The Amazon Resource Name (ARN) of the evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_id
    #   <p> The unique identifier of the evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_name
    #   <p> The name of the evaluator. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_config
    #   <p> The configuration of the evaluator, including LLM-as-a-Judge or code-based settings. </p>
    #   @return [Types::EvaluatorConfig]
    # @!attribute evaluator_type
    #   <p> The kind of evaluator resource. Valid values: </p> <ul> <li> <p> <code>Builtin</code> – An Amazon Web Services-managed global evaluator.</p> </li> <li> <p> <code>ThirdParty</code> – An Amazon Web Services-managed global evaluator from a third-party provider.</p> </li> <li> <p> <code>Custom</code> – A customer-created evaluator.</p> </li> <li> <p> <code>CustomCode</code> – A customer-created code-based evaluator.</p> </li> <li> <p> <code>CustomDerived</code> – A customer-created evaluator derived from an existing base evaluator.</p> </li> </ul>
    #   @return [String]
    # @!attribute provider
    #   <p> The source of the evaluator's logic: Amazon Web Services, a third-party library, or you. </p>
    #   @return [String]
    # @!attribute level
    #   <p> The evaluation level (<code>TOOL_CALL</code>, <code>TRACE</code>, or <code>SESSION</code>) that determines the scope of evaluation. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the evaluator. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the evaluator was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The timestamp when the evaluator was last updated. </p>
    #   @return [Time]
    # @!attribute locked_for_modification
    #   <p> Whether the evaluator is locked for modification due to being referenced by active online evaluation configurations. </p>
    #   @return [Boolean]
    # @!attribute kms_key_arn
    #   <p> The Amazon Resource Name (ARN) of the customer managed KMS key used to encrypt the evaluator's sensitive data. This field is only present for evaluators encrypted with a customer managed key. </p>
    #   @return [String]
    class GetEvaluatorResponse < Struct.new(
      nil,
      :evaluator_arn,
      :evaluator_id,
      :evaluator_name,
      :description,
      :evaluator_config,
      :evaluator_type,
      :provider,
      :level,
      :status,
      :created_at,
      :updated_at,
      :locked_for_modification,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute rate_limit_id
    #   <p>The unique identifier of the rate limit to retrieve.</p>
    #   @return [String]
    class GetGatewayRateLimitRequest < Struct.new(
      nil,
      :gateway_identifier,
      :rate_limit_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Shared fields for <code>GatewayRateLimit</code> responses.</p>
    # @!attribute rate_limit_id
    #   <p>The unique identifier of the rate limit.</p>
    #   @return [String]
    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The human-readable description of the rate limit.</p>
    #   @return [String]
    # @!attribute dimension_keys
    #   <p>The ordered list of dimension key names that define the scope of this rate limit.</p>
    #   @return [Array<String>]
    # @!attribute entries
    #   <p>The list of rule entries that map dimension values to rate configurations.</p>
    #   @return [Array<Types::LimitEntry>]
    # @!attribute status
    #   <p>The current status of the rate limit.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the rate limit was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the rate limit was last updated.</p>
    #   @return [Time]
    class GetGatewayRateLimitResponse < Struct.new(
      nil,
      :rate_limit_id,
      :gateway_identifier,
      :description,
      :dimension_keys,
      :entries,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to retrieve.</p>
    #   @return [String]
    class GetGatewayRequest < Struct.new(
      nil,
      :gateway_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_url
    #   <p>An endpoint for invoking gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the gateway was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the gateway was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the gateway.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the current status of the gateway.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the gateway.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role ARN that provides permissions for the gateway.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>Protocol applied to a gateway.</p>
    #   @return [String]
    # @!attribute protocol_configuration
    #   <p>The configuration for a gateway protocol. This structure defines how the gateway communicates with external services.</p>
    #   @return [Types::GatewayProtocolConfiguration]
    # @!attribute authorizer_type
    #   <p>Authorizer type for the gateway.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the gateway.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the gateway.</p>
    #   @return [String]
    # @!attribute custom_transform_configuration
    #   <p>The custom transformation configuration for the gateway. This configuration defines how the gateway transforms requests and responses.</p>
    #   @return [Types::CustomTransformConfiguration]
    # @!attribute interceptor_configurations
    #   <p>The interceptors configured on the gateway.</p>
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    # @!attribute policy_engine_configuration
    #   <p>The policy engine configuration for the gateway.</p>
    #   @return [Types::GatewayPolicyEngineConfiguration]
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the gateway.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services WAF web ACL associated with the gateway.</p>
    #   @return [String]
    # @!attribute waf_configuration
    #   <p>The Amazon Web Services WAF configuration for the gateway.</p>
    #   @return [Types::WafConfiguration]
    class GetGatewayResponse < Struct.new(
      nil,
      :gateway_arn,
      :gateway_id,
      :gateway_url,
      :created_at,
      :updated_at,
      :status,
      :status_reasons,
      :name,
      :description,
      :role_arn,
      :protocol_type,
      :protocol_configuration,
      :authorizer_type,
      :authorizer_configuration,
      :kms_key_arn,
      :custom_transform_configuration,
      :interceptor_configurations,
      :policy_engine_configuration,
      :workload_identity_details,
      :exception_level,
      :web_acl_arn,
      :waf_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:protocol_type] = 'MCP' unless options.key?(:protocol_type)
        super
      end
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway containing the rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the rule to retrieve.</p>
    #   @return [String]
    class GetGatewayRuleRequest < Struct.new(
      nil,
      :gateway_identifier,
      :rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create response excludes updatedAt (redundant on create).
    # Get/Update responses include it via their own output structures.
    # @!attribute rule_id
    #   <p>The unique identifier of the gateway rule.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway that the rule belongs to.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the rule. Rules are evaluated in order of priority, with lower numbers evaluated first.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The conditions that must be met for the rule to apply.</p>
    #   @return [Array<Types::Condition>]
    # @!attribute actions
    #   <p>The actions to take when the rule conditions are met.</p>
    #   @return [Array<Types::Action>]
    # @!attribute description
    #   <p>The description of the gateway rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the rule was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the rule.</p>
    #   @return [String]
    # @!attribute system
    #   <p>System-managed metadata for rules created by automated processes.</p>
    #   @return [Types::SystemManagedBlock]
    # @!attribute updated_at
    #   <p>The timestamp when the rule was last updated.</p>
    #   @return [Time]
    class GetGatewayRuleResponse < Struct.new(
      nil,
      :rule_id,
      :gateway_arn,
      :priority,
      :conditions,
      :actions,
      :description,
      :created_at,
      :status,
      :system,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway that contains the target.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the target to retrieve.</p>
    #   @return [String]
    class GetGatewayTargetRequest < Struct.new(
      nil,
      :gateway_identifier,
      :target_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the gateway target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the gateway target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the gateway target was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the gateway target.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the current status of the gateway target.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the gateway target.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the gateway target.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>The configuration for a gateway target. This structure defines how the gateway connects to and interacts with the target endpoint.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute credential_provider_configurations
    #   <p>The credential provider configurations for the gateway target.</p>
    #   @return [Array<Types::CredentialProviderConfiguration>]
    # @!attribute last_synchronized_at
    #   <p>The last synchronization of the target.</p>
    #   @return [Time]
    # @!attribute metadata_configuration
    #   <p>The metadata configuration for HTTP header and query parameter propagation for the retrieved gateway target.</p>
    #   @return [Types::MetadataConfiguration]
    # @!attribute private_endpoint
    #   <p>The private endpoint configuration for the gateway target.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute private_endpoint_managed_resources
    #   <p>The managed resources created by the gateway for private endpoint connectivity.</p>
    #   @return [Array<Types::ManagedResourceDetails>]
    # @!attribute authorization_data
    #   <p>OAuth2 authorization data for the gateway target. This data is returned when a target is configured with a credential provider with authorization code grant type and requires user federation.</p>
    #   @return [Types::AuthorizationData]
    # @!attribute protocol_type
    #   <p>The protocol type of the gateway target.</p>
    #   @return [String]
    # @!attribute certificate_configurations
    #   <p>The private certificate authority (CA) configurations for the gateway target.</p>
    #   @return [Array<Types::CertificateConfiguration>]
    class GetGatewayTargetResponse < Struct.new(
      nil,
      :gateway_arn,
      :target_id,
      :created_at,
      :updated_at,
      :status,
      :status_reasons,
      :name,
      :description,
      :target_configuration,
      :credential_provider_configurations,
      :last_synchronized_at,
      :metadata_configuration,
      :private_endpoint,
      :private_endpoint_managed_resources,
      :authorization_data,
      :protocol_type,
      :certificate_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness that the endpoint belongs to.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint to retrieve.</p>
    #   @return [String]
    class GetHarnessEndpointRequest < Struct.new(
      nil,
      :harness_id,
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The endpoint resource.</p>
    #   @return [Types::HarnessEndpoint]
    class GetHarnessEndpointResponse < Struct.new(
      nil,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness to retrieve.</p>
    #   @return [String]
    # @!attribute harness_version
    #   <p>Specific version of the harness to retrieve. If omitted, returns the current Harness configuration, including its status.</p>
    #   @return [String]
    class GetHarnessRequest < Struct.new(
      nil,
      :harness_id,
      :harness_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness
    #   <p>The harness resource.</p>
    #   @return [Types::Harness]
    class GetHarnessResponse < Struct.new(
      nil,
      :harness,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The unique identifier of the memory to retrieve.</p>
    #   @return [String]
    # @!attribute view
    #   <p>The level of detail to return for the memory.</p>
    #   @return [String]
    class GetMemoryInput < Struct.new(
      nil,
      :memory_id,
      :view,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory
    #   <p>The retrieved AgentCore Memory resource details.</p>
    #   @return [Types::Memory]
    class GetMemoryOutput < Struct.new(
      nil,
      :memory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the OAuth2 credential provider to retrieve.</p>
    #   @return [String]
    class GetOauth2CredentialProviderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the client secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute client_secret_json_key
    #   <p>The JSON key used to extract the client secret value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>ARN of the credential provider requested.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute callback_url
    #   <p>Callback URL to register on the OAuth2 credential provider as an allowed callback URL. This URL is where the OAuth2 authorization server redirects users after they complete the authorization flow.</p>
    #   @return [String]
    # @!attribute oauth2_provider_config_output
    #   <p>The configuration output for the OAuth2 provider.</p>
    #   @return [Types::Oauth2ProviderConfigOutput]
    # @!attribute created_time
    #   <p>The timestamp when the OAuth2 credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the OAuth2 credential provider was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for failure if the OAuth2 credential provider is in a failed state.</p>
    #   @return [String]
    class GetOauth2CredentialProviderResponse < Struct.new(
      nil,
      :client_secret_arn,
      :client_secret_json_key,
      :client_secret_source,
      :name,
      :credential_provider_arn,
      :credential_provider_vendor,
      :callback_url,
      :oauth2_provider_config_output,
      :created_time,
      :last_updated_time,
      :status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute online_evaluation_config_id
    #   <p> The unique identifier of the online evaluation configuration to retrieve. </p>
    #   @return [String]
    class GetOnlineEvaluationConfigRequest < Struct.new(
      nil,
      :online_evaluation_config_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute online_evaluation_config_arn
    #   <p> The Amazon Resource Name (ARN) of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute online_evaluation_config_id
    #   <p> The unique identifier of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute online_evaluation_config_name
    #   <p> The name of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute rule
    #   <p> The evaluation rule containing sampling configuration, filters, and session settings. </p>
    #   @return [Types::Rule]
    # @!attribute data_source_config
    #   <p> The data source configuration specifying CloudWatch log groups and service names to monitor. </p>
    #   @return [Types::DataSourceConfig]
    # @!attribute evaluators
    #   <p> The list of evaluators applied during online evaluation. </p>
    #   @return [Array<Types::EvaluatorReference>]
    # @!attribute insights
    #   <p>The list of insight types configured for this evaluation.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute clustering_config
    #   <p>The clustering configuration for periodic batch evaluation.</p>
    #   @return [Types::ClusteringConfig]
    # @!attribute output_config
    #   <p> The output configuration specifying where evaluation results are written. </p>
    #   @return [Types::OutputConfig]
    # @!attribute evaluation_execution_role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role used for evaluation execution. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute execution_status
    #   <p> The execution status indicating whether the online evaluation is currently running. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the online evaluation configuration was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The timestamp when the online evaluation configuration was last updated. </p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p> The reason for failure if the online evaluation configuration execution failed. </p>
    #   @return [String]
    class GetOnlineEvaluationConfigResponse < Struct.new(
      nil,
      :online_evaluation_config_arn,
      :online_evaluation_config_id,
      :online_evaluation_config_name,
      :description,
      :rule,
      :data_source_config,
      :evaluators,
      :insights,
      :clustering_config,
      :output_config,
      :evaluation_execution_role_arn,
      :status,
      :execution_status,
      :created_at,
      :updated_at,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:evaluators] = [] unless options.key?(:evaluators)
        super
      end
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The unique identifier of the payment connector to retrieve.</p>
    #   @return [String]
    class GetPaymentConnectorRequest < Struct.new(
      nil,
      :payment_manager_id,
      :payment_connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_connector_id
    #   <p>The unique identifier of the payment connector.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the payment connector.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the payment connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the payment connector, which determines the payment provider integration.</p>
    #   @return [String]
    # @!attribute provision_mode
    #   <p>Specifies how the payment connector was provisioned. Payment connectors that were created before this field was available return <code>MANUAL</code>.</p> <ul> <li> <p> <code>MANUAL</code> - You provided the credential provider configurations, so you own the credentials. Rotate them with the payment provider, then call <code>UpdatePaymentCredentialProvider</code>.</p> </li> <li> <p> <code>QUICK_CREATE</code> - AgentCore provisioned the credential provider for you, so the credentials are service-managed. You can rotate them with <code>RotatePaymentConnectorCredentials</code>.</p> </li> </ul>
    #   @return [String]
    # @!attribute credential_provider_configurations
    #   <p>The credential provider configurations for the payment connector.</p>
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    # @!attribute created_at
    #   <p>The timestamp when the payment connector was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the payment connector was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the payment connector. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute authorization_url
    #   <p>The URL that the user must open to complete OAuth consent. This field is only present when the payment connector status is <code>PENDING_AUTHENTICATION</code>.</p>
    #   @return [String]
    # @!attribute credentials_updated_at
    #   <p>The timestamp when the payment connector's current service-managed credentials took effect. It is first set when the credentials are provisioned and is updated by each rotation. This field is present only for payment connectors with a <code>provisionMode</code> of <code>QUICK_CREATE</code>.</p>
    #   @return [Time]
    class GetPaymentConnectorResponse < Struct.new(
      nil,
      :payment_connector_id,
      :name,
      :description,
      :type,
      :provision_mode,
      :credential_provider_configurations,
      :created_at,
      :last_updated_at,
      :status,
      :authorization_url,
      :credentials_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the payment credential provider to retrieve.</p>
    #   @return [String]
    class GetPaymentCredentialProviderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor type for the payment credential provider.</p>
    #   @return [String]
    # @!attribute provider_configuration_output
    #   <p>Output configuration (contains secret ARNs, excludes actual secret values).</p>
    #   @return [Types::PaymentProviderConfigurationOutput]
    # @!attribute created_time
    #   <p>The timestamp when the payment credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the payment credential provider was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags associated with the payment credential provider.</p>
    #   @return [Hash<String, String>]
    class GetPaymentCredentialProviderResponse < Struct.new(
      nil,
      :name,
      :credential_provider_arn,
      :credential_provider_vendor,
      :provider_configuration_output,
      :created_time,
      :last_updated_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the payment manager to retrieve.</p>
    #   @return [String]
    class GetPaymentManagerRequest < Struct.new(
      nil,
      :payment_manager_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_arn
    #   <p>The Amazon Resource Name (ARN) of the payment manager.</p>
    #   @return [String]
    # @!attribute payment_manager_id
    #   <p>The unique identifier of the payment manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the payment manager.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the payment manager.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer used by the payment manager.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>Represents inbound authorization configuration options used to authenticate incoming requests. </p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the payment manager.</p>
    #   @return [String]
    # @!attribute workload_identity_details
    #   <p>The information about the workload identity.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute created_at
    #   <p>The timestamp when the payment manager was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the payment manager was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the payment manager. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the payment manager.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt sensitive payment manager data at rest, if configured.</p>
    #   @return [String]
    class GetPaymentManagerResponse < Struct.new(
      nil,
      :payment_manager_arn,
      :payment_manager_id,
      :name,
      :description,
      :authorizer_type,
      :authorizer_configuration,
      :role_arn,
      :workload_identity_details,
      :created_at,
      :last_updated_at,
      :status,
      :tags,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier of the policy engine to be retrieved. This must be a valid policy engine ID that exists within the account.</p>
    #   @return [String]
    class GetPolicyEngineRequest < Struct.new(
      nil,
      :policy_engine_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier of the retrieved policy engine. This matches the policy engine ID provided in the request and serves as the system identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the policy engine. This is the human-readable identifier that was specified when the policy engine was created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy engine was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy engine was last modified. This tracks the most recent changes to the policy engine configuration.</p>
    #   @return [Time]
    # @!attribute policy_engine_arn
    #   <p>The Amazon Resource Name (ARN) of the policy engine. This globally unique identifier can be used for cross-service references and IAM policy statements.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy engine.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The human-readable description of the policy engine's purpose and scope. This helps administrators understand the policy engine's role in governance.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the policy engine status. This provides details about any failures or the current state of the policy engine.</p>
    #   @return [Array<String>]
    class GetPolicyEngineResponse < Struct.new(
      nil,
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier of the policy engine to retrieve the summary for. This must be a valid policy engine ID that exists within the account.</p>
    #   @return [String]
    class GetPolicyEngineSummaryRequest < Struct.new(
      nil,
      :policy_engine_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier of the policy engine.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the policy engine.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy engine was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy engine was last modified.</p>
    #   @return [Time]
    # @!attribute policy_engine_arn
    #   <p>The Amazon Resource Name (ARN) of the policy engine.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy engine.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    #   @return [String]
    class GetPolicyEngineSummaryResponse < Struct.new(
      nil,
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_generation_id
    #   <p>The unique identifier of the policy generation request to be retrieved. This must be a valid generation ID from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_StartPolicyGeneration.html">StartPolicyGeneration</a> call.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine associated with the policy generation request. This provides the context for the generation operation and schema validation.</p>
    #   @return [String]
    class GetPolicyGenerationRequest < Struct.new(
      nil,
      :policy_generation_id,
      :policy_engine_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine associated with this policy generation. This confirms the policy engine context for the generation operation.</p>
    #   @return [String]
    # @!attribute policy_generation_id
    #   <p>The unique identifier of the policy generation request. This matches the generation ID provided in the request and serves as the tracking identifier.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name for the policy generation request. This helps identify and track generation operations across multiple requests.</p>
    #   @return [String]
    # @!attribute policy_generation_arn
    #   <p>The Amazon Resource Name (ARN) of the policy generation. This globally unique identifier can be used for tracking, auditing, and cross-service references.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource information associated with the policy generation. This provides context about the target resources for which the policies are being generated.</p>
    #   @return [Types::Resource]
    # @!attribute created_at
    #   <p>The timestamp when the policy generation request was created. This is used for tracking and auditing generation operations and their lifecycle.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy generation was last updated. This tracks the progress of the generation process and any status changes.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the policy generation. This indicates whether the generation is in progress, completed successfully, or failed during processing.</p>
    #   @return [String]
    # @!attribute findings
    #   <p>The findings and results from the policy generation process. This includes any issues, recommendations, validation results, or insights from the generated policies.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the generation status. This provides details about any failures, warnings, or the current state of the generation process.</p>
    #   @return [Array<String>]
    class GetPolicyGenerationResponse < Struct.new(
      nil,
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_generation_id
    #   <p>The unique identifier of the policy generation request to retrieve the summary for.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine associated with the policy generation request.</p>
    #   @return [String]
    class GetPolicyGenerationSummaryRequest < Struct.new(
      nil,
      :policy_generation_id,
      :policy_engine_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine associated with this policy generation.</p>
    #   @return [String]
    # @!attribute policy_generation_id
    #   <p>The unique identifier of the policy generation request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name for the policy generation request.</p>
    #   @return [String]
    # @!attribute policy_generation_arn
    #   <p>The Amazon Resource Name (ARN) of the policy generation request.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource information associated with the policy generation.</p>
    #   @return [Types::Resource]
    # @!attribute created_at
    #   <p>The timestamp when the policy generation request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy generation was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the policy generation request.</p>
    #   @return [String]
    # @!attribute findings
    #   <p>The findings from the policy generation process, if available.</p>
    #   @return [String]
    class GetPolicyGenerationSummaryResponse < Struct.new(
      nil,
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages the policy to be retrieved.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The unique identifier of the policy to be retrieved. This must be a valid policy ID that exists within the specified policy engine.</p>
    #   @return [String]
    class GetPolicyRequest < Struct.new(
      nil,
      :policy_engine_id,
      :policy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier of the retrieved policy. This matches the policy ID provided in the request and serves as the system identifier for the policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the policy. This is the human-readable identifier that was specified when the policy was created.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages this policy. This confirms the policy engine context for the retrieved policy.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last modified. This tracks the most recent changes to the policy configuration.</p>
    #   @return [Time]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy. This globally unique identifier can be used for cross-service references and IAM policy statements.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The current enforcement mode of the policy.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The Cedar or Dogwood policy statement that defines the access control rules. This contains the actual policy logic used for agent behavior control and access decisions.</p>
    #   @return [Types::PolicyDefinition]
    # @!attribute description
    #   <p>The human-readable description of the policy's purpose and functionality. This helps administrators understand and manage the policy.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the policy status. This provides details about any failures or the current state of the policy.</p>
    #   @return [Array<String>]
    class GetPolicyResponse < Struct.new(
      nil,
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode,
      :definition,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforcement_mode] = 'ACTIVE' unless options.key?(:enforcement_mode)
        super
      end
    end

    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages the policy to retrieve the summary for.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The unique identifier of the policy to retrieve the summary for. This must be a valid policy ID that exists within the specified policy engine.</p>
    #   @return [String]
    class GetPolicySummaryRequest < Struct.new(
      nil,
      :policy_engine_id,
      :policy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier of the policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the policy.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages this policy.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last modified.</p>
    #   @return [Time]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The current enforcement mode of the policy.</p>
    #   @return [String]
    class GetPolicySummaryResponse < Struct.new(
      nil,
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforcement_mode] = 'ACTIVE' unless options.key?(:enforcement_mode)
        super
      end
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to retrieve. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    #   @return [String]
    class GetRegistryRecordRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry that contains the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the registry record.</p>
    #   @return [String]
    # @!attribute descriptor_type
    #   <p>The descriptor type of the registry record. Possible values are <code>MCP</code>, <code>A2A</code>, <code>CUSTOM</code>, and <code>AGENT_SKILLS</code>.</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p>The descriptor-type-specific configuration containing the resource schema and metadata. For details, see the <code>Descriptors</code> data type.</p>
    #   @return [Types::Descriptors]
    # @!attribute record_version
    #   <p>The version of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the registry record. Possible values include <code>CREATING</code>, <code>DRAFT</code>, <code>APPROVED</code>, <code>PENDING_APPROVAL</code>, <code>REJECTED</code>, <code>DEPRECATED</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, and <code>UPDATE_FAILED</code>. A record transitions from <code>CREATING</code> to <code>DRAFT</code>, then to <code>PENDING_APPROVAL</code> (via <code>SubmitRegistryRecordForApproval</code>), and finally to <code>APPROVED</code> upon approval.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry record was last updated.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason for the current status, typically set when the status is a failure state.</p>
    #   @return [String]
    # @!attribute synchronization_type
    #   <p>The type of synchronization used for this record.</p>
    #   @return [String]
    # @!attribute synchronization_configuration
    #   <p>The configuration for synchronizing registry record metadata from an external source.</p>
    #   @return [Types::SynchronizationConfiguration]
    class GetRegistryRecordResponse < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :description,
      :descriptor_type,
      :descriptors,
      :record_version,
      :status,
      :created_at,
      :updated_at,
      :status_reason,
      :synchronization_type,
      :synchronization_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry to retrieve. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    class GetRegistryRequest < Struct.new(
      nil,
      :registry_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the registry.</p>
    #   @return [String]
    # @!attribute registry_id
    #   <p>The unique identifier of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer used by the registry. This controls the authorization method for the Search and Invoke APIs used by consumers.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the registry. For details, see the <code>AuthorizerConfiguration</code> data type.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute approval_configuration
    #   <p>The approval configuration for registry records. For details, see the <code>ApprovalConfiguration</code> data type.</p>
    #   @return [Types::ApprovalConfiguration]
    # @!attribute status
    #   <p>The current status of the registry. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, <code>DELETING</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status, typically set when the status is a failure state.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry was last updated.</p>
    #   @return [Time]
    class GetRegistryResponse < Struct.new(
      nil,
      :name,
      :description,
      :registry_id,
      :registry_arn,
      :authorizer_type,
      :authorizer_configuration,
      :approval_configuration,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to retrieve the resource policy.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource policy associated with the specified resource.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_vault_id
    #   <p>The unique identifier of the token vault to retrieve.</p>
    #   @return [String]
    class GetTokenVaultRequest < Struct.new(
      nil,
      :token_vault_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_vault_id
    #   <p>The ID of the token vault.</p>
    #   @return [String]
    # @!attribute kms_configuration
    #   <p>The KMS configuration for the token vault.</p>
    #   @return [Types::KmsConfiguration]
    # @!attribute last_modified_date
    #   <p>The timestamp when the token vault was last modified.</p>
    #   @return [Time]
    class GetTokenVaultResponse < Struct.new(
      nil,
      :token_vault_id,
      :kms_configuration,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workload identity to retrieve.</p>
    #   @return [String]
    class GetWorkloadIdentityRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workload identity.</p>
    #   @return [String]
    # @!attribute workload_identity_arn
    #   <p>The Amazon Resource Name (ARN) of the workload identity.</p>
    #   @return [String]
    # @!attribute allowed_resource_oauth2_return_urls
    #   <p>The list of allowed OAuth2 return URLs for resources associated with this workload identity.</p>
    #   @return [Array<String>]
    # @!attribute created_time
    #   <p>The timestamp when the workload identity was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the workload identity was last updated.</p>
    #   @return [Time]
    class GetWorkloadIdentityResponse < Struct.new(
      nil,
      :name,
      :workload_identity_arn,
      :allowed_resource_oauth2_return_urls,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration for a GitHub OAuth2 provider.</p>
    # @!attribute client_id
    #   <p>The client ID for the GitHub OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the GitHub OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class GithubOauth2ProviderConfigInput < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>Output configuration for a GitHub OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the GitHub provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the GitHub OAuth2 provider.</p>
    #   @return [String]
    class GithubOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration for a Google OAuth2 provider.</p>
    # @!attribute client_id
    #   <p>The client ID for the Google OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the Google OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class GoogleOauth2ProviderConfigInput < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>Output configuration for a Google OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the Google provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the Google OAuth2 provider.</p>
    #   @return [String]
    class GoogleOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Representation of a harness.</p>
    # @!attribute harness_id
    #   <p>The ID of the harness.</p>
    #   @return [String]
    # @!attribute harness_name
    #   <p>The name of the harness.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the harness.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the harness.</p>
    #   @return [String]
    # @!attribute harness_version
    #   <p>The version of the harness. Incremented on every successful UpdateHarness.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>IAM role the harness assumes when running.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The createdAt time of the harness.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The updatedAt time of the harness.</p>
    #   @return [Time]
    # @!attribute model
    #   <p>The configuration of the default model used by the Harness.</p>
    #   @return [Types::HarnessModelConfiguration]
    # @!attribute system_prompt
    #   <p>The system prompt of the harness.</p>
    #   @return [Array<Types::HarnessSystemContentBlock>]
    # @!attribute tools
    #   <p>The tools of the harness.</p>
    #   @return [Array<Types::HarnessTool>]
    # @!attribute skills
    #   <p>The skills of the harness.</p>
    #   @return [Array<Types::HarnessSkill>]
    # @!attribute allowed_tools
    #   <p>The allowed tools of the harness. All tools are allowed by default.</p>
    #   @return [Array<String>]
    # @!attribute truncation
    #   <p>Configuration for truncating model context.</p>
    #   @return [Types::HarnessTruncationConfiguration]
    # @!attribute environment
    #   <p>The compute environment on which the Harness runs.</p>
    #   @return [Types::HarnessEnvironmentProvider]
    # @!attribute environment_artifact
    #   <p>The environment artifact (e.g., container) in which the Harness operates.</p>
    #   @return [Types::HarnessEnvironmentArtifact]
    # @!attribute environment_variables
    #   <p>Environment variables exposed in the environment in which the harness operates.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorizer_configuration
    #   <p>Represents inbound authorization configuration options used to authenticate incoming requests. </p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute memory
    #   <p>AgentCore Memory instance configuration for short and long term memory.</p>
    #   @return [Types::HarnessMemoryConfiguration]
    # @!attribute hooks
    #   <p>The lifecycle hooks configured for the harness.</p>
    #   @return [Array<Types::HarnessHook>]
    # @!attribute max_iterations
    #   <p>The maximum number of iterations in the agent loop allowed before exiting per invocation.</p>
    #   @return [Integer]
    # @!attribute max_tokens
    #   <p>The maximum total number of output tokens the agent can generate across all model calls within a single invocation.</p>
    #   @return [Integer]
    # @!attribute timeout_seconds
    #   <p>The maximum duration per invocation.</p>
    #   @return [Integer]
    # @!attribute failure_reason
    #   <p>Reason why create or update operations fail.</p>
    #   @return [String]
    class Harness < Struct.new(
      nil,
      :harness_id,
      :harness_name,
      :arn,
      :status,
      :harness_version,
      :execution_role_arn,
      :created_at,
      :updated_at,
      :model,
      :system_prompt,
      :tools,
      :skills,
      :allowed_tools,
      :truncation,
      :environment,
      :environment_artifact,
      :environment_variables,
      :authorizer_configuration,
      :memory,
      :hooks,
      :max_iterations,
      :max_tokens,
      :timeout_seconds,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a hook that runs after an invocation completes.</p>
    # @!attribute name
    #   <p>The name of the hook.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target that receives the hook event.</p>
    #   @return [Types::HarnessHookTarget]
    class HarnessAfterInvocationHook < Struct.new(
      nil,
      :name,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a hook that runs after a tool call completes.</p>
    # @!attribute name
    #   <p>The name of the hook.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target that receives the hook event.</p>
    #   @return [Types::HarnessHookTarget]
    class HarnessAfterToolCallHook < Struct.new(
      nil,
      :name,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AgentCore Browser.</p>
    # @!attribute browser_arn
    #   <p>If not populated, the built-in Browser ARN is used.</p>
    #   @return [String]
    class HarnessAgentCoreBrowserConfig < Struct.new(
      nil,
      :browser_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AgentCore Code Interpreter.</p>
    # @!attribute code_interpreter_arn
    #   <p>If not populated, the built-in Code Interpreter ARN is used.</p>
    #   @return [String]
    class HarnessAgentCoreCodeInterpreterConfig < Struct.new(
      nil,
      :code_interpreter_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AgentCore Gateway.</p>
    # @!attribute gateway_arn
    #   <p>The ARN of the desired AgentCore Gateway.</p>
    #   @return [String]
    # @!attribute outbound_auth
    #   <p>How harness authenticates to this Gateway. Defaults to AWS_IAM (SigV4) if omitted.</p>
    #   @return [Types::HarnessGatewayOutboundAuth]
    class HarnessAgentCoreGatewayConfig < Struct.new(
      nil,
      :gateway_arn,
      :outbound_auth,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for AgentCore Memory integration.</p>
    # @!attribute arn
    #   <p>The ARN of the AgentCore Memory resource.</p>
    #   @return [String]
    # @!attribute actor_id
    #   <p>The actor ID for memory operations.</p>
    #   @return [String]
    # @!attribute messages_count
    #   <p>The number of messages to retrieve from memory.</p>
    #   @return [Integer]
    # @!attribute retrieval_config
    #   <p>The retrieval configuration for long-term memory, mapping namespace path templates to retrieval settings.</p>
    #   @return [Hash<String, Types::HarnessAgentCoreMemoryRetrievalConfig>]
    class HarnessAgentCoreMemoryConfiguration < Struct.new(
      nil,
      :arn,
      :actor_id,
      :messages_count,
      :retrieval_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for memory retrieval within a namespace.</p>
    # @!attribute top_k
    #   <p>The maximum number of memory entries to retrieve.</p>
    #   @return [Integer]
    # @!attribute relevance_score
    #   <p>The minimum relevance score for retrieved memories.</p>
    #   @return [Float]
    # @!attribute strategy_id
    #   <p>The ID of the retrieval strategy to use.</p>
    #   @return [String]
    class HarnessAgentCoreMemoryRetrievalConfig < Struct.new(
      nil,
      :top_k,
      :relevance_score,
      :strategy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AgentCore Runtime environment for a harness.</p>
    # @!attribute agent_runtime_arn
    #   <p>The ARN of the underlying AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_name
    #   <p>The name of the underlying AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_id
    #   <p>The ID of the underlying AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute lifecycle_configuration
    #   <p>LifecycleConfiguration lets you manage the lifecycle of runtime sessions and resources in AgentCore Runtime. This configuration helps optimize resource utilization by automatically cleaning up idle sessions and preventing long-running instances from consuming resources indefinitely.</p>
    #   @return [Types::LifecycleConfiguration]
    # @!attribute network_configuration
    #   <p>SecurityConfig for the Agent.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute filesystem_configurations
    #   <p>The filesystem configurations for the runtime environment.</p>
    #   @return [Array<Types::FilesystemConfiguration>]
    class HarnessAgentCoreRuntimeEnvironment < Struct.new(
      nil,
      :agent_runtime_arn,
      :agent_runtime_name,
      :agent_runtime_id,
      :lifecycle_configuration,
      :network_configuration,
      :filesystem_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AgentCore Runtime environment request configuration.</p>
    # @!attribute lifecycle_configuration
    #   <p>LifecycleConfiguration lets you manage the lifecycle of runtime sessions and resources in AgentCore Runtime. This configuration helps optimize resource utilization by automatically cleaning up idle sessions and preventing long-running instances from consuming resources indefinitely.</p>
    #   @return [Types::LifecycleConfiguration]
    # @!attribute network_configuration
    #   <p>SecurityConfig for the Agent.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute filesystem_configurations
    #   <p>The filesystem configurations for the runtime environment.</p>
    #   @return [Array<Types::FilesystemConfiguration>]
    class HarnessAgentCoreRuntimeEnvironmentRequest < Struct.new(
      nil,
      :lifecycle_configuration,
      :network_configuration,
      :filesystem_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an Amazon Bedrock model provider.</p>
    # @!attribute model_id
    #   <p>The Bedrock model ID.</p>
    #   @return [String]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response per model call.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The temperature to set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The topP set when calling the model.</p>
    #   @return [Float]
    # @!attribute api_format
    #   <p>The API format to use when calling the Bedrock provider.</p>
    #   @return [String]
    # @!attribute additional_params
    #   <p>Provider-specific parameters passed through to the model provider unchanged.</p>
    #   @return [JSON]
    class HarnessBedrockModelConfig < Struct.new(
      nil,
      :model_id,
      :max_tokens,
      :temperature,
      :top_p,
      :api_format,
      :additional_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a hook that runs before an invocation begins.</p>
    # @!attribute name
    #   <p>The name of the hook.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target that receives the hook event.</p>
    #   @return [Types::HarnessHookTarget]
    class HarnessBeforeInvocationHook < Struct.new(
      nil,
      :name,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a hook that runs before the agent calls a tool.</p>
    # @!attribute name
    #   <p>The name of the hook.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The target that receives the hook event.</p>
    #   @return [Types::HarnessHookTarget]
    class HarnessBeforeToolCallHook < Struct.new(
      nil,
      :name,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Explicitly opt out of memory.</p>
    class HarnessDisabledMemoryConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Representation of a harness endpoint. An endpoint is a named, stable reference to a specific version of a harness that callers invoke, allowing the underlying version to be updated without changing how the agent is invoked.</p>
    # @!attribute harness_id
    #   <p>The ID of the harness that the endpoint belongs to.</p>
    #   @return [String]
    # @!attribute harness_name
    #   <p>The name of the harness that the endpoint belongs to.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the endpoint.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the endpoint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the endpoint was last updated.</p>
    #   @return [Time]
    # @!attribute live_version
    #   <p>The harness version that the endpoint is currently serving.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>The harness version that the endpoint points to. While an update is in progress, this can differ from the live version until the endpoint finishes transitioning.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the endpoint.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason the endpoint's last create or update operation failed.</p>
    #   @return [String]
    class HarnessEndpoint < Struct.new(
      nil,
      :harness_id,
      :harness_name,
      :endpoint_name,
      :arn,
      :status,
      :created_at,
      :updated_at,
      :live_version,
      :target_version,
      :description,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The environment artifact for a harness, such as a container image containing custom dependencies.</p>
    # @!attribute container_configuration
    #   <p>Representation of a container configuration.</p>
    #   @return [Types::ContainerConfiguration]
    class HarnessEnvironmentArtifact < Struct.new(
      :container_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContainerConfiguration < HarnessEnvironmentArtifact; end
      class Unknown < HarnessEnvironmentArtifact; end
    end

    # <p>The environment provider for a harness.</p>
    # @!attribute agent_core_runtime_environment
    #   <p>The AgentCore Runtime environment configuration.</p>
    #   @return [Types::HarnessAgentCoreRuntimeEnvironment]
    class HarnessEnvironmentProvider < Struct.new(
      :agent_core_runtime_environment,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentCoreRuntimeEnvironment < HarnessEnvironmentProvider; end
      class Unknown < HarnessEnvironmentProvider; end
    end

    # <p>The environment provider request configuration.</p>
    # @!attribute agent_core_runtime_environment
    #   <p>The AgentCore Runtime environment configuration.</p>
    #   @return [Types::HarnessAgentCoreRuntimeEnvironmentRequest]
    class HarnessEnvironmentProviderRequest < Struct.new(
      :agent_core_runtime_environment,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentCoreRuntimeEnvironment < HarnessEnvironmentProviderRequest; end
      class Unknown < HarnessEnvironmentProviderRequest; end
    end

    # <p>Authentication method for calling a Gateway.</p>
    # @!attribute aws_iam
    #   <p>SigV4-sign requests using the agent's execution role.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute none
    #   <p>No authentication.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute oauth
    #   <p>Use OAuth credentials for outbound authentication to the gateway.</p> <p>The <code>AUTHORIZATION_CODE</code> grant type is not supported for outbound authentication from a harness to an AgentCore Gateway, even when <code>defaultReturnUrl</code> is specified.</p>
    #   @return [Types::OAuthCredentialProvider]
    class HarnessGatewayOutboundAuth < Struct.new(
      :aws_iam,
      :none,
      :oauth,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AwsIam < HarnessGatewayOutboundAuth; end
      class None < HarnessGatewayOutboundAuth; end
      class Oauth < HarnessGatewayOutboundAuth; end
      class Unknown < HarnessGatewayOutboundAuth; end
    end

    # <p>Configuration for a Google Gemini model provider. Requires an API key stored in AgentCore Identity.</p>
    # @!attribute model_id
    #   <p>The Gemini model ID.</p>
    #   @return [String]
    # @!attribute api_key_arn
    #   <p>The ARN of your Gemini API key on AgentCore Identity.</p>
    #   @return [String]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response per model call.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The temperature to set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The topP set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_k
    #   <p>The topK set when calling the model.</p>
    #   @return [Integer]
    # @!attribute additional_params
    #   <p>Provider-specific parameters passed through to the Gemini model provider unchanged.</p>
    #   @return [JSON]
    class HarnessGeminiModelConfig < Struct.new(
      nil,
      :model_id,
      :api_key_arn,
      :max_tokens,
      :temperature,
      :top_p,
      :top_k,
      :additional_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A lifecycle hook configuration. Specify one hook type.</p>
    # @!attribute before_invocation
    #   <p>A hook that runs before an invocation begins.</p>
    #   @return [Types::HarnessBeforeInvocationHook]
    # @!attribute after_invocation
    #   <p>A hook that runs after an invocation completes.</p>
    #   @return [Types::HarnessAfterInvocationHook]
    # @!attribute before_tool_call
    #   <p>A hook that runs before the agent calls a tool.</p>
    #   @return [Types::HarnessBeforeToolCallHook]
    # @!attribute after_tool_call
    #   <p>A hook that runs after a tool call completes.</p>
    #   @return [Types::HarnessAfterToolCallHook]
    class HarnessHook < Struct.new(
      :before_invocation,
      :after_invocation,
      :before_tool_call,
      :after_tool_call,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BeforeInvocation < HarnessHook; end
      class AfterInvocation < HarnessHook; end
      class BeforeToolCall < HarnessHook; end
      class AfterToolCall < HarnessHook; end
      class Unknown < HarnessHook; end
    end

    # <p>The configuration for an Amazon EventBridge hook target.</p>
    # @!attribute arn
    #   <p>The ARN of the Amazon EventBridge event bus to send hook events to.</p>
    #   @return [String]
    class HarnessHookEventBridgeTarget < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an Amazon Web Services Lambda hook target.</p>
    # @!attribute arn
    #   <p>The ARN of the Lambda function to invoke.</p>
    #   @return [String]
    # @!attribute timeout_seconds
    #   <p>The maximum number of seconds to wait for the Lambda function response. The default is 60 seconds.</p>
    #   @return [Integer]
    # @!attribute failure_mode
    #   <p>The behavior when the Lambda function times out, returns an error, or returns an invalid response. The default is <code>DENY</code>.</p>
    #   @return [String]
    class HarnessHookLambdaTarget < Struct.new(
      nil,
      :arn,
      :timeout_seconds,
      :failure_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_seconds] = 60 unless options.key?(:timeout_seconds)
        options[:failure_mode] = 'deny' unless options.key?(:failure_mode)
        super
      end
    end

    # <p>The configuration for an Amazon SNS hook target.</p>
    # @!attribute arn
    #   <p>The ARN of the Amazon SNS topic to publish hook events to.</p>
    #   @return [String]
    class HarnessHookSnsTarget < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target that receives lifecycle hook events. Specify one target type.</p>
    # @!attribute lambda
    #   <p>A Lambda hook target that invokes an Amazon Web Services Lambda function synchronously and waits for its response.</p>
    #   @return [Types::HarnessHookLambdaTarget]
    # @!attribute sns
    #   <p>An Amazon SNS hook target that publishes the hook event without waiting for a response.</p>
    #   @return [Types::HarnessHookSnsTarget]
    # @!attribute event_bridge
    #   <p>An Amazon EventBridge hook target that sends the hook event without waiting for a response.</p>
    #   @return [Types::HarnessHookEventBridgeTarget]
    class HarnessHookTarget < Struct.new(
      :lambda,
      :sns,
      :event_bridge,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Lambda < HarnessHookTarget; end
      class Sns < HarnessHookTarget; end
      class EventBridge < HarnessHookTarget; end
      class Unknown < HarnessHookTarget; end
    end

    # <p>Configuration for an inline function tool. When the agent calls this tool, the tool call is returned to the caller for external execution.</p>
    # @!attribute description
    #   <p>Description of what the tool does, provided to the model.</p>
    #   @return [String]
    # @!attribute input_schema
    #   <p>JSON Schema describing the tool's input parameters.</p>
    #   @return [JSON]
    class HarnessInlineFunctionConfig < Struct.new(
      nil,
      :description,
      :input_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a LiteLLM model provider, enabling connection to third-party model providers.</p>
    # @!attribute model_id
    #   <p>The LiteLLM model identifier (e.g., "anthropic/claude-3-sonnet").</p>
    #   @return [String]
    # @!attribute api_key_arn
    #   <p>The ARN of the API key in AgentCore Identity for authenticating with the model provider.</p>
    #   @return [String]
    # @!attribute api_base
    #   <p>The base URL for the model provider's API endpoint.</p>
    #   @return [String]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response per iteration.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The temperature to set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The topP set when calling the model.</p>
    #   @return [Float]
    # @!attribute additional_params
    #   <p>Provider-specific parameters passed through to the model provider unchanged.</p>
    #   @return [JSON]
    class HarnessLiteLlmModelConfig < Struct.new(
      nil,
      :model_id,
      :api_key_arn,
      :api_base,
      :max_tokens,
      :temperature,
      :top_p,
      :additional_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for managed memory creation.</p>
    # @!attribute arn
    #   <p>The ARN of the managed AgentCore Memory resource. Read-only on Get, ignored on Create/Update input.</p>
    #   @return [String]
    # @!attribute strategies
    #   <p>Strategy types to enable. Defaults to [SEMANTIC, SUMMARIZATION].</p>
    #   @return [Array<String>]
    # @!attribute event_expiry_duration
    #   <p>Event retention in days. Defaults to 30.</p>
    #   @return [Integer]
    # @!attribute encryption_key_arn
    #   <p>Customer-managed KMS key. Defaults to Amazon Web Services-owned key. Not updatable after creation.</p>
    #   @return [String]
    class HarnessManagedMemoryConfiguration < Struct.new(
      nil,
      :arn,
      :strategies,
      :event_expiry_duration,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The memory configuration for a harness.</p>
    # @!attribute agent_core_memory_configuration
    #   <p>The AgentCore Memory configuration.</p>
    #   @return [Types::HarnessAgentCoreMemoryConfiguration]
    # @!attribute managed_memory_configuration
    #   <p>Harness creates and manages a memory resource in the customer's account.</p>
    #   @return [Types::HarnessManagedMemoryConfiguration]
    # @!attribute disabled
    #   <p>Explicitly opt out of memory.</p>
    #   @return [Types::HarnessDisabledMemoryConfiguration]
    class HarnessMemoryConfiguration < Struct.new(
      :agent_core_memory_configuration,
      :managed_memory_configuration,
      :disabled,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentCoreMemoryConfiguration < HarnessMemoryConfiguration; end
      class ManagedMemoryConfiguration < HarnessMemoryConfiguration; end
      class Disabled < HarnessMemoryConfiguration; end
      class Unknown < HarnessMemoryConfiguration; end
    end

    # <p>Specification of which model to use.</p>
    # @!attribute bedrock_model_config
    #   <p>Configuration for an Amazon Bedrock model.</p>
    #   @return [Types::HarnessBedrockModelConfig]
    # @!attribute open_ai_model_config
    #   <p>Configuration for an OpenAI model.</p>
    #   @return [Types::HarnessOpenAiModelConfig]
    # @!attribute gemini_model_config
    #   <p>Configuration for a Google Gemini model.</p>
    #   @return [Types::HarnessGeminiModelConfig]
    # @!attribute lite_llm_model_config
    #   <p>The LiteLLM model configuration for connecting to third-party model providers.</p>
    #   @return [Types::HarnessLiteLlmModelConfig]
    class HarnessModelConfiguration < Struct.new(
      :bedrock_model_config,
      :open_ai_model_config,
      :gemini_model_config,
      :lite_llm_model_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class BedrockModelConfig < HarnessModelConfiguration; end
      class OpenAiModelConfig < HarnessModelConfiguration; end
      class GeminiModelConfig < HarnessModelConfiguration; end
      class LiteLlmModelConfig < HarnessModelConfiguration; end
      class Unknown < HarnessModelConfiguration; end
    end

    # <p>Configuration for an OpenAI model provider. Requires an API key stored in AgentCore Identity.</p>
    # @!attribute model_id
    #   <p>The OpenAI model ID.</p>
    #   @return [String]
    # @!attribute api_key_arn
    #   <p>The ARN of your OpenAI API key on AgentCore Identity.</p>
    #   @return [String]
    # @!attribute api_base
    #   <p>Optional custom endpoint URL for an OpenAI-compatible endpoint.</p>
    #   @return [String]
    # @!attribute max_tokens
    #   <p>The maximum number of tokens to allow in the generated response per model call.</p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p>The temperature to set when calling the model.</p>
    #   @return [Float]
    # @!attribute top_p
    #   <p>The topP set when calling the model.</p>
    #   @return [Float]
    # @!attribute api_format
    #   <p>The API format to use when calling the OpenAI provider.</p>
    #   @return [String]
    # @!attribute additional_params
    #   <p>Provider-specific parameters passed through to the model provider unchanged.</p>
    #   @return [JSON]
    class HarnessOpenAiModelConfig < Struct.new(
      nil,
      :model_id,
      :api_key_arn,
      :api_base,
      :max_tokens,
      :temperature,
      :top_p,
      :api_format,
      :additional_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for connecting to a remote MCP server.</p>
    # @!attribute url
    #   <p>URL of the MCP endpoint.</p>
    #   @return [String]
    # @!attribute headers
    #   <p>Custom headers to include when connecting to the remote MCP server.</p>
    #   @return [Hash<String, String>]
    class HarnessRemoteMcpConfig < Struct.new(
      nil,
      :url,
      :headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A skill available to the agent.</p>
    # @!attribute path
    #   <p>The filesystem path to the skill definition.</p>
    #   @return [String]
    # @!attribute s3
    #   <p>An S3 source containing the skill.</p>
    #   @return [Types::HarnessSkillS3Source]
    # @!attribute git
    #   <p>A git repository containing the skill.</p>
    #   @return [Types::HarnessSkillGitSource]
    # @!attribute aws_skills
    #   <p>Amazon Web Services Skills baked into the harness's underlying Runtime.</p>
    #   @return [Types::HarnessSkillAwsSkillsSource]
    class HarnessSkill < Struct.new(
      :path,
      :s3,
      :git,
      :aws_skills,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Path < HarnessSkill; end
      class S3 < HarnessSkill; end
      class Git < HarnessSkill; end
      class AwsSkills < HarnessSkill; end
      class Unknown < HarnessSkill; end
    end

    # <p>Passed to show that Amazon Web Services Skills should be included.</p>
    # @!attribute paths
    #   <p>Optionally filter allowed skills with glob syntax, e.g., ['core-skills/*'].</p>
    #   @return [Array<String>]
    class HarnessSkillAwsSkillsSource < Struct.new(
      nil,
      :paths,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Authentication configuration for accessing a private git repository.</p>
    # @!attribute credential_arn
    #   <p>The ARN of the credential in AgentCore Identity containing the password or personal access token.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Username for authentication. Defaults to 'oauth2' if not specified.</p>
    #   @return [String]
    class HarnessSkillGitAuth < Struct.new(
      nil,
      :credential_arn,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A git repository source for a skill.</p>
    # @!attribute url
    #   <p>The HTTPS URL of the git repository.</p>
    #   @return [String]
    # @!attribute path
    #   <p>Subdirectory within the repository containing the skill.</p>
    #   @return [String]
    # @!attribute auth
    #   <p>Authentication configuration for private repositories.</p>
    #   @return [Types::HarnessSkillGitAuth]
    class HarnessSkillGitSource < Struct.new(
      nil,
      :url,
      :path,
      :auth,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An S3 source for a skill.</p>
    # @!attribute uri
    #   <p>The S3 URI pointing to the skill directory (e.g., s3://bucket/skills/my-skill/).</p>
    #   @return [String]
    class HarnessSkillS3Source < Struct.new(
      nil,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for sliding window truncation strategy.</p>
    # @!attribute messages_count
    #   <p>The number of recent messages to retain in the context window.</p>
    #   @return [Integer]
    class HarnessSlidingWindowConfiguration < Struct.new(
      nil,
      :messages_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for summarization-based truncation strategy.</p>
    # @!attribute summary_ratio
    #   <p>The ratio of content to summarize.</p>
    #   @return [Float]
    # @!attribute preserve_recent_messages
    #   <p>The number of recent messages to preserve without summarization.</p>
    #   @return [Integer]
    # @!attribute summarization_system_prompt
    #   <p>The system prompt used for generating summaries.</p>
    #   @return [String]
    class HarnessSummarizationConfiguration < Struct.new(
      nil,
      :summary_ratio,
      :preserve_recent_messages,
      :summarization_system_prompt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a harness.</p>
    # @!attribute harness_id
    #   <p>The ID of the harness.</p>
    #   @return [String]
    # @!attribute harness_name
    #   <p>The name of the harness.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the harness.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the harness.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the harness was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the harness was last updated.</p>
    #   @return [Time]
    # @!attribute harness_version
    #   <p>The latest version of the harness.</p>
    #   @return [String]
    class HarnessSummary < Struct.new(
      nil,
      :harness_id,
      :harness_name,
      :arn,
      :status,
      :created_at,
      :updated_at,
      :harness_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A content block in the system prompt.</p>
    # @!attribute text
    #   <p>The text content of the system prompt block.</p>
    #   @return [String]
    class HarnessSystemContentBlock < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < HarnessSystemContentBlock; end
      class Unknown < HarnessSystemContentBlock; end
    end

    # <p>A tool available to the agent loop.</p>
    # @!attribute type
    #   <p>The type of tool.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Unique name for the tool. If not provided, a name will be inferred or generated.</p>
    #   @return [String]
    # @!attribute config
    #   <p>Tool-specific configuration.</p>
    #   @return [Types::HarnessToolConfiguration]
    class HarnessTool < Struct.new(
      nil,
      :type,
      :name,
      :config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration union for different tool types.</p>
    # @!attribute remote_mcp
    #   <p>Configuration for remote MCP server.</p>
    #   @return [Types::HarnessRemoteMcpConfig]
    # @!attribute agent_core_browser
    #   <p>Configuration for AgentCore Browser.</p>
    #   @return [Types::HarnessAgentCoreBrowserConfig]
    # @!attribute agent_core_gateway
    #   <p>Configuration for AgentCore Gateway.</p>
    #   @return [Types::HarnessAgentCoreGatewayConfig]
    # @!attribute inline_function
    #   <p>Configuration for an inline function tool.</p>
    #   @return [Types::HarnessInlineFunctionConfig]
    # @!attribute agent_core_code_interpreter
    #   <p>Configuration for AgentCore Code Interpreter.</p>
    #   @return [Types::HarnessAgentCoreCodeInterpreterConfig]
    class HarnessToolConfiguration < Struct.new(
      :remote_mcp,
      :agent_core_browser,
      :agent_core_gateway,
      :inline_function,
      :agent_core_code_interpreter,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RemoteMcp < HarnessToolConfiguration; end
      class AgentCoreBrowser < HarnessToolConfiguration; end
      class AgentCoreGateway < HarnessToolConfiguration; end
      class InlineFunction < HarnessToolConfiguration; end
      class AgentCoreCodeInterpreter < HarnessToolConfiguration; end
      class Unknown < HarnessToolConfiguration; end
    end

    # <p>Configuration for truncating conversation context when it exceeds model limits.</p>
    # @!attribute strategy
    #   <p>The truncation strategy to use.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The strategy-specific configuration.</p>
    #   @return [Types::HarnessTruncationStrategyConfiguration]
    class HarnessTruncationConfiguration < Struct.new(
      nil,
      :strategy,
      :config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Strategy-specific truncation configuration.</p>
    # @!attribute sliding_window
    #   <p>Configuration for sliding window truncation.</p>
    #   @return [Types::HarnessSlidingWindowConfiguration]
    # @!attribute summarization
    #   <p>Configuration for summarization-based truncation.</p>
    #   @return [Types::HarnessSummarizationConfiguration]
    class HarnessTruncationStrategyConfiguration < Struct.new(
      :sliding_window,
      :summarization,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SlidingWindow < HarnessTruncationStrategyConfiguration; end
      class Summarization < HarnessTruncationStrategyConfiguration; end
      class Unknown < HarnessTruncationStrategyConfiguration; end
    end

    # <p>Summary information about a single version of a harness.</p>
    # @!attribute harness_id
    #   <p>The ID of the harness.</p>
    #   @return [String]
    # @!attribute harness_name
    #   <p>The name of the harness.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the harness.</p>
    #   @return [String]
    # @!attribute harness_version
    #   <p>The version of the harness that this summary describes.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of this harness version.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when this harness version was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when this harness version was last updated.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>Reason why the create or update operation for this harness version failed.</p>
    #   @return [String]
    class HarnessVersionSummary < Struct.new(
      nil,
      :harness_id,
      :harness_name,
      :arn,
      :harness_version,
      :status,
      :created_at,
      :updated_at,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A hosting environment whose workloads are allowed to invoke the target. At launch, the only supported hosting environment is AgentCore Gateway.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the hosting environment.</p>
    #   @return [String]
    class HostingEnvironment < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The API schema configuration for an HTTP target. This schema defines the API structure that the target exposes.</p>
    # @!attribute source
    #   <p>Configuration for API schema.</p>
    #   @return [Types::ApiSchemaConfiguration]
    class HttpApiSchemaConfiguration < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source identifying the HTTP connector integration.</p>
    # @!attribute connector_id
    #   <p>The identifier for the HTTP connector integration.</p>
    #   @return [String]
    class HttpConnectorSource < Struct.new(
      nil,
      :connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an HTTP connector target. Use this configuration when you want to route HTTP requests through a managed connector.</p>
    # @!attribute source
    #   <p>The source configuration identifying which HTTP connector to use.</p>
    #   @return [Types::HttpConnectorSource]
    # @!attribute parameters
    #   <p>The resource parameters for this connector (for example, <code>memoryId</code>). The service validates these parameters against the request path at runtime.</p>
    #   @return [Hash<String, String>]
    class HttpConnectorTargetConfiguration < Struct.new(
      nil,
      :source,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The HTTP target configuration for a gateway target. Contains the configuration for HTTP-based target endpoints.</p>
    # @!attribute agentcore_runtime
    #   <p>The AgentCore Runtime target configuration for HTTP-based communication with an agent runtime.</p>
    #   @return [Types::RuntimeTargetConfiguration]
    # @!attribute passthrough
    #   <p>The passthrough configuration for the HTTP target. A passthrough target forwards requests directly to an external HTTP endpoint.</p>
    #   @return [Types::PassthroughTargetConfiguration]
    # @!attribute connector
    #   <p>The connector-based configuration for the HTTP target. Use this configuration when you want to route HTTP requests through a managed connector.</p>
    #   @return [Types::HttpConnectorTargetConfiguration]
    class HttpTargetConfiguration < Struct.new(
      :agentcore_runtime,
      :passthrough,
      :connector,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentcoreRuntime < HttpTargetConfiguration; end
      class Passthrough < HttpTargetConfiguration; end
      class Connector < HttpTargetConfiguration; end
      class Unknown < HttpTargetConfiguration; end
    end

    # <p>An IAM credential provider for gateway authentication. This structure contains the configuration for authenticating with the target endpoint using IAM credentials and SigV4 signing.</p>
    # @!attribute service
    #   <p>The target Amazon Web Services service name used for SigV4 signing. This value identifies the service that the gateway authenticates with when making requests to the target endpoint.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region used for SigV4 signing. If not specified, defaults to the gateway's Region.</p>
    #   @return [String]
    class IamCredentialProvider < Struct.new(
      nil,
      :service,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An IAM principal specification for rule matching.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the IAM principal. Supports user, role, and assumed-role ARNs. Wildcards can be used with the <code>StringLike</code> operator.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The match operator. <code>StringEquals</code> requires an exact match. <code>StringLike</code> supports wildcard patterns using <code>*</code> and <code>?</code>.</p>
    #   @return [String]
    class IamPrincipal < Struct.new(
      nil,
      :arn,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for connecting to a supported OAuth2 provider. This includes client credentials and OAuth2 discovery information for providers that have built-in support.</p>
    # @!attribute client_id
    #   <p>The client ID for the supported OAuth2 provider. This identifier is assigned by the OAuth2 provider when you register your application.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the supported OAuth2 provider. This secret is assigned by the OAuth2 provider and used along with the client ID to authenticate your application.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute issuer
    #   <p>Token issuer of your isolated OAuth2 application tenant. This URL identifies the authorization server that issues tokens for this provider.</p>
    #   @return [String]
    # @!attribute authorization_endpoint
    #   <p>OAuth2 authorization endpoint for your isolated OAuth2 application tenant. This is where users are redirected to authenticate and authorize access to their resources.</p>
    #   @return [String]
    # @!attribute token_endpoint
    #   <p>OAuth2 token endpoint for your isolated OAuth2 application tenant. This is where authorization codes are exchanged for access tokens.</p>
    #   @return [String]
    class IncludedOauth2ProviderConfigInput < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>The configuration details returned for a supported OAuth2 provider, including client credentials and OAuth2 discovery information.</p>
    # @!attribute oauth_discovery
    #   <p>Contains the discovery information for an OAuth2 provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the supported OAuth2 provider.</p>
    #   @return [String]
    class IncludedOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A metadata key indexed for filtering.</p>
    # @!attribute key
    #   <p>The metadata key name to index.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the indexed key.</p>
    #   @return [String]
    class IndexedKey < Struct.new(
      nil,
      :key,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration parameters that control how the foundation model behaves during evaluation, including response generation settings. </p>
    # @!attribute max_tokens
    #   <p> The maximum number of tokens to generate in the model response during evaluation. </p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p> The temperature value that controls randomness in the model's responses. Lower values produce more deterministic outputs. </p>
    #   @return [Float]
    # @!attribute top_p
    #   <p> The top-p sampling parameter that controls the diversity of the model's responses by limiting the cumulative probability of token choices. </p>
    #   @return [Float]
    # @!attribute stop_sequences
    #   <p> The list of sequences that will cause the model to stop generating tokens when encountered. </p>
    #   @return [Array<String>]
    class InferenceConfiguration < Struct.new(
      nil,
      :max_tokens,
      :temperature,
      :top_p,
      :stop_sequences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source identifying the inference connector.</p>
    # @!attribute connector_id
    #   <p>The identifier for the inference connector (for example, <code>bedrock-mantle</code>, <code>openai</code>, or <code>anthropic</code>).</p>
    #   @return [String]
    class InferenceConnectorSource < Struct.new(
      nil,
      :connector_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a connector-based inference target. This configuration uses a built-in connector that provides predefined rules for a large language model (LLM) provider.</p>
    # @!attribute source
    #   <p>The source configuration identifying which inference connector to use.</p>
    #   @return [Types::InferenceConnectorSource]
    class InferenceConnectorTargetConfiguration < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a specific inference operation, including its request path and the models that the operation supports.</p>
    # @!attribute path
    #   <p>The request path for this operation (for example, <code>/v1/messages</code> or <code>/v1/responses</code>).</p>
    #   @return [String]
    # @!attribute provider_path
    #   <p>The provider path to forward requests to, if it differs from the request path. For example, <code>/anthropic/v1/messages</code> when the provider expects a different path than the client-facing <code>/v1/messages</code>.</p>
    #   @return [String]
    # @!attribute models
    #   <p>The list of models supported for this operation.</p>
    #   @return [Array<Types::ModelEntry>]
    class InferenceOperationConfiguration < Struct.new(
      nil,
      :path,
      :provider_path,
      :models,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a provider-based inference target. This configuration explicitly defines the endpoint, model mapping, and operations used to route requests to a large language model (LLM) provider.</p>
    # @!attribute endpoint
    #   <p>The HTTPS endpoint of the inference provider that the gateway forwards requests to.</p>
    #   @return [String]
    # @!attribute model_mapping
    #   <p>The configuration that translates client-facing model IDs to the model IDs expected by the provider.</p>
    #   @return [Types::ModelMapping]
    # @!attribute operations
    #   <p>A list of per-operation configurations that map request paths to the models supported for each operation.</p>
    #   @return [Array<Types::InferenceOperationConfiguration>]
    class InferenceProviderTargetConfiguration < Struct.new(
      nil,
      :endpoint,
      :model_mapping,
      :operations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an inference target. An inference target routes requests to a large language model (LLM) provider, either through a built-in connector or an explicitly configured provider.</p>
    # @!attribute connector
    #   <p>The connector-based inference configuration. Use this option to route requests to an LLM provider through a built-in connector that includes predefined provider rules.</p>
    #   @return [Types::InferenceConnectorTargetConfiguration]
    # @!attribute provider
    #   <p>The provider-based inference configuration. Use this option to explicitly configure the endpoint, model mapping, and operations for an LLM provider.</p>
    #   @return [Types::InferenceProviderTargetConfiguration]
    class InferenceTargetConfiguration < Struct.new(
      :connector,
      :provider,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Connector < InferenceTargetConfiguration; end
      class Provider < InferenceTargetConfiguration; end
      class Unknown < InferenceTargetConfiguration; end
    end

    # <p> Inline examples provided directly in the request body. </p>
    # @!attribute examples
    #   <p> Examples to add. Each example is assigned an auto-generated UUID. </p>
    #   @return [Array<JSON>]
    class InlineExamplesSource < Struct.new(
      nil,
      :examples,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to an insight analysis to run against sessions during evaluation. Insights provide deeper analysis beyond individual evaluator scores, including failure detection, user intent clustering, and execution summarization.</p>
    # @!attribute insight_id
    #   <p>The unique identifier of the insight to run.</p>
    #   @return [String]
    class Insight < Struct.new(
      nil,
      :insight_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that manages the lifecycle of instances in a capacity provider, including idle timeout and maximum lifetime.</p>
    # @!attribute idle_instance_timeout
    #   <p>The number of seconds an instance can remain idle before it is stopped. An instance is considered idle when all of its agents are idle. The default is 900 seconds (15 minutes).</p>
    #   @return [Integer]
    # @!attribute max_lifetime
    #   <p>The maximum lifetime of an instance, in seconds. When an instance reaches this limit, the service terminates it regardless of activity. The default is 28800 seconds (8 hours). The maximum is 1209600 seconds (14 days).</p>
    #   @return [Integer]
    class InstanceLifecycleConfiguration < Struct.new(
      nil,
      :idle_instance_timeout,
      :max_lifetime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requirements for Amazon EC2 instance types in a capacity provider.</p>
    # @!attribute allowed_instance_types
    #   <p>The list of allowed instance types. You can specify up to 30 instance types.</p>
    #   @return [Array<String>]
    class InstanceRequirements < Struct.new(
      nil,
      :allowed_instance_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The interceptor configuration.</p>
    # @!attribute lambda
    #   <p>The details of the lambda function used for the interceptor.</p>
    #   @return [Types::LambdaInterceptorConfiguration]
    class InterceptorConfiguration < Struct.new(
      :lambda,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Lambda < InterceptorConfiguration; end
      class Unknown < InterceptorConfiguration; end
    end

    # <p>The input configuration of the interceptor.</p>
    # @!attribute pass_request_headers
    #   <p>Indicates whether to pass request headers as input into the interceptor. When set to true, request headers will be passed.</p>
    #   @return [Boolean]
    # @!attribute payload_filter
    #   <p>The filter that determines which parts of the request or response payload are passed as input to the interceptor.</p>
    #   @return [Types::InterceptorPayloadFilter]
    class InterceptorInputConfiguration < Struct.new(
      nil,
      :pass_request_headers,
      :payload_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A selector that identifies a payload field to exclude from the interceptor input.</p>
    # @!attribute field
    #   <p>The field to exclude from the interceptor input.</p>
    #   @return [String]
    class InterceptorPayloadExclusionSelector < Struct.new(
      :field,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Field < InterceptorPayloadExclusionSelector; end
      class Unknown < InterceptorPayloadExclusionSelector; end
    end

    # <p>The filter that controls which fields of the request or response payload are included in the input to the interceptor.</p>
    # @!attribute exclude
    #   <p>The list of selectors that identify payload fields to exclude from the interceptor input.</p>
    #   @return [Array<Types::InterceptorPayloadExclusionSelector>]
    class InterceptorPayloadFilter < Struct.new(
      nil,
      :exclude,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown if there was an unexpected error during processing of request</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration to invoke a self-managed memory processing pipeline with.</p>
    # @!attribute topic_arn
    #   <p>The ARN of the SNS topic for job notifications.</p>
    #   @return [String]
    # @!attribute payload_delivery_bucket_name
    #   <p>The S3 bucket name for event payload delivery.</p>
    #   @return [String]
    class InvocationConfiguration < Struct.new(
      nil,
      :topic_arn,
      :payload_delivery_bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration to invoke a self-managed memory processing pipeline with.</p>
    # @!attribute topic_arn
    #   <p>The ARN of the SNS topic for job notifications.</p>
    #   @return [String]
    # @!attribute payload_delivery_bucket_name
    #   <p>The S3 bucket name for event payload delivery.</p>
    #   @return [String]
    class InvocationConfigurationInput < Struct.new(
      nil,
      :topic_arn,
      :payload_delivery_bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Kinesis Data Stream delivery.</p>
    # @!attribute data_stream_arn
    #   <p>ARN of the Kinesis Data Stream.</p>
    #   @return [String]
    # @!attribute content_configurations
    #   <p>Content configurations for stream delivery.</p>
    #   @return [Array<Types::ContentConfiguration>]
    class KinesisResource < Struct.new(
      nil,
      :data_stream_arn,
      :content_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the KMS configuration for a resource.</p>
    # @!attribute key_type
    #   <p>The type of KMS key (CustomerManagedKey or ServiceManagedKey).</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key.</p>
    #   @return [String]
    class KmsConfiguration < Struct.new(
      nil,
      :key_type,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the KMS key configuration for a JWT client assertion.</p>
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to sign the JWT client assertion. The key must be an asymmetric key with key usage SIGN_VERIFY and a key spec compatible with the configured signing algorithm.</p>
    #   @return [String]
    class KmsKeySourceType < Struct.new(
      nil,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration for a Lambda function used as a code-based evaluator. </p>
    # @!attribute lambda_arn
    #   <p> The Amazon Resource Name (ARN) of the Lambda function that implements the evaluation logic. </p>
    #   @return [String]
    # @!attribute lambda_timeout_in_seconds
    #   <p> The timeout in seconds for the Lambda function invocation. Defaults to 60. Must be between 1 and 300. </p>
    #   @return [Integer]
    class LambdaEvaluatorConfig < Struct.new(
      nil,
      :lambda_arn,
      :lambda_timeout_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The lambda configuration for the interceptor</p>
    # @!attribute arn
    #   <p>The arn of the lambda function to be invoked for the interceptor.</p>
    #   @return [String]
    class LambdaInterceptorConfiguration < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda configuration for custom transformations. This structure defines the Lambda function that the gateway invokes to transform data.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function. This function is invoked by the gateway to transform data.</p>
    #   @return [String]
    class LambdaTransformConfiguration < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters for launching Amazon EC2 instances in a capacity provider.</p>
    # @!attribute operating_system
    #   <p>The operating system and CPU architecture for the instances.</p>
    #   @return [String]
    # @!attribute instance_requirements
    #   <p>The requirements that determine which instance types can be launched.</p>
    #   @return [Types::InstanceRequirements]
    # @!attribute ephemeral_volumes
    #   <p>The block device mappings for instance store (ephemeral) volumes. You can specify up to five mappings.</p>
    #   @return [Array<Types::EphemeralBlockDeviceMapping>]
    # @!attribute monitoring
    #   <p>The monitoring level for the instances.</p>
    #   @return [String]
    # @!attribute license_specifications
    #   <p>The license configurations to associate with the instances. You can specify up to five configurations.</p>
    #   @return [Array<Types::LicenseSpecification>]
    # @!attribute capacity_reservation_specification
    #   <p>The Capacity Reservation targeting option for the instances.</p>
    #   @return [Types::CapacityReservationSpecification]
    # @!attribute ssh_key_name
    #   <p>The name of the SSH key pair to configure on the instances for SSH connectivity.</p>
    #   @return [String]
    # @!attribute instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM instance profile to associate with launched instances. If provided, this overrides the default instance profile.</p>
    #   @return [String]
    # @!attribute propagated_tags
    #   <p>The tags to propagate to all Amazon EC2 resources (instances, volumes, and network interfaces) that the capacity provider creates.</p>
    #   @return [Hash<String, String>]
    class LaunchParameters < Struct.new(
      nil,
      :operating_system,
      :instance_requirements,
      :ephemeral_volumes,
      :monitoring,
      :license_specifications,
      :capacity_reservation_specification,
      :ssh_key_name,
      :instance_profile_arn,
      :propagated_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of the launch template configuration for a capacity provider. The <code>launchParameters</code> member specifies the operating system, instance requirements, and other settings used to launch instances.</p>
    # @!attribute launch_parameters
    #   <p>The parameters that AgentCore uses to create the launch template.</p>
    #   @return [Types::LaunchParameters]
    class LaunchTemplateSource < Struct.new(
      :launch_parameters,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class LaunchParameters < LaunchTemplateSource; end
      class Unknown < LaunchTemplateSource; end
    end

    # <p>A license configuration to associate with the instances.</p>
    # @!attribute license_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the license configuration.</p>
    #   @return [String]
    class LicenseSpecification < Struct.new(
      nil,
      :license_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>LifecycleConfiguration lets you manage the lifecycle of runtime sessions and resources in AgentCore Runtime. This configuration helps optimize resource utilization by automatically cleaning up idle sessions and preventing long-running instances from consuming resources indefinitely.</p>
    # @!attribute idle_runtime_session_timeout
    #   <p>Timeout in seconds for idle runtime sessions. When a session remains idle for this duration, it will be automatically terminated. Default: 900 seconds (15 minutes).</p>
    #   @return [Integer]
    # @!attribute max_lifetime
    #   <p>Maximum lifetime for the instance in seconds. Once reached, instances will be automatically terminated and replaced. Default: 28800 seconds (8 hours).</p>
    #   @return [Integer]
    class LifecycleConfiguration < Struct.new(
      nil,
      :idle_runtime_session_timeout,
      :max_lifetime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single rule entry within a rate limit that maps dimension values to rate configurations. Each entry defines the rate limits for a specific combination of dimension values.</p>
    # @!attribute dimensions
    #   <p>A map of dimension names to dimension values for this rule entry. Keys must match the parent rate limit's dimension keys. Values may use <code>*</code> as a wildcard, but only in trailing positions based on the dimension keys ordering.</p>
    #   @return [Hash<String, String>]
    # @!attribute requests
    #   <p>The request rate limit configuration. Specifies the maximum number of requests allowed per time period.</p>
    #   @return [Array<Types::RateConfig>]
    # @!attribute tokens
    #   <p>The token rate limit configuration. Specifies the maximum number of tokens allowed per time period.</p>
    #   @return [Array<Types::RateConfig>]
    # @!attribute connections
    #   <p>The connection rate limit configuration. Specifies the maximum number of concurrent connections allowed.</p>
    #   @return [Array<Types::RateConfig>]
    class LimitEntry < Struct.new(
      nil,
      :dimensions,
      :requests,
      :tokens,
      :connections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for connecting to LinkedIn services using OAuth2 authentication. This includes the client credentials required to authenticate with LinkedIn's OAuth2 authorization server.</p>
    # @!attribute client_id
    #   <p>The client ID for the LinkedIn OAuth2 provider. This identifier is assigned by LinkedIn when you register your application.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the LinkedIn OAuth2 provider. This secret is assigned by LinkedIn and used along with the client ID to authenticate your application.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class LinkedinOauth2ProviderConfigInput < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>The configuration details returned for a LinkedIn OAuth2 provider, including the client ID and OAuth2 discovery information.</p>
    # @!attribute oauth_discovery
    #   <p>Contains the discovery information for an OAuth2 provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the LinkedIn OAuth2 provider.</p>
    #   @return [String]
    class LinkedinOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to list endpoints for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListAgentRuntimeEndpointsRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime_endpoints
    #   <p>The list of AgentCore Runtime endpoints.</p>
    #   @return [Array<Types::AgentRuntimeEndpoint>]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListAgentRuntimeEndpointsResponse < Struct.new(
      nil,
      :runtime_endpoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the capacity provider.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentRuntimeVersionsByCapacityProviderInput < Struct.new(
      nil,
      :capacity_provider_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtimes
    #   <p>The list of agent runtime versions that are associated with the capacity provider.</p>
    #   @return [Array<Types::AgentRuntimeVersionSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListAgentRuntimeVersionsByCapacityProviderOutput < Struct.new(
      nil,
      :agent_runtimes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to list versions for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListAgentRuntimeVersionsRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtimes
    #   <p>The list of AgentCore Runtime versions.</p>
    #   @return [Array<Types::AgentRuntime>]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListAgentRuntimeVersionsResponse < Struct.new(
      nil,
      :agent_runtimes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListAgentRuntimesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtimes
    #   <p>The list of AgentCore Runtime resources.</p>
    #   @return [Array<Types::AgentRuntime>]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListAgentRuntimesResponse < Struct.new(
      nil,
      :agent_runtimes,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return.</p>
    #   @return [Integer]
    class ListApiKeyCredentialProvidersRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute credential_providers
    #   <p>The list of API key credential providers.</p>
    #   @return [Array<Types::ApiKeyCredentialProviderItem>]
    # @!attribute next_token
    #   <p>Pagination token for the next page of results.</p>
    #   @return [String]
    class ListApiKeyCredentialProvidersResponse < Struct.new(
      nil,
      :credential_providers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the browser profile to filter results by.</p>
    #   @return [String]
    class ListBrowserProfilesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_summaries
    #   <p>The list of browser profile summaries.</p>
    #   @return [Array<Types::BrowserProfileSummary>]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListBrowserProfilesResponse < Struct.new(
      nil,
      :profile_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of browsers to list. If not specified, all browser types are returned.</p>
    #   @return [String]
    class ListBrowsersRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_summaries
    #   <p>The list of browser summaries.</p>
    #   @return [Array<Types::BrowserSummary>]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListBrowsersResponse < Struct.new(
      nil,
      :browser_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListCapacityProvidersInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_providers
    #   <p>The list of capacity provider summaries.</p>
    #   @return [Array<Types::CapacityProviderSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListCapacityProvidersOutput < Struct.new(
      nil,
      :capacity_providers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of code interpreters to list.</p>
    #   @return [String]
    class ListCodeInterpretersRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_summaries
    #   <p>The list of code interpreter summaries.</p>
    #   @return [Array<Types::CodeInterpreterSummary>]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListCodeInterpretersResponse < Struct.new(
      nil,
      :code_interpreter_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle to list versions for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>An optional filter for listing versions, including branch name, creation source, and whether to return only the latest version per branch.</p>
    #   @return [Types::VersionFilter]
    class ListConfigurationBundleVersionsRequest < Struct.new(
      nil,
      :bundle_id,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute versions
    #   <p>The list of configuration bundle version summaries.</p>
    #   @return [Array<Types::ConfigurationBundleVersionSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListConfigurationBundleVersionsResponse < Struct.new(
      nil,
      :versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    class ListConfigurationBundlesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundles
    #   <p>The list of configuration bundle summaries.</p>
    #   @return [Array<Types::ConfigurationBundleSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListConfigurationBundlesResponse < Struct.new(
      nil,
      :bundles,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of consent portals to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results. Use the value returned in a previous response to request the next page.</p>
    #   @return [String]
    class ListConsentPortalsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consent_portals
    #   <p>The list of consent portals.</p>
    #   @return [Array<Types::ConsentPortalSummary>]
    # @!attribute next_token
    #   <p>The token to use in a subsequent request to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListConsentPortalsResponse < Struct.new(
      nil,
      :consent_portals,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p> Version to paginate: "DRAFT" or a version number. Defaults to DRAFT if absent. Only used on the first request; for subsequent pages, the version is extracted from the pagination token. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> Maximum number of examples to return per page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next page of results. </p>
    #   @return [String]
    class ListDatasetExamplesRequest < Struct.new(
      nil,
      :dataset_id,
      :dataset_version,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_version
    #   <p> The version returned. </p>
    #   @return [String]
    # @!attribute examples
    #   <p> Paginated example content. Each element is a JSON object containing at least an <code>exampleId</code> field plus the schema-specific content fields. </p>
    #   @return [Array<JSON>]
    # @!attribute next_token
    #   <p> The token for the next page of results, or null if there are no more results. </p>
    #   @return [String]
    class ListDatasetExamplesResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :dataset_version,
      :examples,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The token for the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of versions to return per page. </p>
    #   @return [Integer]
    class ListDatasetVersionsRequest < Struct.new(
      nil,
      :dataset_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute versions
    #   <p> The list of published dataset versions. </p>
    #   @return [Array<Types::DatasetVersionSummary>]
    # @!attribute next_token
    #   <p> The token for the next page of results, or null if there are no more results. </p>
    #   @return [String]
    class ListDatasetVersionsResponse < Struct.new(
      nil,
      :versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token for the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of datasets to return per page. </p>
    #   @return [Integer]
    class ListDatasetsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datasets
    #   <p> The list of datasets. </p>
    #   @return [Array<Types::DatasetSummary>]
    # @!attribute next_token
    #   <p> The token for the next page of results, or null if there are no more results. </p>
    #   @return [String]
    class ListDatasetsResponse < Struct.new(
      nil,
      :datasets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token from a previous request to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of evaluators to return in a single response. </p>
    #   @return [Integer]
    class ListEvaluatorsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluators
    #   <p> The list of evaluator summaries containing basic information about each evaluator. </p>
    #   @return [Array<Types::EvaluatorSummary>]
    # @!attribute next_token
    #   <p> The pagination token to use in a subsequent request to retrieve the next page of results. </p>
    #   @return [String]
    class ListEvaluatorsResponse < Struct.new(
      nil,
      :evaluators,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. Use the value returned in a previous <code>ListGatewayRateLimits</code> response.</p>
    #   @return [String]
    class ListGatewayRateLimitsRequest < Struct.new(
      nil,
      :gateway_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rate_limits
    #   <p>The list of rate limits for the gateway.</p>
    #   @return [Array<Types::GatewayRateLimitDetail>]
    # @!attribute next_token
    #   <p>The token for the next page of results. If this value is absent, there are no more results to retrieve.</p>
    #   @return [String]
    class ListGatewayRateLimitsResponse < Struct.new(
      nil,
      :rate_limits,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to list rules for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous request.</p>
    #   @return [String]
    class ListGatewayRulesRequest < Struct.new(
      nil,
      :gateway_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_rules
    #   <p>The list of gateway rules.</p>
    #   @return [Array<Types::GatewayRuleDetail>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request.</p>
    #   @return [String]
    class ListGatewayRulesResponse < Struct.new(
      nil,
      :gateway_rules,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to list targets for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListGatewayTargetsRequest < Struct.new(
      nil,
      :gateway_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of gateway target summaries.</p>
    #   @return [Array<Types::TargetSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListGatewayTargetsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListGatewaysRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of gateway summaries.</p>
    #   @return [Array<Types::GatewaySummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListGatewaysResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness whose endpoints are listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListHarnessEndpointsRequest < Struct.new(
      nil,
      :harness_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>The list of harness endpoints.</p>
    #   @return [Array<Types::HarnessEndpoint>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListHarnessEndpointsResponse < Struct.new(
      nil,
      :endpoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness whose versions are listed.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListHarnessVersionsRequest < Struct.new(
      nil,
      :harness_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_versions
    #   <p>The list of harness version summaries.</p>
    #   @return [Array<Types::HarnessVersionSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListHarnessVersionsResponse < Struct.new(
      nil,
      :harness_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListHarnessesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harnesses
    #   <p>The list of harness summaries.</p>
    #   @return [Array<Types::HarnessSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #   @return [String]
    class ListHarnessesResponse < Struct.new(
      nil,
      :harnesses,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 10. The maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListMemoriesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memories
    #   <p>The list of AgentCore Memory resource summaries.</p>
    #   @return [Array<Types::MemorySummary>]
    # @!attribute next_token
    #   <p>A token to retrieve the next page of results.</p>
    #   @return [String]
    class ListMemoriesOutput < Struct.new(
      nil,
      :memories,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return.</p>
    #   @return [Integer]
    class ListOauth2CredentialProvidersRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute credential_providers
    #   <p>The list of OAuth2 credential providers.</p>
    #   @return [Array<Types::Oauth2CredentialProviderItem>]
    # @!attribute next_token
    #   <p>Pagination token for the next page of results.</p>
    #   @return [String]
    class ListOauth2CredentialProvidersResponse < Struct.new(
      nil,
      :credential_providers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token from a previous request to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of online evaluation configurations to return in a single response. </p>
    #   @return [Integer]
    class ListOnlineEvaluationConfigsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute online_evaluation_configs
    #   <p> The list of online evaluation configuration summaries containing basic information about each configuration. </p>
    #   @return [Array<Types::OnlineEvaluationConfigSummary>]
    # @!attribute next_token
    #   <p> The pagination token to use in a subsequent request to retrieve the next page of results. </p>
    #   @return [String]
    class ListOnlineEvaluationConfigsResponse < Struct.new(
      nil,
      :online_evaluation_configs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the payment manager whose connectors to list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListPaymentConnectorsRequest < Struct.new(
      nil,
      :payment_manager_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_connectors
    #   <p>The list of payment connector summaries. For details about the fields in each summary, see the <code>PaymentConnectorSummary</code> data type.</p>
    #   @return [Array<Types::PaymentConnectorSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListPaymentConnectorsResponse < Struct.new(
      nil,
      :payment_connectors,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return.</p>
    #   @return [Integer]
    class ListPaymentCredentialProvidersRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute credential_providers
    #   <p>The list of payment credential providers.</p>
    #   @return [Array<Types::PaymentCredentialProviderItem>]
    # @!attribute next_token
    #   <p>Pagination token for the next page of results.</p>
    #   @return [String]
    class ListPaymentCredentialProvidersResponse < Struct.new(
      nil,
      :credential_providers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    class ListPaymentManagersRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_managers
    #   <p>The list of payment manager summaries. For details about the fields in each summary, see the <code>PaymentManagerSummary</code> data type.</p>
    #   @return [Array<Types::PaymentManagerSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListPaymentManagersResponse < Struct.new(
      nil,
      :payment_managers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicies.html">ListPolicies</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of policies to return in a single response. If not specified, the default is 10 policies per page, with a maximum of 100 per page.</p>
    #   @return [Integer]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine whose policies to retrieve.</p>
    #   @return [String]
    # @!attribute target_resource_scope
    #   <p>Optional filter to list policies that apply to a specific resource scope or resource type. This helps narrow down policy results to those relevant for particular Amazon Web Services resources, agent tools, or operational contexts within the policy engine ecosystem.</p>
    #   @return [String]
    class ListPoliciesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :policy_engine_id,
      :target_resource_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policies
    #   <p>An array of policy objects that match the specified criteria. Each policy object contains the policy metadata, status, and key identifiers for further operations.</p>
    #   @return [Array<Types::Policy>]
    # @!attribute next_token
    #   <p>A pagination token that can be used in subsequent ListPolicies calls to retrieve additional results. This token is only present when there are more results available.</p>
    #   @return [String]
    class ListPoliciesResponse < Struct.new(
      nil,
      :policies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngineSummaries.html">ListPolicyEngineSummaries</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of policy engine summaries to return in a single response.</p>
    #   @return [Integer]
    class ListPolicyEngineSummariesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engines
    #   <p>An array of policy engine summary objects that exist in the account. Each summary contains resource identifiers, status, and timestamps without customer-encrypted content.</p>
    #   @return [Array<Types::PolicyEngineSummary>]
    # @!attribute next_token
    #   <p>A pagination token that can be used in subsequent <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngineSummaries.html">ListPolicyEngineSummaries</a> calls to retrieve additional results. This token is only present when there are more results available.</p>
    #   @return [String]
    class ListPolicyEngineSummariesResponse < Struct.new(
      nil,
      :policy_engines,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngines.html">ListPolicyEngines</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of policy engines to return in a single response. If not specified, the default is 10 policy engines per page, with a maximum of 100 per page.</p>
    #   @return [Integer]
    class ListPolicyEnginesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engines
    #   <p>An array of policy engine objects that exist in the account. Each policy engine object contains the engine metadata, status, and key identifiers for further operations.</p>
    #   @return [Array<Types::PolicyEngine>]
    # @!attribute next_token
    #   <p>A pagination token that can be used in subsequent <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngines.html">ListPolicyEngines</a> calls to retrieve additional results. This token is only present when there are more results available. </p>
    #   @return [String]
    class ListPolicyEnginesResponse < Struct.new(
      nil,
      :policy_engines,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_generation_id
    #   <p>The unique identifier of the policy generation request whose assets are to be retrieved. This must be a valid generation ID from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_StartPolicyGeneration.html">StartPolicyGeneration</a> call that has completed processing.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The unique identifier of the policy engine associated with the policy generation request. This provides the context for the generation operation and ensures assets are retrieved from the correct policy engine.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationAssets.html">ListPolicyGenerationAssets</a> call. Use this token to retrieve the next page of assets when the response is paginated due to large numbers of generated policy options.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of policy generation assets to return in a single response. If not specified, the default is 10 assets per page, with a maximum of 100 per page. This helps control response size when dealing with policy generations that produce many alternative policy options.</p>
    #   @return [Integer]
    class ListPolicyGenerationAssetsRequest < Struct.new(
      nil,
      :policy_generation_id,
      :policy_engine_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_generation_assets
    #   <p>An array of generated policy assets including Dogwood policies and related artifacts from the AI-powered policy generation process. Each asset represents a different policy option or variation generated from the original natural language input.</p>
    #   @return [Array<Types::PolicyGenerationAsset>]
    # @!attribute next_token
    #   <p>A pagination token that can be used in subsequent <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationAssets.html">ListPolicyGenerationAssets</a> calls to retrieve additional assets. This token is only present when there are more generated policy assets available beyond the current response.</p>
    #   @return [String]
    class ListPolicyGenerationAssetsResponse < Struct.new(
      nil,
      :policy_generation_assets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationSummaries.html">ListPolicyGenerationSummaries</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of policy generation summaries to return in a single response.</p>
    #   @return [Integer]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine whose policy generation summaries to retrieve.</p>
    #   @return [String]
    class ListPolicyGenerationSummariesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :policy_engine_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_generations
    #   <p>An array of policy generation summary objects that match the specified criteria. Each summary contains resource identifiers, status, timestamps, and findings without customer-encrypted content.</p>
    #   @return [Array<Types::PolicyGenerationSummary>]
    # @!attribute next_token
    #   <p>A pagination token that can be used in subsequent <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationSummaries.html">ListPolicyGenerationSummaries</a> calls to retrieve additional results. This token is only present when there are more results available.</p>
    #   @return [String]
    class ListPolicyGenerationSummariesResponse < Struct.new(
      nil,
      :policy_generations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token for retrieving additional policy generations when results are paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of policy generations to return in a single response.</p>
    #   @return [Integer]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine whose policy generations to retrieve.</p>
    #   @return [String]
    class ListPolicyGenerationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :policy_engine_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_generations
    #   <p>An array of policy generation objects that match the specified criteria.</p>
    #   @return [Array<Types::PolicyGeneration>]
    # @!attribute next_token
    #   <p>A pagination token for retrieving additional policy generations if more results are available.</p>
    #   @return [String]
    class ListPolicyGenerationsResponse < Struct.new(
      nil,
      :policy_generations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicySummaries.html">ListPolicySummaries</a> call. Use this token to retrieve the next page of results when the response is paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of policy summaries to return in a single response.</p>
    #   @return [Integer]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine whose policy summaries to retrieve.</p>
    #   @return [String]
    # @!attribute target_resource_scope
    #   <p>Optional filter to list policy summaries that apply to a specific resource scope or resource type. This helps narrow down results to those relevant for particular Amazon Web Services resources, agent tools, or operational contexts within the policy engine ecosystem.</p>
    #   @return [String]
    class ListPolicySummariesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :policy_engine_id,
      :target_resource_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policies
    #   <p>An array of policy summary objects that match the specified criteria. Each summary contains resource identifiers, status, and timestamps without customer-encrypted content.</p>
    #   @return [Array<Types::PolicySummary>]
    # @!attribute next_token
    #   <p>A pagination token that can be used in subsequent <a href="https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicySummaries.html">ListPolicySummaries</a> calls to retrieve additional results. This token is only present when there are more results available.</p>
    #   @return [String]
    class ListPolicySummariesResponse < Struct.new(
      nil,
      :policies,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter registries by their current status. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, <code>DELETING</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>Filter registries by their authorizer type. Possible values are <code>CUSTOM_JWT</code> and <code>AWS_IAM</code>. For more information about authorizer types, see the <code>RegistryAuthorizerType</code> enum.</p>
    #   @return [String]
    class ListRegistriesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status,
      :authorizer_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registries
    #   <p>The list of registry summaries. For details about the fields in each summary, see the <code>RegistrySummary</code> data type.</p>
    #   @return [Array<Types::RegistrySummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListRegistriesResponse < Struct.new(
      nil,
      :registries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry to list records from. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If the total number of results is greater than this value, use the token returned in the response in the <code>nextToken</code> field when making another request to return the next batch of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, enter the token returned in the <code>nextToken</code> field in the response in this field to return the next batch of results.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Filter registry records by name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter registry records by their current status. Possible values include <code>CREATING</code>, <code>DRAFT</code>, <code>APPROVED</code>, <code>PENDING_APPROVAL</code>, <code>REJECTED</code>, <code>DEPRECATED</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, and <code>UPDATE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute descriptor_type
    #   <p>Filter registry records by their descriptor type. Possible values are <code>MCP</code>, <code>A2A</code>, <code>CUSTOM</code>, and <code>AGENT_SKILLS</code>.</p>
    #   @return [String]
    class ListRegistryRecordsRequest < Struct.new(
      nil,
      :registry_id,
      :max_results,
      :next_token,
      :name,
      :status,
      :descriptor_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_records
    #   <p>The list of registry record summaries. For details about the fields in each summary, see the <code>RegistryRecordSummary</code> data type.</p>
    #   @return [Array<Types::RegistryRecordSummary>]
    # @!attribute next_token
    #   <p>If the total number of results is greater than the <code>maxResults</code> value provided in the request, use this token when making another request in the <code>nextToken</code> field to return the next batch of results.</p>
    #   @return [String]
    class ListRegistryRecordsResponse < Struct.new(
      nil,
      :registry_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return.</p>
    #   @return [Integer]
    class ListWorkloadIdentitiesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workload_identities
    #   <p>The list of workload identities.</p>
    #   @return [Array<Types::WorkloadIdentityType>]
    # @!attribute next_token
    #   <p>Pagination token for the next page of results.</p>
    #   @return [String]
    class ListWorkloadIdentitiesResponse < Struct.new(
      nil,
      :workload_identities,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration for LLM-as-a-Judge evaluation that uses a language model to assess agent performance based on custom instructions and rating scales. </p>
    # @!attribute instructions
    #   <p> The evaluation instructions that guide the language model in assessing agent performance, including criteria and evaluation guidelines. </p>
    #   @return [String]
    # @!attribute rating_scale
    #   <p> The rating scale that defines how the evaluator should score agent performance, either numerical or categorical. </p>
    #   @return [Types::RatingScale]
    # @!attribute model_config
    #   <p> The model configuration that specifies which foundation model to use and how to configure it for evaluation. </p>
    #   @return [Types::EvaluatorModelConfig]
    class LlmAsAJudgeEvaluatorConfig < Struct.new(
      nil,
      :instructions,
      :rating_scale,
      :model_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Model-based metadata extraction configuration.</p>
    # @!attribute llm_extraction_instruction
    #   <p>Instructions for extraction. Supports built-in operators like LATEST_VALUE or custom natural-language instructions.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Description of what this metadata field represents.</p>
    #   @return [String]
    # @!attribute validation
    #   <p>Validation rules to constrain extracted values.</p>
    #   @return [Types::Validation]
    class LlmExtractionConfig < Struct.new(
      nil,
      :llm_extraction_instruction,
      :definition,
      :validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a Model Context Protocol (MCP) gateway. This structure defines how the gateway implements the MCP protocol.</p>
    # @!attribute supported_versions
    #   <p>The supported versions of the Model Context Protocol. This field specifies which versions of the protocol the gateway can use.</p>
    #   @return [Array<String>]
    # @!attribute instructions
    #   <p>The instructions for using the Model Context Protocol gateway. These instructions provide guidance on how to interact with the gateway.</p>
    #   @return [String]
    # @!attribute search_type
    #   <p>The search type for the Model Context Protocol gateway. This field specifies how the gateway handles search operations.</p>
    #   @return [String]
    # @!attribute session_configuration
    #   <p>The session configuration for the MCP gateway. This configuration controls session behavior, including session timeout settings.</p>
    #   @return [Types::SessionConfiguration]
    # @!attribute streaming_configuration
    #   <p>The streaming configuration for the MCP gateway. This configuration controls whether response streaming is enabled for the gateway.</p>
    #   @return [Types::StreamingConfiguration]
    # @!attribute disable_mcp_list_tools_pagination
    #   <p>Specifies whether pagination is disabled for the Model Context Protocol (MCP) <code>tools/list</code> operation. When set to <code>true</code>, the gateway returns the complete list of tools in a single response without a pagination cursor. When set to <code>false</code> or omitted, the gateway returns tools in paginated responses.</p>
    #   @return [Boolean]
    class MCPGatewayConfiguration < Struct.new(
      nil,
      :supported_versions,
      :instructions,
      :search_type,
      :session_configuration,
      :streaming_configuration,
      :disable_mcp_list_tools_pagination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a resource created and managed by the gateway for private endpoint connectivity.</p>
    # @!attribute domain
    #   <p>The domain associated with this managed resource.</p>
    #   @return [String]
    # @!attribute resource_gateway_arn
    #   <p>The ARN of the VPC Lattice resource gateway created in your account.</p>
    #   @return [String]
    # @!attribute resource_association_arn
    #   <p>The ARN of the service network resource association.</p>
    #   @return [String]
    class ManagedResourceDetails < Struct.new(
      nil,
      :domain,
      :resource_gateway_arn,
      :resource_association_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a managed VPC Lattice resource. The gateway creates and manages the VPC Lattice resource gateway and resource configuration on your behalf using a service-linked role.</p>
    # @!attribute vpc_identifier
    #   <p>The ID of the VPC that contains your private resource.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnet IDs within the VPC where the VPC Lattice resource gateway is placed.</p>
    #   @return [Array<String>]
    # @!attribute endpoint_ip_address_type
    #   <p>The IP address type for the resource configuration endpoint.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security group IDs to associate with the VPC Lattice resource gateway. If not specified, the default security group for the VPC is used.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags to apply to the managed VPC Lattice resource gateway.</p>
    #   @return [Hash<String, String>]
    # @!attribute routing_domain
    #   <p>An intermediate domain to use as the resource configuration endpoint instead of the actual target domain. Use this when you want to route traffic through an intermediate component such as a VPC endpoint or internal load balancer. For more information, see xref:lattice-vpc-egress-routing-domain[Route traffic through an intermediate domain].</p>
    #   @return [String]
    class ManagedVpcResource < Struct.new(
      nil,
      :vpc_identifier,
      :subnet_ids,
      :endpoint_ip_address_type,
      :security_group_ids,
      :tags,
      :routing_domain,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A condition that matches requests based on the request path.</p>
    # @!attribute any_of
    #   <p>A list of path patterns. The condition is met if the request path matches any of the patterns.</p>
    #   @return [Array<String>]
    class MatchPaths < Struct.new(
      nil,
      :any_of,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union for principal matching. Currently supports IAM principal ARN glob matching.</p>
    # @!attribute iam_principal
    #   <p>An IAM principal to match against, specified by ARN.</p>
    #   @return [Types::IamPrincipal]
    class MatchPrincipalEntry < Struct.new(
      :iam_principal,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IamPrincipal < MatchPrincipalEntry; end
      class Unknown < MatchPrincipalEntry; end
    end

    # <p>A condition that matches requests based on the caller's identity.</p>
    # @!attribute any_of
    #   <p>A list of principal entries. The condition is met if any of the entries match the caller's identity.</p>
    #   @return [Array<Types::MatchPrincipalEntry>]
    class MatchPrincipals < Struct.new(
      nil,
      :any_of,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Model Context Protocol (MCP) descriptor for a registry record. Contains the server definition and tools definition for an MCP-compatible server. The schema is validated against the MCP protocol specification.</p>
    # @!attribute server
    #   <p>The MCP server definition, containing the server configuration and schema as defined by the MCP protocol specification.</p>
    #   @return [Types::ServerDefinition]
    # @!attribute tools
    #   <p>The MCP tools definition, containing the tools available on the MCP server as defined by the MCP protocol specification.</p>
    #   @return [Types::ToolsDefinition]
    class McpDescriptor < Struct.new(
      nil,
      :server,
      :tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Lambda configuration for a Model Context Protocol target. This structure defines how the gateway uses a Lambda function to communicate with the target.</p>
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function. This function is invoked by the gateway to communicate with the target.</p>
    #   @return [String]
    # @!attribute tool_schema
    #   <p>The tool schema for the Lambda function. This schema defines the structure of the tools that the Lambda function provides.</p>
    #   @return [Types::ToolSchema]
    class McpLambdaTargetConfiguration < Struct.new(
      nil,
      :lambda_arn,
      :tool_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target configuration for the MCP server.</p>
    # @!attribute endpoint
    #   <p>The endpoint for the MCP server target configuration.</p>
    #   @return [String]
    # @!attribute mcp_tool_schema
    #   <p>A static tool list for the MCP server target. It is supported for all credential providers. Dynamic tool discovery/synchronization will be disabled when a target is configured with mcpToolSchema.</p>
    #   @return [Types::McpToolSchemaConfiguration]
    # @!attribute listing_mode
    #   <p>The listing mode for the MCP server target configuration. MCP resources for default targets are cached at the control plane for faster access. MCP resources for dynamic targets will be dynamically retrieved when listing tools.</p>
    #   @return [String]
    # @!attribute resource_priority
    #   <p>Priority for resolving MCP server targets with shared resource URIs. Lower values take precedence. Defaults to 1000 when not set.</p>
    #   @return [Integer]
    class McpServerTargetConfiguration < Struct.new(
      nil,
      :endpoint,
      :mcp_tool_schema,
      :listing_mode,
      :resource_priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Model Context Protocol (MCP) configuration for a target. This structure defines how the gateway uses MCP to communicate with the target.</p>
    # @!attribute open_api_schema
    #   <p>The OpenAPI schema for the Model Context Protocol target. This schema defines the API structure of the target.</p>
    #   @return [Types::ApiSchemaConfiguration]
    # @!attribute smithy_model
    #   <p>The Smithy model for the Model Context Protocol target. This model defines the API structure of the target using the Smithy specification.</p>
    #   @return [Types::ApiSchemaConfiguration]
    # @!attribute lambda
    #   <p>The Lambda configuration for the Model Context Protocol target. This configuration defines how the gateway uses a Lambda function to communicate with the target.</p>
    #   @return [Types::McpLambdaTargetConfiguration]
    # @!attribute mcp_server
    #   <p>The MCP server specified as the gateway target.</p>
    #   @return [Types::McpServerTargetConfiguration]
    # @!attribute api_gateway
    #   <p>The configuration for an Amazon API Gateway target.</p>
    #   @return [Types::ApiGatewayTargetConfiguration]
    # @!attribute connector
    #   <p>The connector integration configuration for the Model Context Protocol target. This configuration defines how the gateway uses a pre-built connector to communicate with the target.</p>
    #   @return [Types::ConnectorTargetConfiguration]
    class McpTargetConfiguration < Struct.new(
      :open_api_schema,
      :smithy_model,
      :lambda,
      :mcp_server,
      :api_gateway,
      :connector,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OpenApiSchema < McpTargetConfiguration; end
      class SmithyModel < McpTargetConfiguration; end
      class Lambda < McpTargetConfiguration; end
      class McpServer < McpTargetConfiguration; end
      class ApiGateway < McpTargetConfiguration; end
      class Connector < McpTargetConfiguration; end
      class Unknown < McpTargetConfiguration; end
    end

    # <p>The MCP tool schema configuration for an MCP server target. The tool schema must be aligned with the MCP specification.</p>
    # @!attribute s3
    #   <p>The Amazon S3 location of the tool schema. This location contains the schema definition file.</p>
    #   @return [Types::S3Configuration]
    # @!attribute inline_payload
    #   <p>The inline payload containing the MCP tool schema definition.</p>
    #   @return [String]
    class McpToolSchemaConfiguration < Struct.new(
      :s3,
      :inline_payload,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < McpToolSchemaConfiguration; end
      class InlinePayload < McpToolSchemaConfiguration; end
      class Unknown < McpToolSchemaConfiguration; end
    end

    # <p>Contains information about a memory resource.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the memory.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the memory.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the memory.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the memory.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The ARN of the KMS key used to encrypt the memory.</p>
    #   @return [String]
    # @!attribute memory_execution_role_arn
    #   <p>The ARN of the IAM role that provides permissions for the memory.</p>
    #   @return [String]
    # @!attribute event_expiry_duration
    #   <p>The number of days after which memory events will expire.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the memory.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reason for failure if the memory is in a failed state.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the memory was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the memory was last updated.</p>
    #   @return [Time]
    # @!attribute strategies
    #   <p>The list of memory strategies associated with this memory.</p>
    #   @return [Array<Types::MemoryStrategy>]
    # @!attribute indexed_keys
    #   <p>The indexed metadata keys for this memory. Only indexed keys can be used in metadata filters.</p>
    #   @return [Array<Types::IndexedKey>]
    # @!attribute namespace_keys
    #   <p>The namespace variable key definitions for this memory. Namespace keys define custom variables used in <code>namespaceTemplates</code> with optional validation rules.</p>
    #   @return [Array<Types::NamespaceKeyEntry>]
    # @!attribute stream_delivery_resources
    #   <p>Configuration for streaming memory record data to external resources.</p>
    #   @return [Types::StreamDeliveryResources]
    # @!attribute managed_by_resource_arn
    #   <p>ARN of the resource managing this memory (e.g. a harness). When set, strategy modifications and deletion are only allowed through the managing resource.</p>
    #   @return [String]
    class Memory < Struct.new(
      nil,
      :arn,
      :id,
      :name,
      :description,
      :encryption_key_arn,
      :memory_execution_role_arn,
      :event_expiry_duration,
      :status,
      :failure_reason,
      :created_at,
      :updated_at,
      :strategies,
      :indexed_keys,
      :namespace_keys,
      :stream_delivery_resources,
      :managed_by_resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Schema for metadata on memory records generated by a strategy.</p>
    # @!attribute metadata_schema
    #   <p>The metadata field definitions for this strategy.</p>
    #   @return [Array<Types::MetadataSchemaEntry>]
    class MemoryRecordSchema < Struct.new(
      nil,
      :metadata_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a memory strategy.</p>
    # @!attribute strategy_id
    #   <p>The unique identifier of the memory strategy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the memory strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the memory strategy.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration of the memory strategy.</p>
    #   @return [Types::StrategyConfiguration]
    # @!attribute type
    #   <p>The type of the memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter. The namespaces associated with the memory strategy.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates associated with the memory strategy.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The timestamp when the memory strategy was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the memory strategy was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the memory strategy.</p>
    #   @return [String]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata fields on records generated by this strategy.</p>
    #   @return [Types::MemoryRecordSchema]
    # @!attribute record_expiry_duration_days
    #   <p>The effective record expiry (long-term memory time-to-live), in days, for memory records generated by this strategy. New records expire this many days after they are created. If not set, records generated by this strategy do not expire.</p>
    #   @return [Integer]
    class MemoryStrategy < Struct.new(
      nil,
      :strategy_id,
      :name,
      :description,
      :configuration,
      :type,
      :namespaces,
      :namespace_templates,
      :created_at,
      :updated_at,
      :status,
      :memory_record_schema,
      :record_expiry_duration_days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains input information for creating a memory strategy.</p>
    # @!attribute semantic_memory_strategy
    #   <p>Input for creating a semantic memory strategy.</p>
    #   @return [Types::SemanticMemoryStrategyInput]
    # @!attribute summary_memory_strategy
    #   <p>Input for creating a summary memory strategy.</p>
    #   @return [Types::SummaryMemoryStrategyInput]
    # @!attribute user_preference_memory_strategy
    #   <p>Input for creating a user preference memory strategy.</p>
    #   @return [Types::UserPreferenceMemoryStrategyInput]
    # @!attribute custom_memory_strategy
    #   <p>Input for creating a custom memory strategy.</p>
    #   @return [Types::CustomMemoryStrategyInput]
    # @!attribute episodic_memory_strategy
    #   <p>Input for creating an episodic memory strategy</p>
    #   @return [Types::EpisodicMemoryStrategyInput]
    class MemoryStrategyInput < Struct.new(
      :semantic_memory_strategy,
      :summary_memory_strategy,
      :user_preference_memory_strategy,
      :custom_memory_strategy,
      :episodic_memory_strategy,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticMemoryStrategy < MemoryStrategyInput; end
      class SummaryMemoryStrategy < MemoryStrategyInput; end
      class UserPreferenceMemoryStrategy < MemoryStrategyInput; end
      class CustomMemoryStrategy < MemoryStrategyInput; end
      class EpisodicMemoryStrategy < MemoryStrategyInput; end
      class Unknown < MemoryStrategyInput; end
    end

    # <p>Contains summary information about a memory resource.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the memory.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the memory.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the memory.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the memory was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the memory was last updated.</p>
    #   @return [Time]
    # @!attribute managed_by_resource_arn
    #   <p>ARN of the resource managing this memory (e.g. a harness). Null if not managed.</p>
    #   @return [String]
    class MemorySummary < Struct.new(
      nil,
      :arn,
      :id,
      :status,
      :created_at,
      :updated_at,
      :managed_by_resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The trigger configuration based on a message.</p>
    # @!attribute message_count
    #   <p>The number of messages that trigger memory processing.</p>
    #   @return [Integer]
    class MessageBasedTrigger < Struct.new(
      nil,
      :message_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The trigger configuration based on a message.</p>
    # @!attribute message_count
    #   <p>The number of messages that trigger memory processing.</p>
    #   @return [Integer]
    class MessageBasedTriggerInput < Struct.new(
      nil,
      :message_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:message_count] = 6 unless options.key?(:message_count)
        super
      end
    end

    # <p>Configuration for HTTP header and query parameter propagation between the gateway and target servers.</p>
    # @!attribute allowed_request_headers
    #   <p>A list of HTTP headers that are allowed to be propagated from incoming client requests to the target.</p>
    #   @return [Array<String>]
    # @!attribute allowed_query_parameters
    #   <p>A list of URL query parameters that are allowed to be propagated from incoming gateway URL to the target.</p>
    #   @return [Array<String>]
    # @!attribute allowed_response_headers
    #   <p>A list of HTTP headers that are allowed to be propagated from the target response back to the client.</p>
    #   @return [Array<String>]
    class MetadataConfiguration < Struct.new(
      nil,
      :allowed_request_headers,
      :allowed_query_parameters,
      :allowed_response_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A metadata field definition within a strategy's schema.</p>
    # @!attribute key
    #   <p>The metadata field name. Must match an indexed key to be queryable via metadata filters.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The MetadataValueType.</p>
    #   @return [String]
    # @!attribute extraction_type
    #   <p>Specifies whether the metadata value is extracted by the LLM or passed through deterministically from the event.</p>
    #   @return [String]
    # @!attribute extraction_config
    #   <p>Configuration for extracting this metadata value from conversational content. Applicable only if extractionType is LLM inferred.</p>
    #   @return [Types::ExtractionConfig]
    class MetadataSchemaEntry < Struct.new(
      nil,
      :key,
      :type,
      :extraction_type,
      :extraction_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration for a Microsoft OAuth2 provider.</p>
    # @!attribute client_id
    #   <p>The client ID for the Microsoft OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the Microsoft OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute tenant_id
    #   <p>The Microsoft Entra ID (formerly Azure AD) tenant ID for your organization. This identifies the specific tenant within Microsoft's identity platform where your application is registered.</p>
    #   @return [String]
    class MicrosoftOauth2ProviderConfigInput < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      :tenant_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>Output configuration for a Microsoft OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the Microsoft provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the Microsoft OAuth2 provider.</p>
    #   @return [String]
    class MicrosoftOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A model entry that specifies a model supported for an inference operation.</p>
    # @!attribute model
    #   <p>The model ID or glob pattern that identifies the model (for example, <code>anthropic.claude-opus-*</code> or <code>openai.gpt-oss-*</code>).</p>
    #   @return [String]
    class ModelEntry < Struct.new(
      nil,
      :model,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that translates model IDs between client-facing names and provider model IDs.</p>
    # @!attribute provider_prefix
    #   <p>The provider prefix configuration used for model ID translation.</p>
    #   @return [Types::ProviderPrefix]
    class ModelMapping < Struct.new(
      nil,
      :provider_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for modifying a consolidation configuration.</p>
    # @!attribute custom_consolidation_configuration
    #   <p>The updated custom consolidation configuration.</p>
    #   @return [Types::CustomConsolidationConfigurationInput]
    class ModifyConsolidationConfiguration < Struct.new(
      :custom_consolidation_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomConsolidationConfiguration < ModifyConsolidationConfiguration; end
      class Unknown < ModifyConsolidationConfiguration; end
    end

    # <p>Contains information for modifying an extraction configuration.</p>
    # @!attribute custom_extraction_configuration
    #   <p>The updated custom extraction configuration.</p>
    #   @return [Types::CustomExtractionConfigurationInput]
    class ModifyExtractionConfiguration < Struct.new(
      :custom_extraction_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomExtractionConfiguration < ModifyExtractionConfiguration; end
      class Unknown < ModifyExtractionConfiguration; end
    end

    # <p>The configuration for updating invocation settings.</p>
    # @!attribute topic_arn
    #   <p>The updated ARN of the SNS topic for job notifications.</p>
    #   @return [String]
    # @!attribute payload_delivery_bucket_name
    #   <p>The updated S3 bucket name for event payload delivery.</p>
    #   @return [String]
    class ModifyInvocationConfigurationInput < Struct.new(
      nil,
      :topic_arn,
      :payload_delivery_bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for modifying memory strategies.</p>
    # @!attribute add_memory_strategies
    #   <p>The list of memory strategies to add.</p>
    #   @return [Array<Types::MemoryStrategyInput>]
    # @!attribute modify_memory_strategies
    #   <p>The list of memory strategies to modify.</p>
    #   @return [Array<Types::ModifyMemoryStrategyInput>]
    # @!attribute delete_memory_strategies
    #   <p>The list of memory strategies to delete.</p>
    #   @return [Array<Types::DeleteMemoryStrategyInput>]
    class ModifyMemoryStrategies < Struct.new(
      nil,
      :add_memory_strategies,
      :modify_memory_strategies,
      :delete_memory_strategies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for modifying a memory strategy.</p>
    # @!attribute memory_strategy_id
    #   <p>The unique identifier of the memory strategy to modify.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The updated namespaces for the memory strategy.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The updated namespaceTemplates for the memory strategy.</p>
    #   @return [Array<String>]
    # @!attribute configuration
    #   <p>The updated configuration for the memory strategy.</p>
    #   @return [Types::ModifyStrategyConfiguration]
    # @!attribute memory_record_schema
    #   <p>Updated metadata schema for records generated by this strategy.</p>
    #   @return [Types::MemoryRecordSchema]
    # @!attribute record_expiry_specification
    #   <p>Updates or removes the record expiry (long-term memory time-to-live) for this strategy. Set <code>recordExpiryDurationDays</code> to configure or update the number of days after which records expire, or set <code>action</code> to <code>REMOVE</code> to remove a previously configured time-to-live so that newer records no longer expire. The change applies only to records created after the update.</p>
    #   @return [Types::RecordExpirySpecification]
    class ModifyMemoryStrategyInput < Struct.new(
      nil,
      :memory_strategy_id,
      :description,
      :namespaces,
      :namespace_templates,
      :configuration,
      :memory_record_schema,
      :record_expiry_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for modifying a reflection configuration.</p>
    # @!attribute episodic_reflection_configuration
    #   <p>The updated episodic reflection configuration.</p>
    #   @return [Types::EpisodicReflectionConfigurationInput]
    # @!attribute custom_reflection_configuration
    #   <p>The updated custom reflection configuration.</p>
    #   @return [Types::CustomReflectionConfigurationInput]
    class ModifyReflectionConfiguration < Struct.new(
      :episodic_reflection_configuration,
      :custom_reflection_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EpisodicReflectionConfiguration < ModifyReflectionConfiguration; end
      class CustomReflectionConfiguration < ModifyReflectionConfiguration; end
      class Unknown < ModifyReflectionConfiguration; end
    end

    # <p>The configuration for updating the self-managed memory strategy.</p>
    # @!attribute trigger_conditions
    #   <p>The updated list of conditions that trigger memory processing.</p>
    #   @return [Array<Types::TriggerConditionInput>]
    # @!attribute invocation_configuration
    #   <p>The updated configuration to invoke self-managed memory processing pipeline.</p>
    #   @return [Types::ModifyInvocationConfigurationInput]
    # @!attribute historical_context_window_size
    #   <p>The updated number of historical messages to include in processing context.</p>
    #   @return [Integer]
    class ModifySelfManagedConfiguration < Struct.new(
      nil,
      :trigger_conditions,
      :invocation_configuration,
      :historical_context_window_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information for modifying a strategy configuration.</p>
    # @!attribute extraction
    #   <p>The updated extraction configuration.</p>
    #   @return [Types::ModifyExtractionConfiguration]
    # @!attribute consolidation
    #   <p>The updated consolidation configuration.</p>
    #   @return [Types::ModifyConsolidationConfiguration]
    # @!attribute reflection
    #   <p>The updated reflection configuration.</p>
    #   @return [Types::ModifyReflectionConfiguration]
    # @!attribute self_managed_configuration
    #   <p>The updated self-managed configuration.</p>
    #   @return [Types::ModifySelfManagedConfiguration]
    class ModifyStrategyConfiguration < Struct.new(
      nil,
      :extraction,
      :consolidation,
      :reflection,
      :self_managed_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A namespace variable key definition with optional <code>NamespaceKeyValidation</code> rules.</p>
    # @!attribute key
    #   <p>The namespace variable key name.</p>
    #   @return [String]
    # @!attribute validation
    #   <p>The validation rules that constrain values for this namespace variable at runtime (<code>CreateEvent</code> API).</p>
    #   @return [Types::NamespaceKeyValidation]
    class NamespaceKeyEntry < Struct.new(
      nil,
      :key,
      :validation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The validation rules for namespace variable values. When you specify multiple rules, the service enforces a logical <code>AND</code> across all provided key-value pairs.</p>
    # @!attribute allowed_values
    #   <p>The allowed values for this namespace variable key.</p>
    #   @return [Array<String>]
    # @!attribute regex_pattern
    #   <p>A regex pattern that the namespace variable key-value must match.</p>
    #   @return [String]
    class NamespaceKeyValidation < Struct.new(
      nil,
      :allowed_values,
      :regex_pattern,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>SecurityConfig for the Agent.</p>
    # @!attribute network_mode
    #   <p>The network mode for the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute network_mode_config
    #   <p>The network mode configuration for the AgentCore Runtime.</p>
    #   @return [Types::VpcConfig]
    class NetworkConfiguration < Struct.new(
      nil,
      :network_mode,
      :network_mode_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation for NUMBER fields.</p>
    # @!attribute min_value
    #   <p>Minimum allowed value.</p>
    #   @return [Float]
    # @!attribute max_value
    #   <p>Maximum allowed value.</p>
    #   @return [Float]
    class NumberValidation < Struct.new(
      nil,
      :min_value,
      :max_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The definition of a numerical rating scale option that provides a numeric value with its description for evaluation scoring. </p>
    # @!attribute definition
    #   <p> The description that explains what this numerical rating represents and when it should be used. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The numerical value for this rating scale option. </p>
    #   @return [Float]
    # @!attribute label
    #   <p> The label or name that describes this numerical rating option. </p>
    #   @return [String]
    class NumericalScaleDefinition < Struct.new(
      nil,
      :definition,
      :value,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OAuth2-specific authorization data, including the authorization URL and user identifier for the authorization session.</p>
    # @!attribute authorization_url
    #   <p>The URL to initiate the authorization process. This URL is provided when the OAuth2 access token requires user authorization.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user identifier associated with the OAuth2 authorization session that is defined by AgentCore Gateway.</p>
    #   @return [String]
    class OAuth2AuthorizationData < Struct.new(
      nil,
      :authorization_url,
      :user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An OAuth credential provider for gateway authentication. This structure contains the configuration for authenticating with the target endpoint using OAuth.</p>
    # @!attribute provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth credential provider. This ARN identifies the provider in Amazon Web Services.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth scopes for the credential provider. These scopes define the level of access requested from the OAuth provider.</p>
    #   @return [Array<String>]
    # @!attribute custom_parameters
    #   <p>The custom parameters for the OAuth credential provider. These parameters provide additional configuration for the OAuth authentication process.</p>
    #   @return [Hash<String, String>]
    # @!attribute grant_type
    #   <p>Specifies the kind of credentials to use for authorization:</p> <ul> <li> <p> <code>CLIENT_CREDENTIALS</code> - Authorization with a client ID and secret.</p> </li> <li> <p> <code>AUTHORIZATION_CODE</code> - Authorization with a token that is specific to an individual end user.</p> </li> <li> <p> <code>TOKEN_EXCHANGE</code> - Authorization using on-behalf-of token exchange. An inbound user token is exchanged for a downstream access token scoped to the target audience.</p> </li> </ul>
    #   @return [String]
    # @!attribute default_return_url
    #   <p>The URL where the end user's browser is redirected after obtaining the authorization code. Generally points to the customer's application.</p>
    #   @return [String]
    class OAuthCredentialProvider < Struct.new(
      nil,
      :provider_arn,
      :scopes,
      :custom_parameters,
      :grant_type,
      :default_return_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:grant_type] = 'CLIENT_CREDENTIALS' unless options.key?(:grant_type)
        super
      end
    end

    # <p>Contains the authorization server metadata for an OAuth2 provider.</p>
    # @!attribute issuer
    #   <p>The issuer URL for the OAuth2 authorization server.</p>
    #   @return [String]
    # @!attribute authorization_endpoint
    #   <p>The authorization endpoint URL for the OAuth2 authorization server.</p>
    #   @return [String]
    # @!attribute token_endpoint
    #   <p>The token endpoint URL for the OAuth2 authorization server.</p>
    #   @return [String]
    # @!attribute response_types
    #   <p>The supported response types for the OAuth2 authorization server.</p>
    #   @return [Array<String>]
    # @!attribute token_endpoint_auth_methods
    #   <p>The authentication methods supported by the token endpoint. This specifies how clients can authenticate when requesting tokens from the authorization server.</p>
    #   @return [Array<String>]
    class Oauth2AuthorizationServerMetadata < Struct.new(
      nil,
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      :response_types,
      :token_endpoint_auth_methods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an OAuth2 credential provider.</p>
    # @!attribute name
    #   <p>The name of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the OAuth2 credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the OAuth2 credential provider was last updated.</p>
    #   @return [Time]
    class Oauth2CredentialProviderItem < Struct.new(
      nil,
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the discovery information for an OAuth2 provider.</p>
    # @!attribute discovery_url
    #   <p>The discovery URL for the OAuth2 provider.</p>
    #   @return [String]
    # @!attribute authorization_server_metadata
    #   <p>The authorization server metadata for the OAuth2 provider.</p>
    #   @return [Types::Oauth2AuthorizationServerMetadata]
    class Oauth2Discovery < Struct.new(
      :discovery_url,
      :authorization_server_metadata,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DiscoveryUrl < Oauth2Discovery; end
      class AuthorizationServerMetadata < Oauth2Discovery; end
      class Unknown < Oauth2Discovery; end
    end

    # <p>Contains the input configuration for an OAuth2 provider.</p>
    # @!attribute custom_oauth2_provider_config
    #   <p>The configuration for a custom OAuth2 provider.</p>
    #   @return [Types::CustomOauth2ProviderConfigInput]
    # @!attribute google_oauth2_provider_config
    #   <p>The configuration for a Google OAuth2 provider.</p>
    #   @return [Types::GoogleOauth2ProviderConfigInput]
    # @!attribute github_oauth2_provider_config
    #   <p>The configuration for a GitHub OAuth2 provider.</p>
    #   @return [Types::GithubOauth2ProviderConfigInput]
    # @!attribute slack_oauth2_provider_config
    #   <p>The configuration for a Slack OAuth2 provider.</p>
    #   @return [Types::SlackOauth2ProviderConfigInput]
    # @!attribute salesforce_oauth2_provider_config
    #   <p>The configuration for a Salesforce OAuth2 provider.</p>
    #   @return [Types::SalesforceOauth2ProviderConfigInput]
    # @!attribute microsoft_oauth2_provider_config
    #   <p>The configuration for a Microsoft OAuth2 provider.</p>
    #   @return [Types::MicrosoftOauth2ProviderConfigInput]
    # @!attribute atlassian_oauth2_provider_config
    #   <p>Configuration settings for Atlassian OAuth2 provider integration.</p>
    #   @return [Types::AtlassianOauth2ProviderConfigInput]
    # @!attribute linkedin_oauth2_provider_config
    #   <p>Configuration settings for LinkedIn OAuth2 provider integration.</p>
    #   @return [Types::LinkedinOauth2ProviderConfigInput]
    # @!attribute included_oauth2_provider_config
    #   <p>The configuration for a non-custom OAuth2 provider. This includes settings for supported OAuth2 providers that have built-in integration support.</p>
    #   @return [Types::IncludedOauth2ProviderConfigInput]
    class Oauth2ProviderConfigInput < Struct.new(
      :custom_oauth2_provider_config,
      :google_oauth2_provider_config,
      :github_oauth2_provider_config,
      :slack_oauth2_provider_config,
      :salesforce_oauth2_provider_config,
      :microsoft_oauth2_provider_config,
      :atlassian_oauth2_provider_config,
      :linkedin_oauth2_provider_config,
      :included_oauth2_provider_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class GoogleOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class GithubOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class SlackOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class SalesforceOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class MicrosoftOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class AtlassianOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class LinkedinOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class IncludedOauth2ProviderConfig < Oauth2ProviderConfigInput; end
      class Unknown < Oauth2ProviderConfigInput; end
    end

    # <p>Contains the output configuration for an OAuth2 provider.</p>
    # @!attribute custom_oauth2_provider_config
    #   <p>The output configuration for a custom OAuth2 provider.</p>
    #   @return [Types::CustomOauth2ProviderConfigOutput]
    # @!attribute google_oauth2_provider_config
    #   <p>The output configuration for a Google OAuth2 provider.</p>
    #   @return [Types::GoogleOauth2ProviderConfigOutput]
    # @!attribute github_oauth2_provider_config
    #   <p>The output configuration for a GitHub OAuth2 provider.</p>
    #   @return [Types::GithubOauth2ProviderConfigOutput]
    # @!attribute slack_oauth2_provider_config
    #   <p>The output configuration for a Slack OAuth2 provider.</p>
    #   @return [Types::SlackOauth2ProviderConfigOutput]
    # @!attribute salesforce_oauth2_provider_config
    #   <p>The output configuration for a Salesforce OAuth2 provider.</p>
    #   @return [Types::SalesforceOauth2ProviderConfigOutput]
    # @!attribute microsoft_oauth2_provider_config
    #   <p>The output configuration for a Microsoft OAuth2 provider.</p>
    #   @return [Types::MicrosoftOauth2ProviderConfigOutput]
    # @!attribute atlassian_oauth2_provider_config
    #   <p>The configuration details for the Atlassian OAuth2 provider.</p>
    #   @return [Types::AtlassianOauth2ProviderConfigOutput]
    # @!attribute linkedin_oauth2_provider_config
    #   <p>The configuration details for the LinkedIn OAuth2 provider.</p>
    #   @return [Types::LinkedinOauth2ProviderConfigOutput]
    # @!attribute included_oauth2_provider_config
    #   <p>The configuration for a non-custom OAuth2 provider. This includes the configuration details for supported OAuth2 providers that have built-in integration support.</p>
    #   @return [Types::IncludedOauth2ProviderConfigOutput]
    class Oauth2ProviderConfigOutput < Struct.new(
      :custom_oauth2_provider_config,
      :google_oauth2_provider_config,
      :github_oauth2_provider_config,
      :slack_oauth2_provider_config,
      :salesforce_oauth2_provider_config,
      :microsoft_oauth2_provider_config,
      :atlassian_oauth2_provider_config,
      :linkedin_oauth2_provider_config,
      :included_oauth2_provider_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class GoogleOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class GithubOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class SlackOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class SalesforceOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class MicrosoftOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class AtlassianOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class LinkedinOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class IncludedOauth2ProviderConfig < Oauth2ProviderConfigOutput; end
      class Unknown < Oauth2ProviderConfigOutput; end
    end

    # <p>Configuration for on-behalf-of token exchange.</p>
    # @!attribute grant_type
    #   <p>The grant type for the on-behalf-of token exchange.</p>
    #   @return [String]
    # @!attribute token_exchange_grant_type_config
    #   <p>Configuration specific to the TOKEN_EXCHANGE grant type (RFC 8693).</p>
    #   @return [Types::TokenExchangeGrantTypeConfigType]
    class OnBehalfOfTokenExchangeConfigType < Struct.new(
      nil,
      :grant_type,
      :token_exchange_grant_type_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The summary information about an online evaluation configuration, including basic metadata and execution status. </p>
    # @!attribute online_evaluation_config_arn
    #   <p> The Amazon Resource Name (ARN) of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute online_evaluation_config_id
    #   <p> The unique identifier of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute online_evaluation_config_name
    #   <p> The name of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute execution_status
    #   <p> The execution status indicating whether the online evaluation is currently running. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The timestamp when the online evaluation configuration was created. </p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p> The timestamp when the online evaluation configuration was last updated. </p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p> The reason for failure if the online evaluation configuration execution failed. </p>
    #   @return [String]
    # @!attribute insights
    #   <p>The list of insight types configured for this evaluation.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute clustering_config
    #   <p>The clustering configuration for periodic batch evaluation.</p>
    #   @return [Types::ClusteringConfig]
    class OnlineEvaluationConfigSummary < Struct.new(
      nil,
      :online_evaluation_config_arn,
      :online_evaluation_config_id,
      :online_evaluation_config_name,
      :description,
      :status,
      :execution_status,
      :created_at,
      :updated_at,
      :failure_reason,
      :insights,
      :clustering_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration for using models served through the OpenResponses API in evaluator assessments, including model selection and inference parameters. </p>
    # @!attribute model_id
    #   <p> The identifier of the model to use for evaluation. </p>
    #   @return [String]
    # @!attribute max_output_tokens
    #   <p> The maximum number of tokens to generate in the model response, including visible output and reasoning tokens. </p>
    #   @return [Integer]
    # @!attribute temperature
    #   <p> The temperature value that controls randomness in the model's responses. Lower values produce more deterministic outputs. </p>
    #   @return [Float]
    # @!attribute top_p
    #   <p> The top-p sampling parameter that controls the diversity of the model's responses by limiting the cumulative probability of token choices. </p>
    #   @return [Float]
    # @!attribute reasoning
    #   <p> The reasoning configuration for reasoning models. Non-reasoning models ignore this configuration. </p>
    #   @return [Types::ReasoningConfiguration]
    class OpenResponsesEvaluatorModelConfig < Struct.new(
      nil,
      :model_id,
      :max_output_tokens,
      :temperature,
      :top_p,
      :reasoning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration that specifies where evaluation results should be written for monitoring and analysis. </p>
    # @!attribute cloud_watch_config
    #   <p> The CloudWatch configuration for writing evaluation results to CloudWatch logs with embedded metric format. </p>
    #   @return [Types::CloudWatchOutputConfig]
    class OutputConfig < Struct.new(
      nil,
      :cloud_watch_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an HTTP passthrough target. A passthrough target forwards requests directly to an external HTTP endpoint.</p>
    # @!attribute endpoint
    #   <p>The HTTPS endpoint that the gateway forwards requests to for this passthrough target.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The application protocol that the passthrough target implements. This value is required for passthrough targets:</p> <ul> <li> <p> <code>MCP</code> - The Model Context Protocol.</p> </li> <li> <p> <code>A2A</code> - The Agent-to-Agent protocol.</p> </li> <li> <p> <code>INFERENCE</code> - The protocol for routing requests to a large language model (LLM) provider.</p> </li> <li> <p> <code>CUSTOM</code> - A custom application protocol.</p> </li> </ul>
    #   @return [String]
    # @!attribute schema
    #   <p>The API schema configuration that defines the structure of the passthrough target's API.</p>
    #   @return [Types::HttpApiSchemaConfiguration]
    # @!attribute stickiness_configuration
    #   <p>The session stickiness configuration for the passthrough target. This configuration routes requests within the same session to the same target.</p>
    #   @return [Types::StickinessConfiguration]
    # @!attribute static_query_parameters
    #   <p>A map of static query parameters that the gateway always appends to the outbound URL when forwarding requests to the target. The total outbound URL length, which includes the endpoint and the percent-encoded query parameters, is enforced by the service.</p>
    #   @return [Hash<String, String>]
    # @!attribute static_query_parameter_conflict_resolution
    #   <p>Controls precedence when a client request supplies a query parameter whose name matches a configured static query parameter. If not set, defaults to <code>CLIENT_OVERRIDE</code>:</p> <ul> <li> <p> <code>CLIENT_OVERRIDE</code> - The client-supplied value overrides the configured static value for that parameter name.</p> </li> <li> <p> <code>STATIC_OVERRIDE</code> - The configured static value is retained, overriding the client-supplied value for that parameter name.</p> </li> </ul>
    #   @return [String]
    class PassthroughTargetConfiguration < Struct.new(
      nil,
      :endpoint,
      :protocol_type,
      :schema,
      :stickiness_configuration,
      :static_query_parameters,
      :static_query_parameter_conflict_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a payment connector.</p>
    # @!attribute payment_connector_id
    #   <p>The unique identifier of the payment connector.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the payment connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the payment connector, which determines the payment provider integration.</p>
    #   @return [String]
    # @!attribute provision_mode
    #   <p>Specifies how the payment connector was provisioned. Payment connectors that were created before this field was available return <code>MANUAL</code>.</p> <ul> <li> <p> <code>MANUAL</code> - You provided the credential provider configurations, so you own the credentials.</p> </li> <li> <p> <code>QUICK_CREATE</code> - AgentCore provisioned the credential provider for you, so the credentials are service-managed and you can rotate them with <code>RotatePaymentConnectorCredentials</code>.</p> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the payment connector. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the payment connector was last updated.</p>
    #   @return [Time]
    class PaymentConnectorSummary < Struct.new(
      nil,
      :payment_connector_id,
      :name,
      :type,
      :provision_mode,
      :status,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a payment credential provider that stores authentication credentials for a payment provider.</p>
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the credential provider that stores the authentication credentials for the payment provider.</p>
    #   @return [String]
    class PaymentCredentialProviderConfiguration < Struct.new(
      nil,
      :credential_provider_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a payment credential provider.</p>
    # @!attribute name
    #   <p>The name of the payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor type for the payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the payment credential provider.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the payment credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the payment credential provider was last updated.</p>
    #   @return [Time]
    class PaymentCredentialProviderItem < Struct.new(
      nil,
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a payment manager.</p>
    # @!attribute payment_manager_arn
    #   <p>The Amazon Resource Name (ARN) of the payment manager.</p>
    #   @return [String]
    # @!attribute payment_manager_id
    #   <p>The unique identifier of the payment manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the payment manager.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the payment manager.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer used by the payment manager.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the payment manager.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the payment manager. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the payment manager was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the payment manager was last updated.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt sensitive payment manager data at rest, if configured.</p>
    #   @return [String]
    class PaymentManagerSummary < Struct.new(
      nil,
      :payment_manager_arn,
      :payment_manager_id,
      :name,
      :description,
      :authorizer_type,
      :role_arn,
      :status,
      :created_at,
      :last_updated_at,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provider configuration input — contains secrets for creation and update. Varies by vendor type.</p>
    # @!attribute coinbase_cdp_configuration
    #   <p>The Coinbase CDP configuration.</p>
    #   @return [Types::CoinbaseCdpConfigurationInput]
    # @!attribute stripe_privy_configuration
    #   <p>The Stripe Privy configuration.</p>
    #   @return [Types::StripePrivyConfigurationInput]
    class PaymentProviderConfigurationInput < Struct.new(
      :coinbase_cdp_configuration,
      :stripe_privy_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CoinbaseCdpConfiguration < PaymentProviderConfigurationInput; end
      class StripePrivyConfiguration < PaymentProviderConfigurationInput; end
      class Unknown < PaymentProviderConfigurationInput; end
    end

    # <p>Provider configuration output — no raw secrets, only ARNs. Varies by vendor type.</p>
    # @!attribute coinbase_cdp_configuration
    #   <p>The Coinbase CDP configuration.</p>
    #   @return [Types::CoinbaseCdpConfigurationOutput]
    # @!attribute stripe_privy_configuration
    #   <p>The Stripe Privy configuration.</p>
    #   @return [Types::StripePrivyConfigurationOutput]
    class PaymentProviderConfigurationOutput < Struct.new(
      :coinbase_cdp_configuration,
      :stripe_privy_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CoinbaseCdpConfiguration < PaymentProviderConfigurationOutput; end
      class StripePrivyConfiguration < PaymentProviderConfigurationOutput; end
      class Unknown < PaymentProviderConfigurationOutput; end
    end

    # <p>The permissions configuration for a capacity provider. This specifies the IAM role that AgentCore uses to manage the Amazon EC2 instances for the capacity provider on your behalf.</p>
    # @!attribute capacity_provider_operator_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that AgentCore assumes to manage the capacity provider, including launching, tagging, and terminating instances and their network interfaces. We recommend scoping this role to the minimum permissions that your workloads require.</p>
    #   @return [String]
    class PermissionsConfiguration < Struct.new(
      nil,
      :capacity_provider_operator_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a complete policy resource within the AgentCore Policy system. Policies are ARN-able resources that contain Cedar or Dogwood policy statements and associated metadata for controlling agent behavior and access decisions. Each policy belongs to a policy engine and defines fine-grained authorization rules that are evaluated in real-time as agents interact with tools through Gateway. Policies use Cedar or Dogwood to specify who (principals based on OAuth claims like username, role, or scope) can perform what actions (tool calls) on which resources (Gateways), with optional conditions for attribute-based access control. Multiple policies can apply to a single request, with forbid-wins semantics ensuring that security restrictions are never accidentally overridden.</p>
    # @!attribute policy_id
    #   <p>The unique identifier for the policy. This system-generated identifier consists of the user name plus a 10-character generated suffix and serves as the primary key for policy operations.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned immutable name for the policy. This human-readable identifier must be unique within the account and cannot exceed 48 characters.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages this policy. This establishes the policy engine context for policy evaluation and management.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy was originally created. This is automatically set by the service and used for auditing and lifecycle management.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last modified. This tracks the most recent changes to the policy configuration or metadata.</p>
    #   @return [Time]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy. This globally unique identifier can be used for cross-service references and IAM policy statements.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The current enforcement mode of the policy.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The Cedar or Dogwood policy statement that defines the access control rules. This contains the actual policy logic used for agent behavior control and access decisions.</p>
    #   @return [Types::PolicyDefinition]
    # @!attribute description
    #   <p>A human-readable description of the policy's purpose and functionality. Limited to 4,096 characters, this helps administrators understand and manage the policy.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the policy status. This provides details about any failures or the current state of the policy lifecycle.</p>
    #   @return [Array<String>]
    class Policy < Struct.new(
      nil,
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode,
      :definition,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforcement_mode] = 'ACTIVE' unless options.key?(:enforcement_mode)
        super
      end
    end

    # <p>Represents the definition structure for policies within the AgentCore Policy system. This structure encapsulates different policy formats and languages that can be used to define access control rules.</p>
    # @!attribute cedar
    #   <p>The Cedar policy definition within the policy definition structure. This contains the Cedar policy statement that defines the authorization logic using Cedar's human-readable, analyzable policy language. Cedar policies specify principals (who can access), actions (what operations are allowed), resources (what can be accessed), and optional conditions for fine-grained control. Cedar provides a formal policy language designed for authorization with deterministic evaluation, making policies testable, reviewable, and auditable. All Cedar policies follow a default-deny model where actions are denied unless explicitly permitted, and forbid policies always override permit policies.</p>
    #   @return [Types::CedarPolicy]
    # @!attribute policy_generation
    #   <p>The generated policy asset information within the policy definition structure. This contains information identifying a generated policy asset from the AI-powered policy generation process within the AgentCore Policy system. Each asset contains a Dogwood policy statement generated from natural language input, along with associated metadata and analysis findings to help users evaluate and select the most appropriate policy option.</p>
    #   @return [Types::PolicyGenerationDetails]
    # @!attribute policy
    #   <p>The Dogwood policy statement that defines the access control rules. This policy definition can include Dogwood policies and supports temporal conditions and information providers such as guardrails.</p>
    #   @return [Types::PolicyStatement]
    class PolicyDefinition < Struct.new(
      :cedar,
      :policy_generation,
      :policy,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Cedar < PolicyDefinition; end
      class PolicyGeneration < PolicyDefinition; end
      class Policy < PolicyDefinition; end
      class Unknown < PolicyDefinition; end
    end

    # <p>Represents a policy engine resource within the AgentCore Policy system. Policy engines serve as containers for grouping related policies and provide the execution context for policy evaluation and management. Each policy engine can be associated with one Gateway (one engine per Gateway), where it intercepts all agent tool calls and evaluates them against the contained policies before allowing tools to execute. The policy engine maintains the Cedar schema generated from the Gateway's tool manifest, ensuring that policies are validated against the actual tools and parameters available. Policy engines support two enforcement modes that can be configured when associating with a Gateway: log-only mode for testing (evaluates decisions without blocking) and enforce mode for production (actively allows or denies based on policy evaluation).</p>
    # @!attribute policy_engine_id
    #   <p>The unique identifier for the policy engine. This system-generated identifier consists of the user name plus a 10-character generated suffix and serves as the primary key for policy engine operations.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned immutable name for the policy engine. This human-readable identifier must be unique within the account and cannot exceed 48 characters.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy engine was originally created. This is automatically set by the service and used for auditing and lifecycle management.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy engine was last modified. This tracks the most recent changes to the policy engine configuration or metadata.</p>
    #   @return [Time]
    # @!attribute policy_engine_arn
    #   <p>The Amazon Resource Name (ARN) of the policy engine. This globally unique identifier can be used for cross-service references and IAM policy statements.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy engine.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A human-readable description of the policy engine's purpose and scope. Limited to 4,096 characters, this helps administrators understand the policy engine's role in the overall governance strategy.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the policy engine status. This provides details about any failures or the current state of the policy engine lifecycle.</p>
    #   @return [Array<String>]
    class PolicyEngine < Struct.new(
      nil,
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a metadata-only summary of a policy engine resource. This structure contains resource identifiers, status, and timestamps without customer-encrypted fields such as description or status reasons. Policy engine summaries are returned by operations that do not require access to the customer's KMS key.</p>
    # @!attribute policy_engine_id
    #   <p>The unique identifier for the policy engine.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the policy engine.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy engine was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy engine was last modified.</p>
    #   @return [Time]
    # @!attribute policy_engine_arn
    #   <p>The Amazon Resource Name (ARN) of the policy engine.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy engine.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    #   @return [String]
    class PolicyEngineSummary < Struct.new(
      nil,
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a policy generation request within the AgentCore Policy system. Tracks the AI-powered conversion of natural language descriptions into Dogwood policy statements, enabling users to author policies by describing authorization requirements in plain English. The generation process analyzes the natural language input along with the Gateway's tool context and Cedar schema to produce one or more validated policy options. Each generation request tracks the status of the conversion process and maintains findings about the generated policies, including validation results and potential issues. Generated policy assets remain available for one week after successful generation, allowing time to review and create policies from the generated options.</p>
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine associated with this generation request.</p>
    #   @return [String]
    # @!attribute policy_generation_id
    #   <p>The unique identifier for this policy generation request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name for this policy generation request.</p>
    #   @return [String]
    # @!attribute policy_generation_arn
    #   <p>The ARN of this policy generation request.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource information associated with this policy generation.</p>
    #   @return [Types::Resource]
    # @!attribute created_at
    #   <p>The timestamp when this policy generation request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when this policy generation was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of this policy generation request.</p>
    #   @return [String]
    # @!attribute findings
    #   <p>Findings and insights from this policy generation process.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the generation status.</p>
    #   @return [Array<String>]
    class PolicyGeneration < Struct.new(
      nil,
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a generated policy asset from the AI-powered policy generation process within the AgentCore Policy system. Each asset contains a Dogwood policy statement generated from natural language input, along with associated metadata and analysis findings to help users evaluate and select the most appropriate policy option.</p>
    # @!attribute policy_generation_asset_id
    #   <p>The unique identifier for this generated policy asset within the policy generation request. This ID can be used to reference specific generated policy options when creating actual policies from the generation results.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Represents the definition structure for policies within the AgentCore Policy system. This structure encapsulates different policy formats and languages that can be used to define access control rules.</p>
    #   @return [Types::PolicyDefinition]
    # @!attribute raw_text_fragment
    #   <p>The portion of the original natural language input that this generated policy asset addresses. This helps users understand which part of their policy description was translated into this specific Dogwood policy statement, enabling better policy selection and refinement. When a single natural language input describes multiple authorization requirements, the generation process creates separate policy assets for each requirement, with each asset's rawTextFragment showing which requirement it addresses. Use this mapping to verify that all parts of your natural language input were correctly translated into Dogwood policies.</p>
    #   @return [String]
    # @!attribute findings
    #   <p>Analysis findings and insights related to this specific generated policy asset. These findings may include validation results, potential issues, or recommendations for improvement to help users evaluate the quality and appropriateness of the generated policy.</p>
    #   @return [Array<Types::Finding>]
    class PolicyGenerationAsset < Struct.new(
      nil,
      :policy_generation_asset_id,
      :definition,
      :raw_text_fragment,
      :findings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the information identifying a generated policy asset from the AI-powered policy generation process within the AgentCore Policy system. Each asset contains a Dogwood policy statement generated from natural language input, along with associated metadata and analysis findings to help users evaluate and select the most appropriate policy option.</p>
    # @!attribute policy_generation_id
    #   <p>The unique identifier for this policy generation request.</p>
    #   @return [String]
    # @!attribute policy_generation_asset_id
    #   <p>The unique identifier for this generated policy asset within the policy generation request.</p>
    #   @return [String]
    class PolicyGenerationDetails < Struct.new(
      nil,
      :policy_generation_id,
      :policy_generation_asset_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a metadata-only summary of a policy generation resource. This structure contains resource identifiers, status, timestamps, and findings without customer-encrypted fields such as status reasons. Policy generation summaries are returned by operations that do not require access to the customer's KMS key.</p>
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine associated with this generation request.</p>
    #   @return [String]
    # @!attribute policy_generation_id
    #   <p>The unique identifier for this policy generation request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name for this policy generation request.</p>
    #   @return [String]
    # @!attribute policy_generation_arn
    #   <p>The ARN of this policy generation request.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource information associated with this policy generation.</p>
    #   @return [Types::Resource]
    # @!attribute created_at
    #   <p>The timestamp when this policy generation request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when this policy generation was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of this policy generation request.</p>
    #   @return [String]
    # @!attribute findings
    #   <p>Findings and insights from this policy generation process.</p>
    #   @return [String]
    class PolicyGenerationSummary < Struct.new(
      nil,
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An AgentCore Cedar or Dogwood policy statement, which supports plain Cedar policies, temporal policies, and guardrails definitions.</p>
    # @!attribute statement
    #   <p>The body of the AgentCore Cedar or Dogwood policy statement. Contains the policy logic, which can be a Cedar policy, a temporal policy, or a guardrails definition.</p>
    #   @return [String]
    class PolicyStatement < Struct.new(
      nil,
      :statement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a metadata-only summary of a policy resource. This structure contains resource identifiers, status, and timestamps without customer-encrypted fields such as definition, description, or status reasons. Policy summaries are returned by operations that do not require access to the customer's KMS key.</p>
    # @!attribute policy_id
    #   <p>The unique identifier for the policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name of the policy.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages this policy.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the policy was originally created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last modified.</p>
    #   @return [Time]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the policy.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The current enforcement mode of the policy.</p>
    #   @return [String]
    class PolicySummary < Struct.new(
      nil,
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforcement_mode] = 'ACTIVE' unless options.key?(:enforcement_mode)
        super
      end
    end

    # <p>The private endpoint configuration for a gateway target. Defines how the gateway connects to private resources in your VPC.</p>
    # @!attribute self_managed_lattice_resource
    #   <p>Configuration for connecting to a private resource using a self-managed VPC Lattice resource configuration.</p>
    #   @return [Types::SelfManagedLatticeResource]
    # @!attribute managed_vpc_resource
    #   <p>Configuration for connecting to a private resource using a managed VPC Lattice resource. The gateway creates and manages the VPC Lattice resources on your behalf.</p>
    #   @return [Types::ManagedVpcResource]
    class PrivateEndpoint < Struct.new(
      :self_managed_lattice_resource,
      :managed_vpc_resource,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SelfManagedLatticeResource < PrivateEndpoint; end
      class ManagedVpcResource < PrivateEndpoint; end
      class Unknown < PrivateEndpoint; end
    end

    # <p>A mapping of a specific domain to a private endpoint for secure connectivity through a VPC Lattice resource configuration.</p>
    # @!attribute domain
    #   <p>The domain to override with a private endpoint.</p>
    #   @return [String]
    # @!attribute private_endpoint
    #   <p>The private endpoint configuration for the specified domain.</p>
    #   @return [Types::PrivateEndpoint]
    class PrivateEndpointOverride < Struct.new(
      nil,
      :domain,
      :private_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The private key configuration for private_key_jwt client authentication.</p>
    # @!attribute private_key_source
    #   <p>The private key source for the JWT client assertion.</p>
    #   @return [Types::PrivateKeySource]
    # @!attribute signing_algorithm
    #   <p>The algorithm used to sign the JWT client assertion. Valid values are <code>RS256</code>, <code>PS256</code>, and <code>ES256</code>.</p>
    #   @return [String]
    # @!attribute additional_header_claims
    #   <p>A map of additional claims to include in the JWT client assertion header. Standard header claims such as <code>alg</code> and <code>typ</code> cannot be added.</p>
    #   @return [Hash<String, String>]
    # @!attribute additional_payload_claims
    #   <p>A map of additional claims to include in the JWT client assertion payload. Payload claims generated by the service, such as <code>iss</code>, <code>sub</code>, <code>jti</code>, and <code>exp</code>, cannot be added.</p>
    #   @return [Hash<String, String>]
    class PrivateKeyJwtConfig < Struct.new(
      nil,
      :private_key_source,
      :signing_algorithm,
      :additional_header_claims,
      :additional_payload_claims,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the private key source configuration for a JWT client assertion.</p>
    # @!attribute kms_key_source
    #   <p>The KMS key source for the JWT client assertion.</p>
    #   @return [Types::KmsKeySourceType]
    class PrivateKeySource < Struct.new(
      :kms_key_source,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KmsKeySource < PrivateKeySource; end
      class Unknown < PrivateKeySource; end
    end

    # <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    # @!attribute server_protocol
    #   <p>The server protocol for the agent runtime. This field specifies which protocol the agent runtime uses to communicate with clients.</p>
    #   @return [String]
    class ProtocolConfiguration < Struct.new(
      nil,
      :server_protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that controls how a provider prefix is applied to model IDs during translation.</p>
    # @!attribute strip
    #   <p>Whether clients can omit the provider prefix from model IDs. If <code>true</code>, the gateway accepts model IDs without the prefix and restores the full prefixed form before forwarding to the provider. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute separator
    #   <p>The single character that separates the provider prefix from the model name (for example, <code>.</code>). The default is <code>.</code>.</p>
    #   @return [String]
    class ProviderPrefix < Struct.new(
      nil,
      :strip,
      :separator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:strip] = false unless options.key?(:strip)
        options[:separator] = '.' unless options.key?(:separator)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to create or update the resource policy.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource policy to create or update.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The resource policy that was created or updated.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      nil,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the rate configuration for a rate limit metric, specifying the allowed rate and time period.</p>
    # @!attribute rate
    #   <p>The rate value for the limit. For request limits, this is the number of requests allowed per period. For token limits, this is the number of tokens allowed per period. For connection limits, this is the number of concurrent connections allowed.</p>
    #   @return [Float]
    # @!attribute period
    #   <p>The time period for the rate limit. Valid values:</p> <ul> <li> <p> <code>second</code>—Measures the rate limit over a one-second window.</p> </li> <li> <p> <code>minute</code>—Measures the rate limit over a one-minute window.</p> </li> </ul>
    #   @return [String]
    class RateConfig < Struct.new(
      nil,
      :rate,
      :period,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The rating scale that defines how evaluators should score agent performance, supporting both numerical and categorical scales. </p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute numerical
    #   <p> The numerical rating scale with defined score values and descriptions for quantitative evaluation. </p>
    #   @return [Array<Types::NumericalScaleDefinition>]
    # @!attribute categorical
    #   <p> The categorical rating scale with named categories and definitions for qualitative evaluation. </p>
    #   @return [Array<Types::CategoricalScaleDefinition>]
    class RatingScale < Struct.new(
      :numerical,
      :categorical,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Numerical < RatingScale; end
      class Categorical < RatingScale; end
      class Unknown < RatingScale; end
    end

    # <p> The reasoning configuration that controls how a reasoning model allocates effort during evaluation. </p>
    # @!attribute effort
    #   <p> The level of reasoning effort the model applies when generating a response. For supported values, see the model provider's documentation. </p>
    #   @return [String]
    class ReasoningConfiguration < Struct.new(
      nil,
      :effort,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the record expiry (long-term memory time-to-live) for a memory strategy. Provide exactly one of <code>recordExpiryDurationDays</code> or <code>action</code>. Set <code>recordExpiryDurationDays</code> to configure or update the time-to-live, or set <code>action</code> to <code>REMOVE</code> to remove a previously configured time-to-live.</p>
    # @!attribute record_expiry_duration_days
    #   <p>The duration, in days, after which memory records generated by this strategy expire. The minimum is 31 days.</p>
    #   @return [Integer]
    # @!attribute action
    #   <p>The action to apply to the existing record expiry (long-term memory time-to-live) configuration. Set to <code>REMOVE</code> to remove a previously configured time-to-live so that newer records no longer expire. This value is not applicable on create paths.</p>
    #   @return [String]
    class RecordExpirySpecification < Struct.new(
      :record_expiry_duration_days,
      :action,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RecordExpiryDurationDays < RecordExpirySpecification; end
      class Action < RecordExpirySpecification; end
      class Unknown < RecordExpirySpecification; end
    end

    # <p>The recording configuration for a browser. This structure defines how browser sessions are recorded.</p>
    # @!attribute enabled
    #   <p>Indicates whether recording is enabled for the browser. When set to true, browser sessions are recorded.</p>
    #   @return [Boolean]
    # @!attribute s3_location
    #   <p>The Amazon S3 location where browser recordings are stored. This location contains the recorded browser sessions.</p>
    #   @return [Types::S3Location]
    class RecordingConfig < Struct.new(
      nil,
      :enabled,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Contains reflection configuration information for a memory strategy.</p>
    # @!attribute custom_reflection_configuration
    #   <p>The configuration for a custom reflection strategy.</p>
    #   @return [Types::CustomReflectionConfiguration]
    # @!attribute episodic_reflection_configuration
    #   <p>The configuration for the episodic reflection strategy.</p>
    #   @return [Types::EpisodicReflectionConfiguration]
    class ReflectionConfiguration < Struct.new(
      :custom_reflection_configuration,
      :episodic_reflection_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CustomReflectionConfiguration < ReflectionConfiguration; end
      class EpisodicReflectionConfiguration < ReflectionConfiguration; end
      class Unknown < ReflectionConfiguration; end
    end

    # <p>A pairing of a credential provider type with its corresponding provider details for authenticating with external sources.</p>
    # @!attribute credential_provider_type
    #   <p>The type of credential provider.</p> <ul> <li> <p> <code>OAUTH</code> - OAuth-based authentication.</p> </li> <li> <p> <code>IAM</code> - Amazon Web Services IAM-based authentication using SigV4 signing.</p> </li> </ul>
    #   @return [String]
    # @!attribute credential_provider
    #   <p>The credential provider configuration details. The structure depends on the <code>credentialProviderType</code>.</p>
    #   @return [Types::RegistryRecordCredentialProviderUnion]
    class RegistryRecordCredentialProviderConfiguration < Struct.new(
      nil,
      :credential_provider_type,
      :credential_provider,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union of supported credential provider types for registry record synchronization.</p>
    # @!attribute oauth_credential_provider
    #   <p>The OAuth credential provider configuration for authenticating with the external source.</p>
    #   @return [Types::RegistryRecordOAuthCredentialProvider]
    # @!attribute iam_credential_provider
    #   <p>The IAM credential provider configuration for authenticating with the external source using SigV4 signing.</p>
    #   @return [Types::RegistryRecordIamCredentialProvider]
    class RegistryRecordCredentialProviderUnion < Struct.new(
      :oauth_credential_provider,
      :iam_credential_provider,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OauthCredentialProvider < RegistryRecordCredentialProviderUnion; end
      class IamCredentialProvider < RegistryRecordCredentialProviderUnion; end
      class Unknown < RegistryRecordCredentialProviderUnion; end
    end

    # <p>IAM credential provider configuration for authenticating with an external source using SigV4 signing during synchronization.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assume for SigV4 signing.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The SigV4 signing service name (for example, <code>execute-api</code> or <code>bedrock-agentcore</code>).</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services region for SigV4 signing (for example, <code>us-west-2</code>). If not specified, the region is extracted from the MCP server URL hostname, with fallback to the service's own region.</p>
    #   @return [String]
    class RegistryRecordIamCredentialProvider < Struct.new(
      nil,
      :role_arn,
      :service,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>OAuth credential provider configuration for authenticating with an external source during synchronization.</p>
    # @!attribute provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth credential provider resource.</p>
    #   @return [String]
    # @!attribute grant_type
    #   <p>The OAuth grant type. Currently only <code>CLIENT_CREDENTIALS</code> is supported.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The OAuth scopes to request during authentication.</p>
    #   @return [Array<String>]
    # @!attribute custom_parameters
    #   <p>Additional custom parameters for the OAuth flow.</p>
    #   @return [Hash<String, String>]
    class RegistryRecordOAuthCredentialProvider < Struct.new(
      nil,
      :provider_arn,
      :grant_type,
      :scopes,
      :custom_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a registry record.</p>
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry that contains the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the registry record.</p>
    #   @return [String]
    # @!attribute descriptor_type
    #   <p>The descriptor type of the registry record. Possible values are <code>MCP</code>, <code>A2A</code>, <code>CUSTOM</code>, and <code>AGENT_SKILLS</code>.</p>
    #   @return [String]
    # @!attribute record_version
    #   <p>The version of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the registry record. Possible values include <code>CREATING</code>, <code>DRAFT</code>, <code>APPROVED</code>, <code>PENDING_APPROVAL</code>, <code>REJECTED</code>, <code>DEPRECATED</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, and <code>UPDATE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry record was last updated.</p>
    #   @return [Time]
    class RegistryRecordSummary < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :description,
      :descriptor_type,
      :record_version,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a registry.</p>
    # @!attribute name
    #   <p>The name of the registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the registry.</p>
    #   @return [String]
    # @!attribute registry_id
    #   <p>The unique identifier of the registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer used by the registry. This controls the authorization method for the Search and Invoke APIs used by consumers.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the registry. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, <code>DELETING</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status, typically set when the status is a failure state.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry was last updated.</p>
    #   @return [Time]
    class RegistrySummary < Struct.new(
      nil,
      :name,
      :description,
      :registry_id,
      :registry_arn,
      :authorizer_type,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for HTTP request headers that will be passed through to the runtime.</p>
    # @!attribute request_header_allowlist
    #   <p>A list of HTTP request headers that are allowed to be passed through to the runtime.</p>
    #   @return [Array<String>]
    class RequestHeaderConfiguration < Struct.new(
      :request_header_allowlist,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RequestHeaderAllowlist < RequestHeaderConfiguration; end
      class Unknown < RequestHeaderConfiguration; end
    end

    # <p>Represents a resource within the AgentCore Policy system. Resources are the targets of policy evaluation. Currently, only AgentCore Gateways are supported as resources for policy enforcement.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the resource. This globally unique identifier specifies the exact resource that policies will be evaluated against for access control decisions. </p>
    #   @return [String]
    class Resource < Struct.new(
      :arn,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Arn < Resource; end
      class Unknown < Resource; end
    end

    # <p>Exception thrown when a resource limit is exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The location of a resource.</p>
    # @!attribute s3
    #   <p>The Amazon S3 location for storing data. This structure defines where in Amazon S3 data is stored.</p>
    #   @return [Types::S3Location]
    class ResourceLocation < Struct.new(
      :s3,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ResourceLocation; end
      class Unknown < ResourceLocation; end
    end

    # <p>This exception is thrown when a resource referenced by the operation does not exist</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed because of a conflicting request. Retry the request.</p>
    # @!attribute message
    #   @return [String]
    class RetryableConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the root volume of a capacity provider instance. Specify the amount of free space to guarantee on the root volume. The device name and delete-on-termination settings are fixed and cannot be changed.</p>
    # @!attribute volume_type
    #   <p>The Amazon EBS volume type. If you do not specify a type, the default is <code>gp3</code>.</p>
    #   @return [String]
    # @!attribute iops
    #   <p>The number of IOPS to provision. For <code>gp3</code>, <code>io1</code>, and <code>io2</code> volumes, this is the number of IOPS provisioned for the volume. For <code>gp2</code> volumes, this sets the baseline IOPS performance. It also controls the rate at which the volume accumulates I/O credits for bursting. Supported values: <code>gp3</code>, 3,000–80,000; <code>io1</code>, 100–64,000; <code>io2</code>, 100–256,000.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>The throughput to provision, in MiB/s. Valid only for <code>gp3</code> volumes. Valid range: 125–2,000 MiB/s.</p>
    #   @return [Integer]
    # @!attribute encrypted
    #   <p>Specifies whether to encrypt the volume. Encrypted volumes can be attached only to instances that support Amazon EBS encryption. If you create a volume from a snapshot, you cannot specify an encryption value.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>The identifier (key ID, key alias, key ARN, or alias ARN) of the customer managed KMS key to use for Amazon EBS encryption.</p>
    #   @return [String]
    # @!attribute free_space_gi_b
    #   <p>The free space guaranteed on the root volume, in GiB. AgentCore adds the operating system overhead on top of this value. The default is 8 GiB.</p>
    #   @return [Integer]
    class RootVolumeConfiguration < Struct.new(
      nil,
      :volume_type,
      :iops,
      :throughput,
      :encrypted,
      :kms_key_id,
      :free_space_gi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:volume_type] = 'gp3' unless options.key?(:volume_type)
        super
      end
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The unique identifier of the payment connector whose credentials you want to rotate.</p>
    #   @return [String]
    # @!attribute credentials_to_rotate
    #   <p>The credentials to rotate. Specify the member that matches the payment connector's <code>type</code>. Each credential that you select is rotated independently.</p>
    #   @return [Types::CredentialRotationConfig]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class RotatePaymentConnectorCredentialsRequest < Struct.new(
      nil,
      :payment_manager_id,
      :payment_connector_id,
      :credentials_to_rotate,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_connector_id
    #   <p>The unique identifier of the payment connector.</p>
    #   @return [String]
    # @!attribute payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the payment connector was last updated, which is when the rotation completed.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the payment connector, which is <code>READY</code> after a successful rotation.</p>
    #   @return [String]
    class RotatePaymentConnectorCredentialsResponse < Struct.new(
      nil,
      :payment_connector_id,
      :payment_manager_id,
      :last_updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An action that routes requests to a gateway target, either statically or with weighted traffic splitting.</p>
    # @!attribute static_route
    #   <p>A static route that sends all matching requests to a single target.</p>
    #   @return [Types::StaticRoute]
    # @!attribute weighted_route
    #   <p>A weighted route that splits traffic between multiple targets.</p>
    #   @return [Types::WeightedRoute]
    class RouteToTargetAction < Struct.new(
      :static_route,
      :weighted_route,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StaticRoute < RouteToTargetAction; end
      class WeightedRoute < RouteToTargetAction; end
      class Unknown < RouteToTargetAction; end
    end

    # <p> The evaluation rule that defines sampling configuration, filtering criteria, and session detection settings for online evaluation. </p>
    # @!attribute sampling_config
    #   <p> The sampling configuration that determines what percentage of agent traces to evaluate. </p>
    #   @return [Types::SamplingConfig]
    # @!attribute filters
    #   <p> The list of filters that determine which agent traces should be included in the evaluation based on trace properties. </p>
    #   @return [Array<Types::Filter>]
    # @!attribute session_config
    #   <p> The session configuration that defines timeout settings for detecting when agent sessions are complete and ready for evaluation. </p>
    #   @return [Types::SessionConfig]
    class Rule < Struct.new(
      nil,
      :sampling_config,
      :filters,
      :session_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for microVM metadata service settings.</p>
    # @!attribute require_mmdsv2
    #   <p>Enables MMDSv2 (microVM Metadata Service Version 2) requirement for the agent runtime. When set to <code>true</code>, the runtime microVM will only accept MMDSv2 requests.</p>
    #   @return [Boolean]
    class RuntimeMetadataConfiguration < Struct.new(
      nil,
      :require_mmdsv2,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an AgentCore Runtime target. Specifies the agent runtime to route requests to via HTTP.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime to route requests to.</p>
    #   @return [String]
    # @!attribute qualifier
    #   <p>The qualifier for the agent runtime, used to target a specific endpoint version. If not specified, the default endpoint is used.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>The API schema configuration that defines the structure of the runtime target's API.</p>
    #   @return [Types::HttpApiSchemaConfiguration]
    class RuntimeTargetConfiguration < Struct.new(
      nil,
      :arn,
      :qualifier,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a PEM-encoded private CA certificate stored as an Amazon S3 object.</p>
    # @!attribute uri
    #   <p>The URI of the Amazon S3 object that contains the PEM-encoded certificate.</p>
    #   @return [String]
    # @!attribute bucket_owner_account_id
    #   <p>The account ID of the Amazon S3 bucket owner. This ID is used for cross-account access to the bucket.</p>
    #   @return [String]
    class S3CertificateConfiguration < Struct.new(
      nil,
      :uri,
      :bucket_owner_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 configuration for a gateway. This structure defines how the gateway accesses files in Amazon S3.</p>
    # @!attribute uri
    #   <p>The URI of the Amazon S3 object. This URI specifies the location of the object in Amazon S3.</p>
    #   @return [String]
    # @!attribute bucket_owner_account_id
    #   <p>The account ID of the Amazon S3 bucket owner. This ID is used for cross-account access to the bucket.</p>
    #   @return [String]
    class S3Configuration < Struct.new(
      nil,
      :uri,
      :bucket_owner_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for an Amazon S3 Files access point filesystem mounted into the AgentCore Runtime. S3 Files access points provide shared file storage accessible from your AgentCore Runtime sessions.</p>
    # @!attribute access_point_arn
    #   <p>The ARN of the S3 Files access point to mount into the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute mount_path
    #   <p>The mount path for the S3 Files access point inside the AgentCore Runtime. The path must be under <code>/mnt</code> with exactly one subdirectory level (for example, <code>/mnt/data</code>).</p>
    #   @return [String]
    class S3FilesAccessPointConfiguration < Struct.new(
      nil,
      :access_point_arn,
      :mount_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for mounting an Amazon Simple Storage Service (Amazon S3) Files access point that you own into a session.</p>
    # @!attribute access_point_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Storage Service (Amazon S3) Files access point to mount.</p>
    #   @return [String]
    # @!attribute mount_path
    #   <p>The absolute path within the session at which the access point is mounted, for example <code>/mnt/s3data</code>. Each mount path must be unique across all file system configurations in the session.</p>
    #   @return [String]
    # @!attribute file_system_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Storage Service (Amazon S3) Files file system that owns the access point.</p>
    #   @return [String]
    class S3FilesConfiguration < Struct.new(
      nil,
      :access_point_arn,
      :mount_path,
      :file_system_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location for storing data. This structure defines where in Amazon S3 data is stored.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket. This bucket contains the stored data.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>The prefix for objects in the Amazon S3 bucket. This prefix is added to the object keys to organize the data.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the Amazon Amazon S3 object. If not specified, the latest version of the object is used.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :prefix,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Amazon S3 location of a JSONL file containing dataset examples. </p>
    # @!attribute s3_uri
    #   <p> Amazon S3 URI of the JSONL file (for example, <code>s3://my-bucket/path/to/examples.jsonl</code>). </p>
    #   @return [String]
    class S3Source < Struct.new(
      nil,
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration for a Salesforce OAuth2 provider.</p>
    # @!attribute client_id
    #   <p>The client ID for the Salesforce OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the Salesforce OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class SalesforceOauth2ProviderConfigInput < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>Output configuration for a Salesforce OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the Salesforce provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the Salesforce OAuth2 provider.</p>
    #   @return [String]
    class SalesforceOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration that controls what percentage of agent traces are sampled for evaluation to manage evaluation volume and costs. </p>
    # @!attribute sampling_percentage
    #   <p> The percentage of agent traces to sample for evaluation, ranging from 0.01% to 100%. </p>
    #   @return [Float]
    class SamplingConfig < Struct.new(
      nil,
      :sampling_percentage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A schema definition for a gateway target. This structure defines the structure of the API that the target exposes.</p>
    # @!attribute type
    #   <p>The type of the schema definition. This field specifies the data type of the schema.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties of the schema definition. These properties define the fields in the schema.</p>
    #   @return [Hash<String, Types::SchemaDefinition>]
    # @!attribute required
    #   <p>The required fields in the schema definition. These fields must be provided when using the schema.</p>
    #   @return [Array<String>]
    # @!attribute items
    #   <p>The items in the schema definition. This field is used for array types to define the structure of the array elements.</p>
    #   @return [Types::SchemaDefinition]
    # @!attribute description
    #   <p>The description of the schema definition. This description provides information about the purpose and usage of the schema.</p>
    #   @return [String]
    class SchemaDefinition < Struct.new(
      nil,
      :type,
      :properties,
      :required,
      :items,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a secret in Amazon Web Services Secrets Manager.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class Secret < Struct.new(
      nil,
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a reference to a secret stored in Amazon Web Services Secrets Manager.</p>
    # @!attribute secret_id
    #   <p>The ID of the Amazon Web Services Secrets Manager secret that stores the secret value.</p>
    #   @return [String]
    # @!attribute json_key
    #   <p>The JSON key used to extract the secret value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    class SecretReference < Struct.new(
      nil,
      :secret_id,
      :json_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a PEM-encoded private CA certificate stored in an Amazon Web Services Secrets Manager secret.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Secrets Manager secret that contains the PEM-encoded certificate.</p>
    #   @return [String]
    class SecretsManagerCertificateConfiguration < Struct.new(
      nil,
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Secrets Manager location configuration.</p>
    # @!attribute secret_arn
    #   <p>The ARN of the Amazon Web Services Secrets Manager secret containing the certificate.</p>
    #   @return [String]
    class SecretsManagerLocation < Struct.new(
      nil,
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration for a self-managed memory strategy.</p>
    # @!attribute trigger_conditions
    #   <p>A list of conditions that trigger memory processing.</p>
    #   @return [Array<Types::TriggerCondition>]
    # @!attribute invocation_configuration
    #   <p>The configuration to use when invoking memory processing.</p>
    #   @return [Types::InvocationConfiguration]
    # @!attribute historical_context_window_size
    #   <p>The number of historical messages to include in processing context.</p>
    #   @return [Integer]
    class SelfManagedConfiguration < Struct.new(
      nil,
      :trigger_conditions,
      :invocation_configuration,
      :historical_context_window_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration for a self-managed memory strategy.</p>
    # @!attribute trigger_conditions
    #   <p>A list of conditions that trigger memory processing.</p>
    #   @return [Array<Types::TriggerConditionInput>]
    # @!attribute invocation_configuration
    #   <p>Configuration to invoke a self-managed memory processing pipeline with.</p>
    #   @return [Types::InvocationConfigurationInput]
    # @!attribute historical_context_window_size
    #   <p>Number of historical messages to include in processing context.</p>
    #   @return [Integer]
    class SelfManagedConfigurationInput < Struct.new(
      nil,
      :trigger_conditions,
      :invocation_configuration,
      :historical_context_window_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:historical_context_window_size] = 4 unless options.key?(:historical_context_window_size)
        super
      end
    end

    # <p>Configuration for a self-managed VPC Lattice resource. You create and manage the VPC Lattice resource gateway and resource configuration, then provide the resource configuration identifier.</p>
    # @!attribute resource_configuration_identifier
    #   <p>The ARN or ID of the VPC Lattice resource configuration.</p>
    #   @return [String]
    class SelfManagedLatticeResource < Struct.new(
      :resource_configuration_identifier,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ResourceConfigurationIdentifier < SelfManagedLatticeResource; end
      class Unknown < SelfManagedLatticeResource; end
    end

    # <p>Contains semantic consolidation override configuration.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for semantic consolidation.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for semantic consolidation.</p>
    #   @return [String]
    class SemanticConsolidationOverride < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains semantic extraction override configuration.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for semantic extraction.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for semantic extraction.</p>
    #   @return [String]
    class SemanticExtractionOverride < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a semantic memory strategy.</p>
    # @!attribute name
    #   <p>The name of the semantic memory strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the semantic memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The namespaces associated with the semantic memory strategy.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates associated with the semantic memory strategy.</p>
    #   @return [Array<String>]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata on memory records generated by a strategy.</p>
    #   @return [Types::MemoryRecordSchema]
    # @!attribute record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) configuration for memory records generated by this strategy. Set <code>recordExpiryDurationDays</code> to the number of days after which records expire. If not specified, records generated by this strategy do not expire.</p>
    #   @return [Types::RecordExpirySpecification]
    class SemanticMemoryStrategyInput < Struct.new(
      nil,
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :memory_record_schema,
      :record_expiry_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for semantic override configuration in a memory strategy.</p>
    # @!attribute extraction
    #   <p>The extraction configuration for a semantic override.</p>
    #   @return [Types::SemanticOverrideExtractionConfigurationInput]
    # @!attribute consolidation
    #   <p>The consolidation configuration for a semantic override.</p>
    #   @return [Types::SemanticOverrideConsolidationConfigurationInput]
    class SemanticOverrideConfigurationInput < Struct.new(
      nil,
      :extraction,
      :consolidation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for semantic override consolidation configuration in a memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for semantic consolidation.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for semantic consolidation.</p>
    #   @return [String]
    class SemanticOverrideConsolidationConfigurationInput < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for semantic override extraction configuration in a memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for semantic extraction.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for semantic extraction.</p>
    #   @return [String]
    class SemanticOverrideExtractionConfigurationInput < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The server definition for an MCP descriptor. Contains the schema version and inline content for the MCP server configuration.</p>
    # @!attribute schema_version
    #   <p>The schema version of the server definition based on the MCP protocol specification. If not specified, the version is auto-detected from the content.</p>
    #   @return [String]
    # @!attribute inline_content
    #   <p>The JSON content containing the MCP server definition, conforming to the MCP protocol specification.</p>
    #   @return [String]
    class ServerDefinition < Struct.new(
      nil,
      :schema_version,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error occurred.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a request is made beyond the service quota</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The configuration that defines how agent sessions are detected and when they are considered complete for evaluation. </p>
    # @!attribute session_timeout_minutes
    #   <p> The number of minutes of inactivity after which an agent session is considered complete and ready for evaluation. Default is 15 minutes. </p>
    #   @return [Integer]
    class SessionConfig < Struct.new(
      nil,
      :session_timeout_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The session configuration for an MCP gateway. This structure defines settings that control session behavior.</p>
    # @!attribute session_timeout_in_seconds
    #   <p>The session timeout in seconds. After this timeout, the session expires and subsequent requests to this session will receive an error. The minimum value is 900 seconds (15 minutes), the maximum value is 28800 seconds (8 hours), and the default value is 3600 seconds (1 hour).</p>
    #   @return [Integer]
    class SessionConfiguration < Struct.new(
      nil,
      :session_timeout_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a session storage filesystem mounted into the AgentCore Runtime. Session storage provides persistent storage that is preserved across AgentCore Runtime session invocations.</p>
    # @!attribute mount_path
    #   <p>The mount path for the session storage filesystem inside the AgentCore Runtime. The path must be under <code>/mnt</code> with exactly one subdirectory level (for example, <code>/mnt/data</code>).</p>
    #   @return [String]
    class SessionStorageConfiguration < Struct.new(
      nil,
      :mount_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_vault_id
    #   <p>The unique identifier of the token vault to update.</p>
    #   @return [String]
    # @!attribute kms_configuration
    #   <p>The KMS configuration for the token vault, including the key type and KMS key ARN.</p>
    #   @return [Types::KmsConfiguration]
    class SetTokenVaultCMKRequest < Struct.new(
      nil,
      :token_vault_id,
      :kms_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_vault_id
    #   <p>The ID of the token vault.</p>
    #   @return [String]
    # @!attribute kms_configuration
    #   <p>The KMS configuration for the token vault.</p>
    #   @return [Types::KmsConfiguration]
    # @!attribute last_modified_date
    #   <p>The timestamp when the token vault was last modified.</p>
    #   @return [Time]
    class SetTokenVaultCMKResponse < Struct.new(
      nil,
      :token_vault_id,
      :kms_configuration,
      :last_modified_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The structured skill definition with schema version and content.</p>
    # @!attribute schema_version
    #   <p>The version of the skill definition schema.</p>
    #   @return [String]
    # @!attribute inline_content
    #   <p>The JSON content containing the structured skill definition.</p>
    #   @return [String]
    class SkillDefinition < Struct.new(
      nil,
      :schema_version,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The skill markdown definition for an agent skills descriptor.</p>
    # @!attribute inline_content
    #   <p>The markdown content describing the agent's skills in a human-readable format.</p>
    #   @return [String]
    class SkillMdDefinition < Struct.new(
      nil,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input configuration for a Slack OAuth2 provider.</p>
    # @!attribute client_id
    #   <p>The client ID for the Slack OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret for the Slack OAuth2 provider.</p>
    #   @return [String]
    # @!attribute client_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the client secret. This includes the secret ID and the JSON key used to extract the client secret value from the secret. Required when <code>clientSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class SlackOauth2ProviderConfigInput < Struct.new(
      nil,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:client_secret] = '' unless options.key?(:client_secret)
        super
      end
    end

    # <p>Output configuration for a Slack OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the Slack provider.</p>
    #   @return [Types::Oauth2Discovery]
    # @!attribute client_id
    #   <p>The client ID for the Slack OAuth2 provider.</p>
    #   @return [String]
    class SlackOauth2ProviderConfigOutput < Struct.new(
      nil,
      :oauth_discovery,
      :client_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that provides the context for policy generation. This engine's schema and tool context are used to ensure generated policies are valid and applicable.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource information that provides context for policy generation. This helps the AI understand the target resources and generate appropriate access control rules.</p>
    #   @return [Types::Resource]
    # @!attribute content
    #   <p>The natural language description of the desired policy behavior. This content is processed by AI to generate corresponding Dogwood policy statements that match the described intent.</p>
    #   @return [Types::Content]
    # @!attribute name
    #   <p>A customer-assigned name for the policy generation request. This helps track and identify generation operations, especially when running multiple generations simultaneously.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure the idempotency of the request. The Amazon Web Services SDK automatically generates this token, so you don't need to provide it in most cases. If you retry a request with the same client token, the service returns the same response without starting a duplicate generation.</p>
    #   @return [String]
    class StartPolicyGenerationRequest < Struct.new(
      nil,
      :policy_engine_id,
      :resource,
      :content,
      :name,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine associated with the started policy generation. </p>
    #   @return [String]
    # @!attribute policy_generation_id
    #   <p>The unique identifier assigned to the policy generation request for tracking progress. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The customer-assigned name for the policy generation request.</p>
    #   @return [String]
    # @!attribute policy_generation_arn
    #   <p>The ARN of the created policy generation request.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource information associated with the policy generation request.</p>
    #   @return [Types::Resource]
    # @!attribute created_at
    #   <p>The timestamp when the policy generation request was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy generation was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The initial status of the policy generation request.</p>
    #   @return [String]
    # @!attribute findings
    #   <p>Initial findings from the policy generation process.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the generation status.</p>
    #   @return [Array<String>]
    class StartPolicyGenerationResponse < Struct.new(
      nil,
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A static configuration bundle override.</p>
    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration bundle to apply.</p>
    #   @return [String]
    # @!attribute bundle_version
    #   <p>The version of the configuration bundle to apply.</p>
    #   @return [String]
    class StaticOverride < Struct.new(
      nil,
      :bundle_arn,
      :bundle_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A static route to a single gateway target.</p>
    # @!attribute target_name
    #   <p>The name of the target to route requests to.</p>
    #   @return [String]
    class StaticRoute < Struct.new(
      nil,
      :target_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for session-sticky routing to a target. Session stickiness routes requests that share a session identifier to the same target.</p>
    # @!attribute identifier
    #   <p>The expression that identifies where to extract the session identifier from the request (for example, <code>$context.header.x-session-id</code>).</p>
    #   @return [String]
    # @!attribute timeout
    #   <p>The session stickiness timeout, in seconds. After this duration of inactivity, the session affinity expires. Valid values range from 1 to 86400.</p>
    #   @return [Integer]
    # @!attribute composite_identifier
    #   <p>Additional headers to include in session affinity routing. When set, requests are only considered part of the same session if both the <code>identifier</code> and all composite identifier values match.</p>
    #   @return [Array<String>]
    class StickinessConfiguration < Struct.new(
      nil,
      :identifier,
      :timeout,
      :composite_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information for a memory strategy.</p>
    # @!attribute type
    #   <p>The type of override for the strategy configuration.</p>
    #   @return [String]
    # @!attribute extraction
    #   <p>The extraction configuration for the memory strategy.</p>
    #   @return [Types::ExtractionConfiguration]
    # @!attribute consolidation
    #   <p>The consolidation configuration for the memory strategy.</p>
    #   @return [Types::ConsolidationConfiguration]
    # @!attribute reflection
    #   <p>The reflection configuration for the memory strategy.</p>
    #   @return [Types::ReflectionConfiguration]
    # @!attribute self_managed_configuration
    #   <p>Self-managed configuration settings.</p>
    #   @return [Types::SelfManagedConfiguration]
    class StrategyConfiguration < Struct.new(
      nil,
      :type,
      :extraction,
      :consolidation,
      :reflection,
      :self_managed_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Supported stream delivery resource types.</p>
    # @!attribute kinesis
    #   <p>Kinesis Data Stream configuration.</p>
    #   @return [Types::KinesisResource]
    class StreamDeliveryResource < Struct.new(
      :kinesis,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Kinesis < StreamDeliveryResource; end
      class Unknown < StreamDeliveryResource; end
    end

    # <p>Configuration for streaming memory record data to external resources.</p>
    # @!attribute resources
    #   <p>List of stream delivery resource configurations.</p>
    #   @return [Array<Types::StreamDeliveryResource>]
    class StreamDeliveryResources < Struct.new(
      nil,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The streaming configuration for an MCP gateway. This structure defines settings that control response streaming behavior.</p>
    # @!attribute enable_response_streaming
    #   <p>Indicates whether response streaming is enabled for the gateway. When set to <code>true</code>, the gateway streams responses from targets back to the client.</p>
    #   @return [Boolean]
    class StreamingConfiguration < Struct.new(
      nil,
      :enable_response_streaming,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation for STRINGLIST fields.</p>
    # @!attribute allowed_values
    #   <p>Allowed values for items in this STRINGLIST field.</p>
    #   @return [Array<String>]
    # @!attribute max_items
    #   <p>Maximum number of items in the string list.</p>
    #   @return [Integer]
    class StringListValidation < Struct.new(
      nil,
      :allowed_values,
      :max_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation for STRING fields.</p>
    # @!attribute allowed_values
    #   <p>Allowed values for this STRING field.</p>
    #   @return [Array<String>]
    class StringValidation < Struct.new(
      nil,
      :allowed_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stripe Privy configuration — credentials provided by Stripe and Privy.</p>
    # @!attribute app_id
    #   <p>The app ID provided by Privy.</p>
    #   @return [String]
    # @!attribute app_secret
    #   <p>The app secret provided by Privy.</p>
    #   @return [String]
    # @!attribute app_secret_source
    #   <p>The source type of the app secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute app_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the app secret. This includes the secret ID and the JSON key used to extract the app secret value from the secret. Required when <code>appSecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute authorization_private_key
    #   <p>The authorization private key for the Stripe Privy integration.</p>
    #   @return [String]
    # @!attribute authorization_private_key_source
    #   <p>The source type of the authorization private key. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute authorization_private_key_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the authorization private key. This includes the secret ID and the JSON key used to extract the authorization private key value from the secret. Required when <code>authorizationPrivateKeySource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute authorization_id
    #   <p>The authorization ID for the Stripe Privy integration.</p>
    #   @return [String]
    class StripePrivyConfigurationInput < Struct.new(
      nil,
      :app_id,
      :app_secret,
      :app_secret_source,
      :app_secret_config,
      :authorization_private_key,
      :authorization_private_key_source,
      :authorization_private_key_config,
      :authorization_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:app_secret] = '' unless options.key?(:app_secret)
        options[:authorization_private_key] = '' unless options.key?(:authorization_private_key)
        super
      end
    end

    # <p>Stripe Privy configuration output with secret ARNs.</p>
    # @!attribute app_id
    #   <p>The app ID provided by Privy.</p>
    #   @return [String]
    # @!attribute app_secret_arn
    #   <p>Contains information about a secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute app_secret_json_key
    #   <p>The JSON key used to extract the app secret value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute app_secret_source
    #   <p>The source type of the app secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute authorization_private_key_arn
    #   <p>Contains information about a secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute authorization_private_key_json_key
    #   <p>The JSON key used to extract the authorization private key value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute authorization_private_key_source
    #   <p>The source type of the authorization private key. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute authorization_id
    #   <p>The authorization ID for the Stripe Privy integration.</p>
    #   @return [String]
    class StripePrivyConfigurationOutput < Struct.new(
      nil,
      :app_id,
      :app_secret_arn,
      :app_secret_json_key,
      :app_secret_source,
      :authorization_private_key_arn,
      :authorization_private_key_json_key,
      :authorization_private_key_source,
      :authorization_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to submit for approval. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    #   @return [String]
    class SubmitRegistryRecordForApprovalRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry that contains the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The resulting status of the registry record after submission.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the record was last updated.</p>
    #   @return [Time]
    class SubmitRegistryRecordForApprovalResponse < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :status,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because it requires an active Amazon Web Services Marketplace subscription that is not present. Subscribe to the required product in Amazon Web Services Marketplace and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute subscription_url
    #   URL to the Marketplace listing for subscription
    #   @return [String]
    # @!attribute product_name
    #   The product requiring subscription
    #   @return [String]
    class SubscriptionRequiredException < Struct.new(
      nil,
      :message,
      :subscription_url,
      :product_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary consolidation override configuration.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for summary consolidation.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for summary consolidation.</p>
    #   @return [String]
    class SummaryConsolidationOverride < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a summary memory strategy.</p>
    # @!attribute name
    #   <p>The name of the summary memory strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the summary memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The namespaces associated with the summary memory strategy.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates associated with the summary memory strategy.</p>
    #   @return [Array<String>]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata fields on records generated by this strategy.</p>
    #   @return [Types::MemoryRecordSchema]
    # @!attribute record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) configuration for memory records generated by this strategy. Set <code>recordExpiryDurationDays</code> to the number of days after which records expire. If not specified, records generated by this strategy do not expire.</p>
    #   @return [Types::RecordExpirySpecification]
    class SummaryMemoryStrategyInput < Struct.new(
      nil,
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :memory_record_schema,
      :record_expiry_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for summary override configuration in a memory strategy.</p>
    # @!attribute consolidation
    #   <p>The consolidation configuration for a summary override.</p>
    #   @return [Types::SummaryOverrideConsolidationConfigurationInput]
    class SummaryOverrideConfigurationInput < Struct.new(
      nil,
      :consolidation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for summary override consolidation configuration in a memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for summary consolidation.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for summary consolidation.</p>
    #   @return [String]
    class SummaryOverrideConsolidationConfigurationInput < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for synchronizing registry record metadata from an external source.</p>
    # @!attribute from_url
    #   <p>Configuration for synchronizing from a URL-based source.</p>
    #   @return [Types::FromUrlSynchronizationConfiguration]
    class SynchronizationConfiguration < Struct.new(
      nil,
      :from_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The gateway Identifier.</p>
    #   @return [String]
    # @!attribute target_id_list
    #   <p>The target ID list.</p>
    #   @return [Array<String>]
    class SynchronizeGatewayTargetsRequest < Struct.new(
      nil,
      :gateway_identifier,
      :target_id_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute targets
    #   <p>The gateway targets for synchronization.</p>
    #   @return [Array<Types::GatewayTarget>]
    class SynchronizeGatewayTargetsResponse < Struct.new(
      nil,
      :targets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>System-managed metadata for rules created by automated processes such as A/B tests.</p>
    # @!attribute managed_by
    #   <p>The identifier of the system or process that manages this rule.</p>
    #   @return [String]
    class SystemManagedBlock < Struct.new(
      nil,
      :managed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is a key-value pair.</p>
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

    # <p>The configuration for a gateway target. This structure defines how the gateway connects to and interacts with the target endpoint.</p>
    # @!attribute mcp
    #   <p>The Model Context Protocol (MCP) configuration for the target. This configuration defines how the gateway uses MCP to communicate with the target.</p>
    #   @return [Types::McpTargetConfiguration]
    # @!attribute http
    #   <p>The HTTP target configuration. Use this to route gateway requests to an HTTP-based endpoint such as an AgentCore Runtime.</p>
    #   @return [Types::HttpTargetConfiguration]
    # @!attribute inference
    #   <p>The inference configuration for the target. This configuration routes requests to a large language model (LLM) provider.</p>
    #   @return [Types::InferenceTargetConfiguration]
    class TargetConfiguration < Struct.new(
      :mcp,
      :http,
      :inference,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Mcp < TargetConfiguration; end
      class Http < TargetConfiguration; end
      class Inference < TargetConfiguration; end
      class Unknown < TargetConfiguration; end
    end

    # <p>Contains summary information about a gateway target. A target represents an endpoint that the gateway can connect to.</p>
    # @!attribute target_id
    #   <p>The unique identifier of the target.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the target.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the target.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the target was last updated.</p>
    #   @return [Time]
    # @!attribute resource_priority
    #   <p>Priority for resolving resource URI conflicts across targets. Lower values take precedence. Defaults to 1000 when not set.</p>
    #   @return [Integer]
    # @!attribute last_synchronized_at
    #   <p>The timestamp when the target was last synchronized.</p>
    #   @return [Time]
    # @!attribute authorization_data
    #   <p>Contains the authorization data that is returned when a gateway target is configured with a credential provider with authorization code grant type and requires user federation.</p>
    #   @return [Types::AuthorizationData]
    # @!attribute target_type
    #   <p>The type of the target.</p>
    #   @return [String]
    # @!attribute listing_mode
    #   <p>The listing mode for the target. MCP resources for <code>DEFAULT</code> targets are cached at the control plane for faster access. MCP resources for <code>DYNAMIC</code> targets are retrieved dynamically when listing tools.</p>
    #   @return [String]
    class TargetSummary < Struct.new(
      nil,
      :target_id,
      :name,
      :status,
      :description,
      :created_at,
      :updated_at,
      :resource_priority,
      :last_synchronized_at,
      :authorization_data,
      :target_type,
      :listing_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An entry in a target traffic split configuration.</p>
    # @!attribute name
    #   <p>The name of this traffic split variant.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The percentage of traffic to route to this variant.</p>
    #   @return [Integer]
    # @!attribute target_name
    #   <p>The name of the target to route traffic to.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of this traffic split variant.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Key-value metadata associated with this traffic split variant.</p>
    #   @return [Hash<String, String>]
    class TargetTrafficSplitEntry < Struct.new(
      nil,
      :name,
      :weight,
      :target_name,
      :description,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>API rate limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottledException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the number of requests exceeds the limit</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Trigger configuration based on time.</p>
    # @!attribute idle_session_timeout
    #   <p>Idle session timeout (seconds) that triggers memory processing.</p>
    #   @return [Integer]
    class TimeBasedTrigger < Struct.new(
      nil,
      :idle_session_timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Trigger configuration based on time.</p>
    # @!attribute idle_session_timeout
    #   <p>Idle session timeout (seconds) that triggers memory processing.</p>
    #   @return [Integer]
    class TimeBasedTriggerInput < Struct.new(
      nil,
      :idle_session_timeout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:idle_session_timeout] = 20 unless options.key?(:idle_session_timeout)
        super
      end
    end

    # <p>Trigger configuration based on tokens.</p>
    # @!attribute token_count
    #   <p>Number of tokens that trigger memory processing.</p>
    #   @return [Integer]
    class TokenBasedTrigger < Struct.new(
      nil,
      :token_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Trigger configuration based on tokens.</p>
    # @!attribute token_count
    #   <p>Number of tokens that trigger memory processing.</p>
    #   @return [Integer]
    class TokenBasedTriggerInput < Struct.new(
      nil,
      :token_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:token_count] = 5000 unless options.key?(:token_count)
        super
      end
    end

    # <p>Configuration for RFC 8693 token exchange.</p>
    # @!attribute actor_token_content
    #   <p>The content type for the actor token in the token exchange.</p>
    #   @return [String]
    # @!attribute actor_token_scopes
    #   <p>The scopes for the actor token. Only valid when actorTokenContent is M2M.</p>
    #   @return [Array<String>]
    class TokenExchangeGrantTypeConfigType < Struct.new(
      nil,
      :actor_token_content,
      :actor_token_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tool definition for a gateway target. This structure defines a tool that the target exposes through the Model Context Protocol.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute name
    #   <p>The name of the tool. This name identifies the tool in the Model Context Protocol.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the tool. This description provides information about the purpose and usage of the tool.</p>
    #   @return [String]
    # @!attribute input_schema
    #   <p>The input schema for the tool. This schema defines the structure of the input that the tool accepts.</p>
    #   @return [Types::SchemaDefinition]
    # @!attribute output_schema
    #   <p>The output schema for the tool. This schema defines the structure of the output that the tool produces.</p>
    #   @return [Types::SchemaDefinition]
    class ToolDefinition < Struct.new(
      nil,
      :name,
      :description,
      :input_schema,
      :output_schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tool schema for a gateway target. This structure defines the schema for a tool that the target exposes through the Model Context Protocol.</p>
    # @!attribute s3
    #   <p>The Amazon S3 location of the tool schema. This location contains the schema definition file.</p>
    #   @return [Types::S3Configuration]
    # @!attribute inline_payload
    #   <p>The inline payload of the tool schema. This payload contains the schema definition directly in the request.</p>
    #   @return [Array<Types::ToolDefinition>]
    class ToolSchema < Struct.new(
      :s3,
      :inline_payload,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3 < ToolSchema; end
      class InlinePayload < ToolSchema; end
      class Unknown < ToolSchema; end
    end

    # <p>The tools definition for an MCP descriptor. Contains the protocol version and inline content describing the available tools.</p>
    # @!attribute protocol_version
    #   <p>The protocol version of the tools definition based on the MCP protocol specification. If not specified, the version is auto-detected from the content.</p>
    #   @return [String]
    # @!attribute inline_content
    #   <p>The JSON content containing the MCP tools definition, conforming to the MCP protocol specification.</p>
    #   @return [String]
    class ToolsDefinition < Struct.new(
      nil,
      :protocol_version,
      :inline_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a file system to mount into the session by providing exactly one of the following:</p> <ul> <li> <p> <code>s3FilesConfiguration</code> - Mounts an Amazon Simple Storage Service (Amazon S3) Files access point.</p> </li> <li> <p> <code>efsConfiguration</code> - Mounts an Amazon Elastic File System (Amazon EFS) access point.</p> </li> </ul>
    # @!attribute s3_files_configuration
    #   <p>The configuration for mounting your own Amazon Simple Storage Service (Amazon S3) Files access point into the session.</p>
    #   @return [Types::S3FilesConfiguration]
    # @!attribute efs_configuration
    #   <p>The configuration for mounting your own Amazon Elastic File System (Amazon EFS) access point into the session.</p>
    #   @return [Types::EfsConfiguration]
    class ToolsFileSystemConfiguration < Struct.new(
      :s3_files_configuration,
      :efs_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3FilesConfiguration < ToolsFileSystemConfiguration; end
      class EfsConfiguration < ToolsFileSystemConfiguration; end
      class Unknown < ToolsFileSystemConfiguration; end
    end

    # <p>An entry in a traffic split configuration, defining a named variant with a weight and configuration bundle reference.</p>
    # @!attribute name
    #   <p>The name of this traffic split variant.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The percentage of traffic to route to this variant. Weights across all entries must sum to 100.</p>
    #   @return [Integer]
    # @!attribute configuration_bundle
    #   <p>The configuration bundle reference for this variant.</p>
    #   @return [Types::ConfigurationBundleReference]
    # @!attribute description
    #   <p>The description of this traffic split variant.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>Key-value metadata associated with this traffic split variant.</p>
    #   @return [Hash<String, String>]
    class TrafficSplitEntry < Struct.new(
      nil,
      :name,
      :weight,
      :configuration_bundle,
      :description,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Condition that triggers memory processing.</p>
    # @!attribute message_based_trigger
    #   <p>Message based trigger configuration.</p>
    #   @return [Types::MessageBasedTrigger]
    # @!attribute token_based_trigger
    #   <p>Token based trigger configuration.</p>
    #   @return [Types::TokenBasedTrigger]
    # @!attribute time_based_trigger
    #   <p>Time based trigger configuration.</p>
    #   @return [Types::TimeBasedTrigger]
    class TriggerCondition < Struct.new(
      :message_based_trigger,
      :token_based_trigger,
      :time_based_trigger,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MessageBasedTrigger < TriggerCondition; end
      class TokenBasedTrigger < TriggerCondition; end
      class TimeBasedTrigger < TriggerCondition; end
      class Unknown < TriggerCondition; end
    end

    # <p>Condition that triggers memory processing.</p>
    # @!attribute message_based_trigger
    #   <p>Message based trigger configuration.</p>
    #   @return [Types::MessageBasedTriggerInput]
    # @!attribute token_based_trigger
    #   <p>Token based trigger configuration.</p>
    #   @return [Types::TokenBasedTriggerInput]
    # @!attribute time_based_trigger
    #   <p>Time based trigger configuration.</p>
    #   @return [Types::TimeBasedTriggerInput]
    class TriggerConditionInput < Struct.new(
      :message_based_trigger,
      :token_based_trigger,
      :time_based_trigger,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MessageBasedTrigger < TriggerConditionInput; end
      class TokenBasedTrigger < TriggerConditionInput; end
      class TimeBasedTrigger < TriggerConditionInput; end
      class Unknown < TriggerConditionInput; end
    end

    # <p>This exception is thrown when the JWT bearer token is invalid or not found for OAuth bearer token based access</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to remove from the resource.</p>
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

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime associated with the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint to update.</p>
    #   @return [String]
    # @!attribute agent_runtime_version
    #   <p>The updated version of the AgentCore Runtime for the endpoint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateAgentRuntimeEndpointRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :endpoint_name,
      :agent_runtime_version,
      :description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute live_version
    #   <p>The currently deployed version of the AgentCore Runtime on the endpoint.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>The target version of the AgentCore Runtime for the endpoint.</p>
    #   @return [String]
    # @!attribute agent_runtime_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the updated AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the AgentCore Runtime endpoint was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the AgentCore Runtime endpoint was last updated.</p>
    #   @return [Time]
    class UpdateAgentRuntimeEndpointResponse < Struct.new(
      nil,
      :live_version,
      :target_version,
      :agent_runtime_endpoint_arn,
      :agent_runtime_arn,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to update.</p>
    #   @return [String]
    # @!attribute agent_runtime_artifact
    #   <p>The updated artifact of the AgentCore Runtime.</p>
    #   @return [Types::AgentRuntimeArtifact]
    # @!attribute role_arn
    #   <p>The updated IAM role ARN that provides permissions for the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The updated network configuration for the AgentCore Runtime.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute description
    #   <p>The updated description of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The updated authorizer configuration for the AgentCore Runtime.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute request_header_configuration
    #   <p>The updated configuration for HTTP request headers that will be passed through to the runtime.</p>
    #   @return [Types::RequestHeaderConfiguration]
    # @!attribute protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    #   @return [Types::ProtocolConfiguration]
    # @!attribute lifecycle_configuration
    #   <p>The updated life cycle configuration for the AgentCore Runtime.</p>
    #   @return [Types::LifecycleConfiguration]
    # @!attribute metadata_configuration
    #   <p>The updated configuration for microVM Metadata Service (MMDS) settings for the AgentCore Runtime.</p>
    #   @return [Types::RuntimeMetadataConfiguration]
    # @!attribute environment_variables
    #   <p>Updated environment variables to set in the AgentCore Runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute filesystem_configurations
    #   <p>The updated filesystem configurations to mount into the AgentCore Runtime.</p>
    #   @return [Array<Types::FilesystemConfiguration>]
    # @!attribute capacity_provider_configuration
    #   <p>The updated capacity provider configuration for the AgentCore Runtime.</p>
    #   @return [Types::CapacityProviderConfiguration]
    # @!attribute platform_version
    #   <p>The updated version of the runtime platform to use for the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateAgentRuntimeRequest < Struct.new(
      nil,
      :agent_runtime_id,
      :agent_runtime_artifact,
      :role_arn,
      :network_configuration,
      :description,
      :authorizer_configuration,
      :request_header_configuration,
      :protocol_configuration,
      :lifecycle_configuration,
      :metadata_configuration,
      :environment_variables,
      :filesystem_configurations,
      :capacity_provider_configuration,
      :platform_version,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_arn
    #   <p>The Amazon Resource Name (ARN) of the updated AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the updated AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the updated AgentCore Runtime.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute agent_runtime_version
    #   <p>The version of the updated AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the AgentCore Runtime was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the AgentCore Runtime was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the updated AgentCore Runtime.</p>
    #   @return [String]
    class UpdateAgentRuntimeResponse < Struct.new(
      nil,
      :agent_runtime_arn,
      :agent_runtime_id,
      :workload_identity_details,
      :agent_runtime_version,
      :created_at,
      :last_updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the API key credential provider to update.</p>
    #   @return [String]
    # @!attribute api_key
    #   <p>The new API key to use for authentication. This value replaces the existing API key and is encrypted and stored securely.</p>
    #   @return [String]
    # @!attribute api_key_secret_config
    #   <p>A reference to the Amazon Web Services Secrets Manager secret that stores the API key. This includes the secret ID and the JSON key used to extract the API key value from the secret. Required when <code>apiKeySecretSource</code> is set to <code>EXTERNAL</code>.</p>
    #   @return [Types::SecretReference]
    # @!attribute api_key_secret_source
    #   <p>The source type of the API key secret. Use <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if you manage the secret yourself in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class UpdateApiKeyCredentialProviderRequest < Struct.new(
      nil,
      :name,
      :api_key,
      :api_key_secret_config,
      :api_key_secret_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the API key secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute api_key_secret_json_key
    #   <p>The JSON key used to extract the API key value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute api_key_secret_source
    #   <p>The source type of the API key secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the API key credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the API key credential provider.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the API key credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the API key credential provider was last updated.</p>
    #   @return [Time]
    class UpdateApiKeyCredentialProviderResponse < Struct.new(
      nil,
      :api_key_secret_arn,
      :api_key_secret_json_key,
      :api_key_secret_source,
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the capacity provider to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the capacity provider.</p>
    #   @return [Types::UpdatedDescription]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class UpdateCapacityProviderInput < Struct.new(
      nil,
      :capacity_provider_id,
      :description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute capacity_provider_id
    #   <p>The unique identifier of the capacity provider.</p>
    #   @return [String]
    # @!attribute capacity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the capacity provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the capacity provider.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the capacity provider. For possible values, see <code>CapacityProviderStatus</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the capacity provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp when the capacity provider was last updated.</p>
    #   @return [Time]
    class UpdateCapacityProviderOutput < Struct.new(
      nil,
      :capacity_provider_id,
      :capacity_provider_arn,
      :name,
      :status,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The unique identifier of the configuration bundle to update.</p>
    #   @return [String]
    # @!attribute bundle_name
    #   <p>The updated name for the configuration bundle.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description for the configuration bundle.</p>
    #   @return [String]
    # @!attribute components
    #   <p>The updated component configurations. Creates a new version of the bundle.</p>
    #   @return [Hash<String, Types::ComponentConfiguration>]
    # @!attribute parent_version_ids
    #   <p>A list of parent version identifiers for lineage tracking. Regular commits have a single parent. Merge commits have two parents: the target branch parent and the source branch parent. If the branch already exists, the first parent must be the latest version on that branch.</p>
    #   @return [Array<String>]
    # @!attribute branch_name
    #   <p>The branch name for this version. If not specified, inherits the parent's branch or defaults to <code>mainline</code>.</p>
    #   @return [String]
    # @!attribute commit_message
    #   <p>A commit message describing the changes in this version.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The source that created this version, including the source name and optional ARN.</p>
    #   @return [Types::VersionCreatedBySource]
    # @!attribute kms_key_arn
    #   <p>Optional KMS key ARN for encrypting component configurations. If provided, components will be encrypted with this key. If the bundle already has a KMS key, this rotates to the new key.</p>
    #   @return [String]
    class UpdateConfigurationBundleRequest < Struct.new(
      nil,
      :client_token,
      :bundle_id,
      :bundle_name,
      :description,
      :components,
      :parent_version_ids,
      :branch_name,
      :commit_message,
      :created_by,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_arn
    #   <p>The Amazon Resource Name (ARN) of the updated configuration bundle.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The unique identifier of the updated configuration bundle.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The new version identifier created by this update.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the configuration bundle was updated.</p>
    #   @return [Time]
    class UpdateConfigurationBundleResponse < Struct.new(
      nil,
      :bundle_arn,
      :bundle_id,
      :version_id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute consent_portal_identifier
    #   <p>The identifier of the consent portal. You can specify either the consent portal ID or its Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the consent portal assumes to access the resources defined in its sources.</p>
    #   @return [String]
    # @!attribute idp_config
    #   <p>The identity provider configuration that the consent portal uses to authenticate end users.</p>
    #   @return [Types::ConsentPortalIdpConfig]
    # @!attribute description
    #   <p>The description of the consent portal.</p>
    #   @return [String]
    class UpdateConsentPortalRequest < Struct.new(
      nil,
      :consent_portal_identifier,
      :execution_role_arn,
      :idp_config,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>The resources served by the consent portal.</p>
    #   @return [Array<Types::ConsentPortalSource>]
    # @!attribute consent_portal_arn
    #   <p>The Amazon Resource Name (ARN) of the consent portal.</p>
    #   @return [String]
    # @!attribute consent_portal_id
    #   <p>The unique identifier of the consent portal.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the consent portal was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the consent portal.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that the consent portal assumes to access the resources defined in its sources.</p>
    #   @return [String]
    # @!attribute idp_config
    #   <p>The identity provider configuration that the consent portal uses to authenticate end users.</p>
    #   @return [Types::ConsentPortalIdpConfig]
    # @!attribute name
    #   <p>The name of the consent portal.</p>
    #   @return [String]
    # @!attribute portal_url
    #   <p>The URL used to access the consent portal.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the consent portal.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>A message that provides additional information about the current status of the consent portal.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp for when the consent portal was last updated.</p>
    #   @return [Time]
    class UpdateConsentPortalResponse < Struct.new(
      nil,
      :sources,
      :consent_portal_arn,
      :consent_portal_id,
      :created_at,
      :description,
      :execution_role_arn,
      :idp_config,
      :name,
      :portal_url,
      :status,
      :status_reason,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute examples
    #   <p> Examples to update. Each element is a JSON object containing a required <code>exampleId</code> field identifying the existing example, plus the replacement fields. Maximum 1000 examples per call. </p>
    #   @return [Array<JSON>]
    class UpdateDatasetExamplesRequest < Struct.new(
      nil,
      :dataset_id,
      :client_token,
      :examples,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the dataset. </p>
    #   @return [String]
    # @!attribute updated_count
    #   <p> The number of examples updated. </p>
    #   @return [Integer]
    # @!attribute updated_at
    #   <p> The timestamp when the examples were updated. </p>
    #   @return [Time]
    class UpdateDatasetExamplesResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :status,
      :updated_count,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_id
    #   <p> The unique identifier of the dataset to update. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p> The updated description for the dataset. </p>
    #   @return [String]
    class UpdateDatasetRequest < Struct.new(
      nil,
      :dataset_id,
      :client_token,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p> The Amazon Resource Name (ARN) of the updated dataset. </p>
    #   @return [String]
    # @!attribute dataset_id
    #   <p> The unique identifier of the updated dataset. </p>
    #   @return [String]
    # @!attribute updated_at
    #   <p> The timestamp when the dataset was updated. </p>
    #   @return [Time]
    class UpdateDatasetResponse < Struct.new(
      nil,
      :dataset_arn,
      :dataset_id,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute evaluator_id
    #   <p> The unique identifier of the evaluator to update. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The updated description of the evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_config
    #   <p> The updated configuration for the evaluator. Specify either LLM-as-a-Judge settings with instructions, rating scale, and model configuration, or code-based settings with a customer-managed Lambda function. </p>
    #   @return [Types::EvaluatorConfig]
    # @!attribute level
    #   <p> The updated evaluation level (<code>TOOL_CALL</code>, <code>TRACE</code>, or <code>SESSION</code>) that determines the scope of evaluation. </p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p> The Amazon Resource Name (ARN) of a customer managed KMS key to use for encrypting sensitive evaluator data. Specify a new key ARN to rotate the encryption key, or specify a key ARN to add encryption to an evaluator that was previously created without one. When you rotate to a new key, the service decrypts the existing data with the old key and re-encrypts it with the new key. Only symmetric encryption KMS keys are supported. For more information, see <a href="https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html">Encryption at rest for AgentCore Evaluations</a>. </p>
    #   @return [String]
    class UpdateEvaluatorRequest < Struct.new(
      nil,
      :client_token,
      :evaluator_id,
      :description,
      :evaluator_config,
      :level,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluator_arn
    #   <p> The Amazon Resource Name (ARN) of the updated evaluator. </p>
    #   @return [String]
    # @!attribute evaluator_id
    #   <p> The unique identifier of the updated evaluator. </p>
    #   @return [String]
    # @!attribute updated_at
    #   <p> The timestamp when the evaluator was last updated. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The status of the evaluator update operation. </p>
    #   @return [String]
    class UpdateEvaluatorResponse < Struct.new(
      nil,
      :evaluator_arn,
      :evaluator_id,
      :updated_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute rate_limit_id
    #   <p>The unique identifier of the rate limit to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated human-readable description for this rate limit.</p>
    #   @return [String]
    # @!attribute entries
    #   <p>The updated rule entries. The dimension keys are immutable after creation and cannot be changed.</p>
    #   @return [Array<Types::LimitEntry>]
    class UpdateGatewayRateLimitRequest < Struct.new(
      nil,
      :gateway_identifier,
      :rate_limit_id,
      :description,
      :entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Shared fields for <code>GatewayRateLimit</code> responses.</p>
    # @!attribute rate_limit_id
    #   <p>The unique identifier of the rate limit.</p>
    #   @return [String]
    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The human-readable description of the rate limit.</p>
    #   @return [String]
    # @!attribute dimension_keys
    #   <p>The ordered list of dimension key names that define the scope of this rate limit.</p>
    #   @return [Array<String>]
    # @!attribute entries
    #   <p>The list of rule entries that map dimension values to rate configurations.</p>
    #   @return [Array<Types::LimitEntry>]
    # @!attribute status
    #   <p>The current status of the rate limit.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the rate limit was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the rate limit was last updated.</p>
    #   @return [Time]
    class UpdateGatewayRateLimitResponse < Struct.new(
      nil,
      :rate_limit_id,
      :gateway_identifier,
      :description,
      :dimension_keys,
      :entries,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the gateway. This name must be the same as the one when the gateway was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description for the gateway.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The updated IAM role ARN that provides permissions for the gateway.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The updated protocol type for the gateway.</p>
    #   @return [String]
    # @!attribute protocol_configuration
    #   <p>The configuration for a gateway protocol. This structure defines how the gateway communicates with external services.</p>
    #   @return [Types::GatewayProtocolConfiguration]
    # @!attribute authorizer_type
    #   <p>The updated authorizer type for the gateway.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The updated authorizer configuration for the gateway.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute kms_key_arn
    #   <p>The updated ARN of the KMS key used to encrypt the gateway.</p>
    #   @return [String]
    # @!attribute custom_transform_configuration
    #   <p>The updated custom transformation configuration for the gateway. This configuration defines how the gateway transforms requests and responses.</p>
    #   @return [Types::CustomTransformConfiguration]
    # @!attribute interceptor_configurations
    #   <p>The updated interceptor configurations for the gateway.</p>
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    # @!attribute policy_engine_configuration
    #   <p>The updated policy engine configuration for the gateway. A policy engine is a collection of policies that evaluates and authorizes agent tool calls. When associated with a gateway, the policy engine intercepts all agent requests and determines whether to allow or deny each action based on the defined policies.</p>
    #   @return [Types::GatewayPolicyEngineConfiguration]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
    # @!attribute waf_configuration
    #   <p>The updated Amazon Web Services WAF configuration for the gateway.</p>
    #   @return [Types::WafConfiguration]
    class UpdateGatewayRequest < Struct.new(
      nil,
      :gateway_identifier,
      :name,
      :description,
      :role_arn,
      :protocol_type,
      :protocol_configuration,
      :authorizer_type,
      :authorizer_configuration,
      :kms_key_arn,
      :custom_transform_configuration,
      :interceptor_configurations,
      :policy_engine_configuration,
      :exception_level,
      :waf_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the updated gateway.</p>
    #   @return [String]
    # @!attribute gateway_id
    #   <p>The unique identifier of the updated gateway.</p>
    #   @return [String]
    # @!attribute gateway_url
    #   <p>An endpoint for invoking the updated gateway.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the gateway was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the gateway was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the updated gateway.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the current status of the updated gateway.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name of the gateway.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the gateway.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The updated IAM role ARN that provides permissions for the gateway.</p>
    #   @return [String]
    # @!attribute protocol_type
    #   <p>The updated protocol type for the gateway.</p>
    #   @return [String]
    # @!attribute protocol_configuration
    #   <p>The configuration for a gateway protocol. This structure defines how the gateway communicates with external services.</p>
    #   @return [Types::GatewayProtocolConfiguration]
    # @!attribute authorizer_type
    #   <p>The updated authorizer type for the gateway.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The updated authorizer configuration for the gateway.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute kms_key_arn
    #   <p>The updated ARN of the KMS key used to encrypt the gateway.</p>
    #   @return [String]
    # @!attribute custom_transform_configuration
    #   <p>The custom transformation configuration for the gateway. This configuration defines how the gateway transforms requests and responses.</p>
    #   @return [Types::CustomTransformConfiguration]
    # @!attribute interceptor_configurations
    #   <p>The updated interceptor configurations for the gateway.</p>
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    # @!attribute policy_engine_configuration
    #   <p>The updated policy engine configuration for the gateway.</p>
    #   @return [Types::GatewayPolicyEngineConfiguration]
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the updated gateway.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services WAF web ACL associated with the gateway.</p>
    #   @return [String]
    # @!attribute waf_configuration
    #   <p>The Amazon Web Services WAF configuration for the gateway.</p>
    #   @return [Types::WafConfiguration]
    class UpdateGatewayResponse < Struct.new(
      nil,
      :gateway_arn,
      :gateway_id,
      :gateway_url,
      :created_at,
      :updated_at,
      :status,
      :status_reasons,
      :name,
      :description,
      :role_arn,
      :protocol_type,
      :protocol_configuration,
      :authorizer_type,
      :authorizer_configuration,
      :kms_key_arn,
      :custom_transform_configuration,
      :interceptor_configurations,
      :policy_engine_configuration,
      :workload_identity_details,
      :exception_level,
      :web_acl_arn,
      :waf_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:protocol_type] = 'MCP' unless options.key?(:protocol_type)
        super
      end
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway containing the rule.</p>
    #   @return [String]
    # @!attribute rule_id
    #   <p>The unique identifier of the rule to update.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The updated priority of the rule.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The updated conditions for the rule.</p>
    #   @return [Array<Types::Condition>]
    # @!attribute actions
    #   <p>The updated actions for the rule.</p>
    #   @return [Array<Types::Action>]
    # @!attribute description
    #   <p>The updated description of the rule.</p>
    #   @return [String]
    class UpdateGatewayRuleRequest < Struct.new(
      nil,
      :gateway_identifier,
      :rule_id,
      :priority,
      :conditions,
      :actions,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Create response excludes updatedAt (redundant on create).
    # Get/Update responses include it via their own output structures.
    # @!attribute rule_id
    #   <p>The unique identifier of the gateway rule.</p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway that the rule belongs to.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the rule. Rules are evaluated in order of priority, with lower numbers evaluated first.</p>
    #   @return [Integer]
    # @!attribute conditions
    #   <p>The conditions that must be met for the rule to apply.</p>
    #   @return [Array<Types::Condition>]
    # @!attribute actions
    #   <p>The actions to take when the rule conditions are met.</p>
    #   @return [Array<Types::Action>]
    # @!attribute description
    #   <p>The description of the gateway rule.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the rule was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the rule.</p>
    #   @return [String]
    # @!attribute system
    #   <p>System-managed metadata for rules created by automated processes.</p>
    #   @return [Types::SystemManagedBlock]
    # @!attribute updated_at
    #   <p>The timestamp when the rule was last updated.</p>
    #   @return [Time]
    class UpdateGatewayRuleResponse < Struct.new(
      nil,
      :rule_id,
      :gateway_arn,
      :priority,
      :conditions,
      :actions,
      :description,
      :created_at,
      :status,
      :system,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The unique identifier of the gateway associated with the target.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the gateway target to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name for the gateway target.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description for the gateway target.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>The configuration for a gateway target. This structure defines how the gateway connects to and interacts with the target endpoint.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute credential_provider_configurations
    #   <p>The updated credential provider configurations for the gateway target.</p>
    #   @return [Array<Types::CredentialProviderConfiguration>]
    # @!attribute metadata_configuration
    #   <p>Configuration for HTTP header and query parameter propagation to the gateway target.</p>
    #   @return [Types::MetadataConfiguration]
    # @!attribute private_endpoint
    #   <p>The private endpoint configuration for the gateway target. Use this to connect the gateway to private resources in your VPC.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute certificate_configurations
    #   <p>The private certificate authority (CA) configurations for the gateway target. Use this to have the gateway trust a private CA when it establishes TLS connections to the target endpoint. Provide each certificate by reference to an Amazon S3 object or an Amazon Web Services Secrets Manager secret. You can specify only one certificate authority configuration in this list. To remove a previously configured certificate authority, omit this field on update.</p>
    #   @return [Array<Types::CertificateConfiguration>]
    class UpdateGatewayTargetRequest < Struct.new(
      nil,
      :gateway_identifier,
      :target_id,
      :name,
      :description,
      :target_configuration,
      :credential_provider_configurations,
      :metadata_configuration,
      :private_endpoint,
      :certificate_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The unique identifier of the updated gateway target.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the gateway target was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the gateway target was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the updated gateway target.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the current status of the updated gateway target.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The updated name of the gateway target.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the gateway target.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>The configuration for a gateway target. This structure defines how the gateway connects to and interacts with the target endpoint.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute credential_provider_configurations
    #   <p>The updated credential provider configurations for the gateway target.</p>
    #   @return [Array<Types::CredentialProviderConfiguration>]
    # @!attribute last_synchronized_at
    #   <p>The date and time at which the targets were last synchronized.</p>
    #   @return [Time]
    # @!attribute metadata_configuration
    #   <p>The metadata configuration that was applied to the gateway target.</p>
    #   @return [Types::MetadataConfiguration]
    # @!attribute private_endpoint
    #   <p>The private endpoint configuration for the gateway target.</p>
    #   @return [Types::PrivateEndpoint]
    # @!attribute private_endpoint_managed_resources
    #   <p>The managed resources created by the gateway for private endpoint connectivity.</p>
    #   @return [Array<Types::ManagedResourceDetails>]
    # @!attribute authorization_data
    #   <p>OAuth2 authorization data for the updated gateway target. This data is returned when a target is configured with a credential provider with authorization code grant type and requires user federation.</p>
    #   @return [Types::AuthorizationData]
    # @!attribute protocol_type
    #   <p>The protocol type of the updated gateway target.</p>
    #   @return [String]
    # @!attribute certificate_configurations
    #   <p>The private certificate authority (CA) configurations for the gateway target.</p>
    #   @return [Array<Types::CertificateConfiguration>]
    class UpdateGatewayTargetResponse < Struct.new(
      nil,
      :gateway_arn,
      :target_id,
      :created_at,
      :updated_at,
      :status,
      :status_reasons,
      :name,
      :description,
      :target_configuration,
      :credential_provider_configurations,
      :last_synchronized_at,
      :metadata_configuration,
      :private_endpoint,
      :private_endpoint_managed_resources,
      :authorization_data,
      :protocol_type,
      :certificate_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness that the endpoint belongs to.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint to update.</p>
    #   @return [String]
    # @!attribute target_version
    #   <p>The harness version that the endpoint points to. If not specified, the existing value is retained.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the endpoint. If not specified, the existing value is retained.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    class UpdateHarnessEndpointRequest < Struct.new(
      nil,
      :harness_id,
      :endpoint_name,
      :target_version,
      :description,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The updated endpoint.</p>
    #   @return [Types::HarnessEndpoint]
    class UpdateHarnessEndpointResponse < Struct.new(
      nil,
      :endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness_id
    #   <p>The ID of the harness to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role that the harness assumes when running. If not specified, the existing value is retained.</p>
    #   @return [String]
    # @!attribute environment
    #   <p>The compute environment configuration for the harness. If not specified, the existing value is retained.</p>
    #   @return [Types::HarnessEnvironmentProviderRequest]
    # @!attribute environment_artifact
    #   <p>The environment artifact for the harness. Use the optionalValue wrapper to set a new value, or set it to null to clear the existing configuration.</p>
    #   @return [Types::UpdatedHarnessEnvironmentArtifact]
    # @!attribute environment_variables
    #   <p>Environment variables to set in the harness runtime environment. If specified, this replaces all existing environment variables. If not specified, the existing value is retained.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorizer_configuration
    #   <p>Wrapper for updating an optional AuthorizerConfiguration field with PATCH semantics. When present in an update request, the authorizer configuration is replaced with optionalValue. When absent, the authorizer configuration is left unchanged. To unset, include the wrapper with optionalValue not specified.</p>
    #   @return [Types::UpdatedAuthorizerConfiguration]
    # @!attribute model
    #   <p>The model configuration for the harness. If not specified, the existing value is retained.</p>
    #   @return [Types::HarnessModelConfiguration]
    # @!attribute system_prompt
    #   <p>The system prompt that defines the agent's behavior. If not specified, the existing value is retained.</p>
    #   @return [Array<Types::HarnessSystemContentBlock>]
    # @!attribute tools
    #   <p>The tools available to the agent. If specified, this replaces all existing tools. If not specified, the existing value is retained.</p>
    #   @return [Array<Types::HarnessTool>]
    # @!attribute skills
    #   <p>The skills available to the agent. If specified, this replaces all existing skills. If not specified, the existing value is retained.</p>
    #   @return [Array<Types::HarnessSkill>]
    # @!attribute allowed_tools
    #   <p>The tools that the agent is allowed to use. If specified, this replaces all existing allowed tools. If not specified, the existing value is retained.</p>
    #   @return [Array<String>]
    # @!attribute memory
    #   <p>The AgentCore Memory configuration. Use the optionalValue wrapper to set a new value, or set it to null to clear the existing configuration.</p>
    #   @return [Types::UpdatedHarnessMemoryConfiguration]
    # @!attribute truncation
    #   <p>The truncation configuration for managing conversation context. If not specified, the existing value is retained.</p>
    #   @return [Types::HarnessTruncationConfiguration]
    # @!attribute hooks
    #   <p>The lifecycle hooks to run at defined points in the agent loop. If specified, this replaces all existing hooks. If not specified, the existing hooks are retained.</p>
    #   @return [Array<Types::HarnessHook>]
    # @!attribute max_iterations
    #   <p>The maximum number of iterations the agent loop can execute per invocation. If not specified, the existing value is retained.</p>
    #   @return [Integer]
    # @!attribute max_tokens
    #   <p>The maximum total number of output tokens the agent can generate across all model calls within a single invocation. If not specified, the existing value is retained.</p>
    #   @return [Integer]
    # @!attribute timeout_seconds
    #   <p>The maximum duration in seconds for the agent loop execution per invocation. If not specified, the existing value is retained.</p>
    #   @return [Integer]
    class UpdateHarnessRequest < Struct.new(
      nil,
      :harness_id,
      :client_token,
      :execution_role_arn,
      :environment,
      :environment_artifact,
      :environment_variables,
      :authorizer_configuration,
      :model,
      :system_prompt,
      :tools,
      :skills,
      :allowed_tools,
      :memory,
      :truncation,
      :hooks,
      :max_iterations,
      :max_tokens,
      :timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute harness
    #   <p>The updated harness.</p>
    #   @return [Types::Harness]
    class UpdateHarnessResponse < Struct.new(
      nil,
      :harness,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A client token is used for keeping track of idempotent requests. It can contain a session id which can be around 250 chars, combined with a unique Amazon Web Services identifier.</p>
    #   @return [String]
    # @!attribute memory_id
    #   <p>The unique identifier of the memory to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the AgentCore Memory resource.</p>
    #   @return [String]
    # @!attribute event_expiry_duration
    #   <p>The number of days after which memory events will expire, between 7 and 365 days.</p>
    #   @return [Integer]
    # @!attribute memory_execution_role_arn
    #   <p>The ARN of the IAM role that provides permissions for the AgentCore Memory resource.</p>
    #   @return [String]
    # @!attribute memory_strategies
    #   <p>The memory strategies to add, modify, or delete.</p>
    #   @return [Types::ModifyMemoryStrategies]
    # @!attribute add_indexed_keys
    #   <p>Additional metadata keys to index. Previously indexed keys cannot be removed.</p>
    #   @return [Array<Types::IndexedKey>]
    # @!attribute namespace_keys
    #   <p>The namespace variable key definitions with validation rules for this memory. This value fully replaces the existing set — any key you omit is removed. Any referenced <code>namespaceKey</code> omission will throw ValidationException.</p>
    #   @return [Array<Types::NamespaceKeyEntry>]
    # @!attribute stream_delivery_resources
    #   <p>Configuration for streaming memory record data to external resources.</p>
    #   @return [Types::StreamDeliveryResources]
    class UpdateMemoryInput < Struct.new(
      nil,
      :client_token,
      :memory_id,
      :description,
      :event_expiry_duration,
      :memory_execution_role_arn,
      :memory_strategies,
      :add_indexed_keys,
      :namespace_keys,
      :stream_delivery_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory
    #   <p>The updated AgentCore Memory resource details.</p>
    #   @return [Types::Memory]
    class UpdateMemoryOutput < Struct.new(
      nil,
      :memory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the OAuth2 credential provider to update.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute oauth2_provider_config_input
    #   <p>The configuration input for the OAuth2 provider.</p>
    #   @return [Types::Oauth2ProviderConfigInput]
    class UpdateOauth2CredentialProviderRequest < Struct.new(
      nil,
      :name,
      :credential_provider_vendor,
      :oauth2_provider_config_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the client secret in Amazon Web Services Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute client_secret_json_key
    #   <p>The JSON key used to extract the client secret value from the Amazon Web Services Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute client_secret_source
    #   <p>The source type of the client secret. Either <code>MANAGED</code> if the secret is managed by the service, or <code>EXTERNAL</code> if managed by the user in Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute callback_url
    #   <p>Callback URL to register on the OAuth2 credential provider as an allowed callback URL. This URL is where the OAuth2 authorization server redirects users after they complete the authorization flow.</p>
    #   @return [String]
    # @!attribute oauth2_provider_config_output
    #   <p>The configuration output for the OAuth2 provider.</p>
    #   @return [Types::Oauth2ProviderConfigOutput]
    # @!attribute created_time
    #   <p>The timestamp when the OAuth2 credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the OAuth2 credential provider was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the updated OAuth2 credential provider.</p>
    #   @return [String]
    class UpdateOauth2CredentialProviderResponse < Struct.new(
      nil,
      :client_secret_arn,
      :client_secret_json_key,
      :client_secret_source,
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :callback_url,
      :oauth2_provider_config_output,
      :created_time,
      :last_updated_time,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute online_evaluation_config_id
    #   <p> The unique identifier of the online evaluation configuration to update. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The updated description of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute rule
    #   <p> The updated evaluation rule containing sampling configuration, filters, and session settings. </p>
    #   @return [Types::Rule]
    # @!attribute data_source_config
    #   <p> The updated data source configuration specifying CloudWatch log groups and service names to monitor. </p>
    #   @return [Types::DataSourceConfig]
    # @!attribute evaluators
    #   <p> The updated list of evaluators to apply during online evaluation. </p>
    #   @return [Array<Types::EvaluatorReference>]
    # @!attribute insights
    #   <p>The updated list of insight types to run against agent sessions.</p>
    #   @return [Array<Types::Insight>]
    # @!attribute clustering_config
    #   <p>The updated clustering configuration for periodic batch evaluation.</p>
    #   @return [Types::ClusteringConfig]
    # @!attribute output_config
    #   <p> The configuration that specifies where evaluation results should be written for monitoring and analysis. </p>
    #   @return [Types::OutputConfig]
    # @!attribute evaluation_execution_role_arn
    #   <p> The updated Amazon Resource Name (ARN) of the IAM role used for evaluation execution. </p>
    #   @return [String]
    # @!attribute execution_status
    #   <p> The updated execution status to enable or disable the online evaluation. </p>
    #   @return [String]
    class UpdateOnlineEvaluationConfigRequest < Struct.new(
      nil,
      :client_token,
      :online_evaluation_config_id,
      :description,
      :rule,
      :data_source_config,
      :evaluators,
      :insights,
      :clustering_config,
      :output_config,
      :evaluation_execution_role_arn,
      :execution_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute online_evaluation_config_arn
    #   <p> The Amazon Resource Name (ARN) of the updated online evaluation configuration. </p>
    #   @return [String]
    # @!attribute online_evaluation_config_id
    #   <p> The unique identifier of the updated online evaluation configuration. </p>
    #   @return [String]
    # @!attribute updated_at
    #   <p> The timestamp when the online evaluation configuration was last updated. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The status of the online evaluation configuration. </p>
    #   @return [String]
    # @!attribute execution_status
    #   <p> The execution status indicating whether the online evaluation is currently running. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p> The reason for failure if the online evaluation configuration update or execution failed. </p>
    #   @return [String]
    class UpdateOnlineEvaluationConfigResponse < Struct.new(
      nil,
      :online_evaluation_config_arn,
      :online_evaluation_config_id,
      :updated_at,
      :status,
      :execution_status,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    #   @return [String]
    # @!attribute payment_connector_id
    #   <p>The unique identifier of the payment connector to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the payment connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The updated type of the payment connector.</p>
    #   @return [String]
    # @!attribute credential_provider_configurations
    #   <p>The updated credential provider configurations for the payment connector.</p>
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    class UpdatePaymentConnectorRequest < Struct.new(
      nil,
      :payment_manager_id,
      :payment_connector_id,
      :description,
      :type,
      :credential_provider_configurations,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_connector_id
    #   <p>The unique identifier of the updated payment connector.</p>
    #   @return [String]
    # @!attribute payment_manager_id
    #   <p>The unique identifier of the parent payment manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated payment connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the updated payment connector.</p>
    #   @return [String]
    # @!attribute credential_provider_configurations
    #   <p>The credential provider configurations for the updated payment connector.</p>
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    # @!attribute last_updated_at
    #   <p>The timestamp when the payment connector was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the updated payment connector. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute authorization_url
    #   <p>The URL that the user must open to complete OAuth consent. This field is only present when the payment connector status is <code>PENDING_AUTHENTICATION</code>.</p>
    #   @return [String]
    class UpdatePaymentConnectorResponse < Struct.new(
      nil,
      :payment_connector_id,
      :payment_manager_id,
      :name,
      :type,
      :credential_provider_configurations,
      :last_updated_at,
      :status,
      :authorization_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the payment credential provider to update.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor type for the payment credential provider (e.g., CoinbaseCDP, StripePrivy).</p>
    #   @return [String]
    # @!attribute provider_configuration_input
    #   <p>Configuration specific to the vendor, including API credentials.</p>
    #   @return [Types::PaymentProviderConfigurationInput]
    class UpdatePaymentCredentialProviderRequest < Struct.new(
      nil,
      :name,
      :credential_provider_vendor,
      :provider_configuration_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the updated payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor type for the updated payment credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the updated payment credential provider.</p>
    #   @return [String]
    # @!attribute provider_configuration_output
    #   <p>Output configuration (contains secret ARNs, excludes actual secret values).</p>
    #   @return [Types::PaymentProviderConfigurationOutput]
    # @!attribute created_time
    #   <p>The timestamp when the payment credential provider was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the payment credential provider was last updated.</p>
    #   @return [Time]
    class UpdatePaymentCredentialProviderResponse < Struct.new(
      nil,
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :provider_configuration_output,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_id
    #   <p>The unique identifier of the payment manager to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the payment manager.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The updated authorizer type for the payment manager.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The updated authorizer configuration for the payment manager.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute role_arn
    #   <p>The updated Amazon Resource Name (ARN) of the IAM role for the payment manager.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If you don't specify this field, a value is randomly generated for you. If this token matches a previous request, the service ignores the request, but doesn't return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The updated Amazon Resource Name (ARN) of the customer managed KMS key used to encrypt sensitive payment manager data at rest.</p>
    #   @return [String]
    class UpdatePaymentManagerRequest < Struct.new(
      nil,
      :payment_manager_id,
      :description,
      :authorizer_type,
      :authorizer_configuration,
      :role_arn,
      :client_token,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute payment_manager_arn
    #   <p>The Amazon Resource Name (ARN) of the updated payment manager.</p>
    #   @return [String]
    # @!attribute payment_manager_id
    #   <p>The unique identifier of the updated payment manager.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated payment manager.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer for the updated payment manager.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the updated payment manager.</p>
    #   @return [String]
    # @!attribute workload_identity_details
    #   <p>The information about the workload identity.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute last_updated_at
    #   <p>The timestamp when the payment manager was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the updated payment manager. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>DELETING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt sensitive payment manager data at rest, if configured.</p>
    #   @return [String]
    class UpdatePaymentManagerResponse < Struct.new(
      nil,
      :payment_manager_arn,
      :payment_manager_id,
      :name,
      :authorizer_type,
      :role_arn,
      :workload_identity_details,
      :last_updated_at,
      :status,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier of the policy engine to be updated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the policy engine.</p>
    #   @return [Types::UpdatedDescription]
    class UpdatePolicyEngineRequest < Struct.new(
      nil,
      :policy_engine_id,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The unique identifier of the updated policy engine.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated policy engine.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The original creation timestamp of the policy engine.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy engine was last updated.</p>
    #   @return [Time]
    # @!attribute policy_engine_arn
    #   <p>The ARN of the updated policy engine.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the updated policy engine.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the policy engine data.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the policy engine.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the update status.</p>
    #   @return [Array<String>]
    class UpdatePolicyEngineResponse < Struct.new(
      nil,
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine that manages the policy to be updated. This ensures the policy is updated within the correct policy engine context.</p>
    #   @return [String]
    # @!attribute policy_id
    #   <p>The unique identifier of the policy to be updated. This must be a valid policy ID that exists within the specified policy engine.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new human-readable description for the policy. This optional field allows updating the policy's documentation while keeping the same policy logic.</p>
    #   @return [Types::UpdatedDescription]
    # @!attribute definition
    #   <p>The new Cedar or Dogwood policy statement that defines the access control rules. This replaces the existing policy definition with new logic while maintaining the policy's identity.</p>
    #   @return [Types::PolicyDefinition]
    # @!attribute validation_mode
    #   <p>The validation mode for the policy update. Determines how Cedar analyzer validation results are handled during policy updates. FAIL_ON_ANY_FINDINGS runs the Cedar analyzer and fails the update if validation issues are detected, ensuring the policy conforms to the Cedar schema and tool context. IGNORE_ALL_FINDINGS runs the Cedar analyzer but allows updates despite validation warnings. Use FAIL_ON_ANY_FINDINGS to ensure policy correctness during updates, especially when modifying policy logic or conditions.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The enforcement mode for the policy. Run this policy in <code>LOG_ONLY</code> mode to collect data on how it affects your application. Once you are satisfied with the data gathered, switch the policy to <code>ACTIVE</code>. If you omit this field, the policy's existing enforcement mode is unchanged.</p>
    #   @return [String]
    class UpdatePolicyRequest < Struct.new(
      nil,
      :policy_engine_id,
      :policy_id,
      :description,
      :definition,
      :validation_mode,
      :enforcement_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier of the updated policy.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated policy.</p>
    #   @return [String]
    # @!attribute policy_engine_id
    #   <p>The identifier of the policy engine managing the updated policy.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The original creation timestamp of the policy.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the policy was last updated.</p>
    #   @return [Time]
    # @!attribute policy_arn
    #   <p>The ARN of the updated policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the updated policy.</p>
    #   @return [String]
    # @!attribute enforcement_mode
    #   <p>The current enforcement mode of the updated policy.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The updated Cedar or Dogwood policy statement.</p>
    #   @return [Types::PolicyDefinition]
    # @!attribute description
    #   <p>The updated description of the policy.</p>
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Additional information about the update status.</p>
    #   @return [Array<String>]
    class UpdatePolicyResponse < Struct.new(
      nil,
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode,
      :definition,
      :description,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enforcement_mode] = 'ACTIVE' unless options.key?(:enforcement_mode)
        super
      end
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to update. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name for the registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description for the registry record. To clear the description, include the <code>UpdatedDescription</code> wrapper with <code>optionalValue</code> not specified.</p>
    #   @return [Types::UpdatedDescription]
    # @!attribute descriptor_type
    #   <p>The updated descriptor type for the registry record. Changing the descriptor type may require updating the <code>descriptors</code> field to match the new type's schema requirements.</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p>The updated descriptor-type-specific configuration containing the resource schema and metadata. Uses PATCH semantics where individual descriptor fields can be updated independently.</p>
    #   @return [Types::UpdatedDescriptors]
    # @!attribute record_version
    #   <p>The version of the registry record for optimistic locking. If provided, it must match the current version of the record. The service automatically increments the version after a successful update.</p>
    #   @return [String]
    # @!attribute synchronization_type
    #   <p>The updated synchronization type for the registry record.</p>
    #   @return [Types::UpdatedSynchronizationType]
    # @!attribute synchronization_configuration
    #   <p>The updated synchronization configuration for the registry record.</p>
    #   @return [Types::UpdatedSynchronizationConfiguration]
    # @!attribute trigger_synchronization
    #   <p>Whether to trigger synchronization using the stored or provided configuration. When set to <code>true</code>, the service will synchronize the record metadata from the configured external source.</p>
    #   @return [Boolean]
    class UpdateRegistryRecordRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      :name,
      :description,
      :descriptor_type,
      :descriptors,
      :record_version,
      :synchronization_type,
      :synchronization_configuration,
      :trigger_synchronization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry that contains the updated record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the updated registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier of the updated registry record.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the updated registry record.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the updated registry record.</p>
    #   @return [String]
    # @!attribute descriptor_type
    #   <p>The descriptor type of the updated registry record. Possible values are <code>MCP</code>, <code>A2A</code>, <code>CUSTOM</code>, and <code>AGENT_SKILLS</code>.</p>
    #   @return [String]
    # @!attribute descriptors
    #   <p>The descriptor-type-specific configuration of the updated registry record. For details, see the <code>Descriptors</code> data type.</p>
    #   @return [Types::Descriptors]
    # @!attribute record_version
    #   <p>The version of the updated registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the updated registry record. Possible values include <code>CREATING</code>, <code>DRAFT</code>, <code>APPROVED</code>, <code>PENDING_APPROVAL</code>, <code>REJECTED</code>, <code>DEPRECATED</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, and <code>UPDATE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry record was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry record was last updated.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason for the current status of the updated registry record.</p>
    #   @return [String]
    # @!attribute synchronization_type
    #   <p>The synchronization type of the updated registry record.</p>
    #   @return [String]
    # @!attribute synchronization_configuration
    #   <p>The synchronization configuration of the updated registry record.</p>
    #   @return [Types::SynchronizationConfiguration]
    class UpdateRegistryRecordResponse < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :description,
      :descriptor_type,
      :descriptors,
      :record_version,
      :status,
      :created_at,
      :updated_at,
      :status_reason,
      :synchronization_type,
      :synchronization_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry containing the record. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The identifier of the registry record to update the status for. You can specify either the Amazon Resource Name (ARN) or the ID of the record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The target status for the registry record.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status change, such as why the record was approved or rejected.</p>
    #   @return [String]
    class UpdateRegistryRecordStatusRequest < Struct.new(
      nil,
      :registry_id,
      :record_id,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the registry that contains the record.</p>
    #   @return [String]
    # @!attribute record_arn
    #   <p>The Amazon Resource Name (ARN) of the registry record.</p>
    #   @return [String]
    # @!attribute record_id
    #   <p>The unique identifier of the registry record.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The resulting status of the registry record.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status change.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp when the record was last updated.</p>
    #   @return [Time]
    class UpdateRegistryRecordStatusResponse < Struct.new(
      nil,
      :registry_arn,
      :record_arn,
      :record_id,
      :status,
      :status_reason,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute registry_id
    #   <p>The identifier of the registry to update. You can specify either the Amazon Resource Name (ARN) or the ID of the registry.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the registry. To clear the description, include the <code>UpdatedDescription</code> wrapper with <code>optionalValue</code> not specified.</p>
    #   @return [Types::UpdatedDescription]
    # @!attribute authorizer_configuration
    #   <p>The updated authorizer configuration for the registry. Changing the authorizer configuration can break existing consumers of the registry who are using the authorization type prior to the update.</p>
    #   @return [Types::UpdatedAuthorizerConfiguration]
    # @!attribute approval_configuration
    #   <p>The updated approval configuration for registry records. The updated configuration only affects new records that move to <code>PENDING_APPROVAL</code> status after the change. Existing records already in <code>PENDING_APPROVAL</code> status are not affected.</p>
    #   @return [Types::UpdatedApprovalConfiguration]
    class UpdateRegistryRequest < Struct.new(
      nil,
      :registry_id,
      :name,
      :description,
      :authorizer_configuration,
      :approval_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the updated registry.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the updated registry.</p>
    #   @return [String]
    # @!attribute registry_id
    #   <p>The unique identifier of the updated registry.</p>
    #   @return [String]
    # @!attribute registry_arn
    #   <p>The Amazon Resource Name (ARN) of the updated registry.</p>
    #   @return [String]
    # @!attribute authorizer_type
    #   <p>The type of authorizer used by the updated registry. This controls the authorization method for the Search and Invoke APIs used by consumers.</p> <ul> <li> <p> <code>CUSTOM_JWT</code> - Authorize with a bearer token.</p> </li> <li> <p> <code>AWS_IAM</code> - Authorize with your Amazon Web Services IAM credentials.</p> </li> </ul>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the updated registry. For details, see the <code>AuthorizerConfiguration</code> data type.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute approval_configuration
    #   <p>The approval configuration for the updated registry. For details, see the <code>ApprovalConfiguration</code> data type.</p>
    #   @return [Types::ApprovalConfiguration]
    # @!attribute status
    #   <p>The current status of the updated registry. Possible values include <code>CREATING</code>, <code>READY</code>, <code>UPDATING</code>, <code>CREATE_FAILED</code>, <code>UPDATE_FAILED</code>, <code>DELETING</code>, and <code>DELETE_FAILED</code>.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the updated registry.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the registry was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the registry was last updated.</p>
    #   @return [Time]
    class UpdateRegistryResponse < Struct.new(
      nil,
      :name,
      :description,
      :registry_id,
      :registry_arn,
      :authorizer_type,
      :authorizer_configuration,
      :approval_configuration,
      :status,
      :status_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workload identity to update.</p>
    #   @return [String]
    # @!attribute allowed_resource_oauth2_return_urls
    #   <p>The new list of allowed OAuth2 return URLs for resources associated with this workload identity. This list replaces the existing list.</p>
    #   @return [Array<String>]
    class UpdateWorkloadIdentityRequest < Struct.new(
      nil,
      :name,
      :allowed_resource_oauth2_return_urls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workload identity.</p>
    #   @return [String]
    # @!attribute workload_identity_arn
    #   <p>The Amazon Resource Name (ARN) of the workload identity.</p>
    #   @return [String]
    # @!attribute allowed_resource_oauth2_return_urls
    #   <p>The list of allowed OAuth2 return URLs for resources associated with this workload identity.</p>
    #   @return [Array<String>]
    # @!attribute created_time
    #   <p>The timestamp when the workload identity was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the workload identity was last updated.</p>
    #   @return [Time]
    class UpdateWorkloadIdentityResponse < Struct.new(
      nil,
      :name,
      :workload_identity_arn,
      :allowed_resource_oauth2_return_urls,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an A2A descriptor with PATCH semantics. When present, the A2A descriptor is replaced with the provided value. When absent, the A2A descriptor is left unchanged. To unset, include the wrapper with the value set to null.</p>
    # @!attribute optional_value
    #   <p>The updated A2A descriptor value.</p>
    #   @return [Types::A2aDescriptor]
    class UpdatedA2aDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an agent skills descriptor with PATCH semantics. When present with a value, individual fields can be updated independently. When present with a null value, the entire agent skills descriptor is unset. When absent, the agent skills descriptor is left unchanged.</p>
    # @!attribute optional_value
    #   <p>The updated agent skills descriptor fields.</p>
    #   @return [Types::UpdatedAgentSkillsDescriptorFields]
    class UpdatedAgentSkillsDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Individual agent skills descriptor fields that can be updated independently.</p>
    # @!attribute skill_md
    #   <p>The updated skill markdown definition.</p>
    #   @return [Types::UpdatedSkillMdDefinition]
    # @!attribute skill_definition
    #   <p>The updated skill definition.</p>
    #   @return [Types::UpdatedSkillDefinition]
    class UpdatedAgentSkillsDescriptorFields < Struct.new(
      nil,
      :skill_md,
      :skill_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an optional approval configuration field with PATCH semantics. When present in an update request, the approval configuration is replaced with the provided value. When absent, the approval configuration is left unchanged.</p>
    # @!attribute optional_value
    #   <p>The updated approval configuration value. Set to <code>null</code> to unset the approval configuration.</p>
    #   @return [Types::ApprovalConfiguration]
    class UpdatedApprovalConfiguration < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an optional AuthorizerConfiguration field with PATCH semantics. When present in an update request, the authorizer configuration is replaced with optionalValue. When absent, the authorizer configuration is left unchanged. To unset, include the wrapper with optionalValue not specified.</p>
    # @!attribute optional_value
    #   <p>The updated authorizer configuration value. If not specified, it will clear the current authorizer configuration of the resource.</p>
    #   @return [Types::AuthorizerConfiguration]
    class UpdatedAuthorizerConfiguration < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating a custom descriptor with PATCH semantics. When present, the custom descriptor is replaced with the provided value. When absent, the custom descriptor is left unchanged. To unset, include the wrapper with the value set to null.</p>
    # @!attribute optional_value
    #   <p>The updated custom descriptor value.</p>
    #   @return [Types::CustomDescriptor]
    class UpdatedCustomDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an optional Description field with PATCH semantics. When present in an update request, the description is replaced with optionalValue. When absent, the description is left unchanged. To unset the description, include the wrapper with optionalValue not specified.</p>
    # @!attribute optional_value
    #   <p>Represents an optional value that is used to update the human-readable description of the resource. If not specified, it will clear the current description of the resource.</p>
    #   @return [String]
    class UpdatedDescription < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an optional descriptors field with PATCH semantics. When present with a value, individual descriptors can be updated. When present with a null value, all descriptors are unset. When absent, descriptors are left unchanged.</p>
    # @!attribute optional_value
    #   <p>The updated descriptors value. Contains per-descriptor-type wrappers that are each independently updatable.</p>
    #   @return [Types::UpdatedDescriptorsUnion]
    class UpdatedDescriptors < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains per-descriptor-type wrappers for updating descriptors. Each descriptor type can be updated independently.</p>
    # @!attribute mcp
    #   <p>The updated MCP descriptor.</p>
    #   @return [Types::UpdatedMcpDescriptor]
    # @!attribute a2a
    #   <p>The updated A2A descriptor.</p>
    #   @return [Types::UpdatedA2aDescriptor]
    # @!attribute custom
    #   <p>The updated custom descriptor.</p>
    #   @return [Types::UpdatedCustomDescriptor]
    # @!attribute agent_skills
    #   <p>The updated agent skills descriptor.</p>
    #   @return [Types::UpdatedAgentSkillsDescriptor]
    class UpdatedDescriptorsUnion < Struct.new(
      nil,
      :mcp,
      :a2a,
      :custom,
      :agent_skills,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating the environment artifact configuration.</p>
    # @!attribute optional_value
    #   <p>The updated environment artifact value, or null to clear the existing configuration.</p>
    #   @return [Types::HarnessEnvironmentArtifact]
    class UpdatedHarnessEnvironmentArtifact < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating the memory configuration.</p>
    # @!attribute optional_value
    #   <p>The updated memory configuration value, or null to clear the existing configuration.</p>
    #   @return [Types::HarnessMemoryConfiguration]
    class UpdatedHarnessMemoryConfiguration < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating an MCP descriptor with PATCH semantics. When present with a value, individual MCP fields can be updated independently. When present with a null value, the entire MCP descriptor is unset. When absent, the MCP descriptor is left unchanged.</p>
    # @!attribute optional_value
    #   <p>The updated MCP descriptor fields.</p>
    #   @return [Types::UpdatedMcpDescriptorFields]
    class UpdatedMcpDescriptor < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Individual MCP descriptor fields that can be updated independently.</p>
    # @!attribute server
    #   <p>The updated server definition for the MCP descriptor.</p>
    #   @return [Types::UpdatedServerDefinition]
    # @!attribute tools
    #   <p>The updated tools definition for the MCP descriptor.</p>
    #   @return [Types::UpdatedToolsDefinition]
    class UpdatedMcpDescriptorFields < Struct.new(
      nil,
      :server,
      :tools,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating a server definition with PATCH semantics. When present, the server definition is replaced with the provided value. When absent, the server definition is left unchanged. To unset, include the wrapper with the value set to null.</p>
    # @!attribute optional_value
    #   <p>The updated server definition value.</p>
    #   @return [Types::ServerDefinition]
    class UpdatedServerDefinition < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating a skill definition with PATCH semantics.</p>
    # @!attribute optional_value
    #   <p>The updated skill definition value.</p>
    #   @return [Types::SkillDefinition]
    class UpdatedSkillDefinition < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating a skill markdown definition with PATCH semantics.</p>
    # @!attribute optional_value
    #   <p>The updated skill markdown definition value.</p>
    #   @return [Types::SkillMdDefinition]
    class UpdatedSkillMdDefinition < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating the synchronization configuration with PATCH semantics. Must be matched with <code>UpdatedSynchronizationType</code>.</p>
    # @!attribute optional_value
    #   <p>The updated synchronization configuration value.</p>
    #   @return [Types::SynchronizationConfiguration]
    class UpdatedSynchronizationConfiguration < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating the synchronization type with PATCH semantics. Must be matched with <code>UpdatedSynchronizationConfiguration</code>.</p>
    # @!attribute optional_value
    #   <p>The updated synchronization type value.</p>
    #   @return [String]
    class UpdatedSynchronizationType < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Wrapper for updating a tools definition with PATCH semantics. When present, the tools definition is replaced with the provided value. When absent, the tools definition is left unchanged. To unset, include the wrapper with the value set to null.</p>
    # @!attribute optional_value
    #   <p>The updated tools definition value.</p>
    #   @return [Types::ToolsDefinition]
    class UpdatedToolsDefinition < Struct.new(
      nil,
      :optional_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains user preference consolidation override configuration.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for user preference consolidation.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for user preference consolidation.</p>
    #   @return [String]
    class UserPreferenceConsolidationOverride < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains user preference extraction override configuration.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for user preference extraction.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for user preference extraction.</p>
    #   @return [String]
    class UserPreferenceExtractionOverride < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a user preference memory strategy.</p>
    # @!attribute name
    #   <p>The name of the user preference memory strategy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the user preference memory strategy.</p>
    #   @return [String]
    # @!attribute namespaces
    #   <p>This is a legacy parameter, use <code>namespaceTemplates</code>. The namespaces associated with the user preference memory strategy.</p>
    #   @deprecated
    #     Use namespaceTemplates instead
    #     Since: 2026-03-02
    #   @return [Array<String>]
    # @!attribute namespace_templates
    #   <p>The namespaceTemplates associated with the user preference memory strategy.</p>
    #   @return [Array<String>]
    # @!attribute memory_record_schema
    #   <p>Schema for metadata fields on records generated by this strategy.</p>
    #   @return [Types::MemoryRecordSchema]
    # @!attribute record_expiry_specification
    #   <p>The record expiry (long-term memory time-to-live) configuration for memory records generated by this strategy. Set <code>recordExpiryDurationDays</code> to the number of days after which records expire. If not specified, records generated by this strategy do not expire.</p>
    #   @return [Types::RecordExpirySpecification]
    class UserPreferenceMemoryStrategyInput < Struct.new(
      nil,
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :memory_record_schema,
      :record_expiry_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for user preference override configuration in a memory strategy.</p>
    # @!attribute extraction
    #   <p>The extraction configuration for a user preference override.</p>
    #   @return [Types::UserPreferenceOverrideExtractionConfigurationInput]
    # @!attribute consolidation
    #   <p>The consolidation configuration for a user preference override.</p>
    #   @return [Types::UserPreferenceOverrideConsolidationConfigurationInput]
    class UserPreferenceOverrideConfigurationInput < Struct.new(
      nil,
      :extraction,
      :consolidation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for user preference override consolidation configuration in a memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for user preference consolidation.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for user preference consolidation.</p>
    #   @return [String]
    class UserPreferenceOverrideConsolidationConfigurationInput < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for user preference override extraction configuration in a memory strategy.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for user preference extraction.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for user preference extraction.</p>
    #   @return [String]
    class UserPreferenceOverrideExtractionConfigurationInput < Struct.new(
      nil,
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Validation rules for extracted metadata values. Only one type can be specified, matching the field's data type.</p>
    # @!attribute string_validation
    #   <p>Validation for STRING fields.</p>
    #   @return [Types::StringValidation]
    # @!attribute string_list_validation
    #   <p>Validation for STRINGLIST fields.</p>
    #   @return [Types::StringListValidation]
    # @!attribute number_validation
    #   <p>Validation for NUMBER fields.</p>
    #   @return [Types::NumberValidation]
    class Validation < Struct.new(
      :string_validation,
      :string_list_validation,
      :number_validation,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValidation < Validation; end
      class StringListValidation < Validation; end
      class NumberValidation < Validation; end
      class Unknown < Validation; end
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    # @!attribute field_list
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

    # <p>Stores information about a field passed inside a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing why this field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source that created a configuration bundle version.</p>
    # @!attribute name
    #   <p>The name of the source (for example, <code>user</code>, <code>optimization-job</code>, or <code>system</code>).</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the source, if applicable (for example, a user ARN or optimization job ARN).</p>
    #   @return [String]
    class VersionCreatedBySource < Struct.new(
      nil,
      :name,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for listing configuration bundle versions.</p>
    # @!attribute branch_name
    #   <p>Filter by branch name.</p>
    #   @return [String]
    # @!attribute created_by_name
    #   <p>Filter by creation source name.</p>
    #   @return [String]
    # @!attribute latest_per_branch
    #   <p>When true, returns only the latest version for each branch. When false or not specified, returns all versions. Can be combined with <code>branchName</code> to get the latest version for a specific branch.</p>
    #   @return [Boolean]
    class VersionFilter < Struct.new(
      nil,
      :branch_name,
      :created_by_name,
      :latest_per_branch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The version lineage metadata that tracks parent versions and creation source. Supports git-like two-parent merges for branch management.</p>
    # @!attribute parent_version_ids
    #   <p>A list of parent version identifiers. Regular commits have 0-1 parents. Merge commits have 2 parents: the target branch parent and the source branch parent. The first parent represents the primary lineage.</p>
    #   @return [Array<String>]
    # @!attribute branch_name
    #   <p>The branch name for this version. If not specified, inherits the parent's branch or defaults to <code>mainline</code>.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The source that created this version.</p>
    #   @return [Types::VersionCreatedBySource]
    # @!attribute commit_message
    #   <p>A commit message describing the changes in this version.</p>
    #   @return [String]
    class VersionLineageMetadata < Struct.new(
      nil,
      :parent_version_ids,
      :branch_name,
      :created_by,
      :commit_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a persistent volume attached to a capacity provider. This structure defines the storage backing for the persistent volumes used by agents that run on capacity provider instances.</p>
    # @!attribute ebs_configuration
    #   <p>The configuration for an Amazon EBS-backed persistent volume.</p>
    #   @return [Types::EbsVolumeConfiguration]
    class VolumeConfiguration < Struct.new(
      :ebs_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EbsConfiguration < VolumeConfiguration; end
      class Unknown < VolumeConfiguration; end
    end

    # <p>VpcConfig for the Agent.</p>
    # @!attribute security_groups
    #   <p>The security groups associated with the VPC configuration.</p>
    #   @return [Array<String>]
    # @!attribute subnets
    #   <p>The subnets associated with the VPC configuration.</p>
    #   @return [Array<String>]
    # @!attribute require_service_s3_endpoint
    #   <note> <p>This field applies only to Agent Runtimes. It is not applicable to Browsers or Code Interpreters.</p> </note> <p>Controls whether a service-managed Amazon S3 gateway endpoint is provisioned in the VPC network topology for the agent runtime. This gateway is used by Amazon Bedrock AgentCore Runtime to download code and container images during agent startup.</p> <p>Starting May 5, 2026, Amazon Bedrock AgentCore Runtime is gradually rolling out a change to how network isolation is configured for VPC mode agents. Agent runtimes created on or after this rollout will no longer include the service-managed Amazon S3 gateway. Instead, all network access, including to Amazon S3, is governed exclusively by your VPC configuration. This field cannot be set on agent runtimes created after the rollout. Passing this field in an <code>UpdateAgentRuntime</code> request for these agent runtimes returns a <code>ValidationException</code>.</p> <p>Agent runtimes created before the rollout are not affected and continue to operate with the service-managed Amazon S3 gateway. To enforce full VPC network isolation on these existing agent runtimes, set this field to <code>false</code> via the <code>UpdateAgentRuntime</code> API. Before opting out, ensure your VPC provides the Amazon S3 access required for agent startup. If this field is not specified or is set to <code>true</code>, the service-managed Amazon S3 gateway remains provisioned.</p> <p>This field is only supported in the <code>UpdateAgentRuntime</code> API for pre-rollout agent runtimes. Passing this field in a <code>CreateAgentRuntime</code> request returns a <code>ValidationException</code>.</p>
    #   @return [Boolean]
    class VpcConfig < Struct.new(
      nil,
      :security_groups,
      :subnets,
      :require_service_s3_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC configuration for launching Amazon EC2 instances.</p>
    # @!attribute subnets
    #   <p>The IDs of the subnets in which to launch instances. You must specify at least one subnet.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The IDs of the security groups to associate with the instances. You must specify at least one security group.</p>
    #   @return [Array<String>]
    class VpcConfiguration < Struct.new(
      nil,
      :subnets,
      :security_groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services WAF configuration for the gateway. This configuration controls how the gateway behaves when the associated web ACL cannot be evaluated.</p>
    # @!attribute failure_mode
    #   <p>The failure mode that determines how the gateway handles requests when Amazon Web Services WAF is unreachable or times out. Valid values include:</p> <ul> <li> <p> <code>FAIL_CLOSE</code> - The gateway blocks requests when Amazon Web Services WAF cannot be evaluated.</p> </li> <li> <p> <code>FAIL_OPEN</code> - The gateway allows requests when Amazon Web Services WAF cannot be evaluated.</p> </li> </ul>
    #   @return [String]
    class WafConfiguration < Struct.new(
      nil,
      :failure_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A weighted configuration bundle override that splits traffic between multiple bundle versions.</p>
    # @!attribute traffic_split
    #   <p>The traffic split entries defining how traffic is distributed between configuration bundle versions.</p>
    #   @return [Array<Types::TrafficSplitEntry>]
    class WeightedOverride < Struct.new(
      nil,
      :traffic_split,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A weighted route that splits traffic between multiple gateway targets.</p>
    # @!attribute traffic_split
    #   <p>The traffic split entries defining how traffic is distributed between targets.</p>
    #   @return [Array<Types::TargetTrafficSplitEntry>]
    class WeightedRoute < Struct.new(
      nil,
      :traffic_split,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the workload identity.</p>
    # @!attribute workload_identity_arn
    #   <p>The ARN associated with the workload identity.</p>
    #   @return [String]
    class WorkloadIdentityDetails < Struct.new(
      nil,
      :workload_identity_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a workload identity.</p>
    # @!attribute name
    #   <p>The name of the workload identity.</p>
    #   @return [String]
    # @!attribute workload_identity_arn
    #   <p>The Amazon Resource Name (ARN) of the workload identity.</p>
    #   @return [String]
    class WorkloadIdentityType < Struct.new(
      nil,
      :name,
      :workload_identity_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
