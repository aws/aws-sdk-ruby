# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockAgentCoreControl
  module Types

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

    # Contains information about an agent runtime. An agent runtime is the
    # execution environment for a Amazon Bedrock Agent.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AtlassianOauth2ProviderConfigInput AWS API Documentation
    #
    class AtlassianOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret)
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

    # The network configuration for a browser. This structure defines how
    # the browser connects to the network.
    #
    # @!attribute [rw] network_mode
    #   The network mode for the browser. This field specifies how the
    #   browser connects to the network.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   VpcConfig for the Agent.
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
    # Bedrock Agent to interact with web content.
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

    # The configuration for the source code that defines how the agent
    # runtime code should be executed, including the code location, runtime
    # environment, and entry point.
    #
    # @!attribute [rw] code
    #   The source code location and configuration details.
    #   @return [Types::Code]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for executing the code (for example, Python
    #   3.9 or Node.js 18).
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
    #   VpcConfig for the Agent.
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
    # interpreter enables Amazon Bedrock Agent to execute code.
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
      :tags)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # @!attribute [rw] api_key_secret_arn
    #   The Amazon Resource Name (ARN) of the secret containing the API key.
    #   @return [Types::Secret]
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
      :name,
      :credential_provider_arn)
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
    #   The configuration for the evaluator, including LLM-as-a-Judge
    #   settings with instructions, rating scale, and model configuration.
    #   @return [Types::EvaluatorConfig]
    #
    # @!attribute [rw] level
    #   The evaluation level that determines the scope of evaluation. Valid
    #   values are `TOOL_CALL` for individual tool invocations, `TRACE` for
    #   single request-response interactions, or `SESSION` for entire
    #   conversation sessions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateEvaluatorRequest AWS API Documentation
    #
    class CreateEvaluatorRequest < Struct.new(
      :client_token,
      :evaluator_name,
      :description,
      :evaluator_config,
      :level)
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
      SENSITIVE = [:name, :description]
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
      :interceptor_configurations,
      :policy_engine_configuration,
      :workload_identity_details,
      :exception_level)
      SENSITIVE = [:name, :description]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateGatewayTargetRequest AWS API Documentation
    #
    class CreateGatewayTargetRequest < Struct.new(
      :gateway_identifier,
      :name,
      :description,
      :client_token,
      :target_configuration,
      :credential_provider_configurations)
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
      :last_synchronized_at)
      SENSITIVE = [:name, :description]
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
    #   The Amazon Resource Name (ARN) of the client secret in AWS Secrets
    #   Manager.
    #   @return [Types::Secret]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOauth2CredentialProviderResponse AWS API Documentation
    #
    class CreateOauth2CredentialProviderResponse < Struct.new(
      :client_secret_arn,
      :name,
      :credential_provider_arn,
      :callback_url,
      :oauth2_provider_config_output)
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
    # @!attribute [rw] evaluation_execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants
    #   permissions to read from CloudWatch logs, write evaluation results,
    #   and invoke Amazon Bedrock models for evaluation.
    #   @return [String]
    #
    # @!attribute [rw] enable_on_create
    #   Whether to enable the online evaluation configuration immediately
    #   upon creation. If true, evaluation begins automatically.
    #   @return [Boolean]
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
      :evaluation_execution_role_arn,
      :enable_on_create)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreatePolicyEngineRequest AWS API Documentation
    #
    class CreatePolicyEngineRequest < Struct.new(
      :name,
      :description,
      :client_token)
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
    # @!attribute [rw] description
    #   A human-readable description of the policy engine's purpose.
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
      :description,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
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
      :definition,
      :description,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :status_reasons)
      SENSITIVE = [:description]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CredentialProvider AWS API Documentation
    #
    class CredentialProvider < Struct.new(
      :oauth_credential_provider,
      :api_key_credential_provider,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OauthCredentialProvider < CredentialProvider; end
      class ApiKeyCredentialProvider < CredentialProvider; end
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
    # @!attribute [rw] custom_claims
    #   An array of objects that define a custom claim validation name,
    #   value, and operation
    #   @return [Array<Types::CustomClaimValidationType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomJWTAuthorizerConfiguration AWS API Documentation
    #
    class CustomJWTAuthorizerConfiguration < Struct.new(
      :discovery_url,
      :allowed_audience,
      :allowed_clients,
      :allowed_scopes,
      :custom_claims)
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
    #   The namespaces associated with the custom memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration
    #   The configuration for the custom memory strategy.
    #   @return [Types::CustomConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomMemoryStrategyInput AWS API Documentation
    #
    class CustomMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      :configuration)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomOauth2ProviderConfigInput AWS API Documentation
    #
    class CustomOauth2ProviderConfigInput < Struct.new(
      :oauth_discovery,
      :client_id,
      :client_secret)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomOauth2ProviderConfigOutput AWS API Documentation
    #
    class CustomOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      :client_id)
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
    # @!attribute [rw] description
    #   The human-readable description of the deleted policy engine.
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
      :description,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
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
      :definition,
      :description,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :status_reasons)
      SENSITIVE = [:description]
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
    #   The namespaces for which to create episodes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] reflection_configuration
    #   The configuration for the reflections created with the episodic
    #   memory strategy.
    #   @return [Types::EpisodicReflectionConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicMemoryStrategyInput AWS API Documentation
    #
    class EpisodicMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      :reflection_configuration)
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
    #   The namespaces to use for episodic reflection. Can be less nested
    #   than the episodic namespaces.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicOverrideReflectionConfigurationInput AWS API Documentation
    #
    class EpisodicOverrideReflectionConfigurationInput < Struct.new(
      :append_to_prompt,
      :model_id,
      :namespaces)
      SENSITIVE = [:append_to_prompt]
      include Aws::Structure
    end

    # The configuration for the reflections created with the episodic memory
    # strategy.
    #
    # @!attribute [rw] namespaces
    #   The namespaces for which to create reflections. Can be less nested
    #   than the episodic namespaces.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicReflectionConfiguration AWS API Documentation
    #
    class EpisodicReflectionConfiguration < Struct.new(
      :namespaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # An episodic reflection configuration input.
    #
    # @!attribute [rw] namespaces
    #   The namespaces over which to create reflections. Can be less nested
    #   than episode namespaces.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicReflectionConfigurationInput AWS API Documentation
    #
    class EpisodicReflectionConfigurationInput < Struct.new(
      :namespaces)
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
    #   The namespaces over which reflections were created. Can be less
    #   nested than the episodic namespaces.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EpisodicReflectionOverride AWS API Documentation
    #
    class EpisodicReflectionOverride < Struct.new(
      :append_to_prompt,
      :model_id,
      :namespaces)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/EvaluatorConfig AWS API Documentation
    #
    class EvaluatorConfig < Struct.new(
      :llm_as_a_judge,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class LlmAsAJudge < EvaluatorConfig; end
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
      :locked_for_modification)
      SENSITIVE = [:description]
      include Aws::Structure
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
      SENSITIVE = [:name, :description]
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
      :last_synchronized_at)
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
      :request_header_configuration)
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
    #   The Amazon Resource Name (ARN) of the API key secret in AWS Secrets
    #   Manager.
    #   @return [Types::Secret]
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
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
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
      :failure_reason,
      :created_at,
      :last_updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator to retrieve. Can be a
    #   built-in evaluator ID (e.g., Builtin.Helpfulness) or a custom
    #   evaluator ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetEvaluatorRequest AWS API Documentation
    #
    class GetEvaluatorRequest < Struct.new(
      :evaluator_id)
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
    #   The configuration of the evaluator, including LLM-as-a-Judge
    #   settings for custom evaluators.
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
      :locked_for_modification)
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
      :interceptor_configurations,
      :policy_engine_configuration,
      :workload_identity_details,
      :exception_level)
      SENSITIVE = [:name, :description]
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
      :last_synchronized_at)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] memory_id
    #   The unique identifier of the memory to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetMemoryInput AWS API Documentation
    #
    class GetMemoryInput < Struct.new(
      :memory_id)
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
    #   The Amazon Resource Name (ARN) of the client secret in AWS Secrets
    #   Manager.
    #   @return [Types::Secret]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetOauth2CredentialProviderResponse AWS API Documentation
    #
    class GetOauth2CredentialProviderResponse < Struct.new(
      :client_secret_arn,
      :name,
      :credential_provider_arn,
      :credential_provider_vendor,
      :callback_url,
      :oauth2_provider_config_output,
      :created_time,
      :last_updated_time)
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
    # @!attribute [rw] description
    #   The human-readable description of the policy engine's purpose and
    #   scope. This helps administrators understand the policy engine's
    #   role in governance.
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
      :description,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :status_reasons)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] policy_generation_id
    #   The unique identifier of the policy generation request to be
    #   retrieved. This must be a valid generation ID from a previous
    #   [StartPolicyGeneration][1] call.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_StartPolicyGeneration.html
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
    # @!attribute [rw] status_reasons
    #   Additional information about the generation status. This provides
    #   details about any failures, warnings, or the current state of the
    #   generation process.
    #   @return [Array<String>]
    #
    # @!attribute [rw] findings
    #   The findings and results from the policy generation process. This
    #   includes any issues, recommendations, validation results, or
    #   insights from the generated policies.
    #   @return [String]
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
      :status_reasons,
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
      :definition,
      :description,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :status_reasons)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GithubOauth2ProviderConfigInput AWS API Documentation
    #
    class GithubOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GoogleOauth2ProviderConfigInput AWS API Documentation
    #
    class GoogleOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/InterceptorInputConfiguration AWS API Documentation
    #
    class InterceptorInputConfiguration < Struct.new(
      :pass_request_headers)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/LinkedinOauth2ProviderConfigInput AWS API Documentation
    #
    class LinkedinOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret)
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

    # @!attribute [rw] next_token
    #   A pagination token returned from a previous [ListPolicies][1] call.
    #   Use this token to retrieve the next page of results when the
    #   response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_ListPolicies.html
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
    #   A pagination token returned from a previous [ListPolicyEngines][1]
    #   call. Use this token to retrieve the next page of results when the
    #   response is paginated.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_ListPolicyEngines.html
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_ListPolicyEngines.html
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_StartPolicyGeneration.html
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_ListPolicyGenerationAssets.html
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
    #   [1]: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/API_ListPolicyGenerationAssets.html
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
      SENSITIVE = [:instructions]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MCPGatewayConfiguration AWS API Documentation
    #
    class MCPGatewayConfiguration < Struct.new(
      :supported_versions,
      :instructions,
      :search_type)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/McpServerTargetConfiguration AWS API Documentation
    #
    class McpServerTargetConfiguration < Struct.new(
      :endpoint)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/McpTargetConfiguration AWS API Documentation
    #
    class McpTargetConfiguration < Struct.new(
      :open_api_schema,
      :smithy_model,
      :lambda,
      :mcp_server,
      :api_gateway,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OpenApiSchema < McpTargetConfiguration; end
      class SmithyModel < McpTargetConfiguration; end
      class Lambda < McpTargetConfiguration; end
      class McpServer < McpTargetConfiguration; end
      class ApiGateway < McpTargetConfiguration; end
      class Unknown < McpTargetConfiguration; end
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
      :strategies)
      SENSITIVE = [:description]
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
    #   The namespaces associated with the memory strategy.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MemoryStrategy AWS API Documentation
    #
    class MemoryStrategy < Struct.new(
      :strategy_id,
      :name,
      :description,
      :configuration,
      :type,
      :namespaces,
      :created_at,
      :updated_at,
      :status)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MemorySummary AWS API Documentation
    #
    class MemorySummary < Struct.new(
      :arn,
      :id,
      :status,
      :created_at,
      :updated_at)
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
    #   The updated namespaces for the memory strategy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] configuration
    #   The updated configuration for the memory strategy.
    #   @return [Types::ModifyStrategyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyMemoryStrategyInput AWS API Documentation
    #
    class ModifyMemoryStrategyInput < Struct.new(
      :memory_strategy_id,
      :description,
      :namespaces,
      :configuration)
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
      :failure_reason)
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
      :definition,
      :description,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/PolicyDefinition AWS API Documentation
    #
    class PolicyDefinition < Struct.new(
      :cedar,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Cedar < PolicyDefinition; end
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
    # @!attribute [rw] description
    #   A human-readable description of the policy engine's purpose and
    #   scope. Limited to 4,096 characters, this helps administrators
    #   understand the policy engine's role in the overall governance
    #   strategy.
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
      :description,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
      :status_reasons)
      SENSITIVE = [:description]
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
    # @!attribute [rw] status_reasons
    #   Additional information about the generation status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] findings
    #   Findings and insights from this policy generation process.
    #   @return [String]
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
      :status_reasons,
      :findings)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SalesforceOauth2ProviderConfigInput AWS API Documentation
    #
    class SalesforceOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret)
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

    # Contains information about a secret in AWS Secrets Manager.
    #
    # @!attribute [rw] secret_arn
    #   The Amazon Resource Name (ARN) of the secret in AWS Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Secret AWS API Documentation
    #
    class Secret < Struct.new(
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
    #   The namespaces associated with the semantic memory strategy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SemanticMemoryStrategyInput AWS API Documentation
    #
    class SemanticMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SlackOauth2ProviderConfigInput AWS API Documentation
    #
    class SlackOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret)
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
    # @!attribute [rw] status_reasons
    #   Additional information about the generation status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] findings
    #   Initial findings from the policy generation process.
    #   @return [String]
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
      :status_reasons,
      :findings)
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
    #   The namespaces associated with the summary memory strategy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SummaryMemoryStrategyInput AWS API Documentation
    #
    class SummaryMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TargetConfiguration AWS API Documentation
    #
    class TargetConfiguration < Struct.new(
      :mcp,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Mcp < TargetConfiguration; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/TargetSummary AWS API Documentation
    #
    class TargetSummary < Struct.new(
      :target_id,
      :name,
      :status,
      :description,
      :created_at,
      :updated_at)
      SENSITIVE = [:name, :description]
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
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ToolSchema; end
      class InlinePayload < ToolSchema; end
      class Unknown < ToolSchema; end
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
    # @!attribute [rw] environment_variables
    #   Updated environment variables to set in the AgentCore Runtime
    #   environment.
    #   @return [Hash<String,String>]
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
      :environment_variables,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateApiKeyCredentialProviderRequest AWS API Documentation
    #
    class UpdateApiKeyCredentialProviderRequest < Struct.new(
      :name,
      :api_key)
      SENSITIVE = [:api_key]
      include Aws::Structure
    end

    # @!attribute [rw] api_key_secret_arn
    #   The Amazon Resource Name (ARN) of the API key secret in AWS Secrets
    #   Manager.
    #   @return [Types::Secret]
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
    # @!attribute [rw] evaluator_id
    #   The unique identifier of the evaluator to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the evaluator.
    #   @return [String]
    #
    # @!attribute [rw] evaluator_config
    #   The updated configuration for the evaluator, including
    #   LLM-as-a-Judge settings with instructions, rating scale, and model
    #   configuration.
    #   @return [Types::EvaluatorConfig]
    #
    # @!attribute [rw] level
    #   The updated evaluation level (`TOOL_CALL`, `TRACE`, or `SESSION`)
    #   that determines the scope of evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateEvaluatorRequest AWS API Documentation
    #
    class UpdateEvaluatorRequest < Struct.new(
      :client_token,
      :evaluator_id,
      :description,
      :evaluator_config,
      :level)
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
      :interceptor_configurations,
      :policy_engine_configuration,
      :exception_level)
      SENSITIVE = [:name, :description]
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
      :interceptor_configurations,
      :policy_engine_configuration,
      :workload_identity_details,
      :exception_level)
      SENSITIVE = [:name, :description]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateGatewayTargetRequest AWS API Documentation
    #
    class UpdateGatewayTargetRequest < Struct.new(
      :gateway_identifier,
      :target_id,
      :name,
      :description,
      :target_configuration,
      :credential_provider_configurations)
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
      :last_synchronized_at)
      SENSITIVE = [:name, :description]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateMemoryInput AWS API Documentation
    #
    class UpdateMemoryInput < Struct.new(
      :client_token,
      :memory_id,
      :description,
      :event_expiry_duration,
      :memory_execution_role_arn,
      :memory_strategies)
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
    #   The Amazon Resource Name (ARN) of the client secret in AWS Secrets
    #   Manager.
    #   @return [Types::Secret]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateOauth2CredentialProviderResponse AWS API Documentation
    #
    class UpdateOauth2CredentialProviderResponse < Struct.new(
      :client_secret_arn,
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :callback_url,
      :oauth2_provider_config_output,
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

    # @!attribute [rw] policy_engine_id
    #   The unique identifier of the policy engine to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the policy engine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicyEngineRequest AWS API Documentation
    #
    class UpdatePolicyEngineRequest < Struct.new(
      :policy_engine_id,
      :description)
      SENSITIVE = [:description]
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
    # @!attribute [rw] description
    #   The updated description of the policy engine.
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
    # @!attribute [rw] status_reasons
    #   Additional information about the update status.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicyEngineResponse AWS API Documentation
    #
    class UpdatePolicyEngineResponse < Struct.new(
      :policy_engine_id,
      :name,
      :description,
      :created_at,
      :updated_at,
      :policy_engine_arn,
      :status,
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
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdatePolicyRequest AWS API Documentation
    #
    class UpdatePolicyRequest < Struct.new(
      :policy_engine_id,
      :policy_id,
      :description,
      :definition,
      :validation_mode)
      SENSITIVE = [:description]
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
    # @!attribute [rw] definition
    #   The updated Cedar policy statement.
    #   @return [Types::PolicyDefinition]
    #
    # @!attribute [rw] description
    #   The updated description of the policy.
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
      :definition,
      :description,
      :created_at,
      :updated_at,
      :policy_arn,
      :status,
      :status_reasons)
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
    #   The namespaces associated with the user preference memory strategy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UserPreferenceMemoryStrategyInput AWS API Documentation
    #
    class UserPreferenceMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :security_groups,
      :subnets)
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

