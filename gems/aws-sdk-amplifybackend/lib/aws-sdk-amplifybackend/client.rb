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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::AmplifyBackend
  # An API client for Aws::AmplifyBackend.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmplifyBackend

    add_plugin(::Aws::AmplifyBackend::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::AmplifyBackend::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>This operation clones an existing backend.</p>
    # @param [Hash, Types::CloneBackendRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :target_environment_name
    #   <p>The name of the destination backend environment to be created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     target_environment_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.clone_backend(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::CloneBackendResponse]
    def clone_backend(params = {}, options = {})
      request = build_request(:clone_backend, params)
      request.send_request(options)
    end

    # <p>This operation creates a backend for an Amplify app. Backends are automatically created at the time of app creation.</p>
    # @param [Hash, Types::CreateBackendRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :app_name
    #   <p>The name of the app.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::ResourceConfig] :resource_config
    #   <p>The resource configuration for creating a backend.</p>
    # @option params [String] :resource_name
    #   <p>The name of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     app_name: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: {
    #     },
    #     resource_name: "__string"
    #   }
    #   options = {}
    #   response = client.create_backend(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::CreateBackendResponse]
    def create_backend(params = {}, options = {})
      request = build_request(:create_backend, params)
      request.send_request(options)
    end

    # <p>Creates a new backend API resource.</p>
    # @param [Hash, Types::CreateBackendAPIRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::BackendAPIResourceConfig] :resource_config
    #   <p>The resource configuration for this request.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string"
    #           }
    #         }
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string"
    #         }
    #       },
    #       service: "__string",
    #       transform_schema: "__string"
    #     },
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_backend_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::CreateBackendAPIResponse]
    def create_backend_api(params = {}, options = {})
      request = build_request(:create_backend_api, params)
      request.send_request(options)
    end

    # <p>Creates a new backend authentication resource.</p>
    # @param [Hash, Types::CreateBackendAuthRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::CreateBackendAuthResourceConfig] :resource_config
    #   <p>The resource configuration for this request object.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       auth_resources: "USER_POOL_ONLY" # One of: ["USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"], # required
    #       identity_pool_configs: {
    #         identity_pool_name: "__string", # required
    #         unauthenticated_login: false, # required
    #       },
    #       service: "COGNITO" # One of: ["COGNITO"], # required
    #       user_pool_configs: { # required
    #         forgot_password: {
    #           delivery_method: "EMAIL" # One of: ["EMAIL", "SMS"], # required
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string"
    #           },
    #           sms_settings: {
    #             sms_message: "__string"
    #           }
    #         },
    #         mfa: {
    #           mfa_mode: "ON" # One of: ["ON", "OFF", "OPTIONAL"], # required
    #           settings: {
    #             mfa_types: ["SMS" # One of: ["SMS", "TOTP"]],
    #             sms_message: "__string"
    #           }
    #         },
    #         o_auth: {
    #           domain_prefix: "__string",
    #           o_auth_grant_type: "CODE" # One of: ["CODE", "IMPLICIT"], # required
    #           o_auth_scopes: ["PHONE" # One of: ["PHONE", "EMAIL", "OPENID", "PROFILE", "AWS_COGNITO_SIGNIN_USER_ADMIN"]], # required
    #           redirect_sign_in_ur_is: ["__string"], # required
    #           redirect_sign_out_ur_is: ["__string"], # required
    #           social_provider_settings: {
    #             facebook: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             google: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             login_with_amazon: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             sign_in_with_apple: {
    #               client_id: "__string",
    #               key_id: "__string",
    #               private_key: "__string",
    #               team_id: "__string"
    #             }
    #           }
    #         },
    #         password_policy: {
    #           additional_constraints: ["REQUIRE_DIGIT" # One of: ["REQUIRE_DIGIT", "REQUIRE_LOWERCASE", "REQUIRE_SYMBOL", "REQUIRE_UPPERCASE"]],
    #           minimum_length: 1.0, # required
    #         },
    #         required_sign_up_attributes: ["ADDRESS" # One of: ["ADDRESS", "BIRTHDATE", "EMAIL", "FAMILY_NAME", "GENDER", "GIVEN_NAME", "LOCALE", "MIDDLE_NAME", "NAME", "NICKNAME", "PHONE_NUMBER", "PICTURE", "PREFERRED_USERNAME", "PROFILE", "UPDATED_AT", "WEBSITE", "ZONE_INFO"]], # required
    #         sign_in_method: "EMAIL" # One of: ["EMAIL", "EMAIL_AND_PHONE_NUMBER", "PHONE_NUMBER", "USERNAME"], # required
    #         user_pool_name: "__string", # required
    #         verification_message: {
    #           delivery_method: "EMAIL" # One of: ["EMAIL", "SMS"], # required
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string"
    #           },
    #           sms_settings: {
    #             sms_message: "__string"
    #           }
    #         }
    #       }
    #     },
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_backend_auth(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::CreateBackendAuthResponse]
    def create_backend_auth(params = {}, options = {})
      request = build_request(:create_backend_auth, params)
      request.send_request(options)
    end

    # <p>Creates a config object for a backend.</p>
    # @param [Hash, Types::CreateBackendConfigRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_manager_app_id
    #   <p>The app ID for the backend manager.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_manager_app_id: "__string"
    #   }
    #   options = {}
    #   response = client.create_backend_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     job_id: "__string",
    #     status: "__string"
    #   }
    # @return [Types::CreateBackendConfigResponse]
    def create_backend_config(params = {}, options = {})
      request = build_request(:create_backend_config, params)
      request.send_request(options)
    end

    # <p>Creates a backend storage resource.</p>
    # @param [Hash, Types::CreateBackendStorageRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::CreateBackendStorageResourceConfig] :resource_config
    #   <p>The resource configuration for creating backend storage.</p>
    # @option params [String] :resource_name
    #   <p>The name of the storage resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       bucket_name: "__string",
    #       permissions: { # required
    #         authenticated: ["READ" # One of: ["READ", "CREATE_AND_UPDATE", "DELETE"]], # required
    #         un_authenticated: ["READ" # One of: ["READ", "CREATE_AND_UPDATE", "DELETE"]]
    #       },
    #       service_name: "S3" # One of: ["S3"], # required
    #     },
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_backend_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     job_id: "__string",
    #     status: "__string"
    #   }
    # @return [Types::CreateBackendStorageResponse]
    def create_backend_storage(params = {}, options = {})
      request = build_request(:create_backend_storage, params)
      request.send_request(options)
    end

    # <p>Generates a one-time challenge code to authenticate a user into your Amplify Admin UI.</p>
    # @param [Hash, Types::CreateTokenRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.create_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     challenge_code: "__string",
    #     session_id: "__string",
    #     ttl: "__string"
    #   }
    # @return [Types::CreateTokenResponse]
    def create_token(params = {}, options = {})
      request = build_request(:create_token, params)
      request.send_request(options)
    end

    # <p>Removes an existing environment from your Amplify project.</p>
    # @param [Hash, Types::DeleteBackendRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_backend(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::DeleteBackendResponse]
    def delete_backend(params = {}, options = {})
      request = build_request(:delete_backend, params)
      request.send_request(options)
    end

    # <p>Deletes an existing backend API resource.</p>
    # @param [Hash, Types::DeleteBackendAPIRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::BackendAPIResourceConfig] :resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string"
    #           }
    #         }
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string"
    #         }
    #       },
    #       service: "__string",
    #       transform_schema: "__string"
    #     },
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_backend_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::DeleteBackendAPIResponse]
    def delete_backend_api(params = {}, options = {})
      request = build_request(:delete_backend_api, params)
      request.send_request(options)
    end

    # <p>Deletes an existing backend authentication resource.</p>
    # @param [Hash, Types::DeleteBackendAuthRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_backend_auth(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::DeleteBackendAuthResponse]
    def delete_backend_auth(params = {}, options = {})
      request = build_request(:delete_backend_auth, params)
      request.send_request(options)
    end

    # <p>Removes the specified backend storage resource.</p>
    # @param [Hash, Types::DeleteBackendStorageRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :resource_name
    #   <p>The name of the storage resource.</p>
    # @option params [String] :service_name
    #   <p>The name of the storage service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #     service_name: "S3" # One of: ["S3"], # required
    #   }
    #   options = {}
    #   response = client.delete_backend_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     job_id: "__string",
    #     status: "__string"
    #   }
    # @return [Types::DeleteBackendStorageResponse]
    def delete_backend_storage(params = {}, options = {})
      request = build_request(:delete_backend_storage, params)
      request.send_request(options)
    end

    # <p>Deletes the challenge token based on the given appId and sessionId.</p>
    # @param [Hash, Types::DeleteTokenRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     session_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.delete_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     is_success: false
    #   }
    # @return [Types::DeleteTokenResponse]
    def delete_token(params = {}, options = {})
      request = build_request(:delete_token, params)
      request.send_request(options)
    end

    # <p>Generates a model schema for an existing backend API resource.</p>
    # @param [Hash, Types::GenerateBackendAPIModelsRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.generate_backend_api_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::GenerateBackendAPIModelsResponse]
    def generate_backend_api_models(params = {}, options = {})
      request = build_request(:generate_backend_api_models, params)
      request.send_request(options)
    end

    # <p>Provides project-level details for your Amplify UI project.</p>
    # @param [Hash, Types::GetBackendRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string"
    #   }
    #   options = {}
    #   response = client.get_backend(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     amplify_feature_flags: "__string",
    #     amplify_meta_config: "__string",
    #     app_id: "__string",
    #     app_name: "__string",
    #     backend_environment_list: ["__string"],
    #     backend_environment_name: "__string",
    #     error: "__string"
    #   }
    # @return [Types::GetBackendResponse]
    def get_backend(params = {}, options = {})
      request = build_request(:get_backend, params)
      request.send_request(options)
    end

    # <p>Gets the details for a backend API.</p>
    # @param [Hash, Types::GetBackendAPIRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::BackendAPIResourceConfig] :resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string"
    #           }
    #         }
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string"
    #         }
    #       },
    #       service: "__string",
    #       transform_schema: "__string"
    #     },
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_backend_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string"
    #           }
    #         }
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string"
    #         }
    #       },
    #       service: "__string",
    #       transform_schema: "__string"
    #     },
    #     resource_name: "__string"
    #   }
    # @return [Types::GetBackendAPIResponse]
    def get_backend_api(params = {}, options = {})
      request = build_request(:get_backend_api, params)
      request.send_request(options)
    end

    # <p>Gets a model introspection schema for an existing backend API resource.</p>
    # @param [Hash, Types::GetBackendAPIModelsRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_backend_api_models(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     models: "__string",
    #     status: "LATEST" # One of: ["LATEST", "STALE"],
    #     model_introspection_schema: "__string"
    #   }
    # @return [Types::GetBackendAPIModelsResponse]
    def get_backend_api_models(params = {}, options = {})
      request = build_request(:get_backend_api_models, params)
      request.send_request(options)
    end

    # <p>Gets a backend auth details.</p>
    # @param [Hash, Types::GetBackendAuthRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_backend_auth(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     resource_config: {
    #       auth_resources: "USER_POOL_ONLY" # One of: ["USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"], # required
    #       identity_pool_configs: {
    #         identity_pool_name: "__string", # required
    #         unauthenticated_login: false, # required
    #       },
    #       service: "COGNITO" # One of: ["COGNITO"], # required
    #       user_pool_configs: { # required
    #         forgot_password: {
    #           delivery_method: "EMAIL" # One of: ["EMAIL", "SMS"], # required
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string"
    #           },
    #           sms_settings: {
    #             sms_message: "__string"
    #           }
    #         },
    #         mfa: {
    #           mfa_mode: "ON" # One of: ["ON", "OFF", "OPTIONAL"], # required
    #           settings: {
    #             mfa_types: ["SMS" # One of: ["SMS", "TOTP"]],
    #             sms_message: "__string"
    #           }
    #         },
    #         o_auth: {
    #           domain_prefix: "__string",
    #           o_auth_grant_type: "CODE" # One of: ["CODE", "IMPLICIT"], # required
    #           o_auth_scopes: ["PHONE" # One of: ["PHONE", "EMAIL", "OPENID", "PROFILE", "AWS_COGNITO_SIGNIN_USER_ADMIN"]], # required
    #           redirect_sign_in_ur_is: ["__string"], # required
    #           redirect_sign_out_ur_is: ["__string"], # required
    #           social_provider_settings: {
    #             facebook: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             google: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             login_with_amazon: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             sign_in_with_apple: {
    #               client_id: "__string",
    #               key_id: "__string",
    #               private_key: "__string",
    #               team_id: "__string"
    #             }
    #           }
    #         },
    #         password_policy: {
    #           additional_constraints: ["REQUIRE_DIGIT" # One of: ["REQUIRE_DIGIT", "REQUIRE_LOWERCASE", "REQUIRE_SYMBOL", "REQUIRE_UPPERCASE"]],
    #           minimum_length: 1.0, # required
    #         },
    #         required_sign_up_attributes: ["ADDRESS" # One of: ["ADDRESS", "BIRTHDATE", "EMAIL", "FAMILY_NAME", "GENDER", "GIVEN_NAME", "LOCALE", "MIDDLE_NAME", "NAME", "NICKNAME", "PHONE_NUMBER", "PICTURE", "PREFERRED_USERNAME", "PROFILE", "UPDATED_AT", "WEBSITE", "ZONE_INFO"]], # required
    #         sign_in_method: "EMAIL" # One of: ["EMAIL", "EMAIL_AND_PHONE_NUMBER", "PHONE_NUMBER", "USERNAME"], # required
    #         user_pool_name: "__string", # required
    #         verification_message: {
    #           delivery_method: "EMAIL" # One of: ["EMAIL", "SMS"], # required
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string"
    #           },
    #           sms_settings: {
    #             sms_message: "__string"
    #           }
    #         }
    #       }
    #     },
    #     resource_name: "__string"
    #   }
    # @return [Types::GetBackendAuthResponse]
    def get_backend_auth(params = {}, options = {})
      request = build_request(:get_backend_auth, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific job.</p>
    # @param [Hash, Types::GetBackendJobRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :job_id
    #   <p>The ID for the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     job_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_backend_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     create_time: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string",
    #     update_time: "__string"
    #   }
    # @return [Types::GetBackendJobResponse]
    def get_backend_job(params = {}, options = {})
      request = build_request(:get_backend_job, params)
      request.send_request(options)
    end

    # <p>Gets details for a backend storage resource.</p>
    # @param [Hash, Types::GetBackendStorageRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :resource_name
    #   <p>The name of the storage resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_backend_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     resource_config: {
    #       bucket_name: "__string",
    #       imported: false, # required
    #       permissions: {
    #         authenticated: ["READ" # One of: ["READ", "CREATE_AND_UPDATE", "DELETE"]], # required
    #         un_authenticated: ["READ" # One of: ["READ", "CREATE_AND_UPDATE", "DELETE"]]
    #       },
    #       service_name: "S3" # One of: ["S3"], # required
    #     },
    #     resource_name: "__string"
    #   }
    # @return [Types::GetBackendStorageResponse]
    def get_backend_storage(params = {}, options = {})
      request = build_request(:get_backend_storage, params)
      request.send_request(options)
    end

    # <p>Gets the challenge token based on the given appId and sessionId.</p>
    # @param [Hash, Types::GetTokenRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :session_id
    #   <p>The session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     session_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.get_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     challenge_code: "__string",
    #     session_id: "__string",
    #     ttl: "__string"
    #   }
    # @return [Types::GetTokenResponse]
    def get_token(params = {}, options = {})
      request = build_request(:get_token, params)
      request.send_request(options)
    end

    # <p>Imports an existing backend authentication resource.</p>
    # @param [Hash, Types::ImportBackendAuthRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :identity_pool_id
    #   <p>The ID of the Amazon Cognito identity pool.</p>
    # @option params [String] :native_client_id
    #   <p>The ID of the Amazon Cognito native client.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the Amazon Cognito user pool.</p>
    # @option params [String] :web_client_id
    #   <p>The ID of the Amazon Cognito web client.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     identity_pool_id: "__string",
    #     native_client_id: "__string", # required
    #     user_pool_id: "__string", # required
    #     web_client_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.import_backend_auth(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::ImportBackendAuthResponse]
    def import_backend_auth(params = {}, options = {})
      request = build_request(:import_backend_auth, params)
      request.send_request(options)
    end

    # <p>Imports an existing backend storage resource.</p>
    # @param [Hash, Types::ImportBackendStorageRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :bucket_name
    #   <p>The name of the S3 bucket.</p>
    # @option params [String] :service_name
    #   <p>The name of the storage service.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     bucket_name: "__string",
    #     service_name: "S3" # One of: ["S3"], # required
    #   }
    #   options = {}
    #   response = client.import_backend_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     job_id: "__string",
    #     status: "__string"
    #   }
    # @return [Types::ImportBackendStorageResponse]
    def import_backend_storage(params = {}, options = {})
      request = build_request(:import_backend_storage, params)
      request.send_request(options)
    end

    # <p>Lists the jobs for the backend of an Amplify app.</p>
    # @param [Hash, Types::ListBackendJobsRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :job_id
    #   <p>The ID for the job.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want in the response.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    # @option params [String] :operation
    #   <p>Filters the list of response objects to include only those with the specified operation name.</p>
    # @option params [String] :status
    #   <p>Filters the list of response objects to include only those with the specified status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     job_id: "__string",
    #     max_results: 1,
    #     next_token: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    #   options = {}
    #   response = client.list_backend_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         app_id: "__string", # required
    #         backend_environment_name: "__string", # required
    #         create_time: "__string",
    #         error: "__string",
    #         job_id: "__string",
    #         operation: "__string",
    #         status: "__string",
    #         update_time: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListBackendJobsResponse]
    def list_backend_jobs(params = {}, options = {})
      request = build_request(:list_backend_jobs, params)
      request.send_request(options)
    end

    # <p>The list of S3 buckets in your account.</p>
    # @param [Hash, Types::ListS3BucketsRequest] params
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "__string"
    #   }
    #   options = {}
    #   response = client.list_s3_buckets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     buckets: [
    #       {
    #         creation_date: "__string",
    #         name: "__string"
    #       }
    #     ],
    #     next_token: "__string"
    #   }
    # @return [Types::ListS3BucketsResponse]
    def list_s3_buckets(params = {}, options = {})
      request = build_request(:list_s3_buckets, params)
      request.send_request(options)
    end

    # <p>Removes all backend environments from your Amplify project.</p>
    # @param [Hash, Types::RemoveAllBackendsRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [Boolean] :clean_amplify_app
    #   <p>Cleans up the Amplify Console app if this value is set to true.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     clean_amplify_app: false
    #   }
    #   options = {}
    #   response = client.remove_all_backends(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::RemoveAllBackendsResponse]
    def remove_all_backends(params = {}, options = {})
      request = build_request(:remove_all_backends, params)
      request.send_request(options)
    end

    # <p>Removes the AWS resources required to access the Amplify Admin UI.</p>
    # @param [Hash, Types::RemoveBackendConfigRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #   }
    #   options = {}
    #   response = client.remove_backend_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     error: "__string"
    #   }
    # @return [Types::RemoveBackendConfigResponse]
    def remove_backend_config(params = {}, options = {})
      request = build_request(:remove_backend_config, params)
      request.send_request(options)
    end

    # <p>Updates an existing backend API resource.</p>
    # @param [Hash, Types::UpdateBackendAPIRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::BackendAPIResourceConfig] :resource_config
    #   <p>Defines the resource configuration for the data model in your Amplify project.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: {
    #       additional_auth_types: [
    #         {
    #           mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #           settings: {
    #             cognito_user_pool_id: "__string",
    #             description: "__string",
    #             expiration_time: 1.0,
    #             open_id_auth_ttl: "__string",
    #             open_id_client_id: "__string",
    #             open_id_iat_ttl: "__string",
    #             open_id_issue_url: "__string",
    #             open_id_provider_name: "__string"
    #           }
    #         }
    #       ],
    #       api_name: "__string",
    #       conflict_resolution: {
    #         resolution_strategy: "OPTIMISTIC_CONCURRENCY" # One of: ["OPTIMISTIC_CONCURRENCY", "LAMBDA", "AUTOMERGE", "NONE"]
    #       },
    #       default_auth_type: {
    #         mode: "API_KEY" # One of: ["API_KEY", "AWS_IAM", "AMAZON_COGNITO_USER_POOLS", "OPENID_CONNECT"],
    #         settings: {
    #           cognito_user_pool_id: "__string",
    #           description: "__string",
    #           expiration_time: 1.0,
    #           open_id_auth_ttl: "__string",
    #           open_id_client_id: "__string",
    #           open_id_iat_ttl: "__string",
    #           open_id_issue_url: "__string",
    #           open_id_provider_name: "__string"
    #         }
    #       },
    #       service: "__string",
    #       transform_schema: "__string"
    #     },
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_backend_api(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::UpdateBackendAPIResponse]
    def update_backend_api(params = {}, options = {})
      request = build_request(:update_backend_api, params)
      request.send_request(options)
    end

    # <p>Updates an existing backend authentication resource.</p>
    # @param [Hash, Types::UpdateBackendAuthRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::UpdateBackendAuthResourceConfig] :resource_config
    #   <p>The resource configuration for this request object.</p>
    # @option params [String] :resource_name
    #   <p>The name of this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       auth_resources: "USER_POOL_ONLY" # One of: ["USER_POOL_ONLY", "IDENTITY_POOL_AND_USER_POOL"], # required
    #       identity_pool_configs: {
    #         unauthenticated_login: false
    #       },
    #       service: "COGNITO" # One of: ["COGNITO"], # required
    #       user_pool_configs: { # required
    #         forgot_password: {
    #           delivery_method: "EMAIL" # One of: ["EMAIL", "SMS"],
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string"
    #           },
    #           sms_settings: {
    #             sms_message: "__string"
    #           }
    #         },
    #         mfa: {
    #           mfa_mode: "ON" # One of: ["ON", "OFF", "OPTIONAL"],
    #           settings: {
    #             mfa_types: ["SMS" # One of: ["SMS", "TOTP"]],
    #             sms_message: "__string"
    #           }
    #         },
    #         o_auth: {
    #           domain_prefix: "__string",
    #           o_auth_grant_type: "CODE" # One of: ["CODE", "IMPLICIT"],
    #           o_auth_scopes: ["PHONE" # One of: ["PHONE", "EMAIL", "OPENID", "PROFILE", "AWS_COGNITO_SIGNIN_USER_ADMIN"]],
    #           redirect_sign_in_ur_is: ["__string"],
    #           redirect_sign_out_ur_is: ["__string"],
    #           social_provider_settings: {
    #             facebook: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             google: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             login_with_amazon: {
    #               client_id: "__string",
    #               client_secret: "__string"
    #             },
    #             sign_in_with_apple: {
    #               client_id: "__string",
    #               key_id: "__string",
    #               private_key: "__string",
    #               team_id: "__string"
    #             }
    #           }
    #         },
    #         password_policy: {
    #           additional_constraints: ["REQUIRE_DIGIT" # One of: ["REQUIRE_DIGIT", "REQUIRE_LOWERCASE", "REQUIRE_SYMBOL", "REQUIRE_UPPERCASE"]],
    #           minimum_length: 1.0
    #         },
    #         verification_message: {
    #           delivery_method: "EMAIL" # One of: ["EMAIL", "SMS"], # required
    #           email_settings: {
    #             email_message: "__string",
    #             email_subject: "__string"
    #           },
    #           sms_settings: {
    #             sms_message: "__string"
    #           }
    #         }
    #       }
    #     },
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_backend_auth(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string"
    #   }
    # @return [Types::UpdateBackendAuthResponse]
    def update_backend_auth(params = {}, options = {})
      request = build_request(:update_backend_auth, params)
      request.send_request(options)
    end

    # <p>Updates the AWS resources required to access the Amplify Admin UI.</p>
    # @param [Hash, Types::UpdateBackendConfigRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [Types::LoginAuthConfigReqObj] :login_auth_config
    #   <p>Describes the Amazon Cognito configuration for Admin UI access.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     login_auth_config: {
    #       aws_cognito_identity_pool_id: "__string",
    #       aws_cognito_region: "__string",
    #       aws_user_pools_id: "__string",
    #       aws_user_pools_web_client_id: "__string"
    #     }
    #   }
    #   options = {}
    #   response = client.update_backend_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_manager_app_id: "__string",
    #     error: "__string",
    #     login_auth_config: {
    #       aws_cognito_identity_pool_id: "__string",
    #       aws_cognito_region: "__string",
    #       aws_user_pools_id: "__string",
    #       aws_user_pools_web_client_id: "__string"
    #     }
    #   }
    # @return [Types::UpdateBackendConfigResponse]
    def update_backend_config(params = {}, options = {})
      request = build_request(:update_backend_config, params)
      request.send_request(options)
    end

    # <p>Updates a specific job.</p>
    # @param [Hash, Types::UpdateBackendJobRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [String] :job_id
    #   <p>The ID for the job.</p>
    # @option params [String] :operation
    #   <p>Filters the list of response objects to include only those with the specified operation name.</p>
    # @option params [String] :status
    #   <p>Filters the list of response objects to include only those with the specified status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     job_id: "__string", # required
    #     operation: "__string",
    #     status: "__string"
    #   }
    #   options = {}
    #   response = client.update_backend_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     create_time: "__string",
    #     error: "__string",
    #     job_id: "__string",
    #     operation: "__string",
    #     status: "__string",
    #     update_time: "__string"
    #   }
    # @return [Types::UpdateBackendJobResponse]
    def update_backend_job(params = {}, options = {})
      request = build_request(:update_backend_job, params)
      request.send_request(options)
    end

    # <p>Updates an existing backend storage resource.</p>
    # @param [Hash, Types::UpdateBackendStorageRequest] params
    # @option params [String] :app_id
    #   <p>The app ID.</p>
    # @option params [String] :backend_environment_name
    #   <p>The name of the backend environment.</p>
    # @option params [Types::UpdateBackendStorageResourceConfig] :resource_config
    #   <p>The resource configuration for updating backend storage.</p>
    # @option params [String] :resource_name
    #   <p>The name of the storage resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_id: "__string", # required
    #     backend_environment_name: "__string", # required
    #     resource_config: { # required
    #       permissions: { # required
    #         authenticated: ["READ" # One of: ["READ", "CREATE_AND_UPDATE", "DELETE"]], # required
    #         un_authenticated: ["READ" # One of: ["READ", "CREATE_AND_UPDATE", "DELETE"]]
    #       },
    #       service_name: "S3" # One of: ["S3"], # required
    #     },
    #     resource_name: "__string", # required
    #   }
    #   options = {}
    #   response = client.update_backend_storage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_id: "__string",
    #     backend_environment_name: "__string",
    #     job_id: "__string",
    #     status: "__string"
    #   }
    # @return [Types::UpdateBackendStorageResponse]
    def update_backend_storage(params = {}, options = {})
      request = build_request(:update_backend_storage, params)
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
      context[:gem_name] = 'aws-sdk-amplifybackend'
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
