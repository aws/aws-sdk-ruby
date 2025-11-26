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
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:iotmanagedintegrations)

module Aws::IoTManagedIntegrations
  # An API client for Aws::IoTManagedIntegrations.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::IotManagedIntegrations
    @identifier = :iotmanagedintegrations

    add_plugin(::Aws::IoTManagedIntegrations::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::IoTManagedIntegrations::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Creates a new account association via the destination id.</p>
    # @param [Hash, Types::CreateAccountAssociationRequest] params
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @option params [String] :connector_destination_id
    #   <p>The identifier of the connector destination.</p>
    # @option params [String] :name
    #   <p>The name of the destination for the new account association.</p>
    # @option params [String] :description
    #   <p>A description of the account association request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key/value pairs that are used to manage the account association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     connector_destination_id: "ConnectorDestinationId", # required
    #     name: "AccountAssociationName",
    #     description: "AccountAssociationDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_account_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     o_auth_authorization_url: "OAuthAuthorizationUrl", # required
    #     account_association_id: "AccountAssociationId", # required
    #     association_state: "ASSOCIATION_IN_PROGRESS" # One of: ["ASSOCIATION_IN_PROGRESS", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCEEDED", "ASSOCIATION_DELETING", "REFRESH_TOKEN_EXPIRED"], # required
    #     arn: "AccountAssociationArn"
    #   }
    # @return [Types::CreateAccountAssociationResponse]
    def create_account_association(params = {}, options = {})
      request = build_request(:create_account_association, params)
      request.send_request(options)
    end

    # <p>Creates a C2C (cloud-to-cloud) connector.</p>
    # @param [Hash, Types::CreateCloudConnectorRequest] params
    # @option params [String] :name
    #   <p>The display name of the C2C connector.</p>
    # @option params [Types::EndpointConfig] :endpoint_config
    #   <p>The configuration details for the cloud connector endpoint, including connection parameters and authentication requirements.</p>
    # @option params [String] :description
    #   <p>A description of the C2C connector.</p>
    # @option params [String] :endpoint_type
    #   <p>The type of endpoint used for the cloud connector, which defines how the connector communicates with external services.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @example CreateCloudConnector happy path for TP Link
    #   # Example operation for create_cloud_connector
    #   params = {
    #     name: "Connector for TP Link Cloud",
    #     endpoint_type: LAMBDA,
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion"
    #       }
    #     },
    #     client_token: "1234567890"
    #   }
    #   options = {}
    #   response = client.create_cloud_connector(params, options)
    #   response.to_h #=>
    #   {
    #     id: "TPLinkConnector1211"
    #   }
    # @example CreateCloudConnector happy path for Ring
    #   # Example operation for create_cloud_connector
    #   params = {
    #     name: "Connector for Ring Cloud",
    #     endpoint_type: LAMBDA,
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion"
    #       }
    #     },
    #     client_token: "12312321"
    #   }
    #   options = {}
    #   response = client.create_cloud_connector(params, options)
    #   response.to_h #=>
    #   {
    #     id: "RingConnector1212"
    #   }
    # @example CreateCloudConnector error path for Ring connector which already exists
    #   # Example operation for create_cloud_connector
    #   params = {
    #     name: "Connector for Ring Cloud",
    #     endpoint_type: LAMBDA,
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion2"
    #       }
    #     },
    #     client_token: "1213123123"
    #   }
    #   options = {}
    #   begin
    #     response = client.create_cloud_connector(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ConflictException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Connector Resource already exists"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DisplayName", # required
    #     endpoint_config: { # required
    #       lambda: {
    #         arn: "LambdaArn", # required
    #       }
    #     },
    #     description: "CloudConnectorDescription",
    #     endpoint_type: "LAMBDA" # One of: ["LAMBDA"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "CloudConnectorId"
    #   }
    # @return [Types::CreateCloudConnectorResponse]
    def create_cloud_connector(params = {}, options = {})
      request = build_request(:create_cloud_connector, params)
      request.send_request(options)
    end

    # <p>Create a connector destination for connecting a cloud-to-cloud (C2C) connector to the customer's Amazon Web Services account.</p>
    # @param [Hash, Types::CreateConnectorDestinationRequest] params
    # @option params [String] :name
    #   <p>The display name of the connector destination.</p>
    # @option params [String] :description
    #   <p>A description of the connector destination.</p>
    # @option params [String] :cloud_connector_id
    #   <p>The identifier of the C2C connector.</p>
    # @option params [String] :auth_type
    #   <p>The authentication type used for the connector destination, which determines how credentials and access are managed.</p>
    # @option params [Types::AuthConfig] :auth_config
    #   <p>The authentication configuration details for the connector destination, including OAuth settings and other authentication parameters.</p>
    # @option params [Types::SecretsManager] :secrets_manager
    #   <p>The AWS Secrets Manager configuration used to securely store and manage sensitive information for the connector destination.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ConnectorDestinationName",
    #     description: "ConnectorDestinationDescription",
    #     cloud_connector_id: "CloudConnectorId", # required
    #     auth_type: "OAUTH" # One of: ["OAUTH"], # required
    #     auth_config: { # required
    #       o_auth: {
    #         auth_url: "AuthUrl", # required
    #         token_url: "TokenUrl", # required
    #         scope: "String",
    #         token_endpoint_authentication_scheme: "HTTP_BASIC" # One of: ["HTTP_BASIC", "REQUEST_BODY_CREDENTIALS"], # required
    #         o_auth_complete_redirect_url: "String",
    #         proactive_refresh_token_renewal: {
    #           enabled: false,
    #           days_before_renewal: 1
    #         }
    #       }
    #     },
    #     secrets_manager: { # required
    #       arn: "SecretsManagerArn", # required
    #       version_id: "SecretsManagerVersionId", # required
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_connector_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ConnectorDestinationId"
    #   }
    # @return [Types::CreateConnectorDestinationResponse]
    def create_connector_destination(params = {}, options = {})
      request = build_request(:create_connector_destination, params)
      request.send_request(options)
    end

    # <p>Create a product credential locker. This operation will trigger the creation of all the manufacturing resources including the Wi-Fi setup key pair and device certificate.</p>
    # @param [Hash, Types::CreateCredentialLockerRequest] params
    # @option params [String] :name
    #   <p>The name of the credential locker.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key/value pairs that are used to manage the credential locker.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CredentialLockerName",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_credential_locker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "CredentialLockerId",
    #     arn: "CredentialLockerArn",
    #     created_at: Time.now
    #   }
    # @return [Types::CreateCredentialLockerResponse]
    def create_credential_locker(params = {}, options = {})
      request = build_request(:create_credential_locker, params)
      request.send_request(options)
    end

    # <p> Create a destination. IoT managed integrations uses the destination to determine where to deliver notifications for a device. </p>
    # @param [Hash, Types::CreateDestinationRequest] params
    # @option params [String] :delivery_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed destination.</p>
    # @option params [String] :delivery_destination_type
    #   <p>The destination type for the customer-managed destination.</p>
    # @option params [String] :name
    #   <p>The name of the customer-managed destination.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery destination role.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @option params [String] :description
    #   <p>The description of the customer-managed destination.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key/value pairs that are used to manage the destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     delivery_destination_arn: "DeliveryDestinationArn", # required
    #     delivery_destination_type: "KINESIS" # One of: ["KINESIS"], # required
    #     name: "DestinationName", # required
    #     role_arn: "DeliveryDestinationRoleArn", # required
    #     client_token: "ClientToken",
    #     description: "DestinationDescription",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DestinationName"
    #   }
    # @return [Types::CreateDestinationResponse]
    def create_destination(params = {}, options = {})
      request = build_request(:create_destination, params)
      request.send_request(options)
    end

    # <p>Set the event log configuration for the account, resource type, or specific resource.</p>
    # @param [Hash, Types::CreateEventLogConfigurationRequest] params
    # @option params [String] :resource_type
    #   <p>The type of resource for the event log configuration.</p>
    # @option params [String] :resource_id
    #   <p>The identifier of the resource for the event log configuration.</p>
    # @option params [String] :event_log_level
    #   <p>The logging level for the event log configuration.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_type: "SmartHomeResourceType", # required
    #     resource_id: "SmartHomeResourceId",
    #     event_log_level: "DEBUG" # One of: ["DEBUG", "ERROR", "INFO", "WARN"], # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_event_log_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "LogConfigurationId"
    #   }
    # @return [Types::CreateEventLogConfigurationResponse]
    def create_event_log_configuration(params = {}, options = {})
      request = build_request(:create_event_log_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a managed thing. A managed thing contains the device identifier, protocol supported, and capabilities of the device in a protocol-specific format.</p>
    # @param [Hash, Types::CreateManagedThingRequest] params
    # @option params [String] :role
    #   <p>The type of device used. This will be the hub controller, cloud device, or AWS IoT device.</p>
    # @option params [String] :owner
    #   <p>Owner of the device, usually an indication of whom the device belongs to. This value should not contain personal identifiable information.</p>
    # @option params [String] :credential_locker_id
    #   <p>The identifier of the credential for the managed thing.</p>
    # @option params [String] :authentication_material
    #   <p>The authentication material defining the device connectivity setup requests. The authentication materials used are the device bar code.</p>
    # @option params [String] :authentication_material_type
    #   <p>The type of authentication material used for device connectivity setup requests.</p>
    # @option params [String] :serial_number
    #   <p>The serial number of the device.</p>
    # @option params [String] :brand
    #   <p>The brand of the device.</p>
    # @option params [String] :model
    #   <p>The model of the device.</p>
    # @option params [String] :name
    #   <p>The name of the managed thing representing the physical device.</p>
    # @option params [Types::CapabilityReport] :capability_report
    #   <p>A report of the capabilities for the managed thing.</p>
    # @option params [Array<Types::CapabilitySchemaItem>] :capability_schemas
    #   <p>The capability schemas that define the functionality and features supported by the managed thing, including device capabilities and their associated properties.</p>
    # @option params [String] :capabilities
    #   <p>The capabilities of the device such as light bulb.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @option params [String] :classification
    #   <p>The classification of the managed thing such as light bulb or thermostat.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key/value pairs that are used to manage the managed thing.</p>
    # @option params [Hash<String, String>] :meta_data
    #   <p>The metadata for the managed thing.</p> <note> <p>The <code>managedThing</code> <code>metadata</code> parameter is used for associating attributes with a <code>managedThing</code> that can be used for grouping over-the-air (OTA) tasks. Name value pairs in <code>metadata</code> can be used in the <code>OtaTargetQueryString</code> parameter for the <code>CreateOtaTask</code> API operation.</p> </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     role: "CONTROLLER" # One of: ["CONTROLLER", "DEVICE"], # required
    #     owner: "Owner",
    #     credential_locker_id: "CredentialLockerId",
    #     authentication_material: "AuthMaterialString", # required
    #     authentication_material_type: "CUSTOM_PROTOCOL_QR_BAR_CODE" # One of: ["CUSTOM_PROTOCOL_QR_BAR_CODE", "WIFI_SETUP_QR_BAR_CODE", "ZWAVE_QR_BAR_CODE", "ZIGBEE_QR_BAR_CODE", "DISCOVERED_DEVICE"], # required
    #     serial_number: "SerialNumber",
    #     brand: "Brand",
    #     model: "Model",
    #     name: "Name",
    #     capability_report: {
    #       version: "CapabilityReportVersion", # required
    #       node_id: "NodeId",
    #       endpoints: [ # required
    #         {
    #           id: "EndpointId", # required
    #           device_types: ["DeviceType"], # required
    #           capabilities: [ # required
    #             {
    #               id: "SchemaVersionedId", # required
    #               name: "CapabilityName", # required
    #               version: "CapabilityVersion", # required
    #               properties: ["PropertyName"], # required
    #               actions: ["ActionName"], # required
    #               events: ["EventName"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     capability_schemas: [
    #       {
    #         format: "AWS" # One of: ["AWS", "ZCL", "CONNECTOR"], # required
    #         capability_id: "SchemaVersionedId", # required
    #         extrinsic_id: "ExtrinsicSchemaId", # required
    #         extrinsic_version: 1, # required
    #         schema: ""null"", # required
    #       }
    #     ],
    #     capabilities: "Capabilities",
    #     client_token: "ClientToken",
    #     classification: "Classification",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     meta_data: {
    #       "AttributeName" => "AttributeValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_managed_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ManagedThingId",
    #     arn: "ManagedThingArn",
    #     created_at: Time.now
    #   }
    # @return [Types::CreateManagedThingResponse]
    def create_managed_thing(params = {}, options = {})
      request = build_request(:create_managed_thing, params)
      request.send_request(options)
    end

    # <p>Creates a notification configuration. A configuration is a connection between an event type and a destination that you have already created. </p>
    # @param [Hash, Types::CreateNotificationConfigurationRequest] params
    # @option params [String] :event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    # @option params [String] :destination_name
    #   <p>The name of the destination for the notification configuration.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key/value pairs that are used to manage the notification configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_type: "DEVICE_COMMAND" # One of: ["DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"], # required
    #     destination_name: "DestinationName", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_type: "DEVICE_COMMAND" # One of: ["DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"]
    #   }
    # @return [Types::CreateNotificationConfigurationResponse]
    def create_notification_configuration(params = {}, options = {})
      request = build_request(:create_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Create an over-the-air (OTA) task to update a device.</p>
    # @param [Hash, Types::CreateOtaTaskRequest] params
    # @option params [String] :description
    #   <p>The description of the over-the-air (OTA) task.</p>
    # @option params [String] :s3_url
    #   <p>The URL to the Amazon S3 bucket where the over-the-air (OTA) task is stored.</p>
    # @option params [String] :protocol
    #   <p>The connection protocol the over-the-air (OTA) task uses to update the device.</p>
    # @option params [Array<String>] :target
    #   <p>The device targeted for the over-the-air (OTA) task.</p>
    # @option params [String] :task_configuration_id
    #   <p>The identifier for the over-the-air (OTA) task configuration.</p>
    # @option params [String] :ota_mechanism
    #   <p>The deployment mechanism for the over-the-air (OTA) task.</p>
    # @option params [String] :ota_type
    #   <p>The frequency type for the over-the-air (OTA) task.</p>
    # @option params [String] :ota_target_query_string
    #   <p>The query string to add things to the thing group.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @option params [Types::OtaTaskSchedulingConfig] :ota_scheduling_config
    #   <p>Over-the-air (OTA) task scheduling config.</p>
    # @option params [Types::OtaTaskExecutionRetryConfig] :ota_task_execution_retry_config
    #   <p>Over-the-air (OTA) task retry config.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key/value pairs that are used to manage the over-the-air (OTA) task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "OtaDescription",
    #     s3_url: "S3Url", # required
    #     protocol: "HTTP" # One of: ["HTTP"],
    #     target: ["String"],
    #     task_configuration_id: "OtaTaskConfigurationId",
    #     ota_mechanism: "PUSH" # One of: ["PUSH"],
    #     ota_type: "ONE_TIME" # One of: ["ONE_TIME", "CONTINUOUS"], # required
    #     ota_target_query_string: "OtaTargetQueryString",
    #     client_token: "ClientToken",
    #     ota_scheduling_config: {
    #       end_behavior: "STOP_ROLLOUT" # One of: ["STOP_ROLLOUT", "CANCEL", "FORCE_CANCEL"],
    #       end_time: "EndTime",
    #       maintenance_windows: [
    #         {
    #           duration_in_minutes: 1,
    #           start_time: "StartTime"
    #         }
    #       ],
    #       start_time: "ScheduleStartTime"
    #     },
    #     ota_task_execution_retry_config: {
    #       retry_config_criteria: [
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "TIMED_OUT", "ALL"],
    #           min_number_of_retries: 1
    #         }
    #       ]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_ota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "OtaTaskId",
    #     task_arn: "OtaTaskArn",
    #     description: "OtaDescription"
    #   }
    # @return [Types::CreateOtaTaskResponse]
    def create_ota_task(params = {}, options = {})
      request = build_request(:create_ota_task, params)
      request.send_request(options)
    end

    # <p>Create a configuraiton for the over-the-air (OTA) task.</p>
    # @param [Hash, Types::CreateOtaTaskConfigurationRequest] params
    # @option params [String] :description
    #   <p>A description of the over-the-air (OTA) task configuration.</p>
    # @option params [String] :name
    #   <p>The name of the over-the-air (OTA) task.</p>
    # @option params [Types::PushConfig] :push_config
    #   <p>Describes the type of configuration used for the over-the-air (OTA) task.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     description: "OtaDescription",
    #     name: "OtaTaskConfigurationName",
    #     push_config: {
    #       abort_config: {
    #         abort_config_criteria_list: [
    #           {
    #             action: "CANCEL" # One of: ["CANCEL"],
    #             failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"],
    #             min_number_of_executed_things: 1,
    #             threshold_percentage: 1.0
    #           }
    #         ]
    #       },
    #       rollout_config: {
    #         exponential_rollout_rate: {
    #           base_rate_per_minute: 1,
    #           increment_factor: 1.0,
    #           rate_increase_criteria: {
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1
    #           }
    #         },
    #         maximum_per_minute: 1
    #       },
    #       timeout_config: {
    #         in_progress_timeout_in_minutes: 1
    #       }
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_ota_task_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_configuration_id: "OtaTaskConfigurationId"
    #   }
    # @return [Types::CreateOtaTaskConfigurationResponse]
    def create_ota_task_configuration(params = {}, options = {})
      request = build_request(:create_ota_task_configuration, params)
      request.send_request(options)
    end

    # <p>Create a provisioning profile for a device to execute the provisioning flows using a provisioning template. The provisioning template is a document that defines the set of resources and policies applied to a device during the provisioning process.</p>
    # @param [Hash, Types::CreateProvisioningProfileRequest] params
    # @option params [String] :provisioning_type
    #   <p>The type of provisioning workflow the device uses for onboarding to IoT managed integrations.</p>
    # @option params [String] :ca_certificate
    #   <p>The id of the certificate authority (CA) certificate.</p>
    # @option params [String] :name
    #   <p>The name of the provisioning template.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key/value pairs that are used to manage the provisioning profile.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provisioning_type: "FLEET_PROVISIONING" # One of: ["FLEET_PROVISIONING", "JITR"], # required
    #     ca_certificate: "CaCertificate",
    #     name: "ProvisioningProfileName",
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_provisioning_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ProvisioningProfileArn",
    #     name: "ProvisioningProfileName",
    #     provisioning_type: "FLEET_PROVISIONING" # One of: ["FLEET_PROVISIONING", "JITR"],
    #     id: "ProvisioningProfileId",
    #     claim_certificate: "ClaimCertificate",
    #     claim_certificate_private_key: "ClaimCertificatePrivateKey"
    #   }
    # @return [Types::CreateProvisioningProfileResponse]
    def create_provisioning_profile(params = {}, options = {})
      request = build_request(:create_provisioning_profile, params)
      request.send_request(options)
    end

    # <p>Remove a third party account and related devices from an end user.</p>
    # @param [Hash, Types::DeleteAccountAssociationRequest] params
    # @option params [String] :account_association_id
    #   <p>The unique identifier of the account association to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_association_id: "AccountAssociationId", # required
    #   }
    #   options = {}
    #   response = client.delete_account_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_account_association(params = {}, options = {})
      request = build_request(:delete_account_association, params)
      request.send_request(options)
    end

    # <p>Delete a cloud connector.</p>
    # @param [Hash, Types::DeleteCloudConnectorRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the cloud connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "CloudConnectorId", # required
    #   }
    #   options = {}
    #   response = client.delete_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_cloud_connector(params = {}, options = {})
      request = build_request(:delete_cloud_connector, params)
      request.send_request(options)
    end

    # <p>Delete a connector destination for connecting a cloud-to-cloud (C2C) connector to the customer's Amazon Web Services account.</p>
    # @param [Hash, Types::DeleteConnectorDestinationRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the connector destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ConnectorDestinationId", # required
    #   }
    #   options = {}
    #   response = client.delete_connector_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_connector_destination(params = {}, options = {})
      request = build_request(:delete_connector_destination, params)
      request.send_request(options)
    end

    # <p>Delete a credential locker. </p> <note> <p>This operation can't be undone and any existing device won't be able to use IoT managed integrations.</p> </note>
    # @param [Hash, Types::DeleteCredentialLockerRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the credential locker.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "CredentialLockerId", # required
    #   }
    #   options = {}
    #   response = client.delete_credential_locker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_credential_locker(params = {}, options = {})
      request = build_request(:delete_credential_locker, params)
      request.send_request(options)
    end

    # <p>Deletes a customer-managed destination specified by id. </p>
    # @param [Hash, Types::DeleteDestinationRequest] params
    # @option params [String] :name
    #   <p>The id of the customer-managed destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DestinationName", # required
    #   }
    #   options = {}
    #   response = client.delete_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_destination(params = {}, options = {})
      request = build_request(:delete_destination, params)
      request.send_request(options)
    end

    # <p>Delete an event log configuration.</p>
    # @param [Hash, Types::DeleteEventLogConfigurationRequest] params
    # @option params [String] :id
    #   <p>The identifier of the event log configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LogConfigurationId", # required
    #   }
    #   options = {}
    #   response = client.delete_event_log_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_event_log_configuration(params = {}, options = {})
      request = build_request(:delete_event_log_configuration, params)
      request.send_request(options)
    end

    # <p>Delete a managed thing. If a controller is deleted, all of the devices connected to it will have their status changed to <code>PENDING</code>. It is not possible to remove a cloud device.</p>
    # @param [Hash, Types::DeleteManagedThingRequest] params
    # @option params [String] :identifier
    #   <p>The id of the managed thing.</p>
    # @option params [Boolean] :force
    #   <p>When set to <code>TRUE</code>, a forceful deteletion of the managed thing will occur. When set to <code>FALSE</code>, a non-forceful deletion of the managed thing will occur.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ManagedThingId", # required
    #     force: false
    #   }
    #   options = {}
    #   response = client.delete_managed_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_managed_thing(params = {}, options = {})
      request = build_request(:delete_managed_thing, params)
      request.send_request(options)
    end

    # <p>Deletes a notification configuration. </p>
    # @param [Hash, Types::DeleteNotificationConfigurationRequest] params
    # @option params [String] :event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_type: "DEVICE_COMMAND" # One of: ["DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"], # required
    #   }
    #   options = {}
    #   response = client.delete_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_notification_configuration(params = {}, options = {})
      request = build_request(:delete_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Delete the over-the-air (OTA) task.</p>
    # @param [Hash, Types::DeleteOtaTaskRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the over-the-air (OTA) task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "OtaTaskId", # required
    #   }
    #   options = {}
    #   response = client.delete_ota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_ota_task(params = {}, options = {})
      request = build_request(:delete_ota_task, params)
      request.send_request(options)
    end

    # <p>Delete the over-the-air (OTA) task configuration.</p>
    # @param [Hash, Types::DeleteOtaTaskConfigurationRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the over-the-air (OTA) task configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "OtaTaskConfigurationId", # required
    #   }
    #   options = {}
    #   response = client.delete_ota_task_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_ota_task_configuration(params = {}, options = {})
      request = build_request(:delete_ota_task_configuration, params)
      request.send_request(options)
    end

    # <p>Delete a provisioning profile.</p>
    # @param [Hash, Types::DeleteProvisioningProfileRequest] params
    # @option params [String] :identifier
    #   <p>The name of the provisioning template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ProvisioningProfileId", # required
    #   }
    #   options = {}
    #   response = client.delete_provisioning_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_provisioning_profile(params = {}, options = {})
      request = build_request(:delete_provisioning_profile, params)
      request.send_request(options)
    end

    # <p>Deregisters an account association, removing the connection between a managed thing and a third-party account.</p>
    # @param [Hash, Types::DeregisterAccountAssociationRequest] params
    # @option params [String] :managed_thing_id
    #   <p>The identifier of the managed thing to be deregistered from the account association.</p>
    # @option params [String] :account_association_id
    #   <p>The unique identifier of the account association to be deregistered.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_thing_id: "ManagedThingId", # required
    #     account_association_id: "AccountAssociationId", # required
    #   }
    #   options = {}
    #   response = client.deregister_account_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_account_association(params = {}, options = {})
      request = build_request(:deregister_account_association, params)
      request.send_request(options)
    end

    # <p>Get an account association for an Amazon Web Services account linked to a customer-managed destination.</p>
    # @param [Hash, Types::GetAccountAssociationRequest] params
    # @option params [String] :account_association_id
    #   <p>The unique identifier of the account association to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_association_id: "AccountAssociationId", # required
    #   }
    #   options = {}
    #   response = client.get_account_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_association_id: "AccountAssociationId", # required
    #     association_state: "ASSOCIATION_IN_PROGRESS" # One of: ["ASSOCIATION_IN_PROGRESS", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCEEDED", "ASSOCIATION_DELETING", "REFRESH_TOKEN_EXPIRED"], # required
    #     error_message: "AccountAssociationErrorMessage",
    #     connector_destination_id: "ConnectorDestinationId",
    #     name: "AccountAssociationName",
    #     description: "AccountAssociationDescription",
    #     arn: "AccountAssociationArn",
    #     o_auth_authorization_url: "OAuthAuthorizationUrl", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetAccountAssociationResponse]
    def get_account_association(params = {}, options = {})
      request = build_request(:get_account_association, params)
      request.send_request(options)
    end

    # <p>Gets all the information about a connector for a connector developer.</p>
    # @param [Hash, Types::GetCloudConnectorRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the C2C connector.</p>
    # @example GetCloudConnector happy path for TP Link to get connector resource
    #   # Example operation for get_cloud_connector
    #   params = {
    #     identifier: "123456789012"
    #   }
    #   options = {}
    #   response = client.get_cloud_connector(params, options)
    #   response.to_h #=>
    #   {
    #     name: "Connector for TP Link Cloud V2",
    #     id: "123456789012",
    #     endpoint_type: LAMBDA,
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion"
    #       }
    #     }
    #   }
    # @example GetCloudConnector happy path for Ring to pending status
    #   # Example operation for get_cloud_connector
    #   params = {
    #     identifier: "123456789012"
    #   }
    #   options = {}
    #   response = client.get_cloud_connector(params, options)
    #   response.to_h #=>
    #   {
    #     name: "Connector for Ring Cloud",
    #     endpoint_config: {
    #       lambda: {
    #         arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion"
    #       }
    #     }
    #   }
    # @example GetCloudConnector error Id for Ring connector which does not exist
    #   # Example operation for get_cloud_connector
    #   params = {
    #     identifier: "123456789012"
    #   }
    #   options = {}
    #   begin
    #     response = client.get_cloud_connector(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Connector Resource does not exists",
    #       resource_id: "123456789012",
    #       resource_type: "CloudConnector"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "CloudConnectorId", # required
    #   }
    #   options = {}
    #   response = client.get_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "DisplayName", # required
    #     endpoint_config: { # required
    #       lambda: {
    #         arn: "LambdaArn", # required
    #       }
    #     },
    #     description: "CloudConnectorDescription",
    #     endpoint_type: "LAMBDA" # One of: ["LAMBDA"],
    #     id: "CloudConnectorId",
    #     type: "LISTED" # One of: ["LISTED", "UNLISTED"]
    #   }
    # @return [Types::GetCloudConnectorResponse]
    def get_cloud_connector(params = {}, options = {})
      request = build_request(:get_cloud_connector, params)
      request.send_request(options)
    end

    # <p>Get a connector destination of a cloud-to-cloud (C2C) connector connecting to a customer's Amazon Web Services account.</p>
    # @param [Hash, Types::GetConnectorDestinationRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the C2C connector destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ConnectorDestinationId", # required
    #   }
    #   options = {}
    #   response = client.get_connector_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "ConnectorDestinationName",
    #     description: "ConnectorDestinationDescription",
    #     cloud_connector_id: "CloudConnectorId",
    #     id: "ConnectorDestinationId",
    #     auth_type: "OAUTH" # One of: ["OAUTH"],
    #     auth_config: {
    #       o_auth: {
    #         auth_url: "AuthUrl", # required
    #         token_url: "TokenUrl", # required
    #         scope: "String",
    #         token_endpoint_authentication_scheme: "HTTP_BASIC" # One of: ["HTTP_BASIC", "REQUEST_BODY_CREDENTIALS"], # required
    #         o_auth_complete_redirect_url: "String",
    #         proactive_refresh_token_renewal: {
    #           enabled: false,
    #           days_before_renewal: 1
    #         }
    #       }
    #     },
    #     secrets_manager: {
    #       arn: "SecretsManagerArn", # required
    #       version_id: "SecretsManagerVersionId", # required
    #     },
    #     o_auth_complete_redirect_url: "OAuthCompleteRedirectUrl"
    #   }
    # @return [Types::GetConnectorDestinationResponse]
    def get_connector_destination(params = {}, options = {})
      request = build_request(:get_connector_destination, params)
      request.send_request(options)
    end

    # <p>Get information on an existing credential locker</p>
    # @param [Hash, Types::GetCredentialLockerRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the credential locker.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "CredentialLockerId", # required
    #   }
    #   options = {}
    #   response = client.get_credential_locker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "CredentialLockerId",
    #     arn: "CredentialLockerArn",
    #     name: "CredentialLockerName",
    #     created_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetCredentialLockerResponse]
    def get_credential_locker(params = {}, options = {})
      request = build_request(:get_credential_locker, params)
      request.send_request(options)
    end

    # <p>Returns the IoT managed integrations custom endpoint.</p>
    # @param [Hash, Types::GetCustomEndpointRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_custom_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_address: "EndpointAddress", # required
    #   }
    # @return [Types::GetCustomEndpointResponse]
    def get_custom_endpoint(params = {}, options = {})
      request = build_request(:get_custom_endpoint, params)
      request.send_request(options)
    end

    # <p> Retrieves information about the default encryption configuration for the Amazon Web Services account in the default or specified region. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html">Key management</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>
    # @param [Hash, Types::GetDefaultEncryptionConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_default_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_status: { # required
    #       error: {
    #         code: "ConfigurationErrorCode",
    #         message: "ConfigurationErrorMessage"
    #       },
    #       state: "ENABLED" # One of: ["ENABLED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #     },
    #     encryption_type: "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION" # One of: ["MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION", "CUSTOMER_KEY_ENCRYPTION"], # required
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::GetDefaultEncryptionConfigurationResponse]
    def get_default_encryption_configuration(params = {}, options = {})
      request = build_request(:get_default_encryption_configuration, params)
      request.send_request(options)
    end

    # <p>Gets a destination by ID. </p>
    # @param [Hash, Types::GetDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the customer-managed destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DestinationName", # required
    #   }
    #   options = {}
    #   response = client.get_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     description: "DestinationDescription",
    #     delivery_destination_arn: "DeliveryDestinationArn",
    #     delivery_destination_type: "KINESIS" # One of: ["KINESIS"],
    #     name: "DestinationName",
    #     role_arn: "DeliveryDestinationRoleArn",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDestinationResponse]
    def get_destination(params = {}, options = {})
      request = build_request(:get_destination, params)
      request.send_request(options)
    end

    # <p> Get the current state of a device discovery.</p>
    # @param [Hash, Types::GetDeviceDiscoveryRequest] params
    # @option params [String] :identifier
    #   <p>The id of the device discovery job request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DeviceDiscoveryId", # required
    #   }
    #   options = {}
    #   response = client.get_device_discovery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DeviceDiscoveryId", # required
    #     arn: "DeviceDiscoveryArn", # required
    #     discovery_type: "ZWAVE" # One of: ["ZWAVE", "ZIGBEE", "CLOUD", "CUSTOM"], # required
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT"], # required
    #     started_at: Time.now, # required
    #     controller_id: "ManagedThingId",
    #     connector_association_id: "ConnectorAssociationId",
    #     account_association_id: "AccountAssociationId",
    #     finished_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetDeviceDiscoveryResponse]
    def get_device_discovery(params = {}, options = {})
      request = build_request(:get_device_discovery, params)
      request.send_request(options)
    end

    # <p>Get an event log configuration.</p>
    # @param [Hash, Types::GetEventLogConfigurationRequest] params
    # @option params [String] :id
    #   <p>The identifier of the event log configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LogConfigurationId", # required
    #   }
    #   options = {}
    #   response = client.get_event_log_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "LogConfigurationId",
    #     resource_type: "SmartHomeResourceType",
    #     resource_id: "SmartHomeResourceId",
    #     event_log_level: "DEBUG" # One of: ["DEBUG", "ERROR", "INFO", "WARN"]
    #   }
    # @return [Types::GetEventLogConfigurationResponse]
    def get_event_log_configuration(params = {}, options = {})
      request = build_request(:get_event_log_configuration, params)
      request.send_request(options)
    end

    # <p>Get a hub configuration.</p>
    # @param [Hash, Types::GetHubConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_hub_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hub_token_timer_expiry_setting_in_seconds: 1,
    #     updated_at: Time.now
    #   }
    # @return [Types::GetHubConfigurationResponse]
    def get_hub_configuration(params = {}, options = {})
      request = build_request(:get_hub_configuration, params)
      request.send_request(options)
    end

    # <p> Get the attributes and capabilities associated with a managed thing.</p>
    # @param [Hash, Types::GetManagedThingRequest] params
    # @option params [String] :identifier
    #   <p>The id of the managed thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ManagedThingId", # required
    #   }
    #   options = {}
    #   response = client.get_managed_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ManagedThingId",
    #     arn: "ManagedThingArn",
    #     owner: "Owner",
    #     credential_locker_id: "CredentialLockerId",
    #     advertised_product_id: "AdvertisedProductId",
    #     role: "CONTROLLER" # One of: ["CONTROLLER", "DEVICE"],
    #     provisioning_status: "UNASSOCIATED" # One of: ["UNASSOCIATED", "PRE_ASSOCIATED", "DISCOVERED", "ACTIVATED", "DELETION_FAILED", "DELETE_IN_PROGRESS", "ISOLATED", "DELETED"],
    #     name: "Name",
    #     model: "Model",
    #     brand: "Brand",
    #     serial_number: "SerialNumber",
    #     universal_product_code: "UniversalProductCode",
    #     international_article_number: "InternationalArticleNumber",
    #     connector_policy_id: "ConnectorPolicyId",
    #     connector_destination_id: "ConnectorDestinationId",
    #     connector_device_id: "ConnectorDeviceId",
    #     device_specific_key: "DeviceSpecificKey",
    #     mac_address: "MacAddress",
    #     parent_controller_id: "ParentControllerId",
    #     classification: "Classification",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     activated_at: Time.now,
    #     hub_network_mode: "STANDARD" # One of: ["STANDARD", "NETWORK_WIDE_EXCLUSION"],
    #     meta_data: {
    #       "AttributeName" => "AttributeValue"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetManagedThingResponse]
    def get_managed_thing(params = {}, options = {})
      request = build_request(:get_managed_thing, params)
      request.send_request(options)
    end

    # <p>Get the capabilities for a managed thing using the device ID.</p>
    # @param [Hash, Types::GetManagedThingCapabilitiesRequest] params
    # @option params [String] :identifier
    #   <p>The id of the device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ManagedThingId", # required
    #   }
    #   options = {}
    #   response = client.get_managed_thing_capabilities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_thing_id: "ManagedThingId",
    #     capabilities: "Capabilities",
    #     capability_report: {
    #       version: "CapabilityReportVersion", # required
    #       node_id: "NodeId",
    #       endpoints: [ # required
    #         {
    #           id: "EndpointId", # required
    #           device_types: ["DeviceType"], # required
    #           capabilities: [ # required
    #             {
    #               id: "SchemaVersionedId", # required
    #               name: "CapabilityName", # required
    #               version: "CapabilityVersion", # required
    #               properties: ["PropertyName"], # required
    #               actions: ["ActionName"], # required
    #               events: ["EventName"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetManagedThingCapabilitiesResponse]
    def get_managed_thing_capabilities(params = {}, options = {})
      request = build_request(:get_managed_thing_capabilities, params)
      request.send_request(options)
    end

    # <p>Get the connectivity status of a managed thing.</p>
    # @param [Hash, Types::GetManagedThingConnectivityDataRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of a managed thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ManagedThingId", # required
    #   }
    #   options = {}
    #   response = client.get_managed_thing_connectivity_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_thing_id: "ManagedThingId",
    #     connected: false,
    #     timestamp: Time.now,
    #     disconnect_reason: "AUTH_ERROR" # One of: ["AUTH_ERROR", "CLIENT_INITIATED_DISCONNECT", "CLIENT_ERROR", "CONNECTION_LOST", "DUPLICATE_CLIENTID", "FORBIDDEN_ACCESS", "MQTT_KEEP_ALIVE_TIMEOUT", "SERVER_ERROR", "SERVER_INITIATED_DISCONNECT", "THROTTLED", "WEBSOCKET_TTL_EXPIRATION", "CUSTOMAUTH_TTL_EXPIRATION", "UNKNOWN", "NONE"]
    #   }
    # @return [Types::GetManagedThingConnectivityDataResponse]
    def get_managed_thing_connectivity_data(params = {}, options = {})
      request = build_request(:get_managed_thing_connectivity_data, params)
      request.send_request(options)
    end

    # <p>Get the metadata information for a managed thing.</p> <note> <p>The <code>managedThing</code> <code>metadata</code> parameter is used for associating attributes with a <code>managedThing</code> that can be used for grouping over-the-air (OTA) tasks. Name value pairs in <code>metadata</code> can be used in the <code>OtaTargetQueryString</code> parameter for the <code>CreateOtaTask</code> API operation.</p> </note>
    # @param [Hash, Types::GetManagedThingMetaDataRequest] params
    # @option params [String] :identifier
    #   <p>The managed thing id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ManagedThingId", # required
    #   }
    #   options = {}
    #   response = client.get_managed_thing_meta_data(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_thing_id: "ManagedThingId",
    #     meta_data: {
    #       "AttributeName" => "AttributeValue"
    #     }
    #   }
    # @return [Types::GetManagedThingMetaDataResponse]
    def get_managed_thing_meta_data(params = {}, options = {})
      request = build_request(:get_managed_thing_meta_data, params)
      request.send_request(options)
    end

    # <p> Returns the managed thing state for the given device Id.</p>
    # @param [Hash, Types::GetManagedThingStateRequest] params
    # @option params [String] :managed_thing_id
    #   <p>The id of the device.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_thing_id: "ManagedThingId", # required
    #   }
    #   options = {}
    #   response = client.get_managed_thing_state(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints: [ # required
    #       {
    #         endpoint_id: "EndpointId", # required
    #         capabilities: [ # required
    #           {
    #             id: "SchemaVersionedId", # required
    #             name: "CapabilityName", # required
    #             version: "CapabilityVersion", # required
    #             properties: ""null""
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetManagedThingStateResponse]
    def get_managed_thing_state(params = {}, options = {})
      request = build_request(:get_managed_thing_state, params)
      request.send_request(options)
    end

    # <p> Get a notification configuration.</p>
    # @param [Hash, Types::GetNotificationConfigurationRequest] params
    # @option params [String] :event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_type: "DEVICE_COMMAND" # One of: ["DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"], # required
    #   }
    #   options = {}
    #   response = client.get_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_type: "DEVICE_COMMAND" # One of: ["DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"],
    #     destination_name: "DestinationName",
    #     created_at: Time.now,
    #     updated_at: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetNotificationConfigurationResponse]
    def get_notification_configuration(params = {}, options = {})
      request = build_request(:get_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Get the over-the-air (OTA) task.</p>
    # @param [Hash, Types::GetOtaTaskRequest] params
    # @option params [String] :identifier
    #   <p>The over-the-air (OTA) task id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "OtaTaskId", # required
    #   }
    #   options = {}
    #   response = client.get_ota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "OtaTaskId",
    #     task_arn: "OtaTaskArn",
    #     description: "OtaDescription",
    #     s3_url: "S3Url",
    #     protocol: "HTTP" # One of: ["HTTP"],
    #     ota_type: "ONE_TIME" # One of: ["ONE_TIME", "CONTINUOUS"],
    #     ota_target_query_string: "OtaTargetQueryString",
    #     ota_mechanism: "PUSH" # One of: ["PUSH"],
    #     target: ["String"],
    #     created_at: Time.now,
    #     last_updated_at: Time.now,
    #     task_configuration_id: "OtaTaskConfigurationId",
    #     task_processing_details: {
    #       number_of_canceled_things: 1,
    #       number_of_failed_things: 1,
    #       number_of_in_progress_things: 1,
    #       number_of_queued_things: 1,
    #       number_of_rejected_things: 1,
    #       number_of_removed_things: 1,
    #       number_of_succeeded_things: 1,
    #       number_of_timed_out_things: 1,
    #       processing_targets: ["String"]
    #     },
    #     ota_scheduling_config: {
    #       end_behavior: "STOP_ROLLOUT" # One of: ["STOP_ROLLOUT", "CANCEL", "FORCE_CANCEL"],
    #       end_time: "EndTime",
    #       maintenance_windows: [
    #         {
    #           duration_in_minutes: 1,
    #           start_time: "StartTime"
    #         }
    #       ],
    #       start_time: "ScheduleStartTime"
    #     },
    #     ota_task_execution_retry_config: {
    #       retry_config_criteria: [
    #         {
    #           failure_type: "FAILED" # One of: ["FAILED", "TIMED_OUT", "ALL"],
    #           min_number_of_retries: 1
    #         }
    #       ]
    #     },
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetOtaTaskResponse]
    def get_ota_task(params = {}, options = {})
      request = build_request(:get_ota_task, params)
      request.send_request(options)
    end

    # <p>Get a configuraiton for the over-the-air (OTA) task.</p>
    # @param [Hash, Types::GetOtaTaskConfigurationRequest] params
    # @option params [String] :identifier
    #   <p>The over-the-air (OTA) task configuration id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "OtaTaskConfigurationId", # required
    #   }
    #   options = {}
    #   response = client.get_ota_task_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_configuration_id: "OtaTaskConfigurationId",
    #     name: "OtaTaskConfigurationName",
    #     push_config: {
    #       abort_config: {
    #         abort_config_criteria_list: [
    #           {
    #             action: "CANCEL" # One of: ["CANCEL"],
    #             failure_type: "FAILED" # One of: ["FAILED", "REJECTED", "TIMED_OUT", "ALL"],
    #             min_number_of_executed_things: 1,
    #             threshold_percentage: 1.0
    #           }
    #         ]
    #       },
    #       rollout_config: {
    #         exponential_rollout_rate: {
    #           base_rate_per_minute: 1,
    #           increment_factor: 1.0,
    #           rate_increase_criteria: {
    #             number_of_notified_things: 1,
    #             number_of_succeeded_things: 1
    #           }
    #         },
    #         maximum_per_minute: 1
    #       },
    #       timeout_config: {
    #         in_progress_timeout_in_minutes: 1
    #       }
    #     },
    #     description: "OtaDescription",
    #     created_at: Time.now
    #   }
    # @return [Types::GetOtaTaskConfigurationResponse]
    def get_ota_task_configuration(params = {}, options = {})
      request = build_request(:get_ota_task_configuration, params)
      request.send_request(options)
    end

    # <p>Get a provisioning profile by template name.</p>
    # @param [Hash, Types::GetProvisioningProfileRequest] params
    # @option params [String] :identifier
    #   <p>The provisioning template the device uses for the provisioning process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ProvisioningProfileId", # required
    #   }
    #   options = {}
    #   response = client.get_provisioning_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "ProvisioningProfileArn",
    #     name: "ProvisioningProfileName",
    #     provisioning_type: "FLEET_PROVISIONING" # One of: ["FLEET_PROVISIONING", "JITR"],
    #     id: "ProvisioningProfileId",
    #     claim_certificate: "ClaimCertificate",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetProvisioningProfileResponse]
    def get_provisioning_profile(params = {}, options = {})
      request = build_request(:get_provisioning_profile, params)
      request.send_request(options)
    end

    # <p>Get the runtime log configuration for a specific managed thing or for all managed things as a group.</p>
    # @param [Hash, Types::GetRuntimeLogConfigurationRequest] params
    # @option params [String] :managed_thing_id
    #   <p>The id for a managed thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_thing_id: "ManagedThingId", # required
    #   }
    #   options = {}
    #   response = client.get_runtime_log_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_thing_id: "ManagedThingId",
    #     runtime_log_configurations: {
    #       log_level: "DEBUG" # One of: ["DEBUG", "ERROR", "INFO", "WARN"],
    #       log_flush_level: "DEBUG" # One of: ["DEBUG", "ERROR", "INFO", "WARN"],
    #       local_store_location: "LocalStoreLocation",
    #       local_store_file_rotation_max_files: 1,
    #       local_store_file_rotation_max_bytes: 1,
    #       upload_log: false,
    #       upload_period_minutes: 1,
    #       delete_local_store_after_upload: false
    #     }
    #   }
    # @return [Types::GetRuntimeLogConfigurationResponse]
    def get_runtime_log_configuration(params = {}, options = {})
      request = build_request(:get_runtime_log_configuration, params)
      request.send_request(options)
    end

    # <p>Gets a schema version with the provided information.</p>
    # @param [Hash, Types::GetSchemaVersionRequest] params
    # @option params [String] :type
    #   <p>The type of schema version.</p>
    # @option params [String] :schema_versioned_id
    #   <p>Schema id with a version specified. If the version is missing, it defaults to latest version.</p>
    # @option params [String] :format
    #   <p>The format of the schema version.</p>
    # @example GetSchemaVersion happy path for an example schema version.
    #   # Example operation for get_schema_version
    #   params = {
    #     schema_versioned_id: "matter.ColorControl@1.4",
    #     type: capability
    #   }
    #   options = {}
    #   response = client.get_schema_version(params, options)
    #   response.to_h #=>
    #   {
    #     schema_id: "matter.ColorControl",
    #     type: capability,
    #     description: "The Color Control cluster defined as Harmony Capability.",
    #     namespace: "matter",
    #     semantic_version: "1.4",
    #     schema: {
    #     "$id" => /schema-versions/capability/matter.ColorControl@1.4,
    #     "$ref" => /schema-versions/definition/aws.capability@1.0,
    #     "name" => Color Control,
    #     "extrinsicId" => 0x0300,
    #     "extrinsicVersion" => 14,
    #     "title" => Color Control Cluster,
    #     "description" => The Color Control cluster defined as Harmony Capability.,
    #     "properties" => {
    #       "CurrentHue" => {
    #         "value" => {
    #           "$ref" => aws.integer@1.0
    #         },
    #         "mutable" => false
    #       }
    #     },
    #     "actions" => [{
    #       "name" => MoveToHue,
    #       "extrinsicId" => 0x00,
    #       "request" => {
    #         "parameters" => {
    #           "Hue" => {
    #             "extrinsicId" => 0,
    #             "value" => {
    #               "$ref" => aws.integer@1.0
    #             }
    #           }
    #         }
    #       }
    #     }],
    #     "events" => [],
    #     "$defs" => {}
    #   }
    #   }
    # @example GetSchemaVersion happy path for an example schema version.
    #   # Example operation for get_schema_version
    #   params = {
    #     schema_versioned_id: "matter.ColorControl@1.4",
    #     type: capability,
    #     format: ZCL
    #   }
    #   options = {}
    #   response = client.get_schema_version(params, options)
    #   response.to_h #=>
    #   {
    #     schema_id: "matter.ColorControl",
    #     type: capability,
    #     description: "The Color Control cluster defined as Harmony Capability.",
    #     namespace: "matter",
    #     semantic_version: "1.4",
    #     schema: {}
    #   }
    # @example GetSchemaVersion error path for an example schema version that does not exist.
    #   # Example operation for get_schema_version
    #   params = {
    #     schema_versioned_id: "matter.ColorControl@$latest",
    #     type: capability
    #   }
    #   options = {}
    #   begin
    #     response = client.get_schema_version(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundException
    #     puts e.data.to_h #=>
    #     {
    #       message: "No schema version found"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "capability" # One of: ["capability", "definition"], # required
    #     schema_versioned_id: "SchemaVersionedId", # required
    #     format: "AWS" # One of: ["AWS", "ZCL", "CONNECTOR"]
    #   }
    #   options = {}
    #   response = client.get_schema_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_id: "SchemaId",
    #     type: "capability" # One of: ["capability", "definition"],
    #     description: "SchemaVersionDescription",
    #     namespace: "SchemaVersionNamespaceName",
    #     semantic_version: "SchemaVersionVersion",
    #     visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #     schema: ""null""
    #   }
    # @return [Types::GetSchemaVersionResponse]
    def get_schema_version(params = {}, options = {})
      request = build_request(:get_schema_version, params)
      request.send_request(options)
    end

    # <p>Lists all account associations, with optional filtering by connector destination ID.</p>
    # @param [Hash, Types::ListAccountAssociationsRequest] params
    # @option params [String] :connector_destination_id
    #   <p>The identifier of the connector destination to filter account associations by.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of account associations to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_destination_id: "ConnectorDestinationId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_account_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         account_association_id: "AccountAssociationId", # required
    #         association_state: "ASSOCIATION_IN_PROGRESS" # One of: ["ASSOCIATION_IN_PROGRESS", "ASSOCIATION_FAILED", "ASSOCIATION_SUCCEEDED", "ASSOCIATION_DELETING", "REFRESH_TOKEN_EXPIRED"], # required
    #         error_message: "AccountAssociationErrorMessage",
    #         connector_destination_id: "ConnectorDestinationId",
    #         name: "AccountAssociationName",
    #         description: "AccountAssociationDescription",
    #         arn: "AccountAssociationArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAccountAssociationsResponse]
    def list_account_associations(params = {}, options = {})
      request = build_request(:list_account_associations, params)
      request.send_request(options)
    end

    # <p>Returns a list of connectors based on permissions. </p>
    # @param [Hash, Types::ListCloudConnectorsRequest] params
    # @option params [String] :type
    #   <p>The type of cloud connectors to filter by when listing available connectors.</p>
    # @option params [String] :lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function to filter cloud connectors by.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @example ListCloudConnectors happy path to get a list of connector resources
    #   # Example operation for list_cloud_connectors
    #   params = {
    #     max_results: 5
    #   }
    #   options = {}
    #   response = client.list_cloud_connectors(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         endpoint_config: {
    #           lambda: {
    #             arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion"
    #           }
    #         },
    #         endpoint_type: LAMBDA,
    #         name: "Connector for TP Link Cloud V2",
    #         description: "Description for TP Link Cloud V2"
    #       },
    #       {
    #         endpoint_config: {
    #           lambda: {
    #             arn: "arn:aws:lambda:us-east-1:111122223333:function:my-function:myVersion"
    #           }
    #         },
    #         name: "Connector for Ring Cloud",
    #         description: "Description for Ring Cloud",
    #         endpoint_type: LAMBDA
    #       }
    #     ]
    #   }
    # @example ListCloudConnectors error path for unauthorized user
    #   # Example operation for list_cloud_connectors
    #   params = {
    #     max_results: 5
    #   }
    #   options = {}
    #   begin
    #     response = client.list_cloud_connectors(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> AccessDeniedException
    #     puts e.data.to_h #=>
    #     {
    #       message: "User is not authorized"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "LISTED" # One of: ["LISTED", "UNLISTED"],
    #     lambda_arn: "LambdaArn",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_cloud_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         name: "DisplayName", # required
    #         endpoint_config: { # required
    #           lambda: {
    #             arn: "LambdaArn", # required
    #           }
    #         },
    #         description: "CloudConnectorDescription",
    #         endpoint_type: "LAMBDA" # One of: ["LAMBDA"],
    #         id: "CloudConnectorId",
    #         type: "LISTED" # One of: ["LISTED", "UNLISTED"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCloudConnectorsResponse]
    def list_cloud_connectors(params = {}, options = {})
      request = build_request(:list_cloud_connectors, params)
      request.send_request(options)
    end

    # <p>Lists all connector destinations, with optional filtering by cloud connector ID.</p>
    # @param [Hash, Types::ListConnectorDestinationsRequest] params
    # @option params [String] :cloud_connector_id
    #   <p>The identifier of the cloud connector to filter connector destinations by.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of connector destinations to return in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cloud_connector_id: "CloudConnectorId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_connector_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_destination_list: [
    #       {
    #         name: "ConnectorDestinationName",
    #         description: "ConnectorDestinationDescription",
    #         cloud_connector_id: "CloudConnectorId",
    #         id: "ConnectorDestinationId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListConnectorDestinationsResponse]
    def list_connector_destinations(params = {}, options = {})
      request = build_request(:list_connector_destinations, params)
      request.send_request(options)
    end

    # <p>List information on an existing credential locker.</p>
    # @param [Hash, Types::ListCredentialLockersRequest] params
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_credential_lockers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "CredentialLockerId",
    #         arn: "CredentialLockerArn",
    #         name: "CredentialLockerName",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListCredentialLockersResponse]
    def list_credential_lockers(params = {}, options = {})
      request = build_request(:list_credential_lockers, params)
      request.send_request(options)
    end

    # <p> List all destination names under one Amazon Web Services account.</p>
    # @param [Hash, Types::ListDestinationsRequest] params
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     destination_list: [
    #       {
    #         description: "DestinationDescription",
    #         delivery_destination_arn: "DeliveryDestinationArn",
    #         delivery_destination_type: "KINESIS" # One of: ["KINESIS"],
    #         name: "DestinationName",
    #         role_arn: "DeliveryDestinationRoleArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDestinationsResponse]
    def list_destinations(params = {}, options = {})
      request = build_request(:list_destinations, params)
      request.send_request(options)
    end

    # <p>Lists all device discovery tasks, with optional filtering by type and status.</p>
    # @param [Hash, Types::ListDeviceDiscoveriesRequest] params
    # @option params [String] :next_token
    #   <p>A token used for pagination of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of device discovery jobs to return in a single response.</p>
    # @option params [String] :type_filter
    #   <p>The discovery type to filter device discovery jobs by.</p>
    # @option params [String] :status_filter
    #   <p>The status to filter device discovery jobs by.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     type_filter: "ZWAVE" # One of: ["ZWAVE", "ZIGBEE", "CLOUD", "CUSTOM"],
    #     status_filter: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT"]
    #   }
    #   options = {}
    #   response = client.list_device_discoveries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "DeviceDiscoveryId",
    #         discovery_type: "ZWAVE" # One of: ["ZWAVE", "ZIGBEE", "CLOUD", "CUSTOM"],
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "TIMED_OUT"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeviceDiscoveriesResponse]
    def list_device_discoveries(params = {}, options = {})
      request = build_request(:list_device_discoveries, params)
      request.send_request(options)
    end

    # <p>Lists all devices discovered during a specific device discovery task.</p>
    # @param [Hash, Types::ListDiscoveredDevicesRequest] params
    # @option params [String] :identifier
    #   <p>The identifier of the device discovery job to list discovered devices for.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of discovered devices to return in a single response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "DeviceDiscoveryId", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_discovered_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         connector_device_id: "ConnectorDeviceId",
    #         connector_device_name: "ConnectorDeviceName",
    #         device_types: ["DeviceType"],
    #         managed_thing_id: "ManagedThingId",
    #         modification: "DISCOVERED" # One of: ["DISCOVERED", "UPDATED", "NO_CHANGE"],
    #         discovered_at: Time.now,
    #         brand: "Brand",
    #         model: "Model",
    #         authentication_material: "AuthMaterialString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDiscoveredDevicesResponse]
    def list_discovered_devices(params = {}, options = {})
      request = build_request(:list_discovered_devices, params)
      request.send_request(options)
    end

    # <p>List all event log configurations for an account.</p>
    # @param [Hash, Types::ListEventLogConfigurationsRequest] params
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_event_log_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     event_log_configuration_list: [
    #       {
    #         id: "LogConfigurationId",
    #         resource_type: "SmartHomeResourceType",
    #         resource_id: "SmartHomeResourceId",
    #         event_log_level: "DEBUG" # One of: ["DEBUG", "ERROR", "INFO", "WARN"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEventLogConfigurationsResponse]
    def list_event_log_configurations(params = {}, options = {})
      request = build_request(:list_event_log_configurations, params)
      request.send_request(options)
    end

    # <p>Lists all account associations for a specific managed thing.</p>
    # @param [Hash, Types::ListManagedThingAccountAssociationsRequest] params
    # @option params [String] :managed_thing_id
    #   <p>The identifier of the managed thing to list account associations for.</p>
    # @option params [String] :account_association_id
    #   <p>The identifier of the account association to filter results by. When specified, only associations with this account association ID will be returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of account associations to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_thing_id: "ManagedThingId",
    #     account_association_id: "AccountAssociationId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_managed_thing_account_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         managed_thing_id: "ManagedThingId",
    #         account_association_id: "AccountAssociationId"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListManagedThingAccountAssociationsResponse]
    def list_managed_thing_account_associations(params = {}, options = {})
      request = build_request(:list_managed_thing_account_associations, params)
      request.send_request(options)
    end

    # <p>List schemas associated with a managed thing.</p>
    # @param [Hash, Types::ListManagedThingSchemasRequest] params
    # @option params [String] :identifier
    #   <p>The managed thing id.</p>
    # @option params [String] :endpoint_id_filter
    #   <p>Filter on an endpoint id.</p>
    # @option params [String] :capability_id_filter
    #   <p>Filter on a capability id.</p>
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ManagedThingId", # required
    #     endpoint_id_filter: "EndpointId",
    #     capability_id_filter: "CapabilityId",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_managed_thing_schemas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         endpoint_id: "EndpointId",
    #         capability_id: "CapabilityId",
    #         schema: ""null""
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListManagedThingSchemasResponse]
    def list_managed_thing_schemas(params = {}, options = {})
      request = build_request(:list_managed_thing_schemas, params)
      request.send_request(options)
    end

    # <p>Listing all managed things with provision for filters.</p>
    # @param [Hash, Types::ListManagedThingsRequest] params
    # @option params [String] :owner_filter
    #   <p>Filter on device owners when listing managed things.</p>
    # @option params [String] :credential_locker_filter
    #   <p>Filter on a credential locker for a managed thing.</p>
    # @option params [String] :role_filter
    #   <p>Filter on the type of device used. This will be the Amazon Web Services hub controller, cloud device, or IoT device.</p>
    # @option params [String] :parent_controller_identifier_filter
    #   <p>Filter on a parent controller id for a managed thing.</p>
    # @option params [String] :connector_policy_id_filter
    #   <p>Filter on a connector policy id for a managed thing.</p>
    # @option params [String] :connector_destination_id_filter
    #   <p>Filter managed things by the connector destination ID they are associated with.</p>
    # @option params [String] :connector_device_id_filter
    #   <p>Filter managed things by the connector device ID they are associated with. When specified, only managed things with this connector device ID will be returned.</p>
    # @option params [String] :serial_number_filter
    #   <p>Filter on the serial number of the device.</p>
    # @option params [String] :provisioning_status_filter
    #   <p>Filter on the status of the device.</p>
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     owner_filter: "Owner",
    #     credential_locker_filter: "CredentialLockerId",
    #     role_filter: "CONTROLLER" # One of: ["CONTROLLER", "DEVICE"],
    #     parent_controller_identifier_filter: "ParentControllerId",
    #     connector_policy_id_filter: "ConnectorPolicyId",
    #     connector_destination_id_filter: "ConnectorDestinationId",
    #     connector_device_id_filter: "ConnectorDeviceId",
    #     serial_number_filter: "SerialNumber",
    #     provisioning_status_filter: "UNASSOCIATED" # One of: ["UNASSOCIATED", "PRE_ASSOCIATED", "DISCOVERED", "ACTIVATED", "DELETION_FAILED", "DELETE_IN_PROGRESS", "ISOLATED", "DELETED"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_managed_things(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         id: "ManagedThingId",
    #         arn: "ManagedThingArn",
    #         advertised_product_id: "AdvertisedProductId",
    #         brand: "Brand",
    #         classification: "Classification",
    #         connector_device_id: "ConnectorDeviceId",
    #         connector_policy_id: "ConnectorPolicyId",
    #         connector_destination_id: "ConnectorDestinationId",
    #         model: "Model",
    #         name: "Name",
    #         owner: "Owner",
    #         credential_locker_id: "CredentialLockerId",
    #         parent_controller_id: "ParentControllerId",
    #         provisioning_status: "UNASSOCIATED" # One of: ["UNASSOCIATED", "PRE_ASSOCIATED", "DISCOVERED", "ACTIVATED", "DELETION_FAILED", "DELETE_IN_PROGRESS", "ISOLATED", "DELETED"],
    #         role: "CONTROLLER" # One of: ["CONTROLLER", "DEVICE"],
    #         serial_number: "SerialNumber",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         activated_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListManagedThingsResponse]
    def list_managed_things(params = {}, options = {})
      request = build_request(:list_managed_things, params)
      request.send_request(options)
    end

    # <p> List all notification configurations.</p>
    # @param [Hash, Types::ListNotificationConfigurationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_notification_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notification_configuration_list: [
    #       {
    #         event_type: "DEVICE_COMMAND" # One of: ["DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"],
    #         destination_name: "DestinationName"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNotificationConfigurationsResponse]
    def list_notification_configurations(params = {}, options = {})
      request = build_request(:list_notification_configurations, params)
      request.send_request(options)
    end

    # <p>List all of the over-the-air (OTA) task configurations.</p>
    # @param [Hash, Types::ListOtaTaskConfigurationsRequest] params
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_ota_task_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         task_configuration_id: "OtaTaskConfigurationId",
    #         name: "OtaTaskConfigurationName",
    #         created_at: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListOtaTaskConfigurationsResponse]
    def list_ota_task_configurations(params = {}, options = {})
      request = build_request(:list_ota_task_configurations, params)
      request.send_request(options)
    end

    # <p>List all of the over-the-air (OTA) task executions.</p>
    # @param [Hash, Types::ListOtaTaskExecutionsRequest] params
    # @option params [String] :identifier
    #   <p>The over-the-air (OTA) task id.</p>
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "OtaTaskId", # required
    #     next_token: "OtaNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_ota_task_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_summaries: [
    #       {
    #         task_execution_summary: {
    #           execution_number: 1,
    #           last_updated_at: Time.now,
    #           queued_at: Time.now,
    #           retry_attempt: 1,
    #           started_at: Time.now,
    #           status: "QUEUED" # One of: ["QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "TIMED_OUT", "REJECTED", "REMOVED", "CANCELED"]
    #         },
    #         managed_thing_id: "ManagedThingId"
    #       }
    #     ],
    #     next_token: "OtaNextToken"
    #   }
    # @return [Types::ListOtaTaskExecutionsResponse]
    def list_ota_task_executions(params = {}, options = {})
      request = build_request(:list_ota_task_executions, params)
      request.send_request(options)
    end

    # <p>List all of the over-the-air (OTA) tasks.</p>
    # @param [Hash, Types::ListOtaTasksRequest] params
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "OtaNextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_ota_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tasks: [
    #       {
    #         task_id: "OtaTaskId",
    #         task_arn: "OtaTaskArn",
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         task_configuration_id: "OtaTaskConfigurationId",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CANCELED", "COMPLETED", "DELETION_IN_PROGRESS", "SCHEDULED"]
    #       }
    #     ],
    #     next_token: "OtaNextToken"
    #   }
    # @return [Types::ListOtaTasksResponse]
    def list_ota_tasks(params = {}, options = {})
      request = build_request(:list_ota_tasks, params)
      request.send_request(options)
    end

    # <p>List the provisioning profiles within the Amazon Web Services account.</p>
    # @param [Hash, Types::ListProvisioningProfilesRequest] params
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_provisioning_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         name: "ProvisioningProfileName",
    #         id: "ProvisioningProfileId",
    #         arn: "ProvisioningProfileArn",
    #         provisioning_type: "FLEET_PROVISIONING" # One of: ["FLEET_PROVISIONING", "JITR"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProvisioningProfilesResponse]
    def list_provisioning_profiles(params = {}, options = {})
      request = build_request(:list_provisioning_profiles, params)
      request.send_request(options)
    end

    # <p>Lists schema versions with the provided information.</p>
    # @param [Hash, Types::ListSchemaVersionsRequest] params
    # @option params [String] :type
    #   <p>Filter on the type of schema version.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    # @option params [String] :next_token
    #   <p>A token that can be used to retrieve the next set of results.</p>
    # @option params [String] :schema_id
    #   <p>Filter on the id of the schema version.</p>
    # @option params [String] :namespace
    #   <p>Filter on the name of the schema version.</p>
    # @option params [String] :visibility
    #   <p>The visibility of the schema version.</p>
    # @option params [String] :semantic_version
    #   <p>The schema version. If this is left blank, it defaults to the latest version.</p>
    # @example ListSchemaVersions happy path for an example schema version.
    #   # Example operation for list_schema_versions
    #   params = {
    #     schema_id: "example.ColorControl",
    #     type: capability
    #   }
    #   options = {}
    #   response = client.list_schema_versions(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         schema_id: "example.ColorControl",
    #         type: capability,
    #         description: "The Color Control cluster defined as Harmony Capability.",
    #         namespace: "matter",
    #         semantic_version: "1.4"
    #       }
    #     ]
    #   }
    # @example ListSchemaVersions by version.
    #   # Example operation for list_schema_versions
    #   params = {
    #     type: capability,
    #     semantic_version: "34.56"
    #   }
    #   options = {}
    #   response = client.list_schema_versions(params, options)
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         schema_id: "example.ColorControl",
    #         type: capability,
    #         description: "The Color Control cluster defined as Harmony Capability.",
    #         namespace: "matter",
    #         semantic_version: "1.4"
    #       }
    #     ]
    #   }
    # @example ListSchemaVersions error  for invalid input.
    #   # Example operation for list_schema_versions
    #   params = {
    #     schema_id: "example.ColorControl",
    #     type: capability,
    #     namespace: "matter"
    #   }
    #   options = {}
    #   begin
    #     response = client.list_schema_versions(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationException
    #     puts e.data.to_h #=>
    #     {
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "capability" # One of: ["capability", "definition"], # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     schema_id: "SchemaId",
    #     namespace: "SchemaVersionNamespaceName",
    #     visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"],
    #     semantic_version: "SchemaVersionVersion"
    #   }
    #   options = {}
    #   response = client.list_schema_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     items: [
    #       {
    #         schema_id: "SchemaId",
    #         type: "capability" # One of: ["capability", "definition"],
    #         description: "SchemaVersionDescription",
    #         namespace: "SchemaVersionNamespaceName",
    #         semantic_version: "SchemaVersionVersion",
    #         visibility: "PUBLIC" # One of: ["PUBLIC", "PRIVATE"]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSchemaVersionsResponse]
    def list_schema_versions(params = {}, options = {})
      request = build_request(:list_schema_versions, params)
      request.send_request(options)
    end

    # List tags for the specified resource.
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   The ARN of the resource for which to list tags.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "IoTManagedIntegrationsResourceARN", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Sets the default encryption configuration for the Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/key-management.html">Key management</a> in the AWS IoT SiteWise User Guide.</p>
    # @param [Hash, Types::PutDefaultEncryptionConfigurationRequest] params
    # @option params [String] :encryption_type
    #   <p>The type of encryption used for the encryption configuration.</p>
    # @option params [String] :kms_key_arn
    #   <p>The Key Amazon Resource Name (ARN) of the AWS KMS key used for KMS encryption if you use <code>KMS_BASED_ENCRYPTION</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     encryption_type: "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION" # One of: ["MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION", "CUSTOMER_KEY_ENCRYPTION"], # required
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.put_default_encryption_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_status: { # required
    #       error: {
    #         code: "ConfigurationErrorCode",
    #         message: "ConfigurationErrorMessage"
    #       },
    #       state: "ENABLED" # One of: ["ENABLED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED"], # required
    #     },
    #     encryption_type: "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION" # One of: ["MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION", "CUSTOMER_KEY_ENCRYPTION"], # required
    #     kms_key_arn: "KmsKeyArn"
    #   }
    # @return [Types::PutDefaultEncryptionConfigurationResponse]
    def put_default_encryption_configuration(params = {}, options = {})
      request = build_request(:put_default_encryption_configuration, params)
      request.send_request(options)
    end

    # <p>Update a hub configuration.</p>
    # @param [Hash, Types::PutHubConfigurationRequest] params
    # @option params [Integer] :hub_token_timer_expiry_setting_in_seconds
    #   <p>A user-defined integer value that represents the hub token timer expiry setting in seconds.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     hub_token_timer_expiry_setting_in_seconds: 1, # required
    #   }
    #   options = {}
    #   response = client.put_hub_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     hub_token_timer_expiry_setting_in_seconds: 1
    #   }
    # @return [Types::PutHubConfigurationResponse]
    def put_hub_configuration(params = {}, options = {})
      request = build_request(:put_hub_configuration, params)
      request.send_request(options)
    end

    # <p>Set the runtime log configuration for a specific managed thing or for all managed things as a group.</p>
    # @param [Hash, Types::PutRuntimeLogConfigurationRequest] params
    # @option params [String] :managed_thing_id
    #   <p>The id for a managed thing.</p>
    # @option params [Types::RuntimeLogConfigurations] :runtime_log_configurations
    #   <p>The runtime log configuration for a managed thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_thing_id: "ManagedThingId", # required
    #     runtime_log_configurations: { # required
    #       log_level: "DEBUG" # One of: ["DEBUG", "ERROR", "INFO", "WARN"],
    #       log_flush_level: "DEBUG" # One of: ["DEBUG", "ERROR", "INFO", "WARN"],
    #       local_store_location: "LocalStoreLocation",
    #       local_store_file_rotation_max_files: 1,
    #       local_store_file_rotation_max_bytes: 1,
    #       upload_log: false,
    #       upload_period_minutes: 1,
    #       delete_local_store_after_upload: false
    #     }
    #   }
    #   options = {}
    #   response = client.put_runtime_log_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_runtime_log_configuration(params = {}, options = {})
      request = build_request(:put_runtime_log_configuration, params)
      request.send_request(options)
    end

    # <p>Registers an account association with a managed thing, establishing a connection between a device and a third-party account.</p>
    # @param [Hash, Types::RegisterAccountAssociationRequest] params
    # @option params [String] :managed_thing_id
    #   <p>The identifier of the managed thing to register with the account association.</p>
    # @option params [String] :account_association_id
    #   <p>The identifier of the account association to register with the managed thing.</p>
    # @option params [String] :device_discovery_id
    #   <p>The identifier of the device discovery job associated with this registration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_thing_id: "ManagedThingId", # required
    #     account_association_id: "AccountAssociationId", # required
    #     device_discovery_id: "DeviceDiscoveryId", # required
    #   }
    #   options = {}
    #   response = client.register_account_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_association_id: "AccountAssociationId",
    #     device_discovery_id: "DeviceDiscoveryId",
    #     managed_thing_id: "ManagedThingId"
    #   }
    # @return [Types::RegisterAccountAssociationResponse]
    def register_account_association(params = {}, options = {})
      request = build_request(:register_account_association, params)
      request.send_request(options)
    end

    # <p>Customers can request IoT managed integrations to manage the server trust for them or bring their own external server trusts for the custom domain. Returns an IoT managed integrations endpoint.</p>
    # @param [Hash, Types::RegisterCustomEndpointRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.register_custom_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_address: "EndpointAddress", # required
    #   }
    # @return [Types::RegisterCustomEndpointResponse]
    def register_custom_endpoint(params = {}, options = {})
      request = build_request(:register_custom_endpoint, params)
      request.send_request(options)
    end

    # <p>Reset a runtime log configuration for a specific managed thing or for all managed things as a group.</p>
    # @param [Hash, Types::ResetRuntimeLogConfigurationRequest] params
    # @option params [String] :managed_thing_id
    #   <p>The id of a managed thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_thing_id: "ManagedThingId", # required
    #   }
    #   options = {}
    #   response = client.reset_runtime_log_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def reset_runtime_log_configuration(params = {}, options = {})
      request = build_request(:reset_runtime_log_configuration, params)
      request.send_request(options)
    end

    # <p>Relays third-party device events for a connector such as a new device or a device state change event.</p>
    # @param [Hash, Types::SendConnectorEventRequest] params
    # @option params [String] :connector_id
    #   <p>The id of the connector between the third-party cloud provider and IoT managed integrations.</p>
    # @option params [String] :user_id
    #   <p>The id of the third-party cloud provider.</p>
    # @option params [String] :operation
    #   <p>The Open Connectivity Foundation (OCF) operation requested to be performed on the managed thing.</p> <note> <p>The field op can have a value of "I" or "U". The field "cn" will contain the capability types.</p> </note>
    # @option params [String] :operation_version
    #   <p>The Open Connectivity Foundation (OCF) security specification version for the operation being requested on the managed thing. For more information, see <a href="https://openconnectivity.org/specs/OCF_Security_Specification_v1.0.0.pdf">OCF Security Specification</a>.</p>
    # @option params [Integer] :status_code
    #   <p>The status code of the Open Connectivity Foundation (OCF) operation being performed on the managed thing.</p>
    # @option params [String] :message
    #   <p>The device state change event payload.</p> <p>This parameter will include the following three fields:</p> <ul> <li> <p> <code>uri</code>: <code>schema auc://&lt;PARTNER-DEVICE-ID&gt;/ResourcePath</code> (The <code>Resourcepath</code> corresponds to an OCF resource.)</p> </li> <li> <p> <code>op</code>: For device state changes, this field must populate as <code>n+d</code>.</p> </li> <li> <p> <code>cn</code>: The content depends on the OCF resource referenced in <code>ResourcePath</code>.</p> </li> </ul>
    # @option params [String] :device_discovery_id
    #   <p>The id for the device discovery job.</p>
    # @option params [String] :connector_device_id
    #   <p>The third-party device id as defined by the connector. This device id must not contain personal identifiable information (PII).</p> <note> <p>This parameter is used for cloud-to-cloud devices only.</p> </note>
    # @option params [String] :trace_id
    #   <p>The trace request identifier used to correlate a command request and response. This is specified by the device owner, but will be generated by IoT managed integrations if not provided by the device owner.</p>
    # @option params [Array<Types::Device>] :devices
    #   <p>The list of devices.</p>
    # @option params [Types::MatterEndpoint] :matter_endpoint
    #   <p>The device endpoint.</p>
    # @example SendConnectorEvent happy path for device discovery
    #   # Example operation for send_connector_event
    #   params = {
    #     connector_id: "MockConnectorId",
    #     user_id: "MockThirdPartyUserId",
    #     operation: DEVICE_DISCOVERY,
    #     operation_version: "1.0",
    #     status_code: 200,
    #     message: "Sample ConnectorEventMessage",
    #     device_discovery_id: "358275hbk3qr",
    #     devices: [
    #       {
    #         connector_device_id: "Mock-Connector-DeviceId-1",
    #         connector_device_name: "Sample-User-device-1",
    #         capability_report: {
    #           version: "1.0.0",
    #           node_id: "1",
    #           endpoints: [
    #             {
    #               id: "EP1",
    #               device_types: [
    #                 "Refrigerator"
    #               ],
    #               clusters: [
    #                 {
    #                   id: "0x0201",
    #                   revision: 1,
    #                   attributes: [
    #                     {
    #                       id: "0x0000",
    #                       value: exampleString
    #                     },
    #                     {
    #                       id: "0x0001"
    #                     },
    #                     {
    #                       id: "0x0002"
    #                     }
    #                   ],
    #                   commands: [
    #                     "0x00",
    #                     "0x01"
    #                   ],
    #                   events: [
    #                   ]
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.send_connector_event(params, options)
    #   response.to_h #=>
    #   {
    #     connector_id: "MockConnectorId"
    #   }
    # @example SendConnectorEvent happy path for device command response
    #   # Example operation for send_connector_event
    #   params = {
    #     connector_id: "MockConnectorId",
    #     user_id: "MockThirdPartyUserId",
    #     operation: DEVICE_COMMAND_RESPONSE,
    #     operation_version: "1.0",
    #     status_code: 200,
    #     message: "Sample ConnectorEventMessage",
    #     trace_id: "9b75f3839b6140f=_1",
    #     matter_endpoint: {
    #       id: "1",
    #       clusters: [
    #         {
    #           id: "0x1003",
    #           attributes: {
    #     "0x0000" => [73],
    #     "0x15570003" => exampleString
    #   },
    #           commands: {
    #             "0x03" => {}
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.send_connector_event(params, options)
    #   response.to_h #=>
    #   {
    #     connector_id: "MockConnectorId"
    #   }
    # @example SendConnectorEvent happy path for device event
    #   # Example operation for send_connector_event
    #   params = {
    #     connector_id: "MockConnectorId",
    #     user_id: "MockThirdPartyUserId",
    #     operation: DEVICE_EVENT,
    #     operation_version: "1.0",
    #     status_code: 200,
    #     message: "Sample ConnectorEventMessage",
    #     trace_id: "TraceId-Sample",
    #     matter_endpoint: {
    #       id: "1",
    #       clusters: [
    #         {
    #           id: "0x1003",
    #           attributes: {
    #     "0x0000" => 73
    #   }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.send_connector_event(params, options)
    #   response.to_h #=>
    #   {
    #     connector_id: "MockConnectorId"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     connector_id: "ConnectorId", # required
    #     user_id: "ThirdPartyUserId",
    #     operation: "DEVICE_COMMAND_RESPONSE" # One of: ["DEVICE_COMMAND_RESPONSE", "DEVICE_DISCOVERY", "DEVICE_EVENT", "DEVICE_COMMAND_REQUEST"], # required
    #     operation_version: "ConnectorEventOperationVersion",
    #     status_code: 1,
    #     message: "ConnectorEventMessage",
    #     device_discovery_id: "DeviceDiscoveryId",
    #     connector_device_id: "ConnectorDeviceId",
    #     trace_id: "TraceId",
    #     devices: [
    #       {
    #         connector_device_id: "ConnectorDeviceId", # required
    #         connector_device_name: "ConnectorDeviceName",
    #         capability_report: { # required
    #           version: "CapabilityReportVersion", # required
    #           node_id: "NodeId",
    #           endpoints: [ # required
    #             {
    #               id: "EndpointId", # required
    #               device_types: ["DeviceType"], # required
    #               clusters: [ # required
    #                 {
    #                   id: "ClusterId", # required
    #                   revision: 1, # required
    #                   public_id: "SchemaVersionedId",
    #                   name: "CapabilityName",
    #                   spec_version: "SpecVersion",
    #                   attributes: [
    #                     {
    #                       id: "MatterAttributeId",
    #                       name: "ActionName",
    #                       value: ""null""
    #                     }
    #                   ],
    #                   commands: ["MatterCommandId"],
    #                   events: ["MatterEventId"],
    #                   feature_map: 1,
    #                   generated_commands: ["MatterCommandId"],
    #                   fabric_index: 1
    #                 }
    #               ],
    #               parts: ["EndpointId"],
    #               semantic_tags: ["EndpointSemanticTag"],
    #               client_clusters: ["ClusterId"]
    #             }
    #           ]
    #         },
    #         capability_schemas: [
    #           {
    #             format: "AWS" # One of: ["AWS", "ZCL", "CONNECTOR"], # required
    #             capability_id: "SchemaVersionedId", # required
    #             extrinsic_id: "ExtrinsicSchemaId", # required
    #             extrinsic_version: 1, # required
    #             schema: ""null"", # required
    #           }
    #         ],
    #         device_metadata: ""null""
    #       }
    #     ],
    #     matter_endpoint: {
    #       id: "EndpointId",
    #       clusters: [
    #         {
    #           id: "ClusterId",
    #           attributes: ""null"",
    #           commands: {
    #             "MatterCommandId" => ""null""
    #           },
    #           events: {
    #             "MatterEventId" => ""null""
    #           }
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.send_connector_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     connector_id: "ConnectorId", # required
    #   }
    # @return [Types::SendConnectorEventResponse]
    def send_connector_event(params = {}, options = {})
      request = build_request(:send_connector_event, params)
      request.send_request(options)
    end

    # <p>Send the command to the device represented by the managed thing. </p>
    # @param [Hash, Types::SendManagedThingCommandRequest] params
    # @option params [String] :managed_thing_id
    #   <p>The id of the device.</p>
    # @option params [Array<Types::CommandEndpoint>] :endpoints
    #   <p>The device endpoint.</p>
    # @option params [String] :connector_association_id
    #   <p>The ID tracking the current discovery process for one connector association.</p>
    # @option params [String] :account_association_id
    #   <p>The identifier of the account association to use when sending a command to a managed thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_thing_id: "ManagedThingId", # required
    #     endpoints: [ # required
    #       {
    #         endpoint_id: "EndpointId", # required
    #         capabilities: [ # required
    #           {
    #             id: "SchemaVersionedId", # required
    #             name: "CapabilityName", # required
    #             version: "CapabilityVersion", # required
    #             actions: [ # required
    #               {
    #                 name: "CapabilityActionName", # required
    #                 ref: "ActionReference",
    #                 action_trace_id: "ActionTraceId",
    #                 parameters: ""null""
    #               }
    #             ]
    #           }
    #         ]
    #       }
    #     ],
    #     connector_association_id: "ConnectorAssociationId",
    #     account_association_id: "AccountAssociationId"
    #   }
    #   options = {}
    #   response = client.send_managed_thing_command(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     trace_id: "TraceId"
    #   }
    # @return [Types::SendManagedThingCommandResponse]
    def send_managed_thing_command(params = {}, options = {})
      request = build_request(:send_managed_thing_command, params)
      request.send_request(options)
    end

    # <p>Initiates a refresh of an existing account association to update its authorization and connection status.</p>
    # @param [Hash, Types::StartAccountAssociationRefreshRequest] params
    # @option params [String] :account_association_id
    #   <p>The unique identifier of the account association to refresh.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_association_id: "AccountAssociationId", # required
    #   }
    #   options = {}
    #   response = client.start_account_association_refresh(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     o_auth_authorization_url: "OAuthAuthorizationUrl", # required
    #   }
    # @return [Types::StartAccountAssociationRefreshResponse]
    def start_account_association_refresh(params = {}, options = {})
      request = build_request(:start_account_association_refresh, params)
      request.send_request(options)
    end

    # <p> This API is used to start device discovery for hub-connected and third-party-connected devices. The authentication material (install code) is passed as a message to the controller telling it to start the discovery.</p>
    # @param [Hash, Types::StartDeviceDiscoveryRequest] params
    # @option params [String] :discovery_type
    #   <p>The discovery type supporting the type of device to be discovered in the device discovery task request.</p>
    # @option params [Hash<String, String>] :custom_protocol_detail
    #   <p>Additional protocol-specific details required for device discovery, which vary based on the discovery type.</p> <note> <p>For a <code>DiscoveryType</code> of <code>CUSTOM</code>, the string-to-string map must have a key value of <code>Name</code> set to a non-empty-string.</p> </note>
    # @option params [String] :controller_identifier
    #   <p>The id of the end-user's IoT hub.</p>
    # @option params [String] :connector_association_identifier
    #   <p>The id of the connector association.</p>
    # @option params [String] :account_association_id
    #   <p>The identifier of the cloud-to-cloud account association to use for discovery of third-party devices.</p>
    # @option params [String] :authentication_material
    #   <p>The authentication material required to start the local device discovery job request.</p>
    # @option params [String] :authentication_material_type
    #   <p>The type of authentication material used for device discovery jobs.</p>
    # @option params [String] :client_token
    #   <p>An idempotency token. If you retry a request that completed successfully initially using the same client token and parameters, then the retry attempt will succeed without performing any further actions.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A set of key/value pairs that are used to manage the device discovery request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     discovery_type: "ZWAVE" # One of: ["ZWAVE", "ZIGBEE", "CLOUD", "CUSTOM"], # required
    #     custom_protocol_detail: {
    #       "CustomProtocolDetailKey" => "CustomProtocolDetailValue"
    #     },
    #     controller_identifier: "ManagedThingId",
    #     connector_association_identifier: "ConnectorAssociationId",
    #     account_association_id: "AccountAssociationId",
    #     authentication_material: "DiscoveryAuthMaterialString",
    #     authentication_material_type: "ZWAVE_INSTALL_CODE" # One of: ["ZWAVE_INSTALL_CODE"],
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.start_device_discovery(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "DeviceDiscoveryId",
    #     started_at: Time.now
    #   }
    # @return [Types::StartDeviceDiscoveryResponse]
    def start_device_discovery(params = {}, options = {})
      request = build_request(:start_device_discovery, params)
      request.send_request(options)
    end

    # Add tags for the specified resource.
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   The ARN of the resource to which to add tags.
    # @option params [Hash<String, String>] :tags
    #   A set of key/value pairs that are used to manage the resource
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "IoTManagedIntegrationsResourceARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
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

    # Remove tags for the specified resource.
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   The ARN of the resource to which to add tags.
    # @option params [Array<String>] :tag_keys
    #   A list of tag keys to remove from the resource.
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "IoTManagedIntegrationsResourceARN", # required
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

    # <p>Updates the properties of an existing account association.</p>
    # @param [Hash, Types::UpdateAccountAssociationRequest] params
    # @option params [String] :account_association_id
    #   <p>The unique identifier of the account association to update.</p>
    # @option params [String] :name
    #   <p>The new name to assign to the account association.</p>
    # @option params [String] :description
    #   <p>The new description to assign to the account association.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     account_association_id: "AccountAssociationId", # required
    #     name: "AccountAssociationName",
    #     description: "AccountAssociationDescription"
    #   }
    #   options = {}
    #   response = client.update_account_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_account_association(params = {}, options = {})
      request = build_request(:update_account_association, params)
      request.send_request(options)
    end

    # <p>Update an existing cloud connector.</p>
    # @param [Hash, Types::UpdateCloudConnectorRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the cloud connector to update.</p>
    # @option params [String] :name
    #   <p>The new display name to assign to the cloud connector.</p>
    # @option params [String] :description
    #   <p>The new description to assign to the cloud connector.</p>
    # @example UpdateCloudConnector happy path for TP Link to update display name
    #   # Example operation for update_cloud_connector
    #   params = {
    #     identifier: "123456789012",
    #     name: "Connector for TP Link Cloud V2"
    #   }
    #   options = {}
    #   response = client.update_cloud_connector(params, options)
    #   response.to_h #=>
    #   {}
    # @example UpdateCloudConnector error Id for Ring connector which does not exist
    #   # Example operation for update_cloud_connector
    #   params = {
    #     identifier: "123456789012",
    #     name: "Connector for Ring Cloud"
    #   }
    #   options = {}
    #   begin
    #     response = client.update_cloud_connector(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ResourceNotFoundException
    #     puts e.data.to_h #=>
    #     {
    #       message: "Connector Resource does not exists",
    #       resource_id: "123456789012",
    #       resource_type: "CloudConnector"
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "CloudConnectorId", # required
    #     name: "DisplayName",
    #     description: "CloudConnectorDescription"
    #   }
    #   options = {}
    #   response = client.update_cloud_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_cloud_connector(params = {}, options = {})
      request = build_request(:update_cloud_connector, params)
      request.send_request(options)
    end

    # <p>Updates the properties of an existing connector destination.</p>
    # @param [Hash, Types::UpdateConnectorDestinationRequest] params
    # @option params [String] :identifier
    #   <p>The unique identifier of the connector destination to update.</p>
    # @option params [String] :description
    #   <p>The new description to assign to the connector destination.</p>
    # @option params [String] :name
    #   <p>The new display name to assign to the connector destination.</p>
    # @option params [String] :auth_type
    #   <p>The new authentication type to use for the connector destination.</p>
    # @option params [Types::AuthConfigUpdate] :auth_config
    #   <p>The updated authentication configuration details for the connector destination.</p>
    # @option params [Types::SecretsManager] :secrets_manager
    #   <p>The updated AWS Secrets Manager configuration for the connector destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ConnectorDestinationId", # required
    #     description: "ConnectorDestinationDescription",
    #     name: "ConnectorDestinationName",
    #     auth_type: "OAUTH" # One of: ["OAUTH"],
    #     auth_config: {
    #       o_auth_update: {
    #         o_auth_complete_redirect_url: "String",
    #         proactive_refresh_token_renewal: {
    #           enabled: false,
    #           days_before_renewal: 1
    #         }
    #       }
    #     },
    #     secrets_manager: {
    #       arn: "SecretsManagerArn", # required
    #       version_id: "SecretsManagerVersionId", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_connector_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_connector_destination(params = {}, options = {})
      request = build_request(:update_connector_destination, params)
      request.send_request(options)
    end

    # <p> Update a destination specified by id. </p>
    # @param [Hash, Types::UpdateDestinationRequest] params
    # @option params [String] :name
    #   <p>The name of the customer-managed destination.</p>
    # @option params [String] :delivery_destination_arn
    #   <p>The Amazon Resource Name (ARN) of the customer-managed destination.</p>
    # @option params [String] :delivery_destination_type
    #   <p>The destination type for the customer-managed destination.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the delivery destination role.</p>
    # @option params [String] :description
    #   <p>The description of the customer-managed destination.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DestinationName", # required
    #     delivery_destination_arn: "DeliveryDestinationArn",
    #     delivery_destination_type: "KINESIS" # One of: ["KINESIS"],
    #     role_arn: "DeliveryDestinationRoleArn",
    #     description: "DestinationDescription"
    #   }
    #   options = {}
    #   response = client.update_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_destination(params = {}, options = {})
      request = build_request(:update_destination, params)
      request.send_request(options)
    end

    # <p>Update an event log configuration by log configuration ID.</p>
    # @param [Hash, Types::UpdateEventLogConfigurationRequest] params
    # @option params [String] :id
    #   <p>The log configuration id.</p>
    # @option params [String] :event_log_level
    #   <p>The log level for the event in terms of severity.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "LogConfigurationId", # required
    #     event_log_level: "DEBUG" # One of: ["DEBUG", "ERROR", "INFO", "WARN"], # required
    #   }
    #   options = {}
    #   response = client.update_event_log_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_event_log_configuration(params = {}, options = {})
      request = build_request(:update_event_log_configuration, params)
      request.send_request(options)
    end

    # <p>Update the attributes and capabilities associated with a managed thing.</p>
    # @param [Hash, Types::UpdateManagedThingRequest] params
    # @option params [String] :identifier
    #   <p>The id of the managed thing.</p>
    # @option params [String] :owner
    #   <p>Owner of the device, usually an indication of whom the device belongs to. This value should not contain personal identifiable information.</p>
    # @option params [String] :credential_locker_id
    #   <p>The identifier of the credential for the managed thing.</p>
    # @option params [String] :serial_number
    #   <p>The serial number of the device.</p>
    # @option params [String] :brand
    #   <p>The brand of the device.</p>
    # @option params [String] :model
    #   <p>The model of the device.</p>
    # @option params [String] :name
    #   <p>The name of the managed thing representing the physical device.</p>
    # @option params [Types::CapabilityReport] :capability_report
    #   <p>A report of the capabilities for the managed thing.</p>
    # @option params [Array<Types::CapabilitySchemaItem>] :capability_schemas
    #   <p>The updated capability schemas that define the functionality and features supported by the managed thing.</p>
    # @option params [String] :capabilities
    #   <p>The capabilities of the device such as light bulb.</p>
    # @option params [String] :classification
    #   <p>The classification of the managed thing such as light bulb or thermostat.</p>
    # @option params [String] :hub_network_mode
    #   <p>The network mode for the hub-connected device.</p>
    # @option params [Hash<String, String>] :meta_data
    #   <p>The metadata for the managed thing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ManagedThingId", # required
    #     owner: "Owner",
    #     credential_locker_id: "CredentialLockerId",
    #     serial_number: "SerialNumber",
    #     brand: "Brand",
    #     model: "Model",
    #     name: "Name",
    #     capability_report: {
    #       version: "CapabilityReportVersion", # required
    #       node_id: "NodeId",
    #       endpoints: [ # required
    #         {
    #           id: "EndpointId", # required
    #           device_types: ["DeviceType"], # required
    #           capabilities: [ # required
    #             {
    #               id: "SchemaVersionedId", # required
    #               name: "CapabilityName", # required
    #               version: "CapabilityVersion", # required
    #               properties: ["PropertyName"], # required
    #               actions: ["ActionName"], # required
    #               events: ["EventName"], # required
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     capability_schemas: [
    #       {
    #         format: "AWS" # One of: ["AWS", "ZCL", "CONNECTOR"], # required
    #         capability_id: "SchemaVersionedId", # required
    #         extrinsic_id: "ExtrinsicSchemaId", # required
    #         extrinsic_version: 1, # required
    #         schema: ""null"", # required
    #       }
    #     ],
    #     capabilities: "Capabilities",
    #     classification: "Classification",
    #     hub_network_mode: "STANDARD" # One of: ["STANDARD", "NETWORK_WIDE_EXCLUSION"],
    #     meta_data: {
    #       "AttributeName" => "AttributeValue"
    #     }
    #   }
    #   options = {}
    #   response = client.update_managed_thing(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_managed_thing(params = {}, options = {})
      request = build_request(:update_managed_thing, params)
      request.send_request(options)
    end

    # <p> Update a notification configuration.</p>
    # @param [Hash, Types::UpdateNotificationConfigurationRequest] params
    # @option params [String] :event_type
    #   <p>The type of event triggering a device notification to the customer-managed destination.</p>
    # @option params [String] :destination_name
    #   <p>The name of the destination for the notification configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     event_type: "DEVICE_COMMAND" # One of: ["DEVICE_COMMAND", "DEVICE_COMMAND_REQUEST", "DEVICE_DISCOVERY_STATUS", "DEVICE_EVENT", "DEVICE_LIFE_CYCLE", "DEVICE_STATE", "DEVICE_OTA", "CONNECTOR_ASSOCIATION", "ACCOUNT_ASSOCIATION", "CONNECTOR_ERROR_REPORT"], # required
    #     destination_name: "DestinationName", # required
    #   }
    #   options = {}
    #   response = client.update_notification_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_notification_configuration(params = {}, options = {})
      request = build_request(:update_notification_configuration, params)
      request.send_request(options)
    end

    # <p>Update an over-the-air (OTA) task.</p>
    # @param [Hash, Types::UpdateOtaTaskRequest] params
    # @option params [String] :identifier
    #   <p>The over-the-air (OTA) task id.</p>
    # @option params [String] :description
    #   <p>The description of the over-the-air (OTA) task.</p>
    # @option params [String] :task_configuration_id
    #   <p>The identifier for the over-the-air (OTA) task configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "OtaTaskId", # required
    #     description: "OtaDescription",
    #     task_configuration_id: "OtaTaskConfigurationId"
    #   }
    #   options = {}
    #   response = client.update_ota_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_ota_task(params = {}, options = {})
      request = build_request(:update_ota_task, params)
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
      context[:gem_name] = 'aws-sdk-iotmanagedintegrations'
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
