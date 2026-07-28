# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgentCoreControl
  module Types

    # The Agent-to-Agent (A2A) protocol descriptor for a registry record.
    # Contains the agent card definition as defined by the A2A protocol
    # specification.
    #
    # @!attribute [rw] agent_card
    #   The agent card definition for the A2A agent, as defined by the A2A
    #   protocol specification.
    #   @return [Types::AgentCardDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/A2aDescriptor AWS API Documentation
    #
    class A2aDescriptor < Struct.new(
      :agent_card)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a request is denied per access
    # permissions
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An action to take when a gateway rule's conditions are met.
    #
    # @note Action is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Action is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Action corresponding to the set member.
    #
    # @!attribute [rw] configuration_bundle
    #   An action that applies a configuration bundle override to the
    #   request.
    #   @return [Types::ConfigurationBundleAction]
    #
    # @!attribute [rw] route_to_target
    #   An action that routes the request to a specific target.
    #   @return [Types::RouteToTargetAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Action AWS API Documentation
    #
    class Action < Struct.new(
      :configuration_bundle,
      :route_to_target,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ConfigurationBundle < Action; end
      class RouteToTarget < Action; end
      class Unknown < Action; end
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset to add examples to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Source of examples to add. Provide either inline examples or an S3
    #   URI pointing to a JSONL file.
    #   @return [Types::DataSourceType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AddDatasetExamplesRequest AWS API Documentation
    #
    class AddDatasetExamplesRequest < Struct.new(
      :dataset_id,
      :client_token,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] added_count
    #   The number of examples added.
    #   @return [Integer]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the examples were added.
    #   @return [Time]
    #
    # @!attribute [rw] example_ids
    #   IDs of all added examples (auto-generated UUIDs).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AddDatasetExamplesResponse AWS API Documentation
    #
    class AddDatasetExamplesResponse < Struct.new(
      :dataset_arn,
      :dataset_id,
      :status,
      :added_count,
      :updated_at,
      :example_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The agent card definition for an A2A descriptor. Contains the schema
    # version and inline content for the agent card.
    #
    # @!attribute [rw] schema_version
    #   The schema version of the agent card based on the A2A protocol
    #   specification.
    #   @return [String]
    #
    # @!attribute [rw] inline_content
    #   The JSON content containing the A2A agent card definition,
    #   conforming to the A2A protocol specification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AgentCardDefinition AWS API Documentation
    #
    class AgentCardDefinition < Struct.new(
      :schema_version,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an agent runtime. An agent runtime is the
    # execution environment for a Amazon Bedrock AgentCore Agent.
    #
    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the agent runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the agent runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_version
    #   The version of the agent runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_name
    #   The name of the agent runtime.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent runtime.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the agent runtime was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the agent runtime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AgentRuntime AWS API Documentation
    #
    class AgentRuntime < Struct.new(
      :agent_runtime_arn,
      :agent_runtime_id,
      :agent_runtime_version,
      :agent_runtime_name,
      :description,
      :last_updated_at,
      :status)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The artifact of the agent.
    #
    # @note AgentRuntimeArtifact is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AgentRuntimeArtifact is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AgentRuntimeArtifact corresponding to the set member.
    #
    # @!attribute [rw] container_configuration
    #   The container configuration for the agent artifact.
    #   @return [Types::ContainerConfiguration]
    #
    # @!attribute [rw] code_configuration
    #   The code configuration for the agent runtime artifact, including the
    #   source code location and execution settings.
    #   @return [Types::CodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AgentRuntimeArtifact AWS API Documentation
    #
    class AgentRuntimeArtifact < Struct.new(
      :container_configuration,
      :code_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContainerConfiguration < AgentRuntimeArtifact; end
      class CodeConfiguration < AgentRuntimeArtifact; end
      class Unknown < AgentRuntimeArtifact; end
    end

    # Contains information about an agent runtime endpoint. An endpoint
    # provides a way to connect to and interact with an agent runtime.
    #
    # @!attribute [rw] name
    #   The name of the agent runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] live_version
    #   The live version of the agent runtime endpoint. This is the version
    #   that is currently serving requests.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The target version of the agent runtime endpoint. This is the
    #   version that the endpoint is being updated to.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_endpoint_arn
    #   The Amazon Resource Name (ARN) of the agent runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the agent runtime associated with
    #   the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the agent runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the agent runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the agent runtime endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the agent runtime endpoint was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AgentRuntimeEndpoint AWS API Documentation
    #
    class AgentRuntimeEndpoint < Struct.new(
      :name,
      :live_version,
      :target_version,
      :agent_runtime_endpoint_arn,
      :agent_runtime_arn,
      :status,
      :id,
      :description,
      :created_at,
      :last_updated_at)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The agent skills descriptor for a registry record. Contains an
    # optional skill markdown definition in human-readable format and an
    # optional structured skill definition.
    #
    # @!attribute [rw] skill_md
    #   The optional skill markdown definition describing the agent's
    #   skills in a human-readable format.
    #   @return [Types::SkillMdDefinition]
    #
    # @!attribute [rw] skill_definition
    #   The structured skill definition with schema version and content.
    #   @return [Types::SkillDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AgentSkillsDescriptor AWS API Documentation
    #
    class AgentSkillsDescriptor < Struct.new(
      :skill_md,
      :skill_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that restricts which workloads in the request's
    # identity chain are allowed to invoke the target, identified by their
    # hosting environments and workload identities. At launch, this is
    # supported only for AgentCore Runtime targets, and the allowed
    # workloads are AgentCore Gateways.
    #
    # @!attribute [rw] hosting_environments
    #   The list of hosting environments whose workloads are allowed to
    #   invoke the target. At launch, the only supported hosting environment
    #   is AgentCore Gateway.
    #   @return [Array<Types::HostingEnvironment>]
    #
    # @!attribute [rw] workload_identities
    #   The list of workload identities that are allowed to invoke the
    #   target.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AllowedWorkloadConfiguration AWS API Documentation
    #
    class AllowedWorkloadConfiguration < Struct.new(
      :hosting_environments,
      :workload_identities)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an Amazon API Gateway target.
    #
    # @!attribute [rw] rest_api_id
    #   The ID of the API Gateway REST API.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The ID of the stage of the REST API to add as a target.
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_tool_configuration
    #   The configuration for defining REST API tool filters and overrides
    #   for the gateway target.
    #   @return [Types::ApiGatewayToolConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ApiGatewayTargetConfiguration AWS API Documentation
    #
    class ApiGatewayTargetConfiguration < Struct.new(
      :rest_api_id,
      :stage,
      :api_gateway_tool_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for defining REST API tool filters and overrides for
    # the gateway target.
    #
    # @!attribute [rw] tool_overrides
    #   A list of explicit tool definitions with optional custom names and
    #   descriptions.
    #   @return [Array<Types::ApiGatewayToolOverride>]
    #
    # @!attribute [rw] tool_filters
    #   A list of path and method patterns to expose as tools using metadata
    #   from the REST API's OpenAPI specification.
    #   @return [Array<Types::ApiGatewayToolFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ApiGatewayToolConfiguration AWS API Documentation
    #
    class ApiGatewayToolConfiguration < Struct.new(
      :tool_overrides,
      :tool_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which operations from an API Gateway REST API are exposed as
    # tools. Tool names and descriptions are derived from the operationId
    # and description fields in the API's exported OpenAPI specification.
    #
    # @!attribute [rw] filter_path
    #   Resource path to match in the REST API. Supports exact paths (for
    #   example, `/pets`) or wildcard paths (for example, `/pets/*` to match
    #   all paths under `/pets`). Must match existing paths in the REST API.
    #   @return [String]
    #
    # @!attribute [rw] methods
    #   The methods to filter for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ApiGatewayToolFilter AWS API Documentation
    #
    class ApiGatewayToolFilter < Struct.new(
      :filter_path,
      :methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings to override configurations for a tool.
    #
    # @!attribute [rw] name
    #   The name of tool. Identifies the tool in the Model Context Protocol.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the tool. Provides information about the purpose
    #   and usage of the tool. If not provided, uses the description from
    #   the API's OpenAPI specification.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   Resource path in the REST API (e.g., `/pets`). Must explicitly match
    #   an existing path in the REST API.
    #   @return [String]
    #
    # @!attribute [rw] method
    #   The HTTP method to expose for the specified path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ApiGatewayToolOverride AWS API Documentation
    #
    class ApiGatewayToolOverride < Struct.new(
      :name,
      :description,
      :path,
      :method)
      SENSITIVE = []
      include Aws::Structure
    end

    # An API key credential provider for gateway authentication. This
    # structure contains the configuration for authenticating with the
    # target endpoint using an API key.
    #
    # @!attribute [rw] provider_arn
    #   The Amazon Resource Name (ARN) of the API key credential provider.
    #   This ARN identifies the provider in Amazon Web Services.
    #   @return [String]
    #
    # @!attribute [rw] credential_parameter_name
    #   The name of the credential parameter for the API key. This parameter
    #   name is used when sending the API key to the target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] credential_prefix
    #   The prefix for the API key credential. This prefix is added to the
    #   API key when sending it to the target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] credential_location
    #   The location of the API key credential. This field specifies where
    #   in the request the API key should be placed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ApiKeyCredentialProvider AWS API Documentation
    #
    class ApiKeyCredentialProvider < Struct.new(
      :provider_arn,
      :credential_parameter_name,
      :credential_prefix,
      :credential_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an API key credential provider.
    #
    # @!attribute [rw] name
    #   The name of the API key credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the API key credential provider.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the API key credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the API key credential provider was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ApiKeyCredentialProviderItem AWS API Documentation
    #
    class ApiKeyCredentialProviderItem < Struct.new(
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for API schema.
    #
    # @note ApiSchemaConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ApiSchemaConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ApiSchemaConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   The Amazon S3 configuration for a gateway. This structure defines
    #   how the gateway accesses files in Amazon S3.
    #   @return [Types::S3Configuration]
    #
    # @!attribute [rw] inline_payload
    #   The inline payload containing the API schema definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ApiSchemaConfiguration AWS API Documentation
    #
    class ApiSchemaConfiguration < Struct.new(
      :s3,
      :inline_payload,
      :unknown)
      SENSITIVE = [:inline_payload]
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ApiSchemaConfiguration; end
      class InlinePayload < ApiSchemaConfiguration; end
      class Unknown < ApiSchemaConfiguration; end
    end

    # Configuration for the registry record approval workflow. Controls
    # whether records added to the registry require explicit approval before
    # becoming active.
    #
    # @!attribute [rw] auto_approval
    #   Whether registry records are auto-approved. When set to `true`,
    #   records are automatically approved upon creation. When set to
    #   `false` (the default), records require explicit approval for
    #   security purposes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ApprovalConfiguration AWS API Documentation
    #
    class ApprovalConfiguration < Struct.new(
      :auto_approval)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for connecting to Atlassian services using
    # OAuth2 authentication. This includes the client credentials required
    # to authenticate with Atlassian's OAuth2 authorization server.
    #
    # @!attribute [rw] client_id
    #   The client ID for the Atlassian OAuth2 provider. This identifier is
    #   assigned by Atlassian when you register your application.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the Atlassian OAuth2 provider. This secret is
    #   assigned by Atlassian and used along with the client ID to
    #   authenticate your application.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret for the Atlassian OAuth2
    #   provider. Use `MANAGED` if the secret is managed by the service, or
    #   `EXTERNAL` if you manage the secret yourself in Amazon Web Services
    #   Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AtlassianOauth2ProviderConfigInput AWS API Documentation
    #
    class AtlassianOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # The configuration details returned for an Atlassian OAuth2 provider,
    # including the client ID and OAuth2 discovery information.
    #
    # @!attribute [rw] oauth_discovery
    #   Contains the discovery information for an OAuth2 provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the Atlassian OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AtlassianOauth2ProviderConfigOutput AWS API Documentation
    #
    class AtlassianOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the authorization data that is returned when a gateway target
    # is configured with a credential provider with authorization code grant
    # type and requires user federation.
    #
    # @note AuthorizationData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AuthorizationData corresponding to the set member.
    #
    # @!attribute [rw] oauth2
    #   OAuth2 authorization data for the gateway target.
    #   @return [Types::OAuth2AuthorizationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AuthorizationData AWS API Documentation
    #
    class AuthorizationData < Struct.new(
      :oauth2,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Oauth2 < AuthorizationData; end
      class Unknown < AuthorizationData; end
    end

    # Represents inbound authorization configuration options used to
    # authenticate incoming requests.
    #
    # @note AuthorizerConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AuthorizerConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AuthorizerConfiguration corresponding to the set member.
    #
    # @!attribute [rw] custom_jwt_authorizer
    #   The inbound JWT-based authorization, specifying how incoming
    #   requests should be authenticated.
    #   @return [Types::CustomJWTAuthorizerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AuthorizerConfiguration AWS API Documentation
    #
    class AuthorizerConfiguration < Struct.new(
      :custom_jwt_authorizer,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomJwtAuthorizer < AuthorizerConfiguration; end
      class Unknown < AuthorizerConfiguration; end
    end

    # Defines the value or values to match for and the relationship of the
    # match.
    #
    # @!attribute [rw] claim_match_value
    #   The value or values to match for.
    #   @return [Types::ClaimMatchValueType]
    #
    # @!attribute [rw] claim_match_operator
    #   Defines the relationship between the claim field value and the value
    #   or values you're matching for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AuthorizingClaimMatchValueType AWS API Documentation
    #
    class AuthorizingClaimMatchValueType < Struct.new(
      :claim_match_value,
      :claim_match_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for using Amazon Bedrock models in evaluator
    # assessments, including model selection and inference parameters.
    #
    # @!attribute [rw] model_id
    #   The identifier of the Amazon Bedrock model to use for evaluation.
    #   Must be a supported foundation model available in your region.
    #   @return [String]
    #
    # @!attribute [rw] inference_config
    #   The inference configuration parameters that control model behavior
    #   during evaluation, including temperature, token limits, and sampling
    #   settings.
    #   @return [Types::InferenceConfiguration]
    #
    # @!attribute [rw] additional_model_request_fields
    #   Additional model-specific request fields to customize model behavior
    #   beyond the standard inference configuration.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/BedrockEvaluatorModelConfig AWS API Documentation
    #
    class BedrockEvaluatorModelConfig < Struct.new(
      :model_id,
      :inference_config,
      :additional_model_request_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Browser enterprise policy configuration.
    #
    # @!attribute [rw] location
    #   The location of the enterprise policy file.
    #   @return [Types::ResourceLocation]
    #
    # @!attribute [rw] type
    #   The type of browser enterprise policy. Available values are
    #   `MANAGED` and `RECOMMENDED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/BrowserEnterprisePolicy AWS API Documentation
    #
    class BrowserEnterprisePolicy < Struct.new(
      :location,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for a browser. This structure defines how
    # the browser connects to the network.
    #
    # @!attribute [rw] network_mode
    #   The network mode for the browser. This field specifies how the
    #   browser connects to the network.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the browser. This configuration is
    #   required when the network mode is set to `VPC`.
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/BrowserNetworkConfiguration AWS API Documentation
    #
    class BrowserNetworkConfiguration < Struct.new(
      :network_mode,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a browser profile. A browser
    # profile stores persistent browser data that can be reused across
    # browser sessions.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the browser profile. Possible values include
    #   READY, SAVING, DELETING, and DELETED.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the browser profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the browser profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_saved_at
    #   The timestamp when browser session data was last saved to this
    #   profile.
    #   @return [Time]
    #
    # @!attribute [rw] last_saved_browser_session_id
    #   The identifier of the browser session from which data was last saved
    #   to this profile.
    #   @return [String]
    #
    # @!attribute [rw] last_saved_browser_id
    #   The identifier of the browser from which data was last saved to this
    #   profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/BrowserProfileSummary AWS API Documentation
    #
    class BrowserProfileSummary < Struct.new(
      :profile_id,
      :profile_arn,
      :name,
      :description,
      :status,
      :created_at,
      :last_updated_at,
      :last_saved_at,
      :last_saved_browser_session_id,
      :last_saved_browser_id)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Configuration for enabling browser signing capabilities that allow
    # agents to cryptographically identify themselves to websites using HTTP
    # message signatures.
    #
    # @!attribute [rw] enabled
    #   Specifies whether browser signing is enabled. When enabled, the
    #   browser will cryptographically sign HTTP requests to identify itself
    #   as an AI agent to bot control vendors.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/BrowserSigningConfigInput AWS API Documentation
    #
    class BrowserSigningConfigInput < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current browser signing configuration that shows whether
    # cryptographic agent identification is enabled for web bot
    # authentication.
    #
    # @!attribute [rw] enabled
    #   Indicates whether browser signing is currently enabled for
    #   cryptographic agent identification using HTTP message signatures.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/BrowserSigningConfigOutput AWS API Documentation
    #
    class BrowserSigningConfigOutput < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a browser. A browser enables Amazon
    # Bedrock AgentCore Agent to interact with web content.
    #
    # @!attribute [rw] browser_id
    #   The unique identifier of the browser.
    #   @return [String]
    #
    # @!attribute [rw] browser_arn
    #   The Amazon Resource Name (ARN) of the browser.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the browser.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the browser.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the browser.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the browser was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the browser was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/BrowserSummary AWS API Documentation
    #
    class BrowserSummary < Struct.new(
      :browser_id,
      :browser_arn,
      :name,
      :description,
      :status,
      :created_at,
      :last_updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The definition of a categorical rating scale option that provides a
    # named category with its description for evaluation scoring.
    #
    # @!attribute [rw] definition
    #   The description that explains what this categorical rating
    #   represents and when it should be used.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label or name of this categorical rating option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CategoricalScaleDefinition AWS API Documentation
    #
    class CategoricalScaleDefinition < Struct.new(
      :definition,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a Cedar policy statement within the AgentCore Policy
    # system. Cedar is a policy language designed for authorization that
    # provides human-readable, analyzable, and high-performance policy
    # evaluation for controlling agent behavior and access decisions.
    #
    # @!attribute [rw] statement
    #   The Cedar policy statement that defines the authorization logic.
    #   This statement follows Cedar syntax and specifies principals,
    #   actions, resources, and conditions that determine when access should
    #   be allowed or denied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CedarPolicy AWS API Documentation
    #
    class CedarPolicy < Struct.new(
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # A certificate to install in the browser or code interpreter.
    #
    # @!attribute [rw] location
    #   The location of the certificate.
    #   @return [Types::CertificateLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location from which to retrieve a certificate.
    #
    # @note CertificateLocation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CertificateLocation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CertificateLocation corresponding to the set member.
    #
    # @!attribute [rw] secrets_manager
    #   The Amazon Web Services Secrets Manager location of the certificate.
    #   @return [Types::SecretsManagerLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CertificateLocation AWS API Documentation
    #
    class CertificateLocation < Struct.new(
      :secrets_manager,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SecretsManager < CertificateLocation; end
      class Unknown < CertificateLocation; end
    end

    # The value or values to match for.
    #
    # * Include a `matchValueString` with the `EQUALS` operator to specify a
    #   string that matches the claim field value.
    #
    # * Include a `matchValueArray` to specify an array of string values.
    #   You can use the following operators:
    #
    #   * Use `CONTAINS` to yield a match if the claim field value is in the
    #     array.
    #
    #   * Use `CONTAINS_ANY` to yield a match if the claim field value
    #     contains any of the strings in the array.
    #
    # @note ClaimMatchValueType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ClaimMatchValueType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ClaimMatchValueType corresponding to the set member.
    #
    # @!attribute [rw] match_value_string
    #   The string value to match for.
    #   @return [String]
    #
    # @!attribute [rw] match_value_string_list
    #   An array of strings to check for a match.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ClaimMatchValueType AWS API Documentation
    #
    class ClaimMatchValueType < Struct.new(
      :match_value_string,
      :match_value_string_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MatchValueString < ClaimMatchValueType; end
      class MatchValueStringList < ClaimMatchValueType; end
      class Unknown < ClaimMatchValueType; end
    end

    # The configuration for reading agent traces from CloudWatch logs as
    # input for online evaluation.
    #
    # @!attribute [rw] log_group_names
    #   The list of CloudWatch log group names to monitor for agent traces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_names
    #   The list of service names to filter traces within the specified log
    #   groups. Used to identify relevant agent sessions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CloudWatchLogsInputConfig AWS API Documentation
    #
    class CloudWatchLogsInputConfig < Struct.new(
      :log_group_names,
      :service_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for writing evaluation results to CloudWatch logs
    # with embedded metric format (EMF) for monitoring.
    #
    # @!attribute [rw] log_group_name
    #   The name of the CloudWatch log group where evaluation results will
    #   be written. The log group will be created if it doesn't exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CloudWatchOutputConfig AWS API Documentation
    #
    class CloudWatchOutputConfig < Struct.new(
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for periodic batch evaluation clustering, specifying how
    # often clustering jobs run.
    #
    # @!attribute [rw] frequencies
    #   The list of frequencies at which clustering batch evaluations are
    #   triggered.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ClusteringConfig AWS API Documentation
    #
    class ClusteringConfig < Struct.new(
      :frequencies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source code configuration that specifies the location and details
    # of the code to be executed.
    #
    # @note Code is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Code is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Code corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   The Amazon Amazon S3 object that contains the source code for the
    #   agent runtime.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Code AWS API Documentation
    #
    class Code < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < Code; end
      class Unknown < Code; end
    end

    # Configuration for a code-based evaluator. Specify the Lambda function
    # to use for evaluation.
    #
    # @note CodeBasedEvaluatorConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CodeBasedEvaluatorConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CodeBasedEvaluatorConfig corresponding to the set member.
    #
    # @!attribute [rw] lambda_config
    #   The Lambda function configuration for code-based evaluation.
    #   @return [Types::LambdaEvaluatorConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CodeBasedEvaluatorConfig AWS API Documentation
    #
    class CodeBasedEvaluatorConfig < Struct.new(
      :lambda_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class LambdaConfig < CodeBasedEvaluatorConfig; end
      class Unknown < CodeBasedEvaluatorConfig; end
    end

    # The configuration for the source code that defines how the agent
    # runtime code should be executed, including the code location, runtime
    # environment, and entry point.
    #
    # @!attribute [rw] code
    #   The source code location and configuration details.
    #   @return [Types::Code]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for executing the agent code. Specify the
    #   programming language and version to use for the agent runtime. For
    #   valid values, see the list of supported runtimes.
    #   @return [String]
    #
    # @!attribute [rw] entry_point
    #   The entry point for the code execution, specifying the function or
    #   method that should be invoked when the code runs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CodeConfiguration AWS API Documentation
    #
    class CodeConfiguration < Struct.new(
      :code,
      :runtime,
      :entry_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for a code interpreter. This structure
    # defines how the code interpreter connects to the network.
    #
    # @!attribute [rw] network_mode
    #   The network mode for the code interpreter. This field specifies how
    #   the code interpreter connects to the network.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the code interpreter. This configuration
    #   is required when the network mode is set to `VPC`.
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CodeInterpreterNetworkConfiguration AWS API Documentation
    #
    class CodeInterpreterNetworkConfiguration < Struct.new(
      :network_mode,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a code interpreter. A code
    # interpreter enables Amazon Bedrock AgentCore Agent to execute code.
    #
    # @!attribute [rw] code_interpreter_id
    #   The unique identifier of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] code_interpreter_arn
    #   The Amazon Resource Name (ARN) of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the code interpreter was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the code interpreter was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CodeInterpreterSummary AWS API Documentation
    #
    class CodeInterpreterSummary < Struct.new(
      :code_interpreter_id,
      :code_interpreter_arn,
      :name,
      :description,
      :status,
      :created_at,
      :last_updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Coinbase CDP configuration — credentials provided by Coinbase
    # Developer Platform.
    #
    # @!attribute [rw] api_key_id
    #   The API key identifier provided by Coinbase Developer Platform.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret
    #   The API key secret provided by Coinbase Developer Platform.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_source
    #   The source type of the API key secret for the Coinbase Developer
    #   Platform. Use `MANAGED` if the secret is managed by the service, or
    #   `EXTERNAL` if you manage the secret yourself in Amazon Web Services
    #   Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the API key secret. This includes the secret ID and the JSON
    #   key used to extract the API key secret value from the secret.
    #   Required when `apiKeySecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] wallet_secret
    #   The wallet secret provided by Coinbase Developer Platform.
    #   @return [String]
    #
    # @!attribute [rw] wallet_secret_source
    #   The source type of the wallet secret for the Coinbase Developer
    #   Platform. Use `MANAGED` if the secret is managed by the service, or
    #   `EXTERNAL` if you manage the secret yourself in Amazon Web Services
    #   Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] wallet_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the wallet secret. This includes the secret ID and the JSON
    #   key used to extract the wallet secret value from the secret.
    #   Required when `walletSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CoinbaseCdpConfigurationInput AWS API Documentation
    #
    class CoinbaseCdpConfigurationInput < Struct.new(
      :api_key_id,
      :api_key_secret,
      :api_key_secret_source,
      :api_key_secret_config,
      :wallet_secret,
      :wallet_secret_source,
      :wallet_secret_config)
      SENSITIVE = [:api_key_secret, :wallet_secret]
      include Aws::Structure
    end

    # Coinbase CDP configuration output with secret ARNs.
    #
    # @!attribute [rw] api_key_id
    #   The API key identifier provided by Coinbase Developer Platform.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_arn
    #   Contains information about a secret in Amazon Web Services Secrets
    #   Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] api_key_secret_json_key
    #   The JSON key used to extract the API key secret value from the
    #   Amazon Web Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_source
    #   The source type of the API key secret. Either `MANAGED` if the
    #   secret is managed by the service, or `EXTERNAL` if managed by the
    #   user in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] wallet_secret_arn
    #   Contains information about a secret in Amazon Web Services Secrets
    #   Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] wallet_secret_json_key
    #   The JSON key used to extract the wallet secret value from the Amazon
    #   Web Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] wallet_secret_source
    #   The source type of the wallet secret. Either `MANAGED` if the secret
    #   is managed by the service, or `EXTERNAL` if managed by the user in
    #   Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CoinbaseCdpConfigurationOutput AWS API Documentation
    #
    class CoinbaseCdpConfigurationOutput < Struct.new(
      :api_key_id,
      :api_key_secret_arn,
      :api_key_secret_json_key,
      :api_key_secret_source,
      :wallet_secret_arn,
      :wallet_secret_json_key,
      :wallet_secret_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a component within a configuration bundle. The
    # component type is inferred from the component identifier ARN.
    #
    # @!attribute [rw] configuration
    #   The configuration values as a flexible JSON document.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ComponentConfiguration AWS API Documentation
    #
    class ComponentConfiguration < Struct.new(
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown when a resource is modified concurrently by multiple
    # requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A condition that determines when a gateway rule applies. Conditions
    # can match on principals or request paths.
    #
    # @note Condition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Condition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Condition corresponding to the set member.
    #
    # @!attribute [rw] match_principals
    #   A condition that matches on the identity of the caller making the
    #   request.
    #   @return [Types::MatchPrincipals]
    #
    # @!attribute [rw] match_paths
    #   A condition that matches on the request path.
    #   @return [Types::MatchPaths]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :match_principals,
      :match_paths,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MatchPrincipals < Condition; end
      class MatchPaths < Condition; end
      class Unknown < Condition; end
    end

    # An action that applies a configuration bundle override, either as a
    # static override or a weighted split for A/B testing.
    #
    # @note ConfigurationBundleAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ConfigurationBundleAction is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConfigurationBundleAction corresponding to the set member.
    #
    # @!attribute [rw] static_override
    #   A static configuration bundle override that applies a single bundle
    #   version to all matching requests.
    #   @return [Types::StaticOverride]
    #
    # @!attribute [rw] weighted_override
    #   A weighted configuration bundle override that splits traffic between
    #   multiple bundle versions based on configured weights.
    #   @return [Types::WeightedOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConfigurationBundleAction AWS API Documentation
    #
    class ConfigurationBundleAction < Struct.new(
      :static_override,
      :weighted_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StaticOverride < ConfigurationBundleAction; end
      class WeightedOverride < ConfigurationBundleAction; end
      class Unknown < ConfigurationBundleAction; end
    end

    # A reference to a specific version of a configuration bundle.
    #
    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_version
    #   The version of the configuration bundle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConfigurationBundleReference AWS API Documentation
    #
    class ConfigurationBundleReference < Struct.new(
      :bundle_arn,
      :bundle_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a configuration bundle.
    #
    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_name
    #   The name of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the configuration bundle was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConfigurationBundleSummary AWS API Documentation
    #
    class ConfigurationBundleSummary < Struct.new(
      :bundle_arn,
      :bundle_id,
      :bundle_name,
      :description,
      :created_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Summary information about a configuration bundle version.
    #
    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version identifier of this configuration bundle version.
    #   @return [String]
    #
    # @!attribute [rw] lineage_metadata
    #   The version lineage metadata, including parent versions, branch
    #   name, and creation source.
    #   @return [Types::VersionLineageMetadata]
    #
    # @!attribute [rw] version_created_at
    #   The timestamp when this version was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConfigurationBundleVersionSummary AWS API Documentation
    #
    class ConfigurationBundleVersionSummary < Struct.new(
      :bundle_arn,
      :bundle_id,
      :version_id,
      :lineage_metadata,
      :version_created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when there is a conflict performing an
    # operation
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a single tool within a connector.
    #
    # @!attribute [rw] name
    #   The tool or operation name (for example, `retrieve` or `webSearch`).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An agent-facing description override for this tool.
    #   @return [String]
    #
    # @!attribute [rw] parameter_values
    #   Parameters to set as fixed or default values when provisioning this
    #   tool.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] parameter_overrides
    #   Parameters to expose to the agent at runtime, with optional
    #   description overrides.
    #   @return [Array<Types::ConnectorParameterOverride>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConnectorConfiguration AWS API Documentation
    #
    class ConnectorConfiguration < Struct.new(
      :name,
      :description,
      :parameter_values,
      :parameter_overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a parameter override for a connector tool, allowing you to
    # control parameter visibility and descriptions.
    #
    # @!attribute [rw] path
    #   A JSON Pointer path identifying the parameter (for example,
    #   `/numberOfResults` or `/filter`).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An agent-facing description override for this parameter.
    #   @return [String]
    #
    # @!attribute [rw] visible
    #   Whether this parameter is visible to the agent. If not specified,
    #   uses the service default.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConnectorParameterOverride AWS API Documentation
    #
    class ConnectorParameterOverride < Struct.new(
      :path,
      :description,
      :visible)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source identifying the connector integration.
    #
    # @!attribute [rw] connector_id
    #   The identifier for the connector integration (for example,
    #   `bedrock-knowledge-bases`).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the connector to use (for example, `1.1.0`). If you
    #   don't specify a version, the service uses the latest available
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConnectorSource AWS API Documentation
    #
    class ConnectorSource < Struct.new(
      :connector_id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a connector integration target. Connectors provide
    # pre-built integrations with Amazon Web Services services and
    # third-party tools.
    #
    # @!attribute [rw] source
    #   The source configuration identifying which connector to use.
    #   @return [Types::ConnectorSource]
    #
    # @!attribute [rw] enabled
    #   A list of tool names to enable from this connector. If absent, all
    #   tools provided by the connector are enabled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configurations
    #   A list of per-tool configurations for the connector.
    #   @return [Array<Types::ConnectorConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConnectorTargetConfiguration AWS API Documentation
    #
    class ConnectorTargetConfiguration < Struct.new(
      :source,
      :enabled,
      :configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains consolidation configuration information for a memory
    # strategy.
    #
    # @note ConsolidationConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConsolidationConfiguration corresponding to the set member.
    #
    # @!attribute [rw] custom_consolidation_configuration
    #   The custom consolidation configuration.
    #   @return [Types::CustomConsolidationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ConsolidationConfiguration AWS API Documentation
    #
    class ConsolidationConfiguration < Struct.new(
      :custom_consolidation_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomConsolidationConfiguration < ConsolidationConfiguration; end
      class Unknown < ConsolidationConfiguration; end
    end

    # Representation of a container configuration.
    #
    # @!attribute [rw] container_uri
    #   The ECR URI of the container.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ContainerConfiguration AWS API Documentation
    #
    class ContainerConfiguration < Struct.new(
      :container_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents content input for policy generation operations. This
    # structure encapsulates the natural language descriptions or other
    # content formats that are used as input for AI-powered policy
    # generation.
    #
    # @note Content is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] raw_text
    #   The raw text content containing natural language descriptions of
    #   desired policy behavior. This text is processed by AI to generate
    #   corresponding Cedar policy statements that match the described
    #   intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Content AWS API Documentation
    #
    class Content < Struct.new(
      :raw_text,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RawText < Content; end
      class Unknown < Content; end
    end

    # Defines what content to stream and at what level of detail.
    #
    # @!attribute [rw] type
    #   Type of content to stream.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   Level of detail for streamed content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ContentConfiguration AWS API Documentation
    #
    class ContentConfiguration < Struct.new(
      :type,
      :level)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to create an endpoint
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_version
    #   The version of the AgentCore Runtime to use for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the agent runtime
    #   endpoint. Tags enable you to categorize your resources in different
    #   ways, for example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateAgentRuntimeEndpointRequest AWS API Documentation
    #
    class CreateAgentRuntimeEndpointRequest < Struct.new(
      :agent_runtime_id,
      :name,
      :agent_runtime_version,
      :description,
      :client_token,
      :tags)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] target_version
    #   The target version of the AgentCore Runtime for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_endpoint_arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the AgentCore Runtime endpoint was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateAgentRuntimeEndpointResponse AWS API Documentation
    #
    class CreateAgentRuntimeEndpointResponse < Struct.new(
      :target_version,
      :agent_runtime_endpoint_arn,
      :agent_runtime_arn,
      :agent_runtime_id,
      :endpoint_name,
      :status,
      :created_at)
      SENSITIVE = [:endpoint_name]
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_name
    #   The name of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_artifact
    #   The artifact of the AgentCore Runtime.
    #   @return [Types::AgentRuntimeArtifact]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that provides permissions for the AgentCore
    #   Runtime.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the AgentCore Runtime.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the AgentCore Runtime.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] request_header_configuration
    #   Configuration for HTTP request headers that will be passed through
    #   to the runtime.
    #   @return [Types::RequestHeaderConfiguration]
    #
    # @!attribute [rw] protocol_configuration
    #   The protocol configuration for an agent runtime. This structure
    #   defines how the agent runtime communicates with clients.
    #   @return [Types::ProtocolConfiguration]
    #
    # @!attribute [rw] lifecycle_configuration
    #   The life cycle configuration for the AgentCore Runtime.
    #   @return [Types::LifecycleConfiguration]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables to set in the AgentCore Runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The filesystem configurations to mount into the AgentCore Runtime.
    #   Use filesystem configurations to provide persistent storage to your
    #   AgentCore Runtime sessions.
    #   @return [Array<Types::FilesystemConfiguration>]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the agent runtime. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateAgentRuntimeRequest AWS API Documentation
    #
    class CreateAgentRuntimeRequest < Struct.new(
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
      :tags)
      SENSITIVE = [:description, :environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the AgentCore Runtime.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_version
    #   The version of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the AgentCore Runtime was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the AgentCore Runtime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateAgentRuntimeResponse AWS API Documentation
    #
    class CreateAgentRuntimeResponse < Struct.new(
      :agent_runtime_arn,
      :workload_identity_details,
      :agent_runtime_id,
      :agent_runtime_version,
      :created_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the API key credential provider. The name must be unique
    #   within your account.
    #   @return [String]
    #
    # @!attribute [rw] api_key
    #   The API key to use for authentication. This value is encrypted and
    #   stored securely.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the API key. This includes the secret ID and the JSON key
    #   used to extract the API key value from the secret. Required when
    #   `apiKeySecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] api_key_secret_source
    #   The source type of the API key secret. Use `MANAGED` if the secret
    #   is managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the API key credential
    #   provider. Tags enable you to categorize your resources in different
    #   ways, for example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateApiKeyCredentialProviderRequest AWS API Documentation
    #
    class CreateApiKeyCredentialProviderRequest < Struct.new(
      :name,
      :api_key,
      :api_key_secret_config,
      :api_key_secret_source,
      :tags)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # @!attribute [rw] api_key_secret_arn
    #   The Amazon Resource Name (ARN) of the secret containing the API key.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] api_key_secret_json_key
    #   The JSON key used to extract the API key value from the Amazon Web
    #   Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_source
    #   The source type of the API key secret. Either `MANAGED` if the
    #   secret is managed by the service, or `EXTERNAL` if managed by the
    #   user in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the created API key credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the created API key credential
    #   provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateApiKeyCredentialProviderResponse AWS API Documentation
    #
    class CreateApiKeyCredentialProviderResponse < Struct.new(
      :api_key_secret_arn,
      :api_key_secret_json_key,
      :api_key_secret_source,
      :name,
      :credential_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the browser profile. The name must be unique within your
    #   account and can contain alphanumeric characters and underscores.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the browser profile. Use this field to describe the
    #   purpose or contents of the profile.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the browser profile. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateBrowserProfileRequest AWS API Documentation
    #
    class CreateBrowserProfileRequest < Struct.new(
      :name,
      :description,
      :client_token,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of the created browser profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the created browser profile.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the browser profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the browser profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateBrowserProfileResponse AWS API Documentation
    #
    class CreateBrowserProfileResponse < Struct.new(
      :profile_id,
      :profile_arn,
      :created_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the browser. The name must be unique within your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the browser.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the browser to access Amazon Web Services services.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the browser. This configuration
    #   specifies the network mode for the browser.
    #   @return [Types::BrowserNetworkConfiguration]
    #
    # @!attribute [rw] recording
    #   The recording configuration for the browser. When enabled, browser
    #   sessions are recorded and stored in the specified Amazon S3
    #   location.
    #   @return [Types::RecordingConfig]
    #
    # @!attribute [rw] browser_signing
    #   The browser signing configuration that enables cryptographic agent
    #   identification using HTTP message signatures for web bot
    #   authentication.
    #   @return [Types::BrowserSigningConfigInput]
    #
    # @!attribute [rw] enterprise_policies
    #   A list of enterprise policy files for the browser.
    #   @return [Array<Types::BrowserEnterprisePolicy>]
    #
    # @!attribute [rw] certificates
    #   A list of certificates to install in the browser.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The file system configurations to mount into the browser. Use these
    #   configurations to mount your own Amazon Simple Storage Service
    #   (Amazon S3) Files or Amazon Elastic File System (Amazon EFS) access
    #   points. Your sessions can then access your data. If you don't
    #   specify this field, no file systems are mounted.
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the browser. Tags enable
    #   you to categorize your resources in different ways, for example, by
    #   purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateBrowserRequest AWS API Documentation
    #
    class CreateBrowserRequest < Struct.new(
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
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] browser_id
    #   The unique identifier of the created browser.
    #   @return [String]
    #
    # @!attribute [rw] browser_arn
    #   The Amazon Resource Name (ARN) of the created browser.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the browser was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the browser.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateBrowserResponse AWS API Documentation
    #
    class CreateBrowserResponse < Struct.new(
      :browser_id,
      :browser_arn,
      :created_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the code interpreter. The name must be unique within
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the code interpreter to access Amazon Web Services
    #   services.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the code interpreter. This
    #   configuration specifies the network mode for the code interpreter.
    #   @return [Types::CodeInterpreterNetworkConfiguration]
    #
    # @!attribute [rw] certificates
    #   A list of certificates to install in the code interpreter.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The file system configurations to mount into the code interpreter.
    #   Use these configurations to mount your own Amazon Simple Storage
    #   Service (Amazon S3) Files or Amazon Elastic File System (Amazon EFS)
    #   access points. Your sessions can then access your data. If you
    #   don't specify this field, no file systems are mounted.
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock AgentCore ignores the request but does not
    #   return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the code interpreter. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateCodeInterpreterRequest AWS API Documentation
    #
    class CreateCodeInterpreterRequest < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :network_configuration,
      :certificates,
      :filesystem_configurations,
      :client_token,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_id
    #   The unique identifier of the created code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] code_interpreter_arn
    #   The Amazon Resource Name (ARN) of the created code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the code interpreter was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the code interpreter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateCodeInterpreterResponse AWS API Documentation
    #
    class CreateCodeInterpreterResponse < Struct.new(
      :code_interpreter_id,
      :code_interpreter_arn,
      :created_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] bundle_name
    #   The name for the configuration bundle. Names must be unique within
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   A map of component identifiers to their configurations. Each
    #   component represents a configurable element within the bundle.
    #   @return [Hash<String,Types::ComponentConfiguration>]
    #
    # @!attribute [rw] branch_name
    #   The branch name for version tracking. Defaults to `mainline` if not
    #   specified.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   A commit message describing the initial version of the configuration
    #   bundle.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The source that created this version, including the source name and
    #   optional ARN.
    #   @return [Types::VersionCreatedBySource]
    #
    # @!attribute [rw] kms_key_arn
    #   Optional KMS key ARN for encrypting component configurations.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the configuration bundle.
    #   Tags enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateConfigurationBundleRequest AWS API Documentation
    #
    class CreateConfigurationBundleRequest < Struct.new(
      :client_token,
      :bundle_name,
      :description,
      :components,
      :branch_name,
      :commit_message,
      :created_by,
      :kms_key_arn,
      :tags)
      SENSITIVE = [:description, :components]
      include Aws::Structure
    end

    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the created configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The unique identifier of the created configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The initial version identifier of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the configuration bundle was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateConfigurationBundleResponse AWS API Documentation
    #
    class CreateConfigurationBundleResponse < Struct.new(
      :bundle_arn,
      :bundle_id,
      :version_id,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   Human-readable name for the dataset. Must be unique within the
    #   account. Immutable after creation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Source of initial examples. Provide either inline examples or an S3
    #   URI pointing to a JSONL file.
    #   @return [Types::DataSourceType]
    #
    # @!attribute [rw] schema_type
    #   Versioned schema type governing the structure of examples. Immutable
    #   after creation.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   Optional KMS key ARN for server-side encryption on service Amazon S3
    #   writes.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the dataset.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :client_token,
      :dataset_name,
      :description,
      :source,
      :schema_type,
      :kms_key_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the created dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the created dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Always CREATING immediately after this call. Poll `GetDataset` until
    #   status transitions to ACTIVE or CREATE\_FAILED.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the dataset was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_arn,
      :dataset_id,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset to publish a version for.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateDatasetVersionRequest AWS API Documentation
    #
    class CreateDatasetVersionRequest < Struct.new(
      :dataset_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Always UPDATING immediately after this call. Poll `GetDataset` until
    #   status transitions to ACTIVE or UPDATE\_FAILED.
    #   @return [String]
    #
    # @!attribute [rw] dataset_version
    #   The version number being created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the version creation was initiated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateDatasetVersionResponse AWS API Documentation
    #
    class CreateDatasetVersionResponse < Struct.new(
      :dataset_arn,
      :dataset_id,
      :status,
      :dataset_version,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] evaluator_name
    #   The name of the evaluator. Must be unique within your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the evaluator that explains its purpose and
    #   evaluation criteria.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_config
    #   The configuration for the evaluator. Specify either LLM-as-a-Judge
    #   settings with instructions, rating scale, and model configuration,
    #   or code-based settings with a customer-managed Lambda function.
    #   @return [Types::EvaluatorConfig]
    #
    # @!attribute [rw] level
    #   The evaluation level that determines the scope of evaluation. Valid
    #   values are `TOOL_CALL` for individual tool invocations, `TRACE` for
    #   single request-response interactions, or `SESSION` for entire
    #   conversation sessions.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of a customer managed KMS key to use
    #   for encrypting sensitive evaluator data, including instructions and
    #   rating scale. If you don't specify a KMS key, the evaluator data is
    #   encrypted with an Amazon Web Services owned key. Only symmetric
    #   encryption KMS keys are supported. For more information, see
    #   [Encryption at rest for AgentCore Evaluations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to an AgentCore Evaluator.
    #   Tags enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateEvaluatorRequest AWS API Documentation
    #
    class CreateEvaluatorRequest < Struct.new(
      :client_token,
      :evaluator_name,
      :description,
      :evaluator_config,
      :level,
      :kms_key_arn,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the created evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the created evaluator.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the evaluator was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the evaluator creation operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateEvaluatorResponse AWS API Documentation
    #
    class CreateEvaluatorResponse < Struct.new(
      :evaluator_arn,
      :evaluator_id,
      :created_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the gateway. The name must be unique within your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the gateway to access Amazon Web Services services.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_configuration
    #   The configuration settings for the protocol specified in the
    #   `protocolType` parameter.
    #   @return [Types::GatewayProtocolConfiguration]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer to use for the gateway.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM
    #     credentials.
    #
    #   * `NONE` - No authorization
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the gateway. Required if
    #   `authorizerType` is `CUSTOM_JWT`.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt data
    #   associated with the gateway.
    #   @return [String]
    #
    # @!attribute [rw] interceptor_configurations
    #   A list of configuration settings for a gateway interceptor. Gateway
    #   interceptors allow custom code to be invoked during gateway
    #   invocations.
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    #
    # @!attribute [rw] policy_engine_configuration
    #   The policy engine configuration for the gateway. A policy engine is
    #   a collection of policies that evaluates and authorizes agent tool
    #   calls. When associated with a gateway, the policy engine intercepts
    #   all agent requests and determines whether to allow or deny each
    #   action based on the defined policies.
    #   @return [Types::GatewayPolicyEngineConfiguration]
    #
    # @!attribute [rw] exception_level
    #   The level of detail in error messages returned when invoking the
    #   gateway.
    #
    #   * If the value is `DEBUG`, granular exception messages are returned
    #     to help a user debug the gateway.
    #
    #   * If the value is omitted, a generic error message is returned to
    #     the end user.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of key-value pairs to associate with the gateway as metadata
    #   tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayRequest AWS API Documentation
    #
    class CreateGatewayRequest < Struct.new(
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
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the created gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the created gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_url
    #   The URL endpoint for the created gateway.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the gateway was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the gateway was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The reasons for the current status of the gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_configuration
    #   The configuration settings for the protocol used by the gateway.
    #   @return [Types::GatewayProtocolConfiguration]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer used by the gateway.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the created gateway.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt data
    #   associated with the gateway.
    #   @return [String]
    #
    # @!attribute [rw] custom_transform_configuration
    #   The custom transformation configuration for the gateway. This
    #   configuration defines how the gateway transforms requests and
    #   responses.
    #   @return [Types::CustomTransformConfiguration]
    #
    # @!attribute [rw] interceptor_configurations
    #   The list of interceptor configurations for the created gateway.
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    #
    # @!attribute [rw] policy_engine_configuration
    #   The policy engine configuration for the created gateway.
    #   @return [Types::GatewayPolicyEngineConfiguration]
    #
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the created gateway.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] exception_level
    #   The level of detail in error messages returned when invoking the
    #   gateway.
    #
    #   * If the value is `DEBUG`, granular exception messages are returned
    #     to help a user debug the gateway.
    #
    #   * If the value is omitted, a generic error message is returned to
    #     the end user.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services WAF web
    #   ACL associated with the gateway.
    #   @return [String]
    #
    # @!attribute [rw] waf_configuration
    #   The Amazon Web Services WAF configuration for the gateway.
    #   @return [Types::WafConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayResponse AWS API Documentation
    #
    class CreateGatewayResponse < Struct.new(
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
      :waf_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway to create a rule for.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the rule. Rules are evaluated in order of priority,
    #   with lower numbers evaluated first. Must be between 1 and 1,000,000.
    #   @return [Integer]
    #
    # @!attribute [rw] conditions
    #   The conditions that must be met for the rule to apply. Conditions
    #   can match on principals (IAM ARNs) or request paths.
    #   @return [Array<Types::Condition>]
    #
    # @!attribute [rw] actions
    #   The actions to take when the rule conditions are met. Actions can
    #   route to a specific target or apply a configuration bundle override.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   The description of the gateway rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayRuleRequest AWS API Documentation
    #
    class CreateGatewayRuleRequest < Struct.new(
      :gateway_identifier,
      :client_token,
      :priority,
      :conditions,
      :actions,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_id
    #   The unique identifier of the gateway rule.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway that the rule belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the rule. Rules are evaluated in order of priority,
    #   with lower numbers evaluated first.
    #   @return [Integer]
    #
    # @!attribute [rw] conditions
    #   The conditions that must be met for the rule to apply.
    #   @return [Array<Types::Condition>]
    #
    # @!attribute [rw] actions
    #   The actions to take when the rule conditions are met.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   The description of the gateway rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] system
    #   System-managed metadata for rules created by automated processes.
    #   @return [Types::SystemManagedBlock]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayRuleResponse AWS API Documentation
    #
    class CreateGatewayRuleResponse < Struct.new(
      :rule_id,
      :gateway_arn,
      :priority,
      :conditions,
      :actions,
      :description,
      :created_at,
      :status,
      :system)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway to create a target for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway target. The name must be unique within the
    #   gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   The configuration settings for the target, including endpoint
    #   information and schema definitions.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The credential provider configurations for the target. These
    #   configurations specify how the gateway authenticates with the target
    #   endpoint.
    #   @return [Array<Types::CredentialProviderConfiguration>]
    #
    # @!attribute [rw] metadata_configuration
    #   Optional configuration for HTTP header and query parameter
    #   propagation to and from the gateway target.
    #   @return [Types::MetadataConfiguration]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint configuration for the gateway target. Use this
    #   to connect the gateway to private resources in your VPC.
    #   @return [Types::PrivateEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayTargetRequest AWS API Documentation
    #
    class CreateGatewayTargetRequest < Struct.new(
      :gateway_identifier,
      :name,
      :description,
      :client_token,
      :target_configuration,
      :credential_provider_configurations,
      :metadata_configuration,
      :private_endpoint)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the created target.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the target was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the target was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the target.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The reasons for the current status of the target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   The configuration settings for the target.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The credential provider configurations for the target.
    #   @return [Array<Types::CredentialProviderConfiguration>]
    #
    # @!attribute [rw] last_synchronized_at
    #   The last synchronization of the target.
    #   @return [Time]
    #
    # @!attribute [rw] metadata_configuration
    #   The metadata configuration that was applied to the created gateway
    #   target.
    #   @return [Types::MetadataConfiguration]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint configuration for the gateway target.
    #   @return [Types::PrivateEndpoint]
    #
    # @!attribute [rw] private_endpoint_managed_resources
    #   The managed resources created by the gateway for private endpoint
    #   connectivity.
    #   @return [Array<Types::ManagedResourceDetails>]
    #
    # @!attribute [rw] authorization_data
    #   OAuth2 authorization data for the created gateway target. This data
    #   is returned when a target is configured with a credential provider
    #   with authorization code grant type and requires user federation.
    #   @return [Types::AuthorizationData]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type of the created gateway target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayTargetResponse AWS API Documentation
    #
    class CreateGatewayTargetResponse < Struct.new(
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
      :protocol_type)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness to create an endpoint for.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint. Must start with a letter and contain only
    #   alphanumeric characters and underscores.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The harness version that the endpoint points to and serves
    #   invocations from.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to apply to the endpoint resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateHarnessEndpointRequest AWS API Documentation
    #
    class CreateHarnessEndpointRequest < Struct.new(
      :harness_id,
      :endpoint_name,
      :target_version,
      :description,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The endpoint that was created.
    #   @return [Types::HarnessEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateHarnessEndpointResponse AWS API Documentation
    #
    class CreateHarnessEndpointResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_name
    #   The name of the harness. Must start with a letter and contain only
    #   alphanumeric characters and underscores.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM role that the harness assumes when running. This
    #   role must have permissions for the services the agent needs to
    #   access, such as Amazon Bedrock for model invocation.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The compute environment configuration for the harness, including
    #   network and lifecycle settings.
    #   @return [Types::HarnessEnvironmentProviderRequest]
    #
    # @!attribute [rw] environment_artifact
    #   The environment artifact for the harness, such as a custom container
    #   image containing additional dependencies.
    #   @return [Types::HarnessEnvironmentArtifact]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables to set in the harness runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authorizer_configuration
    #   Represents inbound authorization configuration options used to
    #   authenticate incoming requests.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] model
    #   The model configuration for the harness. Supports Amazon Bedrock,
    #   OpenAI, and Google Gemini model providers.
    #   @return [Types::HarnessModelConfiguration]
    #
    # @!attribute [rw] system_prompt
    #   The system prompt that defines the agent's behavior and
    #   instructions.
    #   @return [Array<Types::HarnessSystemContentBlock>]
    #
    # @!attribute [rw] tools
    #   The tools available to the agent, such as remote MCP servers,
    #   AgentCore Gateway, AgentCore Browser, Code Interpreter, or inline
    #   functions.
    #   @return [Array<Types::HarnessTool>]
    #
    # @!attribute [rw] skills
    #   The skills available to the agent. Skills are bundles of files that
    #   the agent can pull into its context on demand.
    #   @return [Array<Types::HarnessSkill>]
    #
    # @!attribute [rw] allowed_tools
    #   The tools that the agent is allowed to use. Supports glob patterns
    #   such as * for all tools, @builtin for all built-in tools, or
    #   @serverName/toolName for specific MCP server tools.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory
    #   The AgentCore Memory configuration for persisting conversation
    #   context across sessions.
    #   @return [Types::HarnessMemoryConfiguration]
    #
    # @!attribute [rw] truncation
    #   The truncation configuration for managing conversation context when
    #   it exceeds model limits.
    #   @return [Types::HarnessTruncationConfiguration]
    #
    # @!attribute [rw] max_iterations
    #   The maximum number of iterations the agent loop can execute per
    #   invocation.
    #   @return [Integer]
    #
    # @!attribute [rw] max_tokens
    #   The maximum total number of output tokens the agent can generate
    #   across all model calls within a single invocation.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_seconds
    #   The maximum duration in seconds for the agent loop execution per
    #   invocation.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags to apply to the harness resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateHarnessRequest AWS API Documentation
    #
    class CreateHarnessRequest < Struct.new(
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
      :max_iterations,
      :max_tokens,
      :timeout_seconds,
      :tags)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] harness
    #   The harness that was created.
    #   @return [Types::Harness]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateHarnessResponse AWS API Documentation
    #
    class CreateHarnessResponse < Struct.new(
      :harness)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the memory. The name must be unique within your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the memory.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   memory data.
    #   @return [String]
    #
    # @!attribute [rw] memory_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that provides
    #   permissions for the memory to access Amazon Web Services services.
    #   @return [String]
    #
    # @!attribute [rw] event_expiry_duration
    #   The duration after which memory events expire. Specified as an ISO
    #   8601 duration.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_strategies
    #   The memory strategies to use for this memory. Strategies define how
    #   information is extracted, processed, and consolidated.
    #   @return [Array<Types::MemoryStrategyInput>]
    #
    # @!attribute [rw] indexed_keys
    #   Metadata keys to index for filtering. Once declared, indexed keys
    #   cannot be removed.
    #   @return [Array<Types::IndexedKey>]
    #
    # @!attribute [rw] stream_delivery_resources
    #   Configuration for streaming memory record data to external
    #   resources.
    #   @return [Types::StreamDeliveryResources]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to an AgentCore Memory. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateMemoryInput AWS API Documentation
    #
    class CreateMemoryInput < Struct.new(
      :client_token,
      :name,
      :description,
      :encryption_key_arn,
      :memory_execution_role_arn,
      :event_expiry_duration,
      :memory_strategies,
      :indexed_keys,
      :stream_delivery_resources,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] memory
    #   The details of the created memory, including its ID, ARN, name,
    #   description, and configuration settings.
    #   @return [Types::Memory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateMemoryOutput AWS API Documentation
    #
    class CreateMemoryOutput < Struct.new(
      :memory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the OAuth2 credential provider. The name must be unique
    #   within your account.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor of the OAuth2 credential provider. This specifies which
    #   OAuth2 implementation to use.
    #   @return [String]
    #
    # @!attribute [rw] oauth2_provider_config_input
    #   The configuration settings for the OAuth2 provider, including client
    #   ID, client secret, and other vendor-specific settings.
    #   @return [Types::Oauth2ProviderConfigInput]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the OAuth2 credential
    #   provider. Tags enable you to categorize your resources in different
    #   ways, for example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOauth2CredentialProviderRequest AWS API Documentation
    #
    class CreateOauth2CredentialProviderRequest < Struct.new(
      :name,
      :credential_provider_vendor,
      :oauth2_provider_config_input,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_secret_arn
    #   The Amazon Resource Name (ARN) of the client secret in Amazon Web
    #   Services Secrets Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] client_secret_json_key
    #   The JSON key used to extract the client secret value from the Amazon
    #   Web Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Either `MANAGED` if the secret
    #   is managed by the service, or `EXTERNAL` if managed by the user in
    #   Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] callback_url
    #   Callback URL to register on the OAuth2 credential provider as an
    #   allowed callback URL. This URL is where the OAuth2 authorization
    #   server redirects users after they complete the authorization flow.
    #   @return [String]
    #
    # @!attribute [rw] oauth2_provider_config_output
    #   Contains the output configuration for an OAuth2 provider.
    #   @return [Types::Oauth2ProviderConfigOutput]
    #
    # @!attribute [rw] status
    #   The current status of the OAuth2 credential provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOauth2CredentialProviderResponse AWS API Documentation
    #
    class CreateOauth2CredentialProviderResponse < Struct.new(
      :client_secret_arn,
      :client_secret_json_key,
      :client_secret_source,
      :name,
      :credential_provider_arn,
      :callback_url,
      :oauth2_provider_config_output,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_name
    #   The name of the online evaluation configuration. Must be unique
    #   within your account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the online evaluation configuration that explains
    #   its monitoring purpose and scope.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The evaluation rule that defines sampling configuration, filters,
    #   and session detection settings for the online evaluation.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] data_source_config
    #   The data source configuration that specifies CloudWatch log groups
    #   and service names to monitor for agent traces.
    #   @return [Types::DataSourceConfig]
    #
    # @!attribute [rw] evaluators
    #   The list of evaluators to apply during online evaluation. Can
    #   include both built-in evaluators and custom evaluators created with
    #   `CreateEvaluator`.
    #   @return [Array<Types::EvaluatorReference>]
    #
    # @!attribute [rw] insights
    #   The list of insight types to run against agent sessions.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] clustering_config
    #   Configuration for periodic batch evaluation clustering of insight
    #   results.
    #   @return [Types::ClusteringConfig]
    #
    # @!attribute [rw] evaluation_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants
    #   permissions to read from CloudWatch logs, write evaluation results,
    #   and invoke Amazon Bedrock models for evaluation. If the
    #   configuration references evaluators encrypted with a customer
    #   managed KMS key, this role must also have `kms:Decrypt` permission
    #   on the KMS key. The service validates this permission at
    #   configuration creation time. For more information, see [Encryption
    #   at rest for AgentCore Evaluations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] enable_on_create
    #   Whether to enable the online evaluation configuration immediately
    #   upon creation. If true, evaluation begins automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to an AgentCore Online
    #   Evaluation Config. Tags enable you to categorize your resources in
    #   different ways, for example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOnlineEvaluationConfigRequest AWS API Documentation
    #
    class CreateOnlineEvaluationConfigRequest < Struct.new(
      :client_token,
      :online_evaluation_config_name,
      :description,
      :rule,
      :data_source_config,
      :evaluators,
      :insights,
      :clustering_config,
      :evaluation_execution_role_arn,
      :enable_on_create,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] online_evaluation_config_arn
    #   The Amazon Resource Name (ARN) of the created online evaluation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_id
    #   The unique identifier of the created online evaluation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the online evaluation configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] output_config
    #   The configuration that specifies where evaluation results should be
    #   written for monitoring and analysis.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] status
    #   The status of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The execution status indicating whether the online evaluation is
    #   currently running.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the online evaluation configuration
    #   creation or execution failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOnlineEvaluationConfigResponse AWS API Documentation
    #
    class CreateOnlineEvaluationConfigResponse < Struct.new(
      :online_evaluation_config_arn,
      :online_evaluation_config_id,
      :created_at,
      :output_config,
      :status,
      :execution_status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the payment manager to create the connector
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of payment connector, which determines the payment provider
    #   integration.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The credential provider configurations for the payment connector.
    #   These configurations specify how the connector authenticates with
    #   the payment provider.
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentConnectorRequest AWS API Documentation
    #
    class CreatePaymentConnectorRequest < Struct.new(
      :payment_manager_id,
      :name,
      :description,
      :type,
      :credential_provider_configurations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_connector_id
    #   The unique identifier of the created payment connector.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the parent payment manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the created payment connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the created payment connector.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The credential provider configurations for the created payment
    #   connector.
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the payment connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the payment connector. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `DELETING`, `CREATE_FAILED`,
    #   `UPDATE_FAILED`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentConnectorResponse AWS API Documentation
    #
    class CreatePaymentConnectorResponse < Struct.new(
      :payment_connector_id,
      :payment_manager_id,
      :name,
      :type,
      :credential_provider_configurations,
      :created_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Unique name for the payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor type for the payment credential provider (e.g.,
    #   CoinbaseCDP, StripePrivy).
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration_input
    #   Configuration specific to the vendor, including API credentials.
    #   @return [Types::PaymentProviderConfigurationInput]
    #
    # @!attribute [rw] tags
    #   Optional tags for resource organization.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentCredentialProviderRequest AWS API Documentation
    #
    class CreatePaymentCredentialProviderRequest < Struct.new(
      :name,
      :credential_provider_vendor,
      :provider_configuration_input,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the created payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor type for the created payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the created payment credential
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration_output
    #   Output configuration (contains secret ARNs, excludes actual secret
    #   values).
    #   @return [Types::PaymentProviderConfigurationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentCredentialProviderResponse AWS API Documentation
    #
    class CreatePaymentCredentialProviderResponse < Struct.new(
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :provider_configuration_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer to use for the payment manager.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM
    #     credentials.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the payment manager.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that the payment
    #   manager assumes to access resources on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the payment manager.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentManagerRequest AWS API Documentation
    #
    class CreatePaymentManagerRequest < Struct.new(
      :name,
      :description,
      :authorizer_type,
      :authorizer_configuration,
      :role_arn,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_arn
    #   The Amazon Resource Name (ARN) of the created payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the created payment manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the created payment manager.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer for the created payment manager.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   Represents inbound authorization configuration options used to
    #   authenticate incoming requests.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   created payment manager.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_details
    #   The information about the workload identity.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the payment manager was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the payment manager. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `DELETING`, `CREATE_FAILED`,
    #   `UPDATE_FAILED`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the created payment manager.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePaymentManagerResponse AWS API Documentation
    #
    class CreatePaymentManagerResponse < Struct.new(
      :payment_manager_arn,
      :payment_manager_id,
      :name,
      :authorizer_type,
      :authorizer_configuration,
      :role_arn,
      :workload_identity_details,
      :created_at,
      :status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The customer-assigned immutable name for the policy engine. This
    #   name identifies the policy engine and cannot be changed after
    #   creation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the policy engine's purpose and
    #   scope (1-4,096 characters). This helps administrators understand the
    #   policy engine's role in the overall governance strategy. Document
    #   which Gateway this engine will be associated with, what types of
    #   tools or workflows it governs, and the team or service responsible
    #   for maintaining it. Clear descriptions are essential when managing
    #   multiple policy engines across different services or environments.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request with the same
    #   client token, the service returns the same response without creating
    #   a duplicate policy engine.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to an AgentCore Policy. Tags
    #   enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePolicyEngineRequest AWS API Documentation
    #
    class CreatePolicyEngineRequest < Struct.new(
      :name,
      :description,
      :client_token,
      :encryption_key_arn,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier for the created policy engine. This
    #   system-generated identifier consists of the user name plus a
    #   10-character generated suffix and is used for all subsequent policy
    #   engine operations.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the created policy engine. This
    #   matches the name provided in the request and serves as the
    #   human-readable identifier.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy engine was created. This is
    #   automatically set by the service and used for auditing and lifecycle
    #   management.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy engine was last updated. For newly
    #   created policy engines, this matches the `createdAt` timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] policy_engine_arn
    #   The Amazon Resource Name (ARN) of the created policy engine. This
    #   globally unique identifier can be used for cross-service references
    #   and IAM policy statements.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy engine. A status of `ACTIVE`
    #   indicates the policy engine is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the policy engine's purpose.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the policy engine status. This provides
    #   details about any failures or the current state of the policy engine
    #   creation process.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePolicyEngineResponse AWS API Documentation
    #
    class CreatePolicyEngineResponse < Struct.new(
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The customer-assigned immutable name for the policy. Must be unique
    #   within the account. This name is used for policy identification and
    #   cannot be changed after creation.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Cedar policy statement that defines the access control rules.
    #   This contains the actual policy logic written in Cedar policy
    #   language, specifying effect (permit or forbid), principals, actions,
    #   resources, and conditions for agent behavior control.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] description
    #   A human-readable description of the policy's purpose and
    #   functionality (1-4,096 characters). This helps policy administrators
    #   understand the policy's intent, business rules, and operational
    #   scope. Use this field to document why the policy exists, what
    #   business requirement it addresses, and any special considerations
    #   for maintenance. Clear descriptions are essential for policy
    #   governance, auditing, and troubleshooting.
    #   @return [String]
    #
    # @!attribute [rw] validation_mode
    #   The validation mode for the policy creation. Determines how Cedar
    #   analyzer validation results are handled during policy creation.
    #   FAIL\_ON\_ANY\_FINDINGS (default) runs the Cedar analyzer to
    #   validate the policy against the Cedar schema and tool context,
    #   failing creation if the analyzer detects any validation issues to
    #   ensure strict conformance. IGNORE\_ALL\_FINDINGS runs the Cedar
    #   analyzer but allows policy creation even if validation issues are
    #   detected, useful for testing or when the policy schema is evolving.
    #   Use FAIL\_ON\_ANY\_FINDINGS for production policies to ensure
    #   correctness, and IGNORE\_ALL\_FINDINGS only when you understand and
    #   accept the analyzer findings.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The enforcement mode for the policy. Run this policy in `LOG_ONLY`
    #   mode to collect data on how it affects your application. Once you
    #   are satisfied with the data gathered, switch the policy to `ACTIVE`.
    #   Defaults to `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine which contains this policy.
    #   Policy engines group related policies and provide the execution
    #   context for policy evaluation.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure the idempotency of the
    #   request. The AWS SDK automatically generates this token, so you
    #   don't need to provide it in most cases. If you retry a request with
    #   the same client token, the service returns the same response without
    #   creating a duplicate policy.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePolicyRequest AWS API Documentation
    #
    class CreatePolicyRequest < Struct.new(
      :name,
      :definition,
      :description,
      :validation_mode,
      :enforcement_mode,
      :policy_engine_id,
      :client_token)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The unique identifier for the created policy. This is a
    #   system-generated identifier consisting of the user name plus a
    #   10-character generated suffix, used for all subsequent policy
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the created policy. This matches the
    #   name provided in the request and serves as the human-readable
    #   identifier for the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages this policy. This
    #   confirms the policy engine assignment and is used for policy
    #   evaluation routing.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy was created. This is automatically set
    #   by the service and used for auditing and lifecycle management.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy was last updated. For newly created
    #   policies, this matches the createdAt timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the created policy. This globally
    #   unique identifier can be used for cross-service references and IAM
    #   policy statements.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy. A status of `ACTIVE` indicates the
    #   policy is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The enforcement mode of the created policy.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Cedar policy statement that was created. This is the validated
    #   policy definition that will be used for agent behavior control and
    #   access decisions.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] description
    #   The human-readable description of the policy's purpose and
    #   functionality. This helps administrators understand and manage the
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the policy status. This provides
    #   details about any failures or the current state of the policy
    #   creation process.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePolicyResponse AWS API Documentation
    #
    class CreatePolicyResponse < Struct.new(
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
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry where the record will be created. You
    #   can specify either the Amazon Resource Name (ARN) or the ID of the
    #   registry.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] descriptor_type
    #   The descriptor type of the registry record.
    #
    #   * `MCP` - Model Context Protocol descriptor for MCP-compatible
    #     servers and tools.
    #
    #   * `A2A` - Agent-to-Agent protocol descriptor.
    #
    #   * `CUSTOM` - Custom descriptor type for resources such as APIs,
    #     Lambda functions, or servers not conforming to a standard
    #     protocol.
    #
    #   * `AGENT_SKILLS` - Agent skills descriptor for defining agent skill
    #     definitions.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The descriptor-type-specific configuration containing the resource
    #   schema and metadata. The structure of this field depends on the
    #   `descriptorType` you specify.
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] record_version
    #   The version of the registry record. Use this to track different
    #   versions of the record's content.
    #   @return [String]
    #
    # @!attribute [rw] synchronization_type
    #   The type of synchronization to use for keeping the record metadata
    #   up to date from an external source. Possible values include
    #   `FROM_URL` and `NONE`.
    #   @return [String]
    #
    # @!attribute [rw] synchronization_configuration
    #   The configuration for synchronizing registry record metadata from an
    #   external source, such as a URL-based MCP server.
    #   @return [Types::SynchronizationConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateRegistryRecordRequest AWS API Documentation
    #
    class CreateRegistryRecordRequest < Struct.new(
      :registry_id,
      :name,
      :description,
      :descriptor_type,
      :descriptors,
      :record_version,
      :synchronization_type,
      :synchronization_configuration,
      :client_token)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] record_arn
    #   The Amazon Resource Name (ARN) of the created registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the registry record. Set to `CREATING` while the
    #   asynchronous workflow is in progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateRegistryRecordResponse AWS API Documentation
    #
    class CreateRegistryRecordResponse < Struct.new(
      :record_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the registry. The name must be unique within your
    #   account and can contain alphanumeric characters and underscores.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the registry.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer to use for the registry. This controls the
    #   authorization method for the Search and Invoke APIs used by
    #   consumers, and does not affect the standard CRUDL APIs for registry
    #   and registry record management used by administrators.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM
    #     credentials.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the registry. Required if
    #   `authorizerType` is `CUSTOM_JWT`. For details, see the
    #   `AuthorizerConfiguration` data type.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] approval_configuration
    #   The approval configuration for registry records. Controls whether
    #   records require explicit approval before becoming active. See the
    #   `ApprovalConfiguration` data type for supported configuration
    #   options.
    #   @return [Types::ApprovalConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateRegistryRequest AWS API Documentation
    #
    class CreateRegistryRequest < Struct.new(
      :name,
      :description,
      :authorizer_type,
      :authorizer_configuration,
      :client_token,
      :approval_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the created registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateRegistryResponse AWS API Documentation
    #
    class CreateRegistryResponse < Struct.new(
      :registry_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workload identity. The name must be unique within
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] allowed_resource_oauth_2_return_urls
    #   The list of allowed OAuth2 return URLs for resources associated with
    #   this workload identity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to assign to the workload identity.
    #   Tags enable you to categorize your resources in different ways, for
    #   example, by purpose, owner, or environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateWorkloadIdentityRequest AWS API Documentation
    #
    class CreateWorkloadIdentityRequest < Struct.new(
      :name,
      :allowed_resource_oauth_2_return_urls,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workload identity.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_arn
    #   The Amazon Resource Name (ARN) of the workload identity.
    #   @return [String]
    #
    # @!attribute [rw] allowed_resource_oauth_2_return_urls
    #   The list of allowed OAuth2 return URLs for resources associated with
    #   this workload identity.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateWorkloadIdentityResponse AWS API Documentation
    #
    class CreateWorkloadIdentityResponse < Struct.new(
      :name,
      :workload_identity_arn,
      :allowed_resource_oauth_2_return_urls)
      SENSITIVE = []
      include Aws::Structure
    end

    # A credential provider for gateway authentication. This structure
    # contains the configuration for authenticating with the target
    # endpoint.
    #
    # @note CredentialProvider is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CredentialProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CredentialProvider corresponding to the set member.
    #
    # @!attribute [rw] oauth_credential_provider
    #   The OAuth credential provider. This provider uses OAuth
    #   authentication to access the target endpoint.
    #   @return [Types::OAuthCredentialProvider]
    #
    # @!attribute [rw] api_key_credential_provider
    #   The API key credential provider. This provider uses an API key to
    #   authenticate with the target endpoint.
    #   @return [Types::ApiKeyCredentialProvider]
    #
    # @!attribute [rw] iam_credential_provider
    #   The IAM credential provider. This provider uses IAM authentication
    #   with SigV4 signing to access the target endpoint.
    #   @return [Types::IamCredentialProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CredentialProvider AWS API Documentation
    #
    class CredentialProvider < Struct.new(
      :oauth_credential_provider,
      :api_key_credential_provider,
      :iam_credential_provider,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OauthCredentialProvider < CredentialProvider; end
      class ApiKeyCredentialProvider < CredentialProvider; end
      class IamCredentialProvider < CredentialProvider; end
      class Unknown < CredentialProvider; end
    end

    # The configuration for a credential provider. This structure defines
    # how the gateway authenticates with the target endpoint.
    #
    # @!attribute [rw] credential_provider_type
    #   The type of credential provider. This field specifies which
    #   authentication method the gateway uses.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider
    #   The credential provider. This field contains the specific
    #   configuration for the credential provider type.
    #   @return [Types::CredentialProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CredentialProviderConfiguration AWS API Documentation
    #
    class CredentialProviderConfiguration < Struct.new(
      :credential_provider_type,
      :credential_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credential provider configuration for a payment connector.
    # Specifies the payment provider type and its associated credential
    # provider.
    #
    # @note CredentialsProviderConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CredentialsProviderConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CredentialsProviderConfiguration corresponding to the set member.
    #
    # @!attribute [rw] coinbase_cdp
    #   The credential provider configuration for a Coinbase CDP payment
    #   connector.
    #   @return [Types::PaymentCredentialProviderConfiguration]
    #
    # @!attribute [rw] stripe_privy
    #   The credential provider configuration for a Stripe Privy payment
    #   connector.
    #   @return [Types::PaymentCredentialProviderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CredentialsProviderConfiguration AWS API Documentation
    #
    class CredentialsProviderConfiguration < Struct.new(
      :coinbase_cdp,
      :stripe_privy,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CoinbaseCdp < CredentialsProviderConfiguration; end
      class StripePrivy < CredentialsProviderConfiguration; end
      class Unknown < CredentialsProviderConfiguration; end
    end

    # Defines the name of a custom claim field and rules for finding matches
    # to authenticate its value.
    #
    # @!attribute [rw] inbound_token_claim_name
    #   The name of the custom claim field to check.
    #   @return [String]
    #
    # @!attribute [rw] inbound_token_claim_value_type
    #   The data type of the claim value to check for.
    #
    #   * Use `STRING` if you want to find an exact match to a string you
    #     define.
    #
    #   * Use `STRING_ARRAY` if you want to fnd a match to at least one
    #     value in an array you define.
    #   @return [String]
    #
    # @!attribute [rw] authorizing_claim_match_value
    #   Defines the value or values to match for and the relationship of the
    #   match.
    #   @return [Types::AuthorizingClaimMatchValueType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomClaimValidationType AWS API Documentation
    #
    class CustomClaimValidationType < Struct.new(
      :inbound_token_claim_name,
      :inbound_token_claim_value_type,
      :authorizing_claim_match_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for custom configuration of a memory strategy.
    #
    # @note CustomConfigurationInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] semantic_override
    #   The semantic override configuration for a custom memory strategy.
    #   @return [Types::SemanticOverrideConfigurationInput]
    #
    # @!attribute [rw] summary_override
    #   The summary override configuration for a custom memory strategy.
    #   @return [Types::SummaryOverrideConfigurationInput]
    #
    # @!attribute [rw] user_preference_override
    #   The user preference override configuration for a custom memory
    #   strategy.
    #   @return [Types::UserPreferenceOverrideConfigurationInput]
    #
    # @!attribute [rw] episodic_override
    #   The episodic memory strategy override configuration for a custom
    #   memory strategy.
    #   @return [Types::EpisodicOverrideConfigurationInput]
    #
    # @!attribute [rw] self_managed_configuration
    #   The self managed configuration for a custom memory strategy.
    #   @return [Types::SelfManagedConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomConfigurationInput AWS API Documentation
    #
    class CustomConfigurationInput < Struct.new(
      :semantic_override,
      :summary_override,
      :user_preference_override,
      :episodic_override,
      :self_managed_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticOverride < CustomConfigurationInput; end
      class SummaryOverride < CustomConfigurationInput; end
      class UserPreferenceOverride < CustomConfigurationInput; end
      class EpisodicOverride < CustomConfigurationInput; end
      class SelfManagedConfiguration < CustomConfigurationInput; end
      class Unknown < CustomConfigurationInput; end
    end

    # Contains custom consolidation configuration information.
    #
    # @note CustomConsolidationConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CustomConsolidationConfiguration corresponding to the set member.
    #
    # @!attribute [rw] semantic_consolidation_override
    #   The semantic consolidation override configuration.
    #   @return [Types::SemanticConsolidationOverride]
    #
    # @!attribute [rw] summary_consolidation_override
    #   The summary consolidation override configuration.
    #   @return [Types::SummaryConsolidationOverride]
    #
    # @!attribute [rw] user_preference_consolidation_override
    #   The user preference consolidation override configuration.
    #   @return [Types::UserPreferenceConsolidationOverride]
    #
    # @!attribute [rw] episodic_consolidation_override
    #   The configurations to override the default consolidation step for
    #   the episodic memory strategy.
    #   @return [Types::EpisodicConsolidationOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomConsolidationConfiguration AWS API Documentation
    #
    class CustomConsolidationConfiguration < Struct.new(
      :semantic_consolidation_override,
      :summary_consolidation_override,
      :user_preference_consolidation_override,
      :episodic_consolidation_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticConsolidationOverride < CustomConsolidationConfiguration; end
      class SummaryConsolidationOverride < CustomConsolidationConfiguration; end
      class UserPreferenceConsolidationOverride < CustomConsolidationConfiguration; end
      class EpisodicConsolidationOverride < CustomConsolidationConfiguration; end
      class Unknown < CustomConsolidationConfiguration; end
    end

    # Input for a custom consolidation configuration.
    #
    # @note CustomConsolidationConfigurationInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] semantic_consolidation_override
    #   The semantic consolidation override configuration input.
    #   @return [Types::SemanticOverrideConsolidationConfigurationInput]
    #
    # @!attribute [rw] summary_consolidation_override
    #   The summary consolidation override configuration input.
    #   @return [Types::SummaryOverrideConsolidationConfigurationInput]
    #
    # @!attribute [rw] user_preference_consolidation_override
    #   The user preference consolidation override configuration input.
    #   @return [Types::UserPreferenceOverrideConsolidationConfigurationInput]
    #
    # @!attribute [rw] episodic_consolidation_override
    #   Configurations to override the consolidation step of the episodic
    #   strategy.
    #   @return [Types::EpisodicOverrideConsolidationConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomConsolidationConfigurationInput AWS API Documentation
    #
    class CustomConsolidationConfigurationInput < Struct.new(
      :semantic_consolidation_override,
      :summary_consolidation_override,
      :user_preference_consolidation_override,
      :episodic_consolidation_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticConsolidationOverride < CustomConsolidationConfigurationInput; end
      class SummaryConsolidationOverride < CustomConsolidationConfigurationInput; end
      class UserPreferenceConsolidationOverride < CustomConsolidationConfigurationInput; end
      class EpisodicConsolidationOverride < CustomConsolidationConfigurationInput; end
      class Unknown < CustomConsolidationConfigurationInput; end
    end

    # A custom descriptor for a registry record. Use this for resources such
    # as APIs, Lambda functions, or servers that do not conform to a
    # standard protocol like MCP or A2A.
    #
    # @!attribute [rw] inline_content
    #   The custom descriptor content as a valid JSON document. You can
    #   define any custom schema that describes your resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomDescriptor AWS API Documentation
    #
    class CustomDescriptor < Struct.new(
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains custom extraction configuration information.
    #
    # @note CustomExtractionConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CustomExtractionConfiguration corresponding to the set member.
    #
    # @!attribute [rw] semantic_extraction_override
    #   The semantic extraction override configuration.
    #   @return [Types::SemanticExtractionOverride]
    #
    # @!attribute [rw] user_preference_extraction_override
    #   The user preference extraction override configuration.
    #   @return [Types::UserPreferenceExtractionOverride]
    #
    # @!attribute [rw] episodic_extraction_override
    #   The configurations to override the default extraction step for the
    #   episodic memory strategy.
    #   @return [Types::EpisodicExtractionOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomExtractionConfiguration AWS API Documentation
    #
    class CustomExtractionConfiguration < Struct.new(
      :semantic_extraction_override,
      :user_preference_extraction_override,
      :episodic_extraction_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticExtractionOverride < CustomExtractionConfiguration; end
      class UserPreferenceExtractionOverride < CustomExtractionConfiguration; end
      class EpisodicExtractionOverride < CustomExtractionConfiguration; end
      class Unknown < CustomExtractionConfiguration; end
    end

    # Input for a custom extraction configuration.
    #
    # @note CustomExtractionConfigurationInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] semantic_extraction_override
    #   The semantic extraction override configuration input.
    #   @return [Types::SemanticOverrideExtractionConfigurationInput]
    #
    # @!attribute [rw] user_preference_extraction_override
    #   The user preference extraction override configuration input.
    #   @return [Types::UserPreferenceOverrideExtractionConfigurationInput]
    #
    # @!attribute [rw] episodic_extraction_override
    #   Configurations to override the extraction step of the episodic
    #   strategy.
    #   @return [Types::EpisodicOverrideExtractionConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomExtractionConfigurationInput AWS API Documentation
    #
    class CustomExtractionConfigurationInput < Struct.new(
      :semantic_extraction_override,
      :user_preference_extraction_override,
      :episodic_extraction_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticExtractionOverride < CustomExtractionConfigurationInput; end
      class UserPreferenceExtractionOverride < CustomExtractionConfigurationInput; end
      class EpisodicExtractionOverride < CustomExtractionConfigurationInput; end
      class Unknown < CustomExtractionConfigurationInput; end
    end

    # Configuration for inbound JWT-based authorization, specifying how
    # incoming requests should be authenticated.
    #
    # @!attribute [rw] discovery_url
    #   This URL is used to fetch OpenID Connect configuration or
    #   authorization server metadata for validating incoming tokens.
    #   @return [String]
    #
    # @!attribute [rw] allowed_audience
    #   Represents individual audience values that are validated in the
    #   incoming JWT token validation process.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_clients
    #   Represents individual client IDs that are validated in the incoming
    #   JWT token validation process.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_scopes
    #   An array of scopes that are allowed to access the token.
    #   @return [Array<String>]
    #
    # @!attribute [rw] advertised_scope_mapping
    #   A map that associates each scope in `allowedScopes` with a
    #   corresponding advertised scope value. The advertised scope appears
    #   in OAuth protected resource metadata and `WWW-Authenticate` response
    #   headers. Use this parameter when the scope that clients request from
    #   your identity provider differs from the scope in the validated
    #   token. Each key is a scope from `allowedScopes` that the service
    #   uses for token validation. Each value is the corresponding scope
    #   that the service advertises to clients. Scopes without a mapping
    #   entry appear unchanged to clients.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] custom_claims
    #   An array of objects that define a custom claim validation name,
    #   value, and operation
    #   @return [Array<Types::CustomClaimValidationType>]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint configuration for a gateway target. Defines how
    #   the gateway connects to private resources in your VPC.
    #   @return [Types::PrivateEndpoint]
    #
    # @!attribute [rw] private_endpoint_overrides
    #   The private endpoint overrides for the custom JWT authorizer
    #   configuration.
    #   @return [Array<Types::PrivateEndpointOverride>]
    #
    # @!attribute [rw] allowed_workload_configuration
    #   The configuration that restricts which workloads in the request's
    #   identity chain are allowed to invoke the target, identified by their
    #   hosting environments and workload identities. At launch, this is
    #   supported only for AgentCore Runtime targets, and the allowed
    #   workloads are AgentCore Gateways.
    #   @return [Types::AllowedWorkloadConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomJWTAuthorizerConfiguration AWS API Documentation
    #
    class CustomJWTAuthorizerConfiguration < Struct.new(
      :discovery_url,
      :allowed_audience,
      :allowed_clients,
      :allowed_scopes,
      :advertised_scope_mapping,
      :custom_claims,
      :private_endpoint,
      :private_endpoint_overrides,
      :allowed_workload_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a custom memory strategy.
    #
    # @!attribute [rw] name
    #   The name of the custom memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The namespaces
    #   associated with the custom memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates associated with the custom memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration
    #   The configuration for the custom memory strategy.
    #   @return [Types::CustomConfigurationInput]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata fields on records generated by this strategy.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomMemoryStrategyInput AWS API Documentation
    #
    class CustomMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :configuration,
      :memory_record_schema)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Input configuration for a custom OAuth2 provider.
    #
    # @!attribute [rw] oauth_discovery
    #   The OAuth2 discovery information for the custom provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the custom OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the custom OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] on_behalf_of_token_exchange_config
    #   The configuration for on-behalf-of token exchange. This enables
    #   authentication flows that use RFC 8693 token exchange or RFC 7523
    #   JWT authorization grants.
    #   @return [Types::OnBehalfOfTokenExchangeConfigType]
    #
    # @!attribute [rw] client_authentication_method
    #   The client authentication method to use when authenticating with the
    #   token endpoint.
    #   @return [String]
    #
    # @!attribute [rw] private_endpoint
    #   The default private endpoint for the custom OAuth2 provider,
    #   enabling secure connectivity through a VPC Lattice resource
    #   configuration.
    #   @return [Types::PrivateEndpoint]
    #
    # @!attribute [rw] private_endpoint_overrides
    #   The private endpoint overrides for the custom OAuth2 provider
    #   configuration.
    #   @return [Array<Types::PrivateEndpointOverride>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomOauth2ProviderConfigInput AWS API Documentation
    #
    class CustomOauth2ProviderConfigInput < Struct.new(
      :oauth_discovery,
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      :on_behalf_of_token_exchange_config,
      :client_authentication_method,
      :private_endpoint,
      :private_endpoint_overrides)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Output configuration for a custom OAuth2 provider.
    #
    # @!attribute [rw] oauth_discovery
    #   The OAuth2 discovery information for the custom provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the custom OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] private_endpoint
    #   The default private endpoint for the custom OAuth2 provider,
    #   enabling secure connectivity through a VPC Lattice resource
    #   configuration.
    #   @return [Types::PrivateEndpoint]
    #
    # @!attribute [rw] private_endpoint_overrides
    #   The private endpoint overrides for the custom OAuth2 provider
    #   configuration.
    #   @return [Array<Types::PrivateEndpointOverride>]
    #
    # @!attribute [rw] on_behalf_of_token_exchange_config
    #   The configuration for on-behalf-of token exchange.
    #   @return [Types::OnBehalfOfTokenExchangeConfigType]
    #
    # @!attribute [rw] client_authentication_method
    #   The client authentication method used when authenticating with the
    #   token endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomOauth2ProviderConfigOutput AWS API Documentation
    #
    class CustomOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id,
      :private_endpoint,
      :private_endpoint_overrides,
      :on_behalf_of_token_exchange_config,
      :client_authentication_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations for a custom reflection strategy.
    #
    # @note CustomReflectionConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CustomReflectionConfiguration corresponding to the set member.
    #
    # @!attribute [rw] episodic_reflection_override
    #   The configuration for a reflection strategy to override the default
    #   one.
    #   @return [Types::EpisodicReflectionOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomReflectionConfiguration AWS API Documentation
    #
    class CustomReflectionConfiguration < Struct.new(
      :episodic_reflection_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EpisodicReflectionOverride < CustomReflectionConfiguration; end
      class Unknown < CustomReflectionConfiguration; end
    end

    # Input for a custom reflection configuration.
    #
    # @note CustomReflectionConfigurationInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] episodic_reflection_override
    #   The reflection override configuration input.
    #   @return [Types::EpisodicOverrideReflectionConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomReflectionConfigurationInput AWS API Documentation
    #
    class CustomReflectionConfigurationInput < Struct.new(
      :episodic_reflection_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EpisodicReflectionOverride < CustomReflectionConfigurationInput; end
      class Unknown < CustomReflectionConfigurationInput; end
    end

    # The configuration for custom transformations applied to requests and
    # responses through the gateway. This structure defines how the gateway
    # transforms data.
    #
    # @!attribute [rw] lambda
    #   The Lambda configuration for custom transformations. This
    #   configuration defines how the gateway uses a Lambda function to
    #   transform data.
    #   @return [Types::LambdaTransformConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomTransformConfiguration AWS API Documentation
    #
    class CustomTransformConfiguration < Struct.new(
      :lambda)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that specifies where to read agent traces for online
    # evaluation.
    #
    # @note DataSourceConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DataSourceConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DataSourceConfig corresponding to the set member.
    #
    # @!attribute [rw] cloud_watch_logs
    #   The CloudWatch logs configuration for reading agent traces from log
    #   groups.
    #   @return [Types::CloudWatchLogsInputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DataSourceConfig AWS API Documentation
    #
    class DataSourceConfig < Struct.new(
      :cloud_watch_logs,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudWatchLogs < DataSourceConfig; end
      class Unknown < DataSourceConfig; end
    end

    # Source of examples to add to the dataset.
    #
    # @note DataSourceType is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] inline_examples
    #   Inline examples provided directly in the request body.
    #   @return [Types::InlineExamplesSource]
    #
    # @!attribute [rw] s3_source
    #   Amazon S3 URI pointing to a JSONL file in the customer's bucket.
    #   @return [Types::S3Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DataSourceType AWS API Documentation
    #
    class DataSourceType < Struct.new(
      :inline_examples,
      :s3_source,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class InlineExamples < DataSourceType; end
      class S3Source < DataSourceType; end
      class Unknown < DataSourceType; end
    end

    # Summary information about a dataset.
    #
    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] draft_status
    #   Publish synchronization state. Only authoritative when status is
    #   ACTIVE.
    #   @return [String]
    #
    # @!attribute [rw] schema_type
    #   The schema type of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] example_count
    #   The number of examples in the dataset.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the dataset was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DatasetSummary AWS API Documentation
    #
    class DatasetSummary < Struct.new(
      :dataset_arn,
      :dataset_id,
      :dataset_name,
      :description,
      :status,
      :draft_status,
      :schema_type,
      :example_count,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a published dataset version.
    #
    # @!attribute [rw] dataset_version
    #   The version number of this published snapshot.
    #   @return [String]
    #
    # @!attribute [rw] example_count
    #   The number of examples in this version.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The timestamp when this version was published.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DatasetVersionSummary AWS API Documentation
    #
    class DatasetVersionSummary < Struct.new(
      :dataset_version,
      :example_count,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown when decryption of a secret fails.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DecryptionFailure AWS API Documentation
    #
    class DecryptionFailure < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime associated with the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the AgentCore Runtime endpoint to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntimeEndpointRequest AWS API Documentation
    #
    class DeleteAgentRuntimeEndpointRequest < Struct.new(
      :agent_runtime_id,
      :endpoint_name,
      :client_token)
      SENSITIVE = [:endpoint_name]
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the AgentCore Runtime endpoint deletion.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntimeEndpointResponse AWS API Documentation
    #
    class DeleteAgentRuntimeEndpointResponse < Struct.new(
      :status,
      :agent_runtime_id,
      :endpoint_name)
      SENSITIVE = [:endpoint_name]
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntimeRequest AWS API Documentation
    #
    class DeleteAgentRuntimeRequest < Struct.new(
      :agent_runtime_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the AgentCore Runtime deletion.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntimeResponse AWS API Documentation
    #
    class DeleteAgentRuntimeResponse < Struct.new(
      :status,
      :agent_runtime_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the API key credential provider to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteApiKeyCredentialProviderRequest AWS API Documentation
    #
    class DeleteApiKeyCredentialProviderRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteApiKeyCredentialProviderResponse AWS API Documentation
    #
    class DeleteApiKeyCredentialProviderResponse < Aws::EmptyStructure; end

    # @!attribute [rw] profile_id
    #   The unique identifier of the browser profile to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteBrowserProfileRequest AWS API Documentation
    #
    class DeleteBrowserProfileRequest < Struct.new(
      :profile_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of the deleted browser profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the deleted browser profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the browser profile deletion.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the browser profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_saved_at
    #   The timestamp when browser session data was last saved to this
    #   profile before deletion.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteBrowserProfileResponse AWS API Documentation
    #
    class DeleteBrowserProfileResponse < Struct.new(
      :profile_id,
      :profile_arn,
      :status,
      :last_updated_at,
      :last_saved_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_id
    #   The unique identifier of the browser to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteBrowserRequest AWS API Documentation
    #
    class DeleteBrowserRequest < Struct.new(
      :browser_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_id
    #   The unique identifier of the deleted browser.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the browser deletion.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the browser was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteBrowserResponse AWS API Documentation
    #
    class DeleteBrowserResponse < Struct.new(
      :browser_id,
      :status,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_id
    #   The unique identifier of the code interpreter to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteCodeInterpreterRequest AWS API Documentation
    #
    class DeleteCodeInterpreterRequest < Struct.new(
      :code_interpreter_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_id
    #   The unique identifier of the deleted code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code interpreter deletion.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the code interpreter was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteCodeInterpreterResponse AWS API Documentation
    #
    class DeleteCodeInterpreterResponse < Struct.new(
      :code_interpreter_id,
      :status,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteConfigurationBundleRequest AWS API Documentation
    #
    class DeleteConfigurationBundleRequest < Struct.new(
      :bundle_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundle_id
    #   The unique identifier of the deleted configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the configuration bundle deletion operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteConfigurationBundleResponse AWS API Documentation
    #
    class DeleteConfigurationBundleResponse < Struct.new(
      :bundle_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] example_ids
    #   The IDs of the examples to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteDatasetExamplesRequest AWS API Documentation
    #
    class DeleteDatasetExamplesRequest < Struct.new(
      :dataset_id,
      :client_token,
      :example_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] deleted_count
    #   The number of examples deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the examples were deleted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteDatasetExamplesResponse AWS API Documentation
    #
    class DeleteDatasetExamplesResponse < Struct.new(
      :dataset_arn,
      :dataset_id,
      :status,
      :deleted_count,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset to delete.
    #   @return [String]
    #
    # @!attribute [rw] dataset_version
    #   Optional version to delete. If absent, deletes the entire dataset.
    #   If provided, deletes only that specific version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteDatasetRequest AWS API Documentation
    #
    class DeleteDatasetRequest < Struct.new(
      :dataset_id,
      :dataset_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dataset after the delete request.
    #   @return [String]
    #
    # @!attribute [rw] dataset_version
    #   The version that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the delete was initiated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteDatasetResponse AWS API Documentation
    #
    class DeleteDatasetResponse < Struct.new(
      :dataset_arn,
      :dataset_id,
      :status,
      :dataset_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteEvaluatorRequest AWS API Documentation
    #
    class DeleteEvaluatorRequest < Struct.new(
      :evaluator_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the deleted evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the deleted evaluator.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the evaluator deletion operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteEvaluatorResponse AWS API Documentation
    #
    class DeleteEvaluatorResponse < Struct.new(
      :evaluator_arn,
      :evaluator_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayRequest AWS API Documentation
    #
    class DeleteGatewayRequest < Struct.new(
      :gateway_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_id
    #   The unique identifier of the deleted gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the gateway deletion.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The reasons for the current status of the gateway deletion.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayResponse AWS API Documentation
    #
    class DeleteGatewayResponse < Struct.new(
      :gateway_id,
      :status,
      :status_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway containing the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the rule to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayRuleRequest AWS API Documentation
    #
    class DeleteGatewayRuleRequest < Struct.new(
      :gateway_identifier,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_id
    #   The unique identifier of the deleted rule.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the rule deletion operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayRuleResponse AWS API Documentation
    #
    class DeleteGatewayRuleResponse < Struct.new(
      :rule_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The unique identifier of the gateway associated with the target.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the gateway target to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayTargetRequest AWS API Documentation
    #
    class DeleteGatewayTargetRequest < Struct.new(
      :gateway_identifier,
      :target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the deleted gateway target.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the gateway target deletion.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The reasons for the current status of the gateway target deletion.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteGatewayTargetResponse AWS API Documentation
    #
    class DeleteGatewayTargetResponse < Struct.new(
      :gateway_arn,
      :target_id,
      :status,
      :status_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness that the endpoint belongs to.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteHarnessEndpointRequest AWS API Documentation
    #
    class DeleteHarnessEndpointRequest < Struct.new(
      :harness_id,
      :endpoint_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The endpoint that was deleted.
    #   @return [Types::HarnessEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteHarnessEndpointResponse AWS API Documentation
    #
    class DeleteHarnessEndpointResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] delete_managed_memory
    #   Whether to delete the managed memory on harness deletion. Default:
    #   true. If false, the memory is disassociated and becomes a regular
    #   customer-owned resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteHarnessRequest AWS API Documentation
    #
    class DeleteHarnessRequest < Struct.new(
      :harness_id,
      :client_token,
      :delete_managed_memory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness
    #   The harness that was deleted.
    #   @return [Types::Harness]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteHarnessResponse AWS API Documentation
    #
    class DeleteHarnessResponse < Struct.new(
      :harness)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A client token is used for keeping track of idempotent requests. It
    #   can contain a session id which can be around 250 chars, combined
    #   with a unique AWS identifier.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the memory to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteMemoryInput AWS API Documentation
    #
    class DeleteMemoryInput < Struct.new(
      :client_token,
      :memory_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The unique identifier of the deleted AgentCore Memory resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the AgentCore Memory resource deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteMemoryOutput AWS API Documentation
    #
    class DeleteMemoryOutput < Struct.new(
      :memory_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for deleting a memory strategy.
    #
    # @!attribute [rw] memory_strategy_id
    #   The unique identifier of the memory strategy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteMemoryStrategyInput AWS API Documentation
    #
    class DeleteMemoryStrategyInput < Struct.new(
      :memory_strategy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the OAuth2 credential provider to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteOauth2CredentialProviderRequest AWS API Documentation
    #
    class DeleteOauth2CredentialProviderRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteOauth2CredentialProviderResponse AWS API Documentation
    #
    class DeleteOauth2CredentialProviderResponse < Aws::EmptyStructure; end

    # @!attribute [rw] online_evaluation_config_id
    #   The unique identifier of the online evaluation configuration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteOnlineEvaluationConfigRequest AWS API Documentation
    #
    class DeleteOnlineEvaluationConfigRequest < Struct.new(
      :online_evaluation_config_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] online_evaluation_config_arn
    #   The Amazon Resource Name (ARN) of the deleted online evaluation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_id
    #   The unique identifier of the deleted online evaluation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the online evaluation configuration deletion
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteOnlineEvaluationConfigResponse AWS API Documentation
    #
    class DeleteOnlineEvaluationConfigResponse < Struct.new(
      :online_evaluation_config_arn,
      :online_evaluation_config_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the parent payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The unique identifier of the payment connector to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentConnectorRequest AWS API Documentation
    #
    class DeletePaymentConnectorRequest < Struct.new(
      :payment_manager_id,
      :payment_connector_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the payment connector, set to `DELETING` when
    #   deletion is initiated. Possible values include `CREATING`, `READY`,
    #   `UPDATING`, `DELETING`, `CREATE_FAILED`, `UPDATE_FAILED`, and
    #   `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The unique identifier of the deleted payment connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentConnectorResponse AWS API Documentation
    #
    class DeletePaymentConnectorResponse < Struct.new(
      :status,
      :payment_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the payment credential provider to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentCredentialProviderRequest AWS API Documentation
    #
    class DeletePaymentCredentialProviderRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentCredentialProviderResponse AWS API Documentation
    #
    class DeletePaymentCredentialProviderResponse < Aws::EmptyStructure; end

    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the payment manager to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentManagerRequest AWS API Documentation
    #
    class DeletePaymentManagerRequest < Struct.new(
      :payment_manager_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the payment manager, set to `DELETING` when
    #   deletion is initiated. Possible values include `CREATING`, `READY`,
    #   `UPDATING`, `DELETING`, `CREATE_FAILED`, `UPDATE_FAILED`, and
    #   `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the deleted payment manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePaymentManagerResponse AWS API Documentation
    #
    class DeletePaymentManagerResponse < Struct.new(
      :status,
      :payment_manager_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the policy engine to be deleted. This must
    #   be a valid policy engine ID that exists within the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePolicyEngineRequest AWS API Documentation
    #
    class DeletePolicyEngineRequest < Struct.new(
      :policy_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the policy engine being deleted. This
    #   confirms which policy engine the deletion operation targets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the deleted policy engine.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the deleted policy engine was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the deleted policy engine was last modified
    #   before deletion. This tracks the final state of the policy engine
    #   before it was removed from the system.
    #   @return [Time]
    #
    # @!attribute [rw] policy_engine_arn
    #   The Amazon Resource Name (ARN) of the deleted policy engine. This
    #   globally unique identifier confirms which policy engine resource was
    #   successfully removed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the policy engine deletion operation. This provides
    #   status about any issues that occurred during the deletion process.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The human-readable description of the deleted policy engine.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the deletion status. This provides
    #   details about the deletion process or any issues that may have
    #   occurred.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePolicyEngineResponse AWS API Documentation
    #
    class DeletePolicyEngineResponse < Struct.new(
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages the policy to be
    #   deleted. This ensures the policy is deleted from the correct policy
    #   engine context.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The unique identifier of the policy to be deleted. This must be a
    #   valid policy ID that exists within the specified policy engine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :policy_engine_id,
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The unique identifier of the policy being deleted. This confirms
    #   which policy the deletion operation targets.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the deleted policy. This confirms
    #   which policy was successfully removed from the system and matches
    #   the name that was originally assigned during policy creation.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine from which the policy was
    #   deleted. This confirms the policy engine context for the deletion
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the deleted policy was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the deleted policy was last modified before
    #   deletion. This tracks the final state of the policy before it was
    #   removed from the system.
    #   @return [Time]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the deleted policy. This globally
    #   unique identifier confirms which policy resource was successfully
    #   removed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the policy deletion operation. This provides
    #   information about any issues that occurred during the deletion
    #   process.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The enforcement mode of the deleted policy.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Represents the definition structure for policies within the
    #   AgentCore Policy system. This structure encapsulates different
    #   policy formats and languages that can be used to define access
    #   control rules.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] description
    #   The human-readable description of the deleted policy.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the deletion status. This provides
    #   details about the deletion process or any issues that may have
    #   occurred.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeletePolicyResponse AWS API Documentation
    #
    class DeletePolicyResponse < Struct.new(
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
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record. You can
    #   specify either the Amazon Resource Name (ARN) or the ID of the
    #   registry.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to delete. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteRegistryRecordRequest AWS API Documentation
    #
    class DeleteRegistryRecordRequest < Struct.new(
      :registry_id,
      :record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteRegistryRecordResponse AWS API Documentation
    #
    class DeleteRegistryRecordResponse < Aws::EmptyStructure; end

    # @!attribute [rw] registry_id
    #   The identifier of the registry to delete. You can specify either the
    #   Amazon Resource Name (ARN) or the ID of the registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteRegistryRequest AWS API Documentation
    #
    class DeleteRegistryRequest < Struct.new(
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the registry, set to `DELETING` when deletion
    #   is initiated. For a list of all possible registry statuses, see the
    #   `RegistryStatus` data type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteRegistryResponse AWS API Documentation
    #
    class DeleteRegistryResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to delete
    #   the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the workload identity to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteWorkloadIdentityRequest AWS API Documentation
    #
    class DeleteWorkloadIdentityRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteWorkloadIdentityResponse AWS API Documentation
    #
    class DeleteWorkloadIdentityResponse < Aws::EmptyStructure; end

    # Contains descriptor-type-specific configurations for a registry
    # record. Only the descriptor matching the record's `descriptorType`
    # should be populated.
    #
    # @!attribute [rw] mcp
    #   The Model Context Protocol (MCP) descriptor configuration. Use this
    #   when the `descriptorType` is `MCP`.
    #   @return [Types::McpDescriptor]
    #
    # @!attribute [rw] a2a
    #   The Agent-to-Agent (A2A) protocol descriptor configuration. Use this
    #   when the `descriptorType` is `A2A`.
    #   @return [Types::A2aDescriptor]
    #
    # @!attribute [rw] custom
    #   The custom descriptor configuration. Use this when the
    #   `descriptorType` is `CUSTOM`.
    #   @return [Types::CustomDescriptor]
    #
    # @!attribute [rw] agent_skills
    #   The agent skills descriptor configuration. Use this when the
    #   `descriptorType` is `AGENT_SKILLS`.
    #   @return [Types::AgentSkillsDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Descriptors AWS API Documentation
    #
    class Descriptors < Struct.new(
      :mcp,
      :a2a,
      :custom,
      :agent_skills)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for an Amazon EFS access point filesystem mounted into
    # the AgentCore Runtime. EFS access points provide shared file storage
    # accessible from your AgentCore Runtime sessions.
    #
    # @!attribute [rw] access_point_arn
    #   The ARN of the EFS access point to mount into the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   The mount path for the EFS access point inside the AgentCore
    #   Runtime. The path must be under `/mnt` with exactly one subdirectory
    #   level (for example, `/mnt/data`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EfsAccessPointConfiguration AWS API Documentation
    #
    class EfsAccessPointConfiguration < Struct.new(
      :access_point_arn,
      :mount_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for mounting an Amazon Elastic File System (Amazon
    # EFS) access point that you own into a session.
    #
    # @!attribute [rw] access_point_arn
    #   The Amazon Resource Name (ARN) of the Amazon Elastic File System
    #   (Amazon EFS) access point to mount.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   The absolute path within the session at which the access point is
    #   mounted, for example `/mnt/efs`. Each mount path must be unique
    #   across all file system configurations in the session.
    #   @return [String]
    #
    # @!attribute [rw] file_system_arn
    #   The Amazon Resource Name (ARN) of the Amazon Elastic File System
    #   (Amazon EFS) file system that owns the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EfsConfiguration AWS API Documentation
    #
    class EfsConfiguration < Struct.new(
      :access_point_arn,
      :mount_path,
      :file_system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception thrown when encryption of a secret fails.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EncryptionFailure AWS API Documentation
    #
    class EncryptionFailure < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations to override the default consolidation step for
    # the episodic memory strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text appended to the prompt for the consolidation step of the
    #   episodic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID used for the consolidation step of the episodic memory
    #   strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicConsolidationOverride AWS API Documentation
    #
    class EpisodicConsolidationOverride < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Contains configurations to override the default extraction step for
    # the episodic memory strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text appended to the prompt for the extraction step of the
    #   episodic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID used for the extraction step of the episodic memory
    #   strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicExtractionOverride AWS API Documentation
    #
    class EpisodicExtractionOverride < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Input for creating an episodic memory strategy.
    #
    # @!attribute [rw] name
    #   The name of the episodic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the episodic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The namespaces
    #   for which to create episodes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates for which to create episodes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] reflection_configuration
    #   The configuration for the reflections created with the episodic
    #   memory strategy.
    #   @return [Types::EpisodicReflectionConfigurationInput]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata fields on records generated by this strategy.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicMemoryStrategyInput AWS API Documentation
    #
    class EpisodicMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :reflection_configuration,
      :memory_record_schema)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Input for the configuration to override the episodic memory strategy.
    #
    # @!attribute [rw] extraction
    #   Contains configurations for overriding the extraction step of the
    #   episodic memory strategy.
    #   @return [Types::EpisodicOverrideExtractionConfigurationInput]
    #
    # @!attribute [rw] consolidation
    #   Contains configurations for overriding the consolidation step of the
    #   episodic memory strategy.
    #   @return [Types::EpisodicOverrideConsolidationConfigurationInput]
    #
    # @!attribute [rw] reflection
    #   Contains configurations for overriding the reflection step of the
    #   episodic memory strategy.
    #   @return [Types::EpisodicOverrideReflectionConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicOverrideConfigurationInput AWS API Documentation
    #
    class EpisodicOverrideConfigurationInput < Struct.new(
      :extraction,
      :consolidation,
      :reflection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configurations for overriding the consolidation step of the episodic
    # memory strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for the consolidation step of the
    #   episodic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for the consolidation step of the episodic
    #   memory strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicOverrideConsolidationConfigurationInput AWS API Documentation
    #
    class EpisodicOverrideConsolidationConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Configurations for overriding the extraction step of the episodic
    # memory strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for the extraction step of the
    #   episodic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for the extraction step of the episodic memory
    #   strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicOverrideExtractionConfigurationInput AWS API Documentation
    #
    class EpisodicOverrideExtractionConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Configurations for overriding the reflection step of the episodic
    # memory strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for reflection step of the episodic
    #   memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for the reflection step of the episodic memory
    #   strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The namespaces
    #   to use for episodic reflection. Can be less nested than the episodic
    #   namespaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates to use for episodic reflection. Can be less
    #   nested than the episodic namespaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata fields on records generated by this reflection
    #   override.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicOverrideReflectionConfigurationInput AWS API Documentation
    #
    class EpisodicOverrideReflectionConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id,
      :namespaces,
      :namespace_templates,
      :memory_record_schema)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # The configuration for the reflections created with the episodic memory
    # strategy.
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The namespaces
    #   for which to create reflections. Can be less nested than the
    #   episodic namespaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates for which to create reflections. Can be less
    #   nested than the episodic namespaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_record_schema
    #   "Schema for metadata fields on records generated by reflections.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicReflectionConfiguration AWS API Documentation
    #
    class EpisodicReflectionConfiguration < Struct.new(
      :namespaces,
      :namespace_templates,
      :memory_record_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # An episodic reflection configuration input.
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The namespaces
    #   over which to create reflections. Can be less nested than episode
    #   namespaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates over which to create reflections. Can be less
    #   nested than episode namespaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata fields on records generated by reflections.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicReflectionConfigurationInput AWS API Documentation
    #
    class EpisodicReflectionConfigurationInput < Struct.new(
      :namespaces,
      :namespace_templates,
      :memory_record_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configurations to override the default reflection step for
    # the episodic memory strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text appended to the prompt for the reflection step of the
    #   episodic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID used for the reflection step of the episodic memory
    #   strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter. The namespaces over which reflections
    #   were created. Can be less nested than the episodic namespaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates over which reflections were created. Can be
    #   less nested than the episodic namespaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata fields on records generated by this reflection
    #   override.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicReflectionOverride AWS API Documentation
    #
    class EpisodicReflectionOverride < Struct.new(
      :append_to_prompt,
      :model_id,
      :namespaces,
      :namespace_templates,
      :memory_record_schema)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # The configuration that defines how an evaluator assesses agent
    # performance, including the evaluation method and parameters.
    #
    # @note EvaluatorConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EvaluatorConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EvaluatorConfig corresponding to the set member.
    #
    # @!attribute [rw] llm_as_a_judge
    #   The LLM-as-a-Judge configuration that uses a language model to
    #   evaluate agent performance based on custom instructions and rating
    #   scales.
    #   @return [Types::LlmAsAJudgeEvaluatorConfig]
    #
    # @!attribute [rw] code_based
    #   Configuration for a code-based evaluator that uses a
    #   customer-managed Lambda function to programmatically assess agent
    #   performance.
    #   @return [Types::CodeBasedEvaluatorConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EvaluatorConfig AWS API Documentation
    #
    class EvaluatorConfig < Struct.new(
      :llm_as_a_judge,
      :code_based,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class LlmAsAJudge < EvaluatorConfig; end
      class CodeBased < EvaluatorConfig; end
      class Unknown < EvaluatorConfig; end
    end

    # The model configuration that specifies which foundation model to use
    # for evaluation and how to configure it.
    #
    # @note EvaluatorModelConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EvaluatorModelConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EvaluatorModelConfig corresponding to the set member.
    #
    # @!attribute [rw] bedrock_evaluator_model_config
    #   The Amazon Bedrock model configuration for evaluation.
    #   @return [Types::BedrockEvaluatorModelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EvaluatorModelConfig AWS API Documentation
    #
    class EvaluatorModelConfig < Struct.new(
      :bedrock_evaluator_model_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BedrockEvaluatorModelConfig < EvaluatorModelConfig; end
      class Unknown < EvaluatorModelConfig; end
    end

    # The reference to an evaluator used in online evaluation
    # configurations, containing the evaluator identifier.
    #
    # @note EvaluatorReference is a union - when making an API calls you must set exactly one of the members.
    #
    # @note EvaluatorReference is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EvaluatorReference corresponding to the set member.
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator. Can reference builtin
    #   evaluators (e.g., Builtin.Helpfulness) or custom evaluators.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EvaluatorReference AWS API Documentation
    #
    class EvaluatorReference < Struct.new(
      :evaluator_id,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EvaluatorId < EvaluatorReference; end
      class Unknown < EvaluatorReference; end
    end

    # The summary information about an evaluator, including basic metadata
    # and status information.
    #
    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_name
    #   The name of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_type
    #   The type of evaluator, indicating whether it is a built-in evaluator
    #   provided by the service or a custom evaluator created by the user.
    #   @return [String]
    #
    # @!attribute [rw] level
    #   The evaluation level (`TOOL_CALL`, `TRACE`, or `SESSION`) that
    #   determines the scope of evaluation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the evaluator was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the evaluator was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] locked_for_modification
    #   Whether the evaluator is locked for modification due to being
    #   referenced by active online evaluation configurations.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used
    #   to encrypt the evaluator's sensitive data. This field is only
    #   present for evaluators encrypted with a customer managed key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EvaluatorSummary AWS API Documentation
    #
    class EvaluatorSummary < Struct.new(
      :evaluator_arn,
      :evaluator_id,
      :evaluator_name,
      :description,
      :evaluator_type,
      :level,
      :status,
      :created_at,
      :updated_at,
      :locked_for_modification,
      :kms_key_arn)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Configuration for metadata extraction from conversational content.
    #
    # @note ExtractionConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ExtractionConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ExtractionConfig corresponding to the set member.
    #
    # @!attribute [rw] llm_extraction_config
    #   Model-based extraction using a definition and instructions.
    #   @return [Types::LlmExtractionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ExtractionConfig AWS API Documentation
    #
    class ExtractionConfig < Struct.new(
      :llm_extraction_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class LlmExtractionConfig < ExtractionConfig; end
      class Unknown < ExtractionConfig; end
    end

    # Contains extraction configuration information for a memory strategy.
    #
    # @note ExtractionConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ExtractionConfiguration corresponding to the set member.
    #
    # @!attribute [rw] custom_extraction_configuration
    #   The custom extraction configuration.
    #   @return [Types::CustomExtractionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ExtractionConfiguration AWS API Documentation
    #
    class ExtractionConfiguration < Struct.new(
      :custom_extraction_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomExtractionConfiguration < ExtractionConfiguration; end
      class Unknown < ExtractionConfiguration; end
    end

    # Configuration for a filesystem that can be mounted into the AgentCore
    # Runtime.
    #
    # @note FilesystemConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FilesystemConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FilesystemConfiguration corresponding to the set member.
    #
    # @!attribute [rw] session_storage
    #   Configuration for session storage. Session storage provides
    #   persistent storage that is preserved across AgentCore Runtime
    #   session invocations.
    #   @return [Types::SessionStorageConfiguration]
    #
    # @!attribute [rw] s3_files_access_point
    #   Configuration for an Amazon S3 Files access point to mount into the
    #   AgentCore Runtime.
    #   @return [Types::S3FilesAccessPointConfiguration]
    #
    # @!attribute [rw] efs_access_point
    #   Configuration for an Amazon EFS access point to mount into the
    #   AgentCore Runtime.
    #   @return [Types::EfsAccessPointConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/FilesystemConfiguration AWS API Documentation
    #
    class FilesystemConfiguration < Struct.new(
      :session_storage,
      :s3_files_access_point,
      :efs_access_point,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SessionStorage < FilesystemConfiguration; end
      class S3FilesAccessPoint < FilesystemConfiguration; end
      class EfsAccessPoint < FilesystemConfiguration; end
      class Unknown < FilesystemConfiguration; end
    end

    # The filter that applies conditions to agent traces during online
    # evaluation to determine which traces should be evaluated.
    #
    # @!attribute [rw] key
    #   The key or field name to filter on within the agent trace data.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The comparison operator to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to compare against using the specified operator.
    #   @return [Types::FilterValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :key,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value used in filter comparisons, supporting different data types
    # for flexible filtering criteria.
    #
    # @note FilterValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FilterValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FilterValue corresponding to the set member.
    #
    # @!attribute [rw] string_value
    #   The string value for text-based filtering.
    #   @return [String]
    #
    # @!attribute [rw] double_value
    #   The numeric value for numerical filtering and comparisons.
    #   @return [Float]
    #
    # @!attribute [rw] boolean_value
    #   The boolean value for true/false filtering conditions.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/FilterValue AWS API Documentation
    #
    class FilterValue < Struct.new(
      :string_value,
      :double_value,
      :boolean_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StringValue < FilterValue; end
      class DoubleValue < FilterValue; end
      class BooleanValue < FilterValue; end
      class Unknown < FilterValue; end
    end

    # Represents a finding or issue discovered during policy generation or
    # validation. Findings provide insights about potential problems,
    # recommendations, or validation results from policy analysis
    # operations. Finding types include: VALID (policy is ready to use),
    # INVALID (policy has validation errors that must be fixed),
    # NOT\_TRANSLATABLE (input couldn't be converted to policy), ALLOW\_ALL
    # (policy would allow all actions, potential security risk), ALLOW\_NONE
    # (policy would allow no actions, unusable), DENY\_ALL (policy would
    # deny all actions, may be too restrictive), and DENY\_NONE (policy
    # would deny no actions, ineffective). Review all findings before
    # creating policies from generated assets to ensure they match your
    # security requirements.
    #
    # @!attribute [rw] type
    #   The type or category of the finding. This classifies the finding as
    #   an error, warning, recommendation, or informational message to help
    #   users understand the severity and nature of the issue.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the finding. This provides detailed
    #   information about the issue, recommendation, or validation result to
    #   help users understand and address the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :type,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for synchronizing from a URL-based MCP server.
    #
    # @!attribute [rw] url
    #   The HTTPS URL of the MCP server to synchronize from.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_configurations
    #   Optional list of credential provider configurations for
    #   authenticating with the MCP server. At most one credential provider
    #   configuration can be specified.
    #   @return [Array<Types::RegistryRecordCredentialProviderConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/FromUrlSynchronizationConfiguration AWS API Documentation
    #
    class FromUrlSynchronizationConfiguration < Struct.new(
      :url,
      :credential_provider_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an interceptor on a gateway. This structure
    # defines settings for an interceptor that will be invoked during the
    # invocation of the gateway.
    #
    # @!attribute [rw] interceptor
    #   The infrastructure settings of an interceptor configuration. This
    #   structure defines how the interceptor can be invoked.
    #   @return [Types::InterceptorConfiguration]
    #
    # @!attribute [rw] interception_points
    #   The supported points of interception. This field specifies which
    #   points during the gateway invocation to invoke the interceptor
    #   @return [Array<String>]
    #
    # @!attribute [rw] input_configuration
    #   The configuration for the input of the interceptor. This field
    #   specifies how the input to the interceptor is constructed
    #   @return [Types::InterceptorInputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GatewayInterceptorConfiguration AWS API Documentation
    #
    class GatewayInterceptorConfiguration < Struct.new(
      :interceptor,
      :interception_points,
      :input_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a policy engine associated with a gateway. A
    # policy engine is a collection of policies that evaluates and
    # authorizes agent tool calls. When associated with a gateway, the
    # policy engine intercepts all agent requests and determines whether to
    # allow or deny each action based on the defined policies.
    #
    # @!attribute [rw] arn
    #   The ARN of the policy engine. The policy engine contains Cedar
    #   policies that define fine-grained authorization rules specifying who
    #   can perform what actions on which resources as agents interact
    #   through the gateway.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The enforcement mode for the policy engine. Valid values include:
    #
    #   * `LOG_ONLY` - The policy engine evaluates each action against your
    #     policies and adds traces on whether tool calls would be allowed or
    #     denied, but does not enforce the decision. Use this mode to test
    #     and validate policies before enabling enforcement.
    #
    #   * `ENFORCE` - The policy engine evaluates actions against your
    #     policies and enforces decisions by allowing or denying agent
    #     operations. Test and validate policies in `LOG_ONLY` mode before
    #     enabling enforcement to avoid unintended denials or adversely
    #     affecting production traffic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GatewayPolicyEngineConfiguration AWS API Documentation
    #
    class GatewayPolicyEngineConfiguration < Struct.new(
      :arn,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a gateway protocol. This structure defines how
    # the gateway communicates with external services.
    #
    # @note GatewayProtocolConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note GatewayProtocolConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of GatewayProtocolConfiguration corresponding to the set member.
    #
    # @!attribute [rw] mcp
    #   The configuration for the Model Context Protocol (MCP). This
    #   protocol enables communication between Amazon Bedrock Agent and
    #   external tools.
    #   @return [Types::MCPGatewayConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GatewayProtocolConfiguration AWS API Documentation
    #
    class GatewayProtocolConfiguration < Struct.new(
      :mcp,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Mcp < GatewayProtocolConfiguration; end
      class Unknown < GatewayProtocolConfiguration; end
    end

    # Detailed information about a gateway rule.
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the gateway rule.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway that the rule belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the rule. Rules are evaluated in order of priority,
    #   with lower numbers evaluated first.
    #   @return [Integer]
    #
    # @!attribute [rw] conditions
    #   The conditions that must be met for the rule to apply.
    #   @return [Array<Types::Condition>]
    #
    # @!attribute [rw] actions
    #   The actions to take when the rule conditions are met.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   The description of the gateway rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] system
    #   System-managed metadata for rules created by automated processes.
    #   @return [Types::SystemManagedBlock]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GatewayRuleDetail AWS API Documentation
    #
    class GatewayRuleDetail < Struct.new(
      :rule_id,
      :gateway_arn,
      :priority,
      :conditions,
      :actions,
      :description,
      :created_at,
      :status,
      :system,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a gateway.
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the gateway was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the gateway was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer used by the gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type used by the gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GatewaySummary AWS API Documentation
    #
    class GatewaySummary < Struct.new(
      :gateway_id,
      :name,
      :status,
      :description,
      :created_at,
      :updated_at,
      :authorizer_type,
      :protocol_type)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The gateway target.
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The target ID.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time at which the target was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time at which the target was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The status reasons for the target status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   The configuration for a gateway target. This structure defines how
    #   the gateway connects to and interacts with the target endpoint.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The provider configurations.
    #   @return [Array<Types::CredentialProviderConfiguration>]
    #
    # @!attribute [rw] last_synchronized_at
    #   The last synchronization time.
    #   @return [Time]
    #
    # @!attribute [rw] metadata_configuration
    #   The metadata configuration for HTTP header and query parameter
    #   propagation to and from this gateway target.
    #   @return [Types::MetadataConfiguration]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint configuration for a gateway target. Defines how
    #   the gateway connects to private resources in your VPC.
    #   @return [Types::PrivateEndpoint]
    #
    # @!attribute [rw] private_endpoint_managed_resources
    #   A list of managed resources created by the gateway for private
    #   endpoint connectivity. These resources are created in your account
    #   when you use a managed VPC Lattice resource configuration.
    #   @return [Array<Types::ManagedResourceDetails>]
    #
    # @!attribute [rw] authorization_data
    #   OAuth2 authorization data for the gateway target. This data is
    #   returned when a target is configured with a credential provider with
    #   authorization code grant type and requires user federation.
    #   @return [Types::AuthorizationData]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type of the gateway target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GatewayTarget AWS API Documentation
    #
    class GatewayTarget < Struct.new(
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
      :protocol_type)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime associated with the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the AgentCore Runtime endpoint to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetAgentRuntimeEndpointRequest AWS API Documentation
    #
    class GetAgentRuntimeEndpointRequest < Struct.new(
      :agent_runtime_id,
      :endpoint_name)
      SENSITIVE = [:endpoint_name]
      include Aws::Structure
    end

    # @!attribute [rw] live_version
    #   The currently deployed version of the AgentCore Runtime on the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The target version of the AgentCore Runtime for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_endpoint_arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the AgentCore Runtime endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the AgentCore Runtime endpoint was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the AgentCore Runtime endpoint is in a
    #   failed state.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetAgentRuntimeEndpointResponse AWS API Documentation
    #
    class GetAgentRuntimeEndpointResponse < Struct.new(
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
      :id)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_version
    #   The version of the AgentCore Runtime to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetAgentRuntimeRequest AWS API Documentation
    #
    class GetAgentRuntimeRequest < Struct.new(
      :agent_runtime_id,
      :agent_runtime_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_name
    #   The name of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_version
    #   The version of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the AgentCore Runtime was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the AgentCore Runtime was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that provides permissions for the AgentCore
    #   Runtime.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the AgentCore Runtime.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_configuration
    #   The life cycle configuration for the AgentCore Runtime.
    #   @return [Types::LifecycleConfiguration]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the AgentCore Runtime is in a failed
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the AgentCore Runtime.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] agent_runtime_artifact
    #   The artifact of the AgentCore Runtime.
    #   @return [Types::AgentRuntimeArtifact]
    #
    # @!attribute [rw] protocol_configuration
    #   The protocol configuration for an agent runtime. This structure
    #   defines how the agent runtime communicates with clients.
    #   @return [Types::ProtocolConfiguration]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables set in the AgentCore Runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the AgentCore Runtime.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] request_header_configuration
    #   Configuration for HTTP request headers that will be passed through
    #   to the runtime.
    #   @return [Types::RequestHeaderConfiguration]
    #
    # @!attribute [rw] metadata_configuration
    #   Configuration for microVM Metadata Service (MMDS) settings for the
    #   AgentCore Runtime.
    #   @return [Types::RuntimeMetadataConfiguration]
    #
    # @!attribute [rw] filesystem_configurations
    #   The filesystem configurations mounted into the AgentCore Runtime.
    #   @return [Array<Types::FilesystemConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetAgentRuntimeResponse AWS API Documentation
    #
    class GetAgentRuntimeResponse < Struct.new(
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
      :filesystem_configurations)
      SENSITIVE = [:description, :environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the API key credential provider to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetApiKeyCredentialProviderRequest AWS API Documentation
    #
    class GetApiKeyCredentialProviderRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_key_secret_arn
    #   The Amazon Resource Name (ARN) of the API key secret in Amazon Web
    #   Services Secrets Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] api_key_secret_json_key
    #   The JSON key used to extract the API key value from the Amazon Web
    #   Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_source
    #   The source type of the API key secret. Either `MANAGED` if the
    #   secret is managed by the service, or `EXTERNAL` if managed by the
    #   user in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the API key credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the API key credential provider.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the API key credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the API key credential provider was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetApiKeyCredentialProviderResponse AWS API Documentation
    #
    class GetApiKeyCredentialProviderResponse < Struct.new(
      :api_key_secret_arn,
      :api_key_secret_json_key,
      :api_key_secret_source,
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of the browser profile to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetBrowserProfileRequest AWS API Documentation
    #
    class GetBrowserProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_arn
    #   The Amazon Resource Name (ARN) of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the browser profile.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the browser profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the browser profile was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_saved_at
    #   The timestamp when browser session data was last saved to this
    #   profile.
    #   @return [Time]
    #
    # @!attribute [rw] last_saved_browser_session_id
    #   The identifier of the browser session from which data was last saved
    #   to this profile.
    #   @return [String]
    #
    # @!attribute [rw] last_saved_browser_id
    #   The identifier of the browser from which data was last saved to this
    #   profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetBrowserProfileResponse AWS API Documentation
    #
    class GetBrowserProfileResponse < Struct.new(
      :profile_id,
      :profile_arn,
      :name,
      :description,
      :status,
      :created_at,
      :last_updated_at,
      :last_saved_at,
      :last_saved_browser_session_id,
      :last_saved_browser_id)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] browser_id
    #   The unique identifier of the browser to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetBrowserRequest AWS API Documentation
    #
    class GetBrowserRequest < Struct.new(
      :browser_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_id
    #   The unique identifier of the browser.
    #   @return [String]
    #
    # @!attribute [rw] browser_arn
    #   The Amazon Resource Name (ARN) of the browser.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the browser.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the browser.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The IAM role ARN that provides permissions for the browser.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for a browser. This structure defines how
    #   the browser connects to the network.
    #   @return [Types::BrowserNetworkConfiguration]
    #
    # @!attribute [rw] recording
    #   The recording configuration for a browser. This structure defines
    #   how browser sessions are recorded.
    #   @return [Types::RecordingConfig]
    #
    # @!attribute [rw] browser_signing
    #   The browser signing configuration that shows whether cryptographic
    #   agent identification is enabled for web bot authentication.
    #   @return [Types::BrowserSigningConfigOutput]
    #
    # @!attribute [rw] enterprise_policies
    #   The list of enterprise policy files configured for the browser.
    #   @return [Array<Types::BrowserEnterprisePolicy>]
    #
    # @!attribute [rw] certificates
    #   The list of certificates configured for the browser.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The file system configurations mounted into the browser. Each entry
    #   describes an access point and its mount path.
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    #
    # @!attribute [rw] status
    #   The current status of the browser.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the browser is in a failed state.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the browser was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the browser was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetBrowserResponse AWS API Documentation
    #
    class GetBrowserResponse < Struct.new(
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
      :last_updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_id
    #   The unique identifier of the code interpreter to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetCodeInterpreterRequest AWS API Documentation
    #
    class GetCodeInterpreterRequest < Struct.new(
      :code_interpreter_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_id
    #   The unique identifier of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] code_interpreter_arn
    #   The Amazon Resource Name (ARN) of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The IAM role ARN that provides permissions for the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for a code interpreter. This structure
    #   defines how the code interpreter connects to the network.
    #   @return [Types::CodeInterpreterNetworkConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the code interpreter.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The list of certificates configured for the code interpreter.
    #   @return [Array<Types::Certificate>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The file system configurations mounted into the code interpreter.
    #   Each entry describes an access point and its mount path.
    #   @return [Array<Types::ToolsFileSystemConfiguration>]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the code interpreter is in a failed state.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the code interpreter was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the code interpreter was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetCodeInterpreterResponse AWS API Documentation
    #
    class GetCodeInterpreterResponse < Struct.new(
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
      :last_updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The branch name to get the latest version from. If not specified,
    #   returns the latest version on the mainline branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetConfigurationBundleRequest AWS API Documentation
    #
    class GetConfigurationBundleRequest < Struct.new(
      :bundle_id,
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_name
    #   The name of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version identifier of this configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   A map of component identifiers to their configurations for this
    #   version.
    #   @return [Hash<String,Types::ComponentConfiguration>]
    #
    # @!attribute [rw] lineage_metadata
    #   The version lineage metadata, including parent versions, branch
    #   name, and creation source.
    #   @return [Types::VersionLineageMetadata]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the configuration bundle was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the configuration bundle was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_arn
    #   KMS key ARN used to encrypt component configurations, if CMK was
    #   provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetConfigurationBundleResponse AWS API Documentation
    #
    class GetConfigurationBundleResponse < Struct.new(
      :bundle_arn,
      :bundle_id,
      :bundle_name,
      :description,
      :version_id,
      :components,
      :lineage_metadata,
      :created_at,
      :updated_at,
      :kms_key_arn)
      SENSITIVE = [:description, :components]
      include Aws::Structure
    end

    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version identifier of the configuration bundle version to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetConfigurationBundleVersionRequest AWS API Documentation
    #
    class GetConfigurationBundleVersionRequest < Struct.new(
      :bundle_id,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_name
    #   The name of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version identifier of this configuration bundle version.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   A map of component identifiers to their configurations for this
    #   version.
    #   @return [Hash<String,Types::ComponentConfiguration>]
    #
    # @!attribute [rw] lineage_metadata
    #   The version lineage metadata, including parent versions, branch
    #   name, and creation source.
    #   @return [Types::VersionLineageMetadata]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the configuration bundle was created.
    #   @return [Time]
    #
    # @!attribute [rw] version_created_at
    #   The timestamp when this specific version was created.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_arn
    #   KMS key ARN used to encrypt component configurations, if CMK was
    #   provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetConfigurationBundleVersionResponse AWS API Documentation
    #
    class GetConfigurationBundleVersionResponse < Struct.new(
      :bundle_arn,
      :bundle_id,
      :bundle_name,
      :description,
      :version_id,
      :components,
      :lineage_metadata,
      :created_at,
      :version_created_at,
      :kms_key_arn)
      SENSITIVE = [:description, :components]
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] dataset_version
    #   Version to retrieve: "DRAFT" or a version number. Defaults to
    #   DRAFT if absent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetDatasetRequest AWS API Documentation
    #
    class GetDatasetRequest < Struct.new(
      :dataset_id,
      :dataset_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_version
    #   The resolved version: "DRAFT" (default) or the requested version
    #   number.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] draft_status
    #   Publish synchronization state. Only authoritative when status is
    #   ACTIVE. MODIFIED indicates DRAFT has unpublished changes. UNMODIFIED
    #   indicates DRAFT matches the latest published version.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Populated when status is CREATE\_FAILED, UPDATE\_FAILED, or
    #   DELETE\_FAILED. Describes the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] schema_type
    #   The schema type declared at create time. Immutable after creation.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   KMS key ARN used for server-side encryption on service Amazon S3
    #   writes, if configured.
    #   @return [String]
    #
    # @!attribute [rw] example_count
    #   The number of examples in the DRAFT.
    #   @return [Integer]
    #
    # @!attribute [rw] download_url
    #   Presigned Amazon S3 URL to download the consolidated dataset file
    #   for the resolved version. Expires after 5 minutes. Omitted if the
    #   file does not yet exist.
    #   @return [String]
    #
    # @!attribute [rw] download_url_expires_at
    #   Expiry timestamp for the download URL.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the dataset was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the dataset was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the dataset.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetDatasetResponse AWS API Documentation
    #
    class GetDatasetResponse < Struct.new(
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
      :tags)
      SENSITIVE = [:download_url]
      include Aws::Structure
    end

    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator to retrieve. Can be a
    #   built-in evaluator ID (e.g., Builtin.Helpfulness) or a custom
    #   evaluator ID.
    #   @return [String]
    #
    # @!attribute [rw] included_data
    #   Controls which data is returned in the response. `ALL_DATA`
    #   (default) returns the full evaluator including decrypted
    #   instructions and rating scale. For evaluators encrypted with a
    #   customer managed KMS key, this requires `kms:Decrypt` permission on
    #   the key. `METADATA_ONLY` returns evaluator metadata and model
    #   configuration without instructions or rating scale, and does not
    #   require any KMS permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetEvaluatorRequest AWS API Documentation
    #
    class GetEvaluatorRequest < Struct.new(
      :evaluator_id,
      :included_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_name
    #   The name of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_config
    #   The configuration of the evaluator, including LLM-as-a-Judge or
    #   code-based settings.
    #   @return [Types::EvaluatorConfig]
    #
    # @!attribute [rw] level
    #   The evaluation level (`TOOL_CALL`, `TRACE`, or `SESSION`) that
    #   determines the scope of evaluation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the evaluator was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the evaluator was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] locked_for_modification
    #   Whether the evaluator is locked for modification due to being
    #   referenced by active online evaluation configurations.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the customer managed KMS key used
    #   to encrypt the evaluator's sensitive data. This field is only
    #   present for evaluators encrypted with a customer managed key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetEvaluatorResponse AWS API Documentation
    #
    class GetEvaluatorResponse < Struct.new(
      :evaluator_arn,
      :evaluator_id,
      :evaluator_name,
      :description,
      :evaluator_config,
      :level,
      :status,
      :created_at,
      :updated_at,
      :locked_for_modification,
      :kms_key_arn)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayRequest AWS API Documentation
    #
    class GetGatewayRequest < Struct.new(
      :gateway_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_url
    #   An endpoint for invoking gateway.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the gateway was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the gateway was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The reasons for the current status of the gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role ARN that provides permissions for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   Protocol applied to a gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_configuration
    #   The configuration for a gateway protocol. This structure defines how
    #   the gateway communicates with external services.
    #   @return [Types::GatewayProtocolConfiguration]
    #
    # @!attribute [rw] authorizer_type
    #   Authorizer type for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the gateway.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   gateway.
    #   @return [String]
    #
    # @!attribute [rw] custom_transform_configuration
    #   The custom transformation configuration for the gateway. This
    #   configuration defines how the gateway transforms requests and
    #   responses.
    #   @return [Types::CustomTransformConfiguration]
    #
    # @!attribute [rw] interceptor_configurations
    #   The interceptors configured on the gateway.
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    #
    # @!attribute [rw] policy_engine_configuration
    #   The policy engine configuration for the gateway.
    #   @return [Types::GatewayPolicyEngineConfiguration]
    #
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the gateway.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] exception_level
    #   The level of detail in error messages returned when invoking the
    #   gateway.
    #
    #   * If the value is `DEBUG`, granular exception messages are returned
    #     to help a user debug the gateway.
    #
    #   * If the value is omitted, a generic error message is returned to
    #     the end user.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services WAF web
    #   ACL associated with the gateway.
    #   @return [String]
    #
    # @!attribute [rw] waf_configuration
    #   The Amazon Web Services WAF configuration for the gateway.
    #   @return [Types::WafConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayResponse AWS API Documentation
    #
    class GetGatewayResponse < Struct.new(
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
      :waf_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway containing the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the rule to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayRuleRequest AWS API Documentation
    #
    class GetGatewayRuleRequest < Struct.new(
      :gateway_identifier,
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create response excludes updatedAt (redundant on create). Get/Update
    # responses include it via their own output structures.
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the gateway rule.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway that the rule belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the rule. Rules are evaluated in order of priority,
    #   with lower numbers evaluated first.
    #   @return [Integer]
    #
    # @!attribute [rw] conditions
    #   The conditions that must be met for the rule to apply.
    #   @return [Array<Types::Condition>]
    #
    # @!attribute [rw] actions
    #   The actions to take when the rule conditions are met.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   The description of the gateway rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] system
    #   System-managed metadata for rules created by automated processes.
    #   @return [Types::SystemManagedBlock]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayRuleResponse AWS API Documentation
    #
    class GetGatewayRuleResponse < Struct.new(
      :rule_id,
      :gateway_arn,
      :priority,
      :conditions,
      :actions,
      :description,
      :created_at,
      :status,
      :system,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway that contains the target.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the target to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayTargetRequest AWS API Documentation
    #
    class GetGatewayTargetRequest < Struct.new(
      :gateway_identifier,
      :target_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the gateway target was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the gateway target was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The reasons for the current status of the gateway target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   The configuration for a gateway target. This structure defines how
    #   the gateway connects to and interacts with the target endpoint.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The credential provider configurations for the gateway target.
    #   @return [Array<Types::CredentialProviderConfiguration>]
    #
    # @!attribute [rw] last_synchronized_at
    #   The last synchronization of the target.
    #   @return [Time]
    #
    # @!attribute [rw] metadata_configuration
    #   The metadata configuration for HTTP header and query parameter
    #   propagation for the retrieved gateway target.
    #   @return [Types::MetadataConfiguration]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint configuration for the gateway target.
    #   @return [Types::PrivateEndpoint]
    #
    # @!attribute [rw] private_endpoint_managed_resources
    #   The managed resources created by the gateway for private endpoint
    #   connectivity.
    #   @return [Array<Types::ManagedResourceDetails>]
    #
    # @!attribute [rw] authorization_data
    #   OAuth2 authorization data for the gateway target. This data is
    #   returned when a target is configured with a credential provider with
    #   authorization code grant type and requires user federation.
    #   @return [Types::AuthorizationData]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type of the gateway target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetGatewayTargetResponse AWS API Documentation
    #
    class GetGatewayTargetResponse < Struct.new(
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
      :protocol_type)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness that the endpoint belongs to.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetHarnessEndpointRequest AWS API Documentation
    #
    class GetHarnessEndpointRequest < Struct.new(
      :harness_id,
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The endpoint resource.
    #   @return [Types::HarnessEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetHarnessEndpointResponse AWS API Documentation
    #
    class GetHarnessEndpointResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] harness_version
    #   Specific version of the harness to retrieve. If omitted, returns the
    #   current Harness configuration, including its status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetHarnessRequest AWS API Documentation
    #
    class GetHarnessRequest < Struct.new(
      :harness_id,
      :harness_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness
    #   The harness resource.
    #   @return [Types::Harness]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetHarnessResponse AWS API Documentation
    #
    class GetHarnessResponse < Struct.new(
      :harness)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The unique identifier of the memory to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] view
    #   The level of detail to return for the memory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetMemoryInput AWS API Documentation
    #
    class GetMemoryInput < Struct.new(
      :memory_id,
      :view)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memory
    #   The retrieved AgentCore Memory resource details.
    #   @return [Types::Memory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetMemoryOutput AWS API Documentation
    #
    class GetMemoryOutput < Struct.new(
      :memory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the OAuth2 credential provider to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetOauth2CredentialProviderRequest AWS API Documentation
    #
    class GetOauth2CredentialProviderRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_secret_arn
    #   The Amazon Resource Name (ARN) of the client secret in Amazon Web
    #   Services Secrets Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] client_secret_json_key
    #   The JSON key used to extract the client secret value from the Amazon
    #   Web Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Either `MANAGED` if the secret
    #   is managed by the service, or `EXTERNAL` if managed by the user in
    #   Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   ARN of the credential provider requested.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] callback_url
    #   Callback URL to register on the OAuth2 credential provider as an
    #   allowed callback URL. This URL is where the OAuth2 authorization
    #   server redirects users after they complete the authorization flow.
    #   @return [String]
    #
    # @!attribute [rw] oauth2_provider_config_output
    #   The configuration output for the OAuth2 provider.
    #   @return [Types::Oauth2ProviderConfigOutput]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the OAuth2 credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the OAuth2 credential provider was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the OAuth2 credential provider is in a
    #   failed state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetOauth2CredentialProviderResponse AWS API Documentation
    #
    class GetOauth2CredentialProviderResponse < Struct.new(
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
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] online_evaluation_config_id
    #   The unique identifier of the online evaluation configuration to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetOnlineEvaluationConfigRequest AWS API Documentation
    #
    class GetOnlineEvaluationConfigRequest < Struct.new(
      :online_evaluation_config_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] online_evaluation_config_arn
    #   The Amazon Resource Name (ARN) of the online evaluation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_id
    #   The unique identifier of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_name
    #   The name of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The evaluation rule containing sampling configuration, filters, and
    #   session settings.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] data_source_config
    #   The data source configuration specifying CloudWatch log groups and
    #   service names to monitor.
    #   @return [Types::DataSourceConfig]
    #
    # @!attribute [rw] evaluators
    #   The list of evaluators applied during online evaluation.
    #   @return [Array<Types::EvaluatorReference>]
    #
    # @!attribute [rw] insights
    #   The list of insight types configured for this evaluation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] clustering_config
    #   The clustering configuration for periodic batch evaluation.
    #   @return [Types::ClusteringConfig]
    #
    # @!attribute [rw] output_config
    #   The output configuration specifying where evaluation results are
    #   written.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] evaluation_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used for evaluation
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The execution status indicating whether the online evaluation is
    #   currently running.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the online evaluation configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the online evaluation configuration was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the online evaluation configuration
    #   execution failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetOnlineEvaluationConfigResponse AWS API Documentation
    #
    class GetOnlineEvaluationConfigResponse < Struct.new(
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
      :failure_reason)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the parent payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The unique identifier of the payment connector to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentConnectorRequest AWS API Documentation
    #
    class GetPaymentConnectorRequest < Struct.new(
      :payment_manager_id,
      :payment_connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_connector_id
    #   The unique identifier of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the payment connector, which determines the payment
    #   provider integration.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The credential provider configurations for the payment connector.
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the payment connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the payment connector was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the payment connector. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `DELETING`, `CREATE_FAILED`,
    #   `UPDATE_FAILED`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentConnectorResponse AWS API Documentation
    #
    class GetPaymentConnectorResponse < Struct.new(
      :payment_connector_id,
      :name,
      :description,
      :type,
      :credential_provider_configurations,
      :created_at,
      :last_updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the payment credential provider to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentCredentialProviderRequest AWS API Documentation
    #
    class GetPaymentCredentialProviderRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor type for the payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration_output
    #   Output configuration (contains secret ARNs, excludes actual secret
    #   values).
    #   @return [Types::PaymentProviderConfigurationOutput]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the payment credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the payment credential provider was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags associated with the payment credential provider.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentCredentialProviderResponse AWS API Documentation
    #
    class GetPaymentCredentialProviderResponse < Struct.new(
      :name,
      :credential_provider_arn,
      :credential_provider_vendor,
      :provider_configuration_output,
      :created_time,
      :last_updated_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the payment manager to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentManagerRequest AWS API Documentation
    #
    class GetPaymentManagerRequest < Struct.new(
      :payment_manager_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_arn
    #   The Amazon Resource Name (ARN) of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer used by the payment manager.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM
    #     credentials.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   Represents inbound authorization configuration options used to
    #   authenticate incoming requests.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   payment manager.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_details
    #   The information about the workload identity.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the payment manager was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the payment manager was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the payment manager. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `DELETING`, `CREATE_FAILED`,
    #   `UPDATE_FAILED`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the payment manager.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPaymentManagerResponse AWS API Documentation
    #
    class GetPaymentManagerResponse < Struct.new(
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the policy engine to be retrieved. This
    #   must be a valid policy engine ID that exists within the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyEngineRequest AWS API Documentation
    #
    class GetPolicyEngineRequest < Struct.new(
      :policy_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the retrieved policy engine. This matches
    #   the policy engine ID provided in the request and serves as the
    #   system identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the policy engine. This is the
    #   human-readable identifier that was specified when the policy engine
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy engine was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy engine was last modified. This tracks
    #   the most recent changes to the policy engine configuration.
    #   @return [Time]
    #
    # @!attribute [rw] policy_engine_arn
    #   The Amazon Resource Name (ARN) of the policy engine. This globally
    #   unique identifier can be used for cross-service references and IAM
    #   policy statements.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The human-readable description of the policy engine's purpose and
    #   scope. This helps administrators understand the policy engine's
    #   role in governance.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the policy engine status. This provides
    #   details about any failures or the current state of the policy
    #   engine.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyEngineResponse AWS API Documentation
    #
    class GetPolicyEngineResponse < Struct.new(
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the policy engine to retrieve the summary
    #   for. This must be a valid policy engine ID that exists within the
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyEngineSummaryRequest AWS API Documentation
    #
    class GetPolicyEngineSummaryRequest < Struct.new(
      :policy_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy engine was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy engine was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] policy_engine_arn
    #   The Amazon Resource Name (ARN) of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyEngineSummaryResponse AWS API Documentation
    #
    class GetPolicyEngineSummaryResponse < Struct.new(
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_generation_id
    #   The unique identifier of the policy generation request to be
    #   retrieved. This must be a valid generation ID from a previous
    #   [StartPolicyGeneration][1] call.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_StartPolicyGeneration.html
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine associated with the policy
    #   generation request. This provides the context for the generation
    #   operation and schema validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyGenerationRequest AWS API Documentation
    #
    class GetPolicyGenerationRequest < Struct.new(
      :policy_generation_id,
      :policy_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine associated with this policy
    #   generation. This confirms the policy engine context for the
    #   generation operation.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_id
    #   The unique identifier of the policy generation request. This matches
    #   the generation ID provided in the request and serves as the tracking
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name for the policy generation request. This
    #   helps identify and track generation operations across multiple
    #   requests.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_arn
    #   The Amazon Resource Name (ARN) of the policy generation. This
    #   globally unique identifier can be used for tracking, auditing, and
    #   cross-service references.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource information associated with the policy generation. This
    #   provides context about the target resources for which the policies
    #   are being generated.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy generation request was created. This
    #   is used for tracking and auditing generation operations and their
    #   lifecycle.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy generation was last updated. This
    #   tracks the progress of the generation process and any status
    #   changes.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the policy generation. This indicates whether
    #   the generation is in progress, completed successfully, or failed
    #   during processing.
    #   @return [String]
    #
    # @!attribute [rw] findings
    #   The findings and results from the policy generation process. This
    #   includes any issues, recommendations, validation results, or
    #   insights from the generated policies.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the generation status. This provides
    #   details about any failures, warnings, or the current state of the
    #   generation process.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyGenerationResponse AWS API Documentation
    #
    class GetPolicyGenerationResponse < Struct.new(
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings,
      :status_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_generation_id
    #   The unique identifier of the policy generation request to retrieve
    #   the summary for.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine associated with the policy
    #   generation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyGenerationSummaryRequest AWS API Documentation
    #
    class GetPolicyGenerationSummaryRequest < Struct.new(
      :policy_generation_id,
      :policy_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine associated with this policy
    #   generation.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_id
    #   The unique identifier of the policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name for the policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_arn
    #   The Amazon Resource Name (ARN) of the policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource information associated with the policy generation.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy generation request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy generation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] findings
    #   The findings from the policy generation process, if available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyGenerationSummaryResponse AWS API Documentation
    #
    class GetPolicyGenerationSummaryResponse < Struct.new(
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages the policy to be
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The unique identifier of the policy to be retrieved. This must be a
    #   valid policy ID that exists within the specified policy engine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :policy_engine_id,
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The unique identifier of the retrieved policy. This matches the
    #   policy ID provided in the request and serves as the system
    #   identifier for the policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the policy. This is the human-readable
    #   identifier that was specified when the policy was created.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages this policy. This
    #   confirms the policy engine context for the retrieved policy.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy was last modified. This tracks the
    #   most recent changes to the policy configuration.
    #   @return [Time]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy. This globally unique
    #   identifier can be used for cross-service references and IAM policy
    #   statements.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The current enforcement mode of the policy.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Cedar policy statement that defines the access control rules.
    #   This contains the actual policy logic used for agent behavior
    #   control and access decisions.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] description
    #   The human-readable description of the policy's purpose and
    #   functionality. This helps administrators understand and manage the
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the policy status. This provides
    #   details about any failures or the current state of the policy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
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
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages the policy to
    #   retrieve the summary for.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The unique identifier of the policy to retrieve the summary for.
    #   This must be a valid policy ID that exists within the specified
    #   policy engine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicySummaryRequest AWS API Documentation
    #
    class GetPolicySummaryRequest < Struct.new(
      :policy_engine_id,
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The unique identifier of the policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages this policy.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The current enforcement mode of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetPolicySummaryResponse AWS API Documentation
    #
    class GetPolicySummaryResponse < Struct.new(
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record. You can
    #   specify either the Amazon Resource Name (ARN) or the ID of the
    #   registry.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to retrieve. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetRegistryRecordRequest AWS API Documentation
    #
    class GetRegistryRecordRequest < Struct.new(
      :registry_id,
      :record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry that contains the
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   The Amazon Resource Name (ARN) of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The unique identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] descriptor_type
    #   The descriptor type of the registry record. Possible values are
    #   `MCP`, `A2A`, `CUSTOM`, and `AGENT_SKILLS`.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The descriptor-type-specific configuration containing the resource
    #   schema and metadata. For details, see the `Descriptors` data type.
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] record_version
    #   The version of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the registry record. Possible values include
    #   `CREATING`, `DRAFT`, `APPROVED`, `PENDING_APPROVAL`, `REJECTED`,
    #   `DEPRECATED`, `UPDATING`, `CREATE_FAILED`, and `UPDATE_FAILED`. A
    #   record transitions from `CREATING` to `DRAFT`, then to
    #   `PENDING_APPROVAL` (via `SubmitRegistryRecordForApproval`), and
    #   finally to `APPROVED` upon approval.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry record was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry record was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status, typically set when the status is
    #   a failure state.
    #   @return [String]
    #
    # @!attribute [rw] synchronization_type
    #   The type of synchronization used for this record.
    #   @return [String]
    #
    # @!attribute [rw] synchronization_configuration
    #   The configuration for synchronizing registry record metadata from an
    #   external source.
    #   @return [Types::SynchronizationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetRegistryRecordResponse AWS API Documentation
    #
    class GetRegistryRecordResponse < Struct.new(
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
      :synchronization_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry to retrieve. You can specify either
    #   the Amazon Resource Name (ARN) or the ID of the registry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetRegistryRequest AWS API Documentation
    #
    class GetRegistryRequest < Struct.new(
      :registry_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The unique identifier of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer used by the registry. This controls the
    #   authorization method for the Search and Invoke APIs used by
    #   consumers.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM
    #     credentials.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the registry. For details, see the
    #   `AuthorizerConfiguration` data type.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] approval_configuration
    #   The approval configuration for registry records. For details, see
    #   the `ApprovalConfiguration` data type.
    #   @return [Types::ApprovalConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the registry. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `CREATE_FAILED`, `UPDATE_FAILED`,
    #   `DELETING`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status, typically set when the status is
    #   a failure state.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetRegistryResponse AWS API Documentation
    #
    class GetRegistryResponse < Struct.new(
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
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to retrieve
    #   the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource policy associated with the specified resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_vault_id
    #   The unique identifier of the token vault to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetTokenVaultRequest AWS API Documentation
    #
    class GetTokenVaultRequest < Struct.new(
      :token_vault_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_vault_id
    #   The ID of the token vault.
    #   @return [String]
    #
    # @!attribute [rw] kms_configuration
    #   The KMS configuration for the token vault.
    #   @return [Types::KmsConfiguration]
    #
    # @!attribute [rw] last_modified_date
    #   The timestamp when the token vault was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetTokenVaultResponse AWS API Documentation
    #
    class GetTokenVaultResponse < Struct.new(
      :token_vault_id,
      :kms_configuration,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workload identity to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetWorkloadIdentityRequest AWS API Documentation
    #
    class GetWorkloadIdentityRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workload identity.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_arn
    #   The Amazon Resource Name (ARN) of the workload identity.
    #   @return [String]
    #
    # @!attribute [rw] allowed_resource_oauth_2_return_urls
    #   The list of allowed OAuth2 return URLs for resources associated with
    #   this workload identity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the workload identity was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the workload identity was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetWorkloadIdentityResponse AWS API Documentation
    #
    class GetWorkloadIdentityResponse < Struct.new(
      :name,
      :workload_identity_arn,
      :allowed_resource_oauth_2_return_urls,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration for a GitHub OAuth2 provider.
    #
    # @!attribute [rw] client_id
    #   The client ID for the GitHub OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the GitHub OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GithubOauth2ProviderConfigInput AWS API Documentation
    #
    class GithubOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Output configuration for a GitHub OAuth2 provider.
    #
    # @!attribute [rw] oauth_discovery
    #   The OAuth2 discovery information for the GitHub provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the GitHub OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GithubOauth2ProviderConfigOutput AWS API Documentation
    #
    class GithubOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration for a Google OAuth2 provider.
    #
    # @!attribute [rw] client_id
    #   The client ID for the Google OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the Google OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GoogleOauth2ProviderConfigInput AWS API Documentation
    #
    class GoogleOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Output configuration for a Google OAuth2 provider.
    #
    # @!attribute [rw] oauth_discovery
    #   The OAuth2 discovery information for the Google provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the Google OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GoogleOauth2ProviderConfigOutput AWS API Documentation
    #
    class GoogleOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Representation of a harness.
    #
    # @!attribute [rw] harness_id
    #   The ID of the harness.
    #   @return [String]
    #
    # @!attribute [rw] harness_name
    #   The name of the harness.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the harness.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the harness.
    #   @return [String]
    #
    # @!attribute [rw] harness_version
    #   The version of the harness. Incremented on every successful
    #   UpdateHarness.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   IAM role the harness assumes when running.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The createdAt time of the harness.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The updatedAt time of the harness.
    #   @return [Time]
    #
    # @!attribute [rw] model
    #   The configuration of the default model used by the Harness.
    #   @return [Types::HarnessModelConfiguration]
    #
    # @!attribute [rw] system_prompt
    #   The system prompt of the harness.
    #   @return [Array<Types::HarnessSystemContentBlock>]
    #
    # @!attribute [rw] tools
    #   The tools of the harness.
    #   @return [Array<Types::HarnessTool>]
    #
    # @!attribute [rw] skills
    #   The skills of the harness.
    #   @return [Array<Types::HarnessSkill>]
    #
    # @!attribute [rw] allowed_tools
    #   The allowed tools of the harness. All tools are allowed by default.
    #   @return [Array<String>]
    #
    # @!attribute [rw] truncation
    #   Configuration for truncating model context.
    #   @return [Types::HarnessTruncationConfiguration]
    #
    # @!attribute [rw] environment
    #   The compute environment on which the Harness runs.
    #   @return [Types::HarnessEnvironmentProvider]
    #
    # @!attribute [rw] environment_artifact
    #   The environment artifact (e.g., container) in which the Harness
    #   operates.
    #   @return [Types::HarnessEnvironmentArtifact]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables exposed in the environment in which the
    #   harness operates.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authorizer_configuration
    #   Represents inbound authorization configuration options used to
    #   authenticate incoming requests.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] memory
    #   AgentCore Memory instance configuration for short and long term
    #   memory.
    #   @return [Types::HarnessMemoryConfiguration]
    #
    # @!attribute [rw] max_iterations
    #   The maximum number of iterations in the agent loop allowed before
    #   exiting per invocation.
    #   @return [Integer]
    #
    # @!attribute [rw] max_tokens
    #   The maximum total number of output tokens the agent can generate
    #   across all model calls within a single invocation.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_seconds
    #   The maximum duration per invocation.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_reason
    #   Reason why create or update operations fail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Harness AWS API Documentation
    #
    class Harness < Struct.new(
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
      :max_iterations,
      :max_tokens,
      :timeout_seconds,
      :failure_reason)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # Configuration for AgentCore Browser.
    #
    # @!attribute [rw] browser_arn
    #   If not populated, the built-in Browser ARN is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessAgentCoreBrowserConfig AWS API Documentation
    #
    class HarnessAgentCoreBrowserConfig < Struct.new(
      :browser_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for AgentCore Code Interpreter.
    #
    # @!attribute [rw] code_interpreter_arn
    #   If not populated, the built-in Code Interpreter ARN is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessAgentCoreCodeInterpreterConfig AWS API Documentation
    #
    class HarnessAgentCoreCodeInterpreterConfig < Struct.new(
      :code_interpreter_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for AgentCore Gateway.
    #
    # @!attribute [rw] gateway_arn
    #   The ARN of the desired AgentCore Gateway.
    #   @return [String]
    #
    # @!attribute [rw] outbound_auth
    #   How harness authenticates to this Gateway. Defaults to AWS\_IAM
    #   (SigV4) if omitted.
    #   @return [Types::HarnessGatewayOutboundAuth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessAgentCoreGatewayConfig AWS API Documentation
    #
    class HarnessAgentCoreGatewayConfig < Struct.new(
      :gateway_arn,
      :outbound_auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for AgentCore Memory integration.
    #
    # @!attribute [rw] arn
    #   The ARN of the AgentCore Memory resource.
    #   @return [String]
    #
    # @!attribute [rw] actor_id
    #   The actor ID for memory operations.
    #   @return [String]
    #
    # @!attribute [rw] messages_count
    #   The number of messages to retrieve from memory.
    #   @return [Integer]
    #
    # @!attribute [rw] retrieval_config
    #   The retrieval configuration for long-term memory, mapping namespace
    #   path templates to retrieval settings.
    #   @return [Hash<String,Types::HarnessAgentCoreMemoryRetrievalConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessAgentCoreMemoryConfiguration AWS API Documentation
    #
    class HarnessAgentCoreMemoryConfiguration < Struct.new(
      :arn,
      :actor_id,
      :messages_count,
      :retrieval_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for memory retrieval within a namespace.
    #
    # @!attribute [rw] top_k
    #   The maximum number of memory entries to retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] relevance_score
    #   The minimum relevance score for retrieved memories.
    #   @return [Float]
    #
    # @!attribute [rw] strategy_id
    #   The ID of the retrieval strategy to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessAgentCoreMemoryRetrievalConfig AWS API Documentation
    #
    class HarnessAgentCoreMemoryRetrievalConfig < Struct.new(
      :top_k,
      :relevance_score,
      :strategy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AgentCore Runtime environment for a harness.
    #
    # @!attribute [rw] agent_runtime_arn
    #   The ARN of the underlying AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_name
    #   The name of the underlying AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_id
    #   The ID of the underlying AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_configuration
    #   LifecycleConfiguration lets you manage the lifecycle of runtime
    #   sessions and resources in AgentCore Runtime. This configuration
    #   helps optimize resource utilization by automatically cleaning up
    #   idle sessions and preventing long-running instances from consuming
    #   resources indefinitely.
    #   @return [Types::LifecycleConfiguration]
    #
    # @!attribute [rw] network_configuration
    #   SecurityConfig for the Agent.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] filesystem_configurations
    #   The filesystem configurations for the runtime environment.
    #   @return [Array<Types::FilesystemConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessAgentCoreRuntimeEnvironment AWS API Documentation
    #
    class HarnessAgentCoreRuntimeEnvironment < Struct.new(
      :agent_runtime_arn,
      :agent_runtime_name,
      :agent_runtime_id,
      :lifecycle_configuration,
      :network_configuration,
      :filesystem_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AgentCore Runtime environment request configuration.
    #
    # @!attribute [rw] lifecycle_configuration
    #   LifecycleConfiguration lets you manage the lifecycle of runtime
    #   sessions and resources in AgentCore Runtime. This configuration
    #   helps optimize resource utilization by automatically cleaning up
    #   idle sessions and preventing long-running instances from consuming
    #   resources indefinitely.
    #   @return [Types::LifecycleConfiguration]
    #
    # @!attribute [rw] network_configuration
    #   SecurityConfig for the Agent.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] filesystem_configurations
    #   The filesystem configurations for the runtime environment.
    #   @return [Array<Types::FilesystemConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessAgentCoreRuntimeEnvironmentRequest AWS API Documentation
    #
    class HarnessAgentCoreRuntimeEnvironmentRequest < Struct.new(
      :lifecycle_configuration,
      :network_configuration,
      :filesystem_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for an Amazon Bedrock model provider.
    #
    # @!attribute [rw] model_id
    #   The Bedrock model ID.
    #   @return [String]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response per
    #   model call.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature to set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The topP set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] api_format
    #   The API format to use when calling the Bedrock provider.
    #   @return [String]
    #
    # @!attribute [rw] additional_params
    #   Provider-specific parameters passed through to the model provider
    #   unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessBedrockModelConfig AWS API Documentation
    #
    class HarnessBedrockModelConfig < Struct.new(
      :model_id,
      :max_tokens,
      :temperature,
      :top_p,
      :api_format,
      :additional_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Explicitly opt out of memory.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessDisabledMemoryConfiguration AWS API Documentation
    #
    class HarnessDisabledMemoryConfiguration < Aws::EmptyStructure; end

    # Representation of a harness endpoint. An endpoint is a named, stable
    # reference to a specific version of a harness that callers invoke,
    # allowing the underlying version to be updated without changing how the
    # agent is invoked.
    #
    # @!attribute [rw] harness_id
    #   The ID of the harness that the endpoint belongs to.
    #   @return [String]
    #
    # @!attribute [rw] harness_name
    #   The name of the harness that the endpoint belongs to.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the endpoint was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] live_version
    #   The harness version that the endpoint is currently serving.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The harness version that the endpoint points to. While an update is
    #   in progress, this can differ from the live version until the
    #   endpoint finishes transitioning.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason the endpoint's last create or update operation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessEndpoint AWS API Documentation
    #
    class HarnessEndpoint < Struct.new(
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
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The environment artifact for a harness, such as a container image
    # containing custom dependencies.
    #
    # @note HarnessEnvironmentArtifact is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HarnessEnvironmentArtifact is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessEnvironmentArtifact corresponding to the set member.
    #
    # @!attribute [rw] container_configuration
    #   Representation of a container configuration.
    #   @return [Types::ContainerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessEnvironmentArtifact AWS API Documentation
    #
    class HarnessEnvironmentArtifact < Struct.new(
      :container_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContainerConfiguration < HarnessEnvironmentArtifact; end
      class Unknown < HarnessEnvironmentArtifact; end
    end

    # The environment provider for a harness.
    #
    # @note HarnessEnvironmentProvider is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessEnvironmentProvider corresponding to the set member.
    #
    # @!attribute [rw] agent_core_runtime_environment
    #   The AgentCore Runtime environment configuration.
    #   @return [Types::HarnessAgentCoreRuntimeEnvironment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessEnvironmentProvider AWS API Documentation
    #
    class HarnessEnvironmentProvider < Struct.new(
      :agent_core_runtime_environment,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AgentCoreRuntimeEnvironment < HarnessEnvironmentProvider; end
      class Unknown < HarnessEnvironmentProvider; end
    end

    # The environment provider request configuration.
    #
    # @note HarnessEnvironmentProviderRequest is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] agent_core_runtime_environment
    #   The AgentCore Runtime environment configuration.
    #   @return [Types::HarnessAgentCoreRuntimeEnvironmentRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessEnvironmentProviderRequest AWS API Documentation
    #
    class HarnessEnvironmentProviderRequest < Struct.new(
      :agent_core_runtime_environment,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AgentCoreRuntimeEnvironment < HarnessEnvironmentProviderRequest; end
      class Unknown < HarnessEnvironmentProviderRequest; end
    end

    # Authentication method for calling a Gateway.
    #
    # @note HarnessGatewayOutboundAuth is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HarnessGatewayOutboundAuth is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessGatewayOutboundAuth corresponding to the set member.
    #
    # @!attribute [rw] aws_iam
    #   SigV4-sign requests using the agent's execution role.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] none
    #   No authentication.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] oauth
    #   Use OAuth credentials for outbound authentication to the gateway.
    #   @return [Types::OAuthCredentialProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessGatewayOutboundAuth AWS API Documentation
    #
    class HarnessGatewayOutboundAuth < Struct.new(
      :aws_iam,
      :none,
      :oauth,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsIam < HarnessGatewayOutboundAuth; end
      class None < HarnessGatewayOutboundAuth; end
      class Oauth < HarnessGatewayOutboundAuth; end
      class Unknown < HarnessGatewayOutboundAuth; end
    end

    # Configuration for a Google Gemini model provider. Requires an API key
    # stored in AgentCore Identity.
    #
    # @!attribute [rw] model_id
    #   The Gemini model ID.
    #   @return [String]
    #
    # @!attribute [rw] api_key_arn
    #   The ARN of your Gemini API key on AgentCore Identity.
    #   @return [String]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response per
    #   model call.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature to set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The topP set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_k
    #   The topK set when calling the model.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_params
    #   Provider-specific parameters passed through to the Gemini model
    #   provider unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessGeminiModelConfig AWS API Documentation
    #
    class HarnessGeminiModelConfig < Struct.new(
      :model_id,
      :api_key_arn,
      :max_tokens,
      :temperature,
      :top_p,
      :top_k,
      :additional_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for an inline function tool. When the agent calls this
    # tool, the tool call is returned to the caller for external execution.
    #
    # @!attribute [rw] description
    #   Description of what the tool does, provided to the model.
    #   @return [String]
    #
    # @!attribute [rw] input_schema
    #   JSON Schema describing the tool's input parameters.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessInlineFunctionConfig AWS API Documentation
    #
    class HarnessInlineFunctionConfig < Struct.new(
      :description,
      :input_schema)
      SENSITIVE = [:description, :input_schema]
      include Aws::Structure
    end

    # Configuration for a LiteLLM model provider, enabling connection to
    # third-party model providers.
    #
    # @!attribute [rw] model_id
    #   The LiteLLM model identifier (e.g., "anthropic/claude-3-sonnet").
    #   @return [String]
    #
    # @!attribute [rw] api_key_arn
    #   The ARN of the API key in AgentCore Identity for authenticating with
    #   the model provider.
    #   @return [String]
    #
    # @!attribute [rw] api_base
    #   The base URL for the model provider's API endpoint.
    #   @return [String]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response per
    #   iteration.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature to set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The topP set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] additional_params
    #   Provider-specific parameters passed through to the model provider
    #   unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessLiteLlmModelConfig AWS API Documentation
    #
    class HarnessLiteLlmModelConfig < Struct.new(
      :model_id,
      :api_key_arn,
      :api_base,
      :max_tokens,
      :temperature,
      :top_p,
      :additional_params)
      SENSITIVE = [:api_base]
      include Aws::Structure
    end

    # Configuration for managed memory creation.
    #
    # @!attribute [rw] arn
    #   The ARN of the managed AgentCore Memory resource. Read-only on Get,
    #   ignored on Create/Update input.
    #   @return [String]
    #
    # @!attribute [rw] strategies
    #   Strategy types to enable. Defaults to \[SEMANTIC, SUMMARIZATION\].
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_expiry_duration
    #   Event retention in days. Defaults to 30.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key_arn
    #   Customer-managed KMS key. Defaults to AWS-owned key. Not updatable
    #   after creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessManagedMemoryConfiguration AWS API Documentation
    #
    class HarnessManagedMemoryConfiguration < Struct.new(
      :arn,
      :strategies,
      :event_expiry_duration,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The memory configuration for a harness.
    #
    # @note HarnessMemoryConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HarnessMemoryConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessMemoryConfiguration corresponding to the set member.
    #
    # @!attribute [rw] agent_core_memory_configuration
    #   The AgentCore Memory configuration.
    #   @return [Types::HarnessAgentCoreMemoryConfiguration]
    #
    # @!attribute [rw] managed_memory_configuration
    #   Harness creates and manages a memory resource in the customer's
    #   account.
    #   @return [Types::HarnessManagedMemoryConfiguration]
    #
    # @!attribute [rw] disabled
    #   Explicitly opt out of memory.
    #   @return [Types::HarnessDisabledMemoryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessMemoryConfiguration AWS API Documentation
    #
    class HarnessMemoryConfiguration < Struct.new(
      :agent_core_memory_configuration,
      :managed_memory_configuration,
      :disabled,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AgentCoreMemoryConfiguration < HarnessMemoryConfiguration; end
      class ManagedMemoryConfiguration < HarnessMemoryConfiguration; end
      class Disabled < HarnessMemoryConfiguration; end
      class Unknown < HarnessMemoryConfiguration; end
    end

    # Specification of which model to use.
    #
    # @note HarnessModelConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HarnessModelConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessModelConfiguration corresponding to the set member.
    #
    # @!attribute [rw] bedrock_model_config
    #   Configuration for an Amazon Bedrock model.
    #   @return [Types::HarnessBedrockModelConfig]
    #
    # @!attribute [rw] open_ai_model_config
    #   Configuration for an OpenAI model.
    #   @return [Types::HarnessOpenAiModelConfig]
    #
    # @!attribute [rw] gemini_model_config
    #   Configuration for a Google Gemini model.
    #   @return [Types::HarnessGeminiModelConfig]
    #
    # @!attribute [rw] lite_llm_model_config
    #   The LiteLLM model configuration for connecting to third-party model
    #   providers.
    #   @return [Types::HarnessLiteLlmModelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessModelConfiguration AWS API Documentation
    #
    class HarnessModelConfiguration < Struct.new(
      :bedrock_model_config,
      :open_ai_model_config,
      :gemini_model_config,
      :lite_llm_model_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BedrockModelConfig < HarnessModelConfiguration; end
      class OpenAiModelConfig < HarnessModelConfiguration; end
      class GeminiModelConfig < HarnessModelConfiguration; end
      class LiteLlmModelConfig < HarnessModelConfiguration; end
      class Unknown < HarnessModelConfiguration; end
    end

    # Configuration for an OpenAI model provider. Requires an API key stored
    # in AgentCore Identity.
    #
    # @!attribute [rw] model_id
    #   The OpenAI model ID.
    #   @return [String]
    #
    # @!attribute [rw] api_key_arn
    #   The ARN of your OpenAI API key on AgentCore Identity.
    #   @return [String]
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to allow in the generated response per
    #   model call.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature to set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The topP set when calling the model.
    #   @return [Float]
    #
    # @!attribute [rw] api_format
    #   The API format to use when calling the OpenAI provider.
    #   @return [String]
    #
    # @!attribute [rw] additional_params
    #   Provider-specific parameters passed through to the model provider
    #   unchanged.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessOpenAiModelConfig AWS API Documentation
    #
    class HarnessOpenAiModelConfig < Struct.new(
      :model_id,
      :api_key_arn,
      :max_tokens,
      :temperature,
      :top_p,
      :api_format,
      :additional_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for connecting to a remote MCP server.
    #
    # @!attribute [rw] url
    #   URL of the MCP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   Custom headers to include when connecting to the remote MCP server.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessRemoteMcpConfig AWS API Documentation
    #
    class HarnessRemoteMcpConfig < Struct.new(
      :url,
      :headers)
      SENSITIVE = [:url, :headers]
      include Aws::Structure
    end

    # A skill available to the agent.
    #
    # @note HarnessSkill is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HarnessSkill is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessSkill corresponding to the set member.
    #
    # @!attribute [rw] path
    #   The filesystem path to the skill definition.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   An S3 source containing the skill.
    #   @return [Types::HarnessSkillS3Source]
    #
    # @!attribute [rw] git
    #   A git repository containing the skill.
    #   @return [Types::HarnessSkillGitSource]
    #
    # @!attribute [rw] aws_skills
    #   AWS Skills baked into the harness's underlying Runtime.
    #   @return [Types::HarnessSkillAwsSkillsSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSkill AWS API Documentation
    #
    class HarnessSkill < Struct.new(
      :path,
      :s3,
      :git,
      :aws_skills,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Path < HarnessSkill; end
      class S3 < HarnessSkill; end
      class Git < HarnessSkill; end
      class AwsSkills < HarnessSkill; end
      class Unknown < HarnessSkill; end
    end

    # Passed to show that AWS Skills should be included.
    #
    # @!attribute [rw] paths
    #   Optionally filter allowed skills with glob syntax, e.g.,
    #   \['core-skills/*'\].
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSkillAwsSkillsSource AWS API Documentation
    #
    class HarnessSkillAwsSkillsSource < Struct.new(
      :paths)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authentication configuration for accessing a private git repository.
    #
    # @!attribute [rw] credential_arn
    #   The ARN of the credential in AgentCore Identity containing the
    #   password or personal access token.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Username for authentication. Defaults to 'oauth2' if not
    #   specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSkillGitAuth AWS API Documentation
    #
    class HarnessSkillGitAuth < Struct.new(
      :credential_arn,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # A git repository source for a skill.
    #
    # @!attribute [rw] url
    #   The HTTPS URL of the git repository.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   Subdirectory within the repository containing the skill.
    #   @return [String]
    #
    # @!attribute [rw] auth
    #   Authentication configuration for private repositories.
    #   @return [Types::HarnessSkillGitAuth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSkillGitSource AWS API Documentation
    #
    class HarnessSkillGitSource < Struct.new(
      :url,
      :path,
      :auth)
      SENSITIVE = []
      include Aws::Structure
    end

    # An S3 source for a skill.
    #
    # @!attribute [rw] uri
    #   The S3 URI pointing to the skill directory (e.g.,
    #   s3://bucket/skills/my-skill/).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSkillS3Source AWS API Documentation
    #
    class HarnessSkillS3Source < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for sliding window truncation strategy.
    #
    # @!attribute [rw] messages_count
    #   The number of recent messages to retain in the context window.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSlidingWindowConfiguration AWS API Documentation
    #
    class HarnessSlidingWindowConfiguration < Struct.new(
      :messages_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for summarization-based truncation strategy.
    #
    # @!attribute [rw] summary_ratio
    #   The ratio of content to summarize.
    #   @return [Float]
    #
    # @!attribute [rw] preserve_recent_messages
    #   The number of recent messages to preserve without summarization.
    #   @return [Integer]
    #
    # @!attribute [rw] summarization_system_prompt
    #   The system prompt used for generating summaries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSummarizationConfiguration AWS API Documentation
    #
    class HarnessSummarizationConfiguration < Struct.new(
      :summary_ratio,
      :preserve_recent_messages,
      :summarization_system_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a harness.
    #
    # @!attribute [rw] harness_id
    #   The ID of the harness.
    #   @return [String]
    #
    # @!attribute [rw] harness_name
    #   The name of the harness.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the harness.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the harness.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the harness was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the harness was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] harness_version
    #   The latest version of the harness.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSummary AWS API Documentation
    #
    class HarnessSummary < Struct.new(
      :harness_id,
      :harness_name,
      :arn,
      :status,
      :created_at,
      :updated_at,
      :harness_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A content block in the system prompt.
    #
    # @note HarnessSystemContentBlock is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HarnessSystemContentBlock is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessSystemContentBlock corresponding to the set member.
    #
    # @!attribute [rw] text
    #   The text content of the system prompt block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessSystemContentBlock AWS API Documentation
    #
    class HarnessSystemContentBlock < Struct.new(
      :text,
      :unknown)
      SENSITIVE = [:text]
      include Aws::Structure
      include Aws::Structure::Union

      class Text < HarnessSystemContentBlock; end
      class Unknown < HarnessSystemContentBlock; end
    end

    # A tool available to the agent loop.
    #
    # @!attribute [rw] type
    #   The type of tool.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Unique name for the tool. If not provided, a name will be inferred
    #   or generated.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   Tool-specific configuration.
    #   @return [Types::HarnessToolConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessTool AWS API Documentation
    #
    class HarnessTool < Struct.new(
      :type,
      :name,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration union for different tool types.
    #
    # @note HarnessToolConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HarnessToolConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessToolConfiguration corresponding to the set member.
    #
    # @!attribute [rw] remote_mcp
    #   Configuration for remote MCP server.
    #   @return [Types::HarnessRemoteMcpConfig]
    #
    # @!attribute [rw] agent_core_browser
    #   Configuration for AgentCore Browser.
    #   @return [Types::HarnessAgentCoreBrowserConfig]
    #
    # @!attribute [rw] agent_core_gateway
    #   Configuration for AgentCore Gateway.
    #   @return [Types::HarnessAgentCoreGatewayConfig]
    #
    # @!attribute [rw] inline_function
    #   Configuration for an inline function tool.
    #   @return [Types::HarnessInlineFunctionConfig]
    #
    # @!attribute [rw] agent_core_code_interpreter
    #   Configuration for AgentCore Code Interpreter.
    #   @return [Types::HarnessAgentCoreCodeInterpreterConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessToolConfiguration AWS API Documentation
    #
    class HarnessToolConfiguration < Struct.new(
      :remote_mcp,
      :agent_core_browser,
      :agent_core_gateway,
      :inline_function,
      :agent_core_code_interpreter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RemoteMcp < HarnessToolConfiguration; end
      class AgentCoreBrowser < HarnessToolConfiguration; end
      class AgentCoreGateway < HarnessToolConfiguration; end
      class InlineFunction < HarnessToolConfiguration; end
      class AgentCoreCodeInterpreter < HarnessToolConfiguration; end
      class Unknown < HarnessToolConfiguration; end
    end

    # Configuration for truncating conversation context when it exceeds
    # model limits.
    #
    # @!attribute [rw] strategy
    #   The truncation strategy to use.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The strategy-specific configuration.
    #   @return [Types::HarnessTruncationStrategyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessTruncationConfiguration AWS API Documentation
    #
    class HarnessTruncationConfiguration < Struct.new(
      :strategy,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Strategy-specific truncation configuration.
    #
    # @note HarnessTruncationStrategyConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HarnessTruncationStrategyConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HarnessTruncationStrategyConfiguration corresponding to the set member.
    #
    # @!attribute [rw] sliding_window
    #   Configuration for sliding window truncation.
    #   @return [Types::HarnessSlidingWindowConfiguration]
    #
    # @!attribute [rw] summarization
    #   Configuration for summarization-based truncation.
    #   @return [Types::HarnessSummarizationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessTruncationStrategyConfiguration AWS API Documentation
    #
    class HarnessTruncationStrategyConfiguration < Struct.new(
      :sliding_window,
      :summarization,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SlidingWindow < HarnessTruncationStrategyConfiguration; end
      class Summarization < HarnessTruncationStrategyConfiguration; end
      class Unknown < HarnessTruncationStrategyConfiguration; end
    end

    # Summary information about a single version of a harness.
    #
    # @!attribute [rw] harness_id
    #   The ID of the harness.
    #   @return [String]
    #
    # @!attribute [rw] harness_name
    #   The name of the harness.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the harness.
    #   @return [String]
    #
    # @!attribute [rw] harness_version
    #   The version of the harness that this summary describes.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this harness version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when this harness version was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when this harness version was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   Reason why the create or update operation for this harness version
    #   failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HarnessVersionSummary AWS API Documentation
    #
    class HarnessVersionSummary < Struct.new(
      :harness_id,
      :harness_name,
      :arn,
      :harness_version,
      :status,
      :created_at,
      :updated_at,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A hosting environment whose workloads are allowed to invoke the
    # target. At launch, the only supported hosting environment is AgentCore
    # Gateway.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the hosting environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HostingEnvironment AWS API Documentation
    #
    class HostingEnvironment < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API schema configuration for an HTTP target. This schema defines
    # the API structure that the target exposes.
    #
    # @!attribute [rw] source
    #   Configuration for API schema.
    #   @return [Types::ApiSchemaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HttpApiSchemaConfiguration AWS API Documentation
    #
    class HttpApiSchemaConfiguration < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The HTTP target configuration for a gateway target. Contains the
    # configuration for HTTP-based target endpoints.
    #
    # @note HttpTargetConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note HttpTargetConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of HttpTargetConfiguration corresponding to the set member.
    #
    # @!attribute [rw] agentcore_runtime
    #   The AgentCore Runtime target configuration for HTTP-based
    #   communication with an agent runtime.
    #   @return [Types::RuntimeTargetConfiguration]
    #
    # @!attribute [rw] passthrough
    #   The passthrough configuration for the HTTP target. A passthrough
    #   target forwards requests directly to an external HTTP endpoint.
    #   @return [Types::PassthroughTargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/HttpTargetConfiguration AWS API Documentation
    #
    class HttpTargetConfiguration < Struct.new(
      :agentcore_runtime,
      :passthrough,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AgentcoreRuntime < HttpTargetConfiguration; end
      class Passthrough < HttpTargetConfiguration; end
      class Unknown < HttpTargetConfiguration; end
    end

    # An IAM credential provider for gateway authentication. This structure
    # contains the configuration for authenticating with the target endpoint
    # using IAM credentials and SigV4 signing.
    #
    # @!attribute [rw] service
    #   The target Amazon Web Services service name used for SigV4 signing.
    #   This value identifies the service that the gateway authenticates
    #   with when making requests to the target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region used for SigV4 signing. If not
    #   specified, defaults to the gateway's Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/IamCredentialProvider AWS API Documentation
    #
    class IamCredentialProvider < Struct.new(
      :service,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IAM principal specification for rule matching.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the IAM principal. Supports user,
    #   role, and assumed-role ARNs. Wildcards can be used with the
    #   `StringLike` operator.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The match operator. `StringEquals` requires an exact match.
    #   `StringLike` supports wildcard patterns using `*` and `?`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/IamPrincipal AWS API Documentation
    #
    class IamPrincipal < Struct.new(
      :arn,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for connecting to a supported OAuth2 provider.
    # This includes client credentials and OAuth2 discovery information for
    # providers that have built-in support.
    #
    # @!attribute [rw] client_id
    #   The client ID for the supported OAuth2 provider. This identifier is
    #   assigned by the OAuth2 provider when you register your application.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the supported OAuth2 provider. This secret is
    #   assigned by the OAuth2 provider and used along with the client ID to
    #   authenticate your application.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   Token issuer of your isolated OAuth2 application tenant. This URL
    #   identifies the authorization server that issues tokens for this
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] authorization_endpoint
    #   OAuth2 authorization endpoint for your isolated OAuth2 application
    #   tenant. This is where users are redirected to authenticate and
    #   authorize access to their resources.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint
    #   OAuth2 token endpoint for your isolated OAuth2 application tenant.
    #   This is where authorization codes are exchanged for access tokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/IncludedOauth2ProviderConfigInput AWS API Documentation
    #
    class IncludedOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      :issuer,
      :authorization_endpoint,
      :token_endpoint)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # The configuration details returned for a supported OAuth2 provider,
    # including client credentials and OAuth2 discovery information.
    #
    # @!attribute [rw] oauth_discovery
    #   Contains the discovery information for an OAuth2 provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the supported OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/IncludedOauth2ProviderConfigOutput AWS API Documentation
    #
    class IncludedOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metadata key indexed for filtering.
    #
    # @!attribute [rw] key
    #   The metadata key name to index.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the indexed key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/IndexedKey AWS API Documentation
    #
    class IndexedKey < Struct.new(
      :key,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration parameters that control how the foundation model
    # behaves during evaluation, including response generation settings.
    #
    # @!attribute [rw] max_tokens
    #   The maximum number of tokens to generate in the model response
    #   during evaluation.
    #   @return [Integer]
    #
    # @!attribute [rw] temperature
    #   The temperature value that controls randomness in the model's
    #   responses. Lower values produce more deterministic outputs.
    #   @return [Float]
    #
    # @!attribute [rw] top_p
    #   The top-p sampling parameter that controls the diversity of the
    #   model's responses by limiting the cumulative probability of token
    #   choices.
    #   @return [Float]
    #
    # @!attribute [rw] stop_sequences
    #   The list of sequences that will cause the model to stop generating
    #   tokens when encountered.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InferenceConfiguration AWS API Documentation
    #
    class InferenceConfiguration < Struct.new(
      :max_tokens,
      :temperature,
      :top_p,
      :stop_sequences)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source identifying the inference connector.
    #
    # @!attribute [rw] connector_id
    #   The identifier for the inference connector (for example,
    #   `bedrock-mantle`, `openai`, or `anthropic`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InferenceConnectorSource AWS API Documentation
    #
    class InferenceConnectorSource < Struct.new(
      :connector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a connector-based inference target. This
    # configuration uses a built-in connector that provides predefined rules
    # for a large language model (LLM) provider.
    #
    # @!attribute [rw] source
    #   The source configuration identifying which inference connector to
    #   use.
    #   @return [Types::InferenceConnectorSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InferenceConnectorTargetConfiguration AWS API Documentation
    #
    class InferenceConnectorTargetConfiguration < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a specific inference operation, including its
    # request path and the models that the operation supports.
    #
    # @!attribute [rw] path
    #   The request path for this operation (for example, `/v1/messages` or
    #   `/v1/responses`).
    #   @return [String]
    #
    # @!attribute [rw] provider_path
    #   The provider path to forward requests to, if it differs from the
    #   request path. For example, `/anthropic/v1/messages` when the
    #   provider expects a different path than the client-facing
    #   `/v1/messages`.
    #   @return [String]
    #
    # @!attribute [rw] models
    #   The list of models supported for this operation.
    #   @return [Array<Types::ModelEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InferenceOperationConfiguration AWS API Documentation
    #
    class InferenceOperationConfiguration < Struct.new(
      :path,
      :provider_path,
      :models)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a provider-based inference target. This
    # configuration explicitly defines the endpoint, model mapping, and
    # operations used to route requests to a large language model (LLM)
    # provider.
    #
    # @!attribute [rw] endpoint
    #   The HTTPS endpoint of the inference provider that the gateway
    #   forwards requests to.
    #   @return [String]
    #
    # @!attribute [rw] model_mapping
    #   The configuration that translates client-facing model IDs to the
    #   model IDs expected by the provider.
    #   @return [Types::ModelMapping]
    #
    # @!attribute [rw] operations
    #   A list of per-operation configurations that map request paths to the
    #   models supported for each operation.
    #   @return [Array<Types::InferenceOperationConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InferenceProviderTargetConfiguration AWS API Documentation
    #
    class InferenceProviderTargetConfiguration < Struct.new(
      :endpoint,
      :model_mapping,
      :operations)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an inference target. An inference target routes
    # requests to a large language model (LLM) provider, either through a
    # built-in connector or an explicitly configured provider.
    #
    # @note InferenceTargetConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note InferenceTargetConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InferenceTargetConfiguration corresponding to the set member.
    #
    # @!attribute [rw] connector
    #   The connector-based inference configuration. Use this option to
    #   route requests to an LLM provider through a built-in connector that
    #   includes predefined provider rules.
    #   @return [Types::InferenceConnectorTargetConfiguration]
    #
    # @!attribute [rw] provider
    #   The provider-based inference configuration. Use this option to
    #   explicitly configure the endpoint, model mapping, and operations for
    #   an LLM provider.
    #   @return [Types::InferenceProviderTargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InferenceTargetConfiguration AWS API Documentation
    #
    class InferenceTargetConfiguration < Struct.new(
      :connector,
      :provider,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Connector < InferenceTargetConfiguration; end
      class Provider < InferenceTargetConfiguration; end
      class Unknown < InferenceTargetConfiguration; end
    end

    # Inline examples provided directly in the request body.
    #
    # @!attribute [rw] examples
    #   Examples to add. Each example is assigned an auto-generated UUID.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InlineExamplesSource AWS API Documentation
    #
    class InlineExamplesSource < Struct.new(
      :examples)
      SENSITIVE = [:examples]
      include Aws::Structure
    end

    # A reference to an insight analysis to run against sessions during
    # evaluation. Insights provide deeper analysis beyond individual
    # evaluator scores, including failure detection, user intent clustering,
    # and execution summarization.
    #
    # @!attribute [rw] insight_id
    #   The unique identifier of the insight to run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Insight AWS API Documentation
    #
    class Insight < Struct.new(
      :insight_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The interceptor configuration.
    #
    # @note InterceptorConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note InterceptorConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InterceptorConfiguration corresponding to the set member.
    #
    # @!attribute [rw] lambda
    #   The details of the lambda function used for the interceptor.
    #   @return [Types::LambdaInterceptorConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InterceptorConfiguration AWS API Documentation
    #
    class InterceptorConfiguration < Struct.new(
      :lambda,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Lambda < InterceptorConfiguration; end
      class Unknown < InterceptorConfiguration; end
    end

    # The input configuration of the interceptor.
    #
    # @!attribute [rw] pass_request_headers
    #   Indicates whether to pass request headers as input into the
    #   interceptor. When set to true, request headers will be passed.
    #   @return [Boolean]
    #
    # @!attribute [rw] payload_filter
    #   The filter that determines which parts of the request or response
    #   payload are passed as input to the interceptor.
    #   @return [Types::InterceptorPayloadFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InterceptorInputConfiguration AWS API Documentation
    #
    class InterceptorInputConfiguration < Struct.new(
      :pass_request_headers,
      :payload_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # A selector that identifies a payload field to exclude from the
    # interceptor input.
    #
    # @note InterceptorPayloadExclusionSelector is a union - when making an API calls you must set exactly one of the members.
    #
    # @note InterceptorPayloadExclusionSelector is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InterceptorPayloadExclusionSelector corresponding to the set member.
    #
    # @!attribute [rw] field
    #   The field to exclude from the interceptor input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InterceptorPayloadExclusionSelector AWS API Documentation
    #
    class InterceptorPayloadExclusionSelector < Struct.new(
      :field,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Field < InterceptorPayloadExclusionSelector; end
      class Unknown < InterceptorPayloadExclusionSelector; end
    end

    # The filter that controls which fields of the request or response
    # payload are included in the input to the interceptor.
    #
    # @!attribute [rw] exclude
    #   The list of selectors that identify payload fields to exclude from
    #   the interceptor input.
    #   @return [Array<Types::InterceptorPayloadExclusionSelector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InterceptorPayloadFilter AWS API Documentation
    #
    class InterceptorPayloadFilter < Struct.new(
      :exclude)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown if there was an unexpected error during
    # processing of request
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration to invoke a self-managed memory processing pipeline
    # with.
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the SNS topic for job notifications.
    #   @return [String]
    #
    # @!attribute [rw] payload_delivery_bucket_name
    #   The S3 bucket name for event payload delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InvocationConfiguration AWS API Documentation
    #
    class InvocationConfiguration < Struct.new(
      :topic_arn,
      :payload_delivery_bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration to invoke a self-managed memory processing pipeline
    # with.
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the SNS topic for job notifications.
    #   @return [String]
    #
    # @!attribute [rw] payload_delivery_bucket_name
    #   The S3 bucket name for event payload delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InvocationConfigurationInput AWS API Documentation
    #
    class InvocationConfigurationInput < Struct.new(
      :topic_arn,
      :payload_delivery_bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Kinesis Data Stream delivery.
    #
    # @!attribute [rw] data_stream_arn
    #   ARN of the Kinesis Data Stream.
    #   @return [String]
    #
    # @!attribute [rw] content_configurations
    #   Content configurations for stream delivery.
    #   @return [Array<Types::ContentConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/KinesisResource AWS API Documentation
    #
    class KinesisResource < Struct.new(
      :data_stream_arn,
      :content_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the KMS configuration for a resource.
    #
    # @!attribute [rw] key_type
    #   The type of KMS key (CustomerManagedKey or ServiceManagedKey).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/KmsConfiguration AWS API Documentation
    #
    class KmsConfiguration < Struct.new(
      :key_type,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a Lambda function used as a code-based evaluator.
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function that
    #   implements the evaluation logic.
    #   @return [String]
    #
    # @!attribute [rw] lambda_timeout_in_seconds
    #   The timeout in seconds for the Lambda function invocation. Defaults
    #   to 60. Must be between 1 and 300.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LambdaEvaluatorConfig AWS API Documentation
    #
    class LambdaEvaluatorConfig < Struct.new(
      :lambda_arn,
      :lambda_timeout_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The lambda configuration for the interceptor
    #
    # @!attribute [rw] arn
    #   The arn of the lambda function to be invoked for the interceptor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LambdaInterceptorConfiguration AWS API Documentation
    #
    class LambdaInterceptorConfiguration < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda configuration for custom transformations. This structure
    # defines the Lambda function that the gateway invokes to transform
    # data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Lambda function. This function
    #   is invoked by the gateway to transform data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LambdaTransformConfiguration AWS API Documentation
    #
    class LambdaTransformConfiguration < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # LifecycleConfiguration lets you manage the lifecycle of runtime
    # sessions and resources in AgentCore Runtime. This configuration helps
    # optimize resource utilization by automatically cleaning up idle
    # sessions and preventing long-running instances from consuming
    # resources indefinitely.
    #
    # @!attribute [rw] idle_runtime_session_timeout
    #   Timeout in seconds for idle runtime sessions. When a session remains
    #   idle for this duration, it will be automatically terminated.
    #   Default: 900 seconds (15 minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] max_lifetime
    #   Maximum lifetime for the instance in seconds. Once reached,
    #   instances will be automatically terminated and replaced. Default:
    #   28800 seconds (8 hours).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LifecycleConfiguration AWS API Documentation
    #
    class LifecycleConfiguration < Struct.new(
      :idle_runtime_session_timeout,
      :max_lifetime)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for connecting to LinkedIn services using
    # OAuth2 authentication. This includes the client credentials required
    # to authenticate with LinkedIn's OAuth2 authorization server.
    #
    # @!attribute [rw] client_id
    #   The client ID for the LinkedIn OAuth2 provider. This identifier is
    #   assigned by LinkedIn when you register your application.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the LinkedIn OAuth2 provider. This secret is
    #   assigned by LinkedIn and used along with the client ID to
    #   authenticate your application.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LinkedinOauth2ProviderConfigInput AWS API Documentation
    #
    class LinkedinOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # The configuration details returned for a LinkedIn OAuth2 provider,
    # including the client ID and OAuth2 discovery information.
    #
    # @!attribute [rw] oauth_discovery
    #   Contains the discovery information for an OAuth2 provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the LinkedIn OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LinkedinOauth2ProviderConfigOutput AWS API Documentation
    #
    class LinkedinOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to list endpoints
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimeEndpointsRequest AWS API Documentation
    #
    class ListAgentRuntimeEndpointsRequest < Struct.new(
      :agent_runtime_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime_endpoints
    #   The list of AgentCore Runtime endpoints.
    #   @return [Array<Types::AgentRuntimeEndpoint>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimeEndpointsResponse AWS API Documentation
    #
    class ListAgentRuntimeEndpointsResponse < Struct.new(
      :runtime_endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to list versions for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimeVersionsRequest AWS API Documentation
    #
    class ListAgentRuntimeVersionsRequest < Struct.new(
      :agent_runtime_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtimes
    #   The list of AgentCore Runtime versions.
    #   @return [Array<Types::AgentRuntime>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimeVersionsResponse AWS API Documentation
    #
    class ListAgentRuntimeVersionsResponse < Struct.new(
      :agent_runtimes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimesRequest AWS API Documentation
    #
    class ListAgentRuntimesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtimes
    #   The list of AgentCore Runtime resources.
    #   @return [Array<Types::AgentRuntime>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListAgentRuntimesResponse AWS API Documentation
    #
    class ListAgentRuntimesResponse < Struct.new(
      :agent_runtimes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListApiKeyCredentialProvidersRequest AWS API Documentation
    #
    class ListApiKeyCredentialProvidersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credential_providers
    #   The list of API key credential providers.
    #   @return [Array<Types::ApiKeyCredentialProviderItem>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListApiKeyCredentialProvidersResponse AWS API Documentation
    #
    class ListApiKeyCredentialProvidersResponse < Struct.new(
      :credential_providers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the browser profile to filter results by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListBrowserProfilesRequest AWS API Documentation
    #
    class ListBrowserProfilesRequest < Struct.new(
      :max_results,
      :next_token,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_summaries
    #   The list of browser profile summaries.
    #   @return [Array<Types::BrowserProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListBrowserProfilesResponse AWS API Documentation
    #
    class ListBrowserProfilesResponse < Struct.new(
      :profile_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 10. The maximum value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of browsers to list. If not specified, all browser types
    #   are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListBrowsersRequest AWS API Documentation
    #
    class ListBrowsersRequest < Struct.new(
      :max_results,
      :next_token,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] browser_summaries
    #   The list of browser summaries.
    #   @return [Array<Types::BrowserSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListBrowsersResponse AWS API Documentation
    #
    class ListBrowsersResponse < Struct.new(
      :browser_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of code interpreters to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListCodeInterpretersRequest AWS API Documentation
    #
    class ListCodeInterpretersRequest < Struct.new(
      :max_results,
      :next_token,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code_interpreter_summaries
    #   The list of code interpreter summaries.
    #   @return [Array<Types::CodeInterpreterSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListCodeInterpretersResponse AWS API Documentation
    #
    class ListCodeInterpretersResponse < Struct.new(
      :code_interpreter_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle to list versions
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   An optional filter for listing versions, including branch name,
    #   creation source, and whether to return only the latest version per
    #   branch.
    #   @return [Types::VersionFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListConfigurationBundleVersionsRequest AWS API Documentation
    #
    class ListConfigurationBundleVersionsRequest < Struct.new(
      :bundle_id,
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] versions
    #   The list of configuration bundle version summaries.
    #   @return [Array<Types::ConfigurationBundleVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListConfigurationBundleVersionsResponse AWS API Documentation
    #
    class ListConfigurationBundleVersionsResponse < Struct.new(
      :versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListConfigurationBundlesRequest AWS API Documentation
    #
    class ListConfigurationBundlesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bundles
    #   The list of configuration bundle summaries.
    #   @return [Array<Types::ConfigurationBundleSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListConfigurationBundlesResponse AWS API Documentation
    #
    class ListConfigurationBundlesResponse < Struct.new(
      :bundles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_version
    #   Version to paginate: "DRAFT" or a version number. Defaults to
    #   DRAFT if absent. Only used on the first request; for subsequent
    #   pages, the version is extracted from the pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of examples to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasetExamplesRequest AWS API Documentation
    #
    class ListDatasetExamplesRequest < Struct.new(
      :dataset_id,
      :dataset_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_version
    #   The version returned.
    #   @return [String]
    #
    # @!attribute [rw] examples
    #   Paginated example content. Each element is a JSON object containing
    #   at least an `exampleId` field plus the schema-specific content
    #   fields.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasetExamplesResponse AWS API Documentation
    #
    class ListDatasetExamplesResponse < Struct.new(
      :dataset_arn,
      :dataset_id,
      :dataset_version,
      :examples,
      :next_token)
      SENSITIVE = [:examples]
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of versions to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasetVersionsRequest AWS API Documentation
    #
    class ListDatasetVersionsRequest < Struct.new(
      :dataset_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] versions
    #   The list of published dataset versions.
    #   @return [Array<Types::DatasetVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasetVersionsResponse AWS API Documentation
    #
    class ListDatasetVersionsResponse < Struct.new(
      :versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of datasets to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasetsRequest AWS API Documentation
    #
    class ListDatasetsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datasets
    #   The list of datasets.
    #   @return [Array<Types::DatasetSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListDatasetsResponse AWS API Documentation
    #
    class ListDatasetsResponse < Struct.new(
      :datasets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from a previous request to retrieve the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of evaluators to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListEvaluatorsRequest AWS API Documentation
    #
    class ListEvaluatorsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluators
    #   The list of evaluator summaries containing basic information about
    #   each evaluator.
    #   @return [Array<Types::EvaluatorSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListEvaluatorsResponse AWS API Documentation
    #
    class ListEvaluatorsResponse < Struct.new(
      :evaluators,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway to list rules for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewayRulesRequest AWS API Documentation
    #
    class ListGatewayRulesRequest < Struct.new(
      :gateway_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_rules
    #   The list of gateway rules.
    #   @return [Array<Types::GatewayRuleDetail>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewayRulesResponse AWS API Documentation
    #
    class ListGatewayRulesResponse < Struct.new(
      :gateway_rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway to list targets for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewayTargetsRequest AWS API Documentation
    #
    class ListGatewayTargetsRequest < Struct.new(
      :gateway_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of gateway target summaries.
    #   @return [Array<Types::TargetSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewayTargetsResponse AWS API Documentation
    #
    class ListGatewayTargetsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewaysRequest AWS API Documentation
    #
    class ListGatewaysRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of gateway summaries.
    #   @return [Array<Types::GatewaySummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListGatewaysResponse AWS API Documentation
    #
    class ListGatewaysResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness whose endpoints are listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnessEndpointsRequest AWS API Documentation
    #
    class ListHarnessEndpointsRequest < Struct.new(
      :harness_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoints
    #   The list of harness endpoints.
    #   @return [Array<Types::HarnessEndpoint>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnessEndpointsResponse AWS API Documentation
    #
    class ListHarnessEndpointsResponse < Struct.new(
      :endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness whose versions are listed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnessVersionsRequest AWS API Documentation
    #
    class ListHarnessVersionsRequest < Struct.new(
      :harness_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_versions
    #   The list of harness version summaries.
    #   @return [Array<Types::HarnessVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnessVersionsResponse AWS API Documentation
    #
    class ListHarnessVersionsResponse < Struct.new(
      :harness_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnessesRequest AWS API Documentation
    #
    class ListHarnessesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harnesses
    #   The list of harness summaries.
    #   @return [Array<Types::HarnessSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListHarnessesResponse AWS API Documentation
    #
    class ListHarnessesResponse < Struct.new(
      :harnesses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. The
    #   default value is 10. The maximum value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListMemoriesInput AWS API Documentation
    #
    class ListMemoriesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] memories
    #   The list of AgentCore Memory resource summaries.
    #   @return [Array<Types::MemorySummary>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListMemoriesOutput AWS API Documentation
    #
    class ListMemoriesOutput < Struct.new(
      :memories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListOauth2CredentialProvidersRequest AWS API Documentation
    #
    class ListOauth2CredentialProvidersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credential_providers
    #   The list of OAuth2 credential providers.
    #   @return [Array<Types::Oauth2CredentialProviderItem>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListOauth2CredentialProvidersResponse AWS API Documentation
    #
    class ListOauth2CredentialProvidersResponse < Struct.new(
      :credential_providers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from a previous request to retrieve the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of online evaluation configurations to return in
    #   a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListOnlineEvaluationConfigsRequest AWS API Documentation
    #
    class ListOnlineEvaluationConfigsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] online_evaluation_configs
    #   The list of online evaluation configuration summaries containing
    #   basic information about each configuration.
    #   @return [Array<Types::OnlineEvaluationConfigSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListOnlineEvaluationConfigsResponse AWS API Documentation
    #
    class ListOnlineEvaluationConfigsResponse < Struct.new(
      :online_evaluation_configs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the payment manager whose connectors to
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentConnectorsRequest AWS API Documentation
    #
    class ListPaymentConnectorsRequest < Struct.new(
      :payment_manager_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_connectors
    #   The list of payment connector summaries. For details about the
    #   fields in each summary, see the `PaymentConnectorSummary` data type.
    #   @return [Array<Types::PaymentConnectorSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentConnectorsResponse AWS API Documentation
    #
    class ListPaymentConnectorsResponse < Struct.new(
      :payment_connectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentCredentialProvidersRequest AWS API Documentation
    #
    class ListPaymentCredentialProvidersRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] credential_providers
    #   The list of payment credential providers.
    #   @return [Array<Types::PaymentCredentialProviderItem>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentCredentialProvidersResponse AWS API Documentation
    #
    class ListPaymentCredentialProvidersResponse < Struct.new(
      :credential_providers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentManagersRequest AWS API Documentation
    #
    class ListPaymentManagersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_managers
    #   The list of payment manager summaries. For details about the fields
    #   in each summary, see the `PaymentManagerSummary` data type.
    #   @return [Array<Types::PaymentManagerSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPaymentManagersResponse AWS API Documentation
    #
    class ListPaymentManagersResponse < Struct.new(
      :payment_managers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token returned from a previous [ListPolicies][1] call.
    #   Use this token to retrieve the next page of results when the
    #   response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicies.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of policies to return in a single response. If
    #   not specified, the default is 10 policies per page, with a maximum
    #   of 100 per page.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine whose policies to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] target_resource_scope
    #   Optional filter to list policies that apply to a specific resource
    #   scope or resource type. This helps narrow down policy results to
    #   those relevant for particular Amazon Web Services resources, agent
    #   tools, or operational contexts within the policy engine ecosystem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :next_token,
      :max_results,
      :policy_engine_id,
      :target_resource_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   An array of policy objects that match the specified criteria. Each
    #   policy object contains the policy metadata, status, and key
    #   identifiers for further operations.
    #   @return [Array<Types::Policy>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in subsequent ListPolicies calls
    #   to retrieve additional results. This token is only present when
    #   there are more results available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token returned from a previous
    #   [ListPolicyEngineSummaries][1] call. Use this token to retrieve the
    #   next page of results when the response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngineSummaries.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of policy engine summaries to return in a single
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyEngineSummariesRequest AWS API Documentation
    #
    class ListPolicyEngineSummariesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engines
    #   An array of policy engine summary objects that exist in the account.
    #   Each summary contains resource identifiers, status, and timestamps
    #   without customer-encrypted content.
    #   @return [Array<Types::PolicyEngineSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in subsequent
    #   [ListPolicyEngineSummaries][1] calls to retrieve additional results.
    #   This token is only present when there are more results available.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngineSummaries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyEngineSummariesResponse AWS API Documentation
    #
    class ListPolicyEngineSummariesResponse < Struct.new(
      :policy_engines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token returned from a previous [ListPolicyEngines][1]
    #   call. Use this token to retrieve the next page of results when the
    #   response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngines.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of policy engines to return in a single response.
    #   If not specified, the default is 10 policy engines per page, with a
    #   maximum of 100 per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyEnginesRequest AWS API Documentation
    #
    class ListPolicyEnginesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engines
    #   An array of policy engine objects that exist in the account. Each
    #   policy engine object contains the engine metadata, status, and key
    #   identifiers for further operations.
    #   @return [Array<Types::PolicyEngine>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in subsequent
    #   [ListPolicyEngines][1] calls to retrieve additional results. This
    #   token is only present when there are more results available.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyEngines.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyEnginesResponse AWS API Documentation
    #
    class ListPolicyEnginesResponse < Struct.new(
      :policy_engines,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_generation_id
    #   The unique identifier of the policy generation request whose assets
    #   are to be retrieved. This must be a valid generation ID from a
    #   previous [StartPolicyGeneration][1] call that has completed
    #   processing.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_StartPolicyGeneration.html
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the policy engine associated with the
    #   policy generation request. This provides the context for the
    #   generation operation and ensures assets are retrieved from the
    #   correct policy engine.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous
    #   [ListPolicyGenerationAssets][1] call. Use this token to retrieve the
    #   next page of assets when the response is paginated due to large
    #   numbers of generated policy options.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationAssets.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of policy generation assets to return in a single
    #   response. If not specified, the default is 10 assets per page, with
    #   a maximum of 100 per page. This helps control response size when
    #   dealing with policy generations that produce many alternative policy
    #   options.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerationAssetsRequest AWS API Documentation
    #
    class ListPolicyGenerationAssetsRequest < Struct.new(
      :policy_generation_id,
      :policy_engine_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_generation_assets
    #   An array of generated policy assets including Cedar policies and
    #   related artifacts from the AI-powered policy generation process.
    #   Each asset represents a different policy option or variation
    #   generated from the original natural language input.
    #   @return [Array<Types::PolicyGenerationAsset>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in subsequent
    #   [ListPolicyGenerationAssets][1] calls to retrieve additional assets.
    #   This token is only present when there are more generated policy
    #   assets available beyond the current response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationAssets.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerationAssetsResponse AWS API Documentation
    #
    class ListPolicyGenerationAssetsResponse < Struct.new(
      :policy_generation_assets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token returned from a previous
    #   [ListPolicyGenerationSummaries][1] call. Use this token to retrieve
    #   the next page of results when the response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationSummaries.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of policy generation summaries to return in a
    #   single response.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine whose policy generation
    #   summaries to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerationSummariesRequest AWS API Documentation
    #
    class ListPolicyGenerationSummariesRequest < Struct.new(
      :next_token,
      :max_results,
      :policy_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_generations
    #   An array of policy generation summary objects that match the
    #   specified criteria. Each summary contains resource identifiers,
    #   status, timestamps, and findings without customer-encrypted content.
    #   @return [Array<Types::PolicyGenerationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in subsequent
    #   [ListPolicyGenerationSummaries][1] calls to retrieve additional
    #   results. This token is only present when there are more results
    #   available.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicyGenerationSummaries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerationSummariesResponse AWS API Documentation
    #
    class ListPolicyGenerationSummariesResponse < Struct.new(
      :policy_generations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token for retrieving additional policy generations when
    #   results are paginated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of policy generations to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine whose policy generations to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerationsRequest AWS API Documentation
    #
    class ListPolicyGenerationsRequest < Struct.new(
      :next_token,
      :max_results,
      :policy_engine_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_generations
    #   An array of policy generation objects that match the specified
    #   criteria.
    #   @return [Array<Types::PolicyGeneration>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for retrieving additional policy generations if
    #   more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicyGenerationsResponse AWS API Documentation
    #
    class ListPolicyGenerationsResponse < Struct.new(
      :policy_generations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token returned from a previous [ListPolicySummaries][1]
    #   call. Use this token to retrieve the next page of results when the
    #   response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicySummaries.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of policy summaries to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine whose policy summaries to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] target_resource_scope
    #   Optional filter to list policy summaries that apply to a specific
    #   resource scope or resource type. This helps narrow down results to
    #   those relevant for particular Amazon Web Services resources, agent
    #   tools, or operational contexts within the policy engine ecosystem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicySummariesRequest AWS API Documentation
    #
    class ListPolicySummariesRequest < Struct.new(
      :next_token,
      :max_results,
      :policy_engine_id,
      :target_resource_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policies
    #   An array of policy summary objects that match the specified
    #   criteria. Each summary contains resource identifiers, status, and
    #   timestamps without customer-encrypted content.
    #   @return [Array<Types::PolicySummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that can be used in subsequent
    #   [ListPolicySummaries][1] calls to retrieve additional results. This
    #   token is only present when there are more results available.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore-control/latest/APIReference/API_ListPolicySummaries.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListPolicySummariesResponse AWS API Documentation
    #
    class ListPolicySummariesResponse < Struct.new(
      :policies,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter registries by their current status. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `CREATE_FAILED`, `UPDATE_FAILED`,
    #   `DELETING`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   Filter registries by their authorizer type. Possible values are
    #   `CUSTOM_JWT` and `AWS_IAM`. For more information about authorizer
    #   types, see the `RegistryAuthorizerType` enum.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListRegistriesRequest AWS API Documentation
    #
    class ListRegistriesRequest < Struct.new(
      :max_results,
      :next_token,
      :status,
      :authorizer_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registries
    #   The list of registry summaries. For details about the fields in each
    #   summary, see the `RegistrySummary` data type.
    #   @return [Array<Types::RegistrySummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListRegistriesResponse AWS API Documentation
    #
    class ListRegistriesResponse < Struct.new(
      :registries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry to list records from. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the registry.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response. If the
    #   total number of results is greater than this value, use the token
    #   returned in the response in the `nextToken` field when making
    #   another request to return the next batch of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, enter the token returned in the
    #   `nextToken` field in the response in this field to return the next
    #   batch of results.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Filter registry records by name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter registry records by their current status. Possible values
    #   include `CREATING`, `DRAFT`, `APPROVED`, `PENDING_APPROVAL`,
    #   `REJECTED`, `DEPRECATED`, `UPDATING`, `CREATE_FAILED`, and
    #   `UPDATE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] descriptor_type
    #   Filter registry records by their descriptor type. Possible values
    #   are `MCP`, `A2A`, `CUSTOM`, and `AGENT_SKILLS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListRegistryRecordsRequest AWS API Documentation
    #
    class ListRegistryRecordsRequest < Struct.new(
      :registry_id,
      :max_results,
      :next_token,
      :name,
      :status,
      :descriptor_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_records
    #   The list of registry record summaries. For details about the fields
    #   in each summary, see the `RegistryRecordSummary` data type.
    #   @return [Array<Types::RegistryRecordSummary>]
    #
    # @!attribute [rw] next_token
    #   If the total number of results is greater than the `maxResults`
    #   value provided in the request, use this token when making another
    #   request in the `nextToken` field to return the next batch of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListRegistryRecordsResponse AWS API Documentation
    #
    class ListRegistryRecordsResponse < Struct.new(
      :registry_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListWorkloadIdentitiesRequest AWS API Documentation
    #
    class ListWorkloadIdentitiesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workload_identities
    #   The list of workload identities.
    #   @return [Array<Types::WorkloadIdentityType>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ListWorkloadIdentitiesResponse AWS API Documentation
    #
    class ListWorkloadIdentitiesResponse < Struct.new(
      :workload_identities,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for LLM-as-a-Judge evaluation that uses a language
    # model to assess agent performance based on custom instructions and
    # rating scales.
    #
    # @!attribute [rw] instructions
    #   The evaluation instructions that guide the language model in
    #   assessing agent performance, including criteria and evaluation
    #   guidelines.
    #   @return [String]
    #
    # @!attribute [rw] rating_scale
    #   The rating scale that defines how the evaluator should score agent
    #   performance, either numerical or categorical.
    #   @return [Types::RatingScale]
    #
    # @!attribute [rw] model_config
    #   The model configuration that specifies which foundation model to use
    #   and how to configure it for evaluation.
    #   @return [Types::EvaluatorModelConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LlmAsAJudgeEvaluatorConfig AWS API Documentation
    #
    class LlmAsAJudgeEvaluatorConfig < Struct.new(
      :instructions,
      :rating_scale,
      :model_config)
      SENSITIVE = [:instructions, :rating_scale]
      include Aws::Structure
    end

    # Model-based metadata extraction configuration.
    #
    # @!attribute [rw] llm_extraction_instruction
    #   Instructions for extraction. Supports built-in operators like
    #   LATEST\_VALUE or custom natural-language instructions.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Description of what this metadata field represents.
    #   @return [String]
    #
    # @!attribute [rw] validation
    #   Validation rules to constrain extracted values.
    #   @return [Types::Validation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LlmExtractionConfig AWS API Documentation
    #
    class LlmExtractionConfig < Struct.new(
      :llm_extraction_instruction,
      :definition,
      :validation)
      SENSITIVE = [:llm_extraction_instruction, :definition]
      include Aws::Structure
    end

    # The configuration for a Model Context Protocol (MCP) gateway. This
    # structure defines how the gateway implements the MCP protocol.
    #
    # @!attribute [rw] supported_versions
    #   The supported versions of the Model Context Protocol. This field
    #   specifies which versions of the protocol the gateway can use.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instructions
    #   The instructions for using the Model Context Protocol gateway. These
    #   instructions provide guidance on how to interact with the gateway.
    #   @return [String]
    #
    # @!attribute [rw] search_type
    #   The search type for the Model Context Protocol gateway. This field
    #   specifies how the gateway handles search operations.
    #   @return [String]
    #
    # @!attribute [rw] session_configuration
    #   The session configuration for the MCP gateway. This configuration
    #   controls session behavior, including session timeout settings.
    #   @return [Types::SessionConfiguration]
    #
    # @!attribute [rw] streaming_configuration
    #   The streaming configuration for the MCP gateway. This configuration
    #   controls whether response streaming is enabled for the gateway.
    #   @return [Types::StreamingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MCPGatewayConfiguration AWS API Documentation
    #
    class MCPGatewayConfiguration < Struct.new(
      :supported_versions,
      :instructions,
      :search_type,
      :session_configuration,
      :streaming_configuration)
      SENSITIVE = [:instructions]
      include Aws::Structure
    end

    # Details of a resource created and managed by the gateway for private
    # endpoint connectivity.
    #
    # @!attribute [rw] domain
    #   The domain associated with this managed resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_arn
    #   The ARN of the VPC Lattice resource gateway created in your account.
    #   @return [String]
    #
    # @!attribute [rw] resource_association_arn
    #   The ARN of the service network resource association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ManagedResourceDetails AWS API Documentation
    #
    class ManagedResourceDetails < Struct.new(
      :domain,
      :resource_gateway_arn,
      :resource_association_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a managed VPC Lattice resource. The gateway creates
    # and manages the VPC Lattice resource gateway and resource
    # configuration on your behalf using a service-linked role.
    #
    # @!attribute [rw] vpc_identifier
    #   The ID of the VPC that contains your private resource.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs within the VPC where the VPC Lattice resource gateway
    #   is placed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint_ip_address_type
    #   The IP address type for the resource configuration endpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs to associate with the VPC Lattice resource
    #   gateway. If not specified, the default security group for the VPC is
    #   used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags to apply to the managed VPC Lattice resource gateway.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] routing_domain
    #   An intermediate domain to use as the resource configuration endpoint
    #   instead of the actual target domain. Use this when you want to route
    #   traffic through an intermediate component such as a VPC endpoint or
    #   internal load balancer. For more information, see
    #   xref:lattice-vpc-egress-routing-domain\[Route traffic through an
    #   intermediate domain\].
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ManagedVpcResource AWS API Documentation
    #
    class ManagedVpcResource < Struct.new(
      :vpc_identifier,
      :subnet_ids,
      :endpoint_ip_address_type,
      :security_group_ids,
      :tags,
      :routing_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # A condition that matches requests based on the request path.
    #
    # @!attribute [rw] any_of
    #   A list of path patterns. The condition is met if the request path
    #   matches any of the patterns.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MatchPaths AWS API Documentation
    #
    class MatchPaths < Struct.new(
      :any_of)
      SENSITIVE = []
      include Aws::Structure
    end

    # Union for principal matching. Currently supports IAM principal ARN
    # glob matching.
    #
    # @note MatchPrincipalEntry is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MatchPrincipalEntry is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MatchPrincipalEntry corresponding to the set member.
    #
    # @!attribute [rw] iam_principal
    #   An IAM principal to match against, specified by ARN.
    #   @return [Types::IamPrincipal]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MatchPrincipalEntry AWS API Documentation
    #
    class MatchPrincipalEntry < Struct.new(
      :iam_principal,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IamPrincipal < MatchPrincipalEntry; end
      class Unknown < MatchPrincipalEntry; end
    end

    # A condition that matches requests based on the caller's identity.
    #
    # @!attribute [rw] any_of
    #   A list of principal entries. The condition is met if any of the
    #   entries match the caller's identity.
    #   @return [Array<Types::MatchPrincipalEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MatchPrincipals AWS API Documentation
    #
    class MatchPrincipals < Struct.new(
      :any_of)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Model Context Protocol (MCP) descriptor for a registry record.
    # Contains the server definition and tools definition for an
    # MCP-compatible server. The schema is validated against the MCP
    # protocol specification.
    #
    # @!attribute [rw] server
    #   The MCP server definition, containing the server configuration and
    #   schema as defined by the MCP protocol specification.
    #   @return [Types::ServerDefinition]
    #
    # @!attribute [rw] tools
    #   The MCP tools definition, containing the tools available on the MCP
    #   server as defined by the MCP protocol specification.
    #   @return [Types::ToolsDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/McpDescriptor AWS API Documentation
    #
    class McpDescriptor < Struct.new(
      :server,
      :tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Lambda configuration for a Model Context Protocol target. This
    # structure defines how the gateway uses a Lambda function to
    # communicate with the target.
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function. This function
    #   is invoked by the gateway to communicate with the target.
    #   @return [String]
    #
    # @!attribute [rw] tool_schema
    #   The tool schema for the Lambda function. This schema defines the
    #   structure of the tools that the Lambda function provides.
    #   @return [Types::ToolSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/McpLambdaTargetConfiguration AWS API Documentation
    #
    class McpLambdaTargetConfiguration < Struct.new(
      :lambda_arn,
      :tool_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target configuration for the MCP server.
    #
    # @!attribute [rw] endpoint
    #   The endpoint for the MCP server target configuration.
    #   @return [String]
    #
    # @!attribute [rw] mcp_tool_schema
    #   The tool schema configuration for the MCP server target. Supported
    #   only when the credential provider is configured with an
    #   authorization code grant type. Dynamic tool
    #   discovery/synchronization will be disabled when target is configured
    #   with mcpToolSchema.
    #   @return [Types::McpToolSchemaConfiguration]
    #
    # @!attribute [rw] listing_mode
    #   The listing mode for the MCP server target configuration. MCP
    #   resources for default targets are cached at the control plane for
    #   faster access. MCP resources for dynamic targets will be dynamically
    #   retrieved when listing tools.
    #   @return [String]
    #
    # @!attribute [rw] resource_priority
    #   Priority for resolving MCP server targets with shared resource URIs.
    #   Lower values take precedence. Defaults to 1000 when not set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/McpServerTargetConfiguration AWS API Documentation
    #
    class McpServerTargetConfiguration < Struct.new(
      :endpoint,
      :mcp_tool_schema,
      :listing_mode,
      :resource_priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Model Context Protocol (MCP) configuration for a target. This
    # structure defines how the gateway uses MCP to communicate with the
    # target.
    #
    # @note McpTargetConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note McpTargetConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of McpTargetConfiguration corresponding to the set member.
    #
    # @!attribute [rw] open_api_schema
    #   The OpenAPI schema for the Model Context Protocol target. This
    #   schema defines the API structure of the target.
    #   @return [Types::ApiSchemaConfiguration]
    #
    # @!attribute [rw] smithy_model
    #   The Smithy model for the Model Context Protocol target. This model
    #   defines the API structure of the target using the Smithy
    #   specification.
    #   @return [Types::ApiSchemaConfiguration]
    #
    # @!attribute [rw] lambda
    #   The Lambda configuration for the Model Context Protocol target. This
    #   configuration defines how the gateway uses a Lambda function to
    #   communicate with the target.
    #   @return [Types::McpLambdaTargetConfiguration]
    #
    # @!attribute [rw] mcp_server
    #   The MCP server specified as the gateway target.
    #   @return [Types::McpServerTargetConfiguration]
    #
    # @!attribute [rw] api_gateway
    #   The configuration for an Amazon API Gateway target.
    #   @return [Types::ApiGatewayTargetConfiguration]
    #
    # @!attribute [rw] connector
    #   The connector integration configuration for the Model Context
    #   Protocol target. This configuration defines how the gateway uses a
    #   pre-built connector to communicate with the target.
    #   @return [Types::ConnectorTargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/McpTargetConfiguration AWS API Documentation
    #
    class McpTargetConfiguration < Struct.new(
      :open_api_schema,
      :smithy_model,
      :lambda,
      :mcp_server,
      :api_gateway,
      :connector,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OpenApiSchema < McpTargetConfiguration; end
      class SmithyModel < McpTargetConfiguration; end
      class Lambda < McpTargetConfiguration; end
      class McpServer < McpTargetConfiguration; end
      class ApiGateway < McpTargetConfiguration; end
      class Connector < McpTargetConfiguration; end
      class Unknown < McpTargetConfiguration; end
    end

    # The MCP tool schema configuration for an MCP server target. The tool
    # schema must be aligned with the MCP specification.
    #
    # @note McpToolSchemaConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note McpToolSchemaConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of McpToolSchemaConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   The Amazon S3 location of the tool schema. This location contains
    #   the schema definition file.
    #   @return [Types::S3Configuration]
    #
    # @!attribute [rw] inline_payload
    #   The inline payload containing the MCP tool schema definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/McpToolSchemaConfiguration AWS API Documentation
    #
    class McpToolSchemaConfiguration < Struct.new(
      :s3,
      :inline_payload,
      :unknown)
      SENSITIVE = [:inline_payload]
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < McpToolSchemaConfiguration; end
      class InlinePayload < McpToolSchemaConfiguration; end
      class Unknown < McpToolSchemaConfiguration; end
    end

    # Contains information about a memory resource.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the memory.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the memory.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the memory.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the memory.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The ARN of the KMS key used to encrypt the memory.
    #   @return [String]
    #
    # @!attribute [rw] memory_execution_role_arn
    #   The ARN of the IAM role that provides permissions for the memory.
    #   @return [String]
    #
    # @!attribute [rw] event_expiry_duration
    #   The number of days after which memory events will expire.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status of the memory.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the memory is in a failed state.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the memory was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the memory was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] strategies
    #   The list of memory strategies associated with this memory.
    #   @return [Array<Types::MemoryStrategy>]
    #
    # @!attribute [rw] indexed_keys
    #   The indexed metadata keys for this memory. Only indexed keys can be
    #   used in metadata filters.
    #   @return [Array<Types::IndexedKey>]
    #
    # @!attribute [rw] stream_delivery_resources
    #   Configuration for streaming memory record data to external
    #   resources.
    #   @return [Types::StreamDeliveryResources]
    #
    # @!attribute [rw] managed_by_resource_arn
    #   ARN of the resource managing this memory (e.g. a harness). When set,
    #   strategy modifications and deletion are only allowed through the
    #   managing resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Memory AWS API Documentation
    #
    class Memory < Struct.new(
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
      :stream_delivery_resources,
      :managed_by_resource_arn)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Schema for metadata on memory records generated by a strategy.
    #
    # @!attribute [rw] metadata_schema
    #   The metadata field definitions for this strategy.
    #   @return [Array<Types::MetadataSchemaEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MemoryRecordSchema AWS API Documentation
    #
    class MemoryRecordSchema < Struct.new(
      :metadata_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a memory strategy.
    #
    # @!attribute [rw] strategy_id
    #   The unique identifier of the memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the memory strategy.
    #   @return [Types::StrategyConfiguration]
    #
    # @!attribute [rw] type
    #   The type of the memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter. The namespaces associated with the
    #   memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates associated with the memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the memory strategy was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the memory strategy was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata fields on records generated by this strategy.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MemoryStrategy AWS API Documentation
    #
    class MemoryStrategy < Struct.new(
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
      :memory_record_schema)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Contains input information for creating a memory strategy.
    #
    # @note MemoryStrategyInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] semantic_memory_strategy
    #   Input for creating a semantic memory strategy.
    #   @return [Types::SemanticMemoryStrategyInput]
    #
    # @!attribute [rw] summary_memory_strategy
    #   Input for creating a summary memory strategy.
    #   @return [Types::SummaryMemoryStrategyInput]
    #
    # @!attribute [rw] user_preference_memory_strategy
    #   Input for creating a user preference memory strategy.
    #   @return [Types::UserPreferenceMemoryStrategyInput]
    #
    # @!attribute [rw] custom_memory_strategy
    #   Input for creating a custom memory strategy.
    #   @return [Types::CustomMemoryStrategyInput]
    #
    # @!attribute [rw] episodic_memory_strategy
    #   Input for creating an episodic memory strategy
    #   @return [Types::EpisodicMemoryStrategyInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MemoryStrategyInput AWS API Documentation
    #
    class MemoryStrategyInput < Struct.new(
      :semantic_memory_strategy,
      :summary_memory_strategy,
      :user_preference_memory_strategy,
      :custom_memory_strategy,
      :episodic_memory_strategy,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticMemoryStrategy < MemoryStrategyInput; end
      class SummaryMemoryStrategy < MemoryStrategyInput; end
      class UserPreferenceMemoryStrategy < MemoryStrategyInput; end
      class CustomMemoryStrategy < MemoryStrategyInput; end
      class EpisodicMemoryStrategy < MemoryStrategyInput; end
      class Unknown < MemoryStrategyInput; end
    end

    # Contains summary information about a memory resource.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the memory.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the memory.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the memory.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the memory was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the memory was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] managed_by_resource_arn
    #   ARN of the resource managing this memory (e.g. a harness). Null if
    #   not managed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MemorySummary AWS API Documentation
    #
    class MemorySummary < Struct.new(
      :arn,
      :id,
      :status,
      :created_at,
      :updated_at,
      :managed_by_resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trigger configuration based on a message.
    #
    # @!attribute [rw] message_count
    #   The number of messages that trigger memory processing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MessageBasedTrigger AWS API Documentation
    #
    class MessageBasedTrigger < Struct.new(
      :message_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trigger configuration based on a message.
    #
    # @!attribute [rw] message_count
    #   The number of messages that trigger memory processing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MessageBasedTriggerInput AWS API Documentation
    #
    class MessageBasedTriggerInput < Struct.new(
      :message_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for HTTP header and query parameter propagation between
    # the gateway and target servers.
    #
    # @!attribute [rw] allowed_request_headers
    #   A list of HTTP headers that are allowed to be propagated from
    #   incoming client requests to the target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_query_parameters
    #   A list of URL query parameters that are allowed to be propagated
    #   from incoming gateway URL to the target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allowed_response_headers
    #   A list of HTTP headers that are allowed to be propagated from the
    #   target response back to the client.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MetadataConfiguration AWS API Documentation
    #
    class MetadataConfiguration < Struct.new(
      :allowed_request_headers,
      :allowed_query_parameters,
      :allowed_response_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metadata field definition within a strategy's schema.
    #
    # @!attribute [rw] key
    #   The metadata field name. Must match an indexed key to be queryable
    #   via metadata filters.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The MetadataValueType.
    #   @return [String]
    #
    # @!attribute [rw] extraction_type
    #   Specifies whether the metadata value is extracted by the LLM or
    #   passed through deterministically from the event.
    #   @return [String]
    #
    # @!attribute [rw] extraction_config
    #   Configuration for extracting this metadata value from conversational
    #   content. Applicable only if extractionType is LLM inferred.
    #   @return [Types::ExtractionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MetadataSchemaEntry AWS API Documentation
    #
    class MetadataSchemaEntry < Struct.new(
      :key,
      :type,
      :extraction_type,
      :extraction_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration for a Microsoft OAuth2 provider.
    #
    # @!attribute [rw] client_id
    #   The client ID for the Microsoft OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the Microsoft OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] tenant_id
    #   The Microsoft Entra ID (formerly Azure AD) tenant ID for your
    #   organization. This identifies the specific tenant within
    #   Microsoft's identity platform where your application is registered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MicrosoftOauth2ProviderConfigInput AWS API Documentation
    #
    class MicrosoftOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source,
      :tenant_id)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Output configuration for a Microsoft OAuth2 provider.
    #
    # @!attribute [rw] oauth_discovery
    #   The OAuth2 discovery information for the Microsoft provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the Microsoft OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MicrosoftOauth2ProviderConfigOutput AWS API Documentation
    #
    class MicrosoftOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A model entry that specifies a model supported for an inference
    # operation.
    #
    # @!attribute [rw] model
    #   The model ID or glob pattern that identifies the model (for example,
    #   `anthropic.claude-opus-*` or `openai.gpt-oss-*`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModelEntry AWS API Documentation
    #
    class ModelEntry < Struct.new(
      :model)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that translates model IDs between client-facing
    # names and provider model IDs.
    #
    # @!attribute [rw] provider_prefix
    #   The provider prefix configuration used for model ID translation.
    #   @return [Types::ProviderPrefix]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModelMapping AWS API Documentation
    #
    class ModelMapping < Struct.new(
      :provider_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for modifying a consolidation configuration.
    #
    # @note ModifyConsolidationConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] custom_consolidation_configuration
    #   The updated custom consolidation configuration.
    #   @return [Types::CustomConsolidationConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyConsolidationConfiguration AWS API Documentation
    #
    class ModifyConsolidationConfiguration < Struct.new(
      :custom_consolidation_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomConsolidationConfiguration < ModifyConsolidationConfiguration; end
      class Unknown < ModifyConsolidationConfiguration; end
    end

    # Contains information for modifying an extraction configuration.
    #
    # @note ModifyExtractionConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] custom_extraction_configuration
    #   The updated custom extraction configuration.
    #   @return [Types::CustomExtractionConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyExtractionConfiguration AWS API Documentation
    #
    class ModifyExtractionConfiguration < Struct.new(
      :custom_extraction_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomExtractionConfiguration < ModifyExtractionConfiguration; end
      class Unknown < ModifyExtractionConfiguration; end
    end

    # The configuration for updating invocation settings.
    #
    # @!attribute [rw] topic_arn
    #   The updated ARN of the SNS topic for job notifications.
    #   @return [String]
    #
    # @!attribute [rw] payload_delivery_bucket_name
    #   The updated S3 bucket name for event payload delivery.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyInvocationConfigurationInput AWS API Documentation
    #
    class ModifyInvocationConfigurationInput < Struct.new(
      :topic_arn,
      :payload_delivery_bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for modifying memory strategies.
    #
    # @!attribute [rw] add_memory_strategies
    #   The list of memory strategies to add.
    #   @return [Array<Types::MemoryStrategyInput>]
    #
    # @!attribute [rw] modify_memory_strategies
    #   The list of memory strategies to modify.
    #   @return [Array<Types::ModifyMemoryStrategyInput>]
    #
    # @!attribute [rw] delete_memory_strategies
    #   The list of memory strategies to delete.
    #   @return [Array<Types::DeleteMemoryStrategyInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyMemoryStrategies AWS API Documentation
    #
    class ModifyMemoryStrategies < Struct.new(
      :add_memory_strategies,
      :modify_memory_strategies,
      :delete_memory_strategies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for modifying a memory strategy.
    #
    # @!attribute [rw] memory_strategy_id
    #   The unique identifier of the memory strategy to modify.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The updated
    #   namespaces for the memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The updated namespaceTemplates for the memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration
    #   The updated configuration for the memory strategy.
    #   @return [Types::ModifyStrategyConfiguration]
    #
    # @!attribute [rw] memory_record_schema
    #   Updated metadata schema for records generated by this strategy.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyMemoryStrategyInput AWS API Documentation
    #
    class ModifyMemoryStrategyInput < Struct.new(
      :memory_strategy_id,
      :description,
      :namespaces,
      :namespace_templates,
      :configuration,
      :memory_record_schema)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Contains information for modifying a reflection configuration.
    #
    # @note ModifyReflectionConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] episodic_reflection_configuration
    #   The updated episodic reflection configuration.
    #   @return [Types::EpisodicReflectionConfigurationInput]
    #
    # @!attribute [rw] custom_reflection_configuration
    #   The updated custom reflection configuration.
    #   @return [Types::CustomReflectionConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyReflectionConfiguration AWS API Documentation
    #
    class ModifyReflectionConfiguration < Struct.new(
      :episodic_reflection_configuration,
      :custom_reflection_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EpisodicReflectionConfiguration < ModifyReflectionConfiguration; end
      class CustomReflectionConfiguration < ModifyReflectionConfiguration; end
      class Unknown < ModifyReflectionConfiguration; end
    end

    # The configuration for updating the self-managed memory strategy.
    #
    # @!attribute [rw] trigger_conditions
    #   The updated list of conditions that trigger memory processing.
    #   @return [Array<Types::TriggerConditionInput>]
    #
    # @!attribute [rw] invocation_configuration
    #   The updated configuration to invoke self-managed memory processing
    #   pipeline.
    #   @return [Types::ModifyInvocationConfigurationInput]
    #
    # @!attribute [rw] historical_context_window_size
    #   The updated number of historical messages to include in processing
    #   context.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifySelfManagedConfiguration AWS API Documentation
    #
    class ModifySelfManagedConfiguration < Struct.new(
      :trigger_conditions,
      :invocation_configuration,
      :historical_context_window_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information for modifying a strategy configuration.
    #
    # @!attribute [rw] extraction
    #   The updated extraction configuration.
    #   @return [Types::ModifyExtractionConfiguration]
    #
    # @!attribute [rw] consolidation
    #   The updated consolidation configuration.
    #   @return [Types::ModifyConsolidationConfiguration]
    #
    # @!attribute [rw] reflection
    #   The updated reflection configuration.
    #   @return [Types::ModifyReflectionConfiguration]
    #
    # @!attribute [rw] self_managed_configuration
    #   The updated self-managed configuration.
    #   @return [Types::ModifySelfManagedConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyStrategyConfiguration AWS API Documentation
    #
    class ModifyStrategyConfiguration < Struct.new(
      :extraction,
      :consolidation,
      :reflection,
      :self_managed_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # SecurityConfig for the Agent.
    #
    # @!attribute [rw] network_mode
    #   The network mode for the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] network_mode_config
    #   The network mode configuration for the AgentCore Runtime.
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :network_mode,
      :network_mode_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation for NUMBER fields.
    #
    # @!attribute [rw] min_value
    #   Minimum allowed value.
    #   @return [Float]
    #
    # @!attribute [rw] max_value
    #   Maximum allowed value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/NumberValidation AWS API Documentation
    #
    class NumberValidation < Struct.new(
      :min_value,
      :max_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of a numerical rating scale option that provides a
    # numeric value with its description for evaluation scoring.
    #
    # @!attribute [rw] definition
    #   The description that explains what this numerical rating represents
    #   and when it should be used.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The numerical value for this rating scale option.
    #   @return [Float]
    #
    # @!attribute [rw] label
    #   The label or name that describes this numerical rating option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/NumericalScaleDefinition AWS API Documentation
    #
    class NumericalScaleDefinition < Struct.new(
      :definition,
      :value,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # OAuth2-specific authorization data, including the authorization URL
    # and user identifier for the authorization session.
    #
    # @!attribute [rw] authorization_url
    #   The URL to initiate the authorization process. This URL is provided
    #   when the OAuth2 access token requires user authorization.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user identifier associated with the OAuth2 authorization session
    #   that is defined by AgentCore Gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/OAuth2AuthorizationData AWS API Documentation
    #
    class OAuth2AuthorizationData < Struct.new(
      :authorization_url,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An OAuth credential provider for gateway authentication. This
    # structure contains the configuration for authenticating with the
    # target endpoint using OAuth.
    #
    # @!attribute [rw] provider_arn
    #   The Amazon Resource Name (ARN) of the OAuth credential provider.
    #   This ARN identifies the provider in Amazon Web Services.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth scopes for the credential provider. These scopes define
    #   the level of access requested from the OAuth provider.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_parameters
    #   The custom parameters for the OAuth credential provider. These
    #   parameters provide additional configuration for the OAuth
    #   authentication process.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] grant_type
    #   Specifies the kind of credentials to use for authorization:
    #
    #   * `CLIENT_CREDENTIALS` - Authorization with a client ID and secret.
    #
    #   * `AUTHORIZATION_CODE` - Authorization with a token that is specific
    #     to an individual end user.
    #
    #   * `TOKEN_EXCHANGE` - Authorization using on-behalf-of token
    #     exchange. An inbound user token is exchanged for a downstream
    #     access token scoped to the target audience.
    #   @return [String]
    #
    # @!attribute [rw] default_return_url
    #   The URL where the end user's browser is redirected after obtaining
    #   the authorization code. Generally points to the customer's
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/OAuthCredentialProvider AWS API Documentation
    #
    class OAuthCredentialProvider < Struct.new(
      :provider_arn,
      :scopes,
      :custom_parameters,
      :grant_type,
      :default_return_url)
      SENSITIVE = [:custom_parameters]
      include Aws::Structure
    end

    # Contains the authorization server metadata for an OAuth2 provider.
    #
    # @!attribute [rw] issuer
    #   The issuer URL for the OAuth2 authorization server.
    #   @return [String]
    #
    # @!attribute [rw] authorization_endpoint
    #   The authorization endpoint URL for the OAuth2 authorization server.
    #   @return [String]
    #
    # @!attribute [rw] token_endpoint
    #   The token endpoint URL for the OAuth2 authorization server.
    #   @return [String]
    #
    # @!attribute [rw] response_types
    #   The supported response types for the OAuth2 authorization server.
    #   @return [Array<String>]
    #
    # @!attribute [rw] token_endpoint_auth_methods
    #   The authentication methods supported by the token endpoint. This
    #   specifies how clients can authenticate when requesting tokens from
    #   the authorization server.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Oauth2AuthorizationServerMetadata AWS API Documentation
    #
    class Oauth2AuthorizationServerMetadata < Struct.new(
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      :response_types,
      :token_endpoint_auth_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an OAuth2 credential provider.
    #
    # @!attribute [rw] name
    #   The name of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the OAuth2 credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the OAuth2 credential provider was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Oauth2CredentialProviderItem AWS API Documentation
    #
    class Oauth2CredentialProviderItem < Struct.new(
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the discovery information for an OAuth2 provider.
    #
    # @note Oauth2Discovery is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Oauth2Discovery is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Oauth2Discovery corresponding to the set member.
    #
    # @!attribute [rw] discovery_url
    #   The discovery URL for the OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] authorization_server_metadata
    #   The authorization server metadata for the OAuth2 provider.
    #   @return [Types::Oauth2AuthorizationServerMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Oauth2Discovery AWS API Documentation
    #
    class Oauth2Discovery < Struct.new(
      :discovery_url,
      :authorization_server_metadata,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DiscoveryUrl < Oauth2Discovery; end
      class AuthorizationServerMetadata < Oauth2Discovery; end
      class Unknown < Oauth2Discovery; end
    end

    # Contains the input configuration for an OAuth2 provider.
    #
    # @note Oauth2ProviderConfigInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] custom_oauth_2_provider_config
    #   The configuration for a custom OAuth2 provider.
    #   @return [Types::CustomOauth2ProviderConfigInput]
    #
    # @!attribute [rw] google_oauth_2_provider_config
    #   The configuration for a Google OAuth2 provider.
    #   @return [Types::GoogleOauth2ProviderConfigInput]
    #
    # @!attribute [rw] github_oauth_2_provider_config
    #   The configuration for a GitHub OAuth2 provider.
    #   @return [Types::GithubOauth2ProviderConfigInput]
    #
    # @!attribute [rw] slack_oauth_2_provider_config
    #   The configuration for a Slack OAuth2 provider.
    #   @return [Types::SlackOauth2ProviderConfigInput]
    #
    # @!attribute [rw] salesforce_oauth_2_provider_config
    #   The configuration for a Salesforce OAuth2 provider.
    #   @return [Types::SalesforceOauth2ProviderConfigInput]
    #
    # @!attribute [rw] microsoft_oauth_2_provider_config
    #   The configuration for a Microsoft OAuth2 provider.
    #   @return [Types::MicrosoftOauth2ProviderConfigInput]
    #
    # @!attribute [rw] atlassian_oauth_2_provider_config
    #   Configuration settings for Atlassian OAuth2 provider integration.
    #   @return [Types::AtlassianOauth2ProviderConfigInput]
    #
    # @!attribute [rw] linkedin_oauth_2_provider_config
    #   Configuration settings for LinkedIn OAuth2 provider integration.
    #   @return [Types::LinkedinOauth2ProviderConfigInput]
    #
    # @!attribute [rw] included_oauth_2_provider_config
    #   The configuration for a non-custom OAuth2 provider. This includes
    #   settings for supported OAuth2 providers that have built-in
    #   integration support.
    #   @return [Types::IncludedOauth2ProviderConfigInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Oauth2ProviderConfigInput AWS API Documentation
    #
    class Oauth2ProviderConfigInput < Struct.new(
      :custom_oauth_2_provider_config,
      :google_oauth_2_provider_config,
      :github_oauth_2_provider_config,
      :slack_oauth_2_provider_config,
      :salesforce_oauth_2_provider_config,
      :microsoft_oauth_2_provider_config,
      :atlassian_oauth_2_provider_config,
      :linkedin_oauth_2_provider_config,
      :included_oauth_2_provider_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Contains the output configuration for an OAuth2 provider.
    #
    # @note Oauth2ProviderConfigOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Oauth2ProviderConfigOutput corresponding to the set member.
    #
    # @!attribute [rw] custom_oauth_2_provider_config
    #   The output configuration for a custom OAuth2 provider.
    #   @return [Types::CustomOauth2ProviderConfigOutput]
    #
    # @!attribute [rw] google_oauth_2_provider_config
    #   The output configuration for a Google OAuth2 provider.
    #   @return [Types::GoogleOauth2ProviderConfigOutput]
    #
    # @!attribute [rw] github_oauth_2_provider_config
    #   The output configuration for a GitHub OAuth2 provider.
    #   @return [Types::GithubOauth2ProviderConfigOutput]
    #
    # @!attribute [rw] slack_oauth_2_provider_config
    #   The output configuration for a Slack OAuth2 provider.
    #   @return [Types::SlackOauth2ProviderConfigOutput]
    #
    # @!attribute [rw] salesforce_oauth_2_provider_config
    #   The output configuration for a Salesforce OAuth2 provider.
    #   @return [Types::SalesforceOauth2ProviderConfigOutput]
    #
    # @!attribute [rw] microsoft_oauth_2_provider_config
    #   The output configuration for a Microsoft OAuth2 provider.
    #   @return [Types::MicrosoftOauth2ProviderConfigOutput]
    #
    # @!attribute [rw] atlassian_oauth_2_provider_config
    #   The configuration details for the Atlassian OAuth2 provider.
    #   @return [Types::AtlassianOauth2ProviderConfigOutput]
    #
    # @!attribute [rw] linkedin_oauth_2_provider_config
    #   The configuration details for the LinkedIn OAuth2 provider.
    #   @return [Types::LinkedinOauth2ProviderConfigOutput]
    #
    # @!attribute [rw] included_oauth_2_provider_config
    #   The configuration for a non-custom OAuth2 provider. This includes
    #   the configuration details for supported OAuth2 providers that have
    #   built-in integration support.
    #   @return [Types::IncludedOauth2ProviderConfigOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Oauth2ProviderConfigOutput AWS API Documentation
    #
    class Oauth2ProviderConfigOutput < Struct.new(
      :custom_oauth_2_provider_config,
      :google_oauth_2_provider_config,
      :github_oauth_2_provider_config,
      :slack_oauth_2_provider_config,
      :salesforce_oauth_2_provider_config,
      :microsoft_oauth_2_provider_config,
      :atlassian_oauth_2_provider_config,
      :linkedin_oauth_2_provider_config,
      :included_oauth_2_provider_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

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

    # Configuration for on-behalf-of token exchange.
    #
    # @!attribute [rw] grant_type
    #   The grant type for the on-behalf-of token exchange.
    #   @return [String]
    #
    # @!attribute [rw] token_exchange_grant_type_config
    #   Configuration specific to the TOKEN\_EXCHANGE grant type (RFC 8693).
    #   @return [Types::TokenExchangeGrantTypeConfigType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/OnBehalfOfTokenExchangeConfigType AWS API Documentation
    #
    class OnBehalfOfTokenExchangeConfigType < Struct.new(
      :grant_type,
      :token_exchange_grant_type_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary information about an online evaluation configuration,
    # including basic metadata and execution status.
    #
    # @!attribute [rw] online_evaluation_config_arn
    #   The Amazon Resource Name (ARN) of the online evaluation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_id
    #   The unique identifier of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_name
    #   The name of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The execution status indicating whether the online evaluation is
    #   currently running.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the online evaluation configuration was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the online evaluation configuration was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the online evaluation configuration
    #   execution failed.
    #   @return [String]
    #
    # @!attribute [rw] insights
    #   The list of insight types configured for this evaluation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] clustering_config
    #   The clustering configuration for periodic batch evaluation.
    #   @return [Types::ClusteringConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/OnlineEvaluationConfigSummary AWS API Documentation
    #
    class OnlineEvaluationConfigSummary < Struct.new(
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
      :clustering_config)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The configuration that specifies where evaluation results should be
    # written for monitoring and analysis.
    #
    # @!attribute [rw] cloud_watch_config
    #   The CloudWatch configuration for writing evaluation results to
    #   CloudWatch logs with embedded metric format.
    #   @return [Types::CloudWatchOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :cloud_watch_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an HTTP passthrough target. A passthrough target
    # forwards requests directly to an external HTTP endpoint.
    #
    # @!attribute [rw] endpoint
    #   The HTTPS endpoint that the gateway forwards requests to for this
    #   passthrough target.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The application protocol that the passthrough target implements.
    #   This value is required for passthrough targets:
    #
    #   * `MCP` - The Model Context Protocol.
    #
    #   * `A2A` - The Agent-to-Agent protocol.
    #
    #   * `INFERENCE` - The protocol for routing requests to a large
    #     language model (LLM) provider.
    #
    #   * `CUSTOM` - A custom application protocol.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The API schema configuration that defines the structure of the
    #   passthrough target's API.
    #   @return [Types::HttpApiSchemaConfiguration]
    #
    # @!attribute [rw] stickiness_configuration
    #   The session stickiness configuration for the passthrough target.
    #   This configuration routes requests within the same session to the
    #   same target.
    #   @return [Types::StickinessConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PassthroughTargetConfiguration AWS API Documentation
    #
    class PassthroughTargetConfiguration < Struct.new(
      :endpoint,
      :protocol_type,
      :schema,
      :stickiness_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a payment connector.
    #
    # @!attribute [rw] payment_connector_id
    #   The unique identifier of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the payment connector, which determines the payment
    #   provider integration.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the payment connector. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `DELETING`, `CREATE_FAILED`,
    #   `UPDATE_FAILED`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the payment connector was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PaymentConnectorSummary AWS API Documentation
    #
    class PaymentConnectorSummary < Struct.new(
      :payment_connector_id,
      :name,
      :type,
      :status,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a payment credential provider that stores
    # authentication credentials for a payment provider.
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the credential provider that
    #   stores the authentication credentials for the payment provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PaymentCredentialProviderConfiguration AWS API Documentation
    #
    class PaymentCredentialProviderConfiguration < Struct.new(
      :credential_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a payment credential provider.
    #
    # @!attribute [rw] name
    #   The name of the payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor type for the payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the payment credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the payment credential provider was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PaymentCredentialProviderItem AWS API Documentation
    #
    class PaymentCredentialProviderItem < Struct.new(
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a payment manager.
    #
    # @!attribute [rw] payment_manager_arn
    #   The Amazon Resource Name (ARN) of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer used by the payment manager.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM
    #     credentials.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   payment manager.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the payment manager. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `DELETING`, `CREATE_FAILED`,
    #   `UPDATE_FAILED`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the payment manager was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the payment manager was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PaymentManagerSummary AWS API Documentation
    #
    class PaymentManagerSummary < Struct.new(
      :payment_manager_arn,
      :payment_manager_id,
      :name,
      :description,
      :authorizer_type,
      :role_arn,
      :status,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provider configuration input — contains secrets for creation and
    # update. Varies by vendor type.
    #
    # @note PaymentProviderConfigurationInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] coinbase_cdp_configuration
    #   The Coinbase CDP configuration.
    #   @return [Types::CoinbaseCdpConfigurationInput]
    #
    # @!attribute [rw] stripe_privy_configuration
    #   The Stripe Privy configuration.
    #   @return [Types::StripePrivyConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PaymentProviderConfigurationInput AWS API Documentation
    #
    class PaymentProviderConfigurationInput < Struct.new(
      :coinbase_cdp_configuration,
      :stripe_privy_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CoinbaseCdpConfiguration < PaymentProviderConfigurationInput; end
      class StripePrivyConfiguration < PaymentProviderConfigurationInput; end
      class Unknown < PaymentProviderConfigurationInput; end
    end

    # Provider configuration output — no raw secrets, only ARNs. Varies by
    # vendor type.
    #
    # @note PaymentProviderConfigurationOutput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PaymentProviderConfigurationOutput corresponding to the set member.
    #
    # @!attribute [rw] coinbase_cdp_configuration
    #   The Coinbase CDP configuration.
    #   @return [Types::CoinbaseCdpConfigurationOutput]
    #
    # @!attribute [rw] stripe_privy_configuration
    #   The Stripe Privy configuration.
    #   @return [Types::StripePrivyConfigurationOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PaymentProviderConfigurationOutput AWS API Documentation
    #
    class PaymentProviderConfigurationOutput < Struct.new(
      :coinbase_cdp_configuration,
      :stripe_privy_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CoinbaseCdpConfiguration < PaymentProviderConfigurationOutput; end
      class StripePrivyConfiguration < PaymentProviderConfigurationOutput; end
      class Unknown < PaymentProviderConfigurationOutput; end
    end

    # Represents a complete policy resource within the AgentCore Policy
    # system. Policies are ARN-able resources that contain Cedar policy
    # statements and associated metadata for controlling agent behavior and
    # access decisions. Each policy belongs to a policy engine and defines
    # fine-grained authorization rules that are evaluated in real-time as
    # agents interact with tools through Gateway. Policies use the Cedar
    # policy language to specify who (principals based on OAuth claims like
    # username, role, or scope) can perform what actions (tool calls) on
    # which resources (Gateways), with optional conditions for
    # attribute-based access control. Multiple policies can apply to a
    # single request, with Cedar's forbid-wins semantics ensuring that
    # security restrictions are never accidentally overridden.
    #
    # @!attribute [rw] policy_id
    #   The unique identifier for the policy. This system-generated
    #   identifier consists of the user name plus a 10-character generated
    #   suffix and serves as the primary key for policy operations.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned immutable name for the policy. This
    #   human-readable identifier must be unique within the account and
    #   cannot exceed 48 characters.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages this policy. This
    #   establishes the policy engine context for policy evaluation and
    #   management.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy was originally created. This is
    #   automatically set by the service and used for auditing and lifecycle
    #   management.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy was last modified. This tracks the
    #   most recent changes to the policy configuration or metadata.
    #   @return [Time]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy. This globally unique
    #   identifier can be used for cross-service references and IAM policy
    #   statements.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The current enforcement mode of the policy.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The Cedar policy statement that defines the access control rules.
    #   This contains the actual policy logic used for agent behavior
    #   control and access decisions.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] description
    #   A human-readable description of the policy's purpose and
    #   functionality. Limited to 4,096 characters, this helps
    #   administrators understand and manage the policy.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the policy status. This provides
    #   details about any failures or the current state of the policy
    #   lifecycle.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Policy AWS API Documentation
    #
    class Policy < Struct.new(
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
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Represents the definition structure for policies within the AgentCore
    # Policy system. This structure encapsulates different policy formats
    # and languages that can be used to define access control rules.
    #
    # @note PolicyDefinition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PolicyDefinition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PolicyDefinition corresponding to the set member.
    #
    # @!attribute [rw] cedar
    #   The Cedar policy definition within the policy definition structure.
    #   This contains the Cedar policy statement that defines the
    #   authorization logic using Cedar's human-readable, analyzable policy
    #   language. Cedar policies specify principals (who can access),
    #   actions (what operations are allowed), resources (what can be
    #   accessed), and optional conditions for fine-grained control. Cedar
    #   provides a formal policy language designed for authorization with
    #   deterministic evaluation, making policies testable, reviewable, and
    #   auditable. All Cedar policies follow a default-deny model where
    #   actions are denied unless explicitly permitted, and forbid policies
    #   always override permit policies.
    #   @return [Types::CedarPolicy]
    #
    # @!attribute [rw] policy_generation
    #   The generated policy asset information within the policy definition
    #   structure. This contains information identifying a generated policy
    #   asset from the AI-powered policy generation process within the
    #   AgentCore Policy system. Each asset contains a Cedar policy
    #   statement generated from natural language input, along with
    #   associated metadata and analysis findings to help users evaluate and
    #   select the most appropriate policy option.
    #   @return [Types::PolicyGenerationDetails]
    #
    # @!attribute [rw] policy
    #   An AgentCore policy statement that defines the access control rules.
    #   The statement can be a Cedar policy or a guardrails definition.
    #   @return [Types::PolicyStatement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyDefinition AWS API Documentation
    #
    class PolicyDefinition < Struct.new(
      :cedar,
      :policy_generation,
      :policy,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Cedar < PolicyDefinition; end
      class PolicyGeneration < PolicyDefinition; end
      class Policy < PolicyDefinition; end
      class Unknown < PolicyDefinition; end
    end

    # Represents a policy engine resource within the AgentCore Policy
    # system. Policy engines serve as containers for grouping related
    # policies and provide the execution context for policy evaluation and
    # management. Each policy engine can be associated with one Gateway (one
    # engine per Gateway), where it intercepts all agent tool calls and
    # evaluates them against the contained policies before allowing tools to
    # execute. The policy engine maintains the Cedar schema generated from
    # the Gateway's tool manifest, ensuring that policies are validated
    # against the actual tools and parameters available. Policy engines
    # support two enforcement modes that can be configured when associating
    # with a Gateway: log-only mode for testing (evaluates decisions without
    # blocking) and enforce mode for production (actively allows or denies
    # based on policy evaluation).
    #
    # @!attribute [rw] policy_engine_id
    #   The unique identifier for the policy engine. This system-generated
    #   identifier consists of the user name plus a 10-character generated
    #   suffix and serves as the primary key for policy engine operations.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned immutable name for the policy engine. This
    #   human-readable identifier must be unique within the account and
    #   cannot exceed 48 characters.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy engine was originally created. This is
    #   automatically set by the service and used for auditing and lifecycle
    #   management.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy engine was last modified. This tracks
    #   the most recent changes to the policy engine configuration or
    #   metadata.
    #   @return [Time]
    #
    # @!attribute [rw] policy_engine_arn
    #   The Amazon Resource Name (ARN) of the policy engine. This globally
    #   unique identifier can be used for cross-service references and IAM
    #   policy statements.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the policy engine's purpose and
    #   scope. Limited to 4,096 characters, this helps administrators
    #   understand the policy engine's role in the overall governance
    #   strategy.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the policy engine status. This provides
    #   details about any failures or the current state of the policy engine
    #   lifecycle.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyEngine AWS API Documentation
    #
    class PolicyEngine < Struct.new(
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Represents a metadata-only summary of a policy engine resource. This
    # structure contains resource identifiers, status, and timestamps
    # without customer-encrypted fields such as description or status
    # reasons. Policy engine summaries are returned by operations that do
    # not require access to the customer's KMS key.
    #
    # @!attribute [rw] policy_engine_id
    #   The unique identifier for the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy engine was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy engine was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] policy_engine_arn
    #   The Amazon Resource Name (ARN) of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyEngineSummary AWS API Documentation
    #
    class PolicyEngineSummary < Struct.new(
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a policy generation request within the AgentCore Policy
    # system. Tracks the AI-powered conversion of natural language
    # descriptions into Cedar policy statements, enabling users to author
    # policies by describing authorization requirements in plain English.
    # The generation process analyzes the natural language input along with
    # the Gateway's tool context and Cedar schema to produce one or more
    # validated policy options. Each generation request tracks the status of
    # the conversion process and maintains findings about the generated
    # policies, including validation results and potential issues. Generated
    # policy assets remain available for one week after successful
    # generation, allowing time to review and create policies from the
    # generated options.
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine associated with this generation
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_id
    #   The unique identifier for this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name for this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_arn
    #   The ARN of this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource information associated with this policy generation.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] created_at
    #   The timestamp when this policy generation request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when this policy generation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] findings
    #   Findings and insights from this policy generation process.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the generation status.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyGeneration AWS API Documentation
    #
    class PolicyGeneration < Struct.new(
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings,
      :status_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a generated policy asset from the AI-powered policy
    # generation process within the AgentCore Policy system. Each asset
    # contains a Cedar policy statement generated from natural language
    # input, along with associated metadata and analysis findings to help
    # users evaluate and select the most appropriate policy option.
    #
    # @!attribute [rw] policy_generation_asset_id
    #   The unique identifier for this generated policy asset within the
    #   policy generation request. This ID can be used to reference specific
    #   generated policy options when creating actual policies from the
    #   generation results.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   Represents the definition structure for policies within the
    #   AgentCore Policy system. This structure encapsulates different
    #   policy formats and languages that can be used to define access
    #   control rules.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] raw_text_fragment
    #   The portion of the original natural language input that this
    #   generated policy asset addresses. This helps users understand which
    #   part of their policy description was translated into this specific
    #   Cedar policy statement, enabling better policy selection and
    #   refinement. When a single natural language input describes multiple
    #   authorization requirements, the generation process creates separate
    #   policy assets for each requirement, with each asset's
    #   rawTextFragment showing which requirement it addresses. Use this
    #   mapping to verify that all parts of your natural language input were
    #   correctly translated into Cedar policies.
    #   @return [String]
    #
    # @!attribute [rw] findings
    #   Analysis findings and insights related to this specific generated
    #   policy asset. These findings may include validation results,
    #   potential issues, or recommendations for improvement to help users
    #   evaluate the quality and appropriateness of the generated policy.
    #   @return [Array<Types::Finding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyGenerationAsset AWS API Documentation
    #
    class PolicyGenerationAsset < Struct.new(
      :policy_generation_asset_id,
      :definition,
      :raw_text_fragment,
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the information identifying a generated policy asset from
    # the AI-powered policy generation process within the AgentCore Policy
    # system. Each asset contains a Cedar policy statement generated from
    # natural language input, along with associated metadata and analysis
    # findings to help users evaluate and select the most appropriate policy
    # option.
    #
    # @!attribute [rw] policy_generation_id
    #   The unique identifier for this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_asset_id
    #   The unique identifier for this generated policy asset within the
    #   policy generation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyGenerationDetails AWS API Documentation
    #
    class PolicyGenerationDetails < Struct.new(
      :policy_generation_id,
      :policy_generation_asset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a metadata-only summary of a policy generation resource.
    # This structure contains resource identifiers, status, timestamps, and
    # findings without customer-encrypted fields such as status reasons.
    # Policy generation summaries are returned by operations that do not
    # require access to the customer's KMS key.
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine associated with this generation
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_id
    #   The unique identifier for this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name for this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_arn
    #   The ARN of this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource information associated with this policy generation.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] created_at
    #   The timestamp when this policy generation request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when this policy generation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of this policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] findings
    #   Findings and insights from this policy generation process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyGenerationSummary AWS API Documentation
    #
    class PolicyGenerationSummary < Struct.new(
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AgentCore policy statement, which supports plain Cedar policies as
    # well as guardrails definitions.
    #
    # @!attribute [rw] statement
    #   The body of the AgentCore policy statement. Contains the policy
    #   logic, which can be a Cedar policy or a guardrails definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyStatement AWS API Documentation
    #
    class PolicyStatement < Struct.new(
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a metadata-only summary of a policy resource. This
    # structure contains resource identifiers, status, and timestamps
    # without customer-encrypted fields such as definition, description, or
    # status reasons. Policy summaries are returned by operations that do
    # not require access to the customer's KMS key.
    #
    # @!attribute [rw] policy_id
    #   The unique identifier for the policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages this policy.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the policy.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The current enforcement mode of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicySummary AWS API Documentation
    #
    class PolicySummary < Struct.new(
      :policy_id,
      :name,
      :policy_engine_id,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :enforcement_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The private endpoint configuration for a gateway target. Defines how
    # the gateway connects to private resources in your VPC.
    #
    # @note PrivateEndpoint is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PrivateEndpoint is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PrivateEndpoint corresponding to the set member.
    #
    # @!attribute [rw] self_managed_lattice_resource
    #   Configuration for connecting to a private resource using a
    #   self-managed VPC Lattice resource configuration.
    #   @return [Types::SelfManagedLatticeResource]
    #
    # @!attribute [rw] managed_vpc_resource
    #   Configuration for connecting to a private resource using a managed
    #   VPC Lattice resource. The gateway creates and manages the VPC
    #   Lattice resources on your behalf.
    #   @return [Types::ManagedVpcResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PrivateEndpoint AWS API Documentation
    #
    class PrivateEndpoint < Struct.new(
      :self_managed_lattice_resource,
      :managed_vpc_resource,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SelfManagedLatticeResource < PrivateEndpoint; end
      class ManagedVpcResource < PrivateEndpoint; end
      class Unknown < PrivateEndpoint; end
    end

    # A mapping of a specific domain to a private endpoint for secure
    # connectivity through a VPC Lattice resource configuration.
    #
    # @!attribute [rw] domain
    #   The domain to override with a private endpoint.
    #   @return [String]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint configuration for the specified domain.
    #   @return [Types::PrivateEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PrivateEndpointOverride AWS API Documentation
    #
    class PrivateEndpointOverride < Struct.new(
      :domain,
      :private_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The protocol configuration for an agent runtime. This structure
    # defines how the agent runtime communicates with clients.
    #
    # @!attribute [rw] server_protocol
    #   The server protocol for the agent runtime. This field specifies
    #   which protocol the agent runtime uses to communicate with clients.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ProtocolConfiguration AWS API Documentation
    #
    class ProtocolConfiguration < Struct.new(
      :server_protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that controls how a provider prefix is applied to
    # model IDs during translation.
    #
    # @!attribute [rw] strip
    #   Whether clients can omit the provider prefix from model IDs. If
    #   `true`, the gateway accepts model IDs without the prefix and
    #   restores the full prefixed form before forwarding to the provider.
    #   The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] separator
    #   The single character that separates the provider prefix from the
    #   model name (for example, `.`). The default is `.`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ProviderPrefix AWS API Documentation
    #
    class ProviderPrefix < Struct.new(
      :strip,
      :separator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to create
    #   or update the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The resource policy to create or update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource policy that was created or updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rating scale that defines how evaluators should score agent
    # performance, supporting both numerical and categorical scales.
    #
    # @note RatingScale is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RatingScale is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RatingScale corresponding to the set member.
    #
    # @!attribute [rw] numerical
    #   The numerical rating scale with defined score values and
    #   descriptions for quantitative evaluation.
    #   @return [Array<Types::NumericalScaleDefinition>]
    #
    # @!attribute [rw] categorical
    #   The categorical rating scale with named categories and definitions
    #   for qualitative evaluation.
    #   @return [Array<Types::CategoricalScaleDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RatingScale AWS API Documentation
    #
    class RatingScale < Struct.new(
      :numerical,
      :categorical,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Numerical < RatingScale; end
      class Categorical < RatingScale; end
      class Unknown < RatingScale; end
    end

    # The recording configuration for a browser. This structure defines how
    # browser sessions are recorded.
    #
    # @!attribute [rw] enabled
    #   Indicates whether recording is enabled for the browser. When set to
    #   true, browser sessions are recorded.
    #   @return [Boolean]
    #
    # @!attribute [rw] s3_location
    #   The Amazon S3 location where browser recordings are stored. This
    #   location contains the recorded browser sessions.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RecordingConfig AWS API Documentation
    #
    class RecordingConfig < Struct.new(
      :enabled,
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains reflection configuration information for a memory strategy.
    #
    # @note ReflectionConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ReflectionConfiguration corresponding to the set member.
    #
    # @!attribute [rw] custom_reflection_configuration
    #   The configuration for a custom reflection strategy.
    #   @return [Types::CustomReflectionConfiguration]
    #
    # @!attribute [rw] episodic_reflection_configuration
    #   The configuration for the episodic reflection strategy.
    #   @return [Types::EpisodicReflectionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ReflectionConfiguration AWS API Documentation
    #
    class ReflectionConfiguration < Struct.new(
      :custom_reflection_configuration,
      :episodic_reflection_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CustomReflectionConfiguration < ReflectionConfiguration; end
      class EpisodicReflectionConfiguration < ReflectionConfiguration; end
      class Unknown < ReflectionConfiguration; end
    end

    # A pairing of a credential provider type with its corresponding
    # provider details for authenticating with external sources.
    #
    # @!attribute [rw] credential_provider_type
    #   The type of credential provider.
    #
    #   * `OAUTH` - OAuth-based authentication.
    #
    #   * `IAM` - Amazon Web Services IAM-based authentication using SigV4
    #     signing.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider
    #   The credential provider configuration details. The structure depends
    #   on the `credentialProviderType`.
    #   @return [Types::RegistryRecordCredentialProviderUnion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RegistryRecordCredentialProviderConfiguration AWS API Documentation
    #
    class RegistryRecordCredentialProviderConfiguration < Struct.new(
      :credential_provider_type,
      :credential_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Union of supported credential provider types for registry record
    # synchronization.
    #
    # @note RegistryRecordCredentialProviderUnion is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RegistryRecordCredentialProviderUnion is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RegistryRecordCredentialProviderUnion corresponding to the set member.
    #
    # @!attribute [rw] oauth_credential_provider
    #   The OAuth credential provider configuration for authenticating with
    #   the external source.
    #   @return [Types::RegistryRecordOAuthCredentialProvider]
    #
    # @!attribute [rw] iam_credential_provider
    #   The IAM credential provider configuration for authenticating with
    #   the external source using SigV4 signing.
    #   @return [Types::RegistryRecordIamCredentialProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RegistryRecordCredentialProviderUnion AWS API Documentation
    #
    class RegistryRecordCredentialProviderUnion < Struct.new(
      :oauth_credential_provider,
      :iam_credential_provider,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OauthCredentialProvider < RegistryRecordCredentialProviderUnion; end
      class IamCredentialProvider < RegistryRecordCredentialProviderUnion; end
      class Unknown < RegistryRecordCredentialProviderUnion; end
    end

    # IAM credential provider configuration for authenticating with an
    # external source using SigV4 signing during synchronization.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to assume for SigV4
    #   signing.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   The SigV4 signing service name (for example, `execute-api` or
    #   `bedrock-agentcore`).
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services region for SigV4 signing (for example,
    #   `us-west-2`). If not specified, the region is extracted from the MCP
    #   server URL hostname, with fallback to the service's own region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RegistryRecordIamCredentialProvider AWS API Documentation
    #
    class RegistryRecordIamCredentialProvider < Struct.new(
      :role_arn,
      :service,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # OAuth credential provider configuration for authenticating with an
    # external source during synchronization.
    #
    # @!attribute [rw] provider_arn
    #   The Amazon Resource Name (ARN) of the OAuth credential provider
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] grant_type
    #   The OAuth grant type. Currently only `CLIENT_CREDENTIALS` is
    #   supported.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The OAuth scopes to request during authentication.
    #   @return [Array<String>]
    #
    # @!attribute [rw] custom_parameters
    #   Additional custom parameters for the OAuth flow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RegistryRecordOAuthCredentialProvider AWS API Documentation
    #
    class RegistryRecordOAuthCredentialProvider < Struct.new(
      :provider_arn,
      :grant_type,
      :scopes,
      :custom_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a registry record.
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry that contains the
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   The Amazon Resource Name (ARN) of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The unique identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] descriptor_type
    #   The descriptor type of the registry record. Possible values are
    #   `MCP`, `A2A`, `CUSTOM`, and `AGENT_SKILLS`.
    #   @return [String]
    #
    # @!attribute [rw] record_version
    #   The version of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the registry record. Possible values include
    #   `CREATING`, `DRAFT`, `APPROVED`, `PENDING_APPROVAL`, `REJECTED`,
    #   `DEPRECATED`, `UPDATING`, `CREATE_FAILED`, and `UPDATE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry record was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry record was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RegistryRecordSummary AWS API Documentation
    #
    class RegistryRecordSummary < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :name,
      :description,
      :descriptor_type,
      :record_version,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Contains summary information about a registry.
    #
    # @!attribute [rw] name
    #   The name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The unique identifier of the registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer used by the registry. This controls the
    #   authorization method for the Search and Invoke APIs used by
    #   consumers.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM
    #     credentials.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the registry. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `CREATE_FAILED`, `UPDATE_FAILED`,
    #   `DELETING`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status, typically set when the status is
    #   a failure state.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RegistrySummary AWS API Documentation
    #
    class RegistrySummary < Struct.new(
      :name,
      :description,
      :registry_id,
      :registry_arn,
      :authorizer_type,
      :status,
      :status_reason,
      :created_at,
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Configuration for HTTP request headers that will be passed through to
    # the runtime.
    #
    # @note RequestHeaderConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RequestHeaderConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RequestHeaderConfiguration corresponding to the set member.
    #
    # @!attribute [rw] request_header_allowlist
    #   A list of HTTP request headers that are allowed to be passed through
    #   to the runtime.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RequestHeaderConfiguration AWS API Documentation
    #
    class RequestHeaderConfiguration < Struct.new(
      :request_header_allowlist,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RequestHeaderAllowlist < RequestHeaderConfiguration; end
      class Unknown < RequestHeaderConfiguration; end
    end

    # Represents a resource within the AgentCore Policy system. Resources
    # are the targets of policy evaluation. Currently, only AgentCore
    # Gateways are supported as resources for policy enforcement.
    #
    # @note Resource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Resource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Resource corresponding to the set member.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the resource. This globally unique
    #   identifier specifies the exact resource that policies will be
    #   evaluated against for access control decisions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Arn < Resource; end
      class Unknown < Resource; end
    end

    # Exception thrown when a resource limit is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of a resource.
    #
    # @note ResourceLocation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceLocation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceLocation corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   The Amazon S3 location for storing data. This structure defines
    #   where in Amazon S3 data is stored.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ResourceLocation AWS API Documentation
    #
    class ResourceLocation < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ResourceLocation; end
      class Unknown < ResourceLocation; end
    end

    # This exception is thrown when a resource referenced by the operation
    # does not exist
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An action that routes requests to a gateway target, either statically
    # or with weighted traffic splitting.
    #
    # @note RouteToTargetAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RouteToTargetAction is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RouteToTargetAction corresponding to the set member.
    #
    # @!attribute [rw] static_route
    #   A static route that sends all matching requests to a single target.
    #   @return [Types::StaticRoute]
    #
    # @!attribute [rw] weighted_route
    #   A weighted route that splits traffic between multiple targets.
    #   @return [Types::WeightedRoute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RouteToTargetAction AWS API Documentation
    #
    class RouteToTargetAction < Struct.new(
      :static_route,
      :weighted_route,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StaticRoute < RouteToTargetAction; end
      class WeightedRoute < RouteToTargetAction; end
      class Unknown < RouteToTargetAction; end
    end

    # The evaluation rule that defines sampling configuration, filtering
    # criteria, and session detection settings for online evaluation.
    #
    # @!attribute [rw] sampling_config
    #   The sampling configuration that determines what percentage of agent
    #   traces to evaluate.
    #   @return [Types::SamplingConfig]
    #
    # @!attribute [rw] filters
    #   The list of filters that determine which agent traces should be
    #   included in the evaluation based on trace properties.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] session_config
    #   The session configuration that defines timeout settings for
    #   detecting when agent sessions are complete and ready for evaluation.
    #   @return [Types::SessionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :sampling_config,
      :filters,
      :session_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for microVM metadata service settings.
    #
    # @!attribute [rw] require_mmdsv2
    #   Enables MMDSv2 (microVM Metadata Service Version 2) requirement for
    #   the agent runtime. When set to `true`, the runtime microVM will only
    #   accept MMDSv2 requests.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RuntimeMetadataConfiguration AWS API Documentation
    #
    class RuntimeMetadataConfiguration < Struct.new(
      :require_mmdsv2)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for an AgentCore Runtime target. Specifies the agent
    # runtime to route requests to via HTTP.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime to route
    #   requests to.
    #   @return [String]
    #
    # @!attribute [rw] qualifier
    #   The qualifier for the agent runtime, used to target a specific
    #   endpoint version. If not specified, the default endpoint is used.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The API schema configuration that defines the structure of the
    #   runtime target's API.
    #   @return [Types::HttpApiSchemaConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/RuntimeTargetConfiguration AWS API Documentation
    #
    class RuntimeTargetConfiguration < Struct.new(
      :arn,
      :qualifier,
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 configuration for a gateway. This structure defines how
    # the gateway accesses files in Amazon S3.
    #
    # @!attribute [rw] uri
    #   The URI of the Amazon S3 object. This URI specifies the location of
    #   the object in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner_account_id
    #   The account ID of the Amazon S3 bucket owner. This ID is used for
    #   cross-account access to the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/S3Configuration AWS API Documentation
    #
    class S3Configuration < Struct.new(
      :uri,
      :bucket_owner_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for an Amazon S3 Files access point filesystem mounted
    # into the AgentCore Runtime. S3 Files access points provide shared file
    # storage accessible from your AgentCore Runtime sessions.
    #
    # @!attribute [rw] access_point_arn
    #   The ARN of the S3 Files access point to mount into the AgentCore
    #   Runtime.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   The mount path for the S3 Files access point inside the AgentCore
    #   Runtime. The path must be under `/mnt` with exactly one subdirectory
    #   level (for example, `/mnt/data`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/S3FilesAccessPointConfiguration AWS API Documentation
    #
    class S3FilesAccessPointConfiguration < Struct.new(
      :access_point_arn,
      :mount_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for mounting an Amazon Simple Storage Service
    # (Amazon S3) Files access point that you own into a session.
    #
    # @!attribute [rw] access_point_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Storage Service
    #   (Amazon S3) Files access point to mount.
    #   @return [String]
    #
    # @!attribute [rw] mount_path
    #   The absolute path within the session at which the access point is
    #   mounted, for example `/mnt/s3data`. Each mount path must be unique
    #   across all file system configurations in the session.
    #   @return [String]
    #
    # @!attribute [rw] file_system_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Storage Service
    #   (Amazon S3) Files file system that owns the access point.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/S3FilesConfiguration AWS API Documentation
    #
    class S3FilesConfiguration < Struct.new(
      :access_point_arn,
      :mount_path,
      :file_system_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location for storing data. This structure defines where
    # in Amazon S3 data is stored.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket. This bucket contains the stored
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix for objects in the Amazon S3 bucket. This prefix is added
    #   to the object keys to organize the data.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the Amazon Amazon S3 object. If not specified, the
    #   latest version of the object is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :prefix,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 location of a JSONL file containing dataset examples.
    #
    # @!attribute [rw] s3_uri
    #   Amazon S3 URI of the JSONL file (for example,
    #   `s3://my-bucket/path/to/examples.jsonl`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/S3Source AWS API Documentation
    #
    class S3Source < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration for a Salesforce OAuth2 provider.
    #
    # @!attribute [rw] client_id
    #   The client ID for the Salesforce OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the Salesforce OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SalesforceOauth2ProviderConfigInput AWS API Documentation
    #
    class SalesforceOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Output configuration for a Salesforce OAuth2 provider.
    #
    # @!attribute [rw] oauth_discovery
    #   The OAuth2 discovery information for the Salesforce provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the Salesforce OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SalesforceOauth2ProviderConfigOutput AWS API Documentation
    #
    class SalesforceOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that controls what percentage of agent traces are
    # sampled for evaluation to manage evaluation volume and costs.
    #
    # @!attribute [rw] sampling_percentage
    #   The percentage of agent traces to sample for evaluation, ranging
    #   from 0.01% to 100%.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SamplingConfig AWS API Documentation
    #
    class SamplingConfig < Struct.new(
      :sampling_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # A schema definition for a gateway target. This structure defines the
    # structure of the API that the target exposes.
    #
    # @!attribute [rw] type
    #   The type of the schema definition. This field specifies the data
    #   type of the schema.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The properties of the schema definition. These properties define the
    #   fields in the schema.
    #   @return [Hash<String,Types::SchemaDefinition>]
    #
    # @!attribute [rw] required
    #   The required fields in the schema definition. These fields must be
    #   provided when using the schema.
    #   @return [Array<String>]
    #
    # @!attribute [rw] items
    #   The items in the schema definition. This field is used for array
    #   types to define the structure of the array elements.
    #   @return [Types::SchemaDefinition]
    #
    # @!attribute [rw] description
    #   The description of the schema definition. This description provides
    #   information about the purpose and usage of the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SchemaDefinition AWS API Documentation
    #
    class SchemaDefinition < Struct.new(
      :type,
      :properties,
      :required,
      :items,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a secret in Amazon Web Services Secrets
    # Manager.
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the secret in Amazon Web Services
    #   Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Secret AWS API Documentation
    #
    class Secret < Struct.new(
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a reference to a secret stored in Amazon Web Services Secrets
    # Manager.
    #
    # @!attribute [rw] secret_id
    #   The ID of the Amazon Web Services Secrets Manager secret that stores
    #   the secret value.
    #   @return [String]
    #
    # @!attribute [rw] json_key
    #   The JSON key used to extract the secret value from the Amazon Web
    #   Services Secrets Manager secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SecretReference AWS API Documentation
    #
    class SecretReference < Struct.new(
      :secret_id,
      :json_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services Secrets Manager location configuration.
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the Amazon Web Services Secrets Manager secret containing
    #   the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SecretsManagerLocation AWS API Documentation
    #
    class SecretsManagerLocation < Struct.new(
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for a self-managed memory strategy.
    #
    # @!attribute [rw] trigger_conditions
    #   A list of conditions that trigger memory processing.
    #   @return [Array<Types::TriggerCondition>]
    #
    # @!attribute [rw] invocation_configuration
    #   The configuration to use when invoking memory processing.
    #   @return [Types::InvocationConfiguration]
    #
    # @!attribute [rw] historical_context_window_size
    #   The number of historical messages to include in processing context.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SelfManagedConfiguration AWS API Documentation
    #
    class SelfManagedConfiguration < Struct.new(
      :trigger_conditions,
      :invocation_configuration,
      :historical_context_window_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration for a self-managed memory strategy.
    #
    # @!attribute [rw] trigger_conditions
    #   A list of conditions that trigger memory processing.
    #   @return [Array<Types::TriggerConditionInput>]
    #
    # @!attribute [rw] invocation_configuration
    #   Configuration to invoke a self-managed memory processing pipeline
    #   with.
    #   @return [Types::InvocationConfigurationInput]
    #
    # @!attribute [rw] historical_context_window_size
    #   Number of historical messages to include in processing context.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SelfManagedConfigurationInput AWS API Documentation
    #
    class SelfManagedConfigurationInput < Struct.new(
      :trigger_conditions,
      :invocation_configuration,
      :historical_context_window_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a self-managed VPC Lattice resource. You create and
    # manage the VPC Lattice resource gateway and resource configuration,
    # then provide the resource configuration identifier.
    #
    # @note SelfManagedLatticeResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SelfManagedLatticeResource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SelfManagedLatticeResource corresponding to the set member.
    #
    # @!attribute [rw] resource_configuration_identifier
    #   The ARN or ID of the VPC Lattice resource configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SelfManagedLatticeResource AWS API Documentation
    #
    class SelfManagedLatticeResource < Struct.new(
      :resource_configuration_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ResourceConfigurationIdentifier < SelfManagedLatticeResource; end
      class Unknown < SelfManagedLatticeResource; end
    end

    # Contains semantic consolidation override configuration.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for semantic consolidation.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for semantic consolidation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SemanticConsolidationOverride AWS API Documentation
    #
    class SemanticConsolidationOverride < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Contains semantic extraction override configuration.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for semantic extraction.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for semantic extraction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SemanticExtractionOverride AWS API Documentation
    #
    class SemanticExtractionOverride < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Input for creating a semantic memory strategy.
    #
    # @!attribute [rw] name
    #   The name of the semantic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the semantic memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The namespaces
    #   associated with the semantic memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates associated with the semantic memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata on memory records generated by a strategy.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SemanticMemoryStrategyInput AWS API Documentation
    #
    class SemanticMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :memory_record_schema)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Input for semantic override configuration in a memory strategy.
    #
    # @!attribute [rw] extraction
    #   The extraction configuration for a semantic override.
    #   @return [Types::SemanticOverrideExtractionConfigurationInput]
    #
    # @!attribute [rw] consolidation
    #   The consolidation configuration for a semantic override.
    #   @return [Types::SemanticOverrideConsolidationConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SemanticOverrideConfigurationInput AWS API Documentation
    #
    class SemanticOverrideConfigurationInput < Struct.new(
      :extraction,
      :consolidation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for semantic override consolidation configuration in a memory
    # strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for semantic consolidation.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for semantic consolidation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SemanticOverrideConsolidationConfigurationInput AWS API Documentation
    #
    class SemanticOverrideConsolidationConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Input for semantic override extraction configuration in a memory
    # strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for semantic extraction.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for semantic extraction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SemanticOverrideExtractionConfigurationInput AWS API Documentation
    #
    class SemanticOverrideExtractionConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # The server definition for an MCP descriptor. Contains the schema
    # version and inline content for the MCP server configuration.
    #
    # @!attribute [rw] schema_version
    #   The schema version of the server definition based on the MCP
    #   protocol specification. If not specified, the version is
    #   auto-detected from the content.
    #   @return [String]
    #
    # @!attribute [rw] inline_content
    #   The JSON content containing the MCP server definition, conforming to
    #   the MCP protocol specification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ServerDefinition AWS API Documentation
    #
    class ServerDefinition < Struct.new(
      :schema_version,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when a request is made beyond the service
    # quota
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that defines how agent sessions are detected and
    # when they are considered complete for evaluation.
    #
    # @!attribute [rw] session_timeout_minutes
    #   The number of minutes of inactivity after which an agent session is
    #   considered complete and ready for evaluation. Default is 15 minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SessionConfig AWS API Documentation
    #
    class SessionConfig < Struct.new(
      :session_timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The session configuration for an MCP gateway. This structure defines
    # settings that control session behavior.
    #
    # @!attribute [rw] session_timeout_in_seconds
    #   The session timeout in seconds. After this timeout, the session
    #   expires and subsequent requests to this session will receive an
    #   error. The minimum value is 900 seconds (15 minutes), the maximum
    #   value is 28800 seconds (8 hours), and the default value is 3600
    #   seconds (1 hour).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SessionConfiguration AWS API Documentation
    #
    class SessionConfiguration < Struct.new(
      :session_timeout_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a session storage filesystem mounted into the
    # AgentCore Runtime. Session storage provides persistent storage that is
    # preserved across AgentCore Runtime session invocations.
    #
    # @!attribute [rw] mount_path
    #   The mount path for the session storage filesystem inside the
    #   AgentCore Runtime. The path must be under `/mnt` with exactly one
    #   subdirectory level (for example, `/mnt/data`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SessionStorageConfiguration AWS API Documentation
    #
    class SessionStorageConfiguration < Struct.new(
      :mount_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_vault_id
    #   The unique identifier of the token vault to update.
    #   @return [String]
    #
    # @!attribute [rw] kms_configuration
    #   The KMS configuration for the token vault, including the key type
    #   and KMS key ARN.
    #   @return [Types::KmsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SetTokenVaultCMKRequest AWS API Documentation
    #
    class SetTokenVaultCMKRequest < Struct.new(
      :token_vault_id,
      :kms_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] token_vault_id
    #   The ID of the token vault.
    #   @return [String]
    #
    # @!attribute [rw] kms_configuration
    #   The KMS configuration for the token vault.
    #   @return [Types::KmsConfiguration]
    #
    # @!attribute [rw] last_modified_date
    #   The timestamp when the token vault was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SetTokenVaultCMKResponse AWS API Documentation
    #
    class SetTokenVaultCMKResponse < Struct.new(
      :token_vault_id,
      :kms_configuration,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structured skill definition with schema version and content.
    #
    # @!attribute [rw] schema_version
    #   The version of the skill definition schema.
    #   @return [String]
    #
    # @!attribute [rw] inline_content
    #   The JSON content containing the structured skill definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SkillDefinition AWS API Documentation
    #
    class SkillDefinition < Struct.new(
      :schema_version,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The skill markdown definition for an agent skills descriptor.
    #
    # @!attribute [rw] inline_content
    #   The markdown content describing the agent's skills in a
    #   human-readable format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SkillMdDefinition AWS API Documentation
    #
    class SkillMdDefinition < Struct.new(
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration for a Slack OAuth2 provider.
    #
    # @!attribute [rw] client_id
    #   The client ID for the Slack OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret for the Slack OAuth2 provider.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the client secret. This includes the secret ID and the JSON
    #   key used to extract the client secret value from the secret.
    #   Required when `clientSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SlackOauth2ProviderConfigInput AWS API Documentation
    #
    class SlackOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      :client_secret_config,
      :client_secret_source)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Output configuration for a Slack OAuth2 provider.
    #
    # @!attribute [rw] oauth_discovery
    #   The OAuth2 discovery information for the Slack provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @!attribute [rw] client_id
    #   The client ID for the Slack OAuth2 provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SlackOauth2ProviderConfigOutput AWS API Documentation
    #
    class SlackOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that provides the context for
    #   policy generation. This engine's schema and tool context are used
    #   to ensure generated policies are valid and applicable.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource information that provides context for policy
    #   generation. This helps the AI understand the target resources and
    #   generate appropriate access control rules.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] content
    #   The natural language description of the desired policy behavior.
    #   This content is processed by AI to generate corresponding Cedar
    #   policy statements that match the described intent.
    #   @return [Types::Content]
    #
    # @!attribute [rw] name
    #   A customer-assigned name for the policy generation request. This
    #   helps track and identify generation operations, especially when
    #   running multiple generations simultaneously.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure the idempotency of the
    #   request. The AWS SDK automatically generates this token, so you
    #   don't need to provide it in most cases. If you retry a request with
    #   the same client token, the service returns the same response without
    #   starting a duplicate generation.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StartPolicyGenerationRequest AWS API Documentation
    #
    class StartPolicyGenerationRequest < Struct.new(
      :policy_engine_id,
      :resource,
      :content,
      :name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine associated with the started
    #   policy generation.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_id
    #   The unique identifier assigned to the policy generation request for
    #   tracking progress.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-assigned name for the policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] policy_generation_arn
    #   The ARN of the created policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource information associated with the policy generation
    #   request.
    #   @return [Types::Resource]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the policy generation request was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy generation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The initial status of the policy generation request.
    #   @return [String]
    #
    # @!attribute [rw] findings
    #   Initial findings from the policy generation process.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the generation status.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StartPolicyGenerationResponse AWS API Documentation
    #
    class StartPolicyGenerationResponse < Struct.new(
      :policy_engine_id,
      :policy_generation_id,
      :name,
      :policy_generation_arn,
      :resource,
      :created_at,
      :updated_at,
      :status,
      :findings,
      :status_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # A static configuration bundle override.
    #
    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the configuration bundle to apply.
    #   @return [String]
    #
    # @!attribute [rw] bundle_version
    #   The version of the configuration bundle to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StaticOverride AWS API Documentation
    #
    class StaticOverride < Struct.new(
      :bundle_arn,
      :bundle_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A static route to a single gateway target.
    #
    # @!attribute [rw] target_name
    #   The name of the target to route requests to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StaticRoute AWS API Documentation
    #
    class StaticRoute < Struct.new(
      :target_name)
      SENSITIVE = [:target_name]
      include Aws::Structure
    end

    # The configuration for session-sticky routing to a target. Session
    # stickiness routes requests that share a session identifier to the same
    # target.
    #
    # @!attribute [rw] identifier
    #   The expression that identifies where to extract the session
    #   identifier from the request (for example,
    #   `$context.header.x-session-id`).
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The session stickiness timeout, in seconds. After this duration of
    #   inactivity, the session affinity expires. Valid values range from 1
    #   to 86400.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StickinessConfiguration AWS API Documentation
    #
    class StickinessConfiguration < Struct.new(
      :identifier,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information for a memory strategy.
    #
    # @!attribute [rw] type
    #   The type of override for the strategy configuration.
    #   @return [String]
    #
    # @!attribute [rw] extraction
    #   The extraction configuration for the memory strategy.
    #   @return [Types::ExtractionConfiguration]
    #
    # @!attribute [rw] consolidation
    #   The consolidation configuration for the memory strategy.
    #   @return [Types::ConsolidationConfiguration]
    #
    # @!attribute [rw] reflection
    #   The reflection configuration for the memory strategy.
    #   @return [Types::ReflectionConfiguration]
    #
    # @!attribute [rw] self_managed_configuration
    #   Self-managed configuration settings.
    #   @return [Types::SelfManagedConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StrategyConfiguration AWS API Documentation
    #
    class StrategyConfiguration < Struct.new(
      :type,
      :extraction,
      :consolidation,
      :reflection,
      :self_managed_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Supported stream delivery resource types.
    #
    # @note StreamDeliveryResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StreamDeliveryResource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StreamDeliveryResource corresponding to the set member.
    #
    # @!attribute [rw] kinesis
    #   Kinesis Data Stream configuration.
    #   @return [Types::KinesisResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StreamDeliveryResource AWS API Documentation
    #
    class StreamDeliveryResource < Struct.new(
      :kinesis,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Kinesis < StreamDeliveryResource; end
      class Unknown < StreamDeliveryResource; end
    end

    # Configuration for streaming memory record data to external resources.
    #
    # @!attribute [rw] resources
    #   List of stream delivery resource configurations.
    #   @return [Array<Types::StreamDeliveryResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StreamDeliveryResources AWS API Documentation
    #
    class StreamDeliveryResources < Struct.new(
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The streaming configuration for an MCP gateway. This structure defines
    # settings that control response streaming behavior.
    #
    # @!attribute [rw] enable_response_streaming
    #   Indicates whether response streaming is enabled for the gateway.
    #   When set to `true`, the gateway streams responses from targets back
    #   to the client.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StreamingConfiguration AWS API Documentation
    #
    class StreamingConfiguration < Struct.new(
      :enable_response_streaming)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation for STRINGLIST fields.
    #
    # @!attribute [rw] allowed_values
    #   Allowed values for items in this STRINGLIST field.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_items
    #   Maximum number of items in the string list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StringListValidation AWS API Documentation
    #
    class StringListValidation < Struct.new(
      :allowed_values,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation for STRING fields.
    #
    # @!attribute [rw] allowed_values
    #   Allowed values for this STRING field.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StringValidation AWS API Documentation
    #
    class StringValidation < Struct.new(
      :allowed_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stripe Privy configuration — credentials provided by Stripe and Privy.
    #
    # @!attribute [rw] app_id
    #   The app ID provided by Privy.
    #   @return [String]
    #
    # @!attribute [rw] app_secret
    #   The app secret provided by Privy.
    #   @return [String]
    #
    # @!attribute [rw] app_secret_source
    #   The source type of the app secret. Use `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] app_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the app secret. This includes the secret ID and the JSON key
    #   used to extract the app secret value from the secret. Required when
    #   `appSecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] authorization_private_key
    #   The authorization private key for the Stripe Privy integration.
    #   @return [String]
    #
    # @!attribute [rw] authorization_private_key_source
    #   The source type of the authorization private key. Use `MANAGED` if
    #   the secret is managed by the service, or `EXTERNAL` if you manage
    #   the secret yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] authorization_private_key_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the authorization private key. This includes the secret ID
    #   and the JSON key used to extract the authorization private key value
    #   from the secret. Required when `authorizationPrivateKeySource` is
    #   set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] authorization_id
    #   The authorization ID for the Stripe Privy integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StripePrivyConfigurationInput AWS API Documentation
    #
    class StripePrivyConfigurationInput < Struct.new(
      :app_id,
      :app_secret,
      :app_secret_source,
      :app_secret_config,
      :authorization_private_key,
      :authorization_private_key_source,
      :authorization_private_key_config,
      :authorization_id)
      SENSITIVE = [:app_secret, :authorization_private_key]
      include Aws::Structure
    end

    # Stripe Privy configuration output with secret ARNs.
    #
    # @!attribute [rw] app_id
    #   The app ID provided by Privy.
    #   @return [String]
    #
    # @!attribute [rw] app_secret_arn
    #   Contains information about a secret in Amazon Web Services Secrets
    #   Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] app_secret_json_key
    #   The JSON key used to extract the app secret value from the Amazon
    #   Web Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] app_secret_source
    #   The source type of the app secret. Either `MANAGED` if the secret is
    #   managed by the service, or `EXTERNAL` if managed by the user in
    #   Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] authorization_private_key_arn
    #   Contains information about a secret in Amazon Web Services Secrets
    #   Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] authorization_private_key_json_key
    #   The JSON key used to extract the authorization private key value
    #   from the Amazon Web Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] authorization_private_key_source
    #   The source type of the authorization private key. Either `MANAGED`
    #   if the secret is managed by the service, or `EXTERNAL` if managed by
    #   the user in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] authorization_id
    #   The authorization ID for the Stripe Privy integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StripePrivyConfigurationOutput AWS API Documentation
    #
    class StripePrivyConfigurationOutput < Struct.new(
      :app_id,
      :app_secret_arn,
      :app_secret_json_key,
      :app_secret_source,
      :authorization_private_key_arn,
      :authorization_private_key_json_key,
      :authorization_private_key_source,
      :authorization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record. You can
    #   specify either the Amazon Resource Name (ARN) or the ID of the
    #   registry.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to submit for approval. You
    #   can specify either the Amazon Resource Name (ARN) or the ID of the
    #   record.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SubmitRegistryRecordForApprovalRequest AWS API Documentation
    #
    class SubmitRegistryRecordForApprovalRequest < Struct.new(
      :registry_id,
      :record_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry that contains the
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   The Amazon Resource Name (ARN) of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The unique identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The resulting status of the registry record after submission.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the record was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SubmitRegistryRecordForApprovalResponse AWS API Documentation
    #
    class SubmitRegistryRecordForApprovalResponse < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary consolidation override configuration.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for summary consolidation.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for summary consolidation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SummaryConsolidationOverride AWS API Documentation
    #
    class SummaryConsolidationOverride < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Input for creating a summary memory strategy.
    #
    # @!attribute [rw] name
    #   The name of the summary memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the summary memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The namespaces
    #   associated with the summary memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates associated with the summary memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata fields on records generated by this strategy.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SummaryMemoryStrategyInput AWS API Documentation
    #
    class SummaryMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :memory_record_schema)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Input for summary override configuration in a memory strategy.
    #
    # @!attribute [rw] consolidation
    #   The consolidation configuration for a summary override.
    #   @return [Types::SummaryOverrideConsolidationConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SummaryOverrideConfigurationInput AWS API Documentation
    #
    class SummaryOverrideConfigurationInput < Struct.new(
      :consolidation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for summary override consolidation configuration in a memory
    # strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for summary consolidation.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for summary consolidation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SummaryOverrideConsolidationConfigurationInput AWS API Documentation
    #
    class SummaryOverrideConsolidationConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Configuration for synchronizing registry record metadata from an
    # external source.
    #
    # @!attribute [rw] from_url
    #   Configuration for synchronizing from a URL-based source.
    #   @return [Types::FromUrlSynchronizationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SynchronizationConfiguration AWS API Documentation
    #
    class SynchronizationConfiguration < Struct.new(
      :from_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The gateway Identifier.
    #   @return [String]
    #
    # @!attribute [rw] target_id_list
    #   The target ID list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SynchronizeGatewayTargetsRequest AWS API Documentation
    #
    class SynchronizeGatewayTargetsRequest < Struct.new(
      :gateway_identifier,
      :target_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   The gateway targets for synchronization.
    #   @return [Array<Types::GatewayTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SynchronizeGatewayTargetsResponse AWS API Documentation
    #
    class SynchronizeGatewayTargetsResponse < Struct.new(
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # System-managed metadata for rules created by automated processes such
    # as A/B tests.
    #
    # @!attribute [rw] managed_by
    #   The identifier of the system or process that manages this rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SystemManagedBlock AWS API Documentation
    #
    class SystemManagedBlock < Struct.new(
      :managed_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The configuration for a gateway target. This structure defines how the
    # gateway connects to and interacts with the target endpoint.
    #
    # @note TargetConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TargetConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TargetConfiguration corresponding to the set member.
    #
    # @!attribute [rw] mcp
    #   The Model Context Protocol (MCP) configuration for the target. This
    #   configuration defines how the gateway uses MCP to communicate with
    #   the target.
    #   @return [Types::McpTargetConfiguration]
    #
    # @!attribute [rw] http
    #   The HTTP target configuration. Use this to route gateway requests to
    #   an HTTP-based endpoint such as an AgentCore Runtime.
    #   @return [Types::HttpTargetConfiguration]
    #
    # @!attribute [rw] inference
    #   The inference configuration for the target. This configuration
    #   routes requests to a large language model (LLM) provider.
    #   @return [Types::InferenceTargetConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TargetConfiguration AWS API Documentation
    #
    class TargetConfiguration < Struct.new(
      :mcp,
      :http,
      :inference,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Mcp < TargetConfiguration; end
      class Http < TargetConfiguration; end
      class Inference < TargetConfiguration; end
      class Unknown < TargetConfiguration; end
    end

    # Contains summary information about a gateway target. A target
    # represents an endpoint that the gateway can connect to.
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the target.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the target.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the target was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the target was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_priority
    #   Priority for resolving resource URI conflicts across targets. Lower
    #   values take precedence. Defaults to 1000 when not set.
    #   @return [Integer]
    #
    # @!attribute [rw] last_synchronized_at
    #   The timestamp when the target was last synchronized.
    #   @return [Time]
    #
    # @!attribute [rw] authorization_data
    #   Contains the authorization data that is returned when a gateway
    #   target is configured with a credential provider with authorization
    #   code grant type and requires user federation.
    #   @return [Types::AuthorizationData]
    #
    # @!attribute [rw] target_type
    #   The type of the target.
    #   @return [String]
    #
    # @!attribute [rw] listing_mode
    #   The listing mode for the target. MCP resources for `DEFAULT` targets
    #   are cached at the control plane for faster access. MCP resources for
    #   `DYNAMIC` targets are retrieved dynamically when listing tools.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TargetSummary AWS API Documentation
    #
    class TargetSummary < Struct.new(
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
      :listing_mode)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # An entry in a target traffic split configuration.
    #
    # @!attribute [rw] name
    #   The name of this traffic split variant.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The percentage of traffic to route to this variant.
    #   @return [Integer]
    #
    # @!attribute [rw] target_name
    #   The name of the target to route traffic to.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of this traffic split variant.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Key-value metadata associated with this traffic split variant.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TargetTrafficSplitEntry AWS API Documentation
    #
    class TargetTrafficSplitEntry < Struct.new(
      :name,
      :weight,
      :target_name,
      :description,
      :metadata)
      SENSITIVE = [:target_name]
      include Aws::Structure
    end

    # API rate limit has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ThrottledException AWS API Documentation
    #
    class ThrottledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the number of requests exceeds the limit
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trigger configuration based on time.
    #
    # @!attribute [rw] idle_session_timeout
    #   Idle session timeout (seconds) that triggers memory processing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TimeBasedTrigger AWS API Documentation
    #
    class TimeBasedTrigger < Struct.new(
      :idle_session_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trigger configuration based on time.
    #
    # @!attribute [rw] idle_session_timeout
    #   Idle session timeout (seconds) that triggers memory processing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TimeBasedTriggerInput AWS API Documentation
    #
    class TimeBasedTriggerInput < Struct.new(
      :idle_session_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trigger configuration based on tokens.
    #
    # @!attribute [rw] token_count
    #   Number of tokens that trigger memory processing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TokenBasedTrigger AWS API Documentation
    #
    class TokenBasedTrigger < Struct.new(
      :token_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Trigger configuration based on tokens.
    #
    # @!attribute [rw] token_count
    #   Number of tokens that trigger memory processing.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TokenBasedTriggerInput AWS API Documentation
    #
    class TokenBasedTriggerInput < Struct.new(
      :token_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for RFC 8693 token exchange.
    #
    # @!attribute [rw] actor_token_content
    #   The content type for the actor token in the token exchange.
    #   @return [String]
    #
    # @!attribute [rw] actor_token_scopes
    #   The scopes for the actor token. Only valid when actorTokenContent is
    #   M2M.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TokenExchangeGrantTypeConfigType AWS API Documentation
    #
    class TokenExchangeGrantTypeConfigType < Struct.new(
      :actor_token_content,
      :actor_token_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tool definition for a gateway target. This structure defines a tool
    # that the target exposes through the Model Context Protocol.
    #
    # @!attribute [rw] name
    #   The name of the tool. This name identifies the tool in the Model
    #   Context Protocol.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the tool. This description provides information
    #   about the purpose and usage of the tool.
    #   @return [String]
    #
    # @!attribute [rw] input_schema
    #   The input schema for the tool. This schema defines the structure of
    #   the input that the tool accepts.
    #   @return [Types::SchemaDefinition]
    #
    # @!attribute [rw] output_schema
    #   The output schema for the tool. This schema defines the structure of
    #   the output that the tool produces.
    #   @return [Types::SchemaDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ToolDefinition AWS API Documentation
    #
    class ToolDefinition < Struct.new(
      :name,
      :description,
      :input_schema,
      :output_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tool schema for a gateway target. This structure defines the schema
    # for a tool that the target exposes through the Model Context Protocol.
    #
    # @note ToolSchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ToolSchema is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolSchema corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   The Amazon S3 location of the tool schema. This location contains
    #   the schema definition file.
    #   @return [Types::S3Configuration]
    #
    # @!attribute [rw] inline_payload
    #   The inline payload of the tool schema. This payload contains the
    #   schema definition directly in the request.
    #   @return [Array<Types::ToolDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ToolSchema AWS API Documentation
    #
    class ToolSchema < Struct.new(
      :s3,
      :inline_payload,
      :unknown)
      SENSITIVE = [:inline_payload]
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ToolSchema; end
      class InlinePayload < ToolSchema; end
      class Unknown < ToolSchema; end
    end

    # The tools definition for an MCP descriptor. Contains the protocol
    # version and inline content describing the available tools.
    #
    # @!attribute [rw] protocol_version
    #   The protocol version of the tools definition based on the MCP
    #   protocol specification. If not specified, the version is
    #   auto-detected from the content.
    #   @return [String]
    #
    # @!attribute [rw] inline_content
    #   The JSON content containing the MCP tools definition, conforming to
    #   the MCP protocol specification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ToolsDefinition AWS API Documentation
    #
    class ToolsDefinition < Struct.new(
      :protocol_version,
      :inline_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a file system to mount into the session by providing exactly
    # one of the following:
    #
    # * `s3FilesConfiguration` - Mounts an Amazon Simple Storage Service
    #   (Amazon S3) Files access point.
    #
    # * `efsConfiguration` - Mounts an Amazon Elastic File System (Amazon
    #   EFS) access point.
    #
    # @note ToolsFileSystemConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ToolsFileSystemConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ToolsFileSystemConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3_files_configuration
    #   The configuration for mounting your own Amazon Simple Storage
    #   Service (Amazon S3) Files access point into the session.
    #   @return [Types::S3FilesConfiguration]
    #
    # @!attribute [rw] efs_configuration
    #   The configuration for mounting your own Amazon Elastic File System
    #   (Amazon EFS) access point into the session.
    #   @return [Types::EfsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ToolsFileSystemConfiguration AWS API Documentation
    #
    class ToolsFileSystemConfiguration < Struct.new(
      :s3_files_configuration,
      :efs_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3FilesConfiguration < ToolsFileSystemConfiguration; end
      class EfsConfiguration < ToolsFileSystemConfiguration; end
      class Unknown < ToolsFileSystemConfiguration; end
    end

    # An entry in a traffic split configuration, defining a named variant
    # with a weight and configuration bundle reference.
    #
    # @!attribute [rw] name
    #   The name of this traffic split variant.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The percentage of traffic to route to this variant. Weights across
    #   all entries must sum to 100.
    #   @return [Integer]
    #
    # @!attribute [rw] configuration_bundle
    #   The configuration bundle reference for this variant.
    #   @return [Types::ConfigurationBundleReference]
    #
    # @!attribute [rw] description
    #   The description of this traffic split variant.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   Key-value metadata associated with this traffic split variant.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TrafficSplitEntry AWS API Documentation
    #
    class TrafficSplitEntry < Struct.new(
      :name,
      :weight,
      :configuration_bundle,
      :description,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Condition that triggers memory processing.
    #
    # @note TriggerCondition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TriggerCondition corresponding to the set member.
    #
    # @!attribute [rw] message_based_trigger
    #   Message based trigger configuration.
    #   @return [Types::MessageBasedTrigger]
    #
    # @!attribute [rw] token_based_trigger
    #   Token based trigger configuration.
    #   @return [Types::TokenBasedTrigger]
    #
    # @!attribute [rw] time_based_trigger
    #   Time based trigger configuration.
    #   @return [Types::TimeBasedTrigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TriggerCondition AWS API Documentation
    #
    class TriggerCondition < Struct.new(
      :message_based_trigger,
      :token_based_trigger,
      :time_based_trigger,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MessageBasedTrigger < TriggerCondition; end
      class TokenBasedTrigger < TriggerCondition; end
      class TimeBasedTrigger < TriggerCondition; end
      class Unknown < TriggerCondition; end
    end

    # Condition that triggers memory processing.
    #
    # @note TriggerConditionInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] message_based_trigger
    #   Message based trigger configuration.
    #   @return [Types::MessageBasedTriggerInput]
    #
    # @!attribute [rw] token_based_trigger
    #   Token based trigger configuration.
    #   @return [Types::TokenBasedTriggerInput]
    #
    # @!attribute [rw] time_based_trigger
    #   Time based trigger configuration.
    #   @return [Types::TimeBasedTriggerInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TriggerConditionInput AWS API Documentation
    #
    class TriggerConditionInput < Struct.new(
      :message_based_trigger,
      :token_based_trigger,
      :time_based_trigger,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MessageBasedTrigger < TriggerConditionInput; end
      class TokenBasedTrigger < TriggerConditionInput; end
      class TimeBasedTrigger < TriggerConditionInput; end
      class Unknown < TriggerConditionInput; end
    end

    # This exception is thrown when the JWT bearer token is invalid or not
    # found for OAuth bearer token based access
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Unit AWS API Documentation
    #
    class Unit < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime associated with the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the AgentCore Runtime endpoint to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_version
    #   The updated version of the AgentCore Runtime for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateAgentRuntimeEndpointRequest AWS API Documentation
    #
    class UpdateAgentRuntimeEndpointRequest < Struct.new(
      :agent_runtime_id,
      :endpoint_name,
      :agent_runtime_version,
      :description,
      :client_token)
      SENSITIVE = [:endpoint_name]
      include Aws::Structure
    end

    # @!attribute [rw] live_version
    #   The currently deployed version of the AgentCore Runtime on the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The target version of the AgentCore Runtime for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_endpoint_arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the updated AgentCore Runtime endpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the AgentCore Runtime endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the AgentCore Runtime endpoint was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateAgentRuntimeEndpointResponse AWS API Documentation
    #
    class UpdateAgentRuntimeEndpointResponse < Struct.new(
      :live_version,
      :target_version,
      :agent_runtime_endpoint_arn,
      :agent_runtime_arn,
      :status,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_artifact
    #   The updated artifact of the AgentCore Runtime.
    #   @return [Types::AgentRuntimeArtifact]
    #
    # @!attribute [rw] role_arn
    #   The updated IAM role ARN that provides permissions for the AgentCore
    #   Runtime.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The updated network configuration for the AgentCore Runtime.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] description
    #   The updated description of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The updated authorizer configuration for the AgentCore Runtime.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] request_header_configuration
    #   The updated configuration for HTTP request headers that will be
    #   passed through to the runtime.
    #   @return [Types::RequestHeaderConfiguration]
    #
    # @!attribute [rw] protocol_configuration
    #   The protocol configuration for an agent runtime. This structure
    #   defines how the agent runtime communicates with clients.
    #   @return [Types::ProtocolConfiguration]
    #
    # @!attribute [rw] lifecycle_configuration
    #   The updated life cycle configuration for the AgentCore Runtime.
    #   @return [Types::LifecycleConfiguration]
    #
    # @!attribute [rw] metadata_configuration
    #   The updated configuration for microVM Metadata Service (MMDS)
    #   settings for the AgentCore Runtime.
    #   @return [Types::RuntimeMetadataConfiguration]
    #
    # @!attribute [rw] environment_variables
    #   Updated environment variables to set in the AgentCore Runtime
    #   environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] filesystem_configurations
    #   The updated filesystem configurations to mount into the AgentCore
    #   Runtime.
    #   @return [Array<Types::FilesystemConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateAgentRuntimeRequest AWS API Documentation
    #
    class UpdateAgentRuntimeRequest < Struct.new(
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
      :client_token)
      SENSITIVE = [:description, :environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_arn
    #   The Amazon Resource Name (ARN) of the updated AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the updated AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the updated AgentCore Runtime.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] agent_runtime_version
    #   The version of the updated AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the AgentCore Runtime was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the AgentCore Runtime was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the updated AgentCore Runtime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateAgentRuntimeResponse AWS API Documentation
    #
    class UpdateAgentRuntimeResponse < Struct.new(
      :agent_runtime_arn,
      :agent_runtime_id,
      :workload_identity_details,
      :agent_runtime_version,
      :created_at,
      :last_updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the API key credential provider to update.
    #   @return [String]
    #
    # @!attribute [rw] api_key
    #   The new API key to use for authentication. This value replaces the
    #   existing API key and is encrypted and stored securely.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_config
    #   A reference to the Amazon Web Services Secrets Manager secret that
    #   stores the API key. This includes the secret ID and the JSON key
    #   used to extract the API key value from the secret. Required when
    #   `apiKeySecretSource` is set to `EXTERNAL`.
    #   @return [Types::SecretReference]
    #
    # @!attribute [rw] api_key_secret_source
    #   The source type of the API key secret. Use `MANAGED` if the secret
    #   is managed by the service, or `EXTERNAL` if you manage the secret
    #   yourself in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateApiKeyCredentialProviderRequest AWS API Documentation
    #
    class UpdateApiKeyCredentialProviderRequest < Struct.new(
      :name,
      :api_key,
      :api_key_secret_config,
      :api_key_secret_source)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # @!attribute [rw] api_key_secret_arn
    #   The Amazon Resource Name (ARN) of the API key secret in Amazon Web
    #   Services Secrets Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] api_key_secret_json_key
    #   The JSON key used to extract the API key value from the Amazon Web
    #   Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] api_key_secret_source
    #   The source type of the API key secret. Either `MANAGED` if the
    #   secret is managed by the service, or `EXTERNAL` if managed by the
    #   user in Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the API key credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the API key credential provider.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the API key credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the API key credential provider was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateApiKeyCredentialProviderResponse AWS API Documentation
    #
    class UpdateApiKeyCredentialProviderResponse < Struct.new(
      :api_key_secret_arn,
      :api_key_secret_json_key,
      :api_key_secret_source,
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The unique identifier of the configuration bundle to update.
    #   @return [String]
    #
    # @!attribute [rw] bundle_name
    #   The updated name for the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   The updated component configurations. Creates a new version of the
    #   bundle.
    #   @return [Hash<String,Types::ComponentConfiguration>]
    #
    # @!attribute [rw] parent_version_ids
    #   A list of parent version identifiers for lineage tracking. Regular
    #   commits have a single parent. Merge commits have two parents: the
    #   target branch parent and the source branch parent. If the branch
    #   already exists, the first parent must be the latest version on that
    #   branch.
    #   @return [Array<String>]
    #
    # @!attribute [rw] branch_name
    #   The branch name for this version. If not specified, inherits the
    #   parent's branch or defaults to `mainline`.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   A commit message describing the changes in this version.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The source that created this version, including the source name and
    #   optional ARN.
    #   @return [Types::VersionCreatedBySource]
    #
    # @!attribute [rw] kms_key_arn
    #   Optional KMS key ARN for encrypting component configurations. If
    #   provided, components will be encrypted with this key. If the bundle
    #   already has a KMS key, this rotates to the new key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateConfigurationBundleRequest AWS API Documentation
    #
    class UpdateConfigurationBundleRequest < Struct.new(
      :client_token,
      :bundle_id,
      :bundle_name,
      :description,
      :components,
      :parent_version_ids,
      :branch_name,
      :commit_message,
      :created_by,
      :kms_key_arn)
      SENSITIVE = [:description, :components]
      include Aws::Structure
    end

    # @!attribute [rw] bundle_arn
    #   The Amazon Resource Name (ARN) of the updated configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] bundle_id
    #   The unique identifier of the updated configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The new version identifier created by this update.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the configuration bundle was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateConfigurationBundleResponse AWS API Documentation
    #
    class UpdateConfigurationBundleResponse < Struct.new(
      :bundle_arn,
      :bundle_id,
      :version_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] examples
    #   Examples to update. Each element is a JSON object containing a
    #   required `exampleId` field identifying the existing example, plus
    #   the replacement fields. Maximum 1000 examples per call.
    #   @return [Array<Hash,Array,String,Numeric,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateDatasetExamplesRequest AWS API Documentation
    #
    class UpdateDatasetExamplesRequest < Struct.new(
      :dataset_id,
      :client_token,
      :examples)
      SENSITIVE = [:examples]
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] updated_count
    #   The number of examples updated.
    #   @return [Integer]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the examples were updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateDatasetExamplesResponse AWS API Documentation
    #
    class UpdateDatasetExamplesResponse < Struct.new(
      :dataset_arn,
      :dataset_id,
      :status,
      :updated_count,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_id
    #   The unique identifier of the dataset to update.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateDatasetRequest AWS API Documentation
    #
    class UpdateDatasetRequest < Struct.new(
      :dataset_id,
      :client_token,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The Amazon Resource Name (ARN) of the updated dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_id
    #   The unique identifier of the updated dataset.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the dataset was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateDatasetResponse AWS API Documentation
    #
    class UpdateDatasetResponse < Struct.new(
      :dataset_arn,
      :dataset_id,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_config
    #   The updated configuration for the evaluator. Specify either
    #   LLM-as-a-Judge settings with instructions, rating scale, and model
    #   configuration, or code-based settings with a customer-managed Lambda
    #   function.
    #   @return [Types::EvaluatorConfig]
    #
    # @!attribute [rw] level
    #   The updated evaluation level (`TOOL_CALL`, `TRACE`, or `SESSION`)
    #   that determines the scope of evaluation.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of a customer managed KMS key to use
    #   for encrypting sensitive evaluator data. Specify a new key ARN to
    #   rotate the encryption key, or specify a key ARN to add encryption to
    #   an evaluator that was previously created without one. When you
    #   rotate to a new key, the service decrypts the existing data with the
    #   old key and re-encrypts it with the new key. Only symmetric
    #   encryption KMS keys are supported. For more information, see
    #   [Encryption at rest for AgentCore Evaluations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/evaluations-encryption.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateEvaluatorRequest AWS API Documentation
    #
    class UpdateEvaluatorRequest < Struct.new(
      :client_token,
      :evaluator_id,
      :description,
      :evaluator_config,
      :level,
      :kms_key_arn)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] evaluator_arn
    #   The Amazon Resource Name (ARN) of the updated evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the updated evaluator.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the evaluator was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the evaluator update operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateEvaluatorResponse AWS API Documentation
    #
    class UpdateEvaluatorResponse < Struct.new(
      :evaluator_arn,
      :evaluator_id,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the gateway. This name must be the same as the one when
    #   the gateway was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The updated IAM role ARN that provides permissions for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The updated protocol type for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_configuration
    #   The configuration for a gateway protocol. This structure defines how
    #   the gateway communicates with external services.
    #   @return [Types::GatewayProtocolConfiguration]
    #
    # @!attribute [rw] authorizer_type
    #   The updated authorizer type for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The updated authorizer configuration for the gateway.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] kms_key_arn
    #   The updated ARN of the KMS key used to encrypt the gateway.
    #   @return [String]
    #
    # @!attribute [rw] custom_transform_configuration
    #   The updated custom transformation configuration for the gateway.
    #   This configuration defines how the gateway transforms requests and
    #   responses.
    #   @return [Types::CustomTransformConfiguration]
    #
    # @!attribute [rw] interceptor_configurations
    #   The updated interceptor configurations for the gateway.
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    #
    # @!attribute [rw] policy_engine_configuration
    #   The updated policy engine configuration for the gateway. A policy
    #   engine is a collection of policies that evaluates and authorizes
    #   agent tool calls. When associated with a gateway, the policy engine
    #   intercepts all agent requests and determines whether to allow or
    #   deny each action based on the defined policies.
    #   @return [Types::GatewayPolicyEngineConfiguration]
    #
    # @!attribute [rw] exception_level
    #   The level of detail in error messages returned when invoking the
    #   gateway.
    #
    #   * If the value is `DEBUG`, granular exception messages are returned
    #     to help a user debug the gateway.
    #
    #   * If the value is omitted, a generic error message is returned to
    #     the end user.
    #   @return [String]
    #
    # @!attribute [rw] waf_configuration
    #   The updated Amazon Web Services WAF configuration for the gateway.
    #   @return [Types::WafConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayRequest AWS API Documentation
    #
    class UpdateGatewayRequest < Struct.new(
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
      :waf_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the updated gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_id
    #   The unique identifier of the updated gateway.
    #   @return [String]
    #
    # @!attribute [rw] gateway_url
    #   An endpoint for invoking the updated gateway.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the gateway was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the gateway was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the updated gateway.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The reasons for the current status of the updated gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The updated IAM role ARN that provides permissions for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The updated protocol type for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] protocol_configuration
    #   The configuration for a gateway protocol. This structure defines how
    #   the gateway communicates with external services.
    #   @return [Types::GatewayProtocolConfiguration]
    #
    # @!attribute [rw] authorizer_type
    #   The updated authorizer type for the gateway.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The updated authorizer configuration for the gateway.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] kms_key_arn
    #   The updated ARN of the KMS key used to encrypt the gateway.
    #   @return [String]
    #
    # @!attribute [rw] custom_transform_configuration
    #   The custom transformation configuration for the gateway. This
    #   configuration defines how the gateway transforms requests and
    #   responses.
    #   @return [Types::CustomTransformConfiguration]
    #
    # @!attribute [rw] interceptor_configurations
    #   The updated interceptor configurations for the gateway.
    #   @return [Array<Types::GatewayInterceptorConfiguration>]
    #
    # @!attribute [rw] policy_engine_configuration
    #   The updated policy engine configuration for the gateway.
    #   @return [Types::GatewayPolicyEngineConfiguration]
    #
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the updated gateway.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] exception_level
    #   The level of detail in error messages returned when invoking the
    #   gateway.
    #
    #   * If the value is `DEBUG`, granular exception messages are returned
    #     to help a user debug the gateway.
    #
    #   * If the value is omitted, a generic error message is returned to
    #     the end user.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services WAF web
    #   ACL associated with the gateway.
    #   @return [String]
    #
    # @!attribute [rw] waf_configuration
    #   The Amazon Web Services WAF configuration for the gateway.
    #   @return [Types::WafConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayResponse AWS API Documentation
    #
    class UpdateGatewayResponse < Struct.new(
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
      :waf_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The identifier of the gateway containing the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the rule to update.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The updated priority of the rule.
    #   @return [Integer]
    #
    # @!attribute [rw] conditions
    #   The updated conditions for the rule.
    #   @return [Array<Types::Condition>]
    #
    # @!attribute [rw] actions
    #   The updated actions for the rule.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   The updated description of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayRuleRequest AWS API Documentation
    #
    class UpdateGatewayRuleRequest < Struct.new(
      :gateway_identifier,
      :rule_id,
      :priority,
      :conditions,
      :actions,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Create response excludes updatedAt (redundant on create). Get/Update
    # responses include it via their own output structures.
    #
    # @!attribute [rw] rule_id
    #   The unique identifier of the gateway rule.
    #   @return [String]
    #
    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway that the rule belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the rule. Rules are evaluated in order of priority,
    #   with lower numbers evaluated first.
    #   @return [Integer]
    #
    # @!attribute [rw] conditions
    #   The conditions that must be met for the rule to apply.
    #   @return [Array<Types::Condition>]
    #
    # @!attribute [rw] actions
    #   The actions to take when the rule conditions are met.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   The description of the gateway rule.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the rule was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the rule.
    #   @return [String]
    #
    # @!attribute [rw] system
    #   System-managed metadata for rules created by automated processes.
    #   @return [Types::SystemManagedBlock]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the rule was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayRuleResponse AWS API Documentation
    #
    class UpdateGatewayRuleResponse < Struct.new(
      :rule_id,
      :gateway_arn,
      :priority,
      :conditions,
      :actions,
      :description,
      :created_at,
      :status,
      :system,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] gateway_identifier
    #   The unique identifier of the gateway associated with the target.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the gateway target to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name for the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   The configuration for a gateway target. This structure defines how
    #   the gateway connects to and interacts with the target endpoint.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The updated credential provider configurations for the gateway
    #   target.
    #   @return [Array<Types::CredentialProviderConfiguration>]
    #
    # @!attribute [rw] metadata_configuration
    #   Configuration for HTTP header and query parameter propagation to the
    #   gateway target.
    #   @return [Types::MetadataConfiguration]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint configuration for the gateway target. Use this
    #   to connect the gateway to private resources in your VPC.
    #   @return [Types::PrivateEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayTargetRequest AWS API Documentation
    #
    class UpdateGatewayTargetRequest < Struct.new(
      :gateway_identifier,
      :target_id,
      :name,
      :description,
      :target_configuration,
      :credential_provider_configurations,
      :metadata_configuration,
      :private_endpoint)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] gateway_arn
    #   The Amazon Resource Name (ARN) of the gateway.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The unique identifier of the updated gateway target.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the gateway target was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the gateway target was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the updated gateway target.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   The reasons for the current status of the updated gateway target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The updated name of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the gateway target.
    #   @return [String]
    #
    # @!attribute [rw] target_configuration
    #   The configuration for a gateway target. This structure defines how
    #   the gateway connects to and interacts with the target endpoint.
    #   @return [Types::TargetConfiguration]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The updated credential provider configurations for the gateway
    #   target.
    #   @return [Array<Types::CredentialProviderConfiguration>]
    #
    # @!attribute [rw] last_synchronized_at
    #   The date and time at which the targets were last synchronized.
    #   @return [Time]
    #
    # @!attribute [rw] metadata_configuration
    #   The metadata configuration that was applied to the gateway target.
    #   @return [Types::MetadataConfiguration]
    #
    # @!attribute [rw] private_endpoint
    #   The private endpoint configuration for the gateway target.
    #   @return [Types::PrivateEndpoint]
    #
    # @!attribute [rw] private_endpoint_managed_resources
    #   The managed resources created by the gateway for private endpoint
    #   connectivity.
    #   @return [Array<Types::ManagedResourceDetails>]
    #
    # @!attribute [rw] authorization_data
    #   OAuth2 authorization data for the updated gateway target. This data
    #   is returned when a target is configured with a credential provider
    #   with authorization code grant type and requires user federation.
    #   @return [Types::AuthorizationData]
    #
    # @!attribute [rw] protocol_type
    #   The protocol type of the updated gateway target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayTargetResponse AWS API Documentation
    #
    class UpdateGatewayTargetResponse < Struct.new(
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
      :protocol_type)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness that the endpoint belongs to.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint to update.
    #   @return [String]
    #
    # @!attribute [rw] target_version
    #   The harness version that the endpoint points to. If not specified,
    #   the existing value is retained.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the endpoint. If not specified, the existing value
    #   is retained.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateHarnessEndpointRequest AWS API Documentation
    #
    class UpdateHarnessEndpointRequest < Struct.new(
      :harness_id,
      :endpoint_name,
      :target_version,
      :description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The updated endpoint.
    #   @return [Types::HarnessEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateHarnessEndpointResponse AWS API Documentation
    #
    class UpdateHarnessEndpointResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] harness_id
    #   The ID of the harness to update.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM role that the harness assumes when running. If
    #   not specified, the existing value is retained.
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   The compute environment configuration for the harness. If not
    #   specified, the existing value is retained.
    #   @return [Types::HarnessEnvironmentProviderRequest]
    #
    # @!attribute [rw] environment_artifact
    #   The environment artifact for the harness. Use the optionalValue
    #   wrapper to set a new value, or set it to null to clear the existing
    #   configuration.
    #   @return [Types::UpdatedHarnessEnvironmentArtifact]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables to set in the harness runtime environment. If
    #   specified, this replaces all existing environment variables. If not
    #   specified, the existing value is retained.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] authorizer_configuration
    #   Wrapper for updating an optional AuthorizerConfiguration field with
    #   PATCH semantics. When present in an update request, the authorizer
    #   configuration is replaced with optionalValue. When absent, the
    #   authorizer configuration is left unchanged. To unset, include the
    #   wrapper with optionalValue not specified.
    #   @return [Types::UpdatedAuthorizerConfiguration]
    #
    # @!attribute [rw] model
    #   The model configuration for the harness. If not specified, the
    #   existing value is retained.
    #   @return [Types::HarnessModelConfiguration]
    #
    # @!attribute [rw] system_prompt
    #   The system prompt that defines the agent's behavior. If not
    #   specified, the existing value is retained.
    #   @return [Array<Types::HarnessSystemContentBlock>]
    #
    # @!attribute [rw] tools
    #   The tools available to the agent. If specified, this replaces all
    #   existing tools. If not specified, the existing value is retained.
    #   @return [Array<Types::HarnessTool>]
    #
    # @!attribute [rw] skills
    #   The skills available to the agent. If specified, this replaces all
    #   existing skills. If not specified, the existing value is retained.
    #   @return [Array<Types::HarnessSkill>]
    #
    # @!attribute [rw] allowed_tools
    #   The tools that the agent is allowed to use. If specified, this
    #   replaces all existing allowed tools. If not specified, the existing
    #   value is retained.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory
    #   The AgentCore Memory configuration. Use the optionalValue wrapper to
    #   set a new value, or set it to null to clear the existing
    #   configuration.
    #   @return [Types::UpdatedHarnessMemoryConfiguration]
    #
    # @!attribute [rw] truncation
    #   The truncation configuration for managing conversation context. If
    #   not specified, the existing value is retained.
    #   @return [Types::HarnessTruncationConfiguration]
    #
    # @!attribute [rw] max_iterations
    #   The maximum number of iterations the agent loop can execute per
    #   invocation. If not specified, the existing value is retained.
    #   @return [Integer]
    #
    # @!attribute [rw] max_tokens
    #   The maximum total number of output tokens the agent can generate
    #   across all model calls within a single invocation. If not specified,
    #   the existing value is retained.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_seconds
    #   The maximum duration in seconds for the agent loop execution per
    #   invocation. If not specified, the existing value is retained.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateHarnessRequest AWS API Documentation
    #
    class UpdateHarnessRequest < Struct.new(
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
      :max_iterations,
      :max_tokens,
      :timeout_seconds)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] harness
    #   The updated harness.
    #   @return [Types::Harness]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateHarnessResponse AWS API Documentation
    #
    class UpdateHarnessResponse < Struct.new(
      :harness)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A client token is used for keeping track of idempotent requests. It
    #   can contain a session id which can be around 250 chars, combined
    #   with a unique AWS identifier.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] memory_id
    #   The unique identifier of the memory to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the AgentCore Memory resource.
    #   @return [String]
    #
    # @!attribute [rw] event_expiry_duration
    #   The number of days after which memory events will expire, between 7
    #   and 365 days.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_execution_role_arn
    #   The ARN of the IAM role that provides permissions for the AgentCore
    #   Memory resource.
    #   @return [String]
    #
    # @!attribute [rw] memory_strategies
    #   The memory strategies to add, modify, or delete.
    #   @return [Types::ModifyMemoryStrategies]
    #
    # @!attribute [rw] add_indexed_keys
    #   Additional metadata keys to index. Previously indexed keys cannot be
    #   removed.
    #   @return [Array<Types::IndexedKey>]
    #
    # @!attribute [rw] stream_delivery_resources
    #   Configuration for streaming memory record data to external
    #   resources.
    #   @return [Types::StreamDeliveryResources]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateMemoryInput AWS API Documentation
    #
    class UpdateMemoryInput < Struct.new(
      :client_token,
      :memory_id,
      :description,
      :event_expiry_duration,
      :memory_execution_role_arn,
      :memory_strategies,
      :add_indexed_keys,
      :stream_delivery_resources)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] memory
    #   The updated AgentCore Memory resource details.
    #   @return [Types::Memory]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateMemoryOutput AWS API Documentation
    #
    class UpdateMemoryOutput < Struct.new(
      :memory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the OAuth2 credential provider to update.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] oauth2_provider_config_input
    #   The configuration input for the OAuth2 provider.
    #   @return [Types::Oauth2ProviderConfigInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateOauth2CredentialProviderRequest AWS API Documentation
    #
    class UpdateOauth2CredentialProviderRequest < Struct.new(
      :name,
      :credential_provider_vendor,
      :oauth2_provider_config_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_secret_arn
    #   The Amazon Resource Name (ARN) of the client secret in Amazon Web
    #   Services Secrets Manager.
    #   @return [Types::Secret]
    #
    # @!attribute [rw] client_secret_json_key
    #   The JSON key used to extract the client secret value from the Amazon
    #   Web Services Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] client_secret_source
    #   The source type of the client secret. Either `MANAGED` if the secret
    #   is managed by the service, or `EXTERNAL` if managed by the user in
    #   Amazon Web Services Secrets Manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the OAuth2 credential provider.
    #   @return [String]
    #
    # @!attribute [rw] callback_url
    #   Callback URL to register on the OAuth2 credential provider as an
    #   allowed callback URL. This URL is where the OAuth2 authorization
    #   server redirects users after they complete the authorization flow.
    #   @return [String]
    #
    # @!attribute [rw] oauth2_provider_config_output
    #   The configuration output for the OAuth2 provider.
    #   @return [Types::Oauth2ProviderConfigOutput]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the OAuth2 credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the OAuth2 credential provider was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the updated OAuth2 credential provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateOauth2CredentialProviderResponse AWS API Documentation
    #
    class UpdateOauth2CredentialProviderResponse < Struct.new(
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_id
    #   The unique identifier of the online evaluation configuration to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] rule
    #   The updated evaluation rule containing sampling configuration,
    #   filters, and session settings.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] data_source_config
    #   The updated data source configuration specifying CloudWatch log
    #   groups and service names to monitor.
    #   @return [Types::DataSourceConfig]
    #
    # @!attribute [rw] evaluators
    #   The updated list of evaluators to apply during online evaluation.
    #   @return [Array<Types::EvaluatorReference>]
    #
    # @!attribute [rw] insights
    #   The updated list of insight types to run against agent sessions.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] clustering_config
    #   The updated clustering configuration for periodic batch evaluation.
    #   @return [Types::ClusteringConfig]
    #
    # @!attribute [rw] evaluation_execution_role_arn
    #   The updated Amazon Resource Name (ARN) of the IAM role used for
    #   evaluation execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The updated execution status to enable or disable the online
    #   evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateOnlineEvaluationConfigRequest AWS API Documentation
    #
    class UpdateOnlineEvaluationConfigRequest < Struct.new(
      :client_token,
      :online_evaluation_config_id,
      :description,
      :rule,
      :data_source_config,
      :evaluators,
      :insights,
      :clustering_config,
      :evaluation_execution_role_arn,
      :execution_status)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] online_evaluation_config_arn
    #   The Amazon Resource Name (ARN) of the updated online evaluation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] online_evaluation_config_id
    #   The unique identifier of the updated online evaluation
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the online evaluation configuration was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the online evaluation configuration.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The execution status indicating whether the online evaluation is
    #   currently running.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for failure if the online evaluation configuration update
    #   or execution failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateOnlineEvaluationConfigResponse AWS API Documentation
    #
    class UpdateOnlineEvaluationConfigResponse < Struct.new(
      :online_evaluation_config_arn,
      :online_evaluation_config_id,
      :updated_at,
      :status,
      :execution_status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the parent payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_connector_id
    #   The unique identifier of the payment connector to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The updated type of the payment connector.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The updated credential provider configurations for the payment
    #   connector.
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentConnectorRequest AWS API Documentation
    #
    class UpdatePaymentConnectorRequest < Struct.new(
      :payment_manager_id,
      :payment_connector_id,
      :description,
      :type,
      :credential_provider_configurations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_connector_id
    #   The unique identifier of the updated payment connector.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the parent payment manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated payment connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the updated payment connector.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_configurations
    #   The credential provider configurations for the updated payment
    #   connector.
    #   @return [Array<Types::CredentialsProviderConfiguration>]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the payment connector was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the updated payment connector. Possible values
    #   include `CREATING`, `READY`, `UPDATING`, `DELETING`,
    #   `CREATE_FAILED`, `UPDATE_FAILED`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentConnectorResponse AWS API Documentation
    #
    class UpdatePaymentConnectorResponse < Struct.new(
      :payment_connector_id,
      :payment_manager_id,
      :name,
      :type,
      :credential_provider_configurations,
      :last_updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the payment credential provider to update.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor type for the payment credential provider (e.g.,
    #   CoinbaseCDP, StripePrivy).
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration_input
    #   Configuration specific to the vendor, including API credentials.
    #   @return [Types::PaymentProviderConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentCredentialProviderRequest AWS API Documentation
    #
    class UpdatePaymentCredentialProviderRequest < Struct.new(
      :name,
      :credential_provider_vendor,
      :provider_configuration_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the updated payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_vendor
    #   The vendor type for the updated payment credential provider.
    #   @return [String]
    #
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the updated payment credential
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration_output
    #   Output configuration (contains secret ARNs, excludes actual secret
    #   values).
    #   @return [Types::PaymentProviderConfigurationOutput]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the payment credential provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the payment credential provider was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentCredentialProviderResponse AWS API Documentation
    #
    class UpdatePaymentCredentialProviderResponse < Struct.new(
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :provider_configuration_output,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the payment manager to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The updated authorizer type for the payment manager.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The updated authorizer configuration for the payment manager.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The updated Amazon Resource Name (ARN) of the IAM role for the
    #   payment manager.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If you don't specify this field, a
    #   value is randomly generated for you. If this token matches a
    #   previous request, the service ignores the request, but doesn't
    #   return an error. For more information, see [Ensuring
    #   idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentManagerRequest AWS API Documentation
    #
    class UpdatePaymentManagerRequest < Struct.new(
      :payment_manager_id,
      :description,
      :authorizer_type,
      :authorizer_configuration,
      :role_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payment_manager_arn
    #   The Amazon Resource Name (ARN) of the updated payment manager.
    #   @return [String]
    #
    # @!attribute [rw] payment_manager_id
    #   The unique identifier of the updated payment manager.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated payment manager.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer for the updated payment manager.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   updated payment manager.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_details
    #   The information about the workload identity.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the payment manager was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the updated payment manager. Possible values
    #   include `CREATING`, `READY`, `UPDATING`, `DELETING`,
    #   `CREATE_FAILED`, `UPDATE_FAILED`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePaymentManagerResponse AWS API Documentation
    #
    class UpdatePaymentManagerResponse < Struct.new(
      :payment_manager_arn,
      :payment_manager_id,
      :name,
      :authorizer_type,
      :role_arn,
      :workload_identity_details,
      :last_updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the policy engine to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the policy engine.
    #   @return [Types::UpdatedDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicyEngineRequest AWS API Documentation
    #
    class UpdatePolicyEngineRequest < Struct.new(
      :policy_engine_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the updated policy engine.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated policy engine.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The original creation timestamp of the policy engine.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy engine was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] policy_engine_arn
    #   The ARN of the updated policy engine.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the updated policy engine.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   policy engine data.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the policy engine.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the update status.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicyEngineResponse AWS API Documentation
    #
    class UpdatePolicyEngineResponse < Struct.new(
      :policy_engine_id,
      :name,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :encryption_key_arn,
      :description,
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine that manages the policy to be
    #   updated. This ensures the policy is updated within the correct
    #   policy engine context.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The unique identifier of the policy to be updated. This must be a
    #   valid policy ID that exists within the specified policy engine.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new human-readable description for the policy. This optional
    #   field allows updating the policy's documentation while keeping the
    #   same policy logic.
    #   @return [Types::UpdatedDescription]
    #
    # @!attribute [rw] definition
    #   The new Cedar policy statement that defines the access control
    #   rules. This replaces the existing policy definition with new logic
    #   while maintaining the policy's identity.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] validation_mode
    #   The validation mode for the policy update. Determines how Cedar
    #   analyzer validation results are handled during policy updates.
    #   FAIL\_ON\_ANY\_FINDINGS runs the Cedar analyzer and fails the update
    #   if validation issues are detected, ensuring the policy conforms to
    #   the Cedar schema and tool context. IGNORE\_ALL\_FINDINGS runs the
    #   Cedar analyzer but allows updates despite validation warnings. Use
    #   FAIL\_ON\_ANY\_FINDINGS to ensure policy correctness during updates,
    #   especially when modifying policy logic or conditions.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The enforcement mode for the policy. Run this policy in `LOG_ONLY`
    #   mode to collect data on how it affects your application. Once you
    #   are satisfied with the data gathered, switch the policy to `ACTIVE`.
    #   If you omit this field, the policy's existing enforcement mode is
    #   unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicyRequest AWS API Documentation
    #
    class UpdatePolicyRequest < Struct.new(
      :policy_engine_id,
      :policy_id,
      :description,
      :definition,
      :validation_mode,
      :enforcement_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The unique identifier of the updated policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_engine_id
    #   The identifier of the policy engine managing the updated policy.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The original creation timestamp of the policy.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the policy was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] policy_arn
    #   The ARN of the updated policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the updated policy.
    #   @return [String]
    #
    # @!attribute [rw] enforcement_mode
    #   The current enforcement mode of the updated policy.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The updated Cedar policy statement.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] description
    #   The updated description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status_reasons
    #   Additional information about the update status.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicyResponse AWS API Documentation
    #
    class UpdatePolicyResponse < Struct.new(
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
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record. You can
    #   specify either the Amazon Resource Name (ARN) or the ID of the
    #   registry.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to update. You can specify
    #   either the Amazon Resource Name (ARN) or the ID of the record.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name for the registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the registry record. To clear the
    #   description, include the `UpdatedDescription` wrapper with
    #   `optionalValue` not specified.
    #   @return [Types::UpdatedDescription]
    #
    # @!attribute [rw] descriptor_type
    #   The updated descriptor type for the registry record. Changing the
    #   descriptor type may require updating the `descriptors` field to
    #   match the new type's schema requirements.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The updated descriptor-type-specific configuration containing the
    #   resource schema and metadata. Uses PATCH semantics where individual
    #   descriptor fields can be updated independently.
    #   @return [Types::UpdatedDescriptors]
    #
    # @!attribute [rw] record_version
    #   The version of the registry record for optimistic locking. If
    #   provided, it must match the current version of the record. The
    #   service automatically increments the version after a successful
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] synchronization_type
    #   The updated synchronization type for the registry record.
    #   @return [Types::UpdatedSynchronizationType]
    #
    # @!attribute [rw] synchronization_configuration
    #   The updated synchronization configuration for the registry record.
    #   @return [Types::UpdatedSynchronizationConfiguration]
    #
    # @!attribute [rw] trigger_synchronization
    #   Whether to trigger synchronization using the stored or provided
    #   configuration. When set to `true`, the service will synchronize the
    #   record metadata from the configured external source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistryRecordRequest AWS API Documentation
    #
    class UpdateRegistryRecordRequest < Struct.new(
      :registry_id,
      :record_id,
      :name,
      :description,
      :descriptor_type,
      :descriptors,
      :record_version,
      :synchronization_type,
      :synchronization_configuration,
      :trigger_synchronization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry that contains the
    #   updated record.
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   The Amazon Resource Name (ARN) of the updated registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The unique identifier of the updated registry record.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the updated registry record.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the updated registry record.
    #   @return [String]
    #
    # @!attribute [rw] descriptor_type
    #   The descriptor type of the updated registry record. Possible values
    #   are `MCP`, `A2A`, `CUSTOM`, and `AGENT_SKILLS`.
    #   @return [String]
    #
    # @!attribute [rw] descriptors
    #   The descriptor-type-specific configuration of the updated registry
    #   record. For details, see the `Descriptors` data type.
    #   @return [Types::Descriptors]
    #
    # @!attribute [rw] record_version
    #   The version of the updated registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the updated registry record. Possible values
    #   include `CREATING`, `DRAFT`, `APPROVED`, `PENDING_APPROVAL`,
    #   `REJECTED`, `DEPRECATED`, `UPDATING`, `CREATE_FAILED`, and
    #   `UPDATE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry record was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry record was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the updated registry record.
    #   @return [String]
    #
    # @!attribute [rw] synchronization_type
    #   The synchronization type of the updated registry record.
    #   @return [String]
    #
    # @!attribute [rw] synchronization_configuration
    #   The synchronization configuration of the updated registry record.
    #   @return [Types::SynchronizationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistryRecordResponse AWS API Documentation
    #
    class UpdateRegistryRecordResponse < Struct.new(
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
      :synchronization_configuration)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry containing the record. You can
    #   specify either the Amazon Resource Name (ARN) or the ID of the
    #   registry.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The identifier of the registry record to update the status for. You
    #   can specify either the Amazon Resource Name (ARN) or the ID of the
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The target status for the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the status change, such as why the record was
    #   approved or rejected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistryRecordStatusRequest AWS API Documentation
    #
    class UpdateRegistryRecordStatusRequest < Struct.new(
      :registry_id,
      :record_id,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the registry that contains the
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] record_arn
    #   The Amazon Resource Name (ARN) of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] record_id
    #   The unique identifier of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The resulting status of the registry record.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the status change.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the record was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistryRecordStatusResponse AWS API Documentation
    #
    class UpdateRegistryRecordStatusResponse < Struct.new(
      :registry_arn,
      :record_arn,
      :record_id,
      :status,
      :status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] registry_id
    #   The identifier of the registry to update. You can specify either the
    #   Amazon Resource Name (ARN) or the ID of the registry.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the registry. To clear the description,
    #   include the `UpdatedDescription` wrapper with `optionalValue` not
    #   specified.
    #   @return [Types::UpdatedDescription]
    #
    # @!attribute [rw] authorizer_configuration
    #   The updated authorizer configuration for the registry. Changing the
    #   authorizer configuration can break existing consumers of the
    #   registry who are using the authorization type prior to the update.
    #   @return [Types::UpdatedAuthorizerConfiguration]
    #
    # @!attribute [rw] approval_configuration
    #   The updated approval configuration for registry records. The updated
    #   configuration only affects new records that move to
    #   `PENDING_APPROVAL` status after the change. Existing records already
    #   in `PENDING_APPROVAL` status are not affected.
    #   @return [Types::UpdatedApprovalConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistryRequest AWS API Documentation
    #
    class UpdateRegistryRequest < Struct.new(
      :registry_id,
      :name,
      :description,
      :authorizer_configuration,
      :approval_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the updated registry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the updated registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_id
    #   The unique identifier of the updated registry.
    #   @return [String]
    #
    # @!attribute [rw] registry_arn
    #   The Amazon Resource Name (ARN) of the updated registry.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_type
    #   The type of authorizer used by the updated registry. This controls
    #   the authorization method for the Search and Invoke APIs used by
    #   consumers.
    #
    #   * `CUSTOM_JWT` - Authorize with a bearer token.
    #
    #   * `AWS_IAM` - Authorize with your Amazon Web Services IAM
    #     credentials.
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the updated registry. For details,
    #   see the `AuthorizerConfiguration` data type.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] approval_configuration
    #   The approval configuration for the updated registry. For details,
    #   see the `ApprovalConfiguration` data type.
    #   @return [Types::ApprovalConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the updated registry. Possible values include
    #   `CREATING`, `READY`, `UPDATING`, `CREATE_FAILED`, `UPDATE_FAILED`,
    #   `DELETING`, and `DELETE_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the updated registry.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the registry was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the registry was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateRegistryResponse AWS API Documentation
    #
    class UpdateRegistryResponse < Struct.new(
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
      :updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workload identity to update.
    #   @return [String]
    #
    # @!attribute [rw] allowed_resource_oauth_2_return_urls
    #   The new list of allowed OAuth2 return URLs for resources associated
    #   with this workload identity. This list replaces the existing list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateWorkloadIdentityRequest AWS API Documentation
    #
    class UpdateWorkloadIdentityRequest < Struct.new(
      :name,
      :allowed_resource_oauth_2_return_urls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workload identity.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_arn
    #   The Amazon Resource Name (ARN) of the workload identity.
    #   @return [String]
    #
    # @!attribute [rw] allowed_resource_oauth_2_return_urls
    #   The list of allowed OAuth2 return URLs for resources associated with
    #   this workload identity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the workload identity was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the workload identity was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateWorkloadIdentityResponse AWS API Documentation
    #
    class UpdateWorkloadIdentityResponse < Struct.new(
      :name,
      :workload_identity_arn,
      :allowed_resource_oauth_2_return_urls,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating an A2A descriptor with PATCH semantics. When
    # present, the A2A descriptor is replaced with the provided value. When
    # absent, the A2A descriptor is left unchanged. To unset, include the
    # wrapper with the value set to null.
    #
    # @!attribute [rw] optional_value
    #   The updated A2A descriptor value.
    #   @return [Types::A2aDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedA2aDescriptor AWS API Documentation
    #
    class UpdatedA2aDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating an agent skills descriptor with PATCH semantics.
    # When present with a value, individual fields can be updated
    # independently. When present with a null value, the entire agent skills
    # descriptor is unset. When absent, the agent skills descriptor is left
    # unchanged.
    #
    # @!attribute [rw] optional_value
    #   The updated agent skills descriptor fields.
    #   @return [Types::UpdatedAgentSkillsDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedAgentSkillsDescriptor AWS API Documentation
    #
    class UpdatedAgentSkillsDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Individual agent skills descriptor fields that can be updated
    # independently.
    #
    # @!attribute [rw] skill_md
    #   The updated skill markdown definition.
    #   @return [Types::UpdatedSkillMdDefinition]
    #
    # @!attribute [rw] skill_definition
    #   The updated skill definition.
    #   @return [Types::UpdatedSkillDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedAgentSkillsDescriptorFields AWS API Documentation
    #
    class UpdatedAgentSkillsDescriptorFields < Struct.new(
      :skill_md,
      :skill_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating an optional approval configuration field with
    # PATCH semantics. When present in an update request, the approval
    # configuration is replaced with the provided value. When absent, the
    # approval configuration is left unchanged.
    #
    # @!attribute [rw] optional_value
    #   The updated approval configuration value. Set to `null` to unset the
    #   approval configuration.
    #   @return [Types::ApprovalConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedApprovalConfiguration AWS API Documentation
    #
    class UpdatedApprovalConfiguration < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating an optional AuthorizerConfiguration field with
    # PATCH semantics. When present in an update request, the authorizer
    # configuration is replaced with optionalValue. When absent, the
    # authorizer configuration is left unchanged. To unset, include the
    # wrapper with optionalValue not specified.
    #
    # @!attribute [rw] optional_value
    #   The updated authorizer configuration value. If not specified, it
    #   will clear the current authorizer configuration of the resource.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedAuthorizerConfiguration AWS API Documentation
    #
    class UpdatedAuthorizerConfiguration < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating a custom descriptor with PATCH semantics. When
    # present, the custom descriptor is replaced with the provided value.
    # When absent, the custom descriptor is left unchanged. To unset,
    # include the wrapper with the value set to null.
    #
    # @!attribute [rw] optional_value
    #   The updated custom descriptor value.
    #   @return [Types::CustomDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedCustomDescriptor AWS API Documentation
    #
    class UpdatedCustomDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating an optional Description field with PATCH
    # semantics. When present in an update request, the description is
    # replaced with optionalValue. When absent, the description is left
    # unchanged. To unset the description, include the wrapper with
    # optionalValue not specified.
    #
    # @!attribute [rw] optional_value
    #   Represents an optional value that is used to update the
    #   human-readable description of the resource. If not specified, it
    #   will clear the current description of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedDescription AWS API Documentation
    #
    class UpdatedDescription < Struct.new(
      :optional_value)
      SENSITIVE = [:optional_value]
      include Aws::Structure
    end

    # Wrapper for updating an optional descriptors field with PATCH
    # semantics. When present with a value, individual descriptors can be
    # updated. When present with a null value, all descriptors are unset.
    # When absent, descriptors are left unchanged.
    #
    # @!attribute [rw] optional_value
    #   The updated descriptors value. Contains per-descriptor-type wrappers
    #   that are each independently updatable.
    #   @return [Types::UpdatedDescriptorsUnion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedDescriptors AWS API Documentation
    #
    class UpdatedDescriptors < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains per-descriptor-type wrappers for updating descriptors. Each
    # descriptor type can be updated independently.
    #
    # @!attribute [rw] mcp
    #   The updated MCP descriptor.
    #   @return [Types::UpdatedMcpDescriptor]
    #
    # @!attribute [rw] a2a
    #   The updated A2A descriptor.
    #   @return [Types::UpdatedA2aDescriptor]
    #
    # @!attribute [rw] custom
    #   The updated custom descriptor.
    #   @return [Types::UpdatedCustomDescriptor]
    #
    # @!attribute [rw] agent_skills
    #   The updated agent skills descriptor.
    #   @return [Types::UpdatedAgentSkillsDescriptor]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedDescriptorsUnion AWS API Documentation
    #
    class UpdatedDescriptorsUnion < Struct.new(
      :mcp,
      :a2a,
      :custom,
      :agent_skills)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating the environment artifact configuration.
    #
    # @!attribute [rw] optional_value
    #   The updated environment artifact value, or null to clear the
    #   existing configuration.
    #   @return [Types::HarnessEnvironmentArtifact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedHarnessEnvironmentArtifact AWS API Documentation
    #
    class UpdatedHarnessEnvironmentArtifact < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating the memory configuration.
    #
    # @!attribute [rw] optional_value
    #   The updated memory configuration value, or null to clear the
    #   existing configuration.
    #   @return [Types::HarnessMemoryConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedHarnessMemoryConfiguration AWS API Documentation
    #
    class UpdatedHarnessMemoryConfiguration < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating an MCP descriptor with PATCH semantics. When
    # present with a value, individual MCP fields can be updated
    # independently. When present with a null value, the entire MCP
    # descriptor is unset. When absent, the MCP descriptor is left
    # unchanged.
    #
    # @!attribute [rw] optional_value
    #   The updated MCP descriptor fields.
    #   @return [Types::UpdatedMcpDescriptorFields]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedMcpDescriptor AWS API Documentation
    #
    class UpdatedMcpDescriptor < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Individual MCP descriptor fields that can be updated independently.
    #
    # @!attribute [rw] server
    #   The updated server definition for the MCP descriptor.
    #   @return [Types::UpdatedServerDefinition]
    #
    # @!attribute [rw] tools
    #   The updated tools definition for the MCP descriptor.
    #   @return [Types::UpdatedToolsDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedMcpDescriptorFields AWS API Documentation
    #
    class UpdatedMcpDescriptorFields < Struct.new(
      :server,
      :tools)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating a server definition with PATCH semantics. When
    # present, the server definition is replaced with the provided value.
    # When absent, the server definition is left unchanged. To unset,
    # include the wrapper with the value set to null.
    #
    # @!attribute [rw] optional_value
    #   The updated server definition value.
    #   @return [Types::ServerDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedServerDefinition AWS API Documentation
    #
    class UpdatedServerDefinition < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating a skill definition with PATCH semantics.
    #
    # @!attribute [rw] optional_value
    #   The updated skill definition value.
    #   @return [Types::SkillDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedSkillDefinition AWS API Documentation
    #
    class UpdatedSkillDefinition < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating a skill markdown definition with PATCH semantics.
    #
    # @!attribute [rw] optional_value
    #   The updated skill markdown definition value.
    #   @return [Types::SkillMdDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedSkillMdDefinition AWS API Documentation
    #
    class UpdatedSkillMdDefinition < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating the synchronization configuration with PATCH
    # semantics. Must be matched with `UpdatedSynchronizationType`.
    #
    # @!attribute [rw] optional_value
    #   The updated synchronization configuration value.
    #   @return [Types::SynchronizationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedSynchronizationConfiguration AWS API Documentation
    #
    class UpdatedSynchronizationConfiguration < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating the synchronization type with PATCH semantics.
    # Must be matched with `UpdatedSynchronizationConfiguration`.
    #
    # @!attribute [rw] optional_value
    #   The updated synchronization type value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedSynchronizationType AWS API Documentation
    #
    class UpdatedSynchronizationType < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Wrapper for updating a tools definition with PATCH semantics. When
    # present, the tools definition is replaced with the provided value.
    # When absent, the tools definition is left unchanged. To unset, include
    # the wrapper with the value set to null.
    #
    # @!attribute [rw] optional_value
    #   The updated tools definition value.
    #   @return [Types::ToolsDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatedToolsDefinition AWS API Documentation
    #
    class UpdatedToolsDefinition < Struct.new(
      :optional_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains user preference consolidation override configuration.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for user preference consolidation.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for user preference consolidation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UserPreferenceConsolidationOverride AWS API Documentation
    #
    class UserPreferenceConsolidationOverride < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Contains user preference extraction override configuration.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for user preference extraction.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for user preference extraction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UserPreferenceExtractionOverride AWS API Documentation
    #
    class UserPreferenceExtractionOverride < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Input for creating a user preference memory strategy.
    #
    # @!attribute [rw] name
    #   The name of the user preference memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the user preference memory strategy.
    #   @return [String]
    #
    # @!attribute [rw] namespaces
    #   This is a legacy parameter, use `namespaceTemplates`. The namespaces
    #   associated with the user preference memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] namespace_templates
    #   The namespaceTemplates associated with the user preference memory
    #   strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] memory_record_schema
    #   Schema for metadata fields on records generated by this strategy.
    #   @return [Types::MemoryRecordSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UserPreferenceMemoryStrategyInput AWS API Documentation
    #
    class UserPreferenceMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      :namespace_templates,
      :memory_record_schema)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Input for user preference override configuration in a memory strategy.
    #
    # @!attribute [rw] extraction
    #   The extraction configuration for a user preference override.
    #   @return [Types::UserPreferenceOverrideExtractionConfigurationInput]
    #
    # @!attribute [rw] consolidation
    #   The consolidation configuration for a user preference override.
    #   @return [Types::UserPreferenceOverrideConsolidationConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UserPreferenceOverrideConfigurationInput AWS API Documentation
    #
    class UserPreferenceOverrideConfigurationInput < Struct.new(
      :extraction,
      :consolidation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for user preference override consolidation configuration in a
    # memory strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for user preference consolidation.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for user preference consolidation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UserPreferenceOverrideConsolidationConfigurationInput AWS API Documentation
    #
    class UserPreferenceOverrideConsolidationConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Input for user preference override extraction configuration in a
    # memory strategy.
    #
    # @!attribute [rw] append_to_prompt
    #   The text to append to the prompt for user preference extraction.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID to use for user preference extraction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UserPreferenceOverrideExtractionConfigurationInput AWS API Documentation
    #
    class UserPreferenceOverrideExtractionConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # Validation rules for extracted metadata values. Only one type can be
    # specified, matching the field's data type.
    #
    # @note Validation is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Validation is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Validation corresponding to the set member.
    #
    # @!attribute [rw] string_validation
    #   Validation for STRING fields.
    #   @return [Types::StringValidation]
    #
    # @!attribute [rw] string_list_validation
    #   Validation for STRINGLIST fields.
    #   @return [Types::StringListValidation]
    #
    # @!attribute [rw] number_validation
    #   Validation for NUMBER fields.
    #   @return [Types::NumberValidation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Validation AWS API Documentation
    #
    class Validation < Struct.new(
      :string_validation,
      :string_list_validation,
      :number_validation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StringValidation < Validation; end
      class StringListValidation < Validation; end
      class NumberValidation < Validation; end
      class Unknown < Validation; end
    end

    # The input fails to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ValidationException AWS API Documentation
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
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing why this field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source that created a configuration bundle version.
    #
    # @!attribute [rw] name
    #   The name of the source (for example, `user`, `optimization-job`, or
    #   `system`).
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the source, if applicable (for
    #   example, a user ARN or optimization job ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/VersionCreatedBySource AWS API Documentation
    #
    class VersionCreatedBySource < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for listing configuration bundle versions.
    #
    # @!attribute [rw] branch_name
    #   Filter by branch name.
    #   @return [String]
    #
    # @!attribute [rw] created_by_name
    #   Filter by creation source name.
    #   @return [String]
    #
    # @!attribute [rw] latest_per_branch
    #   When true, returns only the latest version for each branch. When
    #   false or not specified, returns all versions. Can be combined with
    #   `branchName` to get the latest version for a specific branch.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/VersionFilter AWS API Documentation
    #
    class VersionFilter < Struct.new(
      :branch_name,
      :created_by_name,
      :latest_per_branch)
      SENSITIVE = []
      include Aws::Structure
    end

    # The version lineage metadata that tracks parent versions and creation
    # source. Supports git-like two-parent merges for branch management.
    #
    # @!attribute [rw] parent_version_ids
    #   A list of parent version identifiers. Regular commits have 0-1
    #   parents. Merge commits have 2 parents: the target branch parent and
    #   the source branch parent. The first parent represents the primary
    #   lineage.
    #   @return [Array<String>]
    #
    # @!attribute [rw] branch_name
    #   The branch name for this version. If not specified, inherits the
    #   parent's branch or defaults to `mainline`.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The source that created this version.
    #   @return [Types::VersionCreatedBySource]
    #
    # @!attribute [rw] commit_message
    #   A commit message describing the changes in this version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/VersionLineageMetadata AWS API Documentation
    #
    class VersionLineageMetadata < Struct.new(
      :parent_version_ids,
      :branch_name,
      :created_by,
      :commit_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # VpcConfig for the Agent.
    #
    # @!attribute [rw] security_groups
    #   The security groups associated with the VPC configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   The subnets associated with the VPC configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] require_service_s3_endpoint
    #   <note markdown="1"> This field applies only to Agent Runtimes. It is
    #   not applicable to
    #   Browsers or Code Interpreters.
    #
    #    </note>
    #
    #    Controls whether a service-managed Amazon S3 gateway endpoint is
    #   provisioned in the VPC network topology for the agent runtime. This
    #   gateway is used by Amazon Bedrock AgentCore Runtime to download code
    #   and container images during agent startup.
    #
    #    Starting May 5, 2026, Amazon Bedrock AgentCore Runtime is gradually
    #   rolling out a change to how network isolation is configured for VPC
    #   mode agents. Agent runtimes created on or after this rollout will no
    #   longer include the service-managed Amazon S3 gateway. Instead, all
    #   network access, including to Amazon S3, is governed exclusively by
    #   your VPC configuration. This field cannot be set on agent runtimes
    #   created after the rollout. Passing this field in an
    #   `UpdateAgentRuntime` request for these agent runtimes returns a
    #   `ValidationException`.
    #
    #    Agent runtimes created before the rollout are not affected and
    #   continue to operate with the service-managed Amazon S3 gateway. To
    #   enforce full VPC network isolation on these existing agent runtimes,
    #   set this field to `false` via the `UpdateAgentRuntime` API. Before
    #   opting out, ensure your VPC provides the Amazon S3 access required
    #   for agent startup. If this field is not specified or is set to
    #   `true`, the service-managed Amazon S3 gateway remains provisioned.
    #
    #    This field is only supported in the `UpdateAgentRuntime` API for
    #   pre-rollout agent runtimes. Passing this field in a
    #   `CreateAgentRuntime` request returns a `ValidationException`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :security_groups,
      :subnets,
      :require_service_s3_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services WAF configuration for the gateway. This
    # configuration controls how the gateway behaves when the associated web
    # ACL cannot be evaluated.
    #
    # @!attribute [rw] failure_mode
    #   The failure mode that determines how the gateway handles requests
    #   when Amazon Web Services WAF is unreachable or times out. Valid
    #   values include:
    #
    #   * `FAIL_CLOSE` - The gateway blocks requests when Amazon Web
    #     Services WAF cannot be evaluated.
    #
    #   * `FAIL_OPEN` - The gateway allows requests when Amazon Web Services
    #     WAF cannot be evaluated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/WafConfiguration AWS API Documentation
    #
    class WafConfiguration < Struct.new(
      :failure_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # A weighted configuration bundle override that splits traffic between
    # multiple bundle versions.
    #
    # @!attribute [rw] traffic_split
    #   The traffic split entries defining how traffic is distributed
    #   between configuration bundle versions.
    #   @return [Array<Types::TrafficSplitEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/WeightedOverride AWS API Documentation
    #
    class WeightedOverride < Struct.new(
      :traffic_split)
      SENSITIVE = []
      include Aws::Structure
    end

    # A weighted route that splits traffic between multiple gateway targets.
    #
    # @!attribute [rw] traffic_split
    #   The traffic split entries defining how traffic is distributed
    #   between targets.
    #   @return [Array<Types::TargetTrafficSplitEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/WeightedRoute AWS API Documentation
    #
    class WeightedRoute < Struct.new(
      :traffic_split)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about the workload identity.
    #
    # @!attribute [rw] workload_identity_arn
    #   The ARN associated with the workload identity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/WorkloadIdentityDetails AWS API Documentation
    #
    class WorkloadIdentityDetails < Struct.new(
      :workload_identity_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a workload identity.
    #
    # @!attribute [rw] name
    #   The name of the workload identity.
    #   @return [String]
    #
    # @!attribute [rw] workload_identity_arn
    #   The Amazon Resource Name (ARN) of the workload identity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/WorkloadIdentityType AWS API Documentation
    #
    class WorkloadIdentityType < Struct.new(
      :name,
      :workload_identity_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

