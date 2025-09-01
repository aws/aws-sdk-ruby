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
require 'aws-sdk-core/plugins/rest_json'

module Aws::ChimeSDKIdentity
  # An API client for Aws::ChimeSDKIdentity.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ChimeIdentityService

    add_plugin(::Aws::ChimeSDKIdentity::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJson)

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
    # @option options [Aws::ChimeSDKIdentity::EndpointProvider] :endpoint_provider
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

    # <p>Creates an Amazon Chime SDK messaging <code>AppInstance</code> under an AWS account.
    #          Only SDK messaging customers use this API. <code>CreateAppInstance</code> supports
    #          idempotency behavior as described in the AWS API Standard.</p>
    #          <p>identity</p>
    # @param [Hash, Types::CreateAppInstanceRequest] params
    # @option params [String] :name
    #   <p>The name of the <code>AppInstance</code>.</p>
    # @option params [String] :metadata
    #   <p>The metadata of the <code>AppInstance</code>. Limited to a 1KB string in UTF-8.</p>
    # @option params [String] :client_request_token
    #   <p>The unique ID of the request. Use different tokens to create different <code>AppInstances</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags assigned to the <code>AppInstance</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NonEmptyResourceName", # required
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_app_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_arn: "ChimeArn"
    #   }
    # @return [Types::CreateAppInstanceResponse]
    def create_app_instance(params = {}, options = {})
      request = build_request(:create_app_instance, params)
      request.send_request(options)
    end

    # <p>Promotes an <code>AppInstanceUser</code> or <code>AppInstanceBot</code> to an 
    #          <code>AppInstanceAdmin</code>. The
    #          promoted entity can perform the following actions. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ChannelModerator</code> actions across all channels in the
    #                   <code>AppInstance</code>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteChannelMessage</code> actions.</p>
    #             </li>
    #          </ul>
    #          <p>Only an <code>AppInstanceUser</code> and <code>AppInstanceBot</code> can be promoted to an <code>AppInstanceAdmin</code>
    #          role.</p>
    # @param [Hash, Types::CreateAppInstanceAdminRequest] params
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the administrator of the current <code>AppInstance</code>.</p>
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.create_app_instance_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_admin: {
    #       arn: "ChimeArn",
    #       name: "ResourceName"
    #     },
    #     app_instance_arn: "ChimeArn"
    #   }
    # @return [Types::CreateAppInstanceAdminResponse]
    def create_app_instance_admin(params = {}, options = {})
      request = build_request(:create_app_instance_admin, params)
      request.send_request(options)
    end

    # <p>Creates a bot under an Amazon Chime <code>AppInstance</code>. The request consists of a 
    #          unique <code>Configuration</code> and <code>Name</code> for that bot.</p>
    # @param [Hash, Types::CreateAppInstanceBotRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> request.</p>
    # @option params [String] :name
    #   <p>The user's name.</p>
    # @option params [String] :metadata
    #   <p>The request metadata. Limited to a 1KB string in UTF-8.</p>
    # @option params [String] :client_request_token
    #   <p>The unique ID for the client making the request. Use different tokens for different <code>AppInstanceBots</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags assigned to the <code>AppInstanceBot</code>.</p>
    # @option params [Types::Configuration] :configuration
    #   <p>Configuration information about the Amazon Lex V2 V2 bot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     name: "ResourceName",
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     configuration: { # required
    #       lex: { # required
    #         responds_to: "STANDARD_MESSAGES" # One of: ["STANDARD_MESSAGES"],
    #         invoked_by: {
    #           standard_messages: "AUTO" # One of: ["AUTO", "ALL", "MENTIONS", "NONE"], # required
    #           targeted_messages: "ALL" # One of: ["ALL", "NONE"], # required
    #         },
    #         lex_bot_alias_arn: "LexBotAliasArn", # required
    #         locale_id: "String", # required
    #         welcome_intent: "LexIntentName"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_app_instance_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_bot_arn: "ChimeArn"
    #   }
    # @return [Types::CreateAppInstanceBotResponse]
    def create_app_instance_bot(params = {}, options = {})
      request = build_request(:create_app_instance_bot, params)
      request.send_request(options)
    end

    # <p>Creates a user under an Amazon Chime <code>AppInstance</code>. The request consists of a
    #          unique <code>appInstanceUserId</code> and <code>Name</code> for that user.</p>
    # @param [Hash, Types::CreateAppInstanceUserRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code> request.</p>
    # @option params [String] :app_instance_user_id
    #   <p>The user ID of the <code>AppInstance</code>.</p>
    # @option params [String] :name
    #   <p>The user's name.</p>
    # @option params [String] :metadata
    #   <p>The request's metadata. Limited to a 1KB string in UTF-8.</p>
    # @option params [String] :client_request_token
    #   <p>The unique ID of the request. Use different tokens to request additional <code>AppInstances</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Tags assigned to the <code>AppInstanceUser</code>.</p>
    # @option params [Types::ExpirationSettings] :expiration_settings
    #   <p>Settings that control the interval after which the <code>AppInstanceUser</code> is automatically deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     app_instance_user_id: "UserId", # required
    #     name: "UserName", # required
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP" # One of: ["CREATED_TIMESTAMP"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_app_instance_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_user_arn: "ChimeArn"
    #   }
    # @return [Types::CreateAppInstanceUserResponse]
    def create_app_instance_user(params = {}, options = {})
      request = build_request(:create_app_instance_user, params)
      request.send_request(options)
    end

    # <p>Deletes an <code>AppInstance</code> and all associated data asynchronously.</p>
    # @param [Hash, Types::DeleteAppInstanceRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_app_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_app_instance(params = {}, options = {})
      request = build_request(:delete_app_instance, params)
      request.send_request(options)
    end

    # <p>Demotes an <code>AppInstanceAdmin</code> to an <code>AppInstanceUser</code> or 
    #          <code>AppInstanceBot</code>. This action
    #          does not delete the user.</p>
    # @param [Hash, Types::DeleteAppInstanceAdminRequest] params
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstance</code>'s administrator.</p>
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_app_instance_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_app_instance_admin(params = {}, options = {})
      request = build_request(:delete_app_instance_admin, params)
      request.send_request(options)
    end

    # <p>Deletes an <code>AppInstanceBot</code>.</p>
    # @param [Hash, Types::DeleteAppInstanceBotRequest] params
    # @option params [String] :app_instance_bot_arn
    #   <p>The ARN of the <code>AppInstanceBot</code> being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_bot_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_app_instance_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_app_instance_bot(params = {}, options = {})
      request = build_request(:delete_app_instance_bot, params)
      request.send_request(options)
    end

    # <p>Deletes an <code>AppInstanceUser</code>.</p>
    # @param [Hash, Types::DeleteAppInstanceUserRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the user request being deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.delete_app_instance_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_app_instance_user(params = {}, options = {})
      request = build_request(:delete_app_instance_user, params)
      request.send_request(options)
    end

    # <p>Deregisters an <code>AppInstanceUserEndpoint</code>.</p>
    # @param [Hash, Types::DeregisterAppInstanceUserEndpointRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    # @option params [String] :endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "ChimeArn", # required
    #     endpoint_id: "String64", # required
    #   }
    #   options = {}
    #   response = client.deregister_app_instance_user_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def deregister_app_instance_user_endpoint(params = {}, options = {})
      request = build_request(:deregister_app_instance_user_endpoint, params)
      request.send_request(options)
    end

    # <p>Returns the full details of an <code>AppInstance</code>.</p>
    # @param [Hash, Types::DescribeAppInstanceRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_app_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance: {
    #       app_instance_arn: "ChimeArn",
    #       name: "NonEmptyResourceName",
    #       created_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       metadata: "Metadata"
    #     }
    #   }
    # @return [Types::DescribeAppInstanceResponse]
    def describe_app_instance(params = {}, options = {})
      request = build_request(:describe_app_instance, params)
      request.send_request(options)
    end

    # <p>Returns the full details of an <code>AppInstanceAdmin</code>.</p>
    # @param [Hash, Types::DescribeAppInstanceAdminRequest] params
    # @option params [String] :app_instance_admin_arn
    #   <p>The ARN of the <code>AppInstanceAdmin</code>.</p>
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_app_instance_admin(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_admin: {
    #       admin: {
    #         arn: "ChimeArn",
    #         name: "ResourceName"
    #       },
    #       app_instance_arn: "ChimeArn",
    #       created_timestamp: Time.now
    #     }
    #   }
    # @return [Types::DescribeAppInstanceAdminResponse]
    def describe_app_instance_admin(params = {}, options = {})
      request = build_request(:describe_app_instance_admin, params)
      request.send_request(options)
    end

    # <p>The <code>AppInstanceBot's</code> information.</p>
    # @param [Hash, Types::DescribeAppInstanceBotRequest] params
    # @option params [String] :app_instance_bot_arn
    #   <p>The ARN of the <code>AppInstanceBot</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_bot_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_app_instance_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_bot: {
    #       app_instance_bot_arn: "ChimeArn",
    #       name: "ResourceName",
    #       configuration: {
    #         lex: { # required
    #           responds_to: "STANDARD_MESSAGES" # One of: ["STANDARD_MESSAGES"],
    #           invoked_by: {
    #             standard_messages: "AUTO" # One of: ["AUTO", "ALL", "MENTIONS", "NONE"], # required
    #             targeted_messages: "ALL" # One of: ["ALL", "NONE"], # required
    #           },
    #           lex_bot_alias_arn: "LexBotAliasArn", # required
    #           locale_id: "String", # required
    #           welcome_intent: "LexIntentName"
    #         }
    #       },
    #       created_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       metadata: "Metadata"
    #     }
    #   }
    # @return [Types::DescribeAppInstanceBotResponse]
    def describe_app_instance_bot(params = {}, options = {})
      request = build_request(:describe_app_instance_bot, params)
      request.send_request(options)
    end

    # <p>Returns the full details of an <code>AppInstanceUser</code>.</p>
    # @param [Hash, Types::DescribeAppInstanceUserRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.describe_app_instance_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_user: {
    #       app_instance_user_arn: "ChimeArn",
    #       name: "UserName",
    #       metadata: "Metadata",
    #       created_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       expiration_settings: {
    #         expiration_days: 1, # required
    #         expiration_criterion: "CREATED_TIMESTAMP" # One of: ["CREATED_TIMESTAMP"], # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeAppInstanceUserResponse]
    def describe_app_instance_user(params = {}, options = {})
      request = build_request(:describe_app_instance_user, params)
      request.send_request(options)
    end

    # <p>Returns the full details of an <code>AppInstanceUserEndpoint</code>.</p>
    # @param [Hash, Types::DescribeAppInstanceUserEndpointRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    # @option params [String] :endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "String1600", # required
    #     endpoint_id: "String64", # required
    #   }
    #   options = {}
    #   response = client.describe_app_instance_user_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_user_endpoint: {
    #       app_instance_user_arn: "ChimeArn",
    #       endpoint_id: "String64",
    #       name: "SensitiveString1600",
    #       type: "APNS" # One of: ["APNS", "APNS_SANDBOX", "GCM"],
    #       resource_arn: "ChimeArn",
    #       endpoint_attributes: {
    #         device_token: "NonEmptySensitiveString1600", # required
    #         voip_device_token: "NonEmptySensitiveString1600"
    #       },
    #       created_timestamp: Time.now,
    #       last_updated_timestamp: Time.now,
    #       allow_messages: "ALL" # One of: ["ALL", "NONE"],
    #       endpoint_state: {
    #         status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #         status_reason: "INVALID_DEVICE_TOKEN" # One of: ["INVALID_DEVICE_TOKEN", "INVALID_PINPOINT_ARN"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeAppInstanceUserEndpointResponse]
    def describe_app_instance_user_endpoint(params = {}, options = {})
      request = build_request(:describe_app_instance_user_endpoint, params)
      request.send_request(options)
    end

    # <p>Gets the retention settings for an <code>AppInstance</code>.</p>
    # @param [Hash, Types::GetAppInstanceRetentionSettingsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #   }
    #   options = {}
    #   response = client.get_app_instance_retention_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_retention_settings: {
    #       channel_retention_settings: {
    #         retention_days: 1
    #       }
    #     },
    #     initiate_deletion_timestamp: Time.now
    #   }
    # @return [Types::GetAppInstanceRetentionSettingsResponse]
    def get_app_instance_retention_settings(params = {}, options = {})
      request = build_request(:get_app_instance_retention_settings, params)
      request.send_request(options)
    end

    # <p>Returns a list of the administrators in the <code>AppInstance</code>.</p>
    # @param [Hash, Types::ListAppInstanceAdminsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of administrators that you want to return.</p>
    # @option params [String] :next_token
    #   <p>The token returned from previous API requests until the number of administrators is
    #            reached.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_app_instance_admins(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_arn: "ChimeArn",
    #     app_instance_admins: [
    #       {
    #         admin: {
    #           arn: "ChimeArn",
    #           name: "ResourceName"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppInstanceAdminsResponse]
    def list_app_instance_admins(params = {}, options = {})
      request = build_request(:list_app_instance_admins, params)
      request.send_request(options)
    end

    # <p>Lists all <code>AppInstanceBots</code> created under a single <code>AppInstance</code>.</p>
    # @param [Hash, Types::ListAppInstanceBotsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of requests to return.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested bots are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_app_instance_bots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_arn: "ChimeArn",
    #     app_instance_bots: [
    #       {
    #         app_instance_bot_arn: "ChimeArn",
    #         name: "ResourceName",
    #         metadata: "Metadata"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppInstanceBotsResponse]
    def list_app_instance_bots(params = {}, options = {})
      request = build_request(:list_app_instance_bots, params)
      request.send_request(options)
    end

    # <p>Lists all the <code>AppInstanceUserEndpoints</code> created under a single <code>AppInstanceUser</code>.</p>
    # @param [Hash, Types::ListAppInstanceUserEndpointsRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of endpoints that you want to return.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested endpoints are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "SensitiveChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_app_instance_user_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_user_endpoints: [
    #       {
    #         app_instance_user_arn: "ChimeArn",
    #         endpoint_id: "String64",
    #         name: "SensitiveString1600",
    #         type: "APNS" # One of: ["APNS", "APNS_SANDBOX", "GCM"],
    #         allow_messages: "ALL" # One of: ["ALL", "NONE"],
    #         endpoint_state: {
    #           status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #           status_reason: "INVALID_DEVICE_TOKEN" # One of: ["INVALID_DEVICE_TOKEN", "INVALID_PINPOINT_ARN"]
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppInstanceUserEndpointsResponse]
    def list_app_instance_user_endpoints(params = {}, options = {})
      request = build_request(:list_app_instance_user_endpoints, params)
      request.send_request(options)
    end

    # <p>List all <code>AppInstanceUsers</code> created under a single
    #          <code>AppInstance</code>.</p>
    # @param [Hash, Types::ListAppInstanceUsersRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of requests that you want returned.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API calls until all requested users are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_app_instance_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_arn: "ChimeArn",
    #     app_instance_users: [
    #       {
    #         app_instance_user_arn: "ChimeArn",
    #         name: "UserName",
    #         metadata: "Metadata"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppInstanceUsersResponse]
    def list_app_instance_users(params = {}, options = {})
      request = build_request(:list_app_instance_users, params)
      request.send_request(options)
    end

    # <p>Lists all Amazon Chime <code>AppInstance</code>s created under a single AWS
    #          account.</p>
    # @param [Hash, Types::ListAppInstancesRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of <code>AppInstance</code>s that you want to return.</p>
    # @option params [String] :next_token
    #   <p>The token passed by previous API requests until you reach the maximum number of
    #               <code>AppInstances</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_app_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instances: [
    #       {
    #         app_instance_arn: "ChimeArn",
    #         name: "NonEmptyResourceName",
    #         metadata: "Metadata"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAppInstancesResponse]
    def list_app_instances(params = {}, options = {})
      request = build_request(:list_app_instances, params)
      request.send_request(options)
    end

    # <p>Lists the tags applied to an Amazon Chime SDK identity resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ChimeArn", # required
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

    # <p>Sets the amount of time in days that a given <code>AppInstance</code> retains
    #          data.</p>
    # @param [Hash, Types::PutAppInstanceRetentionSettingsRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @option params [Types::AppInstanceRetentionSettings] :app_instance_retention_settings
    #   <p>The time in days to retain data. Data type: number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     app_instance_retention_settings: { # required
    #       channel_retention_settings: {
    #         retention_days: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_app_instance_retention_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_retention_settings: {
    #       channel_retention_settings: {
    #         retention_days: 1
    #       }
    #     },
    #     initiate_deletion_timestamp: Time.now
    #   }
    # @return [Types::PutAppInstanceRetentionSettingsResponse]
    def put_app_instance_retention_settings(params = {}, options = {})
      request = build_request(:put_app_instance_retention_settings, params)
      request.send_request(options)
    end

    # <p>Sets the number of days before the <code>AppInstanceUser</code> is automatically deleted.</p>
    #          <note>
    #             <p>A background process deletes expired <code>AppInstanceUsers</code> within 6 hours of expiration. 
    #             Actual deletion times may vary.</p>
    #             <p>Expired <code>AppInstanceUsers</code> that have not yet been deleted appear as active, and you can update 
    #             their expiration settings. The system honors the new settings.</p>
    #          </note>
    # @param [Hash, Types::PutAppInstanceUserExpirationSettingsRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    # @option params [Types::ExpirationSettings] :expiration_settings
    #   <p>Settings that control the interval after which an <code>AppInstanceUser</code> is automatically deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "ChimeArn", # required
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP" # One of: ["CREATED_TIMESTAMP"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_app_instance_user_expiration_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_user_arn: "ChimeArn",
    #     expiration_settings: {
    #       expiration_days: 1, # required
    #       expiration_criterion: "CREATED_TIMESTAMP" # One of: ["CREATED_TIMESTAMP"], # required
    #     }
    #   }
    # @return [Types::PutAppInstanceUserExpirationSettingsResponse]
    def put_app_instance_user_expiration_settings(params = {}, options = {})
      request = build_request(:put_app_instance_user_expiration_settings, params)
      request.send_request(options)
    end

    # <p>Registers an endpoint under an Amazon Chime <code>AppInstanceUser</code>. The endpoint receives messages for a user. For push notifications, the endpoint is a mobile device used to receive mobile push notifications for a user.</p>
    # @param [Hash, Types::RegisterAppInstanceUserEndpointRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    # @option params [String] :name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    # @option params [String] :type
    #   <p>The type of the <code>AppInstanceUserEndpoint</code>. Supported types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>APNS</code>: The mobile notification service for an Apple device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>APNS_SANDBOX</code>: The sandbox environment of the mobile notification service for an Apple device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GCM</code>: The mobile notification service for an Android device.</p>
    #               </li>
    #            </ul>
    #            <p>Populate the <code>ResourceArn</code> value of each type as <code>PinpointAppArn</code>.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to which the endpoint belongs.</p>
    # @option params [Types::EndpointAttributes] :endpoint_attributes
    #   <p>The attributes of an <code>Endpoint</code>.</p>
    # @option params [String] :client_request_token
    #   <p>The unique ID assigned to the request. Use different tokens to register other endpoints.</p>
    # @option params [String] :allow_messages
    #   <p>Boolean that controls whether the AppInstanceUserEndpoint is opted in to receive messages. <code>ALL</code> indicates the endpoint receives all messages. 
    #            <code>NONE</code> indicates the endpoint receives no messages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "SensitiveChimeArn", # required
    #     name: "SensitiveString1600",
    #     type: "APNS" # One of: ["APNS", "APNS_SANDBOX", "GCM"], # required
    #     resource_arn: "ChimeArn", # required
    #     endpoint_attributes: { # required
    #       device_token: "NonEmptySensitiveString1600", # required
    #       voip_device_token: "NonEmptySensitiveString1600"
    #     },
    #     client_request_token: "ClientRequestToken", # required
    #     allow_messages: "ALL" # One of: ["ALL", "NONE"]
    #   }
    #   options = {}
    #   response = client.register_app_instance_user_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_user_arn: "ChimeArn",
    #     endpoint_id: "String64"
    #   }
    # @return [Types::RegisterAppInstanceUserEndpointResponse]
    def register_app_instance_user_endpoint(params = {}, options = {})
      request = build_request(:register_app_instance_user_endpoint, params)
      request.send_request(options)
    end

    # <p>Applies the specified tags to the specified Amazon Chime SDK identity resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tag key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ChimeArn", # required
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
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified Amazon Chime SDK identity resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ChimeArn", # required
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

    # <p>Updates <code>AppInstance</code> metadata.</p>
    # @param [Hash, Types::UpdateAppInstanceRequest] params
    # @option params [String] :app_instance_arn
    #   <p>The ARN of the <code>AppInstance</code>.</p>
    # @option params [String] :name
    #   <p>The name that you want to change.</p>
    # @option params [String] :metadata
    #   <p>The metadata that you want to change.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName", # required
    #     metadata: "Metadata", # required
    #   }
    #   options = {}
    #   response = client.update_app_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_arn: "ChimeArn"
    #   }
    # @return [Types::UpdateAppInstanceResponse]
    def update_app_instance(params = {}, options = {})
      request = build_request(:update_app_instance, params)
      request.send_request(options)
    end

    # <p>Updates the name and metadata of an <code>AppInstanceBot</code>.</p>
    # @param [Hash, Types::UpdateAppInstanceBotRequest] params
    # @option params [String] :app_instance_bot_arn
    #   <p>The ARN of the <code>AppInstanceBot</code>.</p>
    # @option params [String] :name
    #   <p>The name of the <code>AppInstanceBot</code>.</p>
    # @option params [String] :metadata
    #   <p>The metadata of the <code>AppInstanceBot</code>.</p>
    # @option params [Types::Configuration] :configuration
    #   <p>The configuration for the bot update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_bot_arn: "ChimeArn", # required
    #     name: "ResourceName", # required
    #     metadata: "Metadata", # required
    #     configuration: {
    #       lex: { # required
    #         responds_to: "STANDARD_MESSAGES" # One of: ["STANDARD_MESSAGES"],
    #         invoked_by: {
    #           standard_messages: "AUTO" # One of: ["AUTO", "ALL", "MENTIONS", "NONE"], # required
    #           targeted_messages: "ALL" # One of: ["ALL", "NONE"], # required
    #         },
    #         lex_bot_alias_arn: "LexBotAliasArn", # required
    #         locale_id: "String", # required
    #         welcome_intent: "LexIntentName"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_app_instance_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_bot_arn: "ChimeArn"
    #   }
    # @return [Types::UpdateAppInstanceBotResponse]
    def update_app_instance_bot(params = {}, options = {})
      request = build_request(:update_app_instance_bot, params)
      request.send_request(options)
    end

    # <p>Updates the details of an <code>AppInstanceUser</code>. You can update names and
    #          metadata.</p>
    # @param [Hash, Types::UpdateAppInstanceUserRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    # @option params [String] :name
    #   <p>The name of the <code>AppInstanceUser</code>.</p>
    # @option params [String] :metadata
    #   <p>The metadata of the <code>AppInstanceUser</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "ChimeArn", # required
    #     name: "UserName", # required
    #     metadata: "Metadata", # required
    #   }
    #   options = {}
    #   response = client.update_app_instance_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_user_arn: "ChimeArn"
    #   }
    # @return [Types::UpdateAppInstanceUserResponse]
    def update_app_instance_user(params = {}, options = {})
      request = build_request(:update_app_instance_user, params)
      request.send_request(options)
    end

    # <p>Updates the details of an <code>AppInstanceUserEndpoint</code>. You can update the name and <code>AllowMessage</code> values.</p>
    # @param [Hash, Types::UpdateAppInstanceUserEndpointRequest] params
    # @option params [String] :app_instance_user_arn
    #   <p>The ARN of the <code>AppInstanceUser</code>.</p>
    # @option params [String] :endpoint_id
    #   <p>The unique identifier of the <code>AppInstanceUserEndpoint</code>.</p>
    # @option params [String] :name
    #   <p>The name of the <code>AppInstanceUserEndpoint</code>.</p>
    # @option params [String] :allow_messages
    #   <p>Boolean that controls whether the <code>AppInstanceUserEndpoint</code> is opted in to receive messages. <code>ALL</code> indicates the endpoint will receive all messages. 
    #            <code>NONE</code> indicates the endpoint will receive no messages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     app_instance_user_arn: "ChimeArn", # required
    #     endpoint_id: "String64", # required
    #     name: "SensitiveString1600",
    #     allow_messages: "ALL" # One of: ["ALL", "NONE"]
    #   }
    #   options = {}
    #   response = client.update_app_instance_user_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     app_instance_user_arn: "ChimeArn",
    #     endpoint_id: "String64"
    #   }
    # @return [Types::UpdateAppInstanceUserEndpointResponse]
    def update_app_instance_user_endpoint(params = {}, options = {})
      request = build_request(:update_app_instance_user_endpoint, params)
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
      context[:gem_name] = 'aws-sdk-chimesdkidentity'
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
