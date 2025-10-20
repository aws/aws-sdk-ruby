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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:appfabric)

module Aws::AppFabric
  # An API client for Aws::AppFabric.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::FabricFrontEndService
    @identifier = :appfabric

    add_plugin(::Aws::AppFabric::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::AppFabric::EndpointProvider)
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

    # <p>Gets user access details in a batch request.</p>
    #          <p>This action polls data from the tasks that are kicked off by the
    #             <code>StartUserAccessTasks</code> action.</p>
    # @param [Hash, Types::BatchGetUserAccessTasksRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [Array<String>] :task_id_list
    #   <p>The tasks IDs to use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     task_id_list: ["UUID"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_user_access_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_access_results_list: [
    #       {
    #         app: "String255",
    #         tenant_id: "TenantIdentifier",
    #         tenant_display_name: "String2048",
    #         task_id: "UUID",
    #         result_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED", "EXPIRED"],
    #         email: "Email",
    #         user_id: "SensitiveString2048",
    #         user_full_name: "SensitiveString2048",
    #         user_first_name: "SensitiveString2048",
    #         user_last_name: "SensitiveString2048",
    #         user_status: "String",
    #         task_error: {
    #           error_code: "String",
    #           error_message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetUserAccessTasksResponse]
    def batch_get_user_access_tasks(params = {}, options = {})
      request = build_request(:batch_get_user_access_tasks, params)
      request.send_request(options)
    end

    # <p>Establishes a connection between Amazon Web Services AppFabric and an application, which allows AppFabric to
    #          call the APIs of the application.</p>
    # @param [Hash, Types::ConnectAppAuthorizationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            that contains the app authorization to use for the request.</p>
    # @option params [String] :app_authorization_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app
    #            authorization to use for the request.</p>
    # @option params [Types::AuthRequest] :auth_request
    #   <p>Contains OAuth2 authorization information.</p>
    #            <p>This is required if the app authorization for the request is configured with an OAuth2
    #               (<code>oauth2</code>) authorization type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     app_authorization_identifier: "Identifier", # required
    #     auth_request: {
    #       redirect_uri: "RedirectUri", # required
    #       code: "SensitiveString2048", # required
    #     }
    #   }
    #   options = {}
    #   response = client.connect_app_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_authorization_summary: { # required
    #       app_authorization_arn: "Arn", # required
    #       app_bundle_arn: "Arn", # required
    #       app: "String255", # required
    #       tenant: { # required
    #         tenant_identifier: "TenantIdentifier", # required
    #         tenant_display_name: "String2048", # required
    #       },
    #       status: "PendingConnect" # One of: ["PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"], # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::ConnectAppAuthorizationResponse]
    def connect_app_authorization(params = {}, options = {})
      request = build_request(:connect_app_authorization, params)
      request.send_request(options)
    end

    # <p>Creates an app authorization within an app bundle, which allows AppFabric to connect to an
    #          application.</p>
    # @param [Hash, Types::CreateAppAuthorizationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :app
    #   <p>The name of the application.</p>
    #            <p>Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SLACK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASANA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JIRA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>M365</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>M365AUDITLOGS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZOOM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZENDESK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OKTA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GOOGLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DROPBOX</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMARTSHEET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CISCO</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::Credential] :credential
    #   <p>Contains credentials for the application, such as an API key or OAuth2 client ID and
    #            secret.</p>
    #            <p>Specify credentials that match the authorization type for your request. For example, if
    #            the authorization type for your request is OAuth2 (<code>oauth2</code>), then you should
    #            provide only the OAuth2 credentials.</p>
    # @option params [Types::Tenant] :tenant
    #   <p>Contains information about an application tenant, such as the application display name
    #            and identifier.</p>
    # @option params [String] :auth_type
    #   <p>The authorization type for the app authorization.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency
    #            of the request. This lets you safely retry the request without accidentally performing the
    #            same operation a second time. Passing the same value to a later call to an operation
    #            requires that you also pass the same value for all other parameters. We recommend that you
    #            use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #               value</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #            you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with different
    #            parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     app: "String255", # required
    #     credential: { # required
    #       # One of:
    #       oauth2_credential: {
    #         client_id: "String2048", # required
    #         client_secret: "SensitiveString2048", # required
    #       },
    #       api_key_credential: {
    #         api_key: "SensitiveString2048", # required
    #       }
    #     },
    #     tenant: { # required
    #       tenant_identifier: "TenantIdentifier", # required
    #       tenant_display_name: "String2048", # required
    #     },
    #     auth_type: "oauth2" # One of: ["oauth2", "apiKey"], # required
    #     client_token: "UUID",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_app_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_authorization: { # required
    #       app_authorization_arn: "Arn", # required
    #       app_bundle_arn: "Arn", # required
    #       app: "String255", # required
    #       tenant: { # required
    #         tenant_identifier: "TenantIdentifier", # required
    #         tenant_display_name: "String2048", # required
    #       },
    #       auth_type: "oauth2" # One of: ["oauth2", "apiKey"], # required
    #       status: "PendingConnect" # One of: ["PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       persona: "admin" # One of: ["admin", "endUser"],
    #       auth_url: "String"
    #     }
    #   }
    # @return [Types::CreateAppAuthorizationResponse]
    def create_app_authorization(params = {}, options = {})
      request = build_request(:create_app_authorization, params)
      request.send_request(options)
    end

    # <p>Creates an app bundle to collect data from an application using AppFabric.</p>
    # @param [Hash, Types::CreateAppBundleRequest] params
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency
    #            of the request. This lets you safely retry the request without accidentally performing the
    #            same operation a second time. Passing the same value to a later call to an operation
    #            requires that you also pass the same value for all other parameters. We recommend that you
    #            use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #               value</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #            you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with different
    #            parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [String] :customer_managed_key_identifier
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service (KMS) key to
    #            use to encrypt the application data. If this is not specified, an Amazon Web Services owned key is used for encryption.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "UUID",
    #     customer_managed_key_identifier: "Identifier",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_app_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_bundle: { # required
    #       arn: "Arn", # required
    #       customer_managed_key_arn: "Arn"
    #     }
    #   }
    # @return [Types::CreateAppBundleResponse]
    def create_app_bundle(params = {}, options = {})
      request = build_request(:create_app_bundle, params)
      request.send_request(options)
    end

    # <p>Creates a data ingestion for an application.</p>
    # @param [Hash, Types::CreateIngestionRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :app
    #   <p>The name of the application.</p>
    #            <p>Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SLACK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ASANA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>JIRA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>M365</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>M365AUDITLOGS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZOOM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZENDESK</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OKTA</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GOOGLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DROPBOX</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMARTSHEET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CISCO</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [String] :tenant_id
    #   <p>The ID of the application tenant.</p>
    # @option params [String] :ingestion_type
    #   <p>The ingestion type.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency
    #            of the request. This lets you safely retry the request without accidentally performing the
    #            same operation a second time. Passing the same value to a later call to an operation
    #            requires that you also pass the same value for all other parameters. We recommend that you
    #            use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #               value</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #            you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with different
    #            parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     app: "String255", # required
    #     tenant_id: "TenantIdentifier", # required
    #     ingestion_type: "auditLog" # One of: ["auditLog"], # required
    #     client_token: "UUID",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ingestion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion: { # required
    #       arn: "Arn", # required
    #       app_bundle_arn: "Arn", # required
    #       app: "String255", # required
    #       tenant_id: "TenantIdentifier", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       state: "enabled" # One of: ["enabled", "disabled"], # required
    #       ingestion_type: "auditLog" # One of: ["auditLog"], # required
    #     }
    #   }
    # @return [Types::CreateIngestionResponse]
    def create_ingestion(params = {}, options = {})
      request = build_request(:create_ingestion, params)
      request.send_request(options)
    end

    # <p>Creates an ingestion destination, which specifies how an application's ingested data is
    #          processed by Amazon Web Services AppFabric and where it's delivered.</p>
    # @param [Hash, Types::CreateIngestionDestinationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @option params [Types::ProcessingConfiguration] :processing_configuration
    #   <p>Contains information about how ingested data is processed.</p>
    # @option params [Types::DestinationConfiguration] :destination_configuration
    #   <p>Contains information about the destination of ingested data.</p>
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency
    #            of the request. This lets you safely retry the request without accidentally performing the
    #            same operation a second time. Passing the same value to a later call to an operation
    #            requires that you also pass the same value for all other parameters. We recommend that you
    #            use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #               value</a>.</p>
    #            <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #            you.</p>
    #            <p>If you retry the operation with the same <code>ClientToken</code>, but with different
    #            parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     processing_configuration: { # required
    #       # One of:
    #       audit_log: {
    #         schema: "ocsf" # One of: ["ocsf", "raw"], # required
    #         format: "json" # One of: ["json", "parquet"], # required
    #       }
    #     },
    #     destination_configuration: { # required
    #       # One of:
    #       audit_log: {
    #         destination: { # required
    #           # One of:
    #           s3_bucket: {
    #             bucket_name: "String63", # required
    #             prefix: "String120"
    #           },
    #           firehose_stream: {
    #             stream_name: "String64", # required
    #           }
    #         }
    #       }
    #     },
    #     client_token: "UUID",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_ingestion_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion_destination: { # required
    #       arn: "Arn", # required
    #       ingestion_arn: "Arn", # required
    #       processing_configuration: { # required
    #         # One of:
    #         audit_log: {
    #           schema: "ocsf" # One of: ["ocsf", "raw"], # required
    #           format: "json" # One of: ["json", "parquet"], # required
    #         }
    #       },
    #       destination_configuration: { # required
    #         # One of:
    #         audit_log: {
    #           destination: { # required
    #             # One of:
    #             s3_bucket: {
    #               bucket_name: "String63", # required
    #               prefix: "String120"
    #             },
    #             firehose_stream: {
    #               stream_name: "String64", # required
    #             }
    #           }
    #         }
    #       },
    #       status: "Active" # One of: ["Active", "Failed"],
    #       status_reason: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateIngestionDestinationResponse]
    def create_ingestion_destination(params = {}, options = {})
      request = build_request(:create_ingestion_destination, params)
      request.send_request(options)
    end

    # <p>Deletes an app authorization. You must delete the associated ingestion before you can
    #          delete an app authorization.</p>
    # @param [Hash, Types::DeleteAppAuthorizationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :app_authorization_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app
    #            authorization to use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     app_authorization_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_app_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppAuthorizationResponse]
    def delete_app_authorization(params = {}, options = {})
      request = build_request(:delete_app_authorization, params)
      request.send_request(options)
    end

    # <p>Deletes an app bundle. You must delete all associated app authorizations before you can
    #          delete an app bundle.</p>
    # @param [Hash, Types::DeleteAppBundleRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The ID or Amazon Resource Name (ARN) of the app bundle that needs to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_app_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAppBundleResponse]
    def delete_app_bundle(params = {}, options = {})
      request = build_request(:delete_app_bundle, params)
      request.send_request(options)
    end

    # <p>Deletes an ingestion. You must stop (disable) the ingestion and you must delete all
    #          associated ingestion destinations before you can delete an app ingestion.</p>
    # @param [Hash, Types::DeleteIngestionRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_ingestion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIngestionResponse]
    def delete_ingestion(params = {}, options = {})
      request = build_request(:delete_ingestion, params)
      request.send_request(options)
    end

    # <p>Deletes an ingestion destination.</p>
    #          <p>This deletes the association between an ingestion and it's destination. It doesn't
    #          delete previously ingested data or the storage destination, such as the Amazon S3
    #          bucket where the data is delivered. If the ingestion destination is deleted while the
    #          associated ingestion is enabled, the ingestion will fail and is eventually disabled.</p>
    # @param [Hash, Types::DeleteIngestionDestinationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @option params [String] :ingestion_destination_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion
    #            destination to use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     ingestion_destination_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_ingestion_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIngestionDestinationResponse]
    def delete_ingestion_destination(params = {}, options = {})
      request = build_request(:delete_ingestion_destination, params)
      request.send_request(options)
    end

    # <p>Returns information about an app authorization.</p>
    # @param [Hash, Types::GetAppAuthorizationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :app_authorization_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app
    #            authorization to use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     app_authorization_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_app_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_authorization: { # required
    #       app_authorization_arn: "Arn", # required
    #       app_bundle_arn: "Arn", # required
    #       app: "String255", # required
    #       tenant: { # required
    #         tenant_identifier: "TenantIdentifier", # required
    #         tenant_display_name: "String2048", # required
    #       },
    #       auth_type: "oauth2" # One of: ["oauth2", "apiKey"], # required
    #       status: "PendingConnect" # One of: ["PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       persona: "admin" # One of: ["admin", "endUser"],
    #       auth_url: "String"
    #     }
    #   }
    # @return [Types::GetAppAuthorizationResponse]
    def get_app_authorization(params = {}, options = {})
      request = build_request(:get_app_authorization, params)
      request.send_request(options)
    end

    # <p>Returns information about an app bundle.</p>
    # @param [Hash, Types::GetAppBundleRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_app_bundle(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_bundle: { # required
    #       arn: "Arn", # required
    #       customer_managed_key_arn: "Arn"
    #     }
    #   }
    # @return [Types::GetAppBundleResponse]
    def get_app_bundle(params = {}, options = {})
      request = build_request(:get_app_bundle, params)
      request.send_request(options)
    end

    # <p>Returns information about an ingestion.</p>
    # @param [Hash, Types::GetIngestionRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_ingestion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion: { # required
    #       arn: "Arn", # required
    #       app_bundle_arn: "Arn", # required
    #       app: "String255", # required
    #       tenant_id: "TenantIdentifier", # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       state: "enabled" # One of: ["enabled", "disabled"], # required
    #       ingestion_type: "auditLog" # One of: ["auditLog"], # required
    #     }
    #   }
    # @return [Types::GetIngestionResponse]
    def get_ingestion(params = {}, options = {})
      request = build_request(:get_ingestion, params)
      request.send_request(options)
    end

    # <p>Returns information about an ingestion destination.</p>
    # @param [Hash, Types::GetIngestionDestinationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @option params [String] :ingestion_destination_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion
    #            destination to use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     ingestion_destination_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_ingestion_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion_destination: { # required
    #       arn: "Arn", # required
    #       ingestion_arn: "Arn", # required
    #       processing_configuration: { # required
    #         # One of:
    #         audit_log: {
    #           schema: "ocsf" # One of: ["ocsf", "raw"], # required
    #           format: "json" # One of: ["json", "parquet"], # required
    #         }
    #       },
    #       destination_configuration: { # required
    #         # One of:
    #         audit_log: {
    #           destination: { # required
    #             # One of:
    #             s3_bucket: {
    #               bucket_name: "String63", # required
    #               prefix: "String120"
    #             },
    #             firehose_stream: {
    #               stream_name: "String64", # required
    #             }
    #           }
    #         }
    #       },
    #       status: "Active" # One of: ["Active", "Failed"],
    #       status_reason: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::GetIngestionDestinationResponse]
    def get_ingestion_destination(params = {}, options = {})
      request = build_request(:get_ingestion_destination, params)
      request.send_request(options)
    end

    # <p>Returns a list of all app authorizations configured for an app bundle.</p>
    # @param [Hash, Types::ListAppAuthorizationsRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>nextToken</code> to obtain further pages of results.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be
    #            fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     max_results: 1,
    #     next_token: "String2048"
    #   }
    #   options = {}
    #   response = client.list_app_authorizations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_authorization_summary_list: [ # required
    #       {
    #         app_authorization_arn: "Arn", # required
    #         app_bundle_arn: "Arn", # required
    #         app: "String255", # required
    #         tenant: { # required
    #           tenant_identifier: "TenantIdentifier", # required
    #           tenant_display_name: "String2048", # required
    #         },
    #         status: "PendingConnect" # One of: ["PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"], # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "String2048"
    #   }
    # @return [Types::ListAppAuthorizationsResponse]
    def list_app_authorizations(params = {}, options = {})
      request = build_request(:list_app_authorizations, params)
      request.send_request(options)
    end

    # <p>Returns a list of app bundles.</p>
    # @param [Hash, Types::ListAppBundlesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>nextToken</code> to obtain further pages of results.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be
    #            fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String2048"
    #   }
    #   options = {}
    #   response = client.list_app_bundles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_bundle_summary_list: [ # required
    #       {
    #         arn: "Arn", # required
    #       }
    #     ],
    #     next_token: "String2048"
    #   }
    # @return [Types::ListAppBundlesResponse]
    def list_app_bundles(params = {}, options = {})
      request = build_request(:list_app_bundles, params)
      request.send_request(options)
    end

    # <p>Returns a list of all ingestion destinations configured for an ingestion.</p>
    # @param [Hash, Types::ListIngestionDestinationsRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>nextToken</code> to obtain further pages of results.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be
    #            fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_ingestion_destinations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion_destinations: [ # required
    #       {
    #         arn: "Arn", # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListIngestionDestinationsResponse]
    def list_ingestion_destinations(params = {}, options = {})
      request = build_request(:list_ingestion_destinations, params)
      request.send_request(options)
    end

    # <p>Returns a list of all ingestions configured for an app bundle.</p>
    # @param [Hash, Types::ListIngestionsRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>nextToken</code> to obtain further pages of results.</p>
    #            <p>This is only an upper limit. The actual number of results returned per call might be
    #            fewer than the specified maximum.</p>
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of
    #               <code>nextToken</code> is a unique pagination token for each page. Make the call again
    #            using the returned token to retrieve the next page. Keep all other arguments unchanged.
    #            Each pagination token expires after 24 hours. Using an expired pagination token will return
    #            an <i>HTTP 400 InvalidToken error</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_ingestions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestions: [ # required
    #       {
    #         arn: "Arn", # required
    #         app: "String255", # required
    #         tenant_id: "TenantIdentifier", # required
    #         state: "enabled" # One of: ["enabled", "disabled"], # required
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListIngestionsResponse]
    def list_ingestions(params = {}, options = {})
      request = build_request(:list_ingestions, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve
    #            tags.</p>
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

    # <p>Starts (enables) an ingestion, which collects data from an application.</p>
    # @param [Hash, Types::StartIngestionRequest] params
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ingestion_identifier: "Identifier", # required
    #     app_bundle_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.start_ingestion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartIngestionResponse]
    def start_ingestion(params = {}, options = {})
      request = build_request(:start_ingestion, params)
      request.send_request(options)
    end

    # <p>Starts the tasks to search user access status for a specific email address.</p>
    #          <p>The tasks are stopped when the user access status data is found. The tasks are
    #          terminated when the API calls to the application time out.</p>
    # @param [Hash, Types::StartUserAccessTasksRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :email
    #   <p>The email address of the target user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     email: "Email", # required
    #   }
    #   options = {}
    #   response = client.start_user_access_tasks(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_access_tasks_list: [
    #       {
    #         app: "String255", # required
    #         tenant_id: "TenantIdentifier", # required
    #         task_id: "UUID",
    #         error: {
    #           error_code: "String",
    #           error_message: "String"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::StartUserAccessTasksResponse]
    def start_user_access_tasks(params = {}, options = {})
      request = build_request(:start_user_access_tasks, params)
      request.send_request(options)
    end

    # <p>Stops (disables) an ingestion.</p>
    # @param [Hash, Types::StopIngestionRequest] params
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ingestion_identifier: "Identifier", # required
    #     app_bundle_identifier: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.stop_ingestion(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopIngestionResponse]
    def stop_ingestion(params = {}, options = {})
      request = build_request(:stop_ingestion, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
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

    # <p>Removes a tag or tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the key-value pairs for the tag or tags you want to remove from the
    #            specified resource.</p>
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

    # <p>Updates an app authorization within an app bundle, which allows AppFabric to connect to an
    #          application.</p>
    #          <p>If the app authorization was in a <code>connected</code> state, updating the app
    #          authorization will set it back to a <code>PendingConnect</code> state.</p>
    # @param [Hash, Types::UpdateAppAuthorizationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :app_authorization_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app
    #            authorization to use for the request.</p>
    # @option params [Types::Credential] :credential
    #   <p>Contains credentials for the application, such as an API key or OAuth2 client ID and
    #            secret.</p>
    #            <p>Specify credentials that match the authorization type of the app authorization to
    #            update. For example, if the authorization type of the app authorization is OAuth2
    #               (<code>oauth2</code>), then you should provide only the OAuth2 credentials.</p>
    # @option params [Types::Tenant] :tenant
    #   <p>Contains information about an application tenant, such as the application display name
    #            and identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     app_authorization_identifier: "Identifier", # required
    #     credential: {
    #       # One of:
    #       oauth2_credential: {
    #         client_id: "String2048", # required
    #         client_secret: "SensitiveString2048", # required
    #       },
    #       api_key_credential: {
    #         api_key: "SensitiveString2048", # required
    #       }
    #     },
    #     tenant: {
    #       tenant_identifier: "TenantIdentifier", # required
    #       tenant_display_name: "String2048", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_app_authorization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_authorization: { # required
    #       app_authorization_arn: "Arn", # required
    #       app_bundle_arn: "Arn", # required
    #       app: "String255", # required
    #       tenant: { # required
    #         tenant_identifier: "TenantIdentifier", # required
    #         tenant_display_name: "String2048", # required
    #       },
    #       auth_type: "oauth2" # One of: ["oauth2", "apiKey"], # required
    #       status: "PendingConnect" # One of: ["PendingConnect", "Connected", "ConnectionValidationFailed", "TokenAutoRotationFailed"], # required
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       persona: "admin" # One of: ["admin", "endUser"],
    #       auth_url: "String"
    #     }
    #   }
    # @return [Types::UpdateAppAuthorizationResponse]
    def update_app_authorization(params = {}, options = {})
      request = build_request(:update_app_authorization, params)
      request.send_request(options)
    end

    # <p>Updates an ingestion destination, which specifies how an application's ingested data is
    #          processed by Amazon Web Services AppFabric and where it's delivered.</p>
    # @param [Hash, Types::UpdateIngestionDestinationRequest] params
    # @option params [String] :app_bundle_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app bundle
    #            to use for the request.</p>
    # @option params [String] :ingestion_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion to
    #            use for the request.</p>
    # @option params [String] :ingestion_destination_identifier
    #   <p>The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the ingestion
    #            destination to use for the request.</p>
    # @option params [Types::DestinationConfiguration] :destination_configuration
    #   <p>Contains information about the destination of ingested data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_bundle_identifier: "Identifier", # required
    #     ingestion_identifier: "Identifier", # required
    #     ingestion_destination_identifier: "Identifier", # required
    #     destination_configuration: { # required
    #       # One of:
    #       audit_log: {
    #         destination: { # required
    #           # One of:
    #           s3_bucket: {
    #             bucket_name: "String63", # required
    #             prefix: "String120"
    #           },
    #           firehose_stream: {
    #             stream_name: "String64", # required
    #           }
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_ingestion_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ingestion_destination: { # required
    #       arn: "Arn", # required
    #       ingestion_arn: "Arn", # required
    #       processing_configuration: { # required
    #         # One of:
    #         audit_log: {
    #           schema: "ocsf" # One of: ["ocsf", "raw"], # required
    #           format: "json" # One of: ["json", "parquet"], # required
    #         }
    #       },
    #       destination_configuration: { # required
    #         # One of:
    #         audit_log: {
    #           destination: { # required
    #             # One of:
    #             s3_bucket: {
    #               bucket_name: "String63", # required
    #               prefix: "String120"
    #             },
    #             firehose_stream: {
    #               stream_name: "String64", # required
    #             }
    #           }
    #         }
    #       },
    #       status: "Active" # One of: ["Active", "Failed"],
    #       status_reason: "String",
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateIngestionDestinationResponse]
    def update_ingestion_destination(params = {}, options = {})
      request = build_request(:update_ingestion_destination, params)
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
      context[:gem_name] = 'aws-sdk-appfabric'
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
