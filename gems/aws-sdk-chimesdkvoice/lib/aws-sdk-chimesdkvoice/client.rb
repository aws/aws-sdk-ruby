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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:chimesdkvoice)

module Aws::ChimeSDKVoice
  # An API client for ChimeSDKVoice.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ChimeSDKVoice::Client.new(
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

    @identifier = :chimesdkvoice

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
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::ChimeSDKVoice::Plugins::Endpoints)

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
    #   @option options [Aws::ChimeSDKVoice::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ChimeSDKVoice::EndpointParameters`
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

    # Associates phone numbers with the specified Amazon Chime SDK Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @option params [Boolean] :force_associate
    #   If true, associates the provided phone numbers with the provided
    #   Amazon Chime SDK Voice Connector and removes any previously existing
    #   associations. If false, does not associate any phone numbers that have
    #   previously existing associations.
    #
    # @return [Types::AssociatePhoneNumbersWithVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociatePhoneNumbersWithVoiceConnectorResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_numbers_with_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #     force_associate: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AssociatePhoneNumbersWithVoiceConnector AWS API Documentation
    #
    # @overload associate_phone_numbers_with_voice_connector(params = {})
    # @param [Hash] params ({})
    def associate_phone_numbers_with_voice_connector(params = {}, options = {})
      req = build_request(:associate_phone_numbers_with_voice_connector, params)
      req.send_request(options)
    end

    # Associates phone numbers with the specified Amazon Chime SDK Voice
    # Connector group.
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Amazon Chime SDK Voice Connector group ID.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @option params [Boolean] :force_associate
    #   If true, associates the provided phone numbers with the provided
    #   Amazon Chime SDK Voice Connector Group and removes any previously
    #   existing associations. If false, does not associate any phone numbers
    #   that have previously existing associations.
    #
    # @return [Types::AssociatePhoneNumbersWithVoiceConnectorGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociatePhoneNumbersWithVoiceConnectorGroupResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_numbers_with_voice_connector_group({
    #     voice_connector_group_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #     force_associate: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/AssociatePhoneNumbersWithVoiceConnectorGroup AWS API Documentation
    #
    # @overload associate_phone_numbers_with_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def associate_phone_numbers_with_voice_connector_group(params = {}, options = {})
      req = build_request(:associate_phone_numbers_with_voice_connector_group, params)
      req.send_request(options)
    end

    # Moves phone numbers into the **Deletion queue**. Phone numbers must be
    # disassociated from any users or Amazon Chime SDK Voice Connectors
    # before they can be deleted.
    #
    # Phone numbers remain in the **Deletion queue** for 7 days before they
    # are deleted permanently.
    #
    # @option params [required, Array<String>] :phone_number_ids
    #   List of phone number IDs.
    #
    # @return [Types::BatchDeletePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeletePhoneNumberResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_phone_number({
    #     phone_number_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BatchDeletePhoneNumber AWS API Documentation
    #
    # @overload batch_delete_phone_number(params = {})
    # @param [Hash] params ({})
    def batch_delete_phone_number(params = {}, options = {})
      req = build_request(:batch_delete_phone_number, params)
      req.send_request(options)
    end

    # Updates one or more phone numbers.
    #
    # @option params [required, Array<Types::UpdatePhoneNumberRequestItem>] :update_phone_number_request_items
    #   Lists the phone numbers in the update request.
    #
    # @return [Types::BatchUpdatePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdatePhoneNumberResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_phone_number({
    #     update_phone_number_request_items: [ # required
    #       {
    #         phone_number_id: "SensitiveNonEmptyString", # required
    #         product_type: "VoiceConnector", # accepts VoiceConnector, SipMediaApplicationDialIn
    #         calling_name: "CallingName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/BatchUpdatePhoneNumber AWS API Documentation
    #
    # @overload batch_update_phone_number(params = {})
    # @param [Hash] params ({})
    def batch_update_phone_number(params = {}, options = {})
      req = build_request(:batch_update_phone_number, params)
      req.send_request(options)
    end

    # Creates an order for phone numbers to be provisioned. For numbers
    # outside the U.S., you must use the Amazon Chime SDK SIP media
    # application dial-in product type.
    #
    # @option params [required, String] :product_type
    #   The phone number product type.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @return [Types::CreatePhoneNumberOrderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePhoneNumberOrderResponse#phone_number_order #phone_number_order} => Types::PhoneNumberOrder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_phone_number_order({
    #     product_type: "VoiceConnector", # required, accepts VoiceConnector, SipMediaApplicationDialIn
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_order.phone_number_order_id #=> String
    #   resp.phone_number_order.product_type #=> String, one of "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_order.status #=> String, one of "Processing", "Successful", "Failed", "Partial", "PendingDocuments", "Submitted", "FOC", "ChangeRequested", "Exception", "CancelRequested", "Cancelled"
    #   resp.phone_number_order.order_type #=> String, one of "New", "Porting"
    #   resp.phone_number_order.ordered_phone_numbers #=> Array
    #   resp.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_order.ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_order.created_timestamp #=> Time
    #   resp.phone_number_order.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreatePhoneNumberOrder AWS API Documentation
    #
    # @overload create_phone_number_order(params = {})
    # @param [Hash] params ({})
    def create_phone_number_order(params = {}, options = {})
      req = build_request(:create_phone_number_order, params)
      req.send_request(options)
    end

    # Creates a proxy session for the specified Amazon Chime SDK Voice
    # Connector for the specified participant phone numbers.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Array<String>] :participant_phone_numbers
    #   The participant phone numbers.
    #
    # @option params [String] :name
    #   The name of the proxy session.
    #
    # @option params [Integer] :expiry_minutes
    #   The number of minutes allowed for the proxy session.
    #
    # @option params [required, Array<String>] :capabilities
    #   The proxy session's capabilities.
    #
    # @option params [String] :number_selection_behavior
    #   The preference for proxy phone number reuse, or stickiness, between
    #   the same participants across sessions.
    #
    # @option params [String] :geo_match_level
    #   The preference for matching the country or area code of the proxy
    #   phone number with that of the first participant.
    #
    # @option params [Types::GeoMatchParams] :geo_match_params
    #   The country and area code for the proxy phone number.
    #
    # @return [Types::CreateProxySessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProxySessionResponse#proxy_session #proxy_session} => Types::ProxySession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_proxy_session({
    #     voice_connector_id: "NonEmptyString128", # required
    #     participant_phone_numbers: ["E164PhoneNumber"], # required
    #     name: "ProxySessionNameString",
    #     expiry_minutes: 1,
    #     capabilities: ["Voice"], # required, accepts Voice, SMS
    #     number_selection_behavior: "PreferSticky", # accepts PreferSticky, AvoidSticky
    #     geo_match_level: "Country", # accepts Country, AreaCode
    #     geo_match_params: {
    #       country: "Country", # required
    #       area_code: "AreaCode", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.proxy_session.voice_connector_id #=> String
    #   resp.proxy_session.proxy_session_id #=> String
    #   resp.proxy_session.name #=> String
    #   resp.proxy_session.status #=> String, one of "Open", "InProgress", "Closed"
    #   resp.proxy_session.expiry_minutes #=> Integer
    #   resp.proxy_session.capabilities #=> Array
    #   resp.proxy_session.capabilities[0] #=> String, one of "Voice", "SMS"
    #   resp.proxy_session.created_timestamp #=> Time
    #   resp.proxy_session.updated_timestamp #=> Time
    #   resp.proxy_session.ended_timestamp #=> Time
    #   resp.proxy_session.participants #=> Array
    #   resp.proxy_session.participants[0].phone_number #=> String
    #   resp.proxy_session.participants[0].proxy_phone_number #=> String
    #   resp.proxy_session.number_selection_behavior #=> String, one of "PreferSticky", "AvoidSticky"
    #   resp.proxy_session.geo_match_level #=> String, one of "Country", "AreaCode"
    #   resp.proxy_session.geo_match_params.country #=> String
    #   resp.proxy_session.geo_match_params.area_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateProxySession AWS API Documentation
    #
    # @overload create_proxy_session(params = {})
    # @param [Hash] params ({})
    def create_proxy_session(params = {}, options = {})
      req = build_request(:create_proxy_session, params)
      req.send_request(options)
    end

    # Creates a SIP media application. For more information about SIP media
    # applications, see [Managing SIP media applications and rules][1] in
    # the *Amazon Chime SDK Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html
    #
    # @option params [required, String] :aws_region
    #   The AWS Region assigned to the SIP media application.
    #
    # @option params [required, String] :name
    #   The SIP media application's name.
    #
    # @option params [required, Array<Types::SipMediaApplicationEndpoint>] :endpoints
    #   List of endpoints (Lambda ARNs) specified for the SIP media
    #   application.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags assigned to the SIP media application.
    #
    # @return [Types::CreateSipMediaApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSipMediaApplicationResponse#sip_media_application #sip_media_application} => Types::SipMediaApplication
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sip_media_application({
    #     aws_region: "String", # required
    #     name: "SipMediaApplicationName", # required
    #     endpoints: [ # required
    #       {
    #         lambda_arn: "FunctionArn",
    #       },
    #     ],
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
    #   resp.sip_media_application.sip_media_application_id #=> String
    #   resp.sip_media_application.aws_region #=> String
    #   resp.sip_media_application.name #=> String
    #   resp.sip_media_application.endpoints #=> Array
    #   resp.sip_media_application.endpoints[0].lambda_arn #=> String
    #   resp.sip_media_application.created_timestamp #=> Time
    #   resp.sip_media_application.updated_timestamp #=> Time
    #   resp.sip_media_application.sip_media_application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipMediaApplication AWS API Documentation
    #
    # @overload create_sip_media_application(params = {})
    # @param [Hash] params ({})
    def create_sip_media_application(params = {}, options = {})
      req = build_request(:create_sip_media_application, params)
      req.send_request(options)
    end

    # Creates an outbound call to a phone number from the phone number
    # specified in the request, and it invokes the endpoint of the specified
    # `sipMediaApplicationId`.
    #
    # @option params [required, String] :from_phone_number
    #   The phone number that a user calls from. This is a phone number in
    #   your Amazon Chime SDK phone number inventory.
    #
    # @option params [required, String] :to_phone_number
    #   The phone number that the service should call.
    #
    # @option params [required, String] :sip_media_application_id
    #   The ID of the SIP media application.
    #
    # @option params [Hash<String,String>] :sip_headers
    #   The SIP headers added to an outbound call leg.
    #
    # @option params [Hash<String,String>] :arguments_map
    #   Context passed to a CreateSipMediaApplication API call. For example,
    #   you could pass key-value pairs such as: `"FirstName": "John",
    #   "LastName": "Doe"`
    #
    # @return [Types::CreateSipMediaApplicationCallResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSipMediaApplicationCallResponse#sip_media_application_call #sip_media_application_call} => Types::SipMediaApplicationCall
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sip_media_application_call({
    #     from_phone_number: "E164PhoneNumber", # required
    #     to_phone_number: "E164PhoneNumber", # required
    #     sip_media_application_id: "NonEmptyString", # required
    #     sip_headers: {
    #       "SensitiveString" => "SensitiveString",
    #     },
    #     arguments_map: {
    #       "SensitiveString" => "SensitiveString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application_call.transaction_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipMediaApplicationCall AWS API Documentation
    #
    # @overload create_sip_media_application_call(params = {})
    # @param [Hash] params ({})
    def create_sip_media_application_call(params = {}, options = {})
      req = build_request(:create_sip_media_application_call, params)
      req.send_request(options)
    end

    # Creates a SIP rule, which can be used to run a SIP media application
    # as a target for a specific trigger type. For more information about
    # SIP rules, see [Managing SIP media applications and rules][1] in the
    # *Amazon Chime SDK Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html
    #
    # @option params [required, String] :name
    #   The name of the SIP rule.
    #
    # @option params [required, String] :trigger_type
    #   The type of trigger assigned to the SIP rule in `TriggerValue`,
    #   currently `RequestUriHostname` or `ToPhoneNumber`.
    #
    # @option params [required, String] :trigger_value
    #   If `TriggerType` is `RequestUriHostname`, the value can be the
    #   outbound host name of a Voice Connector. If `TriggerType` is
    #   `ToPhoneNumber`, the value can be a customer-owned phone number in the
    #   E164 format. The `SipMediaApplication` specified in the `SipRule` is
    #   triggered if the request URI in an incoming SIP request matches the
    #   `RequestUriHostname`, or if the `To` header in the incoming SIP
    #   request matches the `ToPhoneNumber` value.
    #
    # @option params [Boolean] :disabled
    #   Disables or enables a SIP rule. You must disable SIP rules before you
    #   can delete them.
    #
    # @option params [Array<Types::SipRuleTargetApplication>] :target_applications
    #   List of SIP media applications, with priority and AWS Region. Only one
    #   SIP application per AWS Region can be used.
    #
    # @return [Types::CreateSipRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSipRuleResponse#sip_rule #sip_rule} => Types::SipRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sip_rule({
    #     name: "SipRuleName", # required
    #     trigger_type: "ToPhoneNumber", # required, accepts ToPhoneNumber, RequestUriHostname
    #     trigger_value: "NonEmptyString", # required
    #     disabled: false,
    #     target_applications: [
    #       {
    #         sip_media_application_id: "NonEmptyString",
    #         priority: 1,
    #         aws_region: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_rule.sip_rule_id #=> String
    #   resp.sip_rule.name #=> String
    #   resp.sip_rule.disabled #=> Boolean
    #   resp.sip_rule.trigger_type #=> String, one of "ToPhoneNumber", "RequestUriHostname"
    #   resp.sip_rule.trigger_value #=> String
    #   resp.sip_rule.target_applications #=> Array
    #   resp.sip_rule.target_applications[0].sip_media_application_id #=> String
    #   resp.sip_rule.target_applications[0].priority #=> Integer
    #   resp.sip_rule.target_applications[0].aws_region #=> String
    #   resp.sip_rule.created_timestamp #=> Time
    #   resp.sip_rule.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipRule AWS API Documentation
    #
    # @overload create_sip_rule(params = {})
    # @param [Hash] params ({})
    def create_sip_rule(params = {}, options = {})
      req = build_request(:create_sip_rule, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime SDK Voice Connector. For more information
    # about Voice Connectors, see [Managing Amazon Chime SDK Voice Connector
    # groups][1] in the *Amazon Chime SDK Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/ag/voice-connector-groups.html
    #
    # @option params [required, String] :name
    #   The name of the Voice Connector.
    #
    # @option params [String] :aws_region
    #   The AWS Region in which the Amazon Chime SDK Voice Connector is
    #   created. Default value: `us-east-1` .
    #
    # @option params [required, Boolean] :require_encryption
    #   Enables or disables encryption for the Voice Connector.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags assigned to the Voice Connector.
    #
    # @return [Types::CreateVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVoiceConnectorResponse#voice_connector #voice_connector} => Types::VoiceConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_connector({
    #     name: "VoiceConnectorName", # required
    #     aws_region: "us-east-1", # accepts us-east-1, us-west-2, ca-central-1, eu-central-1, eu-west-1, eu-west-2, ap-northeast-2, ap-northeast-1, ap-southeast-1, ap-southeast-2
    #     require_encryption: false, # required
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
    #   resp.voice_connector.voice_connector_id #=> String
    #   resp.voice_connector.aws_region #=> String, one of "us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #   resp.voice_connector.voice_connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceConnector AWS API Documentation
    #
    # @overload create_voice_connector(params = {})
    # @param [Hash] params ({})
    def create_voice_connector(params = {}, options = {})
      req = build_request(:create_voice_connector, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime SDK Voice Connector group under the
    # administrator's AWS account. You can associate Amazon Chime SDK Voice
    # Connectors with the Voice Connector group by including
    # `VoiceConnectorItems` in the request.
    #
    # You can include Voice Connectors from different AWS Regions in your
    # group. This creates a fault tolerant mechanism for fallback in case of
    # availability events.
    #
    # @option params [required, String] :name
    #   The name of the Voice Connector group.
    #
    # @option params [Array<Types::VoiceConnectorItem>] :voice_connector_items
    #   Lists the Voice Connectors that inbound calls are routed to.
    #
    # @return [Types::CreateVoiceConnectorGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVoiceConnectorGroupResponse#voice_connector_group #voice_connector_group} => Types::VoiceConnectorGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_connector_group({
    #     name: "VoiceConnectorGroupName", # required
    #     voice_connector_items: [
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         priority: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector_group.voice_connector_group_id #=> String
    #   resp.voice_connector_group.name #=> String
    #   resp.voice_connector_group.voice_connector_items #=> Array
    #   resp.voice_connector_group.voice_connector_items[0].voice_connector_id #=> String
    #   resp.voice_connector_group.voice_connector_items[0].priority #=> Integer
    #   resp.voice_connector_group.created_timestamp #=> Time
    #   resp.voice_connector_group.updated_timestamp #=> Time
    #   resp.voice_connector_group.voice_connector_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceConnectorGroup AWS API Documentation
    #
    # @overload create_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def create_voice_connector_group(params = {}, options = {})
      req = build_request(:create_voice_connector_group, params)
      req.send_request(options)
    end

    # Creates a voice profile, which consists of an enrolled user and their
    # latest voice print.
    #
    # Before creating any voice profiles, you must provide all notices and
    # obtain all consents from the speaker as required under applicable
    # privacy and biometrics laws, and as required under the [AWS service
    # terms][1] for the Amazon Chime SDK.
    #
    # For more information about voice profiles and voice analytics, see
    # [Using Amazon Chime SDK Voice Analytics][2] in the *Amazon Chime SDK
    # Developer Guide*.
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html
    #
    # @option params [required, String] :speaker_search_task_id
    #   The ID of the speaker search task.
    #
    # @return [Types::CreateVoiceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVoiceProfileResponse#voice_profile #voice_profile} => Types::VoiceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_profile({
    #     speaker_search_task_id: "NonEmptyString256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_profile.voice_profile_id #=> String
    #   resp.voice_profile.voice_profile_arn #=> String
    #   resp.voice_profile.voice_profile_domain_id #=> String
    #   resp.voice_profile.created_timestamp #=> Time
    #   resp.voice_profile.updated_timestamp #=> Time
    #   resp.voice_profile.expiration_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceProfile AWS API Documentation
    #
    # @overload create_voice_profile(params = {})
    # @param [Hash] params ({})
    def create_voice_profile(params = {}, options = {})
      req = build_request(:create_voice_profile, params)
      req.send_request(options)
    end

    # Creates a voice profile domain, a collection of voice profiles, their
    # voice prints, and encrypted enrollment audio.
    #
    # Before creating any voice profiles, you must provide all notices and
    # obtain all consents from the speaker as required under applicable
    # privacy and biometrics laws, and as required under the [AWS service
    # terms][1] for the Amazon Chime SDK.
    #
    # For more information about voice profile domains, see [Using Amazon
    # Chime SDK Voice Analytics][2] in the *Amazon Chime SDK Developer
    # Guide*.
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html
    #
    # @option params [required, String] :name
    #   The name of the voice profile domain.
    #
    # @option params [String] :description
    #   A description of the voice profile domain.
    #
    # @option params [required, Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   The server-side encryption configuration for the request.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different domain creation requests.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags assigned to the domain.
    #
    # @return [Types::CreateVoiceProfileDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVoiceProfileDomainResponse#voice_profile_domain #voice_profile_domain} => Types::VoiceProfileDomain
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_profile_domain({
    #     name: "VoiceProfileDomainName", # required
    #     description: "VoiceProfileDomainDescription",
    #     server_side_encryption_configuration: { # required
    #       kms_key_arn: "Arn", # required
    #     },
    #     client_request_token: "ClientRequestId",
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
    #   resp.voice_profile_domain.voice_profile_domain_id #=> String
    #   resp.voice_profile_domain.voice_profile_domain_arn #=> String
    #   resp.voice_profile_domain.name #=> String
    #   resp.voice_profile_domain.description #=> String
    #   resp.voice_profile_domain.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.voice_profile_domain.created_timestamp #=> Time
    #   resp.voice_profile_domain.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateVoiceProfileDomain AWS API Documentation
    #
    # @overload create_voice_profile_domain(params = {})
    # @param [Hash] params ({})
    def create_voice_profile_domain(params = {}, options = {})
      req = build_request(:create_voice_profile_domain, params)
      req.send_request(options)
    end

    # Moves the specified phone number into the **Deletion queue**. A phone
    # number must be disassociated from any users or Amazon Chime SDK Voice
    # Connectors before it can be deleted.
    #
    # Deleted phone numbers remain in the **Deletion queue** queue for 7
    # days before they are deleted permanently.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_phone_number({
    #     phone_number_id: "SensitiveNonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeletePhoneNumber AWS API Documentation
    #
    # @overload delete_phone_number(params = {})
    # @param [Hash] params ({})
    def delete_phone_number(params = {}, options = {})
      req = build_request(:delete_phone_number, params)
      req.send_request(options)
    end

    # Deletes the specified proxy session from the specified Amazon Chime
    # SDK Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :proxy_session_id
    #   The proxy session ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_proxy_session({
    #     voice_connector_id: "NonEmptyString128", # required
    #     proxy_session_id: "NonEmptyString128", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteProxySession AWS API Documentation
    #
    # @overload delete_proxy_session(params = {})
    # @param [Hash] params ({})
    def delete_proxy_session(params = {}, options = {})
      req = build_request(:delete_proxy_session, params)
      req.send_request(options)
    end

    # Deletes a SIP media application.
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sip_media_application({
    #     sip_media_application_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteSipMediaApplication AWS API Documentation
    #
    # @overload delete_sip_media_application(params = {})
    # @param [Hash] params ({})
    def delete_sip_media_application(params = {}, options = {})
      req = build_request(:delete_sip_media_application, params)
      req.send_request(options)
    end

    # Deletes a SIP rule.
    #
    # @option params [required, String] :sip_rule_id
    #   The SIP rule ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sip_rule({
    #     sip_rule_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteSipRule AWS API Documentation
    #
    # @overload delete_sip_rule(params = {})
    # @param [Hash] params ({})
    def delete_sip_rule(params = {}, options = {})
      req = build_request(:delete_sip_rule, params)
      req.send_request(options)
    end

    # Deletes an Amazon Chime SDK Voice Connector. Any phone numbers
    # associated with the Amazon Chime SDK Voice Connector must be
    # disassociated from it before it can be deleted.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnector AWS API Documentation
    #
    # @overload delete_voice_connector(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector(params = {}, options = {})
      req = build_request(:delete_voice_connector, params)
      req.send_request(options)
    end

    # Deletes the emergency calling details from the specified Amazon Chime
    # SDK Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_emergency_calling_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorEmergencyCallingConfiguration AWS API Documentation
    #
    # @overload delete_voice_connector_emergency_calling_configuration(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_emergency_calling_configuration(params = {}, options = {})
      req = build_request(:delete_voice_connector_emergency_calling_configuration, params)
      req.send_request(options)
    end

    # Deletes an Amazon Chime SDK Voice Connector group. Any
    # `VoiceConnectorItems` and phone numbers associated with the group must
    # be removed before it can be deleted.
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Voice Connector Group ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_group({
    #     voice_connector_group_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorGroup AWS API Documentation
    #
    # @overload delete_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_group(params = {}, options = {})
      req = build_request(:delete_voice_connector_group, params)
      req.send_request(options)
    end

    # Deletes the origination settings for the specified Amazon Chime SDK
    # Voice Connector.
    #
    # <note markdown="1"> If emergency calling is configured for the Voice Connector, it must be
    # deleted prior to deleting the origination settings.
    #
    #  </note>
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_origination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorOrigination AWS API Documentation
    #
    # @overload delete_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_origination(params = {}, options = {})
      req = build_request(:delete_voice_connector_origination, params)
      req.send_request(options)
    end

    # Deletes the proxy configuration from the specified Amazon Chime SDK
    # Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_proxy({
    #     voice_connector_id: "NonEmptyString128", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorProxy AWS API Documentation
    #
    # @overload delete_voice_connector_proxy(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_proxy(params = {}, options = {})
      req = build_request(:delete_voice_connector_proxy, params)
      req.send_request(options)
    end

    # Deletes a Voice Connector's streaming configuration.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_streaming_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorStreamingConfiguration AWS API Documentation
    #
    # @overload delete_voice_connector_streaming_configuration(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_streaming_configuration(params = {}, options = {})
      req = build_request(:delete_voice_connector_streaming_configuration, params)
      req.send_request(options)
    end

    # Deletes the termination settings for the specified Amazon Chime SDK
    # Voice Connector.
    #
    # <note markdown="1"> If emergency calling is configured for the Voice Connector, it must be
    # deleted prior to deleting the termination settings.
    #
    #  </note>
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_termination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorTermination AWS API Documentation
    #
    # @overload delete_voice_connector_termination(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_termination(params = {}, options = {})
      req = build_request(:delete_voice_connector_termination, params)
      req.send_request(options)
    end

    # Deletes the specified SIP credentials used by your equipment to
    # authenticate during call termination.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Array<String>] :usernames
    #   The RFC2617 compliant username associated with the SIP credentials, in
    #   US-ASCII format.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_termination_credentials({
    #     voice_connector_id: "NonEmptyString", # required
    #     usernames: ["SensitiveString"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload delete_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:delete_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Deletes a voice profile, including its voice print and enrollment
    # data. WARNING: This action is not reversible.
    #
    # @option params [required, String] :voice_profile_id
    #   The voice profile ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_profile({
    #     voice_profile_id: "NonEmptyString256", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceProfile AWS API Documentation
    #
    # @overload delete_voice_profile(params = {})
    # @param [Hash] params ({})
    def delete_voice_profile(params = {}, options = {})
      req = build_request(:delete_voice_profile, params)
      req.send_request(options)
    end

    # Deletes all voice profiles in the domain. WARNING: This action is not
    # reversible.
    #
    # @option params [required, String] :voice_profile_domain_id
    #   The voice profile domain ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_profile_domain({
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DeleteVoiceProfileDomain AWS API Documentation
    #
    # @overload delete_voice_profile_domain(params = {})
    # @param [Hash] params ({})
    def delete_voice_profile_domain(params = {}, options = {})
      req = build_request(:delete_voice_profile_domain, params)
      req.send_request(options)
    end

    # Disassociates the specified phone numbers from the specified Amazon
    # Chime SDK Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @return [Types::DisassociatePhoneNumbersFromVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociatePhoneNumbersFromVoiceConnectorResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_numbers_from_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DisassociatePhoneNumbersFromVoiceConnector AWS API Documentation
    #
    # @overload disassociate_phone_numbers_from_voice_connector(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_numbers_from_voice_connector(params = {}, options = {})
      req = build_request(:disassociate_phone_numbers_from_voice_connector, params)
      req.send_request(options)
    end

    # Disassociates the specified phone numbers from the specified Amazon
    # Chime SDK Voice Connector group.
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Voice Connector group ID.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   The list of phone numbers, in E.164 format.
    #
    # @return [Types::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse#phone_number_errors #phone_number_errors} => Array&lt;Types::PhoneNumberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_numbers_from_voice_connector_group({
    #     voice_connector_group_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/DisassociatePhoneNumbersFromVoiceConnectorGroup AWS API Documentation
    #
    # @overload disassociate_phone_numbers_from_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_numbers_from_voice_connector_group(params = {}, options = {})
      req = build_request(:disassociate_phone_numbers_from_voice_connector_group, params)
      req.send_request(options)
    end

    # Retrieves the global settings for the Amazon Chime SDK Voice
    # Connectors in an AWS account.
    #
    # @return [Types::GetGlobalSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlobalSettingsResponse#voice_connector #voice_connector} => Types::VoiceConnectorSettings
    #
    # @example Response structure
    #
    #   resp.voice_connector.cdr_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetGlobalSettings AWS API Documentation
    #
    # @overload get_global_settings(params = {})
    # @param [Hash] params ({})
    def get_global_settings(params = {}, options = {})
      req = build_request(:get_global_settings, params)
      req.send_request(options)
    end

    # Retrieves details for the specified phone number ID, such as
    # associations, capabilities, and product type.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @return [Types::GetPhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number({
    #     phone_number_id: "SensitiveNonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "Cancelled", "PortinCancelRequested", "PortinInProgress", "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #   resp.phone_number.order_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetPhoneNumber AWS API Documentation
    #
    # @overload get_phone_number(params = {})
    # @param [Hash] params ({})
    def get_phone_number(params = {}, options = {})
      req = build_request(:get_phone_number, params)
      req.send_request(options)
    end

    # Retrieves details for the specified phone number order, such as the
    # order creation timestamp, phone numbers in E.164 format, product type,
    # and order status.
    #
    # @option params [required, String] :phone_number_order_id
    #   The ID of the phone number order .
    #
    # @return [Types::GetPhoneNumberOrderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPhoneNumberOrderResponse#phone_number_order #phone_number_order} => Types::PhoneNumberOrder
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_phone_number_order({
    #     phone_number_order_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_order.phone_number_order_id #=> String
    #   resp.phone_number_order.product_type #=> String, one of "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_order.status #=> String, one of "Processing", "Successful", "Failed", "Partial", "PendingDocuments", "Submitted", "FOC", "ChangeRequested", "Exception", "CancelRequested", "Cancelled"
    #   resp.phone_number_order.order_type #=> String, one of "New", "Porting"
    #   resp.phone_number_order.ordered_phone_numbers #=> Array
    #   resp.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_order.ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_order.created_timestamp #=> Time
    #   resp.phone_number_order.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetPhoneNumberOrder AWS API Documentation
    #
    # @overload get_phone_number_order(params = {})
    # @param [Hash] params ({})
    def get_phone_number_order(params = {}, options = {})
      req = build_request(:get_phone_number_order, params)
      req.send_request(options)
    end

    # Retrieves the phone number settings for the administrator's AWS
    # account, such as the default outbound calling name.
    #
    # @return [Types::GetPhoneNumberSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPhoneNumberSettingsResponse#calling_name #calling_name} => String
    #   * {Types::GetPhoneNumberSettingsResponse#calling_name_updated_timestamp #calling_name_updated_timestamp} => Time
    #
    # @example Response structure
    #
    #   resp.calling_name #=> String
    #   resp.calling_name_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetPhoneNumberSettings AWS API Documentation
    #
    # @overload get_phone_number_settings(params = {})
    # @param [Hash] params ({})
    def get_phone_number_settings(params = {}, options = {})
      req = build_request(:get_phone_number_settings, params)
      req.send_request(options)
    end

    # Retrieves the specified proxy session details for the specified Amazon
    # Chime SDK Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :proxy_session_id
    #   The proxy session ID.
    #
    # @return [Types::GetProxySessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProxySessionResponse#proxy_session #proxy_session} => Types::ProxySession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_proxy_session({
    #     voice_connector_id: "NonEmptyString128", # required
    #     proxy_session_id: "NonEmptyString128", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.proxy_session.voice_connector_id #=> String
    #   resp.proxy_session.proxy_session_id #=> String
    #   resp.proxy_session.name #=> String
    #   resp.proxy_session.status #=> String, one of "Open", "InProgress", "Closed"
    #   resp.proxy_session.expiry_minutes #=> Integer
    #   resp.proxy_session.capabilities #=> Array
    #   resp.proxy_session.capabilities[0] #=> String, one of "Voice", "SMS"
    #   resp.proxy_session.created_timestamp #=> Time
    #   resp.proxy_session.updated_timestamp #=> Time
    #   resp.proxy_session.ended_timestamp #=> Time
    #   resp.proxy_session.participants #=> Array
    #   resp.proxy_session.participants[0].phone_number #=> String
    #   resp.proxy_session.participants[0].proxy_phone_number #=> String
    #   resp.proxy_session.number_selection_behavior #=> String, one of "PreferSticky", "AvoidSticky"
    #   resp.proxy_session.geo_match_level #=> String, one of "Country", "AreaCode"
    #   resp.proxy_session.geo_match_params.country #=> String
    #   resp.proxy_session.geo_match_params.area_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetProxySession AWS API Documentation
    #
    # @overload get_proxy_session(params = {})
    # @param [Hash] params ({})
    def get_proxy_session(params = {}, options = {})
      req = build_request(:get_proxy_session, params)
      req.send_request(options)
    end

    # Retrieves the information for a SIP media application, including name,
    # AWS Region, and endpoints.
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID .
    #
    # @return [Types::GetSipMediaApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSipMediaApplicationResponse#sip_media_application #sip_media_application} => Types::SipMediaApplication
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sip_media_application({
    #     sip_media_application_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application.sip_media_application_id #=> String
    #   resp.sip_media_application.aws_region #=> String
    #   resp.sip_media_application.name #=> String
    #   resp.sip_media_application.endpoints #=> Array
    #   resp.sip_media_application.endpoints[0].lambda_arn #=> String
    #   resp.sip_media_application.created_timestamp #=> Time
    #   resp.sip_media_application.updated_timestamp #=> Time
    #   resp.sip_media_application.sip_media_application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplication AWS API Documentation
    #
    # @overload get_sip_media_application(params = {})
    # @param [Hash] params ({})
    def get_sip_media_application(params = {}, options = {})
      req = build_request(:get_sip_media_application, params)
      req.send_request(options)
    end

    # Gets the Alexa Skill configuration for the SIP media application.
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @return [Types::GetSipMediaApplicationAlexaSkillConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSipMediaApplicationAlexaSkillConfigurationResponse#sip_media_application_alexa_skill_configuration #sip_media_application_alexa_skill_configuration} => Types::SipMediaApplicationAlexaSkillConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sip_media_application_alexa_skill_configuration({
    #     sip_media_application_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application_alexa_skill_configuration.alexa_skill_status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.sip_media_application_alexa_skill_configuration.alexa_skill_ids #=> Array
    #   resp.sip_media_application_alexa_skill_configuration.alexa_skill_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplicationAlexaSkillConfiguration AWS API Documentation
    #
    # @overload get_sip_media_application_alexa_skill_configuration(params = {})
    # @param [Hash] params ({})
    def get_sip_media_application_alexa_skill_configuration(params = {}, options = {})
      req = build_request(:get_sip_media_application_alexa_skill_configuration, params)
      req.send_request(options)
    end

    # Retrieves the logging configuration for the specified SIP media
    # application.
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @return [Types::GetSipMediaApplicationLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSipMediaApplicationLoggingConfigurationResponse#sip_media_application_logging_configuration #sip_media_application_logging_configuration} => Types::SipMediaApplicationLoggingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sip_media_application_logging_configuration({
    #     sip_media_application_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application_logging_configuration.enable_sip_media_application_message_logs #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplicationLoggingConfiguration AWS API Documentation
    #
    # @overload get_sip_media_application_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_sip_media_application_logging_configuration(params = {}, options = {})
      req = build_request(:get_sip_media_application_logging_configuration, params)
      req.send_request(options)
    end

    # Retrieves the details of a SIP rule, such as the rule ID, name,
    # triggers, and target endpoints.
    #
    # @option params [required, String] :sip_rule_id
    #   The SIP rule ID.
    #
    # @return [Types::GetSipRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSipRuleResponse#sip_rule #sip_rule} => Types::SipRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sip_rule({
    #     sip_rule_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_rule.sip_rule_id #=> String
    #   resp.sip_rule.name #=> String
    #   resp.sip_rule.disabled #=> Boolean
    #   resp.sip_rule.trigger_type #=> String, one of "ToPhoneNumber", "RequestUriHostname"
    #   resp.sip_rule.trigger_value #=> String
    #   resp.sip_rule.target_applications #=> Array
    #   resp.sip_rule.target_applications[0].sip_media_application_id #=> String
    #   resp.sip_rule.target_applications[0].priority #=> Integer
    #   resp.sip_rule.target_applications[0].aws_region #=> String
    #   resp.sip_rule.created_timestamp #=> Time
    #   resp.sip_rule.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipRule AWS API Documentation
    #
    # @overload get_sip_rule(params = {})
    # @param [Hash] params ({})
    def get_sip_rule(params = {}, options = {})
      req = build_request(:get_sip_rule, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified speaker search task.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :speaker_search_task_id
    #   The ID of the speaker search task.
    #
    # @return [Types::GetSpeakerSearchTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSpeakerSearchTaskResponse#speaker_search_task #speaker_search_task} => Types::SpeakerSearchTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_speaker_search_task({
    #     voice_connector_id: "NonEmptyString128", # required
    #     speaker_search_task_id: "NonEmptyString256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.speaker_search_task.speaker_search_task_id #=> String
    #   resp.speaker_search_task.speaker_search_task_status #=> String
    #   resp.speaker_search_task.call_details.voice_connector_id #=> String
    #   resp.speaker_search_task.call_details.transaction_id #=> String
    #   resp.speaker_search_task.call_details.is_caller #=> Boolean
    #   resp.speaker_search_task.speaker_search_details.results #=> Array
    #   resp.speaker_search_task.speaker_search_details.results[0].confidence_score #=> Float
    #   resp.speaker_search_task.speaker_search_details.results[0].voice_profile_id #=> String
    #   resp.speaker_search_task.speaker_search_details.voiceprint_generation_status #=> String
    #   resp.speaker_search_task.created_timestamp #=> Time
    #   resp.speaker_search_task.updated_timestamp #=> Time
    #   resp.speaker_search_task.started_timestamp #=> Time
    #   resp.speaker_search_task.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSpeakerSearchTask AWS API Documentation
    #
    # @overload get_speaker_search_task(params = {})
    # @param [Hash] params ({})
    def get_speaker_search_task(params = {}, options = {})
      req = build_request(:get_speaker_search_task, params)
      req.send_request(options)
    end

    # Retrieves details for the specified Amazon Chime SDK Voice Connector,
    # such as timestamps,name, outbound host, and encryption requirements.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorResponse#voice_connector #voice_connector} => Types::VoiceConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector.voice_connector_id #=> String
    #   resp.voice_connector.aws_region #=> String, one of "us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #   resp.voice_connector.voice_connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnector AWS API Documentation
    #
    # @overload get_voice_connector(params = {})
    # @param [Hash] params ({})
    def get_voice_connector(params = {}, options = {})
      req = build_request(:get_voice_connector, params)
      req.send_request(options)
    end

    # Retrieves the emergency calling configuration details for the
    # specified Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorEmergencyCallingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorEmergencyCallingConfigurationResponse#emergency_calling_configuration #emergency_calling_configuration} => Types::EmergencyCallingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_emergency_calling_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.emergency_calling_configuration.dnis #=> Array
    #   resp.emergency_calling_configuration.dnis[0].emergency_phone_number #=> String
    #   resp.emergency_calling_configuration.dnis[0].test_phone_number #=> String
    #   resp.emergency_calling_configuration.dnis[0].calling_country #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorEmergencyCallingConfiguration AWS API Documentation
    #
    # @overload get_voice_connector_emergency_calling_configuration(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_emergency_calling_configuration(params = {}, options = {})
      req = build_request(:get_voice_connector_emergency_calling_configuration, params)
      req.send_request(options)
    end

    # Retrieves details for the specified Amazon Chime SDK Voice Connector
    # group, such as timestamps,name, and associated `VoiceConnectorItems`.
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Voice Connector group ID.
    #
    # @return [Types::GetVoiceConnectorGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorGroupResponse#voice_connector_group #voice_connector_group} => Types::VoiceConnectorGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_group({
    #     voice_connector_group_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector_group.voice_connector_group_id #=> String
    #   resp.voice_connector_group.name #=> String
    #   resp.voice_connector_group.voice_connector_items #=> Array
    #   resp.voice_connector_group.voice_connector_items[0].voice_connector_id #=> String
    #   resp.voice_connector_group.voice_connector_items[0].priority #=> Integer
    #   resp.voice_connector_group.created_timestamp #=> Time
    #   resp.voice_connector_group.updated_timestamp #=> Time
    #   resp.voice_connector_group.voice_connector_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorGroup AWS API Documentation
    #
    # @overload get_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_group(params = {}, options = {})
      req = build_request(:get_voice_connector_group, params)
      req.send_request(options)
    end

    # Retrieves the logging configuration settings for the specified Voice
    # Connector. Shows whether SIP message logs are enabled for sending to
    # Amazon CloudWatch Logs.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorLoggingConfigurationResponse#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_logging_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configuration.enable_sip_logs #=> Boolean
    #   resp.logging_configuration.enable_media_metric_logs #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorLoggingConfiguration AWS API Documentation
    #
    # @overload get_voice_connector_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_logging_configuration(params = {}, options = {})
      req = build_request(:get_voice_connector_logging_configuration, params)
      req.send_request(options)
    end

    # Retrieves the origination settings for the specified Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorOriginationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorOriginationResponse#origination #origination} => Types::Origination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_origination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.origination.routes #=> Array
    #   resp.origination.routes[0].host #=> String
    #   resp.origination.routes[0].port #=> Integer
    #   resp.origination.routes[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.origination.routes[0].priority #=> Integer
    #   resp.origination.routes[0].weight #=> Integer
    #   resp.origination.disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorOrigination AWS API Documentation
    #
    # @overload get_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_origination(params = {}, options = {})
      req = build_request(:get_voice_connector_origination, params)
      req.send_request(options)
    end

    # Retrieves the proxy configuration details for the specified Amazon
    # Chime SDK Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorProxyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorProxyResponse#proxy #proxy} => Types::Proxy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_proxy({
    #     voice_connector_id: "NonEmptyString128", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.proxy.default_session_expiry_minutes #=> Integer
    #   resp.proxy.disabled #=> Boolean
    #   resp.proxy.fall_back_phone_number #=> String
    #   resp.proxy.phone_number_countries #=> Array
    #   resp.proxy.phone_number_countries[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorProxy AWS API Documentation
    #
    # @overload get_voice_connector_proxy(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_proxy(params = {}, options = {})
      req = build_request(:get_voice_connector_proxy, params)
      req.send_request(options)
    end

    # Retrieves the streaming configuration details for the specified Amazon
    # Chime SDK Voice Connector. Shows whether media streaming is enabled
    # for sending to Amazon Kinesis. It also shows the retention period, in
    # hours, for the Amazon Kinesis data.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorStreamingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorStreamingConfigurationResponse#streaming_configuration #streaming_configuration} => Types::StreamingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_streaming_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_configuration.data_retention_in_hours #=> Integer
    #   resp.streaming_configuration.disabled #=> Boolean
    #   resp.streaming_configuration.streaming_notification_targets #=> Array
    #   resp.streaming_configuration.streaming_notification_targets[0].notification_target #=> String, one of "EventBridge", "SNS", "SQS"
    #   resp.streaming_configuration.media_insights_configuration.disabled #=> Boolean
    #   resp.streaming_configuration.media_insights_configuration.configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorStreamingConfiguration AWS API Documentation
    #
    # @overload get_voice_connector_streaming_configuration(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_streaming_configuration(params = {}, options = {})
      req = build_request(:get_voice_connector_streaming_configuration, params)
      req.send_request(options)
    end

    # Retrieves the termination setting details for the specified Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorTerminationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorTerminationResponse#termination #termination} => Types::Termination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_termination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.termination.cps_limit #=> Integer
    #   resp.termination.default_phone_number #=> String
    #   resp.termination.calling_regions #=> Array
    #   resp.termination.calling_regions[0] #=> String
    #   resp.termination.cidr_allowed_list #=> Array
    #   resp.termination.cidr_allowed_list[0] #=> String
    #   resp.termination.disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorTermination AWS API Documentation
    #
    # @overload get_voice_connector_termination(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_termination(params = {}, options = {})
      req = build_request(:get_voice_connector_termination, params)
      req.send_request(options)
    end

    # Retrieves information about the last time a `SIP OPTIONS` ping was
    # received from your SIP infrastructure for the specified Amazon Chime
    # SDK Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::GetVoiceConnectorTerminationHealthResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceConnectorTerminationHealthResponse#termination_health #termination_health} => Types::TerminationHealth
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_connector_termination_health({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.termination_health.timestamp #=> Time
    #   resp.termination_health.source #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorTerminationHealth AWS API Documentation
    #
    # @overload get_voice_connector_termination_health(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_termination_health(params = {}, options = {})
      req = build_request(:get_voice_connector_termination_health, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified voice profile.
    #
    # @option params [required, String] :voice_profile_id
    #   The voice profile ID.
    #
    # @return [Types::GetVoiceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceProfileResponse#voice_profile #voice_profile} => Types::VoiceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_profile({
    #     voice_profile_id: "NonEmptyString256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_profile.voice_profile_id #=> String
    #   resp.voice_profile.voice_profile_arn #=> String
    #   resp.voice_profile.voice_profile_domain_id #=> String
    #   resp.voice_profile.created_timestamp #=> Time
    #   resp.voice_profile.updated_timestamp #=> Time
    #   resp.voice_profile.expiration_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceProfile AWS API Documentation
    #
    # @overload get_voice_profile(params = {})
    # @param [Hash] params ({})
    def get_voice_profile(params = {}, options = {})
      req = build_request(:get_voice_profile, params)
      req.send_request(options)
    end

    # Retrieves the details of the specified voice profile domain.
    #
    # @option params [required, String] :voice_profile_domain_id
    #   The voice profile domain ID.
    #
    # @return [Types::GetVoiceProfileDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceProfileDomainResponse#voice_profile_domain #voice_profile_domain} => Types::VoiceProfileDomain
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_profile_domain({
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_profile_domain.voice_profile_domain_id #=> String
    #   resp.voice_profile_domain.voice_profile_domain_arn #=> String
    #   resp.voice_profile_domain.name #=> String
    #   resp.voice_profile_domain.description #=> String
    #   resp.voice_profile_domain.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.voice_profile_domain.created_timestamp #=> Time
    #   resp.voice_profile_domain.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceProfileDomain AWS API Documentation
    #
    # @overload get_voice_profile_domain(params = {})
    # @param [Hash] params ({})
    def get_voice_profile_domain(params = {}, options = {})
      req = build_request(:get_voice_profile_domain, params)
      req.send_request(options)
    end

    # Retrieves the details of a voice tone analysis task.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :voice_tone_analysis_task_id
    #   The ID of the voice tone anlysis task.
    #
    # @option params [required, Boolean] :is_caller
    #   Specifies whether the voice being analyzed is the caller (originator)
    #   or the callee (responder).
    #
    # @return [Types::GetVoiceToneAnalysisTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVoiceToneAnalysisTaskResponse#voice_tone_analysis_task #voice_tone_analysis_task} => Types::VoiceToneAnalysisTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_voice_tone_analysis_task({
    #     voice_connector_id: "NonEmptyString128", # required
    #     voice_tone_analysis_task_id: "NonEmptyString256", # required
    #     is_caller: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_tone_analysis_task.voice_tone_analysis_task_id #=> String
    #   resp.voice_tone_analysis_task.voice_tone_analysis_task_status #=> String
    #   resp.voice_tone_analysis_task.call_details.voice_connector_id #=> String
    #   resp.voice_tone_analysis_task.call_details.transaction_id #=> String
    #   resp.voice_tone_analysis_task.call_details.is_caller #=> Boolean
    #   resp.voice_tone_analysis_task.created_timestamp #=> Time
    #   resp.voice_tone_analysis_task.updated_timestamp #=> Time
    #   resp.voice_tone_analysis_task.started_timestamp #=> Time
    #   resp.voice_tone_analysis_task.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceToneAnalysisTask AWS API Documentation
    #
    # @overload get_voice_tone_analysis_task(params = {})
    # @param [Hash] params ({})
    def get_voice_tone_analysis_task(params = {}, options = {})
      req = build_request(:get_voice_tone_analysis_task, params)
      req.send_request(options)
    end

    # Lists the available AWS Regions in which you can create an Amazon
    # Chime SDK Voice Connector.
    #
    # @return [Types::ListAvailableVoiceConnectorRegionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableVoiceConnectorRegionsResponse#voice_connector_regions #voice_connector_regions} => Array&lt;String&gt;
    #
    # @example Response structure
    #
    #   resp.voice_connector_regions #=> Array
    #   resp.voice_connector_regions[0] #=> String, one of "us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListAvailableVoiceConnectorRegions AWS API Documentation
    #
    # @overload list_available_voice_connector_regions(params = {})
    # @param [Hash] params ({})
    def list_available_voice_connector_regions(params = {}, options = {})
      req = build_request(:list_available_voice_connector_regions, params)
      req.send_request(options)
    end

    # Lists the phone numbers for an administrator's Amazon Chime SDK
    # account.
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListPhoneNumberOrdersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumberOrdersResponse#phone_number_orders #phone_number_orders} => Array&lt;Types::PhoneNumberOrder&gt;
    #   * {Types::ListPhoneNumberOrdersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_number_orders({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_orders #=> Array
    #   resp.phone_number_orders[0].phone_number_order_id #=> String
    #   resp.phone_number_orders[0].product_type #=> String, one of "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_orders[0].status #=> String, one of "Processing", "Successful", "Failed", "Partial", "PendingDocuments", "Submitted", "FOC", "ChangeRequested", "Exception", "CancelRequested", "Cancelled"
    #   resp.phone_number_orders[0].order_type #=> String, one of "New", "Porting"
    #   resp.phone_number_orders[0].ordered_phone_numbers #=> Array
    #   resp.phone_number_orders[0].ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_orders[0].ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_orders[0].created_timestamp #=> Time
    #   resp.phone_number_orders[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListPhoneNumberOrders AWS API Documentation
    #
    # @overload list_phone_number_orders(params = {})
    # @param [Hash] params ({})
    def list_phone_number_orders(params = {}, options = {})
      req = build_request(:list_phone_number_orders, params)
      req.send_request(options)
    end

    # Lists the phone numbers for the specified Amazon Chime SDK account,
    # Amazon Chime SDK user, Amazon Chime SDK Voice Connector, or Amazon
    # Chime SDK Voice Connector group.
    #
    # @option params [String] :status
    #   The status of your organization's phone numbers.
    #
    # @option params [String] :product_type
    #   The phone number product types.
    #
    # @option params [String] :filter_name
    #   The filter to limit the number of results.
    #
    # @option params [String] :filter_value
    #   The filter value.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @return [Types::ListPhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumbersResponse#phone_numbers #phone_numbers} => Array&lt;Types::PhoneNumber&gt;
    #   * {Types::ListPhoneNumbersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers({
    #     status: "String",
    #     product_type: "VoiceConnector", # accepts VoiceConnector, SipMediaApplicationDialIn
    #     filter_name: "VoiceConnectorId", # accepts VoiceConnectorId, VoiceConnectorGroupId, SipRuleId
    #     filter_value: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_numbers #=> Array
    #   resp.phone_numbers[0].phone_number_id #=> String
    #   resp.phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_numbers[0].country #=> String
    #   resp.phone_numbers[0].type #=> String, one of "Local", "TollFree"
    #   resp.phone_numbers[0].product_type #=> String, one of "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_numbers[0].status #=> String, one of "Cancelled", "PortinCancelRequested", "PortinInProgress", "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_numbers[0].capabilities.inbound_call #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_call #=> Boolean
    #   resp.phone_numbers[0].capabilities.inbound_sms #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_sms #=> Boolean
    #   resp.phone_numbers[0].capabilities.inbound_mms #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_mms #=> Boolean
    #   resp.phone_numbers[0].associations #=> Array
    #   resp.phone_numbers[0].associations[0].value #=> String
    #   resp.phone_numbers[0].associations[0].name #=> String, one of "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_numbers[0].associations[0].associated_timestamp #=> Time
    #   resp.phone_numbers[0].calling_name #=> String
    #   resp.phone_numbers[0].calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_numbers[0].created_timestamp #=> Time
    #   resp.phone_numbers[0].updated_timestamp #=> Time
    #   resp.phone_numbers[0].deletion_timestamp #=> Time
    #   resp.phone_numbers[0].order_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListPhoneNumbers AWS API Documentation
    #
    # @overload list_phone_numbers(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers(params = {}, options = {})
      req = build_request(:list_phone_numbers, params)
      req.send_request(options)
    end

    # Lists the proxy sessions for the specified Amazon Chime SDK Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [String] :status
    #   The proxy session status.
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListProxySessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProxySessionsResponse#proxy_sessions #proxy_sessions} => Array&lt;Types::ProxySession&gt;
    #   * {Types::ListProxySessionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_proxy_sessions({
    #     voice_connector_id: "NonEmptyString128", # required
    #     status: "Open", # accepts Open, InProgress, Closed
    #     next_token: "NextTokenString",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.proxy_sessions #=> Array
    #   resp.proxy_sessions[0].voice_connector_id #=> String
    #   resp.proxy_sessions[0].proxy_session_id #=> String
    #   resp.proxy_sessions[0].name #=> String
    #   resp.proxy_sessions[0].status #=> String, one of "Open", "InProgress", "Closed"
    #   resp.proxy_sessions[0].expiry_minutes #=> Integer
    #   resp.proxy_sessions[0].capabilities #=> Array
    #   resp.proxy_sessions[0].capabilities[0] #=> String, one of "Voice", "SMS"
    #   resp.proxy_sessions[0].created_timestamp #=> Time
    #   resp.proxy_sessions[0].updated_timestamp #=> Time
    #   resp.proxy_sessions[0].ended_timestamp #=> Time
    #   resp.proxy_sessions[0].participants #=> Array
    #   resp.proxy_sessions[0].participants[0].phone_number #=> String
    #   resp.proxy_sessions[0].participants[0].proxy_phone_number #=> String
    #   resp.proxy_sessions[0].number_selection_behavior #=> String, one of "PreferSticky", "AvoidSticky"
    #   resp.proxy_sessions[0].geo_match_level #=> String, one of "Country", "AreaCode"
    #   resp.proxy_sessions[0].geo_match_params.country #=> String
    #   resp.proxy_sessions[0].geo_match_params.area_code #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListProxySessions AWS API Documentation
    #
    # @overload list_proxy_sessions(params = {})
    # @param [Hash] params ({})
    def list_proxy_sessions(params = {}, options = {})
      req = build_request(:list_proxy_sessions, params)
      req.send_request(options)
    end

    # Lists the SIP media applications under the administrator's AWS
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @return [Types::ListSipMediaApplicationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSipMediaApplicationsResponse#sip_media_applications #sip_media_applications} => Array&lt;Types::SipMediaApplication&gt;
    #   * {Types::ListSipMediaApplicationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sip_media_applications({
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_applications #=> Array
    #   resp.sip_media_applications[0].sip_media_application_id #=> String
    #   resp.sip_media_applications[0].aws_region #=> String
    #   resp.sip_media_applications[0].name #=> String
    #   resp.sip_media_applications[0].endpoints #=> Array
    #   resp.sip_media_applications[0].endpoints[0].lambda_arn #=> String
    #   resp.sip_media_applications[0].created_timestamp #=> Time
    #   resp.sip_media_applications[0].updated_timestamp #=> Time
    #   resp.sip_media_applications[0].sip_media_application_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSipMediaApplications AWS API Documentation
    #
    # @overload list_sip_media_applications(params = {})
    # @param [Hash] params ({})
    def list_sip_media_applications(params = {}, options = {})
      req = build_request(:list_sip_media_applications, params)
      req.send_request(options)
    end

    # Lists the SIP rules under the administrator's AWS account.
    #
    # @option params [String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @return [Types::ListSipRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSipRulesResponse#sip_rules #sip_rules} => Array&lt;Types::SipRule&gt;
    #   * {Types::ListSipRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sip_rules({
    #     sip_media_application_id: "NonEmptyString",
    #     max_results: 1,
    #     next_token: "NextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_rules #=> Array
    #   resp.sip_rules[0].sip_rule_id #=> String
    #   resp.sip_rules[0].name #=> String
    #   resp.sip_rules[0].disabled #=> Boolean
    #   resp.sip_rules[0].trigger_type #=> String, one of "ToPhoneNumber", "RequestUriHostname"
    #   resp.sip_rules[0].trigger_value #=> String
    #   resp.sip_rules[0].target_applications #=> Array
    #   resp.sip_rules[0].target_applications[0].sip_media_application_id #=> String
    #   resp.sip_rules[0].target_applications[0].priority #=> Integer
    #   resp.sip_rules[0].target_applications[0].aws_region #=> String
    #   resp.sip_rules[0].created_timestamp #=> Time
    #   resp.sip_rules[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSipRules AWS API Documentation
    #
    # @overload list_sip_rules(params = {})
    # @param [Hash] params ({})
    def list_sip_rules(params = {}, options = {})
      req = build_request(:list_sip_rules, params)
      req.send_request(options)
    end

    # Lists the countries that you can order phone numbers from.
    #
    # @option params [required, String] :product_type
    #   The phone number product type.
    #
    # @return [Types::ListSupportedPhoneNumberCountriesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSupportedPhoneNumberCountriesResponse#phone_number_countries #phone_number_countries} => Array&lt;Types::PhoneNumberCountry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_supported_phone_number_countries({
    #     product_type: "VoiceConnector", # required, accepts VoiceConnector, SipMediaApplicationDialIn
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_countries #=> Array
    #   resp.phone_number_countries[0].country_code #=> String
    #   resp.phone_number_countries[0].supported_phone_number_types #=> Array
    #   resp.phone_number_countries[0].supported_phone_number_types[0] #=> String, one of "Local", "TollFree"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListSupportedPhoneNumberCountries AWS API Documentation
    #
    # @overload list_supported_phone_number_countries(params = {})
    # @param [Hash] params ({})
    def list_supported_phone_number_countries(params = {}, options = {})
      req = build_request(:list_supported_phone_number_countries, params)
      req.send_request(options)
    end

    # Returns a list of the tags in a given resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the Amazon Chime SDK Voice Connector groups in the
    # administrator's AWS account.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListVoiceConnectorGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVoiceConnectorGroupsResponse#voice_connector_groups #voice_connector_groups} => Array&lt;Types::VoiceConnectorGroup&gt;
    #   * {Types::ListVoiceConnectorGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_connector_groups({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector_groups #=> Array
    #   resp.voice_connector_groups[0].voice_connector_group_id #=> String
    #   resp.voice_connector_groups[0].name #=> String
    #   resp.voice_connector_groups[0].voice_connector_items #=> Array
    #   resp.voice_connector_groups[0].voice_connector_items[0].voice_connector_id #=> String
    #   resp.voice_connector_groups[0].voice_connector_items[0].priority #=> Integer
    #   resp.voice_connector_groups[0].created_timestamp #=> Time
    #   resp.voice_connector_groups[0].updated_timestamp #=> Time
    #   resp.voice_connector_groups[0].voice_connector_group_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectorGroups AWS API Documentation
    #
    # @overload list_voice_connector_groups(params = {})
    # @param [Hash] params ({})
    def list_voice_connector_groups(params = {}, options = {})
      req = build_request(:list_voice_connector_groups, params)
      req.send_request(options)
    end

    # Lists the SIP credentials for the specified Amazon Chime SDK Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @return [Types::ListVoiceConnectorTerminationCredentialsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVoiceConnectorTerminationCredentialsResponse#usernames #usernames} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_connector_termination_credentials({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.usernames #=> Array
    #   resp.usernames[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload list_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def list_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:list_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Lists the Amazon Chime SDK Voice Connectors in the administrators AWS
    # account.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListVoiceConnectorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVoiceConnectorsResponse#voice_connectors #voice_connectors} => Array&lt;Types::VoiceConnector&gt;
    #   * {Types::ListVoiceConnectorsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_connectors({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connectors #=> Array
    #   resp.voice_connectors[0].voice_connector_id #=> String
    #   resp.voice_connectors[0].aws_region #=> String, one of "us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"
    #   resp.voice_connectors[0].name #=> String
    #   resp.voice_connectors[0].outbound_host_name #=> String
    #   resp.voice_connectors[0].require_encryption #=> Boolean
    #   resp.voice_connectors[0].created_timestamp #=> Time
    #   resp.voice_connectors[0].updated_timestamp #=> Time
    #   resp.voice_connectors[0].voice_connector_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceConnectors AWS API Documentation
    #
    # @overload list_voice_connectors(params = {})
    # @param [Hash] params ({})
    def list_voice_connectors(params = {}, options = {})
      req = build_request(:list_voice_connectors, params)
      req.send_request(options)
    end

    # Lists the specified voice profile domains in the administrator's AWS
    # account.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListVoiceProfileDomainsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVoiceProfileDomainsResponse#voice_profile_domains #voice_profile_domains} => Array&lt;Types::VoiceProfileDomainSummary&gt;
    #   * {Types::ListVoiceProfileDomainsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_profile_domains({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_profile_domains #=> Array
    #   resp.voice_profile_domains[0].voice_profile_domain_id #=> String
    #   resp.voice_profile_domains[0].voice_profile_domain_arn #=> String
    #   resp.voice_profile_domains[0].name #=> String
    #   resp.voice_profile_domains[0].description #=> String
    #   resp.voice_profile_domains[0].created_timestamp #=> Time
    #   resp.voice_profile_domains[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceProfileDomains AWS API Documentation
    #
    # @overload list_voice_profile_domains(params = {})
    # @param [Hash] params ({})
    def list_voice_profile_domains(params = {}, options = {})
      req = build_request(:list_voice_profile_domains, params)
      req.send_request(options)
    end

    # Lists the voice profiles in a voice profile domain.
    #
    # @option params [required, String] :voice_profile_domain_id
    #   The ID of the voice profile domain.
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results in the request.
    #
    # @return [Types::ListVoiceProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVoiceProfilesResponse#voice_profiles #voice_profiles} => Array&lt;Types::VoiceProfileSummary&gt;
    #   * {Types::ListVoiceProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_voice_profiles({
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_profiles #=> Array
    #   resp.voice_profiles[0].voice_profile_id #=> String
    #   resp.voice_profiles[0].voice_profile_arn #=> String
    #   resp.voice_profiles[0].voice_profile_domain_id #=> String
    #   resp.voice_profiles[0].created_timestamp #=> Time
    #   resp.voice_profiles[0].updated_timestamp #=> Time
    #   resp.voice_profiles[0].expiration_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ListVoiceProfiles AWS API Documentation
    #
    # @overload list_voice_profiles(params = {})
    # @param [Hash] params ({})
    def list_voice_profiles(params = {}, options = {})
      req = build_request(:list_voice_profiles, params)
      req.send_request(options)
    end

    # Updates the Alexa Skill configuration for the SIP media application.
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @option params [Types::SipMediaApplicationAlexaSkillConfiguration] :sip_media_application_alexa_skill_configuration
    #   The Alexa Skill configuration.
    #
    # @return [Types::PutSipMediaApplicationAlexaSkillConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSipMediaApplicationAlexaSkillConfigurationResponse#sip_media_application_alexa_skill_configuration #sip_media_application_alexa_skill_configuration} => Types::SipMediaApplicationAlexaSkillConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_sip_media_application_alexa_skill_configuration({
    #     sip_media_application_id: "NonEmptyString", # required
    #     sip_media_application_alexa_skill_configuration: {
    #       alexa_skill_status: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #       alexa_skill_ids: ["AlexaSkillId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application_alexa_skill_configuration.alexa_skill_status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.sip_media_application_alexa_skill_configuration.alexa_skill_ids #=> Array
    #   resp.sip_media_application_alexa_skill_configuration.alexa_skill_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutSipMediaApplicationAlexaSkillConfiguration AWS API Documentation
    #
    # @overload put_sip_media_application_alexa_skill_configuration(params = {})
    # @param [Hash] params ({})
    def put_sip_media_application_alexa_skill_configuration(params = {}, options = {})
      req = build_request(:put_sip_media_application_alexa_skill_configuration, params)
      req.send_request(options)
    end

    # Updates the logging configuration for the specified SIP media
    # application.
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @option params [Types::SipMediaApplicationLoggingConfiguration] :sip_media_application_logging_configuration
    #   The logging configuration for the specified SIP media application.
    #
    # @return [Types::PutSipMediaApplicationLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSipMediaApplicationLoggingConfigurationResponse#sip_media_application_logging_configuration #sip_media_application_logging_configuration} => Types::SipMediaApplicationLoggingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_sip_media_application_logging_configuration({
    #     sip_media_application_id: "NonEmptyString", # required
    #     sip_media_application_logging_configuration: {
    #       enable_sip_media_application_message_logs: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application_logging_configuration.enable_sip_media_application_message_logs #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutSipMediaApplicationLoggingConfiguration AWS API Documentation
    #
    # @overload put_sip_media_application_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_sip_media_application_logging_configuration(params = {}, options = {})
      req = build_request(:put_sip_media_application_logging_configuration, params)
      req.send_request(options)
    end

    # Updates a Voice Connector's emergency calling configuration.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Types::EmergencyCallingConfiguration] :emergency_calling_configuration
    #   The configuration being updated.
    #
    # @return [Types::PutVoiceConnectorEmergencyCallingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutVoiceConnectorEmergencyCallingConfigurationResponse#emergency_calling_configuration #emergency_calling_configuration} => Types::EmergencyCallingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_emergency_calling_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #     emergency_calling_configuration: { # required
    #       dnis: [
    #         {
    #           emergency_phone_number: "E164PhoneNumber", # required
    #           test_phone_number: "E164PhoneNumber",
    #           calling_country: "Alpha2CountryCode", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.emergency_calling_configuration.dnis #=> Array
    #   resp.emergency_calling_configuration.dnis[0].emergency_phone_number #=> String
    #   resp.emergency_calling_configuration.dnis[0].test_phone_number #=> String
    #   resp.emergency_calling_configuration.dnis[0].calling_country #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorEmergencyCallingConfiguration AWS API Documentation
    #
    # @overload put_voice_connector_emergency_calling_configuration(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_emergency_calling_configuration(params = {}, options = {})
      req = build_request(:put_voice_connector_emergency_calling_configuration, params)
      req.send_request(options)
    end

    # Updates a Voice Connector's logging configuration.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Types::LoggingConfiguration] :logging_configuration
    #   The logging configuration being updated.
    #
    # @return [Types::PutVoiceConnectorLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutVoiceConnectorLoggingConfigurationResponse#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_logging_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #     logging_configuration: { # required
    #       enable_sip_logs: false,
    #       enable_media_metric_logs: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configuration.enable_sip_logs #=> Boolean
    #   resp.logging_configuration.enable_media_metric_logs #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorLoggingConfiguration AWS API Documentation
    #
    # @overload put_voice_connector_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_logging_configuration(params = {}, options = {})
      req = build_request(:put_voice_connector_logging_configuration, params)
      req.send_request(options)
    end

    # Updates a Voice Connector's origination settings.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Types::Origination] :origination
    #   The origination settings being updated.
    #
    # @return [Types::PutVoiceConnectorOriginationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutVoiceConnectorOriginationResponse#origination #origination} => Types::Origination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_origination({
    #     voice_connector_id: "NonEmptyString", # required
    #     origination: { # required
    #       routes: [
    #         {
    #           host: "String",
    #           port: 1,
    #           protocol: "TCP", # accepts TCP, UDP
    #           priority: 1,
    #           weight: 1,
    #         },
    #       ],
    #       disabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.origination.routes #=> Array
    #   resp.origination.routes[0].host #=> String
    #   resp.origination.routes[0].port #=> Integer
    #   resp.origination.routes[0].protocol #=> String, one of "TCP", "UDP"
    #   resp.origination.routes[0].priority #=> Integer
    #   resp.origination.routes[0].weight #=> Integer
    #   resp.origination.disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorOrigination AWS API Documentation
    #
    # @overload put_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_origination(params = {}, options = {})
      req = build_request(:put_voice_connector_origination, params)
      req.send_request(options)
    end

    # Puts the specified proxy configuration to the specified Amazon Chime
    # SDK Voice Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Integer] :default_session_expiry_minutes
    #   The default number of minutes allowed for proxy session.
    #
    # @option params [required, Array<String>] :phone_number_pool_countries
    #   The countries for proxy phone numbers to be selected from.
    #
    # @option params [String] :fall_back_phone_number
    #   The phone number to route calls to after a proxy session expires.
    #
    # @option params [Boolean] :disabled
    #   When true, stops proxy sessions from being created on the specified
    #   Amazon Chime SDK Voice Connector.
    #
    # @return [Types::PutVoiceConnectorProxyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutVoiceConnectorProxyResponse#proxy #proxy} => Types::Proxy
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_proxy({
    #     voice_connector_id: "NonEmptyString128", # required
    #     default_session_expiry_minutes: 1, # required
    #     phone_number_pool_countries: ["Country"], # required
    #     fall_back_phone_number: "E164PhoneNumber",
    #     disabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.proxy.default_session_expiry_minutes #=> Integer
    #   resp.proxy.disabled #=> Boolean
    #   resp.proxy.fall_back_phone_number #=> String
    #   resp.proxy.phone_number_countries #=> Array
    #   resp.proxy.phone_number_countries[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorProxy AWS API Documentation
    #
    # @overload put_voice_connector_proxy(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_proxy(params = {}, options = {})
      req = build_request(:put_voice_connector_proxy, params)
      req.send_request(options)
    end

    # Updates a Voice Connector's streaming configuration settings.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Types::StreamingConfiguration] :streaming_configuration
    #   The streaming settings being updated.
    #
    # @return [Types::PutVoiceConnectorStreamingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutVoiceConnectorStreamingConfigurationResponse#streaming_configuration #streaming_configuration} => Types::StreamingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_streaming_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #     streaming_configuration: { # required
    #       data_retention_in_hours: 1, # required
    #       disabled: false, # required
    #       streaming_notification_targets: [
    #         {
    #           notification_target: "EventBridge", # accepts EventBridge, SNS, SQS
    #         },
    #       ],
    #       media_insights_configuration: {
    #         disabled: false,
    #         configuration_arn: "Arn",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_configuration.data_retention_in_hours #=> Integer
    #   resp.streaming_configuration.disabled #=> Boolean
    #   resp.streaming_configuration.streaming_notification_targets #=> Array
    #   resp.streaming_configuration.streaming_notification_targets[0].notification_target #=> String, one of "EventBridge", "SNS", "SQS"
    #   resp.streaming_configuration.media_insights_configuration.disabled #=> Boolean
    #   resp.streaming_configuration.media_insights_configuration.configuration_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorStreamingConfiguration AWS API Documentation
    #
    # @overload put_voice_connector_streaming_configuration(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_streaming_configuration(params = {}, options = {})
      req = build_request(:put_voice_connector_streaming_configuration, params)
      req.send_request(options)
    end

    # Updates a Voice Connector's termination settings.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, Types::Termination] :termination
    #   The termination settings to be updated.
    #
    # @return [Types::PutVoiceConnectorTerminationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutVoiceConnectorTerminationResponse#termination #termination} => Types::Termination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_termination({
    #     voice_connector_id: "NonEmptyString", # required
    #     termination: { # required
    #       cps_limit: 1,
    #       default_phone_number: "E164PhoneNumber",
    #       calling_regions: ["CallingRegion"],
    #       cidr_allowed_list: ["String"],
    #       disabled: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.termination.cps_limit #=> Integer
    #   resp.termination.default_phone_number #=> String
    #   resp.termination.calling_regions #=> Array
    #   resp.termination.calling_regions[0] #=> String
    #   resp.termination.cidr_allowed_list #=> Array
    #   resp.termination.cidr_allowed_list[0] #=> String
    #   resp.termination.disabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorTermination AWS API Documentation
    #
    # @overload put_voice_connector_termination(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_termination(params = {}, options = {})
      req = build_request(:put_voice_connector_termination, params)
      req.send_request(options)
    end

    # Updates a Voice Connector's termination credentials.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [Array<Types::Credential>] :credentials
    #   The termination credentials being updated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_voice_connector_termination_credentials({
    #     voice_connector_id: "NonEmptyString", # required
    #     credentials: [
    #       {
    #         username: "SensitiveString",
    #         password: "SensitiveString",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload put_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:put_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Restores a deleted phone number.
    #
    # @option params [required, String] :phone_number_id
    #   The ID of the phone number being restored.
    #
    # @return [Types::RestorePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestorePhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_phone_number({
    #     phone_number_id: "SensitiveNonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "Cancelled", "PortinCancelRequested", "PortinInProgress", "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #   resp.phone_number.order_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/RestorePhoneNumber AWS API Documentation
    #
    # @overload restore_phone_number(params = {})
    # @param [Hash] params ({})
    def restore_phone_number(params = {}, options = {})
      req = build_request(:restore_phone_number, params)
      req.send_request(options)
    end

    # Searches the provisioned phone numbers in an organization.
    #
    # @option params [String] :area_code
    #   Confines a search to just the phone numbers associated with the
    #   specified area code.
    #
    # @option params [String] :city
    #   Confines a search to just the phone numbers associated with the
    #   specified city.
    #
    # @option params [String] :country
    #   Confines a search to just the phone numbers associated with the
    #   specified country.
    #
    # @option params [String] :state
    #   Confines a search to just the phone numbers associated with the
    #   specified state.
    #
    # @option params [String] :toll_free_prefix
    #   Confines a search to just the phone numbers associated with the
    #   specified toll-free prefix.
    #
    # @option params [String] :phone_number_type
    #   Confines a search to just the phone numbers associated with the
    #   specified phone number type, either **local** or **toll-free**.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   The token used to return the next page of results.
    #
    # @return [Types::SearchAvailablePhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAvailablePhoneNumbersResponse#e164_phone_numbers #e164_phone_numbers} => Array&lt;String&gt;
    #   * {Types::SearchAvailablePhoneNumbersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_available_phone_numbers({
    #     area_code: "String",
    #     city: "String",
    #     country: "Alpha2CountryCode",
    #     state: "String",
    #     toll_free_prefix: "TollFreePrefix",
    #     phone_number_type: "Local", # accepts Local, TollFree
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.e164_phone_numbers #=> Array
    #   resp.e164_phone_numbers[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/SearchAvailablePhoneNumbers AWS API Documentation
    #
    # @overload search_available_phone_numbers(params = {})
    # @param [Hash] params ({})
    def search_available_phone_numbers(params = {}, options = {})
      req = build_request(:search_available_phone_numbers, params)
      req.send_request(options)
    end

    # Starts a speaker search task.
    #
    # Before starting any speaker search tasks, you must provide all notices
    # and obtain all consents from the speaker as required under applicable
    # privacy and biometrics laws, and as required under the [AWS service
    # terms][1] for the Amazon Chime SDK.
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :transaction_id
    #   The transaction ID of the call being analyzed.
    #
    # @option params [required, String] :voice_profile_domain_id
    #   The ID of the voice profile domain that will store the voice profile.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different speaker search tasks.
    #
    # @option params [String] :call_leg
    #   Specifies which call leg to stream for speaker search.
    #
    # @return [Types::StartSpeakerSearchTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSpeakerSearchTaskResponse#speaker_search_task #speaker_search_task} => Types::SpeakerSearchTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_speaker_search_task({
    #     voice_connector_id: "NonEmptyString128", # required
    #     transaction_id: "NonEmptyString256", # required
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #     client_request_token: "ClientRequestId",
    #     call_leg: "Caller", # accepts Caller, Callee
    #   })
    #
    # @example Response structure
    #
    #   resp.speaker_search_task.speaker_search_task_id #=> String
    #   resp.speaker_search_task.speaker_search_task_status #=> String
    #   resp.speaker_search_task.call_details.voice_connector_id #=> String
    #   resp.speaker_search_task.call_details.transaction_id #=> String
    #   resp.speaker_search_task.call_details.is_caller #=> Boolean
    #   resp.speaker_search_task.speaker_search_details.results #=> Array
    #   resp.speaker_search_task.speaker_search_details.results[0].confidence_score #=> Float
    #   resp.speaker_search_task.speaker_search_details.results[0].voice_profile_id #=> String
    #   resp.speaker_search_task.speaker_search_details.voiceprint_generation_status #=> String
    #   resp.speaker_search_task.created_timestamp #=> Time
    #   resp.speaker_search_task.updated_timestamp #=> Time
    #   resp.speaker_search_task.started_timestamp #=> Time
    #   resp.speaker_search_task.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StartSpeakerSearchTask AWS API Documentation
    #
    # @overload start_speaker_search_task(params = {})
    # @param [Hash] params ({})
    def start_speaker_search_task(params = {}, options = {})
      req = build_request(:start_speaker_search_task, params)
      req.send_request(options)
    end

    # Starts a voice tone analysis task. For more information about voice
    # tone analysis, see [Using Amazon Chime SDK voice analytics][1] in the
    # *Amazon Chime SDK Developer Guide*.
    #
    # Before starting any voice tone analysis tasks, you must provide all
    # notices and obtain all consents from the speaker as required under
    # applicable privacy and biometrics laws, and as required under the [AWS
    # service terms][2] for the Amazon Chime SDK.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html
    # [2]: https://aws.amazon.com/service-terms/
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :transaction_id
    #   The transaction ID.
    #
    # @option params [required, String] :language_code
    #   The language code.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different voice tone analysis tasks.
    #
    # @return [Types::StartVoiceToneAnalysisTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartVoiceToneAnalysisTaskResponse#voice_tone_analysis_task #voice_tone_analysis_task} => Types::VoiceToneAnalysisTask
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_voice_tone_analysis_task({
    #     voice_connector_id: "NonEmptyString128", # required
    #     transaction_id: "NonEmptyString256", # required
    #     language_code: "en-US", # required, accepts en-US
    #     client_request_token: "ClientRequestId",
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_tone_analysis_task.voice_tone_analysis_task_id #=> String
    #   resp.voice_tone_analysis_task.voice_tone_analysis_task_status #=> String
    #   resp.voice_tone_analysis_task.call_details.voice_connector_id #=> String
    #   resp.voice_tone_analysis_task.call_details.transaction_id #=> String
    #   resp.voice_tone_analysis_task.call_details.is_caller #=> Boolean
    #   resp.voice_tone_analysis_task.created_timestamp #=> Time
    #   resp.voice_tone_analysis_task.updated_timestamp #=> Time
    #   resp.voice_tone_analysis_task.started_timestamp #=> Time
    #   resp.voice_tone_analysis_task.status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StartVoiceToneAnalysisTask AWS API Documentation
    #
    # @overload start_voice_tone_analysis_task(params = {})
    # @param [Hash] params ({})
    def start_voice_tone_analysis_task(params = {}, options = {})
      req = build_request(:start_voice_tone_analysis_task, params)
      req.send_request(options)
    end

    # Stops a speaker search task.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :speaker_search_task_id
    #   The speaker search task ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_speaker_search_task({
    #     voice_connector_id: "NonEmptyString128", # required
    #     speaker_search_task_id: "NonEmptyString256", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StopSpeakerSearchTask AWS API Documentation
    #
    # @overload stop_speaker_search_task(params = {})
    # @param [Hash] params ({})
    def stop_speaker_search_task(params = {}, options = {})
      req = build_request(:stop_speaker_search_task, params)
      req.send_request(options)
    end

    # Stops a voice tone analysis task.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :voice_tone_analysis_task_id
    #   The ID of the voice tone analysis task.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_voice_tone_analysis_task({
    #     voice_connector_id: "NonEmptyString128", # required
    #     voice_tone_analysis_task_id: "NonEmptyString256", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/StopVoiceToneAnalysisTask AWS API Documentation
    #
    # @overload stop_voice_tone_analysis_task(params = {})
    # @param [Hash] params ({})
    def stop_voice_tone_analysis_task(params = {}, options = {})
      req = build_request(:stop_voice_tone_analysis_task, params)
      req.send_request(options)
    end

    # Adds a tag to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource being tagged.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of the tags being added to the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from a resource.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource having its tags removed.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The keys of the tags being removed from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates global settings for the Amazon Chime SDK Voice Connectors in
    # an AWS account.
    #
    # @option params [Types::VoiceConnectorSettings] :voice_connector
    #   The Voice Connector settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_settings({
    #     voice_connector: {
    #       cdr_bucket: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateGlobalSettings AWS API Documentation
    #
    # @overload update_global_settings(params = {})
    # @param [Hash] params ({})
    def update_global_settings(params = {}, options = {})
      req = build_request(:update_global_settings, params)
      req.send_request(options)
    end

    # Updates phone number details, such as product type or calling name,
    # for the specified phone number ID. You can update one phone number
    # detail at a time. For example, you can update either the product type
    # or the calling name in one action.
    #
    # For numbers outside the U.S., you must use the Amazon Chime SDK SIP
    # Media Application Dial-In product type.
    #
    # Updates to outbound calling names can take 72 hours to complete.
    # Pending updates to outbound calling names must be complete before you
    # can request another update.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @option params [String] :product_type
    #   The product type.
    #
    # @option params [String] :calling_name
    #   The outbound calling name associated with the phone number.
    #
    # @return [Types::UpdatePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number({
    #     phone_number_id: "SensitiveNonEmptyString", # required
    #     product_type: "VoiceConnector", # accepts VoiceConnector, SipMediaApplicationDialIn
    #     calling_name: "CallingName",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "Cancelled", "PortinCancelRequested", "PortinInProgress", "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #   resp.phone_number.order_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdatePhoneNumber AWS API Documentation
    #
    # @overload update_phone_number(params = {})
    # @param [Hash] params ({})
    def update_phone_number(params = {}, options = {})
      req = build_request(:update_phone_number, params)
      req.send_request(options)
    end

    # Updates the phone number settings for the administrator's AWS
    # account, such as the default outbound calling name. You can update the
    # default outbound calling name once every seven days. Outbound calling
    # names can take up to 72 hours to update.
    #
    # @option params [required, String] :calling_name
    #   The default outbound calling name for the account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number_settings({
    #     calling_name: "CallingName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdatePhoneNumberSettings AWS API Documentation
    #
    # @overload update_phone_number_settings(params = {})
    # @param [Hash] params ({})
    def update_phone_number_settings(params = {}, options = {})
      req = build_request(:update_phone_number_settings, params)
      req.send_request(options)
    end

    # Updates the specified proxy session details, such as voice or SMS
    # capabilities.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :proxy_session_id
    #   The proxy session ID.
    #
    # @option params [required, Array<String>] :capabilities
    #   The proxy session capabilities.
    #
    # @option params [Integer] :expiry_minutes
    #   The number of minutes allowed for the proxy session.
    #
    # @return [Types::UpdateProxySessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProxySessionResponse#proxy_session #proxy_session} => Types::ProxySession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_proxy_session({
    #     voice_connector_id: "NonEmptyString128", # required
    #     proxy_session_id: "NonEmptyString128", # required
    #     capabilities: ["Voice"], # required, accepts Voice, SMS
    #     expiry_minutes: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.proxy_session.voice_connector_id #=> String
    #   resp.proxy_session.proxy_session_id #=> String
    #   resp.proxy_session.name #=> String
    #   resp.proxy_session.status #=> String, one of "Open", "InProgress", "Closed"
    #   resp.proxy_session.expiry_minutes #=> Integer
    #   resp.proxy_session.capabilities #=> Array
    #   resp.proxy_session.capabilities[0] #=> String, one of "Voice", "SMS"
    #   resp.proxy_session.created_timestamp #=> Time
    #   resp.proxy_session.updated_timestamp #=> Time
    #   resp.proxy_session.ended_timestamp #=> Time
    #   resp.proxy_session.participants #=> Array
    #   resp.proxy_session.participants[0].phone_number #=> String
    #   resp.proxy_session.participants[0].proxy_phone_number #=> String
    #   resp.proxy_session.number_selection_behavior #=> String, one of "PreferSticky", "AvoidSticky"
    #   resp.proxy_session.geo_match_level #=> String, one of "Country", "AreaCode"
    #   resp.proxy_session.geo_match_params.country #=> String
    #   resp.proxy_session.geo_match_params.area_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateProxySession AWS API Documentation
    #
    # @overload update_proxy_session(params = {})
    # @param [Hash] params ({})
    def update_proxy_session(params = {}, options = {})
      req = build_request(:update_proxy_session, params)
      req.send_request(options)
    end

    # Updates the details of the specified SIP media application.
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @option params [String] :name
    #   The new name for the specified SIP media application.
    #
    # @option params [Array<Types::SipMediaApplicationEndpoint>] :endpoints
    #   The new set of endpoints for the specified SIP media application.
    #
    # @return [Types::UpdateSipMediaApplicationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSipMediaApplicationResponse#sip_media_application #sip_media_application} => Types::SipMediaApplication
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sip_media_application({
    #     sip_media_application_id: "NonEmptyString", # required
    #     name: "SipMediaApplicationName",
    #     endpoints: [
    #       {
    #         lambda_arn: "FunctionArn",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application.sip_media_application_id #=> String
    #   resp.sip_media_application.aws_region #=> String
    #   resp.sip_media_application.name #=> String
    #   resp.sip_media_application.endpoints #=> Array
    #   resp.sip_media_application.endpoints[0].lambda_arn #=> String
    #   resp.sip_media_application.created_timestamp #=> Time
    #   resp.sip_media_application.updated_timestamp #=> Time
    #   resp.sip_media_application.sip_media_application_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipMediaApplication AWS API Documentation
    #
    # @overload update_sip_media_application(params = {})
    # @param [Hash] params ({})
    def update_sip_media_application(params = {}, options = {})
      req = build_request(:update_sip_media_application, params)
      req.send_request(options)
    end

    # Invokes the AWS Lambda function associated with the SIP media
    # application and transaction ID in an update request. The Lambda
    # function can then return a new set of actions.
    #
    # @option params [required, String] :sip_media_application_id
    #   The ID of the SIP media application handling the call.
    #
    # @option params [required, String] :transaction_id
    #   The ID of the call transaction.
    #
    # @option params [required, Hash<String,String>] :arguments
    #   Arguments made available to the Lambda function as part of the
    #   `CALL_UPDATE_REQUESTED` event. Can contain 0-20 key-value pairs.
    #
    # @return [Types::UpdateSipMediaApplicationCallResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSipMediaApplicationCallResponse#sip_media_application_call #sip_media_application_call} => Types::SipMediaApplicationCall
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sip_media_application_call({
    #     sip_media_application_id: "NonEmptyString", # required
    #     transaction_id: "NonEmptyString", # required
    #     arguments: { # required
    #       "SensitiveString" => "SensitiveString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application_call.transaction_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipMediaApplicationCall AWS API Documentation
    #
    # @overload update_sip_media_application_call(params = {})
    # @param [Hash] params ({})
    def update_sip_media_application_call(params = {}, options = {})
      req = build_request(:update_sip_media_application_call, params)
      req.send_request(options)
    end

    # Updates the details of the specified SIP rule.
    #
    # @option params [required, String] :sip_rule_id
    #   The SIP rule ID.
    #
    # @option params [required, String] :name
    #   The new name for the specified SIP rule.
    #
    # @option params [Boolean] :disabled
    #   The new value that indicates whether the rule is disabled.
    #
    # @option params [Array<Types::SipRuleTargetApplication>] :target_applications
    #   The new list of target applications.
    #
    # @return [Types::UpdateSipRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSipRuleResponse#sip_rule #sip_rule} => Types::SipRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sip_rule({
    #     sip_rule_id: "NonEmptyString", # required
    #     name: "SipRuleName", # required
    #     disabled: false,
    #     target_applications: [
    #       {
    #         sip_media_application_id: "NonEmptyString",
    #         priority: 1,
    #         aws_region: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_rule.sip_rule_id #=> String
    #   resp.sip_rule.name #=> String
    #   resp.sip_rule.disabled #=> Boolean
    #   resp.sip_rule.trigger_type #=> String, one of "ToPhoneNumber", "RequestUriHostname"
    #   resp.sip_rule.trigger_value #=> String
    #   resp.sip_rule.target_applications #=> Array
    #   resp.sip_rule.target_applications[0].sip_media_application_id #=> String
    #   resp.sip_rule.target_applications[0].priority #=> Integer
    #   resp.sip_rule.target_applications[0].aws_region #=> String
    #   resp.sip_rule.created_timestamp #=> Time
    #   resp.sip_rule.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipRule AWS API Documentation
    #
    # @overload update_sip_rule(params = {})
    # @param [Hash] params ({})
    def update_sip_rule(params = {}, options = {})
      req = build_request(:update_sip_rule, params)
      req.send_request(options)
    end

    # Updates the details for the specified Amazon Chime SDK Voice
    # Connector.
    #
    # @option params [required, String] :voice_connector_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :name
    #   The name of the Voice Connector.
    #
    # @option params [required, Boolean] :require_encryption
    #   When enabled, requires encryption for the Voice Connector.
    #
    # @return [Types::UpdateVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVoiceConnectorResponse#voice_connector #voice_connector} => Types::VoiceConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #     name: "VoiceConnectorName", # required
    #     require_encryption: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector.voice_connector_id #=> String
    #   resp.voice_connector.aws_region #=> String, one of "us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #   resp.voice_connector.voice_connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceConnector AWS API Documentation
    #
    # @overload update_voice_connector(params = {})
    # @param [Hash] params ({})
    def update_voice_connector(params = {}, options = {})
      req = build_request(:update_voice_connector, params)
      req.send_request(options)
    end

    # Updates the settings for the specified Amazon Chime SDK Voice
    # Connector group.
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Voice Connector ID.
    #
    # @option params [required, String] :name
    #   The name of the Voice Connector group.
    #
    # @option params [required, Array<Types::VoiceConnectorItem>] :voice_connector_items
    #   The `VoiceConnectorItems` to associate with the Voice Connector group.
    #
    # @return [Types::UpdateVoiceConnectorGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVoiceConnectorGroupResponse#voice_connector_group #voice_connector_group} => Types::VoiceConnectorGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_connector_group({
    #     voice_connector_group_id: "NonEmptyString", # required
    #     name: "VoiceConnectorGroupName", # required
    #     voice_connector_items: [ # required
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         priority: 1, # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector_group.voice_connector_group_id #=> String
    #   resp.voice_connector_group.name #=> String
    #   resp.voice_connector_group.voice_connector_items #=> Array
    #   resp.voice_connector_group.voice_connector_items[0].voice_connector_id #=> String
    #   resp.voice_connector_group.voice_connector_items[0].priority #=> Integer
    #   resp.voice_connector_group.created_timestamp #=> Time
    #   resp.voice_connector_group.updated_timestamp #=> Time
    #   resp.voice_connector_group.voice_connector_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceConnectorGroup AWS API Documentation
    #
    # @overload update_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def update_voice_connector_group(params = {}, options = {})
      req = build_request(:update_voice_connector_group, params)
      req.send_request(options)
    end

    # Updates the specified voice profile’s voice print and refreshes its
    # expiration timestamp.
    #
    # As a condition of using this feature, you acknowledge that the
    # collection, use, storage, and retention of your caller’s biometric
    # identifiers and biometric information (“biometric data”) in the form
    # of a digital voiceprint requires the caller’s informed consent via a
    # written release. Such consent is required under various state laws,
    # including biometrics laws in Illinois, Texas, Washington and other
    # state privacy laws.
    #
    #  You must provide a written release to each caller through a process
    # that clearly reflects each caller’s informed consent before using
    # Amazon Chime SDK Voice Insights service, as required under the terms
    # of your agreement with AWS governing your use of the service.
    #
    # @option params [required, String] :voice_profile_id
    #   The profile ID.
    #
    # @option params [required, String] :speaker_search_task_id
    #   The ID of the speaker search task.
    #
    # @return [Types::UpdateVoiceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVoiceProfileResponse#voice_profile #voice_profile} => Types::VoiceProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_profile({
    #     voice_profile_id: "NonEmptyString256", # required
    #     speaker_search_task_id: "NonEmptyString256", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_profile.voice_profile_id #=> String
    #   resp.voice_profile.voice_profile_arn #=> String
    #   resp.voice_profile.voice_profile_domain_id #=> String
    #   resp.voice_profile.created_timestamp #=> Time
    #   resp.voice_profile.updated_timestamp #=> Time
    #   resp.voice_profile.expiration_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceProfile AWS API Documentation
    #
    # @overload update_voice_profile(params = {})
    # @param [Hash] params ({})
    def update_voice_profile(params = {}, options = {})
      req = build_request(:update_voice_profile, params)
      req.send_request(options)
    end

    # Updates the settings for the specified voice profile domain.
    #
    # @option params [required, String] :voice_profile_domain_id
    #   The domain ID.
    #
    # @option params [String] :name
    #   The name of the voice profile domain.
    #
    # @option params [String] :description
    #   The description of the voice profile domain.
    #
    # @return [Types::UpdateVoiceProfileDomainResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVoiceProfileDomainResponse#voice_profile_domain #voice_profile_domain} => Types::VoiceProfileDomain
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_voice_profile_domain({
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #     name: "VoiceProfileDomainName",
    #     description: "VoiceProfileDomainDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_profile_domain.voice_profile_domain_id #=> String
    #   resp.voice_profile_domain.voice_profile_domain_arn #=> String
    #   resp.voice_profile_domain.name #=> String
    #   resp.voice_profile_domain.description #=> String
    #   resp.voice_profile_domain.server_side_encryption_configuration.kms_key_arn #=> String
    #   resp.voice_profile_domain.created_timestamp #=> Time
    #   resp.voice_profile_domain.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateVoiceProfileDomain AWS API Documentation
    #
    # @overload update_voice_profile_domain(params = {})
    # @param [Hash] params ({})
    def update_voice_profile_domain(params = {}, options = {})
      req = build_request(:update_voice_profile_domain, params)
      req.send_request(options)
    end

    # Validates an address to be used for 911 calls made with Amazon Chime
    # SDK Voice Connectors. You can use validated addresses in a Presence
    # Information Data Format Location Object file that you include in SIP
    # requests. That helps ensure that addresses are routed to the
    # appropriate Public Safety Answering Point.
    #
    # @option params [required, String] :aws_account_id
    #   The AWS account ID.
    #
    # @option params [required, String] :street_number
    #   The address street number, such as `200` or `2121`.
    #
    # @option params [required, String] :street_info
    #   The address street information, such as `8th Avenue`.
    #
    # @option params [required, String] :city
    #   The address city, such as `Portland`.
    #
    # @option params [required, String] :state
    #   The address state, such as `ME`.
    #
    # @option params [required, String] :country
    #   The country in the address being validated.
    #
    # @option params [required, String] :postal_code
    #   The dress postal code, such `04352`.
    #
    # @return [Types::ValidateE911AddressResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ValidateE911AddressResponse#validation_result #validation_result} => Integer
    #   * {Types::ValidateE911AddressResponse#address_external_id #address_external_id} => String
    #   * {Types::ValidateE911AddressResponse#address #address} => Types::Address
    #   * {Types::ValidateE911AddressResponse#candidate_address_list #candidate_address_list} => Array&lt;Types::CandidateAddress&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_e911_address({
    #     aws_account_id: "NonEmptyString", # required
    #     street_number: "SensitiveNonEmptyString", # required
    #     street_info: "SensitiveNonEmptyString", # required
    #     city: "SensitiveNonEmptyString", # required
    #     state: "SensitiveNonEmptyString", # required
    #     country: "SensitiveNonEmptyString", # required
    #     postal_code: "SensitiveNonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.validation_result #=> Integer
    #   resp.address_external_id #=> String
    #   resp.address.street_name #=> String
    #   resp.address.street_suffix #=> String
    #   resp.address.post_directional #=> String
    #   resp.address.pre_directional #=> String
    #   resp.address.street_number #=> String
    #   resp.address.city #=> String
    #   resp.address.state #=> String
    #   resp.address.postal_code #=> String
    #   resp.address.postal_code_plus_4 #=> String
    #   resp.address.country #=> String
    #   resp.candidate_address_list #=> Array
    #   resp.candidate_address_list[0].street_info #=> String
    #   resp.candidate_address_list[0].street_number #=> String
    #   resp.candidate_address_list[0].city #=> String
    #   resp.candidate_address_list[0].state #=> String
    #   resp.candidate_address_list[0].postal_code #=> String
    #   resp.candidate_address_list[0].postal_code_plus_4 #=> String
    #   resp.candidate_address_list[0].country #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/ValidateE911Address AWS API Documentation
    #
    # @overload validate_e911_address(params = {})
    # @param [Hash] params ({})
    def validate_e911_address(params = {}, options = {})
      req = build_request(:validate_e911_address, params)
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
      context[:gem_name] = 'aws-sdk-chimesdkvoice'
      context[:gem_version] = '1.11.0'
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
