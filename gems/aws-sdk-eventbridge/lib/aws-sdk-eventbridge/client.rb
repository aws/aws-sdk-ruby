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
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::EventBridge
  # An API client for Aws::EventBridge.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSEvents

    add_plugin(::Aws::EventBridge::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::EventBridge::EndpointProvider)
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
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
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
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Activates a partner event source that has been deactivated. Once activated, your matching
    #       event bus will start receiving events from the event source.</p>
    # @param [Hash, Types::ActivateEventSourceRequest] params
    # @option params [String] :name
    #   <p>The name of the partner event source to activate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventSourceName", # required
    #   }
    #   options = {}
    #   response = client.activate_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def activate_event_source(params = {}, options = {})
      request = build_request(:activate_event_source, params)
      request.send_request(options)
    end

    # <p>Cancels the specified replay.</p>
    # @param [Hash, Types::CancelReplayRequest] params
    # @option params [String] :replay_name
    #   <p>The name of the replay to cancel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replay_name: "ReplayName", # required
    #   }
    #   options = {}
    #   response = client.cancel_replay(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replay_arn: "ReplayArn",
    #     state: "STARTING" # One of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"],
    #     state_reason: "ReplayStateReason"
    #   }
    # @return [Types::CancelReplayResponse]
    def cancel_replay(params = {}, options = {})
      request = build_request(:cancel_replay, params)
      request.send_request(options)
    end

    # <p>Creates an API destination, which is an HTTP invocation endpoint configured as a target
    #       for events.</p>
    #          <p>API destinations do not support private destinations, such as interface VPC
    #       endpoints.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-api-destinations.html">API destinations</a> in the
    #         <i>EventBridge User Guide</i>.</p>
    # @param [Hash, Types::CreateApiDestinationRequest] params
    # @option params [String] :name
    #   <p>The name for the API destination to create.</p>
    # @option params [String] :description
    #   <p>A description for the API destination to create.</p>
    # @option params [String] :connection_arn
    #   <p>The ARN of the connection to use for the API destination. The destination endpoint must
    #         support the authorization type specified for the connection.</p>
    # @option params [String] :invocation_endpoint
    #   <p>The URL to the HTTP invocation endpoint for the API destination.</p>
    # @option params [String] :http_method
    #   <p>The method to use for the request to the HTTP invocation endpoint.</p>
    # @option params [Integer] :invocation_rate_limit_per_second
    #   <p>The maximum number of requests per second to send to the HTTP invocation endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApiDestinationName", # required
    #     description: "ApiDestinationDescription",
    #     connection_arn: "ConnectionArn", # required
    #     invocation_endpoint: "HttpsEndpoint", # required
    #     http_method: "POST" # One of: ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"], # required
    #     invocation_rate_limit_per_second: 1
    #   }
    #   options = {}
    #   response = client.create_api_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_destination_arn: "ApiDestinationArn",
    #     api_destination_state: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::CreateApiDestinationResponse]
    def create_api_destination(params = {}, options = {})
      request = build_request(:create_api_destination, params)
      request.send_request(options)
    end

    # <p>Creates an archive of events with the specified settings. When you create an archive,
    #       incoming events might not immediately start being sent to the archive. Allow a short period of
    #       time for changes to take effect. If you do not specify a pattern to filter events sent to the
    #       archive, all events are sent to the archive except replayed events. Replayed events are not
    #       sent to an archive.</p>
    #          <important>
    #             <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a 
    #         customer managed key for any archives for the event bus as well. </p>
    #             <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #          </important>
    # @param [Hash, Types::CreateArchiveRequest] params
    # @option params [String] :archive_name
    #   <p>The name for the archive to create.</p>
    # @option params [String] :event_source_arn
    #   <p>The ARN of the event bus that sends events to the archive.</p>
    # @option params [String] :description
    #   <p>A description for the archive.</p>
    # @option params [String] :event_pattern
    #   <p>An event pattern to use to filter events sent to the archive.</p>
    # @option params [Integer] :retention_days
    #   <p>The number of days to retain events for. Default value is 0. If set to 0, events are
    #         retained indefinitely</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key 
    #         Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>If you do not specify a customer managed key identifier, EventBridge uses an
    #           Amazon Web Services owned key to encrypt the archive.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html">Identify and view keys</a> in the <i>Key Management Service
    #                                   Developer Guide</i>. </p>
    #            <important>
    #               <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a 
    #           customer managed key for any archives for the event bus as well. </p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_name: "ArchiveName", # required
    #     event_source_arn: "EventBusArn", # required
    #     description: "ArchiveDescription",
    #     event_pattern: "EventPattern",
    #     retention_days: 1,
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    #   options = {}
    #   response = client.create_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_arn: "ArchiveArn",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"],
    #     state_reason: "ArchiveStateReason",
    #     creation_time: Time.now
    #   }
    # @return [Types::CreateArchiveResponse]
    def create_archive(params = {}, options = {})
      request = build_request(:create_archive, params)
      request.send_request(options)
    end

    # <p>Creates a connection. A connection defines the authorization type and credentials to use
    #       for authorization with an API destination HTTP endpoint.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-target-connection.html">Connections for endpoint targets</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    # @param [Hash, Types::CreateConnectionRequest] params
    # @option params [String] :name
    #   <p>The name for the connection to create.</p>
    # @option params [String] :description
    #   <p>A description for the connection to create.</p>
    # @option params [String] :authorization_type
    #   <p>The type of authorization to use for the connection.</p>
    #            <note>
    #               <p>OAUTH tokens are refreshed when a 401 or 407 response is returned.</p>
    #            </note>
    # @option params [Types::CreateConnectionAuthRequestParameters] :auth_parameters
    #   <p>The
    #         authorization parameters to use to authorize with the endpoint. </p>
    #            <p>You must include only authorization parameters for the <code>AuthorizationType</code> you specify.</p>
    # @option params [Types::ConnectivityResourceParameters] :invocation_connectivity_parameters
    #   <p>For connections to private APIs, the parameters to use for invoking the API.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/connection-private.html">Connecting to private APIs</a> in the <i>
    #                  <i>Amazon EventBridge User Guide</i>
    #               </i>.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key 
    #         Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>If you do not specify a customer managed key identifier, EventBridge uses an
    #           Amazon Web Services owned key to encrypt the connection.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html">Identify and view keys</a> in the <i>Key Management Service
    #                                   Developer Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ConnectionName", # required
    #     description: "ConnectionDescription",
    #     authorization_type: "BASIC" # One of: ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"], # required
    #     auth_parameters: { # required
    #       basic_auth_parameters: {
    #         username: "AuthHeaderParameters", # required
    #         password: "AuthHeaderParametersSensitive", # required
    #       },
    #       o_auth_parameters: {
    #         client_parameters: { # required
    #           client_id: "AuthHeaderParameters", # required
    #           client_secret: "AuthHeaderParametersSensitive", # required
    #         },
    #         authorization_endpoint: "HttpsEndpoint", # required
    #         http_method: "GET" # One of: ["GET", "POST", "PUT"], # required
    #         o_auth_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: "HeaderKey",
    #               value: "HeaderValueSensitive",
    #               is_value_secret: false
    #             }
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: "QueryStringKey",
    #               value: "QueryStringValueSensitive",
    #               is_value_secret: false
    #             }
    #           ],
    #           body_parameters: [
    #             {
    #               key: "String",
    #               value: "SensitiveString",
    #               is_value_secret: false
    #             }
    #           ]
    #         }
    #       },
    #       api_key_auth_parameters: {
    #         api_key_name: "AuthHeaderParameters", # required
    #         api_key_value: "AuthHeaderParametersSensitive", # required
    #       },
    #       invocation_http_parameters: {
    #         header_parameters: [
    #           {
    #             key: "HeaderKey",
    #             value: "HeaderValueSensitive",
    #             is_value_secret: false
    #           }
    #         ],
    #         query_string_parameters: [
    #           {
    #             key: "QueryStringKey",
    #             value: "QueryStringValueSensitive",
    #             is_value_secret: false
    #           }
    #         ],
    #         body_parameters: [
    #           {
    #             key: "String",
    #             value: "SensitiveString",
    #             is_value_secret: false
    #           }
    #         ]
    #       },
    #       connectivity_parameters: {
    #         resource_parameters: { # required
    #           resource_configuration_arn: "ResourceConfigurationArn", # required
    #         }
    #       }
    #     },
    #     invocation_connectivity_parameters: {
    #       resource_parameters: { # required
    #         resource_configuration_arn: "ResourceConfigurationArn", # required
    #       }
    #     },
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    #   options = {}
    #   response = client.create_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_arn: "ConnectionArn",
    #     connection_state: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING", "ACTIVE", "FAILED_CONNECTIVITY"],
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::CreateConnectionResponse]
    def create_connection(params = {}, options = {})
      request = build_request(:create_connection, params)
      request.send_request(options)
    end

    # <p>Creates a global endpoint. Global endpoints improve your application's availability by
    #       making it regional-fault tolerant. To do this, you define a primary and secondary Region with
    #       event buses in each Region. You also create a Amazon Route 53 health check that will
    #       tell EventBridge to route events to the secondary Region when an "unhealthy" state is
    #       encountered and events will be routed back to the primary Region when the health check reports
    #       a "healthy" state.</p>
    # @param [Hash, Types::CreateEndpointRequest] params
    # @option params [String] :name
    #   <p>The name of the global endpoint. For example,
    #           <code>"Name":"us-east-2-custom_bus_A-endpoint"</code>.</p>
    # @option params [String] :description
    #   <p>A description of the global endpoint.</p>
    # @option params [Types::RoutingConfig] :routing_config
    #   <p>Configure the routing policy, including the health check and secondary Region..</p>
    # @option params [Types::ReplicationConfig] :replication_config
    #   <p>Enable or disable event replication. The default state is <code>ENABLED</code> which means
    #         you must supply a <code>RoleArn</code>. If you don't have a <code>RoleArn</code> or you don't
    #         want event replication enabled, set the state to <code>DISABLED</code>.</p>
    # @option params [Array<Types::EndpointEventBus>] :event_buses
    #   <p>Define the event buses used. </p>
    #            <important>
    #               <p>The names of the event buses must be identical in each Region.</p>
    #            </important>
    # @option params [String] :role_arn
    #   <p>The ARN of the role used for replication.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EndpointName", # required
    #     description: "EndpointDescription",
    #     routing_config: { # required
    #       failover_config: { # required
    #         primary: { # required
    #           health_check: "HealthCheck", # required
    #         },
    #         secondary: { # required
    #           route: "Route", # required
    #         }
    #       }
    #     },
    #     replication_config: {
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     event_buses: [ # required
    #       {
    #         event_bus_arn: "NonPartnerEventBusArn", # required
    #       }
    #     ],
    #     role_arn: "IamRoleArn"
    #   }
    #   options = {}
    #   response = client.create_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EndpointName",
    #     arn: "EndpointArn",
    #     routing_config: {
    #       failover_config: { # required
    #         primary: { # required
    #           health_check: "HealthCheck", # required
    #         },
    #         secondary: { # required
    #           route: "Route", # required
    #         }
    #       }
    #     },
    #     replication_config: {
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     event_buses: [
    #       {
    #         event_bus_arn: "NonPartnerEventBusArn", # required
    #       }
    #     ],
    #     role_arn: "IamRoleArn",
    #     state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"]
    #   }
    # @return [Types::CreateEndpointResponse]
    def create_endpoint(params = {}, options = {})
      request = build_request(:create_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates a new event bus within your account. This can be a custom event bus which you can
    #       use to receive events from your custom applications and services, or it can be a partner event
    #       bus which can be matched to a partner event source.</p>
    # @param [Hash, Types::CreateEventBusRequest] params
    # @option params [String] :name
    #   <p>The name of the new event bus. </p>
    #            <p>Custom event bus names can't contain the <code>/</code> character, but you can use the
    #           <code>/</code> character in partner event bus names. In addition, for partner event buses,
    #         the name must exactly match the name of the partner event source that this event bus is
    #         matched to.</p>
    #            <p>You can't use the name <code>default</code> for a custom event bus, as this name is
    #         already used for your account's default event bus.</p>
    # @option params [String] :event_source_name
    #   <p>If you are creating a partner event bus, this specifies the partner event source that the
    #         new event bus will be matched with.</p>
    # @option params [String] :description
    #   <p>The event bus description.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key 
    #         Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>If you do not specify a customer managed key identifier, EventBridge uses an
    #           Amazon Web Services owned key to encrypt events on the event bus.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html">Identify and view keys</a> in the <i>Key Management Service
    #                                   Developer Guide</i>. </p>
    #            <note>
    #               <p>Schema discovery is not supported for event buses encrypted using a
    #           customer managed key. EventBridge returns an error if: </p>
    #               <ul>
    #                  <li>
    #                     <p>You call <code>
    #                           <a href="https://docs.aws.amazon.com/eventbridge/latest/schema-reference/v1-discoverers.html#CreateDiscoverer">CreateDiscoverer</a>
    #                        </code> on an event bus set to use a customer managed key for encryption.</p>
    #                  </li>
    #                  <li>
    #                     <p>You call <code>
    #                           <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UpdatedEventBus.html">UpdatedEventBus</a>
    #                        </code> to set a customer managed key on an event bus with schema discovery enabled.</p>
    #                  </li>
    #               </ul>
    #               <p>To enable schema discovery on an event bus, choose to
    #           use an Amazon Web Services owned key. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption-event-bus-cmkey.html">Encrypting events</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #            </note>
    #            <important>
    #               <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a 
    #           customer managed key for any archives for the event bus as well. </p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #            </important>
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   <p>Configuration details of the Amazon SQS queue for EventBridge to use as a
    #         dead-letter queue (DLQ).</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-rule-event-delivery.html#eb-rule-dlq">Using dead-letter queues to process undelivered events</a> in the <i>EventBridge User
    #           Guide</i>.</p>
    # @option params [Types::LogConfig] :log_config
    #   <p>The logging configuration settings for the event bus.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eb-event-bus-logs.html">Configuring logs for event buses</a> in the <i>EventBridge User Guide</i>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags to associate with the event bus.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventBusName", # required
    #     event_source_name: "EventSourceName",
    #     description: "EventBusDescription",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     dead_letter_config: {
    #       arn: "ResourceArn"
    #     },
    #     log_config: {
    #       include_detail: "NONE" # One of: ["NONE", "FULL"],
    #       level: "OFF" # One of: ["OFF", "ERROR", "INFO", "TRACE"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_event_bus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_bus_arn: "String",
    #     description: "EventBusDescription",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     dead_letter_config: {
    #       arn: "ResourceArn"
    #     },
    #     log_config: {
    #       include_detail: "NONE" # One of: ["NONE", "FULL"],
    #       level: "OFF" # One of: ["OFF", "ERROR", "INFO", "TRACE"]
    #     }
    #   }
    # @return [Types::CreateEventBusResponse]
    def create_event_bus(params = {}, options = {})
      request = build_request(:create_event_bus, params)
      request.send_request(options)
    end

    # <p>Called by an SaaS partner to create a partner event source. This operation is not used by
    #         Amazon Web Services customers.</p>
    #          <p>Each partner event source can be used by one Amazon Web Services account to create a
    #       matching partner event bus in that Amazon Web Services account. A SaaS partner must create one
    #       partner event source for each Amazon Web Services account that wants to receive those event
    #       types. </p>
    #          <p>A partner event source creates events based on resources within the SaaS partner's service
    #       or application.</p>
    #          <p>An Amazon Web Services account that creates a partner event bus that matches the partner
    #       event source can use that event bus to receive events from the partner, and then process them
    #       using Amazon Web Services Events rules and targets.</p>
    #          <p>Partner event source names follow this format:</p>
    #          <p>
    #             <code>
    #                <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>
    #             </code>
    #          </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <i>partner_name</i> is determined during partner registration, and
    #           identifies the partner to Amazon Web Services customers. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>event_namespace</i> is determined by the partner, and is a way for
    #           the partner to categorize their events.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <i>event_name</i> is determined by the partner, and should uniquely
    #           identify an event-generating resource within the partner system. </p>
    #                <p>The <i>event_name</i> must be unique across all Amazon Web Services
    #           customers. This is because the event source is a shared resource between the partner and
    #           customer accounts, and each partner event source unique in the partner account.</p>
    #             </li>
    #          </ul>
    #          <p>The combination of <i>event_namespace</i> and
    #         <i>event_name</i> should help Amazon Web Services customers decide whether to
    #       create an event bus to receive these events.</p>
    # @param [Hash, Types::CreatePartnerEventSourceRequest] params
    # @option params [String] :name
    #   <p>The name of the partner event source. This name must be unique and must be in the format
    #             <code>
    #                  <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>
    #               </code>.
    #         The Amazon Web Services account that wants to use this partner event source must create a
    #         partner event bus with a name that matches the name of the partner event source.</p>
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID that is permitted to create a matching partner event bus
    #         for this partner event source.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventSourceName", # required
    #     account: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.create_partner_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_source_arn: "String"
    #   }
    # @return [Types::CreatePartnerEventSourceResponse]
    def create_partner_event_source(params = {}, options = {})
      request = build_request(:create_partner_event_source, params)
      request.send_request(options)
    end

    # <p>You can use this operation to temporarily stop receiving events from the specified partner
    #       event source. The matching event bus is not deleted. </p>
    #          <p>When you deactivate a partner event source, the source goes into PENDING state. If it
    #       remains in PENDING state for more than two weeks, it is deleted.</p>
    #          <p>To activate a deactivated partner event source, use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ActivateEventSource.html">ActivateEventSource</a>.</p>
    # @param [Hash, Types::DeactivateEventSourceRequest] params
    # @option params [String] :name
    #   <p>The name of the partner event source to deactivate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventSourceName", # required
    #   }
    #   options = {}
    #   response = client.deactivate_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deactivate_event_source(params = {}, options = {})
      request = build_request(:deactivate_event_source, params)
      request.send_request(options)
    end

    # <p>Removes all authorization parameters from the connection. This lets you remove the secret
    #       from the connection so you can reuse it without having to create a new connection.</p>
    # @param [Hash, Types::DeauthorizeConnectionRequest] params
    # @option params [String] :name
    #   <p>The name of the connection to remove authorization from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ConnectionName", # required
    #   }
    #   options = {}
    #   response = client.deauthorize_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_arn: "ConnectionArn",
    #     connection_state: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING", "ACTIVE", "FAILED_CONNECTIVITY"],
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     last_authorized_time: Time.now
    #   }
    # @return [Types::DeauthorizeConnectionResponse]
    def deauthorize_connection(params = {}, options = {})
      request = build_request(:deauthorize_connection, params)
      request.send_request(options)
    end

    # <p>Deletes the specified API destination.</p>
    # @param [Hash, Types::DeleteApiDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the destination to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApiDestinationName", # required
    #   }
    #   options = {}
    #   response = client.delete_api_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApiDestinationResponse]
    def delete_api_destination(params = {}, options = {})
      request = build_request(:delete_api_destination, params)
      request.send_request(options)
    end

    # <p>Deletes the specified archive.</p>
    # @param [Hash, Types::DeleteArchiveRequest] params
    # @option params [String] :archive_name
    #   <p>The name of the archive to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_name: "ArchiveName", # required
    #   }
    #   options = {}
    #   response = client.delete_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteArchiveResponse]
    def delete_archive(params = {}, options = {})
      request = build_request(:delete_archive, params)
      request.send_request(options)
    end

    # <p>Deletes a connection.</p>
    # @param [Hash, Types::DeleteConnectionRequest] params
    # @option params [String] :name
    #   <p>The name of the connection to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ConnectionName", # required
    #   }
    #   options = {}
    #   response = client.delete_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_arn: "ConnectionArn",
    #     connection_state: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING", "ACTIVE", "FAILED_CONNECTIVITY"],
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     last_authorized_time: Time.now
    #   }
    # @return [Types::DeleteConnectionResponse]
    def delete_connection(params = {}, options = {})
      request = build_request(:delete_connection, params)
      request.send_request(options)
    end

    # <p>Delete an existing global endpoint. For more information about global endpoints, see
    #         <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html">Making applications Regional-fault tolerant with global endpoints and event
    #         replication</a> in the <i>
    #                <i>Amazon EventBridge User Guide</i>
    #             </i>.</p>
    # @param [Hash, Types::DeleteEndpointRequest] params
    # @option params [String] :name
    #   <p>The name of the endpoint you want to delete. For example,
    #           <code>"Name":"us-east-2-custom_bus_A-endpoint"</code>..</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EndpointName", # required
    #   }
    #   options = {}
    #   response = client.delete_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEndpointResponse]
    def delete_endpoint(params = {}, options = {})
      request = build_request(:delete_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes the specified custom event bus or partner event bus. All rules associated with
    #       this event bus need to be deleted. You can't delete your account's default event bus.</p>
    # @param [Hash, Types::DeleteEventBusRequest] params
    # @option params [String] :name
    #   <p>The name of the event bus to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventBusName", # required
    #   }
    #   options = {}
    #   response = client.delete_event_bus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_event_bus(params = {}, options = {})
      request = build_request(:delete_event_bus, params)
      request.send_request(options)
    end

    # <p>This operation is used by SaaS partners to delete a partner event source. This operation
    #       is not used by Amazon Web Services customers.</p>
    #          <p>When you delete an event source, the status of the corresponding partner event bus in the
    #         Amazon Web Services customer account becomes DELETED.</p>
    #          <p></p>
    # @param [Hash, Types::DeletePartnerEventSourceRequest] params
    # @option params [String] :name
    #   <p>The name of the event source to delete.</p>
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID of the Amazon Web Services customer that the event source
    #         was created for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventSourceName", # required
    #     account: "AccountId", # required
    #   }
    #   options = {}
    #   response = client.delete_partner_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_partner_event_source(params = {}, options = {})
      request = build_request(:delete_partner_event_source, params)
      request.send_request(options)
    end

    # <p>Deletes the specified rule.</p>
    #          <p>Before you can delete the rule, you must remove all targets, using <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemoveTargets.html">RemoveTargets</a>.</p>
    #          <p>When you delete a rule, incoming events might continue to match to the deleted rule. Allow
    #       a short period of time for changes to take effect.</p>
    #          <p>If you call delete rule multiple times for the same rule, all calls will succeed. When you
    #       call delete rule for a non-existent custom eventbus, <code>ResourceNotFoundException</code> is
    #       returned.</p>
    #          <p>Managed rules are rules created and managed by another Amazon Web Services service on your
    #       behalf. These rules are created by those other Amazon Web Services services to support
    #       functionality in those services. You can delete these rules using the <code>Force</code>
    #       option, but you should do so only if you are sure the other service is not still using that
    #       rule.</p>
    # @param [Hash, Types::DeleteRuleRequest] params
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    # @option params [Boolean] :force
    #   <p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you
    #         must specify <code>Force</code> as <code>True</code> to delete the rule. This parameter is
    #         ignored for rules that are not managed rules. You can check whether a rule is a managed rule
    #         by using <code>DescribeRule</code> or <code>ListRules</code> and checking the
    #           <code>ManagedBy</code> field of the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RuleName", # required
    #     event_bus_name: "EventBusNameOrArn",
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_rule(params = {}, options = {})
      request = build_request(:delete_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an API destination.</p>
    # @param [Hash, Types::DescribeApiDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the API destination to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApiDestinationName", # required
    #   }
    #   options = {}
    #   response = client.describe_api_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_destination_arn: "ApiDestinationArn",
    #     name: "ApiDestinationName",
    #     description: "ApiDestinationDescription",
    #     api_destination_state: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     connection_arn: "ConnectionArn",
    #     invocation_endpoint: "HttpsEndpoint",
    #     http_method: "POST" # One of: ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"],
    #     invocation_rate_limit_per_second: 1,
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::DescribeApiDestinationResponse]
    def describe_api_destination(params = {}, options = {})
      request = build_request(:describe_api_destination, params)
      request.send_request(options)
    end

    # <p>Retrieves details about an archive.</p>
    # @param [Hash, Types::DescribeArchiveRequest] params
    # @option params [String] :archive_name
    #   <p>The name of the archive to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_name: "ArchiveName", # required
    #   }
    #   options = {}
    #   response = client.describe_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_arn: "ArchiveArn",
    #     archive_name: "ArchiveName",
    #     event_source_arn: "EventBusArn",
    #     description: "ArchiveDescription",
    #     event_pattern: "EventPattern",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"],
    #     state_reason: "ArchiveStateReason",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     retention_days: 1,
    #     size_bytes: 1,
    #     event_count: 1,
    #     creation_time: Time.now
    #   }
    # @return [Types::DescribeArchiveResponse]
    def describe_archive(params = {}, options = {})
      request = build_request(:describe_archive, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a connection.</p>
    # @param [Hash, Types::DescribeConnectionRequest] params
    # @option params [String] :name
    #   <p>The name of the connection to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ConnectionName", # required
    #   }
    #   options = {}
    #   response = client.describe_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_arn: "ConnectionArn",
    #     name: "ConnectionName",
    #     description: "ConnectionDescription",
    #     invocation_connectivity_parameters: {
    #       resource_parameters: { # required
    #         resource_configuration_arn: "ResourceConfigurationArn", # required
    #         resource_association_arn: "ResourceAssociationArn", # required
    #       }
    #     },
    #     connection_state: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING", "ACTIVE", "FAILED_CONNECTIVITY"],
    #     state_reason: "ConnectionStateReason",
    #     authorization_type: "BASIC" # One of: ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"],
    #     secret_arn: "SecretsManagerSecretArn",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     auth_parameters: {
    #       basic_auth_parameters: {
    #         username: "AuthHeaderParameters"
    #       },
    #       o_auth_parameters: {
    #         client_parameters: {
    #           client_id: "AuthHeaderParameters"
    #         },
    #         authorization_endpoint: "HttpsEndpoint",
    #         http_method: "GET" # One of: ["GET", "POST", "PUT"],
    #         o_auth_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: "HeaderKey",
    #               value: "HeaderValueSensitive",
    #               is_value_secret: false
    #             }
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: "QueryStringKey",
    #               value: "QueryStringValueSensitive",
    #               is_value_secret: false
    #             }
    #           ],
    #           body_parameters: [
    #             {
    #               key: "String",
    #               value: "SensitiveString",
    #               is_value_secret: false
    #             }
    #           ]
    #         }
    #       },
    #       api_key_auth_parameters: {
    #         api_key_name: "AuthHeaderParameters"
    #       },
    #       invocation_http_parameters: {
    #         header_parameters: [
    #           {
    #             key: "HeaderKey",
    #             value: "HeaderValueSensitive",
    #             is_value_secret: false
    #           }
    #         ],
    #         query_string_parameters: [
    #           {
    #             key: "QueryStringKey",
    #             value: "QueryStringValueSensitive",
    #             is_value_secret: false
    #           }
    #         ],
    #         body_parameters: [
    #           {
    #             key: "String",
    #             value: "SensitiveString",
    #             is_value_secret: false
    #           }
    #         ]
    #       },
    #       connectivity_parameters: {
    #         resource_parameters: { # required
    #           resource_configuration_arn: "ResourceConfigurationArn", # required
    #           resource_association_arn: "ResourceAssociationArn", # required
    #         }
    #       }
    #     },
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     last_authorized_time: Time.now
    #   }
    # @return [Types::DescribeConnectionResponse]
    def describe_connection(params = {}, options = {})
      request = build_request(:describe_connection, params)
      request.send_request(options)
    end

    # <p>Get the information about an existing global endpoint. For more information about global
    #       endpoints, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html">Making applications
    #         Regional-fault tolerant with global endpoints and event replication</a> in the
    #         <i>
    #                <i>Amazon EventBridge User Guide</i>
    #             </i>.</p>
    # @param [Hash, Types::DescribeEndpointRequest] params
    # @option params [String] :name
    #   <p>The name of the endpoint you want to get information about. For example,
    #           <code>"Name":"us-east-2-custom_bus_A-endpoint"</code>.</p>
    # @option params [String] :home_region
    #   <p>The primary Region of the endpoint you want to get information about. For example
    #           <code>"HomeRegion": "us-east-1"</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EndpointName", # required
    #     home_region: "HomeRegion"
    #   }
    #   options = {}
    #   response = client.describe_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EndpointName",
    #     description: "EndpointDescription",
    #     arn: "EndpointArn",
    #     routing_config: {
    #       failover_config: { # required
    #         primary: { # required
    #           health_check: "HealthCheck", # required
    #         },
    #         secondary: { # required
    #           route: "Route", # required
    #         }
    #       }
    #     },
    #     replication_config: {
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     event_buses: [
    #       {
    #         event_bus_arn: "NonPartnerEventBusArn", # required
    #       }
    #     ],
    #     role_arn: "IamRoleArn",
    #     endpoint_id: "EndpointId",
    #     endpoint_url: "EndpointUrl",
    #     state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"],
    #     state_reason: "EndpointStateReason",
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::DescribeEndpointResponse]
    def describe_endpoint(params = {}, options = {})
      request = build_request(:describe_endpoint, params)
      request.send_request(options)
    end

    # <p>Displays details about an event bus in your account. This can include the external Amazon Web Services accounts that are permitted to write events to your default event bus, and the
    #       associated policy. For custom event buses and partner event buses, it displays the name, ARN,
    #       policy, state, and creation time.</p>
    #          <p> To enable your account to receive events from other accounts on its default event bus,
    #       use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html">PutPermission</a>.</p>
    #          <p>For more information about partner event buses, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html">CreateEventBus</a>.</p>
    # @param [Hash, Types::DescribeEventBusRequest] params
    # @option params [String] :name
    #   <p>The name or ARN of the event bus to show details for. If you omit this, the default event
    #         bus is displayed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventBusNameOrArn"
    #   }
    #   options = {}
    #   response = client.describe_event_bus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "String",
    #     arn: "String",
    #     description: "EventBusDescription",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     dead_letter_config: {
    #       arn: "ResourceArn"
    #     },
    #     policy: "String",
    #     log_config: {
    #       include_detail: "NONE" # One of: ["NONE", "FULL"],
    #       level: "OFF" # One of: ["OFF", "ERROR", "INFO", "TRACE"]
    #     },
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::DescribeEventBusResponse]
    def describe_event_bus(params = {}, options = {})
      request = build_request(:describe_event_bus, params)
      request.send_request(options)
    end

    # <p>This operation lists details about a partner event source that is shared with your
    #       account.</p>
    # @param [Hash, Types::DescribeEventSourceRequest] params
    # @option params [String] :name
    #   <p>The name of the partner event source to display the details of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventSourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     created_by: "String",
    #     creation_time: Time.now,
    #     expiration_time: Time.now,
    #     name: "String",
    #     state: "PENDING" # One of: ["PENDING", "ACTIVE", "DELETED"]
    #   }
    # @return [Types::DescribeEventSourceResponse]
    def describe_event_source(params = {}, options = {})
      request = build_request(:describe_event_source, params)
      request.send_request(options)
    end

    # <p>An SaaS partner can use this operation to list details about a partner event source that
    #       they have created. Amazon Web Services customers do not use this operation. Instead, Amazon Web Services customers can use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventSource.html">DescribeEventSource</a> to see details about a partner event source that is shared with
    #       them.</p>
    # @param [Hash, Types::DescribePartnerEventSourceRequest] params
    # @option params [String] :name
    #   <p>The name of the event source to display.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventSourceName", # required
    #   }
    #   options = {}
    #   response = client.describe_partner_event_source(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     name: "String"
    #   }
    # @return [Types::DescribePartnerEventSourceResponse]
    def describe_partner_event_source(params = {}, options = {})
      request = build_request(:describe_partner_event_source, params)
      request.send_request(options)
    end

    # <p>Retrieves details about a replay. Use <code>DescribeReplay</code> to determine the
    #       progress of a running replay. A replay processes events to replay based on the time in the
    #       event, and replays them using 1 minute intervals. If you use <code>StartReplay</code> and
    #       specify an <code>EventStartTime</code> and an <code>EventEndTime</code> that covers a 20
    #       minute time range, the events are replayed from the first minute of that 20 minute range
    #       first. Then the events from the second minute are replayed. You can use
    #         <code>DescribeReplay</code> to determine the progress of a replay. The value returned for
    #         <code>EventLastReplayedTime</code> indicates the time within the specified time range
    #       associated with the last event replayed.</p>
    # @param [Hash, Types::DescribeReplayRequest] params
    # @option params [String] :replay_name
    #   <p>The name of the replay to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replay_name: "ReplayName", # required
    #   }
    #   options = {}
    #   response = client.describe_replay(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replay_name: "ReplayName",
    #     replay_arn: "ReplayArn",
    #     description: "ReplayDescription",
    #     state: "STARTING" # One of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"],
    #     state_reason: "ReplayStateReason",
    #     event_source_arn: "ArchiveArn",
    #     destination: {
    #       arn: "Arn", # required
    #       filter_arns: ["Arn"]
    #     },
    #     event_start_time: Time.now,
    #     event_end_time: Time.now,
    #     event_last_replayed_time: Time.now,
    #     replay_start_time: Time.now,
    #     replay_end_time: Time.now
    #   }
    # @return [Types::DescribeReplayResponse]
    def describe_replay(params = {}, options = {})
      request = build_request(:describe_replay, params)
      request.send_request(options)
    end

    # <p>Describes the specified rule.</p>
    #          <p>DescribeRule does not list the targets of a rule. To see the targets associated with a
    #       rule, use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html">ListTargetsByRule</a>.</p>
    # @param [Hash, Types::DescribeRuleRequest] params
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RuleName", # required
    #     event_bus_name: "EventBusNameOrArn"
    #   }
    #   options = {}
    #   response = client.describe_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "RuleName",
    #     arn: "RuleArn",
    #     event_pattern: "EventPattern",
    #     schedule_expression: "ScheduleExpression",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"],
    #     description: "RuleDescription",
    #     role_arn: "RoleArn",
    #     managed_by: "ManagedBy",
    #     event_bus_name: "EventBusName",
    #     created_by: "CreatedBy"
    #   }
    # @return [Types::DescribeRuleResponse]
    def describe_rule(params = {}, options = {})
      request = build_request(:describe_rule, params)
      request.send_request(options)
    end

    # <p>Disables the specified rule. A disabled rule won't match any events, and won't
    #       self-trigger if it has a schedule expression.</p>
    #          <p>When you disable a rule, incoming events might continue to match to the disabled rule.
    #       Allow a short period of time for changes to take effect.</p>
    # @param [Hash, Types::DisableRuleRequest] params
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RuleName", # required
    #     event_bus_name: "EventBusNameOrArn"
    #   }
    #   options = {}
    #   response = client.disable_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def disable_rule(params = {}, options = {})
      request = build_request(:disable_rule, params)
      request.send_request(options)
    end

    # <p>Enables the specified rule. If the rule does not exist, the operation fails.</p>
    #          <p>When you enable a rule, incoming events might not immediately start matching to a newly
    #       enabled rule. Allow a short period of time for changes to take effect.</p>
    # @param [Hash, Types::EnableRuleRequest] params
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RuleName", # required
    #     event_bus_name: "EventBusNameOrArn"
    #   }
    #   options = {}
    #   response = client.enable_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def enable_rule(params = {}, options = {})
      request = build_request(:enable_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of API destination in the account in the current Region.</p>
    # @param [Hash, Types::ListApiDestinationsRequest] params
    # @option params [String] :name_prefix
    #   <p>A name prefix to filter results returned. Only API destinations with a name that starts
    #         with the prefix are returned.</p>
    # @option params [String] :connection_arn
    #   <p>The ARN of the connection specified for the API destination.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of API destinations to include in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "ApiDestinationName",
    #     connection_arn: "ConnectionArn",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_api_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_destinations: [
    #       {
    #         api_destination_arn: "ApiDestinationArn",
    #         name: "ApiDestinationName",
    #         api_destination_state: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #         connection_arn: "ConnectionArn",
    #         invocation_endpoint: "HttpsEndpoint",
    #         http_method: "POST" # One of: ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"],
    #         invocation_rate_limit_per_second: 1,
    #         creation_time: Time.now,
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApiDestinationsResponse]
    def list_api_destinations(params = {}, options = {})
      request = build_request(:list_api_destinations, params)
      request.send_request(options)
    end

    # <p>Lists your archives. You can either list all the archives or you can provide a prefix to
    #       match to the archive names. Filter parameters are exclusive.</p>
    # @param [Hash, Types::ListArchivesRequest] params
    # @option params [String] :name_prefix
    #   <p>A name prefix to filter the archives returned. Only archives with name that match the
    #         prefix are returned.</p>
    # @option params [String] :event_source_arn
    #   <p>The ARN of the event source associated with the archive.</p>
    # @option params [String] :state
    #   <p>The state of the archive.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "ArchiveName",
    #     event_source_arn: "EventBusArn",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_archives(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archives: [
    #       {
    #         archive_name: "ArchiveName",
    #         event_source_arn: "EventBusArn",
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"],
    #         state_reason: "ArchiveStateReason",
    #         retention_days: 1,
    #         size_bytes: 1,
    #         event_count: 1,
    #         creation_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListArchivesResponse]
    def list_archives(params = {}, options = {})
      request = build_request(:list_archives, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of connections from the account.</p>
    # @param [Hash, Types::ListConnectionsRequest] params
    # @option params [String] :name_prefix
    #   <p>A name prefix to filter results returned. Only connections with a name that starts with
    #         the prefix are returned.</p>
    # @option params [String] :connection_state
    #   <p>The state of the connection.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of connections to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "ConnectionName",
    #     connection_state: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING", "ACTIVE", "FAILED_CONNECTIVITY"],
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connections: [
    #       {
    #         connection_arn: "ConnectionArn",
    #         name: "ConnectionName",
    #         connection_state: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING", "ACTIVE", "FAILED_CONNECTIVITY"],
    #         state_reason: "ConnectionStateReason",
    #         authorization_type: "BASIC" # One of: ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"],
    #         creation_time: Time.now,
    #         last_modified_time: Time.now,
    #         last_authorized_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectionsResponse]
    def list_connections(params = {}, options = {})
      request = build_request(:list_connections, params)
      request.send_request(options)
    end

    # <p>List the global endpoints associated with this account. For more information about global
    #       endpoints, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html">Making applications
    #         Regional-fault tolerant with global endpoints and event replication</a> in the
    #         <i>
    #                <i>Amazon EventBridge User Guide</i>
    #             </i>.</p>
    # @param [Hash, Types::ListEndpointsRequest] params
    # @option params [String] :name_prefix
    #   <p>A value that will return a subset of the endpoints associated with this account. For
    #         example, <code>"NamePrefix": "ABC"</code> will return all endpoints with "ABC" in the
    #         name.</p>
    # @option params [String] :home_region
    #   <p>The primary Region of the endpoints associated with this account. For example
    #           <code>"HomeRegion": "us-east-1"</code>.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by the call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "EndpointName",
    #     home_region: "HomeRegion",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints: [
    #       {
    #         name: "EndpointName",
    #         description: "EndpointDescription",
    #         arn: "EndpointArn",
    #         routing_config: {
    #           failover_config: { # required
    #             primary: { # required
    #               health_check: "HealthCheck", # required
    #             },
    #             secondary: { # required
    #               route: "Route", # required
    #             }
    #           }
    #         },
    #         replication_config: {
    #           state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #         },
    #         event_buses: [
    #           {
    #             event_bus_arn: "NonPartnerEventBusArn", # required
    #           }
    #         ],
    #         role_arn: "IamRoleArn",
    #         endpoint_id: "EndpointId",
    #         endpoint_url: "EndpointUrl",
    #         state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"],
    #         state_reason: "EndpointStateReason",
    #         creation_time: Time.now,
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEndpointsResponse]
    def list_endpoints(params = {}, options = {})
      request = build_request(:list_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists all the event buses in your account, including the default event bus, custom event
    #       buses, and partner event buses.</p>
    # @param [Hash, Types::ListEventBusesRequest] params
    # @option params [String] :name_prefix
    #   <p>Specifying this limits the results to only those event buses with names that start with
    #         the specified prefix.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "EventBusName",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_event_buses(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_buses: [
    #       {
    #         name: "String",
    #         arn: "String",
    #         description: "EventBusDescription",
    #         policy: "String",
    #         creation_time: Time.now,
    #         last_modified_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventBusesResponse]
    def list_event_buses(params = {}, options = {})
      request = build_request(:list_event_buses, params)
      request.send_request(options)
    end

    # <p>You can use this to see all the partner event sources that have been shared with your
    #         Amazon Web Services account. For more information about partner event sources, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html">CreateEventBus</a>.</p>
    # @param [Hash, Types::ListEventSourcesRequest] params
    # @option params [String] :name_prefix
    #   <p>Specifying this limits the results to only those partner event sources with names that
    #         start with the specified prefix.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "EventSourceNamePrefix",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_event_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_sources: [
    #       {
    #         arn: "String",
    #         created_by: "String",
    #         creation_time: Time.now,
    #         expiration_time: Time.now,
    #         name: "String",
    #         state: "PENDING" # One of: ["PENDING", "ACTIVE", "DELETED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventSourcesResponse]
    def list_event_sources(params = {}, options = {})
      request = build_request(:list_event_sources, params)
      request.send_request(options)
    end

    # <p>An SaaS partner can use this operation to display the Amazon Web Services account ID that a
    #       particular partner event source name is associated with. This operation is not used by Amazon Web Services customers.</p>
    # @param [Hash, Types::ListPartnerEventSourceAccountsRequest] params
    # @option params [String] :event_source_name
    #   <p>The name of the partner event source to display account information about.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_name: "EventSourceName", # required
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_partner_event_source_accounts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     partner_event_source_accounts: [
    #       {
    #         account: "AccountId",
    #         creation_time: Time.now,
    #         expiration_time: Time.now,
    #         state: "PENDING" # One of: ["PENDING", "ACTIVE", "DELETED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPartnerEventSourceAccountsResponse]
    def list_partner_event_source_accounts(params = {}, options = {})
      request = build_request(:list_partner_event_source_accounts, params)
      request.send_request(options)
    end

    # <p>An SaaS partner can use this operation to list all the partner event source names that
    #       they have created. This operation is not used by Amazon Web Services customers.</p>
    # @param [Hash, Types::ListPartnerEventSourcesRequest] params
    # @option params [String] :name_prefix
    #   <p>If you specify this, the results are limited to only those partner event sources that
    #         start with the string you specify.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>pecifying this limits the number of results returned by this operation. The operation also
    #         returns a NextToken which you can use in a subsequent operation to retrieve the next set of
    #         results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "PartnerEventSourceNamePrefix", # required
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_partner_event_sources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     partner_event_sources: [
    #       {
    #         arn: "String",
    #         name: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPartnerEventSourcesResponse]
    def list_partner_event_sources(params = {}, options = {})
      request = build_request(:list_partner_event_sources, params)
      request.send_request(options)
    end

    # <p>Lists your replays. You can either list all the replays or you can provide a prefix to
    #       match to the replay names. Filter parameters are exclusive.</p>
    # @param [Hash, Types::ListReplaysRequest] params
    # @option params [String] :name_prefix
    #   <p>A name prefix to filter the replays returned. Only replays with name that match the prefix
    #         are returned.</p>
    # @option params [String] :state
    #   <p>The state of the replay.</p>
    # @option params [String] :event_source_arn
    #   <p>The ARN of the archive from which the events are replayed.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of replays to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "ReplayName",
    #     state: "STARTING" # One of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"],
    #     event_source_arn: "ArchiveArn",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_replays(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replays: [
    #       {
    #         replay_name: "ReplayName",
    #         event_source_arn: "ArchiveArn",
    #         state: "STARTING" # One of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"],
    #         state_reason: "ReplayStateReason",
    #         event_start_time: Time.now,
    #         event_end_time: Time.now,
    #         event_last_replayed_time: Time.now,
    #         replay_start_time: Time.now,
    #         replay_end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListReplaysResponse]
    def list_replays(params = {}, options = {})
      request = build_request(:list_replays, params)
      request.send_request(options)
    end

    # <p>Lists the rules for the specified target. You can see which of the rules in Amazon
    #       EventBridge can invoke a specific target in your account.</p>
    #          <p>The maximum number of results per page for requests is 100.</p>
    # @param [Hash, Types::ListRuleNamesByTargetRequest] params
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the target resource.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus to list rules for. If you omit this, the default event
    #         bus is used.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_arn: "TargetArn", # required
    #     event_bus_name: "EventBusNameOrArn",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_rule_names_by_target(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_names: ["RuleName"],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRuleNamesByTargetResponse]
    def list_rule_names_by_target(params = {}, options = {})
      request = build_request(:list_rule_names_by_target, params)
      request.send_request(options)
    end

    # <p>Lists your Amazon EventBridge rules. You can either list all the rules or you can
    #       provide a prefix to match to the rule names.</p>
    #          <p>The maximum number of results per page for requests is 100.</p>
    #          <p>ListRules does not list the targets of a rule. To see the targets associated with a rule,
    #       use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html">ListTargetsByRule</a>.</p>
    # @param [Hash, Types::ListRulesRequest] params
    # @option params [String] :name_prefix
    #   <p>The prefix matching the rule name.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus to list the rules for. If you omit this, the default
    #         event bus is used.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name_prefix: "RuleName",
    #     event_bus_name: "EventBusNameOrArn",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rules: [
    #       {
    #         name: "RuleName",
    #         arn: "RuleArn",
    #         event_pattern: "EventPattern",
    #         state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"],
    #         description: "RuleDescription",
    #         schedule_expression: "ScheduleExpression",
    #         role_arn: "RoleArn",
    #         managed_by: "ManagedBy",
    #         event_bus_name: "EventBusName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRulesResponse]
    def list_rules(params = {}, options = {})
      request = build_request(:list_rules, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with an EventBridge resource. In EventBridge, rules and event
    #       buses can be tagged.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the EventBridge resource for which you want to view tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists the targets assigned to the specified rule.</p>
    #          <p>The maximum number of results per page for requests is 100.</p>
    # @param [Hash, Types::ListTargetsByRuleRequest] params
    # @option params [String] :rule
    #   <p>The name of the rule.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    # @option params [String] :next_token
    #   <p>The token returned by a previous call, which you can use to retrieve the next set of results.</p>
    #            <p>The value of <code>nextToken</code> is a unique pagination token for each page. To retrieve the next page of results, make the call again using
    #         the returned token. Keep all other arguments unchanged.</p>
    #            <p> Using an expired pagination token results in an <code>HTTP 400 InvalidToken</code> error.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule: "RuleName", # required
    #     event_bus_name: "EventBusNameOrArn",
    #     next_token: "NextToken",
    #     limit: 1
    #   }
    #   options = {}
    #   response = client.list_targets_by_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     targets: [
    #       {
    #         id: "TargetId", # required
    #         arn: "TargetArn", # required
    #         role_arn: "RoleArn",
    #         input: "TargetInput",
    #         input_path: "TargetInputPath",
    #         input_transformer: {
    #           input_paths_map: {
    #             "InputTransformerPathKey" => "TargetInputPath"
    #           },
    #           input_template: "TransformerInput", # required
    #         },
    #         kinesis_parameters: {
    #           partition_key_path: "TargetPartitionKeyPath", # required
    #         },
    #         run_command_parameters: {
    #           run_command_targets: [ # required
    #             {
    #               key: "RunCommandTargetKey", # required
    #               values: ["RunCommandTargetValue"], # required
    #             }
    #           ]
    #         },
    #         ecs_parameters: {
    #           task_definition_arn: "Arn", # required
    #           task_count: 1,
    #           launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL"],
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           platform_version: "String",
    #           group: "String",
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "CapacityProvider", # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           enable_ecs_managed_tags: false,
    #           enable_execute_command: false,
    #           placement_constraints: [
    #             {
    #               type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #               expression: "PlacementConstraintExpression"
    #             }
    #           ],
    #           placement_strategy: [
    #             {
    #               type: "random" # One of: ["random", "spread", "binpack"],
    #               field: "PlacementStrategyField"
    #             }
    #           ],
    #           propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION"],
    #           reference_id: "ReferenceId",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ]
    #         },
    #         batch_parameters: {
    #           job_definition: "String", # required
    #           job_name: "String", # required
    #           array_properties: {
    #             size: 1
    #           },
    #           retry_strategy: {
    #             attempts: 1
    #           }
    #         },
    #         sqs_parameters: {
    #           message_group_id: "MessageGroupId"
    #         },
    #         http_parameters: {
    #           path_parameter_values: ["PathParameter"],
    #           header_parameters: {
    #             "HeaderKey" => "HeaderValue"
    #           },
    #           query_string_parameters: {
    #             "QueryStringKey" => "QueryStringValue"
    #           }
    #         },
    #         redshift_data_parameters: {
    #           secret_manager_arn: "RedshiftSecretManagerArn",
    #           database: "Database", # required
    #           db_user: "DbUser",
    #           sql: "Sql",
    #           statement_name: "StatementName",
    #           with_event: false,
    #           sqls: ["Sql"]
    #         },
    #         sage_maker_pipeline_parameters: {
    #           pipeline_parameter_list: [
    #             {
    #               name: "SageMakerPipelineParameterName", # required
    #               value: "SageMakerPipelineParameterValue", # required
    #             }
    #           ]
    #         },
    #         dead_letter_config: {
    #           arn: "ResourceArn"
    #         },
    #         retry_policy: {
    #           maximum_retry_attempts: 1,
    #           maximum_event_age_in_seconds: 1
    #         },
    #         app_sync_parameters: {
    #           graph_ql_operation: "GraphQLOperation"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTargetsByRuleResponse]
    def list_targets_by_rule(params = {}, options = {})
      request = build_request(:list_targets_by_rule, params)
      request.send_request(options)
    end

    # <p>Sends custom events to Amazon EventBridge so that they can be matched to rules.</p>
    #          <p>You can batch multiple event entries into one request for efficiency. 
    #       However, the total entry size must be less than 256KB. You can calculate the entry size before you send the events. 
    #       For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-putevents.html#eb-putevent-size">Calculating PutEvents event entry
    #         size</a> in the <i>
    #                <i>Amazon EventBridge User Guide</i>
    #             </i>.</p>
    #          <p>PutEvents accepts the data in JSON format. For the JSON number (integer) data type, the
    #       constraints are: a minimum value of -9,223,372,036,854,775,808 and a maximum value of
    #       9,223,372,036,854,775,807.</p>
    #          <note>
    #             <p>PutEvents will only process nested JSON up to 1000 levels deep.</p>
    #          </note>
    # @param [Hash, Types::PutEventsRequest] params
    # @option params [Array<Types::PutEventsRequestEntry>] :entries
    #   <p>The entry that defines an event in your system. You can specify several parameters for the
    #         entry such as the source and type of the event, resources associated with the event, and so
    #         on.</p>
    # @option params [String] :endpoint_id
    #   <p>The URL subdomain of the endpoint. For example, if the URL for Endpoint is
    #         https://abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is
    #         <code>abcde.veo</code>.</p>
    #            <important>
    #               <p>When using Java, you must include <code>auth-crt</code> on the class path.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     entries: [ # required
    #       {
    #         time: Time.now,
    #         source: "String",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #         event_bus_name: "NonPartnerEventBusNameOrArn",
    #         trace_header: "TraceHeader"
    #       }
    #     ],
    #     endpoint_id: "EndpointId"
    #   }
    #   options = {}
    #   response = client.put_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entry_count: 1,
    #     entries: [
    #       {
    #         event_id: "EventId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::PutEventsResponse]
    def put_events(params = {}, options = {})
      request = build_request(:put_events, params)
      request.send_request(options)
    end

    # <p>This is used by SaaS partners to write events to a customer's partner event bus. Amazon Web Services customers do not use this operation.</p>
    #          <p>For information on calculating event batch size, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-putevent-size.html">Calculating EventBridge PutEvents event
    #         entry size</a> in the <i>EventBridge User Guide</i>.</p>
    # @param [Hash, Types::PutPartnerEventsRequest] params
    # @option params [Array<Types::PutPartnerEventsRequestEntry>] :entries
    #   <p>The list of events to write to the event bus.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     entries: [ # required
    #       {
    #         time: Time.now,
    #         source: "EventSourceName",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_partner_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entry_count: 1,
    #     entries: [
    #       {
    #         event_id: "EventId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::PutPartnerEventsResponse]
    def put_partner_events(params = {}, options = {})
      request = build_request(:put_partner_events, params)
      request.send_request(options)
    end

    # <p>Running <code>PutPermission</code> permits the specified Amazon Web Services account or Amazon Web Services organization
    #       to put events to the specified <i>event bus</i>. Amazon EventBridge rules in your account are triggered by these events arriving to an event bus in your
    #       account. </p>
    #          <p>For another account to send events to your account, that external account must have an
    #       EventBridge rule with your account's event bus as a target.</p>
    #          <p>To enable multiple Amazon Web Services accounts to put events to your event bus, run
    #         <code>PutPermission</code> once for each of these accounts. Or, if all the accounts are
    #       members of the same Amazon Web Services organization, you can run <code>PutPermission</code>
    #       once specifying <code>Principal</code> as "*" and specifying the Amazon Web Services
    #       organization ID in <code>Condition</code>, to grant permissions to all accounts in that
    #       organization.</p>
    #          <p>If you grant permissions using an organization, then accounts in that organization must
    #       specify a <code>RoleArn</code> with proper permissions when they use <code>PutTarget</code> to
    #       add your account's event bus as a target. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending and
    #         Receiving Events Between Amazon Web Services Accounts</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #          <p>The permission policy on the event bus cannot exceed 10 KB in size.</p>
    # @param [Hash, Types::PutPermissionRequest] params
    # @option params [String] :event_bus_name
    #   <p>The name of the event bus associated with the rule. If you omit this, the default event
    #         bus is used.</p>
    # @option params [String] :action
    #   <p>The action that you are enabling the other account to perform.</p>
    # @option params [String] :principal
    #   <p>The 12-digit Amazon Web Services account ID that you are permitting to put events to your
    #         default event bus. Specify "*" to permit any account to put events to your default event
    #         bus.</p>
    #            <p>If you specify "*" without specifying <code>Condition</code>, avoid creating rules that
    #         may match undesirable events. To create more secure rules, make sure that the event pattern
    #         for each rule contains an <code>account</code> field with a specific account ID from which to
    #         receive events. Rules with an account field do not match any events sent from other
    #         accounts.</p>
    # @option params [String] :statement_id
    #   <p>An identifier string for the external account that you are granting permissions to. If you
    #         later want to revoke the permission for this external account, specify this
    #           <code>StatementId</code> when you run <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemovePermission.html">RemovePermission</a>.</p>
    #            <note>
    #               <p>Each <code>StatementId</code> must be unique.</p>
    #            </note>
    # @option params [Types::Condition] :condition
    #   <p>This parameter enables you to limit the permission to accounts that fulfill a certain
    #         condition, such as being a member of a certain Amazon Web Services organization. For more
    #         information about Amazon Web Services Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">What Is Amazon Web Services
    #           Organizations</a> in the <i>Amazon Web Services Organizations User
    #           Guide</i>.</p>
    #            <p>If you specify <code>Condition</code> with an Amazon Web Services organization ID, and
    #         specify "*" as the value for <code>Principal</code>, you grant permission to all the accounts
    #         in the named organization.</p>
    #            <p>The <code>Condition</code> is a JSON string which must contain <code>Type</code>,
    #           <code>Key</code>, and <code>Value</code> fields.</p>
    # @option params [String] :policy
    #   <p>A JSON string that describes the permission policy statement. You can include a
    #           <code>Policy</code> parameter in the request instead of using the <code>StatementId</code>,
    #           <code>Action</code>, <code>Principal</code>, or <code>Condition</code> parameters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_bus_name: "NonPartnerEventBusName",
    #     action: "Action",
    #     principal: "Principal",
    #     statement_id: "StatementId",
    #     condition: {
    #       type: "String", # required
    #       key: "String", # required
    #       value: "String", # required
    #     },
    #     policy: "String"
    #   }
    #   options = {}
    #   response = client.put_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_permission(params = {}, options = {})
      request = build_request(:put_permission, params)
      request.send_request(options)
    end

    # <p>Creates or updates the specified rule. Rules are enabled by default, or based on value of
    #       the state. You can disable a rule using <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DisableRule.html">DisableRule</a>.</p>
    #          <p>A single rule watches for events from a single event bus. Events generated by Amazon Web Services services go to your account's default event bus. Events generated by SaaS partner
    #       services or applications go to the matching partner event bus. If you have custom applications
    #       or services, you can specify whether their events go to your default event bus or a custom
    #       event bus that you have created. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html">CreateEventBus</a>.</p>
    #          <p>If you are updating an existing rule, the rule is replaced with what you specify in this
    #         <code>PutRule</code> command. If you omit arguments in <code>PutRule</code>, the old values
    #       for those arguments are not kept. Instead, they are replaced with null values.</p>
    #          <p>When you create or update a rule, incoming events might not immediately start matching to
    #       new or updated rules. Allow a short period of time for changes to take effect.</p>
    #          <p>A rule must contain at least an EventPattern or ScheduleExpression. Rules with
    #       EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions
    #       self-trigger based on the given schedule. A rule can have both an EventPattern and a
    #       ScheduleExpression, in which case the rule triggers on matching events as well as on a
    #       schedule.</p>
    #          <p>When you initially create a rule, you can optionally assign one or more tags to the rule.
    #       Tags can help you organize and categorize your resources. You can also use them to scope user
    #       permissions, by granting a user permission to access or change only rules with certain tag
    #       values. To use the <code>PutRule</code> operation and assign tags, you must have both the
    #         <code>events:PutRule</code> and <code>events:TagResource</code> permissions.</p>
    #          <p>If you are updating an existing rule, any tags you specify in the <code>PutRule</code>
    #       operation are ignored. To update the tags of an existing rule, use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UntagResource.html">UntagResource</a>.</p>
    #          <p>Most services in Amazon Web Services treat : or / as the same character in Amazon Resource
    #       Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be sure to
    #       use the correct ARN characters when creating event patterns so that they match the ARN syntax
    #       in the event you want to match.</p>
    #          <p>In EventBridge, it is possible to create rules that lead to infinite loops, where a rule
    #       is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket,
    #       and trigger software to change them to the desired state. If the rule is not written
    #       carefully, the subsequent change to the ACLs fires the rule again, creating an infinite
    #       loop.</p>
    #          <p>To prevent this, write the rules so that the triggered actions do not re-fire the same
    #       rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead
    #       of after any change. </p>
    #          <p>An infinite loop can quickly cause higher than expected charges. We recommend that you use
    #       budgeting, which alerts you when charges exceed your specified limit. For more information,
    #       see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html">Managing Your Costs with
    #         Budgets</a>.</p>
    #          <p>To create a rule that filters for management events from Amazon Web Services services, see 
    #       <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event-cloudtrail.html#eb-service-event-cloudtrail-management">Receiving read-only management events from Amazon Web Services services</a> in the 
    #       <i>EventBridge User Guide</i>.</p>
    # @param [Hash, Types::PutRuleRequest] params
    # @option params [String] :name
    #   <p>The name of the rule that you are creating or updating.</p>
    # @option params [String] :schedule_expression
    #   <p>The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".</p>
    # @option params [String] :event_pattern
    #   <p>The event pattern. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event
    #           patterns</a> in the <i>
    #                  <i>Amazon EventBridge User Guide</i>
    #               </i>.</p>
    # @option params [String] :state
    #   <p>The state of the rule.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code>: The rule is disabled. EventBridge does not match any events against the rule.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code>: The rule is enabled. 
    #             EventBridge matches events against the rule, <i>except</i> for Amazon Web Services management events delivered through CloudTrail.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS</code>: The rule is enabled for all
    #           events, including Amazon Web Services management events delivered through CloudTrail.</p>
    #                  <p>Management events provide visibility into management operations that are performed on
    #             resources in your Amazon Web Services account. These are also known as control plane
    #             operations. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html#logging-management-events">Logging management events</a> in the <i>CloudTrail User
    #               Guide</i>, and <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-service-event.html#eb-service-event-cloudtrail">Filtering management events from Amazon Web Services services</a> in the
    #               <i>
    #                        <i>Amazon EventBridge User Guide</i>
    #                     </i>.</p>
    #                  <p>This value is only valid for rules on the <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is-how-it-works-concepts.html#eb-bus-concepts-buses">default</a> event bus 
    #             or <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-event-bus.html">custom event buses</a>. 
    #             It does not apply to <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-saas.html">partner event buses</a>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :description
    #   <p>A description of the rule.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
    #            <p>If you're setting an event bus in another account as the target and that account granted
    #         permission to your account through an organization instead of directly by the account ID, you
    #         must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>
    #         structure, instead of here in this parameter.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of key-value pairs to associate with the rule.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus to associate with this rule. If you omit this, the
    #         default event bus is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RuleName", # required
    #     schedule_expression: "ScheduleExpression",
    #     event_pattern: "EventPattern",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"],
    #     description: "RuleDescription",
    #     role_arn: "RoleArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     event_bus_name: "EventBusNameOrArn"
    #   }
    #   options = {}
    #   response = client.put_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rule_arn: "RuleArn"
    #   }
    # @return [Types::PutRuleResponse]
    def put_rule(params = {}, options = {})
      request = build_request(:put_rule, params)
      request.send_request(options)
    end

    # <p>Adds the specified targets to the specified rule, or updates the targets if they are
    #       already associated with the rule.</p>
    #          <p>Targets are the resources that are invoked when a rule is triggered.</p>
    #          <p>The maximum number of entries per request is 10.</p>
    #          <note>
    #             <p>Each rule can have up to five (5) targets associated with it at one time.</p>
    #          </note>
    #          <p>For a list of services you can configure as targets for events, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-targets.html">EventBridge targets</a>
    #       in the <i>
    #                <i>Amazon EventBridge User Guide</i>
    #             </i>.</p>
    #          <p>Creating rules with built-in targets is supported only in the Amazon Web Services Management Console. The
    #       built-in targets are:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>Amazon EBS CreateSnapshot API call</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Amazon EC2 RebootInstances API call</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Amazon EC2 StopInstances API call</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>Amazon EC2 TerminateInstances API call</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For some target types, <code>PutTargets</code> provides target-specific parameters. If the
    #       target is a Kinesis data stream, you can optionally specify which shard the event
    #       goes to by using the <code>KinesisParameters</code> argument. To invoke a command on multiple
    #       EC2 instances with one rule, you can use the <code>RunCommandParameters</code> field.</p>
    #          <p>To be able to make API calls against the resources that you own, Amazon EventBridge
    #       needs the appropriate permissions: </p>
    #          <ul>
    #             <li>
    #                <p>For Lambda and Amazon SNS resources, EventBridge relies
    #           on resource-based policies.</p>
    #             </li>
    #             <li>
    #                <p>For EC2 instances, Kinesis Data Streams, Step Functions state machines and
    #             API Gateway APIs, EventBridge relies on IAM roles that you specify in the
    #             <code>RoleARN</code> argument in <code>PutTargets</code>.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html">Authentication
    #         and Access Control</a> in the <i>
    #                <i>Amazon EventBridge User Guide</i>
    #             </i>.</p>
    #          <p>If another Amazon Web Services account is in the same region and has granted you permission
    #       (using <code>PutPermission</code>), you can send events to that account. Set that account's
    #       event bus as a target of the rules in your account. To send the matched events to the other
    #       account, specify that account's event bus as the <code>Arn</code> value when you run
    #         <code>PutTargets</code>. If your account sends events to another account, your account is
    #       charged for each sent event. Each event sent to another account is charged as a custom event.
    #       The account receiving the event is not charged. For more information, see <a href="http://aws.amazon.com/eventbridge/pricing/">Amazon EventBridge Pricing</a>.</p>
    #          <note>
    #             <p>
    #                <code>Input</code>, <code>InputPath</code>, and <code>InputTransformer</code> are not
    #         available with <code>PutTarget</code> if the target is an event bus of a different Amazon Web Services account.</p>
    #          </note>
    #          <p>If you are setting the event bus of another account as the target, and that account
    #       granted permission to your account through an organization instead of directly by the account
    #       ID, then you must specify a <code>RoleArn</code> with proper permissions in the
    #         <code>Target</code> structure. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending and
    #         Receiving Events Between Amazon Web Services Accounts</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #          <note>
    #             <p>If you have an IAM role on a cross-account event bus target, a <code>PutTargets</code>
    #         call without a role on the same target (same <code>Id</code> and <code>Arn</code>) will not
    #         remove the role.</p>
    #          </note>
    #          <p>For more information about enabling cross-account events, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html">PutPermission</a>.</p>
    #          <p>
    #             <b>Input</b>, <b>InputPath</b>, and
    #         <b>InputTransformer</b> are mutually exclusive and optional
    #       parameters of a target. When a rule is triggered due to a matched event:</p>
    #          <ul>
    #             <li>
    #                <p>If none of the following arguments are specified for a target, then the entire event
    #           is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or
    #           Amazon ECS task, in which case nothing from the event is passed to the target).</p>
    #             </li>
    #             <li>
    #                <p>If <b>Input</b> is specified in the form of valid JSON, then
    #           the matched event is overridden with this constant.</p>
    #             </li>
    #             <li>
    #                <p>If <b>InputPath</b> is specified in the form of JSONPath
    #           (for example, <code>$.detail</code>), then only the part of the event specified in the
    #           path is passed to the target (for example, only the detail part of the event is
    #           passed).</p>
    #             </li>
    #             <li>
    #                <p>If <b>InputTransformer</b> is specified, then one or more
    #           specified JSONPaths are extracted from the event and used as values in a template that you
    #           specify as the input to the target.</p>
    #             </li>
    #          </ul>
    #          <p>When you specify <code>InputPath</code> or <code>InputTransformer</code>, you must use
    #       JSON dot notation, not bracket notation.</p>
    #          <p>When you add targets to a rule and the associated rule triggers soon after, new or updated
    #       targets might not be immediately invoked. Allow a short period of time for changes to take
    #       effect.</p>
    #          <p>This action can partially fail if too many requests are made at the same time. If that
    #       happens, <code>FailedEntryCount</code> is non-zero in the response and each entry in
    #         <code>FailedEntries</code> provides the ID of the failed target and the error code.</p>
    # @param [Hash, Types::PutTargetsRequest] params
    # @option params [String] :rule
    #   <p>The name of the rule.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    # @option params [Array<Types::Target>] :targets
    #   <p>The targets to update or add to the rule.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule: "RuleName", # required
    #     event_bus_name: "EventBusNameOrArn",
    #     targets: [ # required
    #       {
    #         id: "TargetId", # required
    #         arn: "TargetArn", # required
    #         role_arn: "RoleArn",
    #         input: "TargetInput",
    #         input_path: "TargetInputPath",
    #         input_transformer: {
    #           input_paths_map: {
    #             "InputTransformerPathKey" => "TargetInputPath"
    #           },
    #           input_template: "TransformerInput", # required
    #         },
    #         kinesis_parameters: {
    #           partition_key_path: "TargetPartitionKeyPath", # required
    #         },
    #         run_command_parameters: {
    #           run_command_targets: [ # required
    #             {
    #               key: "RunCommandTargetKey", # required
    #               values: ["RunCommandTargetValue"], # required
    #             }
    #           ]
    #         },
    #         ecs_parameters: {
    #           task_definition_arn: "Arn", # required
    #           task_count: 1,
    #           launch_type: "EC2" # One of: ["EC2", "FARGATE", "EXTERNAL"],
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           platform_version: "String",
    #           group: "String",
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "CapacityProvider", # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           enable_ecs_managed_tags: false,
    #           enable_execute_command: false,
    #           placement_constraints: [
    #             {
    #               type: "distinctInstance" # One of: ["distinctInstance", "memberOf"],
    #               expression: "PlacementConstraintExpression"
    #             }
    #           ],
    #           placement_strategy: [
    #             {
    #               type: "random" # One of: ["random", "spread", "binpack"],
    #               field: "PlacementStrategyField"
    #             }
    #           ],
    #           propagate_tags: "TASK_DEFINITION" # One of: ["TASK_DEFINITION"],
    #           reference_id: "ReferenceId",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             }
    #           ]
    #         },
    #         batch_parameters: {
    #           job_definition: "String", # required
    #           job_name: "String", # required
    #           array_properties: {
    #             size: 1
    #           },
    #           retry_strategy: {
    #             attempts: 1
    #           }
    #         },
    #         sqs_parameters: {
    #           message_group_id: "MessageGroupId"
    #         },
    #         http_parameters: {
    #           path_parameter_values: ["PathParameter"],
    #           header_parameters: {
    #             "HeaderKey" => "HeaderValue"
    #           },
    #           query_string_parameters: {
    #             "QueryStringKey" => "QueryStringValue"
    #           }
    #         },
    #         redshift_data_parameters: {
    #           secret_manager_arn: "RedshiftSecretManagerArn",
    #           database: "Database", # required
    #           db_user: "DbUser",
    #           sql: "Sql",
    #           statement_name: "StatementName",
    #           with_event: false,
    #           sqls: ["Sql"]
    #         },
    #         sage_maker_pipeline_parameters: {
    #           pipeline_parameter_list: [
    #             {
    #               name: "SageMakerPipelineParameterName", # required
    #               value: "SageMakerPipelineParameterValue", # required
    #             }
    #           ]
    #         },
    #         dead_letter_config: {
    #           arn: "ResourceArn"
    #         },
    #         retry_policy: {
    #           maximum_retry_attempts: 1,
    #           maximum_event_age_in_seconds: 1
    #         },
    #         app_sync_parameters: {
    #           graph_ql_operation: "GraphQLOperation"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entry_count: 1,
    #     failed_entries: [
    #       {
    #         target_id: "TargetId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::PutTargetsResponse]
    def put_targets(params = {}, options = {})
      request = build_request(:put_targets, params)
      request.send_request(options)
    end

    # <p>Revokes the permission of another Amazon Web Services account to be able to put events to
    #       the specified event bus. Specify the account to revoke by the <code>StatementId</code> value
    #       that you associated with the account when you granted it permission with
    #         <code>PutPermission</code>. You can find the <code>StatementId</code> by using <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventBus.html">DescribeEventBus</a>.</p>
    # @param [Hash, Types::RemovePermissionRequest] params
    # @option params [String] :statement_id
    #   <p>The statement ID corresponding to the account that is no longer allowed to put events to
    #         the default event bus.</p>
    # @option params [Boolean] :remove_all_permissions
    #   <p>Specifies whether to remove all permissions.</p>
    # @option params [String] :event_bus_name
    #   <p>The name of the event bus to revoke permissions for. If you omit this, the default event
    #         bus is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     statement_id: "StatementId",
    #     remove_all_permissions: false,
    #     event_bus_name: "NonPartnerEventBusName"
    #   }
    #   options = {}
    #   response = client.remove_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_permission(params = {}, options = {})
      request = build_request(:remove_permission, params)
      request.send_request(options)
    end

    # <p>Removes the specified targets from the specified rule. When the rule is triggered, those
    #       targets are no longer be invoked.</p>
    #          <note>
    #             <p>A successful execution of <code>RemoveTargets</code> doesn't guarantee all targets are
    #         removed from the rule, it means that the target(s) listed in the request are removed.</p>
    #          </note>
    #          <p>When you remove a target, when the associated rule triggers, removed targets might
    #       continue to be invoked. Allow a short period of time for changes to take effect.</p>
    #          <p>This action can partially fail if too many requests are made at the same time. If that
    #       happens, <code>FailedEntryCount</code> is non-zero in the response and each entry in
    #         <code>FailedEntries</code> provides the ID of the failed target and the error code.</p>
    #          <p>The maximum number of entries per request is 10.</p>
    # @param [Hash, Types::RemoveTargetsRequest] params
    # @option params [String] :rule
    #   <p>The name of the rule.</p>
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    # @option params [Array<String>] :ids
    #   <p>The IDs of the targets to remove from the rule.</p>
    # @option params [Boolean] :force
    #   <p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you
    #         must specify <code>Force</code> as <code>True</code> to remove targets. This parameter is
    #         ignored for rules that are not managed rules. You can check whether a rule is a managed rule
    #         by using <code>DescribeRule</code> or <code>ListRules</code> and checking the
    #           <code>ManagedBy</code> field of the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rule: "RuleName", # required
    #     event_bus_name: "EventBusNameOrArn",
    #     ids: ["TargetId"], # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.remove_targets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_entry_count: 1,
    #     failed_entries: [
    #       {
    #         target_id: "TargetId",
    #         error_code: "ErrorCode",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::RemoveTargetsResponse]
    def remove_targets(params = {}, options = {})
      request = build_request(:remove_targets, params)
      request.send_request(options)
    end

    # <p>Starts the specified replay. Events are not necessarily replayed in the exact same order
    #       that they were added to the archive. A replay processes events to replay based on the time in
    #       the event, and replays them using 1 minute intervals. If you specify an
    #         <code>EventStartTime</code> and an <code>EventEndTime</code> that covers a 20 minute time
    #       range, the events are replayed from the first minute of that 20 minute range first. Then the
    #       events from the second minute are replayed. You can use <code>DescribeReplay</code> to
    #       determine the progress of a replay. The value returned for <code>EventLastReplayedTime</code>
    #       indicates the time within the specified time range associated with the last event
    #       replayed.</p>
    # @param [Hash, Types::StartReplayRequest] params
    # @option params [String] :replay_name
    #   <p>The name of the replay to start.</p>
    # @option params [String] :description
    #   <p>A description for the replay to start.</p>
    # @option params [String] :event_source_arn
    #   <p>The ARN of the archive to replay events from.</p>
    # @option params [Time] :event_start_time
    #   <p>A time stamp for the time to start replaying events. Only events that occurred between the
    #           <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>
    # @option params [Time] :event_end_time
    #   <p>A time stamp for the time to stop replaying events. Only events that occurred between the
    #           <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>
    # @option params [Types::ReplayDestination] :destination
    #   <p>A <code>ReplayDestination</code> object that includes details about the destination for
    #         the replay.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     replay_name: "ReplayName", # required
    #     description: "ReplayDescription",
    #     event_source_arn: "ArchiveArn", # required
    #     event_start_time: Time.now, # required
    #     event_end_time: Time.now, # required
    #     destination: { # required
    #       arn: "Arn", # required
    #       filter_arns: ["Arn"]
    #     }
    #   }
    #   options = {}
    #   response = client.start_replay(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     replay_arn: "ReplayArn",
    #     state: "STARTING" # One of: ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"],
    #     state_reason: "ReplayStateReason",
    #     replay_start_time: Time.now
    #   }
    # @return [Types::StartReplayResponse]
    def start_replay(params = {}, options = {})
      request = build_request(:start_replay, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified EventBridge resource. Tags can
    #       help you organize and categorize your resources. You can also use them to scope user
    #       permissions by granting a user permission to access or change only resources with certain tag
    #       values. In EventBridge, rules and event buses can be tagged.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as
    #       strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a resource that already has tags. If
    #       you specify a new tag key, this tag is appended to the list of tags associated with the
    #       resource. If you specify a tag key that is already associated with the resource, the new tag
    #       value that you specify replaces the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the EventBridge resource that you're adding tags to.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Tests whether the specified event pattern matches the provided event.</p>
    #          <p>Most services in Amazon Web Services treat : or / as the same character in Amazon Resource
    #       Names (ARNs). However, EventBridge uses an exact match in event patterns and rules. Be
    #       sure to use the correct ARN characters when creating event patterns so that they match the ARN
    #       syntax in the event you want to match.</p>
    # @param [Hash, Types::TestEventPatternRequest] params
    # @option params [String] :event_pattern
    #   <p>The event pattern. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #           Patterns</a> in the <i>
    #                  <i>Amazon EventBridge User Guide</i>
    #               </i>.</p>
    # @option params [String] :event
    #   <p>The event, in JSON format, to test against the event pattern. The JSON must follow the
    #         format specified in <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html">Amazon Web Services Events</a>, and
    #         the following fields are mandatory:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>account</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>time</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>detail-type</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_pattern: "EventPattern", # required
    #     event: "String", # required
    #   }
    #   options = {}
    #   response = client.test_event_pattern(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: false
    #   }
    # @return [Types::TestEventPatternResponse]
    def test_event_pattern(params = {}, options = {})
      request = build_request(:test_event_pattern, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified EventBridge resource. In Amazon EventBridge, rules and event buses can be tagged.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the EventBridge resource from which you are removing tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an API destination.</p>
    # @param [Hash, Types::UpdateApiDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the API destination to update.</p>
    # @option params [String] :description
    #   <p>The name of the API destination to update.</p>
    # @option params [String] :connection_arn
    #   <p>The ARN of the connection to use for the API destination.</p>
    # @option params [String] :invocation_endpoint
    #   <p>The URL to the endpoint to use for the API destination.</p>
    # @option params [String] :http_method
    #   <p>The method to use for the API destination.</p>
    # @option params [Integer] :invocation_rate_limit_per_second
    #   <p>The maximum number of invocations per second to send to the API destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ApiDestinationName", # required
    #     description: "ApiDestinationDescription",
    #     connection_arn: "ConnectionArn",
    #     invocation_endpoint: "HttpsEndpoint",
    #     http_method: "POST" # One of: ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"],
    #     invocation_rate_limit_per_second: 1
    #   }
    #   options = {}
    #   response = client.update_api_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     api_destination_arn: "ApiDestinationArn",
    #     api_destination_state: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     creation_time: Time.now,
    #     last_modified_time: Time.now
    #   }
    # @return [Types::UpdateApiDestinationResponse]
    def update_api_destination(params = {}, options = {})
      request = build_request(:update_api_destination, params)
      request.send_request(options)
    end

    # <p>Updates the specified archive.</p>
    # @param [Hash, Types::UpdateArchiveRequest] params
    # @option params [String] :archive_name
    #   <p>The name of the archive to update.</p>
    # @option params [String] :description
    #   <p>The description for the archive.</p>
    # @option params [String] :event_pattern
    #   <p>The event pattern to use to filter events sent to the archive.</p>
    # @option params [Integer] :retention_days
    #   <p>The number of days to retain events in the archive.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this archive. The identifier can be the key 
    #         Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>If you do not specify a customer managed key identifier, EventBridge uses an
    #           Amazon Web Services owned key to encrypt the archive.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html">Identify and view keys</a> in the <i>Key Management Service
    #                                   Developer Guide</i>. </p>
    #            <important>
    #               <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a 
    #           customer managed key for any archives for the event bus as well. </p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     archive_name: "ArchiveName", # required
    #     description: "ArchiveDescription",
    #     event_pattern: "EventPattern",
    #     retention_days: 1,
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    #   options = {}
    #   response = client.update_archive(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_arn: "ArchiveArn",
    #     state: "ENABLED" # One of: ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"],
    #     state_reason: "ArchiveStateReason",
    #     creation_time: Time.now
    #   }
    # @return [Types::UpdateArchiveResponse]
    def update_archive(params = {}, options = {})
      request = build_request(:update_archive, params)
      request.send_request(options)
    end

    # <p>Updates settings for a connection.</p>
    # @param [Hash, Types::UpdateConnectionRequest] params
    # @option params [String] :name
    #   <p>The name of the connection to update.</p>
    # @option params [String] :description
    #   <p>A description for the connection.</p>
    # @option params [String] :authorization_type
    #   <p>The type of authorization to use for the connection.</p>
    # @option params [Types::UpdateConnectionAuthRequestParameters] :auth_parameters
    #   <p>The authorization parameters to use for the connection.</p>
    # @option params [Types::ConnectivityResourceParameters] :invocation_connectivity_parameters
    #   <p>For connections to private APIs, the parameters to use for invoking the API.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/connection-private.html">Connecting to private APIs</a> in the <i>
    #                  <i>Amazon EventBridge User Guide</i>
    #               </i>.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt this connection. The identifier can be the key 
    #         Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>If you do not specify a customer managed key identifier, EventBridge uses an
    #           Amazon Web Services owned key to encrypt the connection.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html">Identify and view keys</a> in the <i>Key Management Service
    #                                   Developer Guide</i>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ConnectionName", # required
    #     description: "ConnectionDescription",
    #     authorization_type: "BASIC" # One of: ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"],
    #     auth_parameters: {
    #       basic_auth_parameters: {
    #         username: "AuthHeaderParameters",
    #         password: "AuthHeaderParametersSensitive"
    #       },
    #       o_auth_parameters: {
    #         client_parameters: {
    #           client_id: "AuthHeaderParameters",
    #           client_secret: "AuthHeaderParametersSensitive"
    #         },
    #         authorization_endpoint: "HttpsEndpoint",
    #         http_method: "GET" # One of: ["GET", "POST", "PUT"],
    #         o_auth_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: "HeaderKey",
    #               value: "HeaderValueSensitive",
    #               is_value_secret: false
    #             }
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: "QueryStringKey",
    #               value: "QueryStringValueSensitive",
    #               is_value_secret: false
    #             }
    #           ],
    #           body_parameters: [
    #             {
    #               key: "String",
    #               value: "SensitiveString",
    #               is_value_secret: false
    #             }
    #           ]
    #         }
    #       },
    #       api_key_auth_parameters: {
    #         api_key_name: "AuthHeaderParameters",
    #         api_key_value: "AuthHeaderParametersSensitive"
    #       },
    #       invocation_http_parameters: {
    #         header_parameters: [
    #           {
    #             key: "HeaderKey",
    #             value: "HeaderValueSensitive",
    #             is_value_secret: false
    #           }
    #         ],
    #         query_string_parameters: [
    #           {
    #             key: "QueryStringKey",
    #             value: "QueryStringValueSensitive",
    #             is_value_secret: false
    #           }
    #         ],
    #         body_parameters: [
    #           {
    #             key: "String",
    #             value: "SensitiveString",
    #             is_value_secret: false
    #           }
    #         ]
    #       },
    #       connectivity_parameters: {
    #         resource_parameters: { # required
    #           resource_configuration_arn: "ResourceConfigurationArn", # required
    #         }
    #       }
    #     },
    #     invocation_connectivity_parameters: {
    #       resource_parameters: { # required
    #         resource_configuration_arn: "ResourceConfigurationArn", # required
    #       }
    #     },
    #     kms_key_identifier: "KmsKeyIdentifier"
    #   }
    #   options = {}
    #   response = client.update_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connection_arn: "ConnectionArn",
    #     connection_state: "CREATING" # One of: ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING", "ACTIVE", "FAILED_CONNECTIVITY"],
    #     creation_time: Time.now,
    #     last_modified_time: Time.now,
    #     last_authorized_time: Time.now
    #   }
    # @return [Types::UpdateConnectionResponse]
    def update_connection(params = {}, options = {})
      request = build_request(:update_connection, params)
      request.send_request(options)
    end

    # <p>Update an existing endpoint. For more information about global endpoints, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html">Making
    #         applications Regional-fault tolerant with global endpoints and event replication</a> in
    #       the <i>
    #                <i>Amazon EventBridge User Guide</i>
    #             </i>.</p>
    # @param [Hash, Types::UpdateEndpointRequest] params
    # @option params [String] :name
    #   <p>The name of the endpoint you want to update.</p>
    # @option params [String] :description
    #   <p>A description for the endpoint.</p>
    # @option params [Types::RoutingConfig] :routing_config
    #   <p>Configure the routing policy, including the health check and secondary Region.</p>
    # @option params [Types::ReplicationConfig] :replication_config
    #   <p>Whether event replication was enabled or disabled by this request.</p>
    # @option params [Array<Types::EndpointEventBus>] :event_buses
    #   <p>Define event buses used for replication.</p>
    # @option params [String] :role_arn
    #   <p>The ARN of the role used by event replication for this request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EndpointName", # required
    #     description: "EndpointDescription",
    #     routing_config: {
    #       failover_config: { # required
    #         primary: { # required
    #           health_check: "HealthCheck", # required
    #         },
    #         secondary: { # required
    #           route: "Route", # required
    #         }
    #       }
    #     },
    #     replication_config: {
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     event_buses: [
    #       {
    #         event_bus_arn: "NonPartnerEventBusArn", # required
    #       }
    #     ],
    #     role_arn: "IamRoleArn"
    #   }
    #   options = {}
    #   response = client.update_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EndpointName",
    #     arn: "EndpointArn",
    #     routing_config: {
    #       failover_config: { # required
    #         primary: { # required
    #           health_check: "HealthCheck", # required
    #         },
    #         secondary: { # required
    #           route: "Route", # required
    #         }
    #       }
    #     },
    #     replication_config: {
    #       state: "ENABLED" # One of: ["ENABLED", "DISABLED"]
    #     },
    #     event_buses: [
    #       {
    #         event_bus_arn: "NonPartnerEventBusArn", # required
    #       }
    #     ],
    #     role_arn: "IamRoleArn",
    #     endpoint_id: "EndpointId",
    #     endpoint_url: "EndpointUrl",
    #     state: "ACTIVE" # One of: ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"]
    #   }
    # @return [Types::UpdateEndpointResponse]
    def update_endpoint(params = {}, options = {})
      request = build_request(:update_endpoint, params)
      request.send_request(options)
    end

    # <p>Updates the specified event bus.</p>
    # @param [Hash, Types::UpdateEventBusRequest] params
    # @option params [String] :name
    #   <p>The name of the event bus.</p>
    # @option params [String] :kms_key_identifier
    #   <p>The identifier of the KMS
    #         customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt events on this event bus. The identifier can be the key 
    #         Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN.</p>
    #            <p>If you do not specify a customer managed key identifier, EventBridge uses an
    #           Amazon Web Services owned key to encrypt events on the event bus.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/viewing-keys.html">Identify and view keys</a> in the <i>Key Management Service
    #                                   Developer Guide</i>. </p>
    #            <note>
    #               <p>Schema discovery is not supported for event buses encrypted using a
    #           customer managed key. EventBridge returns an error if: </p>
    #               <ul>
    #                  <li>
    #                     <p>You call <code>
    #                           <a href="https://docs.aws.amazon.com/eventbridge/latest/schema-reference/v1-discoverers.html#CreateDiscoverer">CreateDiscoverer</a>
    #                        </code> on an event bus set to use a customer managed key for encryption.</p>
    #                  </li>
    #                  <li>
    #                     <p>You call <code>
    #                           <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UpdatedEventBus.html">UpdatedEventBus</a>
    #                        </code> to set a customer managed key on an event bus with schema discovery enabled.</p>
    #                  </li>
    #               </ul>
    #               <p>To enable schema discovery on an event bus, choose to
    #           use an Amazon Web Services owned key. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-encryption-event-bus-cmkey.html">Encrypting events</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #            </note>
    #            <important>
    #               <p>If you have specified that EventBridge use a customer managed key for encrypting the source event bus, we strongly recommend you also specify a 
    #           customer managed key for any archives for the event bus as well. </p>
    #               <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/encryption-archives.html">Encrypting archives</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #            </important>
    # @option params [String] :description
    #   <p>The event bus description.</p>
    # @option params [Types::DeadLetterConfig] :dead_letter_config
    #   <p>Configuration details of the Amazon SQS queue for EventBridge to use as a
    #         dead-letter queue (DLQ).</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-rule-event-delivery.html#eb-rule-dlq">Using dead-letter queues to process undelivered events</a> in the <i>EventBridge User
    #           Guide</i>.</p>
    # @option params [Types::LogConfig] :log_config
    #   <p>The logging configuration settings for the event bus.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/eb-event-bus-logs.html">Configuring logs for event buses</a> in the <i>EventBridge User Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EventBusName",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     description: "EventBusDescription",
    #     dead_letter_config: {
    #       arn: "ResourceArn"
    #     },
    #     log_config: {
    #       include_detail: "NONE" # One of: ["NONE", "FULL"],
    #       level: "OFF" # One of: ["OFF", "ERROR", "INFO", "TRACE"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_bus(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "String",
    #     name: "EventBusName",
    #     kms_key_identifier: "KmsKeyIdentifier",
    #     description: "EventBusDescription",
    #     dead_letter_config: {
    #       arn: "ResourceArn"
    #     },
    #     log_config: {
    #       include_detail: "NONE" # One of: ["NONE", "FULL"],
    #       level: "OFF" # One of: ["OFF", "ERROR", "INFO", "TRACE"]
    #     }
    #   }
    # @return [Types::UpdateEventBusResponse]
    def update_event_bus(params = {}, options = {})
      request = build_request(:update_event_bus, params)
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
      context[:gem_name] = 'aws-sdk-eventbridge'
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
    end
  end
end
