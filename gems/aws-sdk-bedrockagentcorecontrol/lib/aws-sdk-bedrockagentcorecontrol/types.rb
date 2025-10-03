# frozen_string_literal: true

# This is generated code!

module Aws::BedrockAgentCoreControl
  # This module contains the types returned by client operations.
  module Types

    # <p>This exception is thrown when a request is denied per access permissions</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an agent runtime. An agent runtime is the execution environment for a Amazon Bedrock Agent.</p>
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
    class AgentRuntimeArtifact < Struct.new(
      :container_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContainerConfiguration < AgentRuntimeArtifact; end
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

    # <p>The network configuration for a browser. This structure defines how the browser connects to the network.</p>
    # @!attribute network_mode
    #   <p>The network mode for the browser. This field specifies how the browser connects to the network.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>VpcConfig for the Agent.</p>
    #   @return [Types::VpcConfig]
    class BrowserNetworkConfiguration < Struct.new(
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

    # <p>Contains summary information about a browser. A browser enables Amazon Bedrock Agent to interact with web content.</p>
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

    # <p>The network configuration for a code interpreter. This structure defines how the code interpreter connects to the network.</p>
    # @!attribute network_mode
    #   <p>The network mode for the code interpreter. This field specifies how the code interpreter connects to the network.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>VpcConfig for the Agent.</p>
    #   @return [Types::VpcConfig]
    class CodeInterpreterNetworkConfiguration < Struct.new(
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

    # <p>Contains summary information about a code interpreter. A code interpreter enables Amazon Bedrock Agent to execute code.</p>
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

    # <p>Exception thrown when a resource is modified concurrently by multiple requests.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when there is a conflict performing an operation</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
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
      :container_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    # @!attribute status
    #   <p>The current status of the AgentCore Runtime endpoint.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the AgentCore Runtime endpoint was created.</p>
    #   @return [Time]
    class CreateAgentRuntimeEndpointResponse < Struct.new(
      :target_version,
      :agent_runtime_endpoint_arn,
      :agent_runtime_arn,
      :status,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_name
    #   <p>The name of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AgentCore Runtime.</p>
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
    # @!attribute protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    #   @return [Types::ProtocolConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>Environment variables to set in the AgentCore Runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the AgentCore Runtime.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute request_header_configuration
    #   <p>Configuration for HTTP request headers that will be passed through to the runtime.</p>
    #   @return [Types::RequestHeaderConfiguration]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the agent runtime. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
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
      :tags,
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
    class CreateApiKeyCredentialProviderRequest < Struct.new(
      :name,
      :api_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret containing the API key.</p>
    #   @return [Types::Secret]
    # @!attribute name
    #   <p>The name of the created API key credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the created API key credential provider.</p>
    #   @return [String]
    class CreateApiKeyCredentialProviderResponse < Struct.new(
      :api_key_secret_arn,
      :name,
      :credential_provider_arn,
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
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the browser. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateBrowserRequest < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :network_configuration,
      :recording,
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
      :browser_id,
      :browser_arn,
      :created_at,
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
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, Amazon Bedrock ignores the request but does not return an error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to assign to the code interpreter. Tags enable you to categorize your resources in different ways, for example, by purpose, owner, or environment.</p>
    #   @return [Hash<String, String>]
    class CreateCodeInterpreterRequest < Struct.new(
      :name,
      :description,
      :execution_role_arn,
      :network_configuration,
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
      :code_interpreter_id,
      :code_interpreter_arn,
      :created_at,
      :status,
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
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
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
    #   <p>The type of authorizer to use for the gateway.</p>
    #   @return [String]
    # @!attribute authorizer_configuration
    #   <p>The authorizer configuration for the gateway.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt data associated with the gateway.</p>
    #   @return [String]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of key-value pairs to associate with the gateway as metadata tags.</p>
    #   @return [Hash<String, String>]
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
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the created gateway.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
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
      :exception_level,
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
    #   <p>A unique, case-sensitive identifier to ensure that the API request completes no more than one time. If this token matches a previous request, the service ignores the request, but does not return an error. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>.</p>
    #   @return [String]
    # @!attribute target_configuration
    #   <p>The configuration settings for the target, including endpoint information and schema definitions.</p>
    #   @return [Types::TargetConfiguration]
    # @!attribute credential_provider_configurations
    #   <p>The credential provider configurations for the target. These configurations specify how the gateway authenticates with the target endpoint.</p>
    #   @return [Array<Types::CredentialProviderConfiguration>]
    class CreateGatewayTargetRequest < Struct.new(
      :gateway_identifier,
      :name,
      :description,
      :client_token,
      :target_configuration,
      :credential_provider_configurations,
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
    class CreateMemoryInput < Struct.new(
      :client_token,
      :name,
      :description,
      :encryption_key_arn,
      :memory_execution_role_arn,
      :event_expiry_duration,
      :memory_strategies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory
    #   <p>The details of the created memory, including its ID, ARN, name, description, and configuration settings.</p>
    #   @return [Types::Memory]
    class CreateMemoryOutput < Struct.new(
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
    class CreateOauth2CredentialProviderRequest < Struct.new(
      :name,
      :credential_provider_vendor,
      :oauth2_provider_config_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the client secret in AWS Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute name
    #   <p>The name of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth2 credential provider.</p>
    #   @return [String]
    class CreateOauth2CredentialProviderResponse < Struct.new(
      :client_secret_arn,
      :name,
      :credential_provider_arn,
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
    class CreateWorkloadIdentityRequest < Struct.new(
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
    class CreateWorkloadIdentityResponse < Struct.new(
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
    class CredentialProvider < Struct.new(
      :oauth_credential_provider,
      :api_key_credential_provider,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OauthCredentialProvider < CredentialProvider; end
      class ApiKeyCredentialProvider < CredentialProvider; end
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
      :credential_provider_type,
      :credential_provider,
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
    class CustomConfigurationInput < Struct.new(
      :semantic_override,
      :summary_override,
      :user_preference_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticOverride < CustomConfigurationInput; end
      class SummaryOverride < CustomConfigurationInput; end
      class UserPreferenceOverride < CustomConfigurationInput; end
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
    class CustomConsolidationConfiguration < Struct.new(
      :semantic_consolidation_override,
      :summary_consolidation_override,
      :user_preference_consolidation_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticConsolidationOverride < CustomConsolidationConfiguration; end
      class SummaryConsolidationOverride < CustomConsolidationConfiguration; end
      class UserPreferenceConsolidationOverride < CustomConsolidationConfiguration; end
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
    class CustomConsolidationConfigurationInput < Struct.new(
      :semantic_consolidation_override,
      :summary_consolidation_override,
      :user_preference_consolidation_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticConsolidationOverride < CustomConsolidationConfigurationInput; end
      class SummaryConsolidationOverride < CustomConsolidationConfigurationInput; end
      class UserPreferenceConsolidationOverride < CustomConsolidationConfigurationInput; end
      class Unknown < CustomConsolidationConfigurationInput; end
    end

    # <p>Contains custom extraction configuration information.</p>
    # @!attribute semantic_extraction_override
    #   <p>The semantic extraction override configuration.</p>
    #   @return [Types::SemanticExtractionOverride]
    # @!attribute user_preference_extraction_override
    #   <p>The user preference extraction override configuration.</p>
    #   @return [Types::UserPreferenceExtractionOverride]
    class CustomExtractionConfiguration < Struct.new(
      :semantic_extraction_override,
      :user_preference_extraction_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticExtractionOverride < CustomExtractionConfiguration; end
      class UserPreferenceExtractionOverride < CustomExtractionConfiguration; end
      class Unknown < CustomExtractionConfiguration; end
    end

    # <p>Input for a custom extraction configuration.</p>
    # @!attribute semantic_extraction_override
    #   <p>The semantic extraction override configuration input.</p>
    #   @return [Types::SemanticOverrideExtractionConfigurationInput]
    # @!attribute user_preference_extraction_override
    #   <p>The user preference extraction override configuration input.</p>
    #   @return [Types::UserPreferenceOverrideExtractionConfigurationInput]
    class CustomExtractionConfigurationInput < Struct.new(
      :semantic_extraction_override,
      :user_preference_extraction_override,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticExtractionOverride < CustomExtractionConfigurationInput; end
      class UserPreferenceExtractionOverride < CustomExtractionConfigurationInput; end
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
    class CustomJWTAuthorizerConfiguration < Struct.new(
      :discovery_url,
      :allowed_audience,
      :allowed_clients,
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
    #   <p>The namespaces associated with the custom memory strategy.</p>
    #   @return [Array<String>]
    # @!attribute configuration
    #   <p>The configuration for the custom memory strategy.</p>
    #   @return [Types::CustomConfigurationInput]
    class CustomMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      :configuration,
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
    class CustomOauth2ProviderConfigInput < Struct.new(
      :oauth_discovery,
      :client_id,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output configuration for a custom OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the custom provider.</p>
    #   @return [Types::Oauth2Discovery]
    class CustomOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception thrown when decryption of a secret fails.</p>
    # @!attribute message
    #   @return [String]
    class DecryptionFailure < Struct.new(
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
    class DeleteAgentRuntimeEndpointResponse < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime to delete.</p>
    #   @return [String]
    class DeleteAgentRuntimeRequest < Struct.new(
      :agent_runtime_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the AgentCore Runtime deletion.</p>
    #   @return [String]
    class DeleteAgentRuntimeResponse < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the API key credential provider to delete.</p>
    #   @return [String]
    class DeleteApiKeyCredentialProviderRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApiKeyCredentialProviderResponse < Struct.new(
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
      :browser_id,
      :status,
      :last_updated_at,
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
      :code_interpreter_id,
      :status,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to delete.</p>
    #   @return [String]
    class DeleteGatewayRequest < Struct.new(
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
      :gateway_id,
      :status,
      :status_reasons,
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
      :gateway_arn,
      :target_id,
      :status,
      :status_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A client token is used for keeping track of idempotent requests. It can contain a session id which can be around 250 chars, combined with a unique AWS identifier.</p>
    #   @return [String]
    # @!attribute memory_id
    #   <p>The unique identifier of the memory to delete.</p>
    #   @return [String]
    class DeleteMemoryInput < Struct.new(
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
      :memory_strategy_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the OAuth2 credential provider to delete.</p>
    #   @return [String]
    class DeleteOauth2CredentialProviderRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteOauth2CredentialProviderResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workload identity to delete.</p>
    #   @return [String]
    class DeleteWorkloadIdentityRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkloadIdentityResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception thrown when encryption of a secret fails.</p>
    # @!attribute message
    #   @return [String]
    class EncryptionFailure < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
      :provider_arn,
      :credential_parameter_name,
      :credential_prefix,
      :credential_location,
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
    end

    # @!attribute agent_runtime_id
    #   <p>The unique identifier of the AgentCore Runtime associated with the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the AgentCore Runtime endpoint to retrieve.</p>
    #   @return [String]
    class GetAgentRuntimeEndpointRequest < Struct.new(
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
      :agent_runtime_id,
      :agent_runtime_version,
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
    # @!attribute agent_runtime_name
    #   <p>The name of the AgentCore Runtime.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AgentCore Runtime.</p>
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
    # @!attribute agent_runtime_artifact
    #   <p>The artifact of the AgentCore Runtime.</p>
    #   @return [Types::AgentRuntimeArtifact]
    # @!attribute network_configuration
    #   <p>The network configuration for the AgentCore Runtime.</p>
    #   @return [Types::NetworkConfiguration]
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
    # @!attribute status
    #   <p>The current status of the AgentCore Runtime.</p>
    #   @return [String]
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
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the API key credential provider to retrieve.</p>
    #   @return [String]
    class GetApiKeyCredentialProviderRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the API key secret in AWS Secrets Manager.</p>
    #   @return [Types::Secret]
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
      :api_key_secret_arn,
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute browser_id
    #   <p>The unique identifier of the browser to retrieve.</p>
    #   @return [String]
    class GetBrowserRequest < Struct.new(
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
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute code_interpreter_id
    #   <p>The unique identifier of the code interpreter to retrieve.</p>
    #   @return [String]
    class GetCodeInterpreterRequest < Struct.new(
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
      :code_interpreter_id,
      :code_interpreter_arn,
      :name,
      :description,
      :execution_role_arn,
      :network_configuration,
      :status,
      :failure_reason,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_identifier
    #   <p>The identifier of the gateway to retrieve.</p>
    #   @return [String]
    class GetGatewayRequest < Struct.new(
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
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the gateway.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
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
      :exception_level,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory_id
    #   <p>The unique identifier of the memory to retrieve.</p>
    #   @return [String]
    class GetMemoryInput < Struct.new(
      :memory_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory
    #   <p>The retrieved AgentCore Memory resource details.</p>
    #   @return [Types::Memory]
    class GetMemoryOutput < Struct.new(
      :memory,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the OAuth2 credential provider to retrieve.</p>
    #   @return [String]
    class GetOauth2CredentialProviderRequest < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the client secret in AWS Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute name
    #   <p>The name of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>ARN of the credential provider requested.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider.</p>
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
    class GetOauth2CredentialProviderResponse < Struct.new(
      :client_secret_arn,
      :name,
      :credential_provider_arn,
      :credential_provider_vendor,
      :oauth2_provider_config_output,
      :created_time,
      :last_updated_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute token_vault_id
    #   <p>The unique identifier of the token vault to retrieve.</p>
    #   @return [String]
    class GetTokenVaultRequest < Struct.new(
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
    class GithubOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output configuration for a GitHub OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the GitHub provider.</p>
    #   @return [Types::Oauth2Discovery]
    class GithubOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
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
    class GoogleOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output configuration for a Google OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the Google provider.</p>
    #   @return [Types::Oauth2Discovery]
    class GoogleOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown if there was an unexpected error during processing of request</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
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
      :key_type,
      :kms_key_arn,
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
      :runtime_endpoints,
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
      :credential_providers,
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
      :browser_summaries,
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
      :code_interpreter_summaries,
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
      :items,
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
      :credential_providers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
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
      :workload_identities,
      :next_token,
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
    class MCPGatewayConfiguration < Struct.new(
      :supported_versions,
      :instructions,
      :search_type,
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
      :lambda_arn,
      :tool_schema,
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
    class McpTargetConfiguration < Struct.new(
      :open_api_schema,
      :smithy_model,
      :lambda,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class OpenApiSchema < McpTargetConfiguration; end
      class SmithyModel < McpTargetConfiguration; end
      class Lambda < McpTargetConfiguration; end
      class Unknown < McpTargetConfiguration; end
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
    #   <p>The namespaces associated with the memory strategy.</p>
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
    class MemoryStrategy < Struct.new(
      :strategy_id,
      :name,
      :description,
      :configuration,
      :type,
      :namespaces,
      :created_at,
      :updated_at,
      :status,
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
    class MemoryStrategyInput < Struct.new(
      :semantic_memory_strategy,
      :summary_memory_strategy,
      :user_preference_memory_strategy,
      :custom_memory_strategy,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SemanticMemoryStrategy < MemoryStrategyInput; end
      class SummaryMemoryStrategy < MemoryStrategyInput; end
      class UserPreferenceMemoryStrategy < MemoryStrategyInput; end
      class CustomMemoryStrategy < MemoryStrategyInput; end
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
    class MemorySummary < Struct.new(
      :arn,
      :id,
      :status,
      :created_at,
      :updated_at,
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
    class MicrosoftOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output configuration for a Microsoft OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the Microsoft provider.</p>
    #   @return [Types::Oauth2Discovery]
    class MicrosoftOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
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
    #   <p>The updated namespaces for the memory strategy.</p>
    #   @return [Array<String>]
    # @!attribute configuration
    #   <p>The updated configuration for the memory strategy.</p>
    #   @return [Types::ModifyStrategyConfiguration]
    class ModifyMemoryStrategyInput < Struct.new(
      :memory_strategy_id,
      :description,
      :namespaces,
      :configuration,
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
    class ModifyStrategyConfiguration < Struct.new(
      :extraction,
      :consolidation,
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
      :network_mode,
      :network_mode_config,
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
    class OAuthCredentialProvider < Struct.new(
      :provider_arn,
      :scopes,
      :custom_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
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
    class Oauth2AuthorizationServerMetadata < Struct.new(
      :issuer,
      :authorization_endpoint,
      :token_endpoint,
      :response_types,
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
    class Oauth2ProviderConfigInput < Struct.new(
      :custom_oauth2_provider_config,
      :google_oauth2_provider_config,
      :github_oauth2_provider_config,
      :slack_oauth2_provider_config,
      :salesforce_oauth2_provider_config,
      :microsoft_oauth2_provider_config,
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
    class Oauth2ProviderConfigOutput < Struct.new(
      :custom_oauth2_provider_config,
      :google_oauth2_provider_config,
      :github_oauth2_provider_config,
      :slack_oauth2_provider_config,
      :salesforce_oauth2_provider_config,
      :microsoft_oauth2_provider_config,
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
      class Unknown < Oauth2ProviderConfigOutput; end
    end

    # <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    # @!attribute server_protocol
    #   <p>The server protocol for the agent runtime. This field specifies which protocol the agent runtime uses to communicate with clients.</p>
    #   @return [String]
    class ProtocolConfiguration < Struct.new(
      :server_protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The recording configuration for a browser. This structure defines how browser sessions are recorded.</p>
    # @!attribute enabled
    #   <p>Indicates whether recording is enabled for the browser. When set to true, browser sessions are recorded.</p>
    #   @return [Boolean]
    # @!attribute s3_location
    #   <p>The Amazon S3 location where browser recordings are stored. This location contains the recorded browser sessions.</p>
    #   @return [Types::S3Location]
    class RecordingConfig < Struct.new(
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

    # <p>Exception thrown when a resource limit is exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a resource referenced by the operation does not exist</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
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
      :uri,
      :bucket_owner_account_id,
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
    class S3Location < Struct.new(
      :bucket,
      :prefix,
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
    class SalesforceOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output configuration for a Salesforce OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the Salesforce provider.</p>
    #   @return [Types::Oauth2Discovery]
    class SalesforceOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
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
      :type,
      :properties,
      :required,
      :items,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a secret in AWS Secrets Manager.</p>
    # @!attribute secret_arn
    #   <p>The Amazon Resource Name (ARN) of the secret in AWS Secrets Manager.</p>
    #   @return [String]
    class Secret < Struct.new(
      :secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains semantic consolidation override configuration.</p>
    # @!attribute append_to_prompt
    #   <p>The text to append to the prompt for semantic consolidation.</p>
    #   @return [String]
    # @!attribute model_id
    #   <p>The model ID to use for semantic consolidation.</p>
    #   @return [String]
    class SemanticConsolidationOverride < Struct.new(
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
    #   <p>The namespaces associated with the semantic memory strategy.</p>
    #   @return [Array<String>]
    class SemanticMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
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
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error occurred.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a request is made beyond the service quota</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
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
      :token_vault_id,
      :kms_configuration,
      :last_modified_date,
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
    class SlackOauth2ProviderConfigInput < Struct.new(
      :client_id,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output configuration for a Slack OAuth2 provider.</p>
    # @!attribute oauth_discovery
    #   <p>The OAuth2 discovery information for the Slack provider.</p>
    #   @return [Types::Oauth2Discovery]
    class SlackOauth2ProviderConfigOutput < Struct.new(
      :oauth_discovery,
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
    class StrategyConfiguration < Struct.new(
      :type,
      :extraction,
      :consolidation,
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
    #   <p>The namespaces associated with the summary memory strategy.</p>
    #   @return [Array<String>]
    class SummaryMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for summary override configuration in a memory strategy.</p>
    # @!attribute consolidation
    #   <p>The consolidation configuration for a summary override.</p>
    #   @return [Types::SummaryOverrideConsolidationConfigurationInput]
    class SummaryOverrideConfigurationInput < Struct.new(
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
      :append_to_prompt,
      :model_id,
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
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a gateway target. This structure defines how the gateway connects to and interacts with the target endpoint.</p>
    # @!attribute mcp
    #   <p>The Model Context Protocol (MCP) configuration for the target. This configuration defines how the gateway uses MCP to communicate with the target.</p>
    #   @return [Types::McpTargetConfiguration]
    class TargetConfiguration < Struct.new(
      :mcp,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Mcp < TargetConfiguration; end
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
    class TargetSummary < Struct.new(
      :target_id,
      :name,
      :status,
      :description,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>API rate limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class ThrottledException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the number of requests exceeds the limit</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A tool definition for a gateway target. This structure defines a tool that the target exposes through the Model Context Protocol.</p>
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

    # <p>This exception is thrown when the JWT bearer token is invalid or not found for OAuth bearer token based access</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
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
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
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
    # @!attribute description
    #   <p>The updated description of the AgentCore Runtime.</p>
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
    # @!attribute protocol_configuration
    #   <p>The protocol configuration for an agent runtime. This structure defines how the agent runtime communicates with clients.</p>
    #   @return [Types::ProtocolConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>Updated environment variables to set in the AgentCore Runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute authorizer_configuration
    #   <p>The updated authorizer configuration for the AgentCore Runtime.</p>
    #   @return [Types::AuthorizerConfiguration]
    # @!attribute request_header_configuration
    #   <p>The updated configuration for HTTP request headers that will be passed through to the runtime.</p>
    #   @return [Types::RequestHeaderConfiguration]
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
      :request_header_configuration,
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
    class UpdateApiKeyCredentialProviderRequest < Struct.new(
      :name,
      :api_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the API key secret in AWS Secrets Manager.</p>
    #   @return [Types::Secret]
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
      :api_key_secret_arn,
      :name,
      :credential_provider_arn,
      :created_time,
      :last_updated_time,
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
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
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
      :exception_level,
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
    # @!attribute workload_identity_details
    #   <p>The workload identity details for the updated gateway.</p>
    #   @return [Types::WorkloadIdentityDetails]
    # @!attribute exception_level
    #   <p>The level of detail in error messages returned when invoking the gateway.</p> <ul> <li> <p>If the value is <code>DEBUG</code>, granular exception messages are returned to help a user debug the gateway.</p> </li> <li> <p>If the value is omitted, a generic error message is returned to the end user.</p> </li> </ul>
    #   @return [String]
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
      :exception_level,
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
    class UpdateGatewayTargetRequest < Struct.new(
      :gateway_identifier,
      :target_id,
      :name,
      :description,
      :target_configuration,
      :credential_provider_configurations,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A client token is used for keeping track of idempotent requests. It can contain a session id which can be around 250 chars, combined with a unique AWS identifier.</p>
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
    class UpdateMemoryInput < Struct.new(
      :client_token,
      :memory_id,
      :description,
      :event_expiry_duration,
      :memory_execution_role_arn,
      :memory_strategies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute memory
    #   <p>The updated AgentCore Memory resource details.</p>
    #   @return [Types::Memory]
    class UpdateMemoryOutput < Struct.new(
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
      :name,
      :credential_provider_vendor,
      :oauth2_provider_config_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the client secret in AWS Secrets Manager.</p>
    #   @return [Types::Secret]
    # @!attribute name
    #   <p>The name of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_vendor
    #   <p>The vendor of the OAuth2 credential provider.</p>
    #   @return [String]
    # @!attribute credential_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OAuth2 credential provider.</p>
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
    class UpdateOauth2CredentialProviderResponse < Struct.new(
      :client_secret_arn,
      :name,
      :credential_provider_vendor,
      :credential_provider_arn,
      :oauth2_provider_config_output,
      :created_time,
      :last_updated_time,
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
      :name,
      :workload_identity_arn,
      :allowed_resource_oauth2_return_urls,
      :created_time,
      :last_updated_time,
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
    #   <p>The namespaces associated with the user preference memory strategy.</p>
    #   @return [Array<String>]
    class UserPreferenceMemoryStrategyInput < Struct.new(
      :name,
      :description,
      :namespaces,
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
      :append_to_prompt,
      :model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    # @!attribute field_list
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
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
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>VpcConfig for the Agent.</p>
    # @!attribute security_groups
    #   <p>The security groups associated with the VPC configuration.</p>
    #   @return [Array<String>]
    # @!attribute subnets
    #   <p>The subnets associated with the VPC configuration.</p>
    #   @return [Array<String>]
    class VpcConfig < Struct.new(
      :security_groups,
      :subnets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the workload identity.</p>
    # @!attribute workload_identity_arn
    #   <p>The ARN associated with the workload identity.</p>
    #   @return [String]
    class WorkloadIdentityDetails < Struct.new(
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
      :name,
      :workload_identity_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
