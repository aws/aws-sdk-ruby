# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/http_checksum.rb'
require 'aws-sdk-core/plugins/checksum_algorithm.rb'
require 'aws-sdk-core/plugins/request_compression.rb'
require 'aws-sdk-core/plugins/defaults_mode.rb'
require 'aws-sdk-core/plugins/recursion_detection.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:voiceid)

module Aws::VoiceID
  # An API client for VoiceID.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::VoiceID::Client.new(
  #       region: region_name,
  #       credentials: credentials,
  #       # ...
  #     )
  #
  # For details on configuring region and credentials see
  # the [developer guide](/sdk-for-ruby/v3/developer-guide/setup-config.html).
  #
  # See {#initialize} for a full list of supported configuration options.
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :voiceid

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::HttpChecksum)
    add_plugin(Aws::Plugins::ChecksumAlgorithm)
    add_plugin(Aws::Plugins::RequestCompression)
    add_plugin(Aws::Plugins::DefaultsMode)
    add_plugin(Aws::Plugins::RecursionDetection)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::VoiceID::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::SharedCredentials` - Used for loading static credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     * `Aws::AssumeRoleWebIdentityCredentials` - Used when you need to
    #       assume a role after providing credentials via the web.
    #
    #     * `Aws::SSOCredentials` - Used for loading credentials from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     * `Aws::ProcessCredentials` - Used for loading credentials from a
    #       process that outputs to stdout.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::ECSCredentials` - Used for loading credentials from
    #       instances running in ECS.
    #
    #     * `Aws::CognitoIdentityCredentials` - Used for loading credentials
    #       from the Cognito Identity service.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting ENV['AWS_EC2_METADATA_DISABLED']
    #       to true.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is searched for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #     Used only in `adaptive` retry mode.  When true, the request will sleep
    #     until there is sufficent client side capacity to retry the request.
    #     When false, the request will raise a `RetryCapacityNotAvailableError` and will
    #     not retry instead of sleeping.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :correct_clock_skew (true)
    #     Used only in `standard` and adaptive retry modes. Specifies whether to apply
    #     a clock skew correction and retry requests with skewed client clocks.
    #
    #   @option options [String] :defaults_mode ("legacy")
    #     See {Aws::DefaultsModeConfiguration} for a list of the
    #     accepted modes and the configuration defaults that are included.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [Boolean] :disable_request_compression (false)
    #     When set to 'true' the request body will not be compressed
    #     for supported operations.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test or custom endpoints. This should be a valid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [Integer] :max_attempts (3)
    #     An integer representing the maximum number attempts that will be made for
    #     a single request, including the initial attempt.  For example,
    #     setting this value to 5 will result in a request being retried up to
    #     4 times. Used in `standard` and `adaptive` retry modes.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [Proc] :retry_backoff
    #     A proc or lambda used for backoff. Defaults to 2**retries * retry_base_delay.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function. This option
    #     is only used in the `legacy` retry mode.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function.
    #     Some predefined functions can be referenced by name - :none, :equal, :full,
    #     otherwise a Proc that takes and returns a number. This option is only used
    #     in the `legacy` retry mode.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors, auth errors,
    #     endpoint discovery, and errors from expired credentials.
    #     This option is only used in the `legacy` retry mode.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit)
    #     used by the default backoff function. This option is only used in the
    #     `legacy` retry mode.
    #
    #   @option options [String] :retry_mode ("legacy")
    #     Specifies which retry algorithm to use. Values are:
    #
    #     * `legacy` - The pre-existing retry behavior.  This is default value if
    #       no retry mode is provided.
    #
    #     * `standard` - A standardized set of retry rules across the AWS SDKs.
    #       This includes support for retry quotas, which limit the number of
    #       unsuccessful retries a client can make.
    #
    #     * `adaptive` - An experimental retry mode that includes all the
    #       functionality of `standard` mode along with automatic client side
    #       throttling.  This is a provisional mode that may change behavior
    #       in the future.
    #
    #
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/<sdk_ua_app_id>. It should have a
    #     maximum length of 50.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Aws::TokenProvider] :token_provider
    #     A Bearer Token Provider. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::StaticTokenProvider` - Used for configuring static, non-refreshing
    #       tokens.
    #
    #     * `Aws::SSOTokenProvider` - Used for loading tokens from AWS SSO using an
    #       access token generated from `aws login`.
    #
    #     When `:token_provider` is not configured directly, the `Aws::TokenProviderChain`
    #     will be used to search for tokens configured for your profile in shared configuration files.
    #
    #   @option options [Boolean] :use_dualstack_endpoint
    #     When set to `true`, dualstack enabled endpoints (with `.aws` TLD)
    #     will be used if available.
    #
    #   @option options [Boolean] :use_fips_endpoint
    #     When set to `true`, fips compatible endpoints will be used if available.
    #     When a `fips` region is used, the region is normalized and this config
    #     is set to `true`.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [Aws::VoiceID::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::VoiceID::EndpointParameters`
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Float] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set per-request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idle before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session.
    #
    #   @option options [Float] :ssl_timeout (nil) Sets the SSL timeout
    #     in seconds.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Associates the fraudsters with the watchlist specified in the same
    # domain.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the fraudster.
    #
    # @option params [required, String] :fraudster_id
    #   The identifier of the fraudster to be associated with the watchlist.
    #
    # @option params [required, String] :watchlist_id
    #   The identifier of the watchlist you want to associate with the
    #   fraudster.
    #
    # @return [Types::AssociateFraudsterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateFraudsterResponse#fraudster #fraudster} => Types::Fraudster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_fraudster({
    #     domain_id: "DomainId", # required
    #     fraudster_id: "FraudsterId", # required
    #     watchlist_id: "WatchlistId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fraudster.created_at #=> Time
    #   resp.fraudster.domain_id #=> String
    #   resp.fraudster.generated_fraudster_id #=> String
    #   resp.fraudster.watchlist_ids #=> Array
    #   resp.fraudster.watchlist_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/AssociateFraudster AWS API Documentation
    #
    # @overload associate_fraudster(params = {})
    # @param [Hash] params ({})
    def associate_fraudster(params = {}, options = {})
      req = build_request(:associate_fraudster, params)
      req.send_request(options)
    end

    # Creates a domain that contains all Amazon Connect Voice ID data, such
    # as speakers, fraudsters, customer audio, and voiceprints. Every domain
    # is created with a default watchlist that fraudsters can be a part of.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [String] :description
    #   A brief description of this domain.
    #
    # @option params [required, String] :name
    #   The name of the domain.
    #
    # @option params [required, Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The configuration, containing the KMS key identifier, to be used by
    #   Voice ID for the server-side encryption of your data. Refer to [
    #   Amazon Connect Voice ID encryption at rest][1] for more details on how
    #   the KMS key is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags you want added to the domain.
    #
    # @return [Types::CreateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDomainResponse#domain #domain} => Types::Domain
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain({
    #     client_token: "ClientTokenString",
    #     description: "Description",
    #     name: "DomainName", # required
    #     server_side_encryption_configuration: { # required
    #       kms_key_id: "KmsKeyId", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.arn #=> String
    #   resp.domain.created_at #=> Time
    #   resp.domain.description #=> String
    #   resp.domain.domain_id #=> String
    #   resp.domain.domain_status #=> String, one of "ACTIVE", "PENDING", "SUSPENDED"
    #   resp.domain.name #=> String
    #   resp.domain.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.domain.server_side_encryption_update_details.message #=> String
    #   resp.domain.server_side_encryption_update_details.old_kms_key_id #=> String
    #   resp.domain.server_side_encryption_update_details.update_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.domain.updated_at #=> Time
    #   resp.domain.watchlist_details.default_watchlist_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/CreateDomain AWS API Documentation
    #
    # @overload create_domain(params = {})
    # @param [Hash] params ({})
    def create_domain(params = {}, options = {})
      req = build_request(:create_domain, params)
      req.send_request(options)
    end

    # Creates a watchlist that fraudsters can be a part of.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [String] :description
    #   A brief description of this watchlist.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the watchlist.
    #
    # @option params [required, String] :name
    #   The name of the watchlist.
    #
    # @return [Types::CreateWatchlistResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWatchlistResponse#watchlist #watchlist} => Types::Watchlist
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_watchlist({
    #     client_token: "ClientTokenString",
    #     description: "WatchlistDescription",
    #     domain_id: "DomainId", # required
    #     name: "WatchlistName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.watchlist.created_at #=> Time
    #   resp.watchlist.default_watchlist #=> Boolean
    #   resp.watchlist.description #=> String
    #   resp.watchlist.domain_id #=> String
    #   resp.watchlist.name #=> String
    #   resp.watchlist.updated_at #=> Time
    #   resp.watchlist.watchlist_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/CreateWatchlist AWS API Documentation
    #
    # @overload create_watchlist(params = {})
    # @param [Hash] params ({})
    def create_watchlist(params = {}, options = {})
      req = build_request(:create_watchlist, params)
      req.send_request(options)
    end

    # Deletes the specified domain from Voice ID.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DeleteDomain AWS API Documentation
    #
    # @overload delete_domain(params = {})
    # @param [Hash] params ({})
    def delete_domain(params = {}, options = {})
      req = build_request(:delete_domain, params)
      req.send_request(options)
    end

    # Deletes the specified fraudster from Voice ID. This action
    # disassociates the fraudster from any watchlists it is a part of.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the fraudster.
    #
    # @option params [required, String] :fraudster_id
    #   The identifier of the fraudster you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fraudster({
    #     domain_id: "DomainId", # required
    #     fraudster_id: "FraudsterId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DeleteFraudster AWS API Documentation
    #
    # @overload delete_fraudster(params = {})
    # @param [Hash] params ({})
    def delete_fraudster(params = {}, options = {})
      req = build_request(:delete_fraudster, params)
      req.send_request(options)
    end

    # Deletes the specified speaker from Voice ID.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the speaker.
    #
    # @option params [required, String] :speaker_id
    #   The identifier of the speaker you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_speaker({
    #     domain_id: "DomainId", # required
    #     speaker_id: "SpeakerId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DeleteSpeaker AWS API Documentation
    #
    # @overload delete_speaker(params = {})
    # @param [Hash] params ({})
    def delete_speaker(params = {}, options = {})
      req = build_request(:delete_speaker, params)
      req.send_request(options)
    end

    # Deletes the specified watchlist from Voice ID. This API throws an
    # exception when there are fraudsters in the watchlist that you are
    # trying to delete. You must delete the fraudsters, and then delete the
    # watchlist. Every domain has a default watchlist which cannot be
    # deleted.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the watchlist.
    #
    # @option params [required, String] :watchlist_id
    #   The identifier of the watchlist to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_watchlist({
    #     domain_id: "DomainId", # required
    #     watchlist_id: "WatchlistId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DeleteWatchlist AWS API Documentation
    #
    # @overload delete_watchlist(params = {})
    # @param [Hash] params ({})
    def delete_watchlist(params = {}, options = {})
      req = build_request(:delete_watchlist, params)
      req.send_request(options)
    end

    # Describes the specified domain.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that you are describing.
    #
    # @return [Types::DescribeDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDomainResponse#domain #domain} => Types::Domain
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain({
    #     domain_id: "DomainId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.arn #=> String
    #   resp.domain.created_at #=> Time
    #   resp.domain.description #=> String
    #   resp.domain.domain_id #=> String
    #   resp.domain.domain_status #=> String, one of "ACTIVE", "PENDING", "SUSPENDED"
    #   resp.domain.name #=> String
    #   resp.domain.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.domain.server_side_encryption_update_details.message #=> String
    #   resp.domain.server_side_encryption_update_details.old_kms_key_id #=> String
    #   resp.domain.server_side_encryption_update_details.update_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.domain.updated_at #=> Time
    #   resp.domain.watchlist_details.default_watchlist_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeDomain AWS API Documentation
    #
    # @overload describe_domain(params = {})
    # @param [Hash] params ({})
    def describe_domain(params = {}, options = {})
      req = build_request(:describe_domain, params)
      req.send_request(options)
    end

    # Describes the specified fraudster.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the fraudster.
    #
    # @option params [required, String] :fraudster_id
    #   The identifier of the fraudster you are describing.
    #
    # @return [Types::DescribeFraudsterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFraudsterResponse#fraudster #fraudster} => Types::Fraudster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fraudster({
    #     domain_id: "DomainId", # required
    #     fraudster_id: "FraudsterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fraudster.created_at #=> Time
    #   resp.fraudster.domain_id #=> String
    #   resp.fraudster.generated_fraudster_id #=> String
    #   resp.fraudster.watchlist_ids #=> Array
    #   resp.fraudster.watchlist_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeFraudster AWS API Documentation
    #
    # @overload describe_fraudster(params = {})
    # @param [Hash] params ({})
    def describe_fraudster(params = {}, options = {})
      req = build_request(:describe_fraudster, params)
      req.send_request(options)
    end

    # Describes the specified fraudster registration job.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the fraudster registration
    #   job.
    #
    # @option params [required, String] :job_id
    #   The identifier of the fraudster registration job you are describing.
    #
    # @return [Types::DescribeFraudsterRegistrationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFraudsterRegistrationJobResponse#job #job} => Types::FraudsterRegistrationJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fraudster_registration_job({
    #     domain_id: "DomainId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.created_at #=> Time
    #   resp.job.data_access_role_arn #=> String
    #   resp.job.domain_id #=> String
    #   resp.job.ended_at #=> Time
    #   resp.job.failure_details.message #=> String
    #   resp.job.failure_details.status_code #=> Integer
    #   resp.job.input_data_config.s3_uri #=> String
    #   resp.job.job_id #=> String
    #   resp.job.job_name #=> String
    #   resp.job.job_progress.percent_complete #=> Integer
    #   resp.job.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #   resp.job.output_data_config.kms_key_id #=> String
    #   resp.job.output_data_config.s3_uri #=> String
    #   resp.job.registration_config.duplicate_registration_action #=> String, one of "SKIP", "REGISTER_AS_NEW"
    #   resp.job.registration_config.fraudster_similarity_threshold #=> Integer
    #   resp.job.registration_config.watchlist_ids #=> Array
    #   resp.job.registration_config.watchlist_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeFraudsterRegistrationJob AWS API Documentation
    #
    # @overload describe_fraudster_registration_job(params = {})
    # @param [Hash] params ({})
    def describe_fraudster_registration_job(params = {}, options = {})
      req = build_request(:describe_fraudster_registration_job, params)
      req.send_request(options)
    end

    # Describes the specified speaker.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the speaker.
    #
    # @option params [required, String] :speaker_id
    #   The identifier of the speaker you are describing.
    #
    # @return [Types::DescribeSpeakerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpeakerResponse#speaker #speaker} => Types::Speaker
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_speaker({
    #     domain_id: "DomainId", # required
    #     speaker_id: "SpeakerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.speaker.created_at #=> Time
    #   resp.speaker.customer_speaker_id #=> String
    #   resp.speaker.domain_id #=> String
    #   resp.speaker.generated_speaker_id #=> String
    #   resp.speaker.last_accessed_at #=> Time
    #   resp.speaker.status #=> String, one of "ENROLLED", "EXPIRED", "OPTED_OUT", "PENDING"
    #   resp.speaker.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeSpeaker AWS API Documentation
    #
    # @overload describe_speaker(params = {})
    # @param [Hash] params ({})
    def describe_speaker(params = {}, options = {})
      req = build_request(:describe_speaker, params)
      req.send_request(options)
    end

    # Describes the specified speaker enrollment job.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the speaker enrollment job.
    #
    # @option params [required, String] :job_id
    #   The identifier of the speaker enrollment job you are describing.
    #
    # @return [Types::DescribeSpeakerEnrollmentJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSpeakerEnrollmentJobResponse#job #job} => Types::SpeakerEnrollmentJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_speaker_enrollment_job({
    #     domain_id: "DomainId", # required
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.created_at #=> Time
    #   resp.job.data_access_role_arn #=> String
    #   resp.job.domain_id #=> String
    #   resp.job.ended_at #=> Time
    #   resp.job.enrollment_config.existing_enrollment_action #=> String, one of "SKIP", "OVERWRITE"
    #   resp.job.enrollment_config.fraud_detection_config.fraud_detection_action #=> String, one of "IGNORE", "FAIL"
    #   resp.job.enrollment_config.fraud_detection_config.risk_threshold #=> Integer
    #   resp.job.enrollment_config.fraud_detection_config.watchlist_ids #=> Array
    #   resp.job.enrollment_config.fraud_detection_config.watchlist_ids[0] #=> String
    #   resp.job.failure_details.message #=> String
    #   resp.job.failure_details.status_code #=> Integer
    #   resp.job.input_data_config.s3_uri #=> String
    #   resp.job.job_id #=> String
    #   resp.job.job_name #=> String
    #   resp.job.job_progress.percent_complete #=> Integer
    #   resp.job.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #   resp.job.output_data_config.kms_key_id #=> String
    #   resp.job.output_data_config.s3_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeSpeakerEnrollmentJob AWS API Documentation
    #
    # @overload describe_speaker_enrollment_job(params = {})
    # @param [Hash] params ({})
    def describe_speaker_enrollment_job(params = {}, options = {})
      req = build_request(:describe_speaker_enrollment_job, params)
      req.send_request(options)
    end

    # Describes the specified watchlist.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the watchlist.
    #
    # @option params [required, String] :watchlist_id
    #   The identifier of the watchlist that you are describing.
    #
    # @return [Types::DescribeWatchlistResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWatchlistResponse#watchlist #watchlist} => Types::Watchlist
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_watchlist({
    #     domain_id: "DomainId", # required
    #     watchlist_id: "WatchlistId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.watchlist.created_at #=> Time
    #   resp.watchlist.default_watchlist #=> Boolean
    #   resp.watchlist.description #=> String
    #   resp.watchlist.domain_id #=> String
    #   resp.watchlist.name #=> String
    #   resp.watchlist.updated_at #=> Time
    #   resp.watchlist.watchlist_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DescribeWatchlist AWS API Documentation
    #
    # @overload describe_watchlist(params = {})
    # @param [Hash] params ({})
    def describe_watchlist(params = {}, options = {})
      req = build_request(:describe_watchlist, params)
      req.send_request(options)
    end

    # Disassociates the fraudsters from the watchlist specified. Voice ID
    # always expects a fraudster to be a part of at least one watchlist. If
    # you try to disassociate a fraudster from its only watchlist, a
    # `ValidationException` is thrown.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the fraudster.
    #
    # @option params [required, String] :fraudster_id
    #   The identifier of the fraudster to be disassociated from the
    #   watchlist.
    #
    # @option params [required, String] :watchlist_id
    #   The identifier of the watchlist that you want to disassociate from the
    #   fraudster.
    #
    # @return [Types::DisassociateFraudsterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateFraudsterResponse#fraudster #fraudster} => Types::Fraudster
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_fraudster({
    #     domain_id: "DomainId", # required
    #     fraudster_id: "FraudsterId", # required
    #     watchlist_id: "WatchlistId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.fraudster.created_at #=> Time
    #   resp.fraudster.domain_id #=> String
    #   resp.fraudster.generated_fraudster_id #=> String
    #   resp.fraudster.watchlist_ids #=> Array
    #   resp.fraudster.watchlist_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/DisassociateFraudster AWS API Documentation
    #
    # @overload disassociate_fraudster(params = {})
    # @param [Hash] params ({})
    def disassociate_fraudster(params = {}, options = {})
      req = build_request(:disassociate_fraudster, params)
      req.send_request(options)
    end

    # Evaluates a specified session based on audio data accumulated during a
    # streaming Amazon Connect Voice ID call.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain where the session started.
    #
    # @option params [required, String] :session_name_or_id
    #   The session identifier, or name of the session, that you want to
    #   evaluate. In Voice ID integration, this is the Contact-Id.
    #
    # @return [Types::EvaluateSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EvaluateSessionResponse#authentication_result #authentication_result} => Types::AuthenticationResult
    #   * {Types::EvaluateSessionResponse#domain_id #domain_id} => String
    #   * {Types::EvaluateSessionResponse#fraud_detection_result #fraud_detection_result} => Types::FraudDetectionResult
    #   * {Types::EvaluateSessionResponse#session_id #session_id} => String
    #   * {Types::EvaluateSessionResponse#session_name #session_name} => String
    #   * {Types::EvaluateSessionResponse#streaming_status #streaming_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate_session({
    #     domain_id: "DomainId", # required
    #     session_name_or_id: "SessionNameOrId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authentication_result.audio_aggregation_ended_at #=> Time
    #   resp.authentication_result.audio_aggregation_started_at #=> Time
    #   resp.authentication_result.authentication_result_id #=> String
    #   resp.authentication_result.configuration.acceptance_threshold #=> Integer
    #   resp.authentication_result.customer_speaker_id #=> String
    #   resp.authentication_result.decision #=> String, one of "ACCEPT", "REJECT", "NOT_ENOUGH_SPEECH", "SPEAKER_NOT_ENROLLED", "SPEAKER_OPTED_OUT", "SPEAKER_ID_NOT_PROVIDED", "SPEAKER_EXPIRED"
    #   resp.authentication_result.generated_speaker_id #=> String
    #   resp.authentication_result.score #=> Integer
    #   resp.domain_id #=> String
    #   resp.fraud_detection_result.audio_aggregation_ended_at #=> Time
    #   resp.fraud_detection_result.audio_aggregation_started_at #=> Time
    #   resp.fraud_detection_result.configuration.risk_threshold #=> Integer
    #   resp.fraud_detection_result.configuration.watchlist_id #=> String
    #   resp.fraud_detection_result.decision #=> String, one of "HIGH_RISK", "LOW_RISK", "NOT_ENOUGH_SPEECH"
    #   resp.fraud_detection_result.fraud_detection_result_id #=> String
    #   resp.fraud_detection_result.reasons #=> Array
    #   resp.fraud_detection_result.reasons[0] #=> String, one of "KNOWN_FRAUDSTER", "VOICE_SPOOFING"
    #   resp.fraud_detection_result.risk_details.known_fraudster_risk.generated_fraudster_id #=> String
    #   resp.fraud_detection_result.risk_details.known_fraudster_risk.risk_score #=> Integer
    #   resp.fraud_detection_result.risk_details.voice_spoofing_risk.risk_score #=> Integer
    #   resp.session_id #=> String
    #   resp.session_name #=> String
    #   resp.streaming_status #=> String, one of "PENDING_CONFIGURATION", "ONGOING", "ENDED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/EvaluateSession AWS API Documentation
    #
    # @overload evaluate_session(params = {})
    # @param [Hash] params ({})
    def evaluate_session(params = {}, options = {})
      req = build_request(:evaluate_session, params)
      req.send_request(options)
    end

    # Lists all the domains in the Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `NextToken` to obtain more pages of results. The default is 100; the
    #   maximum allowed page size is also 100.
    #
    # @option params [String] :next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours.
    #
    # @return [Types::ListDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDomainsResponse#domain_summaries #domain_summaries} => Array&lt;Types::DomainSummary&gt;
    #   * {Types::ListDomainsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.domain_summaries #=> Array
    #   resp.domain_summaries[0].arn #=> String
    #   resp.domain_summaries[0].created_at #=> Time
    #   resp.domain_summaries[0].description #=> String
    #   resp.domain_summaries[0].domain_id #=> String
    #   resp.domain_summaries[0].domain_status #=> String, one of "ACTIVE", "PENDING", "SUSPENDED"
    #   resp.domain_summaries[0].name #=> String
    #   resp.domain_summaries[0].server_side_encryption_configuration.kms_key_id #=> String
    #   resp.domain_summaries[0].server_side_encryption_update_details.message #=> String
    #   resp.domain_summaries[0].server_side_encryption_update_details.old_kms_key_id #=> String
    #   resp.domain_summaries[0].server_side_encryption_update_details.update_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.domain_summaries[0].updated_at #=> Time
    #   resp.domain_summaries[0].watchlist_details.default_watchlist_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListDomains AWS API Documentation
    #
    # @overload list_domains(params = {})
    # @param [Hash] params ({})
    def list_domains(params = {}, options = {})
      req = build_request(:list_domains, params)
      req.send_request(options)
    end

    # Lists all the fraudster registration jobs in the domain with the given
    # `JobStatus`. If `JobStatus` is not provided, this lists all fraudster
    # registration jobs in the given domain.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the fraudster registration
    #   Jobs.
    #
    # @option params [String] :job_status
    #   Provides the status of your fraudster registration job.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `NextToken` to obtain more pages of results. The default is 100; the
    #   maximum allowed page size is also 100.
    #
    # @option params [String] :next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours.
    #
    # @return [Types::ListFraudsterRegistrationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFraudsterRegistrationJobsResponse#job_summaries #job_summaries} => Array&lt;Types::FraudsterRegistrationJobSummary&gt;
    #   * {Types::ListFraudsterRegistrationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fraudster_registration_jobs({
    #     domain_id: "DomainId", # required
    #     job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, COMPLETED_WITH_ERRORS, FAILED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summaries #=> Array
    #   resp.job_summaries[0].created_at #=> Time
    #   resp.job_summaries[0].domain_id #=> String
    #   resp.job_summaries[0].ended_at #=> Time
    #   resp.job_summaries[0].failure_details.message #=> String
    #   resp.job_summaries[0].failure_details.status_code #=> Integer
    #   resp.job_summaries[0].job_id #=> String
    #   resp.job_summaries[0].job_name #=> String
    #   resp.job_summaries[0].job_progress.percent_complete #=> Integer
    #   resp.job_summaries[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListFraudsterRegistrationJobs AWS API Documentation
    #
    # @overload list_fraudster_registration_jobs(params = {})
    # @param [Hash] params ({})
    def list_fraudster_registration_jobs(params = {}, options = {})
      req = build_request(:list_fraudster_registration_jobs, params)
      req.send_request(options)
    end

    # Lists all fraudsters in a specified watchlist or domain.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `NextToken` to obtain more pages of results. The default is 100; the
    #   maximum allowed page size is also 100.
    #
    # @option params [String] :next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours.
    #
    # @option params [String] :watchlist_id
    #   The identifier of the watchlist. If provided, all fraudsters in the
    #   watchlist are listed. If not provided, all fraudsters in the domain
    #   are listed.
    #
    # @return [Types::ListFraudstersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFraudstersResponse#fraudster_summaries #fraudster_summaries} => Array&lt;Types::FraudsterSummary&gt;
    #   * {Types::ListFraudstersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fraudsters({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     watchlist_id: "WatchlistId",
    #   })
    #
    # @example Response structure
    #
    #   resp.fraudster_summaries #=> Array
    #   resp.fraudster_summaries[0].created_at #=> Time
    #   resp.fraudster_summaries[0].domain_id #=> String
    #   resp.fraudster_summaries[0].generated_fraudster_id #=> String
    #   resp.fraudster_summaries[0].watchlist_ids #=> Array
    #   resp.fraudster_summaries[0].watchlist_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListFraudsters AWS API Documentation
    #
    # @overload list_fraudsters(params = {})
    # @param [Hash] params ({})
    def list_fraudsters(params = {}, options = {})
      req = build_request(:list_fraudsters, params)
      req.send_request(options)
    end

    # Lists all the speaker enrollment jobs in the domain with the specified
    # `JobStatus`. If `JobStatus` is not provided, this lists all jobs with
    # all possible speaker enrollment job statuses.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the speaker enrollment
    #   jobs.
    #
    # @option params [String] :job_status
    #   Provides the status of your speaker enrollment Job.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `NextToken` to obtain more pages of results. The default is 100; the
    #   maximum allowed page size is also 100.
    #
    # @option params [String] :next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours.
    #
    # @return [Types::ListSpeakerEnrollmentJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSpeakerEnrollmentJobsResponse#job_summaries #job_summaries} => Array&lt;Types::SpeakerEnrollmentJobSummary&gt;
    #   * {Types::ListSpeakerEnrollmentJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_speaker_enrollment_jobs({
    #     domain_id: "DomainId", # required
    #     job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, COMPLETED_WITH_ERRORS, FAILED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_summaries #=> Array
    #   resp.job_summaries[0].created_at #=> Time
    #   resp.job_summaries[0].domain_id #=> String
    #   resp.job_summaries[0].ended_at #=> Time
    #   resp.job_summaries[0].failure_details.message #=> String
    #   resp.job_summaries[0].failure_details.status_code #=> Integer
    #   resp.job_summaries[0].job_id #=> String
    #   resp.job_summaries[0].job_name #=> String
    #   resp.job_summaries[0].job_progress.percent_complete #=> Integer
    #   resp.job_summaries[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListSpeakerEnrollmentJobs AWS API Documentation
    #
    # @overload list_speaker_enrollment_jobs(params = {})
    # @param [Hash] params ({})
    def list_speaker_enrollment_jobs(params = {}, options = {})
      req = build_request(:list_speaker_enrollment_jobs, params)
      req.send_request(options)
    end

    # Lists all speakers in a specified domain.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `NextToken` to obtain more pages of results. The default is 100; the
    #   maximum allowed page size is also 100.
    #
    # @option params [String] :next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours.
    #
    # @return [Types::ListSpeakersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSpeakersResponse#next_token #next_token} => String
    #   * {Types::ListSpeakersResponse#speaker_summaries #speaker_summaries} => Array&lt;Types::SpeakerSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_speakers({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.speaker_summaries #=> Array
    #   resp.speaker_summaries[0].created_at #=> Time
    #   resp.speaker_summaries[0].customer_speaker_id #=> String
    #   resp.speaker_summaries[0].domain_id #=> String
    #   resp.speaker_summaries[0].generated_speaker_id #=> String
    #   resp.speaker_summaries[0].last_accessed_at #=> Time
    #   resp.speaker_summaries[0].status #=> String, one of "ENROLLED", "EXPIRED", "OPTED_OUT", "PENDING"
    #   resp.speaker_summaries[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListSpeakers AWS API Documentation
    #
    # @overload list_speakers(params = {})
    # @param [Hash] params ({})
    def list_speakers(params = {}, options = {})
      req = build_request(:list_speakers, params)
      req.send_request(options)
    end

    # Lists all tags associated with a specified Voice ID resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Voice ID resource for which you
    #   want to list the tags.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists all watchlists in a specified domain.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results that are returned per call. You can use
    #   `NextToken` to obtain more pages of results. The default is 100; the
    #   maximum allowed page size is also 100.
    #
    # @option params [String] :next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   Keep all other arguments unchanged. Each pagination token expires
    #   after 24 hours.
    #
    # @return [Types::ListWatchlistsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWatchlistsResponse#next_token #next_token} => String
    #   * {Types::ListWatchlistsResponse#watchlist_summaries #watchlist_summaries} => Array&lt;Types::WatchlistSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_watchlists({
    #     domain_id: "DomainId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.watchlist_summaries #=> Array
    #   resp.watchlist_summaries[0].created_at #=> Time
    #   resp.watchlist_summaries[0].default_watchlist #=> Boolean
    #   resp.watchlist_summaries[0].description #=> String
    #   resp.watchlist_summaries[0].domain_id #=> String
    #   resp.watchlist_summaries[0].name #=> String
    #   resp.watchlist_summaries[0].updated_at #=> Time
    #   resp.watchlist_summaries[0].watchlist_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/ListWatchlists AWS API Documentation
    #
    # @overload list_watchlists(params = {})
    # @param [Hash] params ({})
    def list_watchlists(params = {}, options = {})
      req = build_request(:list_watchlists, params)
      req.send_request(options)
    end

    # Opts out a speaker from Voice ID. A speaker can be opted out
    # regardless of whether or not they already exist in Voice ID. If they
    # don't yet exist, a new speaker is created in an opted out state. If
    # they already exist, their existing status is overridden and they are
    # opted out. Enrollment and evaluation authentication requests are
    # rejected for opted out speakers, and opted out speakers have no voice
    # embeddings stored in Voice ID.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the speaker.
    #
    # @option params [required, String] :speaker_id
    #   The identifier of the speaker you want opted-out.
    #
    # @return [Types::OptOutSpeakerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::OptOutSpeakerResponse#speaker #speaker} => Types::Speaker
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.opt_out_speaker({
    #     domain_id: "DomainId", # required
    #     speaker_id: "SpeakerId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.speaker.created_at #=> Time
    #   resp.speaker.customer_speaker_id #=> String
    #   resp.speaker.domain_id #=> String
    #   resp.speaker.generated_speaker_id #=> String
    #   resp.speaker.last_accessed_at #=> Time
    #   resp.speaker.status #=> String, one of "ENROLLED", "EXPIRED", "OPTED_OUT", "PENDING"
    #   resp.speaker.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/OptOutSpeaker AWS API Documentation
    #
    # @overload opt_out_speaker(params = {})
    # @param [Hash] params ({})
    def opt_out_speaker(params = {}, options = {})
      req = build_request(:opt_out_speaker, params)
      req.send_request(options)
    end

    # Starts a new batch fraudster registration job using provided details.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :data_access_role_arn
    #   The IAM role Amazon Resource Name (ARN) that grants Voice ID
    #   permissions to access customer's buckets to read the input manifest
    #   file and write the Job output file. Refer to the [Create and edit a
    #   fraudster watchlist][1] documentation for the permissions needed in
    #   this role.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the fraudster registration
    #   job and in which the fraudsters are registered.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   The input data config containing an S3 URI for the input manifest file
    #   that contains the list of fraudster registration requests.
    #
    # @option params [String] :job_name
    #   The name of the new fraudster registration job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   The output data config containing the S3 location where Voice ID
    #   writes the job output file; you must also include a KMS key ID to
    #   encrypt the file.
    #
    # @option params [Types::RegistrationConfig] :registration_config
    #   The registration config containing details such as the action to take
    #   when a duplicate fraudster is detected, and the similarity threshold
    #   to use for detecting a duplicate fraudster.
    #
    # @return [Types::StartFraudsterRegistrationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartFraudsterRegistrationJobResponse#job #job} => Types::FraudsterRegistrationJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fraudster_registration_job({
    #     client_token: "ClientTokenString",
    #     data_access_role_arn: "IamRoleArn", # required
    #     domain_id: "DomainId", # required
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     job_name: "JobName",
    #     output_data_config: { # required
    #       kms_key_id: "KmsKeyId",
    #       s3_uri: "S3Uri", # required
    #     },
    #     registration_config: {
    #       duplicate_registration_action: "SKIP", # accepts SKIP, REGISTER_AS_NEW
    #       fraudster_similarity_threshold: 1,
    #       watchlist_ids: ["WatchlistId"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job.created_at #=> Time
    #   resp.job.data_access_role_arn #=> String
    #   resp.job.domain_id #=> String
    #   resp.job.ended_at #=> Time
    #   resp.job.failure_details.message #=> String
    #   resp.job.failure_details.status_code #=> Integer
    #   resp.job.input_data_config.s3_uri #=> String
    #   resp.job.job_id #=> String
    #   resp.job.job_name #=> String
    #   resp.job.job_progress.percent_complete #=> Integer
    #   resp.job.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #   resp.job.output_data_config.kms_key_id #=> String
    #   resp.job.output_data_config.s3_uri #=> String
    #   resp.job.registration_config.duplicate_registration_action #=> String, one of "SKIP", "REGISTER_AS_NEW"
    #   resp.job.registration_config.fraudster_similarity_threshold #=> Integer
    #   resp.job.registration_config.watchlist_ids #=> Array
    #   resp.job.registration_config.watchlist_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/StartFraudsterRegistrationJob AWS API Documentation
    #
    # @overload start_fraudster_registration_job(params = {})
    # @param [Hash] params ({})
    def start_fraudster_registration_job(params = {}, options = {})
      req = build_request(:start_fraudster_registration_job, params)
      req.send_request(options)
    end

    # Starts a new batch speaker enrollment job using specified details.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :data_access_role_arn
    #   The IAM role Amazon Resource Name (ARN) that grants Voice ID
    #   permissions to access customer's buckets to read the input manifest
    #   file and write the job output file. Refer to [Batch enrollment using
    #   audio data from prior calls][1] for the permissions needed in this
    #   role.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the speaker enrollment job
    #   and in which the speakers are enrolled.
    #
    # @option params [Types::EnrollmentConfig] :enrollment_config
    #   The enrollment config that contains details such as the action to take
    #   when a speaker is already enrolled in Voice ID or when a speaker is
    #   identified as a fraudster.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   The input data config containing the S3 location for the input
    #   manifest file that contains the list of speaker enrollment requests.
    #
    # @option params [String] :job_name
    #   A name for your speaker enrollment job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   The output data config containing the S3 location where Voice ID
    #   writes the job output file; you must also include a KMS key ID to
    #   encrypt the file.
    #
    # @return [Types::StartSpeakerEnrollmentJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSpeakerEnrollmentJobResponse#job #job} => Types::SpeakerEnrollmentJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_speaker_enrollment_job({
    #     client_token: "ClientTokenString",
    #     data_access_role_arn: "IamRoleArn", # required
    #     domain_id: "DomainId", # required
    #     enrollment_config: {
    #       existing_enrollment_action: "SKIP", # accepts SKIP, OVERWRITE
    #       fraud_detection_config: {
    #         fraud_detection_action: "IGNORE", # accepts IGNORE, FAIL
    #         risk_threshold: 1,
    #         watchlist_ids: ["WatchlistId"],
    #       },
    #     },
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     job_name: "JobName",
    #     output_data_config: { # required
    #       kms_key_id: "KmsKeyId",
    #       s3_uri: "S3Uri", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job.created_at #=> Time
    #   resp.job.data_access_role_arn #=> String
    #   resp.job.domain_id #=> String
    #   resp.job.ended_at #=> Time
    #   resp.job.enrollment_config.existing_enrollment_action #=> String, one of "SKIP", "OVERWRITE"
    #   resp.job.enrollment_config.fraud_detection_config.fraud_detection_action #=> String, one of "IGNORE", "FAIL"
    #   resp.job.enrollment_config.fraud_detection_config.risk_threshold #=> Integer
    #   resp.job.enrollment_config.fraud_detection_config.watchlist_ids #=> Array
    #   resp.job.enrollment_config.fraud_detection_config.watchlist_ids[0] #=> String
    #   resp.job.failure_details.message #=> String
    #   resp.job.failure_details.status_code #=> Integer
    #   resp.job.input_data_config.s3_uri #=> String
    #   resp.job.job_id #=> String
    #   resp.job.job_name #=> String
    #   resp.job.job_progress.percent_complete #=> Integer
    #   resp.job.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "FAILED"
    #   resp.job.output_data_config.kms_key_id #=> String
    #   resp.job.output_data_config.s3_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/StartSpeakerEnrollmentJob AWS API Documentation
    #
    # @overload start_speaker_enrollment_job(params = {})
    # @param [Hash] params ({})
    def start_speaker_enrollment_job(params = {}, options = {})
      req = build_request(:start_speaker_enrollment_job, params)
      req.send_request(options)
    end

    # Tags a Voice ID resource with the provided list of tags.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Voice ID resource you want to
    #   tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The list of tags to assign to the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes specified tags from a specified Amazon Connect Voice ID
    # resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the Voice ID resource you want to
    #   remove tags from.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys you want to remove from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified domain. This API has clobber behavior, and
    # clears and replaces all attributes. If an optional field, such as
    # 'Description' is not provided, it is removed from the domain.
    #
    # @option params [String] :description
    #   A brief description about this domain.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain to be updated.
    #
    # @option params [required, String] :name
    #   The name of the domain.
    #
    # @option params [required, Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The configuration, containing the KMS key identifier, to be used by
    #   Voice ID for the server-side encryption of your data. Changing the
    #   domain's associated KMS key immediately triggers an asynchronous
    #   process to remove dependency on the old KMS key, such that the
    #   domain's data can only be accessed using the new KMS key. The
    #   domain's `ServerSideEncryptionUpdateDetails` contains the details for
    #   this process.
    #
    # @return [Types::UpdateDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateDomainResponse#domain #domain} => Types::Domain
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain({
    #     description: "Description",
    #     domain_id: "DomainId", # required
    #     name: "DomainName", # required
    #     server_side_encryption_configuration: { # required
    #       kms_key_id: "KmsKeyId", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.domain.arn #=> String
    #   resp.domain.created_at #=> Time
    #   resp.domain.description #=> String
    #   resp.domain.domain_id #=> String
    #   resp.domain.domain_status #=> String, one of "ACTIVE", "PENDING", "SUSPENDED"
    #   resp.domain.name #=> String
    #   resp.domain.server_side_encryption_configuration.kms_key_id #=> String
    #   resp.domain.server_side_encryption_update_details.message #=> String
    #   resp.domain.server_side_encryption_update_details.old_kms_key_id #=> String
    #   resp.domain.server_side_encryption_update_details.update_status #=> String, one of "IN_PROGRESS", "COMPLETED", "FAILED"
    #   resp.domain.updated_at #=> Time
    #   resp.domain.watchlist_details.default_watchlist_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UpdateDomain AWS API Documentation
    #
    # @overload update_domain(params = {})
    # @param [Hash] params ({})
    def update_domain(params = {}, options = {})
      req = build_request(:update_domain, params)
      req.send_request(options)
    end

    # Updates the specified watchlist. Every domain has a default watchlist
    # which cannot be updated.
    #
    # @option params [String] :description
    #   A brief description about this watchlist.
    #
    # @option params [required, String] :domain_id
    #   The identifier of the domain that contains the watchlist.
    #
    # @option params [String] :name
    #   The name of the watchlist.
    #
    # @option params [required, String] :watchlist_id
    #   The identifier of the watchlist to be updated.
    #
    # @return [Types::UpdateWatchlistResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWatchlistResponse#watchlist #watchlist} => Types::Watchlist
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_watchlist({
    #     description: "WatchlistDescription",
    #     domain_id: "DomainId", # required
    #     name: "WatchlistName",
    #     watchlist_id: "WatchlistId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.watchlist.created_at #=> Time
    #   resp.watchlist.default_watchlist #=> Boolean
    #   resp.watchlist.description #=> String
    #   resp.watchlist.domain_id #=> String
    #   resp.watchlist.name #=> String
    #   resp.watchlist.updated_at #=> Time
    #   resp.watchlist.watchlist_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/voice-id-2021-09-27/UpdateWatchlist AWS API Documentation
    #
    # @overload update_watchlist(params = {})
    # @param [Hash] params ({})
    def update_watchlist(params = {}, options = {})
      req = build_request(:update_watchlist, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-voiceid'
      context[:gem_version] = '1.17.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
