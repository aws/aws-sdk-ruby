# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:greengrass)

module Aws::Greengrass
  # An API client for Aws::Greengrass.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Greengrass
    @identifier = :greengrass

    add_plugin(::Aws::Greengrass::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
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
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Greengrass::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # Associates a role with a group. Your Greengrass core will use the role to access AWS cloud services. The role's permissions should allow Greengrass core Lambda functions to perform actions against the cloud.
    # @param [Hash, Types::AssociateRoleToGroupRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @option params [String] :role_arn
    #   The ARN of the role you wish to associate with this group. The existence of the role is not validated.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #     role_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.associate_role_to_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_at: "__string"
    #   }
    # @return [Types::AssociateRoleToGroupResponse]
    def associate_role_to_group(params = {}, options = {})
      request = build_request(:associate_role_to_group, params)
      request.send_request(options)
    end

    # Associates a role with your account. AWS IoT Greengrass will use the role to access your Lambda functions and AWS IoT resources. This is necessary for deployments to succeed. The role must have at least minimum permissions in the policy ''AWSGreengrassResourceAccessRolePolicy''.
    # @param [Hash, Types::AssociateServiceRoleToAccountRequest] params
    # @option params [String] :role_arn
    #   The ARN of the service role you wish to associate with your account.
    # @example Request syntax with placeholder values
    #   params = {
    #     role_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.associate_service_role_to_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_at: "__string"
    #   }
    # @return [Types::AssociateServiceRoleToAccountResponse]
    def associate_service_role_to_account(params = {}, options = {})
      request = build_request(:associate_service_role_to_account, params)
      request.send_request(options)
    end

    # Creates a connector definition. You may provide the initial version of the connector definition now or use ''CreateConnectorDefinitionVersion'' at a later time.
    # @param [Hash, Types::CreateConnectorDefinitionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::ConnectorDefinitionVersion] :initial_version
    #   Information about the initial version of the connector definition.
    # @option params [String] :name
    #   The name of the connector definition.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       connectors: [
    #         {
    #           connector_arn: "__string", # required
    #           id: "__string", # required
    #           parameters: {
    #             "__string" => "__string"
    #           }
    #         }
    #       ]
    #     },
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_connector_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string"
    #   }
    # @return [Types::CreateConnectorDefinitionResponse]
    def create_connector_definition(params = {}, options = {})
      request = build_request(:create_connector_definition, params)
      request.send_request(options)
    end

    # Creates a version of a connector definition which has already been defined.
    # @param [Hash, Types::CreateConnectorDefinitionVersionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    # @option params [Array<Types::Connector>] :connectors
    #   A list of references to connectors in this version, with their corresponding configuration settings.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     connector_definition_id: "__string", # required
    #     connectors: [
    #       {
    #         connector_arn: "__string", # required
    #         id: "__string", # required
    #         parameters: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_connector_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::CreateConnectorDefinitionVersionResponse]
    def create_connector_definition_version(params = {}, options = {})
      request = build_request(:create_connector_definition_version, params)
      request.send_request(options)
    end

    # Creates a core definition. You may provide the initial version of the core definition now or use ''CreateCoreDefinitionVersion'' at a later time. Greengrass groups must each contain exactly one Greengrass core.
    # @param [Hash, Types::CreateCoreDefinitionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::CoreDefinitionVersion] :initial_version
    #   Information about the initial version of the core definition.
    # @option params [String] :name
    #   The name of the core definition.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       cores: [
    #         {
    #           certificate_arn: "__string", # required
    #           id: "__string", # required
    #           sync_shadow: false,
    #           thing_arn: "__string", # required
    #         }
    #       ]
    #     },
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_core_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string"
    #   }
    # @return [Types::CreateCoreDefinitionResponse]
    def create_core_definition(params = {}, options = {})
      request = build_request(:create_core_definition, params)
      request.send_request(options)
    end

    # Creates a version of a core definition that has already been defined. Greengrass groups must each contain exactly one Greengrass core.
    # @param [Hash, Types::CreateCoreDefinitionVersionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    # @option params [Array<Types::Core>] :cores
    #   A list of cores in the core definition version.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     core_definition_id: "__string", # required
    #     cores: [
    #       {
    #         certificate_arn: "__string", # required
    #         id: "__string", # required
    #         sync_shadow: false,
    #         thing_arn: "__string", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_core_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::CreateCoreDefinitionVersionResponse]
    def create_core_definition_version(params = {}, options = {})
      request = build_request(:create_core_definition_version, params)
      request.send_request(options)
    end

    # Creates a deployment. ''CreateDeployment'' requests are idempotent with respect to the ''X-Amzn-Client-Token'' token and the request parameters.
    # @param [Hash, Types::CreateDeploymentRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :deployment_id
    #   The ID of the deployment if you wish to redeploy a previous deployment.
    # @option params [String] :deployment_type
    #   The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @option params [String] :group_version_id
    #   The ID of the group version to be deployed.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     deployment_id: "__string",
    #     deployment_type: "NewDeployment" # One of: ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"], # required
    #     group_id: "__string", # required
    #     group_version_id: "__string"
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_arn: "__string",
    #     deployment_id: "__string"
    #   }
    # @return [Types::CreateDeploymentResponse]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # Creates a device definition. You may provide the initial version of the device definition now or use ''CreateDeviceDefinitionVersion'' at a later time.
    # @param [Hash, Types::CreateDeviceDefinitionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::DeviceDefinitionVersion] :initial_version
    #   Information about the initial version of the device definition.
    # @option params [String] :name
    #   The name of the device definition.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       devices: [
    #         {
    #           certificate_arn: "__string", # required
    #           id: "__string", # required
    #           sync_shadow: false,
    #           thing_arn: "__string", # required
    #         }
    #       ]
    #     },
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_device_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string"
    #   }
    # @return [Types::CreateDeviceDefinitionResponse]
    def create_device_definition(params = {}, options = {})
      request = build_request(:create_device_definition, params)
      request.send_request(options)
    end

    # Creates a version of a device definition that has already been defined.
    # @param [Hash, Types::CreateDeviceDefinitionVersionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    # @option params [Array<Types::Device>] :devices
    #   A list of devices in the definition version.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     device_definition_id: "__string", # required
    #     devices: [
    #       {
    #         certificate_arn: "__string", # required
    #         id: "__string", # required
    #         sync_shadow: false,
    #         thing_arn: "__string", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_device_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::CreateDeviceDefinitionVersionResponse]
    def create_device_definition_version(params = {}, options = {})
      request = build_request(:create_device_definition_version, params)
      request.send_request(options)
    end

    # Creates a Lambda function definition which contains a list of Lambda functions and their configurations to be used in a group. You can create an initial version of the definition by providing a list of Lambda functions and their configurations now, or use ''CreateFunctionDefinitionVersion'' later.
    # @param [Hash, Types::CreateFunctionDefinitionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::FunctionDefinitionVersion] :initial_version
    #   Information about the initial version of the function definition.
    # @option params [String] :name
    #   The name of the function definition.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       default_config: {
    #         execution: {
    #           isolation_mode: "GreengrassContainer" # One of: ["GreengrassContainer", "NoContainer"],
    #           run_as: {
    #             gid: 1,
    #             uid: 1
    #           }
    #         }
    #       },
    #       functions: [
    #         {
    #           function_arn: "__string",
    #           function_configuration: {
    #             encoding_type: "binary" # One of: ["binary", "json"],
    #             environment: {
    #               access_sysfs: false,
    #               execution: {
    #                 isolation_mode: "GreengrassContainer" # One of: ["GreengrassContainer", "NoContainer"],
    #                 run_as: {
    #                   gid: 1,
    #                   uid: 1
    #                 }
    #               },
    #               resource_access_policies: [
    #                 {
    #                   permission: "ro" # One of: ["ro", "rw"],
    #                   resource_id: "__string", # required
    #                 }
    #               ],
    #               variables: {
    #                 "__string" => "__string"
    #               }
    #             },
    #             exec_args: "__string",
    #             executable: "__string",
    #             memory_size: 1,
    #             pinned: false,
    #             timeout: 1,
    #             function_runtime_override: "__string"
    #           },
    #           id: "__string", # required
    #         }
    #       ]
    #     },
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_function_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string"
    #   }
    # @return [Types::CreateFunctionDefinitionResponse]
    def create_function_definition(params = {}, options = {})
      request = build_request(:create_function_definition, params)
      request.send_request(options)
    end

    # Creates a version of a Lambda function definition that has already been defined.
    # @param [Hash, Types::CreateFunctionDefinitionVersionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::FunctionDefaultConfig] :default_config
    #   The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    # @option params [Array<Types::Function>] :functions
    #   A list of Lambda functions in this function definition version.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     default_config: {
    #       execution: {
    #         isolation_mode: "GreengrassContainer" # One of: ["GreengrassContainer", "NoContainer"],
    #         run_as: {
    #           gid: 1,
    #           uid: 1
    #         }
    #       }
    #     },
    #     function_definition_id: "__string", # required
    #     functions: [
    #       {
    #         function_arn: "__string",
    #         function_configuration: {
    #           encoding_type: "binary" # One of: ["binary", "json"],
    #           environment: {
    #             access_sysfs: false,
    #             execution: {
    #               isolation_mode: "GreengrassContainer" # One of: ["GreengrassContainer", "NoContainer"],
    #               run_as: {
    #                 gid: 1,
    #                 uid: 1
    #               }
    #             },
    #             resource_access_policies: [
    #               {
    #                 permission: "ro" # One of: ["ro", "rw"],
    #                 resource_id: "__string", # required
    #               }
    #             ],
    #             variables: {
    #               "__string" => "__string"
    #             }
    #           },
    #           exec_args: "__string",
    #           executable: "__string",
    #           memory_size: 1,
    #           pinned: false,
    #           timeout: 1,
    #           function_runtime_override: "__string"
    #         },
    #         id: "__string", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_function_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::CreateFunctionDefinitionVersionResponse]
    def create_function_definition_version(params = {}, options = {})
      request = build_request(:create_function_definition_version, params)
      request.send_request(options)
    end

    # Creates a group. You may provide the initial version of the group or use ''CreateGroupVersion'' at a later time. Tip: You can use the ''gg_group_setup'' package (https://github.com/awslabs/aws-greengrass-group-setup) as a library or command-line application to create and deploy Greengrass groups.
    # @param [Hash, Types::CreateGroupRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::GroupVersion] :initial_version
    #   Information about the initial version of the group.
    # @option params [String] :name
    #   The name of the group.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       connector_definition_version_arn: "__string",
    #       core_definition_version_arn: "__string",
    #       device_definition_version_arn: "__string",
    #       function_definition_version_arn: "__string",
    #       logger_definition_version_arn: "__string",
    #       resource_definition_version_arn: "__string",
    #       subscription_definition_version_arn: "__string"
    #     },
    #     name: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string"
    #   }
    # @return [Types::CreateGroupResponse]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # Creates a CA for the group. If a CA already exists, it will rotate the existing CA.
    # @param [Hash, Types::CreateGroupCertificateAuthorityRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_group_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_certificate_authority_arn: "__string"
    #   }
    # @return [Types::CreateGroupCertificateAuthorityResponse]
    def create_group_certificate_authority(params = {}, options = {})
      request = build_request(:create_group_certificate_authority, params)
      request.send_request(options)
    end

    # Creates a version of a group which has already been defined.
    # @param [Hash, Types::CreateGroupVersionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :connector_definition_version_arn
    #   The ARN of the connector definition version for this group.
    # @option params [String] :core_definition_version_arn
    #   The ARN of the core definition version for this group.
    # @option params [String] :device_definition_version_arn
    #   The ARN of the device definition version for this group.
    # @option params [String] :function_definition_version_arn
    #   The ARN of the function definition version for this group.
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @option params [String] :logger_definition_version_arn
    #   The ARN of the logger definition version for this group.
    # @option params [String] :resource_definition_version_arn
    #   The ARN of the resource definition version for this group.
    # @option params [String] :subscription_definition_version_arn
    #   The ARN of the subscription definition version for this group.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     connector_definition_version_arn: "__string",
    #     core_definition_version_arn: "__string",
    #     device_definition_version_arn: "__string",
    #     function_definition_version_arn: "__string",
    #     group_id: "__string", # required
    #     logger_definition_version_arn: "__string",
    #     resource_definition_version_arn: "__string",
    #     subscription_definition_version_arn: "__string"
    #   }
    #   options = {}
    #   response = client.create_group_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::CreateGroupVersionResponse]
    def create_group_version(params = {}, options = {})
      request = build_request(:create_group_version, params)
      request.send_request(options)
    end

    # Creates a logger definition. You may provide the initial version of the logger definition now or use ''CreateLoggerDefinitionVersion'' at a later time.
    # @param [Hash, Types::CreateLoggerDefinitionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::LoggerDefinitionVersion] :initial_version
    #   Information about the initial version of the logger definition.
    # @option params [String] :name
    #   The name of the logger definition.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       loggers: [
    #         {
    #           component: "GreengrassSystem" # One of: ["GreengrassSystem", "Lambda"], # required
    #           id: "__string", # required
    #           level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"], # required
    #           space: 1,
    #           type: "FileSystem" # One of: ["FileSystem", "AWSCloudWatch"], # required
    #         }
    #       ]
    #     },
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_logger_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string"
    #   }
    # @return [Types::CreateLoggerDefinitionResponse]
    def create_logger_definition(params = {}, options = {})
      request = build_request(:create_logger_definition, params)
      request.send_request(options)
    end

    # Creates a version of a logger definition that has already been defined.
    # @param [Hash, Types::CreateLoggerDefinitionVersionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    # @option params [Array<Types::Logger>] :loggers
    #   A list of loggers.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     logger_definition_id: "__string", # required
    #     loggers: [
    #       {
    #         component: "GreengrassSystem" # One of: ["GreengrassSystem", "Lambda"], # required
    #         id: "__string", # required
    #         level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"], # required
    #         space: 1,
    #         type: "FileSystem" # One of: ["FileSystem", "AWSCloudWatch"], # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_logger_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::CreateLoggerDefinitionVersionResponse]
    def create_logger_definition_version(params = {}, options = {})
      request = build_request(:create_logger_definition_version, params)
      request.send_request(options)
    end

    # Creates a resource definition which contains a list of resources to be used in a group. You can create an initial version of the definition by providing a list of resources now, or use ''CreateResourceDefinitionVersion'' later.
    # @param [Hash, Types::CreateResourceDefinitionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::ResourceDefinitionVersion] :initial_version
    #   Information about the initial version of the resource definition.
    # @option params [String] :name
    #   The name of the resource definition.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       resources: [
    #         {
    #           id: "__string", # required
    #           name: "__string", # required
    #           resource_data_container: { # required
    #             local_device_resource_data: {
    #               group_owner_setting: {
    #                 auto_add_group_owner: false,
    #                 group_owner: "__string"
    #               },
    #               source_path: "__string"
    #             },
    #             local_volume_resource_data: {
    #               destination_path: "__string",
    #               group_owner_setting: {
    #                 auto_add_group_owner: false,
    #                 group_owner: "__string"
    #               },
    #               source_path: "__string"
    #             },
    #             s3_machine_learning_model_resource_data: {
    #               destination_path: "__string",
    #               owner_setting: {
    #                 group_owner: "__string", # required
    #                 group_permission: "ro" # One of: ["ro", "rw"], # required
    #               },
    #               s3_uri: "__string"
    #             },
    #             sage_maker_machine_learning_model_resource_data: {
    #               destination_path: "__string",
    #               owner_setting: {
    #                 group_owner: "__string", # required
    #                 group_permission: "ro" # One of: ["ro", "rw"], # required
    #               },
    #               sage_maker_job_arn: "__string"
    #             },
    #             secrets_manager_secret_resource_data: {
    #               arn: "__string",
    #               additional_staging_labels_to_download: ["__string"]
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_resource_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string"
    #   }
    # @return [Types::CreateResourceDefinitionResponse]
    def create_resource_definition(params = {}, options = {})
      request = build_request(:create_resource_definition, params)
      request.send_request(options)
    end

    # Creates a version of a resource definition that has already been defined.
    # @param [Hash, Types::CreateResourceDefinitionVersionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    # @option params [Array<Types::Resource>] :resources
    #   A list of resources.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     resource_definition_id: "__string", # required
    #     resources: [
    #       {
    #         id: "__string", # required
    #         name: "__string", # required
    #         resource_data_container: { # required
    #           local_device_resource_data: {
    #             group_owner_setting: {
    #               auto_add_group_owner: false,
    #               group_owner: "__string"
    #             },
    #             source_path: "__string"
    #           },
    #           local_volume_resource_data: {
    #             destination_path: "__string",
    #             group_owner_setting: {
    #               auto_add_group_owner: false,
    #               group_owner: "__string"
    #             },
    #             source_path: "__string"
    #           },
    #           s3_machine_learning_model_resource_data: {
    #             destination_path: "__string",
    #             owner_setting: {
    #               group_owner: "__string", # required
    #               group_permission: "ro" # One of: ["ro", "rw"], # required
    #             },
    #             s3_uri: "__string"
    #           },
    #           sage_maker_machine_learning_model_resource_data: {
    #             destination_path: "__string",
    #             owner_setting: {
    #               group_owner: "__string", # required
    #               group_permission: "ro" # One of: ["ro", "rw"], # required
    #             },
    #             sage_maker_job_arn: "__string"
    #           },
    #           secrets_manager_secret_resource_data: {
    #             arn: "__string",
    #             additional_staging_labels_to_download: ["__string"]
    #           }
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_resource_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::CreateResourceDefinitionVersionResponse]
    def create_resource_definition_version(params = {}, options = {})
      request = build_request(:create_resource_definition_version, params)
      request.send_request(options)
    end

    # Creates a software update for a core or group of cores (specified as an IoT thing group.) Use this to update the OTA Agent as well as the Greengrass core software. It makes use of the IoT Jobs feature which provides additional commands to manage a Greengrass core software update job.
    # @param [Hash, Types::CreateSoftwareUpdateJobRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :s3_url_signer_role
    #   The IAM Role that Greengrass will use to create pre-signed URLs pointing towards the update artifact.
    # @option params [String] :software_to_update
    #   The piece of software on the Greengrass core that will be updated.
    # @option params [String] :update_agent_log_level
    #   The minimum level of log statements that should be logged by the OTA Agent during an update.
    # @option params [Array<String>] :update_targets
    #   The ARNs of the targets (IoT things or IoT thing groups) that this update will be applied to.
    # @option params [String] :update_targets_architecture
    #   The architecture of the cores which are the targets of an update.
    # @option params [String] :update_targets_operating_system
    #   The operating system of the cores which are the targets of an update.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     s3_url_signer_role: "S3UrlSignerRole", # required
    #     software_to_update: "core" # One of: ["core", "ota_agent"], # required
    #     update_agent_log_level: "NONE" # One of: ["NONE", "TRACE", "DEBUG", "VERBOSE", "INFO", "WARN", "ERROR", "FATAL"],
    #     update_targets: ["__string"], # required
    #     update_targets_architecture: "armv6l" # One of: ["armv6l", "armv7l", "x86_64", "aarch64"], # required
    #     update_targets_operating_system: "ubuntu" # One of: ["ubuntu", "raspbian", "amazon_linux", "openwrt"], # required
    #   }
    #   options = {}
    #   response = client.create_software_update_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     iot_job_arn: "__string",
    #     iot_job_id: "__string",
    #     platform_software_version: "__string"
    #   }
    # @return [Types::CreateSoftwareUpdateJobResponse]
    def create_software_update_job(params = {}, options = {})
      request = build_request(:create_software_update_job, params)
      request.send_request(options)
    end

    # Creates a subscription definition. You may provide the initial version of the subscription definition now or use ''CreateSubscriptionDefinitionVersion'' at a later time.
    # @param [Hash, Types::CreateSubscriptionDefinitionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Types::SubscriptionDefinitionVersion] :initial_version
    #   Information about the initial version of the subscription definition.
    # @option params [String] :name
    #   The name of the subscription definition.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     initial_version: {
    #       subscriptions: [
    #         {
    #           id: "__string", # required
    #           source: "__string", # required
    #           subject: "__string", # required
    #           target: "__string", # required
    #         }
    #       ]
    #     },
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.create_subscription_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string"
    #   }
    # @return [Types::CreateSubscriptionDefinitionResponse]
    def create_subscription_definition(params = {}, options = {})
      request = build_request(:create_subscription_definition, params)
      request.send_request(options)
    end

    # Creates a version of a subscription definition which has already been defined.
    # @param [Hash, Types::CreateSubscriptionDefinitionVersionRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    # @option params [Array<Types::Subscription>] :subscriptions
    #   A list of subscriptions.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     subscription_definition_id: "__string", # required
    #     subscriptions: [
    #       {
    #         id: "__string", # required
    #         source: "__string", # required
    #         subject: "__string", # required
    #         target: "__string", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_subscription_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::CreateSubscriptionDefinitionVersionResponse]
    def create_subscription_definition_version(params = {}, options = {})
      request = build_request(:create_subscription_definition_version, params)
      request.send_request(options)
    end

    # Deletes a connector definition.
    # @param [Hash, Types::DeleteConnectorDefinitionRequest] params
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_connector_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteConnectorDefinitionResponse]
    def delete_connector_definition(params = {}, options = {})
      request = build_request(:delete_connector_definition, params)
      request.send_request(options)
    end

    # Deletes a core definition.
    # @param [Hash, Types::DeleteCoreDefinitionRequest] params
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     core_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_core_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteCoreDefinitionResponse]
    def delete_core_definition(params = {}, options = {})
      request = build_request(:delete_core_definition, params)
      request.send_request(options)
    end

    # Deletes a device definition.
    # @param [Hash, Types::DeleteDeviceDefinitionRequest] params
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     device_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_device_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteDeviceDefinitionResponse]
    def delete_device_definition(params = {}, options = {})
      request = build_request(:delete_device_definition, params)
      request.send_request(options)
    end

    # Deletes a Lambda function definition.
    # @param [Hash, Types::DeleteFunctionDefinitionRequest] params
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     function_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_function_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteFunctionDefinitionResponse]
    def delete_function_definition(params = {}, options = {})
      request = build_request(:delete_function_definition, params)
      request.send_request(options)
    end

    # Deletes a group.
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteGroupResponse]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # Deletes a logger definition.
    # @param [Hash, Types::DeleteLoggerDefinitionRequest] params
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     logger_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_logger_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLoggerDefinitionResponse]
    def delete_logger_definition(params = {}, options = {})
      request = build_request(:delete_logger_definition, params)
      request.send_request(options)
    end

    # Deletes a resource definition.
    # @param [Hash, Types::DeleteResourceDefinitionRequest] params
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourceDefinitionResponse]
    def delete_resource_definition(params = {}, options = {})
      request = build_request(:delete_resource_definition, params)
      request.send_request(options)
    end

    # Deletes a subscription definition.
    # @param [Hash, Types::DeleteSubscriptionDefinitionRequest] params
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_subscription_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSubscriptionDefinitionResponse]
    def delete_subscription_definition(params = {}, options = {})
      request = build_request(:delete_subscription_definition, params)
      request.send_request(options)
    end

    # Disassociates the role from a group.
    # @param [Hash, Types::DisassociateRoleFromGroupRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.disassociate_role_from_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disassociated_at: "__string"
    #   }
    # @return [Types::DisassociateRoleFromGroupResponse]
    def disassociate_role_from_group(params = {}, options = {})
      request = build_request(:disassociate_role_from_group, params)
      request.send_request(options)
    end

    # Disassociates the service role from your account. Without a service role, deployments will not work.
    # @param [Hash, Types::DisassociateServiceRoleFromAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.disassociate_service_role_from_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     disassociated_at: "__string"
    #   }
    # @return [Types::DisassociateServiceRoleFromAccountResponse]
    def disassociate_service_role_from_account(params = {}, options = {})
      request = build_request(:disassociate_service_role_from_account, params)
      request.send_request(options)
    end

    # Retrieves the role associated with a particular group.
    # @param [Hash, Types::GetAssociatedRoleRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_associated_role(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_at: "__string",
    #     role_arn: "__string"
    #   }
    # @return [Types::GetAssociatedRoleResponse]
    def get_associated_role(params = {}, options = {})
      request = build_request(:get_associated_role, params)
      request.send_request(options)
    end

    # Returns the status of a bulk deployment.
    # @param [Hash, Types::GetBulkDeploymentStatusRequest] params
    # @option params [String] :bulk_deployment_id
    #   The ID of the bulk deployment.
    # @example Request syntax with placeholder values
    #   params = {
    #     bulk_deployment_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_bulk_deployment_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bulk_deployment_metrics: {
    #       invalid_input_records: 1,
    #       records_processed: 1,
    #       retry_attempts: 1
    #     },
    #     bulk_deployment_status: "Initializing" # One of: ["Initializing", "Running", "Completed", "Stopping", "Stopped", "Failed"],
    #     created_at: "__string",
    #     error_details: [
    #       {
    #         detailed_error_code: "__string",
    #         detailed_error_message: "__string"
    #       }
    #     ],
    #     error_message: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetBulkDeploymentStatusResponse]
    def get_bulk_deployment_status(params = {}, options = {})
      request = build_request(:get_bulk_deployment_status, params)
      request.send_request(options)
    end

    # Retrieves the connectivity information for a core.
    # @param [Hash, Types::GetConnectivityInfoRequest] params
    # @option params [String] :thing_name
    #   The thing name.
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_connectivity_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connectivity_info: [
    #       {
    #         host_address: "__string",
    #         id: "__string",
    #         metadata: "__string",
    #         port_number: 1
    #       }
    #     ],
    #     message: "__string"
    #   }
    # @return [Types::GetConnectivityInfoResponse]
    def get_connectivity_info(params = {}, options = {})
      request = build_request(:get_connectivity_info, params)
      request.send_request(options)
    end

    # Retrieves information about a connector definition.
    # @param [Hash, Types::GetConnectorDefinitionRequest] params
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_connector_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetConnectorDefinitionResponse]
    def get_connector_definition(params = {}, options = {})
      request = build_request(:get_connector_definition, params)
      request.send_request(options)
    end

    # Retrieves information about a connector definition version, including the connectors that the version contains. Connectors are prebuilt modules that interact with local infrastructure, device protocols, AWS, and other cloud services.
    # @param [Hash, Types::GetConnectorDefinitionVersionRequest] params
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    # @option params [String] :connector_definition_version_id
    #   The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_definition_id: "__string", # required
    #     connector_definition_version_id: "__string", # required
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_connector_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     definition: {
    #       connectors: [
    #         {
    #           connector_arn: "__string", # required
    #           id: "__string", # required
    #           parameters: {
    #             "__string" => "__string"
    #           }
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     next_token: "__string",
    #     version: "__string"
    #   }
    # @return [Types::GetConnectorDefinitionVersionResponse]
    def get_connector_definition_version(params = {}, options = {})
      request = build_request(:get_connector_definition_version, params)
      request.send_request(options)
    end

    # Retrieves information about a core definition version.
    # @param [Hash, Types::GetCoreDefinitionRequest] params
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     core_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_core_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetCoreDefinitionResponse]
    def get_core_definition(params = {}, options = {})
      request = build_request(:get_core_definition, params)
      request.send_request(options)
    end

    # Retrieves information about a core definition version.
    # @param [Hash, Types::GetCoreDefinitionVersionRequest] params
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    # @option params [String] :core_definition_version_id
    #   The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    # @example Request syntax with placeholder values
    #   params = {
    #     core_definition_id: "__string", # required
    #     core_definition_version_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_core_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     definition: {
    #       cores: [
    #         {
    #           certificate_arn: "__string", # required
    #           id: "__string", # required
    #           sync_shadow: false,
    #           thing_arn: "__string", # required
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     next_token: "__string",
    #     version: "__string"
    #   }
    # @return [Types::GetCoreDefinitionVersionResponse]
    def get_core_definition_version(params = {}, options = {})
      request = build_request(:get_core_definition_version, params)
      request.send_request(options)
    end

    # Returns the status of a deployment.
    # @param [Hash, Types::GetDeploymentStatusRequest] params
    # @option params [String] :deployment_id
    #   The ID of the deployment.
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "__string", # required
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_deployment_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_status: "__string",
    #     deployment_type: "NewDeployment" # One of: ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"],
    #     error_details: [
    #       {
    #         detailed_error_code: "__string",
    #         detailed_error_message: "__string"
    #       }
    #     ],
    #     error_message: "__string",
    #     updated_at: "__string"
    #   }
    # @return [Types::GetDeploymentStatusResponse]
    def get_deployment_status(params = {}, options = {})
      request = build_request(:get_deployment_status, params)
      request.send_request(options)
    end

    # Retrieves information about a device definition.
    # @param [Hash, Types::GetDeviceDefinitionRequest] params
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     device_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_device_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetDeviceDefinitionResponse]
    def get_device_definition(params = {}, options = {})
      request = build_request(:get_device_definition, params)
      request.send_request(options)
    end

    # Retrieves information about a device definition version.
    # @param [Hash, Types::GetDeviceDefinitionVersionRequest] params
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    # @option params [String] :device_definition_version_id
    #   The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     device_definition_id: "__string", # required
    #     device_definition_version_id: "__string", # required
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_device_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     definition: {
    #       devices: [
    #         {
    #           certificate_arn: "__string", # required
    #           id: "__string", # required
    #           sync_shadow: false,
    #           thing_arn: "__string", # required
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     next_token: "__string",
    #     version: "__string"
    #   }
    # @return [Types::GetDeviceDefinitionVersionResponse]
    def get_device_definition_version(params = {}, options = {})
      request = build_request(:get_device_definition_version, params)
      request.send_request(options)
    end

    # Retrieves information about a Lambda function definition, including its creation time and latest version.
    # @param [Hash, Types::GetFunctionDefinitionRequest] params
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     function_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_function_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetFunctionDefinitionResponse]
    def get_function_definition(params = {}, options = {})
      request = build_request(:get_function_definition, params)
      request.send_request(options)
    end

    # Retrieves information about a Lambda function definition version, including which Lambda functions are included in the version and their configurations.
    # @param [Hash, Types::GetFunctionDefinitionVersionRequest] params
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    # @option params [String] :function_definition_version_id
    #   The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     function_definition_id: "__string", # required
    #     function_definition_version_id: "__string", # required
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_function_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     definition: {
    #       default_config: {
    #         execution: {
    #           isolation_mode: "GreengrassContainer" # One of: ["GreengrassContainer", "NoContainer"],
    #           run_as: {
    #             gid: 1,
    #             uid: 1
    #           }
    #         }
    #       },
    #       functions: [
    #         {
    #           function_arn: "__string",
    #           function_configuration: {
    #             encoding_type: "binary" # One of: ["binary", "json"],
    #             environment: {
    #               access_sysfs: false,
    #               execution: {
    #                 isolation_mode: "GreengrassContainer" # One of: ["GreengrassContainer", "NoContainer"],
    #                 run_as: {
    #                   gid: 1,
    #                   uid: 1
    #                 }
    #               },
    #               resource_access_policies: [
    #                 {
    #                   permission: "ro" # One of: ["ro", "rw"],
    #                   resource_id: "__string", # required
    #                 }
    #               ],
    #               variables: {
    #                 "__string" => "__string"
    #               }
    #             },
    #             exec_args: "__string",
    #             executable: "__string",
    #             memory_size: 1,
    #             pinned: false,
    #             timeout: 1,
    #             function_runtime_override: "__string"
    #           },
    #           id: "__string", # required
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     next_token: "__string",
    #     version: "__string"
    #   }
    # @return [Types::GetFunctionDefinitionVersionResponse]
    def get_function_definition_version(params = {}, options = {})
      request = build_request(:get_function_definition_version, params)
      request.send_request(options)
    end

    # Retrieves information about a group.
    # @param [Hash, Types::GetGroupRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetGroupResponse]
    def get_group(params = {}, options = {})
      request = build_request(:get_group, params)
      request.send_request(options)
    end

    # Retreives the CA associated with a group. Returns the public key of the CA.
    # @param [Hash, Types::GetGroupCertificateAuthorityRequest] params
    # @option params [String] :certificate_authority_id
    #   The ID of the certificate authority.
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_authority_id: "__string", # required
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_group_certificate_authority(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_certificate_authority_arn: "__string",
    #     group_certificate_authority_id: "__string",
    #     pem_encoded_certificate: "__string"
    #   }
    # @return [Types::GetGroupCertificateAuthorityResponse]
    def get_group_certificate_authority(params = {}, options = {})
      request = build_request(:get_group_certificate_authority, params)
      request.send_request(options)
    end

    # Retrieves the current configuration for the CA used by the group.
    # @param [Hash, Types::GetGroupCertificateConfigurationRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_group_certificate_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_authority_expiry_in_milliseconds: "__string",
    #     certificate_expiry_in_milliseconds: "__string",
    #     group_id: "__string"
    #   }
    # @return [Types::GetGroupCertificateConfigurationResponse]
    def get_group_certificate_configuration(params = {}, options = {})
      request = build_request(:get_group_certificate_configuration, params)
      request.send_request(options)
    end

    # Retrieves information about a group version.
    # @param [Hash, Types::GetGroupVersionRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @option params [String] :group_version_id
    #   The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #     group_version_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_group_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     definition: {
    #       connector_definition_version_arn: "__string",
    #       core_definition_version_arn: "__string",
    #       device_definition_version_arn: "__string",
    #       function_definition_version_arn: "__string",
    #       logger_definition_version_arn: "__string",
    #       resource_definition_version_arn: "__string",
    #       subscription_definition_version_arn: "__string"
    #     },
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::GetGroupVersionResponse]
    def get_group_version(params = {}, options = {})
      request = build_request(:get_group_version, params)
      request.send_request(options)
    end

    # Retrieves information about a logger definition.
    # @param [Hash, Types::GetLoggerDefinitionRequest] params
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     logger_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_logger_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetLoggerDefinitionResponse]
    def get_logger_definition(params = {}, options = {})
      request = build_request(:get_logger_definition, params)
      request.send_request(options)
    end

    # Retrieves information about a logger definition version.
    # @param [Hash, Types::GetLoggerDefinitionVersionRequest] params
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    # @option params [String] :logger_definition_version_id
    #   The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     logger_definition_id: "__string", # required
    #     logger_definition_version_id: "__string", # required
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.get_logger_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     definition: {
    #       loggers: [
    #         {
    #           component: "GreengrassSystem" # One of: ["GreengrassSystem", "Lambda"], # required
    #           id: "__string", # required
    #           level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"], # required
    #           space: 1,
    #           type: "FileSystem" # One of: ["FileSystem", "AWSCloudWatch"], # required
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::GetLoggerDefinitionVersionResponse]
    def get_logger_definition_version(params = {}, options = {})
      request = build_request(:get_logger_definition_version, params)
      request.send_request(options)
    end

    # Retrieves information about a resource definition, including its creation time and latest version.
    # @param [Hash, Types::GetResourceDefinitionRequest] params
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_resource_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetResourceDefinitionResponse]
    def get_resource_definition(params = {}, options = {})
      request = build_request(:get_resource_definition, params)
      request.send_request(options)
    end

    # Retrieves information about a resource definition version, including which resources are included in the version.
    # @param [Hash, Types::GetResourceDefinitionVersionRequest] params
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    # @option params [String] :resource_definition_version_id
    #   The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_definition_id: "__string", # required
    #     resource_definition_version_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_resource_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     definition: {
    #       resources: [
    #         {
    #           id: "__string", # required
    #           name: "__string", # required
    #           resource_data_container: { # required
    #             local_device_resource_data: {
    #               group_owner_setting: {
    #                 auto_add_group_owner: false,
    #                 group_owner: "__string"
    #               },
    #               source_path: "__string"
    #             },
    #             local_volume_resource_data: {
    #               destination_path: "__string",
    #               group_owner_setting: {
    #                 auto_add_group_owner: false,
    #                 group_owner: "__string"
    #               },
    #               source_path: "__string"
    #             },
    #             s3_machine_learning_model_resource_data: {
    #               destination_path: "__string",
    #               owner_setting: {
    #                 group_owner: "__string", # required
    #                 group_permission: "ro" # One of: ["ro", "rw"], # required
    #               },
    #               s3_uri: "__string"
    #             },
    #             sage_maker_machine_learning_model_resource_data: {
    #               destination_path: "__string",
    #               owner_setting: {
    #                 group_owner: "__string", # required
    #                 group_permission: "ro" # One of: ["ro", "rw"], # required
    #               },
    #               sage_maker_job_arn: "__string"
    #             },
    #             secrets_manager_secret_resource_data: {
    #               arn: "__string",
    #               additional_staging_labels_to_download: ["__string"]
    #             }
    #           }
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     version: "__string"
    #   }
    # @return [Types::GetResourceDefinitionVersionResponse]
    def get_resource_definition_version(params = {}, options = {})
      request = build_request(:get_resource_definition_version, params)
      request.send_request(options)
    end

    # Retrieves the service role that is attached to your account.
    # @param [Hash, Types::GetServiceRoleForAccountRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_service_role_for_account(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     associated_at: "__string",
    #     role_arn: "__string"
    #   }
    # @return [Types::GetServiceRoleForAccountResponse]
    def get_service_role_for_account(params = {}, options = {})
      request = build_request(:get_service_role_for_account, params)
      request.send_request(options)
    end

    # Retrieves information about a subscription definition.
    # @param [Hash, Types::GetSubscriptionDefinitionRequest] params
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_subscription_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     id: "__string",
    #     last_updated_timestamp: "__string",
    #     latest_version: "__string",
    #     latest_version_arn: "__string",
    #     name: "__string",
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::GetSubscriptionDefinitionResponse]
    def get_subscription_definition(params = {}, options = {})
      request = build_request(:get_subscription_definition, params)
      request.send_request(options)
    end

    # Retrieves information about a subscription definition version.
    # @param [Hash, Types::GetSubscriptionDefinitionVersionRequest] params
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    # @option params [String] :subscription_definition_version_id
    #   The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "__string",
    #     subscription_definition_id: "__string", # required
    #     subscription_definition_version_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_subscription_definition_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "__string",
    #     creation_timestamp: "__string",
    #     definition: {
    #       subscriptions: [
    #         {
    #           id: "__string", # required
    #           source: "__string", # required
    #           subject: "__string", # required
    #           target: "__string", # required
    #         }
    #       ]
    #     },
    #     id: "__string",
    #     next_token: "__string",
    #     version: "__string"
    #   }
    # @return [Types::GetSubscriptionDefinitionVersionResponse]
    def get_subscription_definition_version(params = {}, options = {})
      request = build_request(:get_subscription_definition_version, params)
      request.send_request(options)
    end

    # Get the runtime configuration of a thing.
    # @param [Hash, Types::GetThingRuntimeConfigurationRequest] params
    # @option params [String] :thing_name
    #   The thing name.
    # @example Request syntax with placeholder values
    #   params = {
    #     thing_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_thing_runtime_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     runtime_configuration: {
    #       telemetry_configuration: {
    #         configuration_sync_status: "InSync" # One of: ["InSync", "OutOfSync"],
    #         telemetry: "On" # One of: ["On", "Off"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetThingRuntimeConfigurationResponse]
    def get_thing_runtime_configuration(params = {}, options = {})
      request = build_request(:get_thing_runtime_configuration, params)
      request.send_request(options)
    end

    # Gets a paginated list of the deployments that have been started in a bulk deployment operation, and their current deployment status.
    # @param [Hash, Types::ListBulkDeploymentDetailedReportsRequest] params
    # @option params [String] :bulk_deployment_id
    #   The ID of the bulk deployment.
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     bulk_deployment_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_bulk_deployment_detailed_reports(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments: [
    #       {
    #         created_at: "__string",
    #         deployment_arn: "__string",
    #         deployment_id: "__string",
    #         deployment_status: "__string",
    #         deployment_type: "NewDeployment" # One of: ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"],
    #         error_details: [
    #           {
    #             detailed_error_code: "__string",
    #             detailed_error_message: "__string"
    #           }
    #         ],
    #         error_message: "__string",
    #         group_arn: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListBulkDeploymentDetailedReportsResponse]
    def list_bulk_deployment_detailed_reports(params = {}, options = {})
      request = build_request(:list_bulk_deployment_detailed_reports, params)
      request.send_request(options)
    end

    # Returns a list of bulk deployments.
    # @param [Hash, Types::ListBulkDeploymentsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_bulk_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bulk_deployments: [
    #       {
    #         bulk_deployment_arn: "__string",
    #         bulk_deployment_id: "__string",
    #         created_at: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListBulkDeploymentsResponse]
    def list_bulk_deployments(params = {}, options = {})
      request = build_request(:list_bulk_deployments, params)
      request.send_request(options)
    end

    # Lists the versions of a connector definition, which are containers for connectors. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
    # @param [Hash, Types::ListConnectorDefinitionVersionsRequest] params
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_connector_definition_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         version: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListConnectorDefinitionVersionsResponse]
    def list_connector_definition_versions(params = {}, options = {})
      request = build_request(:list_connector_definition_versions, params)
      request.send_request(options)
    end

    # Retrieves a list of connector definitions.
    # @param [Hash, Types::ListConnectorDefinitionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_connector_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     definitions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         last_updated_timestamp: "__string",
    #         latest_version: "__string",
    #         latest_version_arn: "__string",
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListConnectorDefinitionsResponse]
    def list_connector_definitions(params = {}, options = {})
      request = build_request(:list_connector_definitions, params)
      request.send_request(options)
    end

    # Lists the versions of a core definition.
    # @param [Hash, Types::ListCoreDefinitionVersionsRequest] params
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     core_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_core_definition_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         version: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListCoreDefinitionVersionsResponse]
    def list_core_definition_versions(params = {}, options = {})
      request = build_request(:list_core_definition_versions, params)
      request.send_request(options)
    end

    # Retrieves a list of core definitions.
    # @param [Hash, Types::ListCoreDefinitionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_core_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     definitions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         last_updated_timestamp: "__string",
    #         latest_version: "__string",
    #         latest_version_arn: "__string",
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListCoreDefinitionsResponse]
    def list_core_definitions(params = {}, options = {})
      request = build_request(:list_core_definitions, params)
      request.send_request(options)
    end

    # Returns a history of deployments for the group.
    # @param [Hash, Types::ListDeploymentsRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments: [
    #       {
    #         created_at: "__string",
    #         deployment_arn: "__string",
    #         deployment_id: "__string",
    #         deployment_type: "NewDeployment" # One of: ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"],
    #         group_arn: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListDeploymentsResponse]
    def list_deployments(params = {}, options = {})
      request = build_request(:list_deployments, params)
      request.send_request(options)
    end

    # Lists the versions of a device definition.
    # @param [Hash, Types::ListDeviceDefinitionVersionsRequest] params
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     device_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_device_definition_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         version: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListDeviceDefinitionVersionsResponse]
    def list_device_definition_versions(params = {}, options = {})
      request = build_request(:list_device_definition_versions, params)
      request.send_request(options)
    end

    # Retrieves a list of device definitions.
    # @param [Hash, Types::ListDeviceDefinitionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_device_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     definitions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         last_updated_timestamp: "__string",
    #         latest_version: "__string",
    #         latest_version_arn: "__string",
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListDeviceDefinitionsResponse]
    def list_device_definitions(params = {}, options = {})
      request = build_request(:list_device_definitions, params)
      request.send_request(options)
    end

    # Lists the versions of a Lambda function definition.
    # @param [Hash, Types::ListFunctionDefinitionVersionsRequest] params
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     function_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_function_definition_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         version: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListFunctionDefinitionVersionsResponse]
    def list_function_definition_versions(params = {}, options = {})
      request = build_request(:list_function_definition_versions, params)
      request.send_request(options)
    end

    # Retrieves a list of Lambda function definitions.
    # @param [Hash, Types::ListFunctionDefinitionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_function_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     definitions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         last_updated_timestamp: "__string",
    #         latest_version: "__string",
    #         latest_version_arn: "__string",
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListFunctionDefinitionsResponse]
    def list_function_definitions(params = {}, options = {})
      request = build_request(:list_function_definitions, params)
      request.send_request(options)
    end

    # Retrieves the current CAs for a group.
    # @param [Hash, Types::ListGroupCertificateAuthoritiesRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_group_certificate_authorities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group_certificate_authorities: [
    #       {
    #         group_certificate_authority_arn: "__string",
    #         group_certificate_authority_id: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListGroupCertificateAuthoritiesResponse]
    def list_group_certificate_authorities(params = {}, options = {})
      request = build_request(:list_group_certificate_authorities, params)
      request.send_request(options)
    end

    # Lists the versions of a group.
    # @param [Hash, Types::ListGroupVersionsRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_group_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         version: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListGroupVersionsResponse]
    def list_group_versions(params = {}, options = {})
      request = build_request(:list_group_versions, params)
      request.send_request(options)
    end

    # Retrieves a list of groups.
    # @param [Hash, Types::ListGroupsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         last_updated_timestamp: "__string",
    #         latest_version: "__string",
    #         latest_version_arn: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListGroupsResponse]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # Lists the versions of a logger definition.
    # @param [Hash, Types::ListLoggerDefinitionVersionsRequest] params
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     logger_definition_id: "__string", # required
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_logger_definition_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         version: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListLoggerDefinitionVersionsResponse]
    def list_logger_definition_versions(params = {}, options = {})
      request = build_request(:list_logger_definition_versions, params)
      request.send_request(options)
    end

    # Retrieves a list of logger definitions.
    # @param [Hash, Types::ListLoggerDefinitionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_logger_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     definitions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         last_updated_timestamp: "__string",
    #         latest_version: "__string",
    #         latest_version_arn: "__string",
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListLoggerDefinitionsResponse]
    def list_logger_definitions(params = {}, options = {})
      request = build_request(:list_logger_definitions, params)
      request.send_request(options)
    end

    # Lists the versions of a resource definition.
    # @param [Hash, Types::ListResourceDefinitionVersionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string",
    #     resource_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_resource_definition_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         version: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListResourceDefinitionVersionsResponse]
    def list_resource_definition_versions(params = {}, options = {})
      request = build_request(:list_resource_definition_versions, params)
      request.send_request(options)
    end

    # Retrieves a list of resource definitions.
    # @param [Hash, Types::ListResourceDefinitionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_resource_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     definitions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         last_updated_timestamp: "__string",
    #         latest_version: "__string",
    #         latest_version_arn: "__string",
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListResourceDefinitionsResponse]
    def list_resource_definitions(params = {}, options = {})
      request = build_request(:list_resource_definitions, params)
      request.send_request(options)
    end

    # Lists the versions of a subscription definition.
    # @param [Hash, Types::ListSubscriptionDefinitionVersionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string",
    #     subscription_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_subscription_definition_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "__string",
    #     versions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         version: "__string"
    #       }
    #     ]
    #   }
    # @return [Types::ListSubscriptionDefinitionVersionsResponse]
    def list_subscription_definition_versions(params = {}, options = {})
      request = build_request(:list_subscription_definition_versions, params)
      request.send_request(options)
    end

    # Retrieves a list of subscription definitions.
    # @param [Hash, Types::ListSubscriptionDefinitionsRequest] params
    # @option params [String] :max_results
    #   The maximum number of results to be returned per request.
    # @option params [String] :next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: "__string",
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_subscription_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     definitions: [
    #       {
    #         arn: "__string",
    #         creation_timestamp: "__string",
    #         id: "__string",
    #         last_updated_timestamp: "__string",
    #         latest_version: "__string",
    #         latest_version_arn: "__string",
    #         name: "__string",
    #         tags: {
    #           "__string" => "__string"
    #         }
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListSubscriptionDefinitionsResponse]
    def list_subscription_definitions(params = {}, options = {})
      request = build_request(:list_subscription_definitions, params)
      request.send_request(options)
    end

    # Retrieves a list of resource tags for a resource arn.
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # Resets a group's deployments.
    # @param [Hash, Types::ResetDeploymentsRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [Boolean] :force
    #   If true, performs a best-effort only core reset.
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     force: false,
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.reset_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_arn: "__string",
    #     deployment_id: "__string"
    #   }
    # @return [Types::ResetDeploymentsResponse]
    def reset_deployments(params = {}, options = {})
      request = build_request(:reset_deployments, params)
      request.send_request(options)
    end

    # Deploys multiple groups in one operation. This action starts the bulk deployment of a specified set of group versions. Each group version deployment will be triggered with an adaptive rate that has a fixed upper limit. We recommend that you include an ''X-Amzn-Client-Token'' token in every ''StartBulkDeployment'' request. These requests are idempotent with respect to the token and the request parameters.
    # @param [Hash, Types::StartBulkDeploymentRequest] params
    # @option params [String] :amzn_client_token
    #   A client token used to correlate requests and responses.
    # @option params [String] :execution_role_arn
    #   The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file.
    # @option params [String] :input_file_uri
    #   The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types.
    # @option params [Hash<String, String>] :tags
    #   Tag(s) to add to the new resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     amzn_client_token: "__string",
    #     execution_role_arn: "__string", # required
    #     input_file_uri: "__string", # required
    #     tags: {
    #       "__string" => "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.start_bulk_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bulk_deployment_arn: "__string",
    #     bulk_deployment_id: "__string"
    #   }
    # @return [Types::StartBulkDeploymentResponse]
    def start_bulk_deployment(params = {}, options = {})
      request = build_request(:start_bulk_deployment, params)
      request.send_request(options)
    end

    # Stops the execution of a bulk deployment. This action returns a status of ''Stopping'' until the deployment is stopped. You cannot start a new bulk deployment while a previous deployment is in the ''Stopping'' state. This action doesn't rollback completed deployments or cancel pending deployments.
    # @param [Hash, Types::StopBulkDeploymentRequest] params
    # @option params [String] :bulk_deployment_id
    #   The ID of the bulk deployment.
    # @example Request syntax with placeholder values
    #   params = {
    #     bulk_deployment_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.stop_bulk_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopBulkDeploymentResponse]
    def stop_bulk_deployment(params = {}, options = {})
      request = build_request(:stop_bulk_deployment, params)
      request.send_request(options)
    end

    # Adds tags to a Greengrass resource. Valid resources are 'Group', 'ConnectorDefinition', 'CoreDefinition', 'DeviceDefinition', 'FunctionDefinition', 'LoggerDefinition', 'SubscriptionDefinition', 'ResourceDefinition', and 'BulkDeployment'.
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    # @option params [Hash<String, String>] :tags
    #   The key-value pair for the resource tag.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tags: {
    #       "__string" => "__string"
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

    # Remove resource tags from a Greengrass Resource.
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    # @option params [Array<String>] :tag_keys
    #   An array of tag keys to delete
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "__string", # required
    #     tag_keys: ["__string"], # required
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

    # Updates the connectivity information for the core. Any devices that belong to the group which has this core will receive this information in order to find the location of the core and connect to it.
    # @param [Hash, Types::UpdateConnectivityInfoRequest] params
    # @option params [Array<Types::ConnectivityInfo>] :connectivity_info
    #   A list of connectivity info.
    # @option params [String] :thing_name
    #   The thing name.
    # @example Request syntax with placeholder values
    #   params = {
    #     connectivity_info: [
    #       {
    #         host_address: "__string",
    #         id: "__string",
    #         metadata: "__string",
    #         port_number: 1
    #       }
    #     ],
    #     thing_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_connectivity_info(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "__string",
    #     version: "__string"
    #   }
    # @return [Types::UpdateConnectivityInfoResponse]
    def update_connectivity_info(params = {}, options = {})
      request = build_request(:update_connectivity_info, params)
      request.send_request(options)
    end

    # Updates a connector definition.
    # @param [Hash, Types::UpdateConnectorDefinitionRequest] params
    # @option params [String] :connector_definition_id
    #   The ID of the connector definition.
    # @option params [String] :name
    #   The name of the definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_definition_id: "__string", # required
    #     name: "__string"
    #   }
    #   options = {}
    #   response = client.update_connector_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateConnectorDefinitionResponse]
    def update_connector_definition(params = {}, options = {})
      request = build_request(:update_connector_definition, params)
      request.send_request(options)
    end

    # Updates a core definition.
    # @param [Hash, Types::UpdateCoreDefinitionRequest] params
    # @option params [String] :core_definition_id
    #   The ID of the core definition.
    # @option params [String] :name
    #   The name of the definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     core_definition_id: "__string", # required
    #     name: "__string"
    #   }
    #   options = {}
    #   response = client.update_core_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateCoreDefinitionResponse]
    def update_core_definition(params = {}, options = {})
      request = build_request(:update_core_definition, params)
      request.send_request(options)
    end

    # Updates a device definition.
    # @param [Hash, Types::UpdateDeviceDefinitionRequest] params
    # @option params [String] :device_definition_id
    #   The ID of the device definition.
    # @option params [String] :name
    #   The name of the definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     device_definition_id: "__string", # required
    #     name: "__string"
    #   }
    #   options = {}
    #   response = client.update_device_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDeviceDefinitionResponse]
    def update_device_definition(params = {}, options = {})
      request = build_request(:update_device_definition, params)
      request.send_request(options)
    end

    # Updates a Lambda function definition.
    # @param [Hash, Types::UpdateFunctionDefinitionRequest] params
    # @option params [String] :function_definition_id
    #   The ID of the Lambda function definition.
    # @option params [String] :name
    #   The name of the definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     function_definition_id: "__string", # required
    #     name: "__string"
    #   }
    #   options = {}
    #   response = client.update_function_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateFunctionDefinitionResponse]
    def update_function_definition(params = {}, options = {})
      request = build_request(:update_function_definition, params)
      request.send_request(options)
    end

    # Updates a group.
    # @param [Hash, Types::UpdateGroupRequest] params
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @option params [String] :name
    #   The name of the definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     group_id: "__string", # required
    #     name: "__string"
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateGroupResponse]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # Updates the Certificate expiry time for a group.
    # @param [Hash, Types::UpdateGroupCertificateConfigurationRequest] params
    # @option params [String] :certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in milliseconds.
    # @option params [String] :group_id
    #   The ID of the Greengrass group.
    # @example Request syntax with placeholder values
    #   params = {
    #     certificate_expiry_in_milliseconds: "__string",
    #     group_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_group_certificate_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate_authority_expiry_in_milliseconds: "__string",
    #     certificate_expiry_in_milliseconds: "__string",
    #     group_id: "__string"
    #   }
    # @return [Types::UpdateGroupCertificateConfigurationResponse]
    def update_group_certificate_configuration(params = {}, options = {})
      request = build_request(:update_group_certificate_configuration, params)
      request.send_request(options)
    end

    # Updates a logger definition.
    # @param [Hash, Types::UpdateLoggerDefinitionRequest] params
    # @option params [String] :logger_definition_id
    #   The ID of the logger definition.
    # @option params [String] :name
    #   The name of the definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     logger_definition_id: "__string", # required
    #     name: "__string"
    #   }
    #   options = {}
    #   response = client.update_logger_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateLoggerDefinitionResponse]
    def update_logger_definition(params = {}, options = {})
      request = build_request(:update_logger_definition, params)
      request.send_request(options)
    end

    # Updates a resource definition.
    # @param [Hash, Types::UpdateResourceDefinitionRequest] params
    # @option params [String] :name
    #   The name of the definition.
    # @option params [String] :resource_definition_id
    #   The ID of the resource definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "__string",
    #     resource_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_resource_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateResourceDefinitionResponse]
    def update_resource_definition(params = {}, options = {})
      request = build_request(:update_resource_definition, params)
      request.send_request(options)
    end

    # Updates a subscription definition.
    # @param [Hash, Types::UpdateSubscriptionDefinitionRequest] params
    # @option params [String] :name
    #   The name of the definition.
    # @option params [String] :subscription_definition_id
    #   The ID of the subscription definition.
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "__string",
    #     subscription_definition_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_subscription_definition(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateSubscriptionDefinitionResponse]
    def update_subscription_definition(params = {}, options = {})
      request = build_request(:update_subscription_definition, params)
      request.send_request(options)
    end

    # Updates the runtime configuration of a thing.
    # @param [Hash, Types::UpdateThingRuntimeConfigurationRequest] params
    # @option params [Types::TelemetryConfigurationUpdate] :telemetry_configuration
    #   Configuration for telemetry service.
    # @option params [String] :thing_name
    #   The thing name.
    # @example Request syntax with placeholder values
    #   params = {
    #     telemetry_configuration: {
    #       telemetry: "On" # One of: ["On", "Off"], # required
    #     },
    #     thing_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_thing_runtime_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateThingRuntimeConfigurationResponse]
    def update_thing_runtime_configuration(params = {}, options = {})
      request = build_request(:update_thing_runtime_configuration, params)
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
      context[:gem_name] = 'aws-sdk-greengrass'
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
