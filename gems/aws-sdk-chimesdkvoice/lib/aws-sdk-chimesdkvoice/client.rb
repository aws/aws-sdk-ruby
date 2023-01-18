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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #
    # @option params [Boolean] :force_associate
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

    # @option params [required, String] :voice_connector_group_id
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #
    # @option params [Boolean] :force_associate
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

    # @option params [required, Array<String>] :phone_number_ids
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

    # @option params [required, Array<Types::UpdatePhoneNumberRequestItem>] :update_phone_number_request_items
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

    # @option params [required, String] :product_type
    #
    # @option params [required, Array<String>] :e164_phone_numbers
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Array<String>] :participant_phone_numbers
    #
    # @option params [String] :name
    #
    # @option params [Integer] :expiry_minutes
    #
    # @option params [required, Array<String>] :capabilities
    #
    # @option params [String] :number_selection_behavior
    #
    # @option params [String] :geo_match_level
    #
    # @option params [Types::GeoMatchParams] :geo_match_params
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

    # @option params [required, String] :aws_region
    #
    # @option params [required, String] :name
    #
    # @option params [required, Array<Types::SipMediaApplicationEndpoint>] :endpoints
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/CreateSipMediaApplication AWS API Documentation
    #
    # @overload create_sip_media_application(params = {})
    # @param [Hash] params ({})
    def create_sip_media_application(params = {}, options = {})
      req = build_request(:create_sip_media_application, params)
      req.send_request(options)
    end

    # @option params [required, String] :from_phone_number
    #
    # @option params [required, String] :to_phone_number
    #
    # @option params [required, String] :sip_media_application_id
    #
    # @option params [Hash<String,String>] :sip_headers
    #
    # @option params [Hash<String,String>] :arguments_map
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

    # @option params [required, String] :name
    #
    # @option params [required, String] :trigger_type
    #
    # @option params [required, String] :trigger_value
    #
    # @option params [Boolean] :disabled
    #
    # @option params [Array<Types::SipRuleTargetApplication>] :target_applications
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

    # @option params [required, String] :name
    #
    # @option params [String] :aws_region
    #
    # @option params [required, Boolean] :require_encryption
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

    # @option params [required, String] :name
    #
    # @option params [Array<Types::VoiceConnectorItem>] :voice_connector_items
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

    # @option params [required, String] :phone_number_id
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, String] :proxy_session_id
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

    # @option params [required, String] :sip_media_application_id
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

    # @option params [required, String] :sip_rule_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_group_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Array<String>] :usernames
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Array<String>] :e164_phone_numbers
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

    # @option params [required, String] :voice_connector_group_id
    #
    # @option params [required, Array<String>] :e164_phone_numbers
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

    # @option params [required, String] :phone_number_id
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

    # @option params [required, String] :phone_number_order_id
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, String] :proxy_session_id
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

    # @option params [required, String] :sip_media_application_id
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetSipMediaApplication AWS API Documentation
    #
    # @overload get_sip_media_application(params = {})
    # @param [Hash] params ({})
    def get_sip_media_application(params = {}, options = {})
      req = build_request(:get_sip_media_application, params)
      req.send_request(options)
    end

    # @option params [required, String] :sip_media_application_id
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

    # @option params [required, String] :sip_media_application_id
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

    # @option params [required, String] :sip_rule_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_group_id
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

    # @option params [required, String] :voice_connector_id
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorLoggingConfiguration AWS API Documentation
    #
    # @overload get_voice_connector_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_logging_configuration(params = {}, options = {})
      req = build_request(:get_voice_connector_logging_configuration, params)
      req.send_request(options)
    end

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/GetVoiceConnectorStreamingConfiguration AWS API Documentation
    #
    # @overload get_voice_connector_streaming_configuration(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_streaming_configuration(params = {}, options = {})
      req = build_request(:get_voice_connector_streaming_configuration, params)
      req.send_request(options)
    end

    # @option params [required, String] :voice_connector_id
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
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

    # @option params [String] :status
    #
    # @option params [String] :product_type
    #
    # @option params [String] :filter_name
    #
    # @option params [String] :filter_value
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [String] :status
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
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

    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
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

    # @option params [String] :sip_media_application_id
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
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

    # @option params [required, String] :product_type
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

    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
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

    # @option params [required, String] :voice_connector_id
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

    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
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

    # @option params [required, String] :sip_media_application_id
    #
    # @option params [Types::SipMediaApplicationAlexaSkillConfiguration] :sip_media_application_alexa_skill_configuration
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

    # @option params [required, String] :sip_media_application_id
    #
    # @option params [Types::SipMediaApplicationLoggingConfiguration] :sip_media_application_logging_configuration
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Types::EmergencyCallingConfiguration] :emergency_calling_configuration
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Types::LoggingConfiguration] :logging_configuration
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
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configuration.enable_sip_logs #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorLoggingConfiguration AWS API Documentation
    #
    # @overload put_voice_connector_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_logging_configuration(params = {}, options = {})
      req = build_request(:put_voice_connector_logging_configuration, params)
      req.send_request(options)
    end

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Types::Origination] :origination
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Integer] :default_session_expiry_minutes
    #
    # @option params [required, Array<String>] :phone_number_pool_countries
    #
    # @option params [String] :fall_back_phone_number
    #
    # @option params [Boolean] :disabled
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Types::StreamingConfiguration] :streaming_configuration
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
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_configuration.data_retention_in_hours #=> Integer
    #   resp.streaming_configuration.disabled #=> Boolean
    #   resp.streaming_configuration.streaming_notification_targets #=> Array
    #   resp.streaming_configuration.streaming_notification_targets[0].notification_target #=> String, one of "EventBridge", "SNS", "SQS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/PutVoiceConnectorStreamingConfiguration AWS API Documentation
    #
    # @overload put_voice_connector_streaming_configuration(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_streaming_configuration(params = {}, options = {})
      req = build_request(:put_voice_connector_streaming_configuration, params)
      req.send_request(options)
    end

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, Types::Termination] :termination
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [Array<Types::Credential>] :credentials
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

    # @option params [required, String] :phone_number_id
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

    # @option params [String] :area_code
    #
    # @option params [String] :city
    #
    # @option params [String] :country
    #
    # @option params [String] :state
    #
    # @option params [String] :toll_free_prefix
    #
    # @option params [String] :phone_number_type
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :next_token
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

    # @option params [Types::VoiceConnectorSettings] :voice_connector
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

    # @option params [required, String] :phone_number_id
    #
    # @option params [String] :product_type
    #
    # @option params [String] :calling_name
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

    # @option params [required, String] :calling_name
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, String] :proxy_session_id
    #
    # @option params [required, Array<String>] :capabilities
    #
    # @option params [Integer] :expiry_minutes
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

    # @option params [required, String] :sip_media_application_id
    #
    # @option params [String] :name
    #
    # @option params [Array<Types::SipMediaApplicationEndpoint>] :endpoints
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-sdk-voice-2022-08-03/UpdateSipMediaApplication AWS API Documentation
    #
    # @overload update_sip_media_application(params = {})
    # @param [Hash] params ({})
    def update_sip_media_application(params = {}, options = {})
      req = build_request(:update_sip_media_application, params)
      req.send_request(options)
    end

    # @option params [required, String] :sip_media_application_id
    #
    # @option params [required, String] :transaction_id
    #
    # @option params [required, Hash<String,String>] :arguments
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

    # @option params [required, String] :sip_rule_id
    #
    # @option params [required, String] :name
    #
    # @option params [Boolean] :disabled
    #
    # @option params [Array<Types::SipRuleTargetApplication>] :target_applications
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

    # @option params [required, String] :voice_connector_id
    #
    # @option params [required, String] :name
    #
    # @option params [required, Boolean] :require_encryption
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

    # @option params [required, String] :voice_connector_group_id
    #
    # @option params [required, String] :name
    #
    # @option params [required, Array<Types::VoiceConnectorItem>] :voice_connector_items
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

    # @option params [required, String] :aws_account_id
    #
    # @option params [required, String] :street_number
    #
    # @option params [required, String] :street_info
    #
    # @option params [required, String] :city
    #
    # @option params [required, String] :state
    #
    # @option params [required, String] :country
    #
    # @option params [required, String] :postal_code
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
      context[:gem_version] = '1.1.0'
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
