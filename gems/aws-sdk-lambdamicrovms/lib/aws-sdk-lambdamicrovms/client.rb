# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:lambdamicrovms)

module Aws::LambdaMicrovms
  # An API client for Aws::LambdaMicrovms.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LambdaMicrovms
    @identifier = :lambdamicrovms

    add_plugin(::Aws::LambdaMicrovms::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LambdaMicrovms::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates an authentication token for accessing a running MicroVM. The token grants access to the specified ports on the MicroVM endpoint.</p>
    # @param [Hash, Types::CreateMicrovmAuthTokenRequest] params
    # @option params [String] :microvm_identifier
    #   <p>The ID of the MicroVM to create an authentication token for.</p>
    # @option params [Integer] :expiration_in_minutes
    #   <p>The duration in minutes before the authentication token expires. Maximum: 60 minutes.</p>
    # @option params [Array<Types::PortSpecification>] :allowed_ports
    #   <p>The list of port specifications that the authentication token grants access to on the MicroVM.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     microvm_identifier: "MicrovmIdentifier", # required
    #     expiration_in_minutes: 1, # required
    #     allowed_ports: [{ # required
    #       # One of:
    #       port: 1,
    #       range: {
    #         start_port: 1, # required
    #         end_port: 1, # required
    #       },
    #       all_ports: {
    #       }
    #     }]
    #   }
    #   options = {}
    #   response = client.create_microvm_auth_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auth_token: { # required
    #       "AuthTokenKey" => "AuthTokenValue"
    #     }
    #   }
    # @return [Types::CreateMicrovmAuthTokenResponse]
    def create_microvm_auth_token(params = {}, options = {})
      request = build_request(:create_microvm_auth_token, params)
      request.send_request(options)
    end

    # <p>Creates a MicroVM image from the specified code artifact and base image. The build is asynchronous — the image transitions from CREATING to CREATED on success, or CREATE_FAILED on failure. Use GetMicrovmImage to poll for completion.</p>
    # @param [Hash, Types::CreateMicrovmImageRequest] params
    # @option params [String] :base_image_arn
    #   <p>The ARN of the Lambda-managed base MicroVM image to build upon. Use ListManagedMicrovmImages to discover available base images.</p>
    # @option params [String] :base_image_version
    #   <p>The specific version of the base MicroVM image to use.</p>
    # @option params [String] :build_role_arn
    #   <p>The ARN of the IAM role assumed during the image build process. This role must have permissions to access the code artifact and any required resources.</p>
    # @option params [String] :description
    #   <p>A description of the MicroVM image.</p>
    # @option params [Types::CodeArtifact] :code_artifact
    #   <p>The code artifact containing the application code and metadata for the MicroVM image.</p>
    # @option params [Types::Logging] :logging
    #   <p>The logging configuration for build-time and runtime logs. Specify {"cloudWatch": {"logGroup": "..."}} to stream logs to a custom CloudWatch log group, or {"disabled": {}} to turn off logging.</p>
    # @option params [Array<String>] :egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    # @option params [Array<Types::CpuConfiguration>] :cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    # @option params [Array<Types::Resources>] :resources
    #   <p>The resource requirements for the MicroVM.</p>
    # @option params [Array<String>] :additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    # @option params [Types::Hooks] :hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    # @option params [String] :name
    #   <p>The name of the MicroVM image. Must be unique within the AWS account.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key-value pairs that you can attach to the resource. Use tags to categorize resources for cost allocation, access control (ABAC), and organization.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token, the operation returns the successful response without performing any further actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     base_image_arn: "NonBlankString", # required
    #     base_image_version: "Version",
    #     build_role_arn: "RoleArn", # required
    #     description: "String",
    #     code_artifact: { # required
    #       # One of:
    #       uri: "NonBlankString"
    #     },
    #     logging: {
    #       # One of:
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "String",
    #         log_stream: "String"
    #       }
    #     },
    #     egress_network_connectors: ["NetworkConnector"],
    #     cpu_configurations: [
    #       {
    #         architecture: "ARM_64" # One of: ["ARM_64"], # required
    #       }
    #     ],
    #     resources: [
    #       {
    #         minimum_memory_in_mi_b: 1, # required
    #       }
    #     ],
    #     additional_os_capabilities: ["ALL" # One of: ["ALL"]],
    #     hooks: {
    #       port: 1,
    #       microvm_hooks: {
    #         run: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         run_timeout_in_seconds: 1,
    #         resume: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         resume_timeout_in_seconds: 1,
    #         suspend: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         suspend_timeout_in_seconds: 1,
    #         terminate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         terminate_timeout_in_seconds: 1
    #       },
    #       microvm_image_hooks: {
    #         ready: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         ready_timeout_in_seconds: 1,
    #         validate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         validate_timeout_in_seconds: 1
    #       }
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     name: "ImageName", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_microvm_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_arn: "NonBlankString", # required
    #     name: "ImageName", # required
    #     state: "CREATING" # One of: ["CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #     latest_active_image_version: "NonBlankString",
    #     latest_failed_image_version: "NonBlankString",
    #     created_at: Time.now, # required
    #     base_image_arn: "NonBlankString", # required
    #     base_image_version: "Version",
    #     build_role_arn: "RoleArn", # required
    #     description: "String",
    #     code_artifact: { # required
    #       # One of:
    #       uri: "NonBlankString"
    #     },
    #     logging: {
    #       # One of:
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "String",
    #         log_stream: "String"
    #       }
    #     },
    #     egress_network_connectors: ["NetworkConnector"],
    #     cpu_configurations: [
    #       {
    #         architecture: "ARM_64" # One of: ["ARM_64"], # required
    #       }
    #     ],
    #     resources: [
    #       {
    #         minimum_memory_in_mi_b: 1, # required
    #       }
    #     ],
    #     additional_os_capabilities: ["ALL" # One of: ["ALL"]],
    #     hooks: {
    #       port: 1,
    #       microvm_hooks: {
    #         run: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         run_timeout_in_seconds: 1,
    #         resume: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         resume_timeout_in_seconds: 1,
    #         suspend: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         suspend_timeout_in_seconds: 1,
    #         terminate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         terminate_timeout_in_seconds: 1
    #       },
    #       microvm_image_hooks: {
    #         ready: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         ready_timeout_in_seconds: 1,
    #         validate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         validate_timeout_in_seconds: 1
    #       }
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     updated_at: Time.now,
    #     image_version: "NonBlankString", # required
    #   }
    # @return [Types::CreateMicrovmImageResponse]
    def create_microvm_image(params = {}, options = {})
      request = build_request(:create_microvm_image, params)
      request.send_request(options)
    end

    # <p>Creates a shell authentication token for interactive shell access to a running MicroVM. The MicroVM must have been run with the SHELL_INGRESS network connector attached.</p>
    # @param [Hash, Types::CreateMicrovmShellAuthTokenRequest] params
    # @option params [String] :microvm_identifier
    #   <p>The ID of the MicroVM to create a shell authentication token for.</p>
    # @option params [Integer] :expiration_in_minutes
    #   <p>The duration in minutes before the shell authentication token expires.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     microvm_identifier: "MicrovmIdentifier", # required
    #     expiration_in_minutes: 1, # required
    #   }
    #   options = {}
    #   response = client.create_microvm_shell_auth_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auth_token: { # required
    #       "AuthTokenKey" => "AuthTokenValue"
    #     }
    #   }
    # @return [Types::CreateMicrovmShellAuthTokenResponse]
    def create_microvm_shell_auth_token(params = {}, options = {})
      request = build_request(:create_microvm_shell_auth_token, params)
      request.send_request(options)
    end

    # <p>Deletes a MicroVM image. This operation is idempotent; deleting an image that has already been deleted succeeds without error.</p>
    # @param [Hash, Types::DeleteMicrovmImageInput] params
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_identifier: "MicrovmImageIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_microvm_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     state: "CREATING" # One of: ["CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #   }
    # @return [Types::DeleteMicrovmImageOutput]
    def delete_microvm_image(params = {}, options = {})
      request = build_request(:delete_microvm_image, params)
      request.send_request(options)
    end

    # <p>Deletes a specific version of a MicroVM image. This operation is idempotent; deleting a version that has already been deleted succeeds without error.</p>
    # @param [Hash, Types::DeleteMicrovmImageVersionInput] params
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    # @option params [String] :image_version
    #   <p>The version of the MicroVM image to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #   }
    #   options = {}
    #   response = client.delete_microvm_image_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #     state: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "DELETING", "DELETED", "DELETE_FAILED"], # required
    #   }
    # @return [Types::DeleteMicrovmImageVersionOutput]
    def delete_microvm_image_version(params = {}, options = {})
      request = build_request(:delete_microvm_image_version, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific MicroVM, including its state, endpoint, image information, and configuration. The state field is eventually consistent — determine readiness by connecting to the endpoint.</p>
    # @param [Hash, Types::GetMicrovmRequest] params
    # @option params [String] :microvm_identifier
    #   <p>The ID of the MicroVM to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     microvm_identifier: "MicrovmIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_microvm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     microvm_id: "MicrovmIdentifier", # required
    #     state: "PENDING" # One of: ["PENDING", "RUNNING", "SUSPENDING", "SUSPENDED", "TERMINATING", "TERMINATED"], # required
    #     endpoint: "String", # required
    #     image_arn: "MicrovmImageArn", # required
    #     image_version: "Version", # required
    #     execution_role_arn: "RoleArn",
    #     idle_policy: {
    #       max_idle_duration_seconds: 1, # required
    #       suspended_duration_seconds: 1, # required
    #       auto_resume_enabled: false, # required
    #     },
    #     maximum_duration_in_seconds: 1, # required
    #     started_at: Time.now, # required
    #     terminated_at: Time.now,
    #     state_reason: "NonBlankString",
    #     ingress_network_connectors: ["NetworkConnector"],
    #     egress_network_connectors: ["NetworkConnector"]
    #   }
    # @return [Types::GetMicrovmResponse]
    def get_microvm(params = {}, options = {})
      request = build_request(:get_microvm, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a MicroVM image, including its state, versions, and configuration.</p>
    # @param [Hash, Types::GetMicrovmImageInput] params
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_identifier: "MicrovmImageIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_microvm_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_arn: "NonBlankString", # required
    #     name: "ImageName", # required
    #     state: "CREATING" # One of: ["CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #     latest_active_image_version: "NonBlankString",
    #     latest_failed_image_version: "NonBlankString",
    #     created_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     updated_at: Time.now
    #   }
    # @return [Types::GetMicrovmImageOutput]
    def get_microvm_image(params = {}, options = {})
      request = build_request(:get_microvm_image, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific MicroVM image build, including its state, target architecture, and snapshot information.</p>
    # @param [Hash, Types::GetMicrovmImageBuildInput] params
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    # @option params [String] :image_version
    #   <p>The version of the MicroVM image.</p>
    # @option params [String] :build_id
    #   <p>The unique identifier of the build to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #     build_id: "NonBlankString", # required
    #   }
    #   options = {}
    #   response = client.get_microvm_image_build(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_arn: "NonBlankString", # required
    #     image_version: "NonBlankString", # required
    #     build_id: "NonBlankString", # required
    #     build_state: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED"], # required
    #     architecture: "ARM_64" # One of: ["ARM_64"], # required
    #     chipset: "GRAVITON" # One of: ["GRAVITON"], # required
    #     chipset_generation: "NonBlankString", # required
    #     state_reason: "String",
    #     created_at: Time.now, # required
    #     snapshot_build: {
    #       memory_snapshot_size_in_bytes: 1,
    #       code_install_size_in_bytes: 1,
    #       disk_snapshot_size_in_bytes: 1
    #     }
    #   }
    # @return [Types::GetMicrovmImageBuildOutput]
    def get_microvm_image_build(params = {}, options = {})
      request = build_request(:get_microvm_image_build, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a specific version of a MicroVM image, including its configuration, state, and build information.</p>
    # @param [Hash, Types::GetMicrovmImageVersionInput] params
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    # @option params [String] :image_version
    #   <p>The version of the MicroVM image to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #   }
    #   options = {}
    #   response = client.get_microvm_image_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     base_image_arn: "NonBlankString", # required
    #     base_image_version: "Version",
    #     build_role_arn: "RoleArn", # required
    #     description: "String",
    #     code_artifact: { # required
    #       # One of:
    #       uri: "NonBlankString"
    #     },
    #     logging: {
    #       # One of:
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "String",
    #         log_stream: "String"
    #       }
    #     },
    #     egress_network_connectors: ["NetworkConnector"],
    #     cpu_configurations: [
    #       {
    #         architecture: "ARM_64" # One of: ["ARM_64"], # required
    #       }
    #     ],
    #     resources: [
    #       {
    #         minimum_memory_in_mi_b: 1, # required
    #       }
    #     ],
    #     additional_os_capabilities: ["ALL" # One of: ["ALL"]],
    #     hooks: {
    #       port: 1,
    #       microvm_hooks: {
    #         run: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         run_timeout_in_seconds: 1,
    #         resume: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         resume_timeout_in_seconds: 1,
    #         suspend: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         suspend_timeout_in_seconds: 1,
    #         terminate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         terminate_timeout_in_seconds: 1
    #       },
    #       microvm_image_hooks: {
    #         ready: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         ready_timeout_in_seconds: 1,
    #         validate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         validate_timeout_in_seconds: 1
    #       }
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     image_arn: "NonBlankString", # required
    #     image_version: "NonBlankString", # required
    #     state: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "DELETING", "DELETED", "DELETE_FAILED"], # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now,
    #     state_reason: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetMicrovmImageVersionOutput]
    def get_microvm_image_version(params = {}, options = {})
      request = build_request(:get_microvm_image_version, params)
      request.send_request(options)
    end

    # <p>Lists versions of a managed MicroVM image. We recommend using pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListManagedMicrovmImageVersionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the managed MicroVM image to list versions for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     image_identifier: "MicrovmImageIdentifier", # required
    #   }
    #   options = {}
    #   response = client.list_managed_microvm_image_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [ # required
    #       {
    #         image_arn: "NonBlankString", # required
    #         image_version: "NonBlankString", # required
    #         status: "AVAILABLE" # One of: ["AVAILABLE", "DEPRECATED"],
    #         created_at: Time.now, # required
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedMicrovmImageVersionsOutput]
    def list_managed_microvm_image_versions(params = {}, options = {})
      request = build_request(:list_managed_microvm_image_versions, params)
      request.send_request(options)
    end

    # <p>Lists AWS managed MicroVM images available for use as base images. We recommend using pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListManagedMicrovmImagesInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_managed_microvm_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [ # required
    #       {
    #         image_arn: "NonBlankString", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListManagedMicrovmImagesOutput]
    def list_managed_microvm_images(params = {}, options = {})
      request = build_request(:list_managed_microvm_images, params)
      request.send_request(options)
    end

    # <p>Lists builds for a MicroVM image version with optional filtering by architecture and chipset. We recommend using pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListMicrovmImageBuildsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    # @option params [String] :image_version
    #   <p>The version of the MicroVM image to list builds for.</p>
    # @option params [String] :architecture
    #   <p>Filters builds by target CPU architecture.</p>
    # @option params [String] :chipset
    #   <p>Filters builds by target chipset.</p>
    # @option params [String] :chipset_generation
    #   <p>Filters builds by target chipset generation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #     architecture: "ARM_64" # One of: ["ARM_64"],
    #     chipset: "GRAVITON" # One of: ["GRAVITON"],
    #     chipset_generation: "NonBlankString"
    #   }
    #   options = {}
    #   response = client.list_microvm_image_builds(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [ # required
    #       {
    #         image_arn: "NonBlankString", # required
    #         image_version: "NonBlankString", # required
    #         build_id: "NonBlankString", # required
    #         build_state: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED"], # required
    #         architecture: "ARM_64" # One of: ["ARM_64"], # required
    #         chipset: "GRAVITON" # One of: ["GRAVITON"], # required
    #         chipset_generation: "NonBlankString", # required
    #         state_reason: "String",
    #         created_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListMicrovmImageBuildsOutput]
    def list_microvm_image_builds(params = {}, options = {})
      request = build_request(:list_microvm_image_builds, params)
      request.send_request(options)
    end

    # <p>Lists versions of a MicroVM image. We recommend using pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListMicrovmImageVersionsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image to list versions for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     image_identifier: "MicrovmImageIdentifier", # required
    #   }
    #   options = {}
    #   response = client.list_microvm_image_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [ # required
    #       {
    #         base_image_arn: "NonBlankString", # required
    #         base_image_version: "Version",
    #         build_role_arn: "RoleArn", # required
    #         description: "String",
    #         code_artifact: { # required
    #           # One of:
    #           uri: "NonBlankString"
    #         },
    #         logging: {
    #           # One of:
    #           disabled: {
    #           },
    #           cloud_watch: {
    #             log_group: "String",
    #             log_stream: "String"
    #           }
    #         },
    #         egress_network_connectors: ["NetworkConnector"],
    #         cpu_configurations: [
    #           {
    #             architecture: "ARM_64" # One of: ["ARM_64"], # required
    #           }
    #         ],
    #         resources: [
    #           {
    #             minimum_memory_in_mi_b: 1, # required
    #           }
    #         ],
    #         additional_os_capabilities: ["ALL" # One of: ["ALL"]],
    #         hooks: {
    #           port: 1,
    #           microvm_hooks: {
    #             run: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #             run_timeout_in_seconds: 1,
    #             resume: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #             resume_timeout_in_seconds: 1,
    #             suspend: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #             suspend_timeout_in_seconds: 1,
    #             terminate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #             terminate_timeout_in_seconds: 1
    #           },
    #           microvm_image_hooks: {
    #             ready: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #             ready_timeout_in_seconds: 1,
    #             validate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #             validate_timeout_in_seconds: 1
    #           }
    #         },
    #         environment_variables: {
    #           "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #         },
    #         image_arn: "NonBlankString", # required
    #         image_version: "NonBlankString", # required
    #         state: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "DELETING", "DELETED", "DELETE_FAILED"], # required
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now,
    #         state_reason: "String",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListMicrovmImageVersionsOutput]
    def list_microvm_image_versions(params = {}, options = {})
      request = build_request(:list_microvm_image_versions, params)
      request.send_request(options)
    end

    # <p>Lists MicroVM images in the account with optional name filtering. We recommend using pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListMicrovmImagesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    # @option params [String] :name_filter
    #   <p>Filters images whose name contains the specified string.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     name_filter: "NonBlankString"
    #   }
    #   options = {}
    #   response = client.list_microvm_images(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [ # required
    #       {
    #         image_arn: "NonBlankString", # required
    #         name: "ImageName", # required
    #         state: "CREATING" # One of: ["CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #         latest_active_image_version: "NonBlankString",
    #         latest_failed_image_version: "NonBlankString",
    #         created_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListMicrovmImagesResponse]
    def list_microvm_images(params = {}, options = {})
      request = build_request(:list_microvm_images, params)
      request.send_request(options)
    end

    # <p>Lists MicroVMs in the account with optional filtering by image and version. We recommend using pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListMicrovmsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    # @option params [String] :image_identifier
    #   <p>Optional filter to list only MicroVMs running the specified image.</p>
    # @option params [String] :image_version
    #   <p>Optional filter to list only MicroVMs running the specified image version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     image_identifier: "MicrovmImageIdentifier",
    #     image_version: "String"
    #   }
    #   options = {}
    #   response = client.list_microvms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     items: [ # required
    #       {
    #         microvm_id: "MicrovmIdentifier", # required
    #         state: "PENDING" # One of: ["PENDING", "RUNNING", "SUSPENDING", "SUSPENDED", "TERMINATING", "TERMINATED"], # required
    #         image_arn: "MicrovmImageArn", # required
    #         image_version: "Version", # required
    #         started_at: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListMicrovmsResponse]
    def list_microvms(params = {}, options = {})
      request = build_request(:list_microvms, params)
      request.send_request(options)
    end

    # <p>Lists the tags associated with a Lambda MicroVM resource.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :resource
    #   <p>The ARN of the resource to list tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Resumes a suspended MicroVM, restoring it to RUNNING state with all state intact. The MicroVM must be in SUSPENDED state.</p>
    # @param [Hash, Types::ResumeMicrovmRequest] params
    # @option params [String] :microvm_identifier
    #   <p>The ID of the MicroVM to resume.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     microvm_identifier: "MicrovmIdentifier", # required
    #   }
    #   options = {}
    #   response = client.resume_microvm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ResumeMicrovmResponse]
    def resume_microvm(params = {}, options = {})
      request = build_request(:resume_microvm, params)
      request.send_request(options)
    end

    # <p>Runs a new MicroVM from the specified image. The MicroVM starts in PENDING state and transitions to RUNNING once provisioning completes. To connect, generate an authentication token using CreateMicrovmAuthToken.</p>
    # @param [Hash, Types::RunMicrovmRequest] params
    # @option params [Array<String>] :ingress_network_connectors
    #   <p>The list of ingress network connectors to configure for the MicroVM.</p>
    # @option params [Array<String>] :egress_network_connectors
    #   <p>The list of egress network connectors to configure for the MicroVM.</p>
    # @option params [String] :image_identifier
    #   <p>The identifier (ARN or ID) of the MicroVM image to run.</p>
    # @option params [String] :image_version
    #   <p>The version of the MicroVM image to run.</p>
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the IAM role to be assumed by the MicroVM during execution.</p>
    # @option params [Types::IdlePolicy] :idle_policy
    #   <p>Configuration to control auto-suspend and auto-resume behavior.</p>
    # @option params [Types::Logging] :logging
    #   <p>The logging configuration for this MicroVM instance. Specify {"cloudWatch": {"logGroup": "..."}} to stream application logs to a custom CloudWatch log group, or {"disabled": {}} to turn off logging.</p>
    # @option params [String] :run_hook_payload
    #   <p>Per-MicroVM initialization data delivered as the request body of the /run lifecycle hook. Use to pass tenant-specific configuration such as session IDs or secret references. Maximum: 16,384 bytes.</p>
    # @option params [Integer] :maximum_duration_in_seconds
    #   <p>The maximum duration in seconds that the MicroVM can exist before being terminated by the platform. Valid range: 1–28,800 (8 hours).</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ingress_network_connectors: ["NetworkConnector"],
    #     egress_network_connectors: ["NetworkConnector"],
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "Version",
    #     execution_role_arn: "RoleArn",
    #     idle_policy: {
    #       max_idle_duration_seconds: 1, # required
    #       suspended_duration_seconds: 1, # required
    #       auto_resume_enabled: false, # required
    #     },
    #     logging: {
    #       # One of:
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "String",
    #         log_stream: "String"
    #       }
    #     },
    #     run_hook_payload: "RunHookPayload",
    #     maximum_duration_in_seconds: 1,
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.run_microvm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     microvm_id: "MicrovmIdentifier", # required
    #     state: "PENDING" # One of: ["PENDING", "RUNNING", "SUSPENDING", "SUSPENDED", "TERMINATING", "TERMINATED"], # required
    #     endpoint: "String", # required
    #     image_arn: "MicrovmImageArn", # required
    #     image_version: "Version", # required
    #     execution_role_arn: "RoleArn",
    #     idle_policy: {
    #       max_idle_duration_seconds: 1, # required
    #       suspended_duration_seconds: 1, # required
    #       auto_resume_enabled: false, # required
    #     },
    #     maximum_duration_in_seconds: 1, # required
    #     started_at: Time.now, # required
    #     terminated_at: Time.now,
    #     state_reason: "NonBlankString",
    #     ingress_network_connectors: ["NetworkConnector"],
    #     egress_network_connectors: ["NetworkConnector"]
    #   }
    # @return [Types::RunMicrovmResponse]
    def run_microvm(params = {}, options = {})
      request = build_request(:run_microvm, params)
      request.send_request(options)
    end

    # <p>Suspends a running MicroVM, preserving its full memory and disk state. The MicroVM transitions through SUSPENDING to SUSPENDED. To restore, call ResumeMicrovm or send traffic to the endpoint if autoResumeEnabled is true.</p>
    # @param [Hash, Types::SuspendMicrovmRequest] params
    # @option params [String] :microvm_identifier
    #   <p>The ID of the MicroVM to suspend.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     microvm_identifier: "MicrovmIdentifier", # required
    #   }
    #   options = {}
    #   response = client.suspend_microvm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SuspendMicrovmResponse]
    def suspend_microvm(params = {}, options = {})
      request = build_request(:suspend_microvm, params)
      request.send_request(options)
    end

    # <p>Adds tags to a Lambda MicroVM resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource
    #   <p>The ARN of the resource to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pairs of tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Terminates a MicroVM. This operation is idempotent; terminating a MicroVM that has already been terminated succeeds without error.</p>
    # @param [Hash, Types::TerminateMicrovmRequest] params
    # @option params [String] :microvm_identifier
    #   <p>The ID of the MicroVM to terminate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     microvm_identifier: "MicrovmIdentifier", # required
    #   }
    #   options = {}
    #   response = client.terminate_microvm(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TerminateMicrovmResponse]
    def terminate_microvm(params = {}, options = {})
      request = build_request(:terminate_microvm, params)
      request.send_request(options)
    end

    # <p>Removes tags from a Lambda MicroVM resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource
    #   <p>The ARN of the resource to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a MicroVM image and triggers a new version build. This operation uses PUT semantics — all required fields (codeArtifact, baseImageArn, buildRoleArn) must be provided with every request.</p>
    # @param [Hash, Types::UpdateMicrovmImageRequest] params
    # @option params [String] :base_image_arn
    #   <p>The ARN of the base MicroVM image.</p>
    # @option params [String] :base_image_version
    #   <p>The specific version of the base MicroVM image to use.</p>
    # @option params [String] :build_role_arn
    #   <p>The ARN of the IAM build role.</p>
    # @option params [String] :description
    #   <p>The description of the MicroVM image.</p>
    # @option params [Types::CodeArtifact] :code_artifact
    #   <p>The code artifact containing the application code and metadata for the MicroVM image.</p>
    # @option params [Types::Logging] :logging
    #   <p>The logging configuration for build-time and runtime logs. Specify {"cloudWatch": {"logGroup": "..."}} to stream logs to a custom CloudWatch log group, or {"disabled": {}} to turn off logging.</p>
    # @option params [Array<String>] :egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    # @option params [Array<Types::CpuConfiguration>] :cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    # @option params [Array<Types::Resources>] :resources
    #   <p>The resource requirements for the MicroVM.</p>
    # @option params [Array<String>] :additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    # @option params [Types::Hooks] :hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    # @option params [Hash<String, String>] :environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image to update.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure the idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     base_image_arn: "NonBlankString", # required
    #     base_image_version: "Version",
    #     build_role_arn: "RoleArn", # required
    #     description: "String",
    #     code_artifact: { # required
    #       # One of:
    #       uri: "NonBlankString"
    #     },
    #     logging: {
    #       # One of:
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "String",
    #         log_stream: "String"
    #       }
    #     },
    #     egress_network_connectors: ["NetworkConnector"],
    #     cpu_configurations: [
    #       {
    #         architecture: "ARM_64" # One of: ["ARM_64"], # required
    #       }
    #     ],
    #     resources: [
    #       {
    #         minimum_memory_in_mi_b: 1, # required
    #       }
    #     ],
    #     additional_os_capabilities: ["ALL" # One of: ["ALL"]],
    #     hooks: {
    #       port: 1,
    #       microvm_hooks: {
    #         run: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         run_timeout_in_seconds: 1,
    #         resume: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         resume_timeout_in_seconds: 1,
    #         suspend: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         suspend_timeout_in_seconds: 1,
    #         terminate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         terminate_timeout_in_seconds: 1
    #       },
    #       microvm_image_hooks: {
    #         ready: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         ready_timeout_in_seconds: 1,
    #         validate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         validate_timeout_in_seconds: 1
    #       }
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_microvm_image(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     image_arn: "NonBlankString", # required
    #     name: "ImageName", # required
    #     state: "CREATING" # One of: ["CREATING", "CREATED", "CREATE_FAILED", "UPDATING", "UPDATED", "UPDATE_FAILED", "DELETING", "DELETE_FAILED", "DELETED"], # required
    #     latest_active_image_version: "NonBlankString",
    #     latest_failed_image_version: "NonBlankString",
    #     created_at: Time.now, # required
    #     base_image_arn: "NonBlankString", # required
    #     base_image_version: "Version",
    #     build_role_arn: "RoleArn", # required
    #     description: "String",
    #     code_artifact: { # required
    #       # One of:
    #       uri: "NonBlankString"
    #     },
    #     logging: {
    #       # One of:
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "String",
    #         log_stream: "String"
    #       }
    #     },
    #     egress_network_connectors: ["NetworkConnector"],
    #     cpu_configurations: [
    #       {
    #         architecture: "ARM_64" # One of: ["ARM_64"], # required
    #       }
    #     ],
    #     resources: [
    #       {
    #         minimum_memory_in_mi_b: 1, # required
    #       }
    #     ],
    #     additional_os_capabilities: ["ALL" # One of: ["ALL"]],
    #     hooks: {
    #       port: 1,
    #       microvm_hooks: {
    #         run: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         run_timeout_in_seconds: 1,
    #         resume: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         resume_timeout_in_seconds: 1,
    #         suspend: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         suspend_timeout_in_seconds: 1,
    #         terminate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         terminate_timeout_in_seconds: 1
    #       },
    #       microvm_image_hooks: {
    #         ready: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         ready_timeout_in_seconds: 1,
    #         validate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         validate_timeout_in_seconds: 1
    #       }
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     updated_at: Time.now, # required
    #     image_version: "NonBlankString", # required
    #   }
    # @return [Types::UpdateMicrovmImageResponse]
    def update_microvm_image(params = {}, options = {})
      request = build_request(:update_microvm_image, params)
      request.send_request(options)
    end

    # <p>Updates the status of a specific MicroVM image version.</p>
    # @param [Hash, Types::UpdateMicrovmImageVersionRequest] params
    # @option params [String] :image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    # @option params [String] :image_version
    #   <p>The version of the MicroVM image to update.</p>
    # @option params [String] :status
    #   <p>The new status to set for the MicroVM image version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     image_identifier: "MicrovmImageIdentifier", # required
    #     image_version: "NonBlankString", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #   }
    #   options = {}
    #   response = client.update_microvm_image_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     base_image_arn: "NonBlankString", # required
    #     base_image_version: "Version",
    #     build_role_arn: "RoleArn", # required
    #     description: "String",
    #     code_artifact: { # required
    #       # One of:
    #       uri: "NonBlankString"
    #     },
    #     logging: {
    #       # One of:
    #       disabled: {
    #       },
    #       cloud_watch: {
    #         log_group: "String",
    #         log_stream: "String"
    #       }
    #     },
    #     egress_network_connectors: ["NetworkConnector"],
    #     cpu_configurations: [
    #       {
    #         architecture: "ARM_64" # One of: ["ARM_64"], # required
    #       }
    #     ],
    #     resources: [
    #       {
    #         minimum_memory_in_mi_b: 1, # required
    #       }
    #     ],
    #     additional_os_capabilities: ["ALL" # One of: ["ALL"]],
    #     hooks: {
    #       port: 1,
    #       microvm_hooks: {
    #         run: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         run_timeout_in_seconds: 1,
    #         resume: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         resume_timeout_in_seconds: 1,
    #         suspend: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         suspend_timeout_in_seconds: 1,
    #         terminate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         terminate_timeout_in_seconds: 1
    #       },
    #       microvm_image_hooks: {
    #         ready: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         ready_timeout_in_seconds: 1,
    #         validate: "DISABLED" # One of: ["DISABLED", "ENABLED"],
    #         validate_timeout_in_seconds: 1
    #       }
    #     },
    #     environment_variables: {
    #       "EnvironmentVariableKey" => "EnvironmentVariableValue"
    #     },
    #     image_arn: "NonBlankString", # required
    #     image_version: "NonBlankString", # required
    #     state: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "SUCCESSFUL", "FAILED", "DELETING", "DELETED", "DELETE_FAILED"], # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now,
    #     state_reason: "String",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateMicrovmImageVersionResponse]
    def update_microvm_image_version(params = {}, options = {})
      request = build_request(:update_microvm_image_version, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-lambdamicrovms'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
