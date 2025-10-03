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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/AgentRuntimeArtifact AWS API Documentation
    #
    class AgentRuntimeArtifact < Struct.new(
      :container_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContainerConfiguration < AgentRuntimeArtifact; end
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
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_name
    #   The name of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AgentCore Runtime.
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
    # @!attribute [rw] protocol_configuration
    #   The protocol configuration for an agent runtime. This structure
    #   defines how the agent runtime communicates with clients.
    #   @return [Types::ProtocolConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables to set in the AgentCore Runtime environment.
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
      :description,
      :agent_runtime_artifact,
      :role_arn,
      :network_configuration,
      :protocol_configuration,
      :client_token,
      :environment_variables,
      :authorizer_configuration,
      :request_header_configuration,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateApiKeyCredentialProviderRequest AWS API Documentation
    #
    class CreateApiKeyCredentialProviderRequest < Struct.new(
      :name,
      :api_key)
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
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
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
    #   @return [String]
    #
    # @!attribute [rw] authorizer_configuration
    #   The authorizer configuration for the gateway.
    #   @return [Types::AuthorizerConfiguration]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt data
    #   associated with the gateway.
    #   @return [String]
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
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
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
      :credential_provider_configurations)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateMemoryInput AWS API Documentation
    #
    class CreateMemoryInput < Struct.new(
      :client_token,
      :name,
      :description,
      :encryption_key_arn,
      :memory_execution_role_arn,
      :event_expiry_duration,
      :memory_strategies)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOauth2CredentialProviderRequest AWS API Documentation
    #
    class CreateOauth2CredentialProviderRequest < Struct.new(
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
    # @!attribute [rw] credential_provider_arn
    #   The Amazon Resource Name (ARN) of the OAuth2 credential provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateOauth2CredentialProviderResponse AWS API Documentation
    #
    class CreateOauth2CredentialProviderResponse < Struct.new(
      :client_secret_arn,
      :name,
      :credential_provider_arn)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CreateWorkloadIdentityRequest AWS API Documentation
    #
    class CreateWorkloadIdentityRequest < Struct.new(
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomConfigurationInput AWS API Documentation
    #
    class CustomConfigurationInput < Struct.new(
      :semantic_override,
      :summary_override,
      :user_preference_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticOverride < CustomConfigurationInput; end
      class SummaryOverride < CustomConfigurationInput; end
      class UserPreferenceOverride < CustomConfigurationInput; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomConsolidationConfiguration AWS API Documentation
    #
    class CustomConsolidationConfiguration < Struct.new(
      :semantic_consolidation_override,
      :summary_consolidation_override,
      :user_preference_consolidation_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticConsolidationOverride < CustomConsolidationConfiguration; end
      class SummaryConsolidationOverride < CustomConsolidationConfiguration; end
      class UserPreferenceConsolidationOverride < CustomConsolidationConfiguration; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomConsolidationConfigurationInput AWS API Documentation
    #
    class CustomConsolidationConfigurationInput < Struct.new(
      :semantic_consolidation_override,
      :summary_consolidation_override,
      :user_preference_consolidation_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticConsolidationOverride < CustomConsolidationConfigurationInput; end
      class SummaryConsolidationOverride < CustomConsolidationConfigurationInput; end
      class UserPreferenceConsolidationOverride < CustomConsolidationConfigurationInput; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomExtractionConfiguration AWS API Documentation
    #
    class CustomExtractionConfiguration < Struct.new(
      :semantic_extraction_override,
      :user_preference_extraction_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticExtractionOverride < CustomExtractionConfiguration; end
      class UserPreferenceExtractionOverride < CustomExtractionConfiguration; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomExtractionConfigurationInput AWS API Documentation
    #
    class CustomExtractionConfigurationInput < Struct.new(
      :semantic_extraction_override,
      :user_preference_extraction_override,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticExtractionOverride < CustomExtractionConfigurationInput; end
      class UserPreferenceExtractionOverride < CustomExtractionConfigurationInput; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomJWTAuthorizerConfiguration AWS API Documentation
    #
    class CustomJWTAuthorizerConfiguration < Struct.new(
      :discovery_url,
      :allowed_audience,
      :allowed_clients)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/CustomOauth2ProviderConfigOutput AWS API Documentation
    #
    class CustomOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntimeEndpointResponse AWS API Documentation
    #
    class DeleteAgentRuntimeEndpointResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_runtime_id
    #   The unique identifier of the AgentCore Runtime to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntimeRequest AWS API Documentation
    #
    class DeleteAgentRuntimeRequest < Struct.new(
      :agent_runtime_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the AgentCore Runtime deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/DeleteAgentRuntimeResponse AWS API Documentation
    #
    class DeleteAgentRuntimeResponse < Struct.new(
      :status)
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
    # @!attribute [rw] workload_identity_details
    #   The workload identity details for the AgentCore Runtime.
    #   @return [Types::WorkloadIdentityDetails]
    #
    # @!attribute [rw] agent_runtime_name
    #   The name of the AgentCore Runtime.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AgentCore Runtime.
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
    # @!attribute [rw] agent_runtime_artifact
    #   The artifact of the AgentCore Runtime.
    #   @return [Types::AgentRuntimeArtifact]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the AgentCore Runtime.
    #   @return [Types::NetworkConfiguration]
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
    # @!attribute [rw] status
    #   The current status of the AgentCore Runtime.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GetAgentRuntimeResponse AWS API Documentation
    #
    class GetAgentRuntimeResponse < Struct.new(
      :agent_runtime_arn,
      :workload_identity_details,
      :agent_runtime_name,
      :description,
      :agent_runtime_id,
      :agent_runtime_version,
      :created_at,
      :last_updated_at,
      :role_arn,
      :agent_runtime_artifact,
      :network_configuration,
      :protocol_configuration,
      :environment_variables,
      :authorizer_configuration,
      :request_header_configuration,
      :status)
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
      :credential_provider_configurations)
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
      :oauth2_provider_config_output,
      :created_time,
      :last_updated_time)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GithubOauth2ProviderConfigOutput AWS API Documentation
    #
    class GithubOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/GoogleOauth2ProviderConfigOutput AWS API Documentation
    #
    class GoogleOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/McpTargetConfiguration AWS API Documentation
    #
    class McpTargetConfiguration < Struct.new(
      :open_api_schema,
      :smithy_model,
      :lambda,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OpenApiSchema < McpTargetConfiguration; end
      class SmithyModel < McpTargetConfiguration; end
      class Lambda < McpTargetConfiguration; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MemoryStrategyInput AWS API Documentation
    #
    class MemoryStrategyInput < Struct.new(
      :semantic_memory_strategy,
      :summary_memory_strategy,
      :user_preference_memory_strategy,
      :custom_memory_strategy,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SemanticMemoryStrategy < MemoryStrategyInput; end
      class SummaryMemoryStrategy < MemoryStrategyInput; end
      class UserPreferenceMemoryStrategy < MemoryStrategyInput; end
      class CustomMemoryStrategy < MemoryStrategyInput; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MicrosoftOauth2ProviderConfigInput AWS API Documentation
    #
    class MicrosoftOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret)
      SENSITIVE = [:client_secret]
      include Aws::Structure
    end

    # Output configuration for a Microsoft OAuth2 provider.
    #
    # @!attribute [rw] oauth_discovery
    #   The OAuth2 discovery information for the Microsoft provider.
    #   @return [Types::Oauth2Discovery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/MicrosoftOauth2ProviderConfigOutput AWS API Documentation
    #
    class MicrosoftOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/ModifyStrategyConfiguration AWS API Documentation
    #
    class ModifyStrategyConfiguration < Struct.new(
      :extraction,
      :consolidation)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/OAuthCredentialProvider AWS API Documentation
    #
    class OAuthCredentialProvider < Struct.new(
      :provider_arn,
      :scopes,
      :custom_parameters)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Oauth2AuthorizationServerMetadata AWS API Documentation
    #
    class Oauth2AuthorizationServerMetadata < Struct.new(
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      :response_types)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Oauth2ProviderConfigInput AWS API Documentation
    #
    class Oauth2ProviderConfigInput < Struct.new(
      :custom_oauth_2_provider_config,
      :google_oauth_2_provider_config,
      :github_oauth_2_provider_config,
      :slack_oauth_2_provider_config,
      :salesforce_oauth_2_provider_config,
      :microsoft_oauth_2_provider_config,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/Oauth2ProviderConfigOutput AWS API Documentation
    #
    class Oauth2ProviderConfigOutput < Struct.new(
      :custom_oauth_2_provider_config,
      :google_oauth_2_provider_config,
      :github_oauth_2_provider_config,
      :slack_oauth_2_provider_config,
      :salesforce_oauth_2_provider_config,
      :microsoft_oauth_2_provider_config,
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
      class Unknown < Oauth2ProviderConfigOutput; end
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket,
      :prefix)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SalesforceOauth2ProviderConfigOutput AWS API Documentation
    #
    class SalesforceOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/SlackOauth2ProviderConfigOutput AWS API Documentation
    #
    class SlackOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/StrategyConfiguration AWS API Documentation
    #
    class StrategyConfiguration < Struct.new(
      :type,
      :extraction,
      :consolidation)
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
    # @!attribute [rw] description
    #   The updated description of the AgentCore Runtime.
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
    # @!attribute [rw] protocol_configuration
    #   The protocol configuration for an agent runtime. This structure
    #   defines how the agent runtime communicates with clients.
    #   @return [Types::ProtocolConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotency of the
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   Updated environment variables to set in the AgentCore Runtime
    #   environment.
    #   @return [Hash<String,String>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-agentcore-control-2023-06-05/UpdateAgentRuntimeRequest AWS API Documentation
    #
    class UpdateAgentRuntimeRequest < Struct.new(
      :agent_runtime_id,
      :description,
      :agent_runtime_artifact,
      :role_arn,
      :network_configuration,
      :protocol_configuration,
      :client_token,
      :environment_variables,
      :authorizer_configuration,
      :request_header_configuration)
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
      :credential_provider_configurations)
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
      :oauth2_provider_config_output,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
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

