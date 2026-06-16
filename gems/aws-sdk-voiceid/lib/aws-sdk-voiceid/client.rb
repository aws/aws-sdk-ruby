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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:voiceid)

module Aws::VoiceID
  # An API client for Aws::VoiceID.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::VoiceID
    @identifier = :voiceid

    add_plugin(::Aws::VoiceID::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::VoiceID::EndpointProvider)
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

    # <p>Associates the fraudsters with the watchlist specified in the same domain. </p>
    # @param [Hash, Types::AssociateFraudsterInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    # @option params [String] :watchlist_id
    #   <p>The identifier of the watchlist you want to associate with the fraudster.</p>
    # @option params [String] :fraudster_id
    #   <p>The identifier of the fraudster to be associated with the watchlist.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     watchlist_id: "WatchlistId", # required
    #     fraudster_id: "FraudsterId", # required
    #   }
    #   options = {}
    #   response = client.associate_fraudster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fraudster: {
    #       domain_id: "DomainId",
    #       generated_fraudster_id: "GeneratedFraudsterId",
    #       created_at: Time.now,
    #       watchlist_ids: ["WatchlistId"]
    #     }
    #   }
    # @return [Types::AssociateFraudsterOutput]
    def associate_fraudster(params = {}, options = {})
      request = build_request(:associate_fraudster, params)
      request.send_request(options)
    end

    # <p>Creates a domain that contains all Amazon Connect Voice ID data, such as speakers, fraudsters,
    #             customer audio, and voiceprints.  Every domain is created with a default watchlist that fraudsters can be a part of.</p>
    # @param [Hash, Types::CreateDomainInput] params
    # @option params [String] :name
    #   <p>The name of the domain.</p>
    # @option params [String] :description
    #   <p>A brief description of this domain.</p>
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The configuration, containing the KMS key identifier, to be used by
    #               Voice ID for the server-side encryption of your data. Refer to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid">
    #                   Amazon Connect Voice ID encryption at rest</a> for more details on how the KMS key is used. </p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags you want added to the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "DomainName", # required
    #     description: "Description",
    #     server_side_encryption_configuration: { # required
    #       kms_key_id: "KmsKeyId", # required
    #     },
    #     client_token: "ClientTokenString",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: {
    #       domain_id: "DomainId",
    #       arn: "Arn",
    #       name: "DomainName",
    #       description: "Description",
    #       domain_status: "DomainStatus",
    #       server_side_encryption_configuration: {
    #         kms_key_id: "KmsKeyId", # required
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       server_side_encryption_update_details: {
    #         old_kms_key_id: "KmsKeyId",
    #         update_status: "ServerSideEncryptionUpdateStatus",
    #         message: "String"
    #       },
    #       watchlist_details: {
    #         default_watchlist_id: "WatchlistId", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateDomainOutput]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>Creates a watchlist that fraudsters can be a part of.</p>
    # @param [Hash, Types::CreateWatchlistInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    # @option params [String] :name
    #   <p>The name of the watchlist.</p>
    # @option params [String] :description
    #   <p>A brief description of this watchlist.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "WatchlistName", # required
    #     description: "WatchlistDescription",
    #     client_token: "ClientTokenString"
    #   }
    #   options = {}
    #   response = client.create_watchlist(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     watchlist: {
    #       domain_id: "DomainId",
    #       watchlist_id: "WatchlistId",
    #       name: "WatchlistName",
    #       description: "WatchlistDescription",
    #       default_watchlist: false,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::CreateWatchlistOutput]
    def create_watchlist(params = {}, options = {})
      request = build_request(:create_watchlist, params)
      request.send_request(options)
    end

    # <p>Deletes the specified domain from Voice ID.</p>
    # @param [Hash, Types::DeleteDomainInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>Deletes the specified fraudster from Voice ID. This action disassociates the fraudster from any watchlists it is a part of.</p>
    # @param [Hash, Types::DeleteFraudsterInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    # @option params [String] :fraudster_id
    #   <p>The identifier of the fraudster you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     fraudster_id: "FraudsterId", # required
    #   }
    #   options = {}
    #   response = client.delete_fraudster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_fraudster(params = {}, options = {})
      request = build_request(:delete_fraudster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified speaker from Voice ID.</p>
    # @param [Hash, Types::DeleteSpeakerInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    # @option params [String] :speaker_id
    #   <p>The identifier of the speaker you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     speaker_id: "SpeakerId", # required
    #   }
    #   options = {}
    #   response = client.delete_speaker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_speaker(params = {}, options = {})
      request = build_request(:delete_speaker, params)
      request.send_request(options)
    end

    # <p>Deletes the specified watchlist from Voice ID. This API throws an exception when
    #             there are fraudsters in the watchlist that you are trying to delete. You must delete the
    #             fraudsters, and then delete the watchlist. Every domain has a default watchlist which cannot be deleted. </p>
    # @param [Hash, Types::DeleteWatchlistInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    # @option params [String] :watchlist_id
    #   <p>The identifier of the watchlist to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     watchlist_id: "WatchlistId", # required
    #   }
    #   options = {}
    #   response = client.delete_watchlist(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_watchlist(params = {}, options = {})
      request = build_request(:delete_watchlist, params)
      request.send_request(options)
    end

    # <p>Describes the specified domain.</p>
    # @param [Hash, Types::DescribeDomainInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that you are describing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #   }
    #   options = {}
    #   response = client.describe_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: {
    #       domain_id: "DomainId",
    #       arn: "Arn",
    #       name: "DomainName",
    #       description: "Description",
    #       domain_status: "DomainStatus",
    #       server_side_encryption_configuration: {
    #         kms_key_id: "KmsKeyId", # required
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       server_side_encryption_update_details: {
    #         old_kms_key_id: "KmsKeyId",
    #         update_status: "ServerSideEncryptionUpdateStatus",
    #         message: "String"
    #       },
    #       watchlist_details: {
    #         default_watchlist_id: "WatchlistId", # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeDomainOutput]
    def describe_domain(params = {}, options = {})
      request = build_request(:describe_domain, params)
      request.send_request(options)
    end

    # <p>Describes the specified fraudster.</p>
    # @param [Hash, Types::DescribeFraudsterInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    # @option params [String] :fraudster_id
    #   <p>The identifier of the fraudster you are describing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     fraudster_id: "FraudsterId", # required
    #   }
    #   options = {}
    #   response = client.describe_fraudster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fraudster: {
    #       domain_id: "DomainId",
    #       generated_fraudster_id: "GeneratedFraudsterId",
    #       created_at: Time.now,
    #       watchlist_ids: ["WatchlistId"]
    #     }
    #   }
    # @return [Types::DescribeFraudsterOutput]
    def describe_fraudster(params = {}, options = {})
      request = build_request(:describe_fraudster, params)
      request.send_request(options)
    end

    # <p>Describes the specified fraudster registration job.</p>
    # @param [Hash, Types::DescribeFraudsterRegistrationJobInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the fraudster registration job.</p>
    # @option params [String] :job_id
    #   <p>The identifier of the fraudster registration job you are describing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_fraudster_registration_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_name: "JobName",
    #       job_id: "JobId",
    #       job_status: "FraudsterRegistrationJobStatus",
    #       domain_id: "DomainId",
    #       data_access_role_arn: "IamRoleArn",
    #       registration_config: {
    #         duplicate_registration_action: "DuplicateRegistrationAction",
    #         fraudster_similarity_threshold: 1,
    #         watchlist_ids: ["WatchlistId"]
    #       },
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       created_at: Time.now,
    #       ended_at: Time.now,
    #       failure_details: {
    #         status_code: 1,
    #         message: "String"
    #       },
    #       job_progress: {
    #         percent_complete: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeFraudsterRegistrationJobOutput]
    def describe_fraudster_registration_job(params = {}, options = {})
      request = build_request(:describe_fraudster_registration_job, params)
      request.send_request(options)
    end

    # <p>Describes the specified speaker.</p>
    # @param [Hash, Types::DescribeSpeakerInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    # @option params [String] :speaker_id
    #   <p>The identifier of the speaker you are describing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     speaker_id: "SpeakerId", # required
    #   }
    #   options = {}
    #   response = client.describe_speaker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     speaker: {
    #       domain_id: "DomainId",
    #       customer_speaker_id: "CustomerSpeakerId",
    #       generated_speaker_id: "GeneratedSpeakerId",
    #       status: "SpeakerStatus",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       last_accessed_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeSpeakerOutput]
    def describe_speaker(params = {}, options = {})
      request = build_request(:describe_speaker, params)
      request.send_request(options)
    end

    # <p>Describes the specified speaker enrollment job.</p>
    # @param [Hash, Types::DescribeSpeakerEnrollmentJobInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job.</p>
    # @option params [String] :job_id
    #   <p>The identifier of the speaker enrollment job you are describing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.describe_speaker_enrollment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_name: "JobName",
    #       job_id: "JobId",
    #       job_status: "SpeakerEnrollmentJobStatus",
    #       domain_id: "DomainId",
    #       data_access_role_arn: "IamRoleArn",
    #       enrollment_config: {
    #         existing_enrollment_action: "ExistingEnrollmentAction",
    #         fraud_detection_config: {
    #           fraud_detection_action: "FraudDetectionAction",
    #           risk_threshold: 1,
    #           watchlist_ids: ["WatchlistId"]
    #         }
    #       },
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       created_at: Time.now,
    #       ended_at: Time.now,
    #       failure_details: {
    #         status_code: 1,
    #         message: "String"
    #       },
    #       job_progress: {
    #         percent_complete: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeSpeakerEnrollmentJobOutput]
    def describe_speaker_enrollment_job(params = {}, options = {})
      request = build_request(:describe_speaker_enrollment_job, params)
      request.send_request(options)
    end

    # <p>Describes the specified watchlist.</p>
    # @param [Hash, Types::DescribeWatchlistInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    # @option params [String] :watchlist_id
    #   <p>The identifier of the watchlist that you are describing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     watchlist_id: "WatchlistId", # required
    #   }
    #   options = {}
    #   response = client.describe_watchlist(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     watchlist: {
    #       domain_id: "DomainId",
    #       watchlist_id: "WatchlistId",
    #       name: "WatchlistName",
    #       description: "WatchlistDescription",
    #       default_watchlist: false,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::DescribeWatchlistOutput]
    def describe_watchlist(params = {}, options = {})
      request = build_request(:describe_watchlist, params)
      request.send_request(options)
    end

    # <p>Disassociates the fraudsters from the watchlist specified. Voice ID always expects a
    #             fraudster to be a part of at least one watchlist. If
    #             you try to disassociate a fraudster from its only watchlist, a <code>ValidationException</code> is thrown.
    #             </p>
    # @param [Hash, Types::DisassociateFraudsterInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the fraudster.</p>
    # @option params [String] :watchlist_id
    #   <p>The identifier of the watchlist that you want to disassociate from the fraudster.</p>
    # @option params [String] :fraudster_id
    #   <p>The identifier of the fraudster to be disassociated from the watchlist.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     watchlist_id: "WatchlistId", # required
    #     fraudster_id: "FraudsterId", # required
    #   }
    #   options = {}
    #   response = client.disassociate_fraudster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fraudster: {
    #       domain_id: "DomainId",
    #       generated_fraudster_id: "GeneratedFraudsterId",
    #       created_at: Time.now,
    #       watchlist_ids: ["WatchlistId"]
    #     }
    #   }
    # @return [Types::DisassociateFraudsterOutput]
    def disassociate_fraudster(params = {}, options = {})
      request = build_request(:disassociate_fraudster, params)
      request.send_request(options)
    end

    # <p>Evaluates a specified session based on audio data accumulated during a streaming
    #             Amazon Connect Voice ID call.</p>
    # @param [Hash, Types::EvaluateSessionInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain where the session started.</p>
    # @option params [String] :session_name_or_id
    #   <p>The session identifier, or name of the session, that you want to evaluate. In
    #               Voice ID integration, this is the Contact-Id.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     session_name_or_id: "SessionNameOrId", # required
    #   }
    #   options = {}
    #   response = client.evaluate_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_id: "DomainId",
    #     session_id: "SessionId",
    #     session_name: "SessionName",
    #     streaming_status: "StreamingStatus",
    #     authentication_result: {
    #       authentication_result_id: "UniqueIdLarge",
    #       audio_aggregation_started_at: Time.now,
    #       audio_aggregation_ended_at: Time.now,
    #       customer_speaker_id: "CustomerSpeakerId",
    #       generated_speaker_id: "GeneratedSpeakerId",
    #       decision: "AuthenticationDecision",
    #       score: 1,
    #       configuration: {
    #         acceptance_threshold: 1, # required
    #       }
    #     },
    #     fraud_detection_result: {
    #       fraud_detection_result_id: "UniqueIdLarge",
    #       audio_aggregation_started_at: Time.now,
    #       audio_aggregation_ended_at: Time.now,
    #       configuration: {
    #         risk_threshold: 1,
    #         watchlist_id: "WatchlistId"
    #       },
    #       decision: "FraudDetectionDecision",
    #       reasons: ["FraudDetectionReason"],
    #       risk_details: {
    #         known_fraudster_risk: { # required
    #           risk_score: 1, # required
    #           generated_fraudster_id: "GeneratedFraudsterId"
    #         },
    #         voice_spoofing_risk: { # required
    #           risk_score: 1, # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::EvaluateSessionOutput]
    def evaluate_session(params = {}, options = {})
      request = build_request(:evaluate_session, params)
      request.send_request(options)
    end

    # <p>Lists all the domains in the Amazon Web Services account. </p>
    # @param [Hash, Types::ListDomainsInput] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.</p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_summaries: [
    #       {
    #         domain_id: "DomainId",
    #         arn: "Arn",
    #         name: "DomainName",
    #         description: "Description",
    #         domain_status: "DomainStatus",
    #         server_side_encryption_configuration: {
    #           kms_key_id: "KmsKeyId", # required
    #         },
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         server_side_encryption_update_details: {
    #           old_kms_key_id: "KmsKeyId",
    #           update_status: "ServerSideEncryptionUpdateStatus",
    #           message: "String"
    #         },
    #         watchlist_details: {
    #           default_watchlist_id: "WatchlistId", # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListDomainsOutput]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Lists all the fraudster registration jobs in the domain with the given
    #                 <code>JobStatus</code>. If <code>JobStatus</code> is not provided, this lists all
    #             fraudster registration jobs in the given domain. </p>
    # @param [Hash, Types::ListFraudsterRegistrationJobsInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the fraudster registration Jobs.</p>
    # @option params [String] :job_status
    #   <p>Provides the status of your fraudster registration job.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100. </p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     job_status: "FraudsterRegistrationJobStatus",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_fraudster_registration_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summaries: [
    #       {
    #         job_name: "JobName",
    #         job_id: "JobId",
    #         job_status: "FraudsterRegistrationJobStatus",
    #         domain_id: "DomainId",
    #         created_at: Time.now,
    #         ended_at: Time.now,
    #         failure_details: {
    #           status_code: 1,
    #           message: "String"
    #         },
    #         job_progress: {
    #           percent_complete: 1
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFraudsterRegistrationJobsOutput]
    def list_fraudster_registration_jobs(params = {}, options = {})
      request = build_request(:list_fraudster_registration_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all fraudsters in a specified watchlist or domain.</p>
    # @param [Hash, Types::ListFraudstersInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain. </p>
    # @option params [String] :watchlist_id
    #   <p>The identifier of the watchlist. If provided, all fraudsters in the watchlist are listed. If not provided, all fraudsters in the domain are listed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.    </p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     watchlist_id: "WatchlistId",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_fraudsters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     fraudster_summaries: [
    #       {
    #         domain_id: "DomainId",
    #         generated_fraudster_id: "GeneratedFraudsterId",
    #         created_at: Time.now,
    #         watchlist_ids: ["WatchlistId"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListFraudstersOutput]
    def list_fraudsters(params = {}, options = {})
      request = build_request(:list_fraudsters, params)
      request.send_request(options)
    end

    # <p>Lists all the speaker enrollment jobs in the domain with the specified
    #                 <code>JobStatus</code>. If <code>JobStatus</code> is not provided, this lists all
    #             jobs with all possible speaker enrollment job statuses.</p>
    # @param [Hash, Types::ListSpeakerEnrollmentJobsInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment jobs.</p>
    # @option params [String] :job_status
    #   <p>Provides the status of your speaker enrollment Job.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.</p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     job_status: "SpeakerEnrollmentJobStatus",
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_speaker_enrollment_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_summaries: [
    #       {
    #         job_name: "JobName",
    #         job_id: "JobId",
    #         job_status: "SpeakerEnrollmentJobStatus",
    #         domain_id: "DomainId",
    #         created_at: Time.now,
    #         ended_at: Time.now,
    #         failure_details: {
    #           status_code: 1,
    #           message: "String"
    #         },
    #         job_progress: {
    #           percent_complete: 1
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSpeakerEnrollmentJobsOutput]
    def list_speaker_enrollment_jobs(params = {}, options = {})
      request = build_request(:list_speaker_enrollment_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all speakers in a specified domain.</p>
    # @param [Hash, Types::ListSpeakersInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100. </p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_speakers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     speaker_summaries: [
    #       {
    #         domain_id: "DomainId",
    #         customer_speaker_id: "CustomerSpeakerId",
    #         generated_speaker_id: "GeneratedSpeakerId",
    #         status: "SpeakerStatus",
    #         created_at: Time.now,
    #         updated_at: Time.now,
    #         last_accessed_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSpeakersOutput]
    def list_speakers(params = {}, options = {})
      request = build_request(:list_speakers, params)
      request.send_request(options)
    end

    # <p>Lists all tags associated with a specified Voice ID resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource for which you want to list
    #               the tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists all watchlists in a specified domain.</p>
    # @param [Hash, Types::ListWatchlistsInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that are returned per call. You can use
    #               <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.
    #           </p>
    # @option params [String] :next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #               <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. Each pagination token expires after 24 hours.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_watchlists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     watchlist_summaries: [
    #       {
    #         domain_id: "DomainId",
    #         watchlist_id: "WatchlistId",
    #         name: "WatchlistName",
    #         description: "WatchlistDescription",
    #         default_watchlist: false,
    #         created_at: Time.now,
    #         updated_at: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListWatchlistsOutput]
    def list_watchlists(params = {}, options = {})
      request = build_request(:list_watchlists, params)
      request.send_request(options)
    end

    # <p>Opts out a speaker from Voice ID. A speaker can be opted out regardless of whether or
    #             not they already exist in Voice ID. If they don't yet exist, a new speaker is created
    #             in an opted out state. If they already exist, their existing status is overridden and
    #             they are opted out. Enrollment and evaluation authentication requests are rejected for
    #             opted out speakers, and opted out speakers have no voice embeddings stored in
    #             Voice ID.</p>
    # @param [Hash, Types::OptOutSpeakerInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the speaker.</p>
    # @option params [String] :speaker_id
    #   <p>The identifier of the speaker you want opted-out.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     speaker_id: "SpeakerId", # required
    #   }
    #   options = {}
    #   response = client.opt_out_speaker(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     speaker: {
    #       domain_id: "DomainId",
    #       customer_speaker_id: "CustomerSpeakerId",
    #       generated_speaker_id: "GeneratedSpeakerId",
    #       status: "SpeakerStatus",
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       last_accessed_at: Time.now
    #     }
    #   }
    # @return [Types::OptOutSpeakerOutput]
    def opt_out_speaker(params = {}, options = {})
      request = build_request(:opt_out_speaker, params)
      request.send_request(options)
    end

    # <p>Starts a new batch fraudster registration job using provided details.</p>
    # @param [Hash, Types::StartFraudsterRegistrationJobInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :job_name
    #   <p>The name of the new fraudster registration job.</p>
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the fraudster registration job and in which
    #               the fraudsters are registered.</p>
    # @option params [String] :data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access
    #               customer's buckets to read the input manifest file and write the Job output file. Refer
    #               to the <a href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html">Create and edit a
    #                   fraudster watchlist</a> documentation for the permissions needed in this
    #               role.</p>
    # @option params [Types::RegistrationConfig] :registration_config
    #   <p>The registration config containing details such as the action to take when a duplicate
    #               fraudster is detected, and the similarity threshold to use for detecting a duplicate
    #               fraudster. </p>
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>The input data config containing an S3 URI for the input manifest file that contains
    #               the list of fraudster registration requests.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job
    #               output file; you must also include a KMS key ID to encrypt the
    #               file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientTokenString",
    #     job_name: "JobName",
    #     domain_id: "DomainId", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     registration_config: {
    #       duplicate_registration_action: "DuplicateRegistrationAction",
    #       fraudster_similarity_threshold: 1,
    #       watchlist_ids: ["WatchlistId"]
    #     },
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     }
    #   }
    #   options = {}
    #   response = client.start_fraudster_registration_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_name: "JobName",
    #       job_id: "JobId",
    #       job_status: "FraudsterRegistrationJobStatus",
    #       domain_id: "DomainId",
    #       data_access_role_arn: "IamRoleArn",
    #       registration_config: {
    #         duplicate_registration_action: "DuplicateRegistrationAction",
    #         fraudster_similarity_threshold: 1,
    #         watchlist_ids: ["WatchlistId"]
    #       },
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       created_at: Time.now,
    #       ended_at: Time.now,
    #       failure_details: {
    #         status_code: 1,
    #         message: "String"
    #       },
    #       job_progress: {
    #         percent_complete: 1
    #       }
    #     }
    #   }
    # @return [Types::StartFraudsterRegistrationJobOutput]
    def start_fraudster_registration_job(params = {}, options = {})
      request = build_request(:start_fraudster_registration_job, params)
      request.send_request(options)
    end

    # <p>Starts a new batch speaker enrollment job using specified details.</p>
    # @param [Hash, Types::StartSpeakerEnrollmentJobInput] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :job_name
    #   <p>A name for your speaker enrollment job.</p>
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the speaker enrollment job and in which the
    #               speakers are enrolled. </p>
    # @option params [String] :data_access_role_arn
    #   <p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access
    #               customer's buckets to read the input manifest file and write the job output file. Refer
    #               to <a href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html">Batch enrollment using
    #                   audio data from prior calls</a> for the permissions needed in this role.</p>
    # @option params [Types::EnrollmentConfig] :enrollment_config
    #   <p>The enrollment config that contains details such as the action to take when a speaker
    #               is already enrolled in Voice ID or when a speaker is identified as a fraudster.</p>
    # @option params [Types::InputDataConfig] :input_data_config
    #   <p>The input data config containing the S3 location for the input manifest file that
    #               contains the list of speaker enrollment requests.</p>
    # @option params [Types::OutputDataConfig] :output_data_config
    #   <p>The output data config containing the S3 location where Voice ID writes the job
    #               output file; you must also include a KMS key ID to encrypt the
    #               file.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientTokenString",
    #     job_name: "JobName",
    #     domain_id: "DomainId", # required
    #     data_access_role_arn: "IamRoleArn", # required
    #     enrollment_config: {
    #       existing_enrollment_action: "ExistingEnrollmentAction",
    #       fraud_detection_config: {
    #         fraud_detection_action: "FraudDetectionAction",
    #         risk_threshold: 1,
    #         watchlist_ids: ["WatchlistId"]
    #       }
    #     },
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       kms_key_id: "KmsKeyId"
    #     }
    #   }
    #   options = {}
    #   response = client.start_speaker_enrollment_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job: {
    #       job_name: "JobName",
    #       job_id: "JobId",
    #       job_status: "SpeakerEnrollmentJobStatus",
    #       domain_id: "DomainId",
    #       data_access_role_arn: "IamRoleArn",
    #       enrollment_config: {
    #         existing_enrollment_action: "ExistingEnrollmentAction",
    #         fraud_detection_config: {
    #           fraud_detection_action: "FraudDetectionAction",
    #           risk_threshold: 1,
    #           watchlist_ids: ["WatchlistId"]
    #         }
    #       },
    #       input_data_config: {
    #         s3_uri: "S3Uri", # required
    #       },
    #       output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId"
    #       },
    #       created_at: Time.now,
    #       ended_at: Time.now,
    #       failure_details: {
    #         status_code: 1,
    #         message: "String"
    #       },
    #       job_progress: {
    #         percent_complete: 1
    #       }
    #     }
    #   }
    # @return [Types::StartSpeakerEnrollmentJobOutput]
    def start_speaker_enrollment_job(params = {}, options = {})
      request = build_request(:start_speaker_enrollment_job, params)
      request.send_request(options)
    end

    # <p>Tags a Voice ID resource with the provided list of tags.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource you want to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags to assign to the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes specified tags from a specified Amazon Connect Voice ID resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Voice ID resource you want to remove tags
    #               from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys you want to remove from the specified resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates the specified domain. This API has clobber behavior, and clears and replaces
    #             all attributes. If an optional field, such as 'Description' is not provided, it is
    #             removed from the domain.</p>
    # @param [Hash, Types::UpdateDomainInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain to be updated.</p>
    # @option params [String] :name
    #   <p>The name of the domain.</p>
    # @option params [String] :description
    #   <p>A brief description about this domain.</p>
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The configuration, containing the KMS key identifier, to be used by
    #               Voice ID for the server-side encryption of your data. Changing the domain's associated
    #                   KMS key immediately triggers an asynchronous process to remove
    #               dependency on the old KMS key, such that the domain's data can only be
    #               accessed using the new KMS key. The domain's
    #                   <code>ServerSideEncryptionUpdateDetails</code> contains the details for this
    #               process.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     name: "DomainName", # required
    #     description: "Description",
    #     server_side_encryption_configuration: { # required
    #       kms_key_id: "KmsKeyId", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: {
    #       domain_id: "DomainId",
    #       arn: "Arn",
    #       name: "DomainName",
    #       description: "Description",
    #       domain_status: "DomainStatus",
    #       server_side_encryption_configuration: {
    #         kms_key_id: "KmsKeyId", # required
    #       },
    #       created_at: Time.now,
    #       updated_at: Time.now,
    #       server_side_encryption_update_details: {
    #         old_kms_key_id: "KmsKeyId",
    #         update_status: "ServerSideEncryptionUpdateStatus",
    #         message: "String"
    #       },
    #       watchlist_details: {
    #         default_watchlist_id: "WatchlistId", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateDomainOutput]
    def update_domain(params = {}, options = {})
      request = build_request(:update_domain, params)
      request.send_request(options)
    end

    # <p>Updates the specified watchlist. Every domain has a default watchlist which cannot be updated.
    #         </p>
    # @param [Hash, Types::UpdateWatchlistInput] params
    # @option params [String] :domain_id
    #   <p>The identifier of the domain that contains the watchlist.</p>
    # @option params [String] :watchlist_id
    #   <p>The identifier of the watchlist to be updated.</p>
    # @option params [String] :name
    #   <p>The name of the watchlist.</p>
    # @option params [String] :description
    #   <p>A brief description about this watchlist.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain_id: "DomainId", # required
    #     watchlist_id: "WatchlistId", # required
    #     name: "WatchlistName",
    #     description: "WatchlistDescription"
    #   }
    #   options = {}
    #   response = client.update_watchlist(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     watchlist: {
    #       domain_id: "DomainId",
    #       watchlist_id: "WatchlistId",
    #       name: "WatchlistName",
    #       description: "WatchlistDescription",
    #       default_watchlist: false,
    #       created_at: Time.now,
    #       updated_at: Time.now
    #     }
    #   }
    # @return [Types::UpdateWatchlistOutput]
    def update_watchlist(params = {}, options = {})
      request = build_request(:update_watchlist, params)
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
      context[:gem_name] = 'aws-sdk-voiceid'
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
