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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:lambdaweb)

module Aws::LambdaWeb
  # An API client for Aws::LambdaWeb.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::LambdaWeb
    @identifier = :lambdaweb

    add_plugin(::Aws::LambdaWeb::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LambdaWeb::EndpointProvider)
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

    # <p>Creates a web function with an initial revision and endpoint. To create a web function, you provide the function name, revision configuration (code and service settings), and endpoint configuration.</p> <p>To use this operation, you must have the <code>CreateWebFunction</code> permission on the web function. You don't need separate permissions for the initial revision or endpoint.</p>
    # @param [Hash, Types::CreateWebFunctionRequest] params
    # @option params [String] :function_name
    #   <p>The name of the web function. The name can contain letters, numbers, hyphens (-), and underscores (_), and can't begin or end with a hyphen or an underscore. The name is limited to 64 characters in length.</p>
    # @option params [Types::RevisionConfig] :revision_config
    #   <p>The configuration for the initial revision of the web function, including code and service settings.</p>
    # @option params [Types::EndpointConfig] :endpoint_config
    #   <p>The configuration for the initial endpoint of the web function.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to apply to the web function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     revision_config: {
    #       description: "Description",
    #       kms_key_arn: "KmsKeyArn",
    #       build_config: { # required
    #         code_config: { # required
    #           s3_object: { # required
    #             bucket: "String", # required
    #             key: "String", # required
    #             version_id: "String"
    #           }
    #         },
    #         runtime_config: { # required
    #           runtime: "String", # required
    #         }
    #       },
    #       service_config: { # required
    #         execution_role_arn: "RoleArn", # required
    #         timeout_seconds: 1,
    #         egress_network_connector_arn: "String",
    #         max_concurrency_per_environment: 1,
    #         environment_variables: {
    #           "String" => "String"
    #         },
    #         telemetry_config: {
    #           logging_config: {
    #             log_group: "String",
    #             application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #             system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #           }
    #         }
    #       }
    #     },
    #     endpoint_config: {
    #       endpoint_name: "EndpointName", # required
    #       description: "Description",
    #       endpoint_type: "HomeRegion" # One of: ["HomeRegion", "MultiRegion", "PerRegion"], # required
    #       auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #       auto_deployment_mode: "LatestRevision" # One of: ["LatestRevision", "Disabled"],
    #       regions: ["Region"],
    #       scaling_config: {
    #         max_environments: 1
    #       },
    #       throttle_config: {
    #         rate_limit: 1
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_web_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "FunctionName", # required
    #     function_arn: "FunctionArn", # required
    #     state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #     state_reason: "String", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     revision: {
    #       revision_arn: "RevisionArn", # required
    #       revision_id: "RevisionId", # required
    #       description: "Description",
    #       state: "Pending" # One of: ["Pending", "Active", "Failed"], # required
    #       state_reason: "String", # required
    #       created_at: Time.now, # required
    #     },
    #     endpoint: {
    #       endpoint_arn: "EndpointArn", # required
    #       endpoint_name: "EndpointName", # required
    #       description: "Description",
    #       endpoint_type: "HomeRegion" # One of: ["HomeRegion", "MultiRegion", "PerRegion"], # required
    #       domain_name: "DomainName", # required
    #       auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #       auto_deployment_mode: "LatestRevision" # One of: ["LatestRevision", "Disabled"], # required
    #       revision_weights: [ # required
    #         {
    #           revision_id: "RevisionId", # required
    #           weight: 1, # required
    #         }
    #       ],
    #       regions: ["Region"], # required
    #       scaling_config: {
    #         max_environments: 1
    #       },
    #       throttle_config: {
    #         rate_limit: 1
    #       },
    #       state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #       state_reason: "String", # required
    #       update_status: "InProgress" # One of: ["InProgress", "Successful", "Failed"],
    #       update_status_reason: "String",
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     },
    #     tags: {
    #       "TagKey" => "String"
    #     }
    #   }
    # @return [Types::CreateWebFunctionResponse]
    def create_web_function(params = {}, options = {})
      request = build_request(:create_web_function, params)
      request.send_request(options)
    end

    # <p>Creates an endpoint for a web function. An endpoint exposes the web function over HTTPS and routes traffic to one or more revisions.</p> <p>To use this operation, you must have the <code>CreateWebFunctionEndpoint</code> permission on the web function, not on the endpoint being created.</p>
    # @param [Hash, Types::CreateWebFunctionEndpointRequest] params
    # @option params [String] :function_name
    #   <p>The web function to create the endpoint for.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :endpoint_name
    #   <p>The name of the endpoint to create. The name can contain letters, numbers, hyphens (-), and underscores (_), and can't begin or end with a hyphen or an underscore. The name is limited to 64 characters in length.</p>
    # @option params [String] :description
    #   <p>A description of the endpoint.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint to create. Determines how traffic is served and routed across Regions.</p> <p>Valid values:</p> <ul> <li> <p> <code>HomeRegion</code> – Serves traffic from the Region where you created the web function.</p> </li> <li> <p> <code>MultiRegion</code> – Replicates across the Regions that you choose and routes each request to the nearest one.</p> </li> <li> <p> <code>PerRegion</code> – Creates a separate endpoint in each Region that you choose.</p> </li> </ul>
    # @option params [String] :auth_type
    #   <p>The authorization type for the endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>ApplicationManaged</code> – Your application handles authorization.</p> </li> <li> <p> <code>IamAuth</code> – Lambda uses IAM to authorize requests, which must be signed with Signature Version 4 (SigV4).</p> </li> </ul>
    # @option params [String] :auto_deployment_mode
    #   <p>The auto-deployment mode for the endpoint. Controls whether the endpoint automatically serves the newest revision. If you don't specify a value, the default is <code>Disabled</code>, and this default is returned in the response.</p> <p>Valid values:</p> <ul> <li> <p> <code>LatestRevision</code> – The endpoint automatically serves the newest revision.</p> </li> <li> <p> <code>Disabled</code> – Revision routing stays fixed until you change it.</p> </li> </ul>
    # @option params [Array<Types::RevisionWeight>] :revision_weights
    #   <p>A list of revision weights that determine how traffic is distributed across revisions. You can specify up to two revisions for canary or blue-green deployments.</p>
    # @option params [Array<String>] :regions
    #   <p>The list of Regions for the endpoint. Required when the endpoint type is <code>MultiRegion</code> or <code>PerRegion</code>: specify at least one Region other than the Region where you create the endpoint (the home Region). The home Region is added automatically if you don't include it; specifying only the home Region isn't allowed. When the endpoint type is <code>HomeRegion</code>, omit this field or specify only the home Region.</p>
    # @option params [Types::ScalingConfig] :scaling_config
    #   <p>The scaling configuration for the endpoint. There is no default value. If you don't specify a scaling configuration, it is absent from the response.</p>
    # @option params [Types::ThrottleConfig] :throttle_config
    #   <p>The throttling configuration for the endpoint. There is no default value. If you don't specify a throttling configuration, it is absent from the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     endpoint_name: "EndpointName", # required
    #     description: "Description",
    #     endpoint_type: "HomeRegion" # One of: ["HomeRegion", "MultiRegion", "PerRegion"], # required
    #     auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #     auto_deployment_mode: "LatestRevision" # One of: ["LatestRevision", "Disabled"],
    #     revision_weights: [
    #       {
    #         revision_id: "RevisionId", # required
    #         weight: 1, # required
    #       }
    #     ],
    #     regions: ["Region"],
    #     scaling_config: {
    #       max_environments: 1
    #     },
    #     throttle_config: {
    #       rate_limit: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_web_function_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_arn: "FunctionArn", # required
    #     endpoint_arn: "EndpointArn", # required
    #     endpoint_name: "EndpointName", # required
    #     description: "Description",
    #     endpoint_type: "HomeRegion" # One of: ["HomeRegion", "MultiRegion", "PerRegion"], # required
    #     domain_name: "DomainName", # required
    #     auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #     auto_deployment_mode: "LatestRevision" # One of: ["LatestRevision", "Disabled"], # required
    #     revision_weights: [ # required
    #       {
    #         revision_id: "RevisionId", # required
    #         weight: 1, # required
    #       }
    #     ],
    #     regions: ["Region"], # required
    #     scaling_config: {
    #       max_environments: 1
    #     },
    #     throttle_config: {
    #       rate_limit: 1
    #     },
    #     state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #     state_reason: "String", # required
    #     update_status: "InProgress" # One of: ["InProgress", "Successful", "Failed"],
    #     update_status_reason: "String",
    #     regional_endpoints: { # required
    #       "Region" => {
    #         domain_name: "DomainName",
    #         auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #         revision_weights: [ # required
    #           {
    #             revision_id: "RevisionId", # required
    #             weight: 1, # required
    #           }
    #         ],
    #         scaling_config: {
    #           max_environments: 1
    #         },
    #         throttle_config: {
    #           rate_limit: 1
    #         },
    #         state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #         state_reason: "String", # required
    #         update_status: "InProgress" # One of: ["InProgress", "Successful", "Failed"],
    #         update_status_reason: "String"
    #       }
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::CreateWebFunctionEndpointResponse]
    def create_web_function_endpoint(params = {}, options = {})
      request = build_request(:create_web_function_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates an immutable revision for a web function. A revision represents a specific version of the function code and configuration.</p> <p>To use this operation, you must have the <code>CreateWebFunctionRevision</code> permission on the web function, not on the revision being created.</p>
    # @param [Hash, Types::CreateWebFunctionRevisionRequest] params
    # @option params [String] :function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :description
    #   <p>A description of the revision.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) key used to encrypt the revision's code and environment variables.</p>
    # @option params [Types::BuildConfig] :build_config
    #   <p>The build configuration for the revision, including code location and runtime settings.</p>
    # @option params [Types::ServiceConfig] :service_config
    #   <p>The service configuration for the revision, including execution role, timeout, and concurrency settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     description: "Description",
    #     kms_key_arn: "KmsKeyArn",
    #     build_config: { # required
    #       code_config: { # required
    #         s3_object: { # required
    #           bucket: "String", # required
    #           key: "String", # required
    #           version_id: "String"
    #         }
    #       },
    #       runtime_config: { # required
    #         runtime: "String", # required
    #       }
    #     },
    #     service_config: { # required
    #       execution_role_arn: "RoleArn", # required
    #       timeout_seconds: 1,
    #       egress_network_connector_arn: "String",
    #       max_concurrency_per_environment: 1,
    #       environment_variables: {
    #         "String" => "String"
    #       },
    #       telemetry_config: {
    #         logging_config: {
    #           log_group: "String",
    #           application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_web_function_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_arn: "FunctionArn", # required
    #     revision_arn: "RevisionArn", # required
    #     revision_id: "RevisionId", # required
    #     description: "Description",
    #     kms_key_arn: "KmsKeyArn",
    #     build_config: { # required
    #       code_config: { # required
    #         s3_object: { # required
    #           bucket: "String", # required
    #           key: "String", # required
    #           version_id: "String"
    #         }
    #       },
    #       runtime_config: { # required
    #         runtime: "String", # required
    #       }
    #     },
    #     service_config: { # required
    #       execution_role_arn: "RoleArn", # required
    #       timeout_seconds: 1,
    #       egress_network_connector_arn: "String",
    #       max_concurrency_per_environment: 1,
    #       environment_variables: {
    #         "String" => "String"
    #       },
    #       telemetry_config: {
    #         logging_config: {
    #           log_group: "String",
    #           application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #         }
    #       }
    #     },
    #     state: "Pending" # One of: ["Pending", "Active", "Failed"], # required
    #     state_reason: "String", # required
    #     errors: [
    #       {
    #         attribute: "String", # required
    #         error_code: "String", # required
    #         error_message: "String", # required
    #       }
    #     ],
    #     created_at: Time.now, # required
    #   }
    # @return [Types::CreateWebFunctionRevisionResponse]
    def create_web_function_revision(params = {}, options = {})
      request = build_request(:create_web_function_revision, params)
      request.send_request(options)
    end

    # <p>Removes the resource-based policy from a web function.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    # @option params [String] :revision_id
    #   <p>The revision ID of the policy. Use this to prevent deleting a policy that has been updated since you last retrieved it. If you don't specify a value, the policy is deleted regardless of its current revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a web function and all of its associated revisions and endpoints.</p> <p>To use this operation, you must have the <code>DeleteWebFunction</code> permission on the web function. You don't need the <code>DeleteWebFunctionRevision</code> or <code>DeleteWebFunctionEndpoint</code> permission.</p>
    # @param [Hash, Types::DeleteWebFunctionRequest] params
    # @option params [String] :function_name
    #   <p>The web function to delete.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   response = client.delete_web_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_web_function(params = {}, options = {})
      request = build_request(:delete_web_function, params)
      request.send_request(options)
    end

    # <p>Deletes a web function endpoint.</p>
    # @param [Hash, Types::DeleteWebFunctionEndpointRequest] params
    # @option params [String] :function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :endpoint_name
    #   <p>The endpoint to delete.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The endpoint name, for example <code>my-endpoint</code>.</p> </li> <li> <p>The endpoint ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the endpoint name, it is limited to 64 characters in length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     endpoint_name: "EndpointName", # required
    #   }
    #   options = {}
    #   response = client.delete_web_function_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_web_function_endpoint(params = {}, options = {})
      request = build_request(:delete_web_function_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes a web function revision. You cannot delete a revision that is currently serving traffic on an endpoint.</p>
    # @param [Hash, Types::DeleteWebFunctionRevisionRequest] params
    # @option params [String] :function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :revision_id
    #   <p>The revision to delete.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The revision identifier.</p> </li> <li> <p>The revision ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     revision_id: "RevisionId", # required
    #   }
    #   options = {}
    #   response = client.delete_web_function_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_web_function_revision(params = {}, options = {})
      request = build_request(:delete_web_function_revision, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource-based policy attached to a web function.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicy", # required
    #     revision_id: "PolicyRevisionId", # required
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves details about your AWS Lambda Web Functions account settings for the current AWS Region, including the quotas that apply to web functions and your current usage.</p>
    # @param [Hash, Types::GetWebAccountSettingsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_web_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_quotas: { # required
    #       max_total_arm_v_cpus: 1, # required
    #       max_total_rate_limit: 1, # required
    #       max_revisions_per_function: 1, # required
    #       max_endpoints_per_function: 1, # required
    #     },
    #     account_usage: { # required
    #       function_count: 1, # required
    #     }
    #   }
    # @return [Types::GetWebAccountSettingsResponse]
    def get_web_account_settings(params = {}, options = {})
      request = build_request(:get_web_account_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a web function, including its current state and configuration.</p>
    # @param [Hash, Types::GetWebFunctionRequest] params
    # @option params [String] :function_name
    #   <p>The web function to retrieve.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   response = client.get_web_function(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_name: "FunctionName", # required
    #     function_arn: "FunctionArn", # required
    #     state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #     state_reason: "String", # required
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetWebFunctionResponse]
    def get_web_function(params = {}, options = {})
      request = build_request(:get_web_function, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a web function endpoint, including its current state, configuration, and domain name.</p>
    # @param [Hash, Types::GetWebFunctionEndpointRequest] params
    # @option params [String] :function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :endpoint_name
    #   <p>The endpoint to retrieve.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The endpoint name, for example <code>my-endpoint</code>.</p> </li> <li> <p>The endpoint ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the endpoint name, it is limited to 64 characters in length.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     endpoint_name: "EndpointName", # required
    #   }
    #   options = {}
    #   response = client.get_web_function_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_arn: "FunctionArn", # required
    #     endpoint_arn: "EndpointArn", # required
    #     endpoint_name: "EndpointName", # required
    #     description: "Description",
    #     endpoint_type: "HomeRegion" # One of: ["HomeRegion", "MultiRegion", "PerRegion"], # required
    #     domain_name: "DomainName", # required
    #     auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #     auto_deployment_mode: "LatestRevision" # One of: ["LatestRevision", "Disabled"], # required
    #     revision_weights: [ # required
    #       {
    #         revision_id: "RevisionId", # required
    #         weight: 1, # required
    #       }
    #     ],
    #     regions: ["Region"], # required
    #     scaling_config: {
    #       max_environments: 1
    #     },
    #     throttle_config: {
    #       rate_limit: 1
    #     },
    #     state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #     state_reason: "String", # required
    #     update_status: "InProgress" # One of: ["InProgress", "Successful", "Failed"],
    #     update_status_reason: "String",
    #     regional_endpoints: { # required
    #       "Region" => {
    #         domain_name: "DomainName",
    #         auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #         revision_weights: [ # required
    #           {
    #             revision_id: "RevisionId", # required
    #             weight: 1, # required
    #           }
    #         ],
    #         scaling_config: {
    #           max_environments: 1
    #         },
    #         throttle_config: {
    #           rate_limit: 1
    #         },
    #         state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #         state_reason: "String", # required
    #         update_status: "InProgress" # One of: ["InProgress", "Successful", "Failed"],
    #         update_status_reason: "String"
    #       }
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::GetWebFunctionEndpointResponse]
    def get_web_function_endpoint(params = {}, options = {})
      request = build_request(:get_web_function_endpoint, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a web function revision, including its state and configuration.</p>
    # @param [Hash, Types::GetWebFunctionRevisionRequest] params
    # @option params [String] :function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :revision_id
    #   <p>The revision to retrieve.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The revision identifier.</p> </li> <li> <p>The revision ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     revision_id: "RevisionId", # required
    #   }
    #   options = {}
    #   response = client.get_web_function_revision(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_arn: "FunctionArn", # required
    #     revision_arn: "RevisionArn", # required
    #     revision_id: "RevisionId", # required
    #     description: "Description",
    #     kms_key_arn: "KmsKeyArn",
    #     build_config: { # required
    #       code_config: { # required
    #         s3_object: { # required
    #           bucket: "String", # required
    #           key: "String", # required
    #           version_id: "String"
    #         }
    #       },
    #       runtime_config: { # required
    #         runtime: "String", # required
    #       }
    #     },
    #     service_config: { # required
    #       execution_role_arn: "RoleArn", # required
    #       timeout_seconds: 1,
    #       egress_network_connector_arn: "String",
    #       max_concurrency_per_environment: 1,
    #       environment_variables: {
    #         "String" => "String"
    #       },
    #       telemetry_config: {
    #         logging_config: {
    #           log_group: "String",
    #           application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"]
    #         }
    #       }
    #     },
    #     state: "Pending" # One of: ["Pending", "Active", "Failed"], # required
    #     state_reason: "String", # required
    #     errors: [
    #       {
    #         attribute: "String", # required
    #         error_code: "String", # required
    #         error_message: "String", # required
    #       }
    #     ],
    #     created_at: Time.now, # required
    #   }
    # @return [Types::GetWebFunctionRevisionResponse]
    def get_web_function_revision(params = {}, options = {})
      request = build_request(:get_web_function_revision, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags applied to a web function.</p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "String"
    #     }
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Lists endpoints for a web function. Use pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListWebFunctionEndpointsRequest] params
    # @option params [String] :function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A list of filters to apply to the results. Supported filter names: <code>authType</code>, <code>autoDeploymentMode</code>, <code>endpointType</code>, <code>state</code>, and <code>updateStatus</code>. If you don't specify a filter, the operation returns all endpoints for the web function.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 50. Default is 50.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_web_function_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints: [ # required
    #       {
    #         endpoint_arn: "EndpointArn", # required
    #         endpoint_name: "EndpointName", # required
    #         description: "Description",
    #         endpoint_type: "HomeRegion" # One of: ["HomeRegion", "MultiRegion", "PerRegion"], # required
    #         domain_name: "DomainName", # required
    #         auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #         auto_deployment_mode: "LatestRevision" # One of: ["LatestRevision", "Disabled"], # required
    #         revision_weights: [ # required
    #           {
    #             revision_id: "RevisionId", # required
    #             weight: 1, # required
    #           }
    #         ],
    #         regions: ["Region"], # required
    #         scaling_config: {
    #           max_environments: 1
    #         },
    #         throttle_config: {
    #           rate_limit: 1
    #         },
    #         state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #         state_reason: "String", # required
    #         update_status: "InProgress" # One of: ["InProgress", "Successful", "Failed"],
    #         update_status_reason: "String",
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWebFunctionEndpointsResponse]
    def list_web_function_endpoints(params = {}, options = {})
      request = build_request(:list_web_function_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists revisions for a web function. Use pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListWebFunctionRevisionsRequest] params
    # @option params [String] :function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>A list of filters to apply to the results. The only supported filter name is <code>state</code>. If you don't specify a filter, the operation returns all revisions for the web function.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 50. Default is 50.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_web_function_revisions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     revisions: [ # required
    #       {
    #         revision_arn: "RevisionArn", # required
    #         revision_id: "RevisionId", # required
    #         description: "Description",
    #         state: "Pending" # One of: ["Pending", "Active", "Failed"], # required
    #         state_reason: "String", # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWebFunctionRevisionsResponse]
    def list_web_function_revisions(params = {}, options = {})
      request = build_request(:list_web_function_revisions, params)
      request.send_request(options)
    end

    # <p>Lists web functions in your account. Use pagination to ensure that the operation returns quickly and successfully.</p>
    # @param [Hash, Types::ListWebFunctionsRequest] params
    # @option params [Array<Types::Filter>] :filters
    #   <p>A list of filters to apply to the results. The only supported filter name is <code>state</code>. If you don't specify a filter, the operation returns all web functions.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 50. Default is 50.</p>
    # @option params [String] :next_token
    #   <p>The pagination token that's returned by a previous request to retrieve the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_web_functions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     functions: [ # required
    #       {
    #         function_name: "FunctionName", # required
    #         function_arn: "FunctionArn", # required
    #         state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #         state_reason: "String", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListWebFunctionsResponse]
    def list_web_functions(params = {}, options = {})
      request = build_request(:list_web_functions, params)
      request.send_request(options)
    end

    # <p>Adds or updates a resource-based policy on a web function. A resource-based policy grants permissions to other AWS accounts or services to perform actions on the web function.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    # @option params [String] :policy
    #   <p>The JSON-formatted resource-based policy to attach to the web function.</p>
    # @option params [String] :revision_id
    #   <p>The revision ID of the existing policy. Use this to prevent conflicts when updating a policy concurrently. If you don't specify a value, the update proceeds without checking the current revision.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     policy: "ResourcePolicy", # required
    #     revision_id: "PolicyRevisionId"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "ResourcePolicy", # required
    #     revision_id: "PolicyRevisionId", # required
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Adds tags to a web function. If a tag key already exists, the existing value is overwritten with the new value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tag keys and values to add to the web function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "String"
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

    # <p>Removes tags from a web function.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the web function.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "ResourceArn", # required
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

    # <p>Updates the configuration of a web function endpoint. You can modify the authorization type, auto-deployment mode, revision weights, scaling, and throttling settings.</p>
    # @param [Hash, Types::UpdateWebFunctionEndpointRequest] params
    # @option params [String] :function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    # @option params [String] :endpoint_name
    #   <p>The endpoint to update.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The endpoint name, for example <code>my-endpoint</code>.</p> </li> <li> <p>The endpoint ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the endpoint name, it is limited to 64 characters in length.</p>
    # @option params [String] :description
    #   <p>A description of the endpoint. Omit this field to keep the current description.</p>
    # @option params [String] :auth_type
    #   <p>The authorization type for the endpoint. Omit this field to keep the current authorization type.</p> <p>Valid values:</p> <ul> <li> <p> <code>ApplicationManaged</code> – Your application handles authorization.</p> </li> <li> <p> <code>IamAuth</code> – Lambda uses IAM to authorize requests, which must be signed with Signature Version 4 (SigV4).</p> </li> </ul>
    # @option params [String] :auto_deployment_mode
    #   <p>The auto-deployment mode for the endpoint. Omit this field to keep the current auto-deployment mode.</p> <p>Valid values:</p> <ul> <li> <p> <code>LatestRevision</code> – The endpoint automatically serves the newest revision.</p> </li> <li> <p> <code>Disabled</code> – Revision routing stays fixed until you change it.</p> </li> </ul>
    # @option params [Array<Types::RevisionWeight>] :revision_weights
    #   <p>A list of revision weights that determine how traffic is distributed across revisions.</p>
    # @option params [Types::ScalingConfig] :scaling_config
    #   <p>The scaling configuration for the endpoint. Omit this field to keep the current scaling configuration. To clear a previously set <code>maxEnvironments</code> value, specify an empty object.</p>
    # @option params [Types::ThrottleConfig] :throttle_config
    #   <p>The throttling configuration for the endpoint. Omit this field to keep the current throttling configuration. To clear a previously set <code>rateLimit</code> value, specify an empty object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     endpoint_name: "EndpointName", # required
    #     description: "Description",
    #     auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"],
    #     auto_deployment_mode: "LatestRevision" # One of: ["LatestRevision", "Disabled"],
    #     revision_weights: [
    #       {
    #         revision_id: "RevisionId", # required
    #         weight: 1, # required
    #       }
    #     ],
    #     scaling_config: {
    #       max_environments: 1
    #     },
    #     throttle_config: {
    #       rate_limit: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_web_function_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     function_arn: "FunctionArn", # required
    #     endpoint_arn: "EndpointArn", # required
    #     endpoint_name: "EndpointName", # required
    #     description: "Description",
    #     endpoint_type: "HomeRegion" # One of: ["HomeRegion", "MultiRegion", "PerRegion"], # required
    #     domain_name: "DomainName", # required
    #     auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #     auto_deployment_mode: "LatestRevision" # One of: ["LatestRevision", "Disabled"], # required
    #     revision_weights: [ # required
    #       {
    #         revision_id: "RevisionId", # required
    #         weight: 1, # required
    #       }
    #     ],
    #     regions: ["Region"], # required
    #     scaling_config: {
    #       max_environments: 1
    #     },
    #     throttle_config: {
    #       rate_limit: 1
    #     },
    #     state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #     state_reason: "String", # required
    #     update_status: "InProgress" # One of: ["InProgress", "Successful", "Failed"],
    #     update_status_reason: "String",
    #     regional_endpoints: { # required
    #       "Region" => {
    #         domain_name: "DomainName",
    #         auth_type: "ApplicationManaged" # One of: ["ApplicationManaged", "IamAuth"], # required
    #         revision_weights: [ # required
    #           {
    #             revision_id: "RevisionId", # required
    #             weight: 1, # required
    #           }
    #         ],
    #         scaling_config: {
    #           max_environments: 1
    #         },
    #         throttle_config: {
    #           rate_limit: 1
    #         },
    #         state: "Pending" # One of: ["Pending", "Active", "Failed", "Deleting"], # required
    #         state_reason: "String", # required
    #         update_status: "InProgress" # One of: ["InProgress", "Successful", "Failed"],
    #         update_status_reason: "String"
    #       }
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateWebFunctionEndpointResponse]
    def update_web_function_endpoint(params = {}, options = {})
      request = build_request(:update_web_function_endpoint, params)
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
      context[:gem_name] = 'aws-sdk-lambdaweb'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        web_function_active: Waiters::WebFunctionActive,
        web_function_deleted: Waiters::WebFunctionDeleted,
        web_function_endpoint_active: Waiters::WebFunctionEndpointActive,
        web_function_endpoint_deleted: Waiters::WebFunctionEndpointDeleted,
        web_function_endpoint_updated: Waiters::WebFunctionEndpointUpdated,
        web_function_revision_active: Waiters::WebFunctionRevisionActive
      }
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
