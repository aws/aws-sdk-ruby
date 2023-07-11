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

Aws::Plugins::GlobalConfiguration.add_identifier(:chime)

module Aws::Chime
  # An API client for Chime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Chime::Client.new(
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

    @identifier = :chime

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
    add_plugin(Aws::Chime::Plugins::Endpoints)

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
    #   @option options [Aws::Chime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Chime::EndpointParameters`
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

    # Associates a phone number with the specified Amazon Chime user.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [required, String] :e164_phone_number
    #   The phone number, in E.164 format.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_number_with_user({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #     e164_phone_number: "E164PhoneNumber", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumberWithUser AWS API Documentation
    #
    # @overload associate_phone_number_with_user(params = {})
    # @param [Hash] params ({})
    def associate_phone_number_with_user(params = {}, options = {})
      req = build_request(:associate_phone_number_with_user, params)
      req.send_request(options)
    end

    # Associates phone numbers with the specified Amazon Chime Voice
    # Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [AssociatePhoneNumbersWithVoiceConnector][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_AssociatePhoneNumbersWithVoiceConnector.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @option params [Boolean] :force_associate
    #   If true, associates the provided phone numbers with the provided
    #   Amazon Chime Voice Connector and removes any previously existing
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
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumbersWithVoiceConnector AWS API Documentation
    #
    # @overload associate_phone_numbers_with_voice_connector(params = {})
    # @param [Hash] params ({})
    def associate_phone_numbers_with_voice_connector(params = {}, options = {})
      req = build_request(:associate_phone_numbers_with_voice_connector, params)
      req.send_request(options)
    end

    # Associates phone numbers with the specified Amazon Chime Voice
    # Connector group.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [AssociatePhoneNumbersWithVoiceConnectorGroup][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_AssociatePhoneNumbersWithVoiceConnectorGroup.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
    #
    # @option params [Boolean] :force_associate
    #   If true, associates the provided phone numbers with the provided
    #   Amazon Chime Voice Connector Group and removes any previously existing
    #   associations. If false, does not associate any phone numbers that have
    #   previously existing associations.
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
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociatePhoneNumbersWithVoiceConnectorGroup AWS API Documentation
    #
    # @overload associate_phone_numbers_with_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def associate_phone_numbers_with_voice_connector_group(params = {}, options = {})
      req = build_request(:associate_phone_numbers_with_voice_connector_group, params)
      req.send_request(options)
    end

    # Associates the specified sign-in delegate groups with the specified
    # Amazon Chime account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<Types::SigninDelegateGroup>] :signin_delegate_groups
    #   The sign-in delegate groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_signin_delegate_groups_with_account({
    #     account_id: "NonEmptyString", # required
    #     signin_delegate_groups: [ # required
    #       {
    #         group_name: "NonEmptyString",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/AssociateSigninDelegateGroupsWithAccount AWS API Documentation
    #
    # @overload associate_signin_delegate_groups_with_account(params = {})
    # @param [Hash] params ({})
    def associate_signin_delegate_groups_with_account(params = {}, options = {})
      req = build_request(:associate_signin_delegate_groups_with_account, params)
      req.send_request(options)
    end

    # Creates up to 100 new attendees for an active Amazon Chime SDK
    # meeting.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [BatchCreateAttendee][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    # For more information about the Amazon Chime SDK, see [Using the Amazon
    # Chime SDK][3] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_BatchCreateAttendee.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, Array<Types::CreateAttendeeRequestItem>] :attendees
    #   The request containing the attendees to create.
    #
    # @return [Types::BatchCreateAttendeeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateAttendeeResponse#attendees #attendees} => Array&lt;Types::Attendee&gt;
    #   * {Types::BatchCreateAttendeeResponse#errors #errors} => Array&lt;Types::CreateAttendeeError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_attendee({
    #     meeting_id: "GuidString", # required
    #     attendees: [ # required
    #       {
    #         external_user_id: "ExternalUserIdType", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.attendees #=> Array
    #   resp.attendees[0].external_user_id #=> String
    #   resp.attendees[0].attendee_id #=> String
    #   resp.attendees[0].join_token #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].external_user_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateAttendee AWS API Documentation
    #
    # @overload batch_create_attendee(params = {})
    # @param [Hash] params ({})
    def batch_create_attendee(params = {}, options = {})
      req = build_request(:batch_create_attendee, params)
      req.send_request(options)
    end

    # Adds a specified number of users to a channel.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [BatchCreateChannelMembership][1],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_BatchCreateChannelMembership.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel to which you're adding users.
    #
    # @option params [String] :type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default members
    #   are always returned as part of `ListChannelMemberships`. Hidden
    #   members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`. Otherwise hidden members are
    #   not returned. This is only supported by moderators.
    #
    # @option params [required, Array<String>] :member_arns
    #   The ARNs of the members you want to add to the channel.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::BatchCreateChannelMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateChannelMembershipResponse#batch_channel_memberships #batch_channel_memberships} => Types::BatchChannelMemberships
    #   * {Types::BatchCreateChannelMembershipResponse#errors #errors} => Array&lt;Types::BatchCreateChannelMembershipError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_channel_membership({
    #     channel_arn: "ChimeArn", # required
    #     type: "DEFAULT", # accepts DEFAULT, HIDDEN
    #     member_arns: ["ChimeArn"], # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.batch_channel_memberships.invited_by.arn #=> String
    #   resp.batch_channel_memberships.invited_by.name #=> String
    #   resp.batch_channel_memberships.type #=> String, one of "DEFAULT", "HIDDEN"
    #   resp.batch_channel_memberships.members #=> Array
    #   resp.batch_channel_memberships.members[0].arn #=> String
    #   resp.batch_channel_memberships.members[0].name #=> String
    #   resp.batch_channel_memberships.channel_arn #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].member_arn #=> String
    #   resp.errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateChannelMembership AWS API Documentation
    #
    # @overload batch_create_channel_membership(params = {})
    # @param [Hash] params ({})
    def batch_create_channel_membership(params = {}, options = {})
      req = build_request(:batch_create_channel_membership, params)
      req.send_request(options)
    end

    # Adds up to 50 members to a chat room in an Amazon Chime Enterprise
    # account. Members can be users or bots. The member role designates
    # whether the member is a chat room administrator or a general chat room
    # member.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, Array<Types::MembershipItem>] :membership_item_list
    #   The list of membership items.
    #
    # @return [Types::BatchCreateRoomMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchCreateRoomMembershipResponse#errors #errors} => Array&lt;Types::MemberError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_create_room_membership({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     membership_item_list: [ # required
    #       {
    #         member_id: "NonEmptyString",
    #         role: "Administrator", # accepts Administrator, Member
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].member_id #=> String
    #   resp.errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchCreateRoomMembership AWS API Documentation
    #
    # @overload batch_create_room_membership(params = {})
    # @param [Hash] params ({})
    def batch_create_room_membership(params = {}, options = {})
      req = build_request(:batch_create_room_membership, params)
      req.send_request(options)
    end

    # Moves phone numbers into the **Deletion queue**. Phone numbers must be
    # disassociated from any users or Amazon Chime Voice Connectors before
    # they can be deleted.
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
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchDeletePhoneNumber AWS API Documentation
    #
    # @overload batch_delete_phone_number(params = {})
    # @param [Hash] params ({})
    def batch_delete_phone_number(params = {}, options = {})
      req = build_request(:batch_delete_phone_number, params)
      req.send_request(options)
    end

    # Suspends up to 50 users from a `Team` or `EnterpriseLWA` Amazon Chime
    # account. For more information about different account types, see
    # [Managing Your Amazon Chime Accounts][1] in the *Amazon Chime
    # Administration Guide*.
    #
    # Users suspended from a `Team` account are disassociated from the
    # account,but they can continue to use Amazon Chime as free users. To
    # remove the suspension from suspended `Team` account users, invite them
    # to the `Team` account again. You can use the InviteUsers action to do
    # so.
    #
    # Users suspended from an `EnterpriseLWA` account are immediately signed
    # out of Amazon Chime and can no longer sign in. To remove the
    # suspension from suspended `EnterpriseLWA` account users, use the
    # BatchUnsuspendUser action.
    #
    # To sign out users without suspending them, use the LogoutUser action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_id_list
    #   The request containing the user IDs to suspend.
    #
    # @return [Types::BatchSuspendUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchSuspendUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_suspend_user({
    #     account_id: "NonEmptyString", # required
    #     user_id_list: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchSuspendUser AWS API Documentation
    #
    # @overload batch_suspend_user(params = {})
    # @param [Hash] params ({})
    def batch_suspend_user(params = {}, options = {})
      req = build_request(:batch_suspend_user, params)
      req.send_request(options)
    end

    # Removes the suspension from up to 50 previously suspended users for
    # the specified Amazon Chime `EnterpriseLWA` account. Only users on
    # `EnterpriseLWA` accounts can be unsuspended using this action. For
    # more information about different account types, see [ Managing Your
    # Amazon Chime Accounts ][1] in the account types, in the *Amazon Chime
    # Administration Guide*.
    #
    # Previously suspended users who are unsuspended using this action are
    # returned to `Registered` status. Users who are not previously
    # suspended are ignored.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_id_list
    #   The request containing the user IDs to unsuspend.
    #
    # @return [Types::BatchUnsuspendUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUnsuspendUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_unsuspend_user({
    #     account_id: "NonEmptyString", # required
    #     user_id_list: ["NonEmptyString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUnsuspendUser AWS API Documentation
    #
    # @overload batch_unsuspend_user(params = {})
    # @param [Hash] params ({})
    def batch_unsuspend_user(params = {}, options = {})
      req = build_request(:batch_unsuspend_user, params)
      req.send_request(options)
    end

    # Updates phone number product types or calling names. You can update
    # one attribute at a time for each `UpdatePhoneNumberRequestItem`. For
    # example, you can update the product type or the calling name.
    #
    # For toll-free numbers, you cannot use the Amazon Chime Business
    # Calling product type. For numbers outside the U.S., you must use the
    # Amazon Chime SIP Media Application Dial-In product type.
    #
    # Updates to outbound calling names can take up to 72 hours to complete.
    # Pending updates to outbound calling names must be complete before you
    # can request another update.
    #
    # @option params [required, Array<Types::UpdatePhoneNumberRequestItem>] :update_phone_number_request_items
    #   The request containing the phone number IDs and product types or
    #   calling names to update.
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
    #         phone_number_id: "NonEmptyString", # required
    #         product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #         calling_name: "CallingName",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_errors #=> Array
    #   resp.phone_number_errors[0].phone_number_id #=> String
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdatePhoneNumber AWS API Documentation
    #
    # @overload batch_update_phone_number(params = {})
    # @param [Hash] params ({})
    def batch_update_phone_number(params = {}, options = {})
      req = build_request(:batch_update_phone_number, params)
      req.send_request(options)
    end

    # Updates user details within the UpdateUserRequestItem object for up to
    # 20 users for the specified Amazon Chime account. Currently, only
    # `LicenseType` updates are supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<Types::UpdateUserRequestItem>] :update_user_request_items
    #   The request containing the user IDs and details to update.
    #
    # @return [Types::BatchUpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateUserResponse#user_errors #user_errors} => Array&lt;Types::UserError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_user({
    #     account_id: "NonEmptyString", # required
    #     update_user_request_items: [ # required
    #       {
    #         user_id: "NonEmptyString", # required
    #         license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #         user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #         alexa_for_business_metadata: {
    #           is_alexa_for_business_enabled: false,
    #           alexa_for_business_room_arn: "SensitiveString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.user_errors #=> Array
    #   resp.user_errors[0].user_id #=> String
    #   resp.user_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.user_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/BatchUpdateUser AWS API Documentation
    #
    # @overload batch_update_user(params = {})
    # @param [Hash] params ({})
    def batch_update_user(params = {}, options = {})
      req = build_request(:batch_update_user, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime account under the administrator's AWS
    # account. Only `Team` account types are currently supported for this
    # action. For more information about different account types, see
    # [Managing Your Amazon Chime Accounts][1] in the *Amazon Chime
    # Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime account.
    #
    # @return [Types::CreateAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account({
    #     name: "AccountName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.account_status #=> String, one of "Suspended", "Active"
    #   resp.account.signin_delegate_groups #=> Array
    #   resp.account.signin_delegate_groups[0].group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAccount AWS API Documentation
    #
    # @overload create_account(params = {})
    # @param [Hash] params ({})
    def create_account(params = {}, options = {})
      req = build_request(:create_account, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime SDK messaging `AppInstance` under an AWS
    # account. Only SDK messaging customers use this API.
    # `CreateAppInstance` supports idempotency behavior as described in the
    # AWS API Standard.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateAppInstance][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstance.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :name
    #   The name of the `AppInstance`.
    #
    # @option params [String] :metadata
    #   The metadata of the `AppInstance`. Limited to a 1KB string in UTF-8.
    #
    # @option params [required, String] :client_request_token
    #   The `ClientRequestToken` of the `AppInstance`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags assigned to the `AppInstance`.
    #
    # @return [Types::CreateAppInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppInstanceResponse#app_instance_arn #app_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance({
    #     name: "NonEmptyResourceName", # required
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
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
    #   resp.app_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstance AWS API Documentation
    #
    # @overload create_app_instance(params = {})
    # @param [Hash] params ({})
    def create_app_instance(params = {}, options = {})
      req = build_request(:create_app_instance, params)
      req.send_request(options)
    end

    # Promotes an `AppInstanceUser` to an `AppInstanceAdmin`. The promoted
    # user can perform the following actions.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateAppInstanceAdmin][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    # * `ChannelModerator` actions across all channels in the `AppInstance`.
    #
    # * `DeleteChannelMessage` actions.
    #
    # Only an `AppInstanceUser` can be promoted to an `AppInstanceAdmin`
    # role.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstanceAdmin.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_admin_arn
    #   The ARN of the administrator of the current `AppInstance`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::CreateAppInstanceAdminResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppInstanceAdminResponse#app_instance_admin #app_instance_admin} => Types::Identity
    #   * {Types::CreateAppInstanceAdminResponse#app_instance_arn #app_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_admin({
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_admin.arn #=> String
    #   resp.app_instance_admin.name #=> String
    #   resp.app_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstanceAdmin AWS API Documentation
    #
    # @overload create_app_instance_admin(params = {})
    # @param [Hash] params ({})
    def create_app_instance_admin(params = {}, options = {})
      req = build_request(:create_app_instance_admin, params)
      req.send_request(options)
    end

    # Creates a user under an Amazon Chime `AppInstance`. The request
    # consists of a unique `appInstanceUserId` and `Name` for that user.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateAppInstanceUser][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstanceUser.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance` request.
    #
    # @option params [required, String] :app_instance_user_id
    #   The user ID of the `AppInstance`.
    #
    # @option params [required, String] :name
    #   The user's name.
    #
    # @option params [String] :metadata
    #   The request's metadata. Limited to a 1KB string in UTF-8.
    #
    # @option params [required, String] :client_request_token
    #   The token assigned to the user requesting an `AppInstance`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags assigned to the `AppInstanceUser`.
    #
    # @return [Types::CreateAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAppInstanceUserResponse#app_instance_user_arn #app_instance_user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_instance_user({
    #     app_instance_arn: "ChimeArn", # required
    #     app_instance_user_id: "UserId", # required
    #     name: "UserName", # required
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
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
    #   resp.app_instance_user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAppInstanceUser AWS API Documentation
    #
    # @overload create_app_instance_user(params = {})
    # @param [Hash] params ({})
    def create_app_instance_user(params = {}, options = {})
      req = build_request(:create_app_instance_user, params)
      req.send_request(options)
    end

    # Creates a new attendee for an active Amazon Chime SDK meeting. For
    # more information about the Amazon Chime SDK, see [Using the Amazon
    # Chime SDK][1] in the *Amazon Chime SDK Developer Guide*.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateAttendee][2], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][3] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateAttendee.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :external_user_id
    #   The Amazon Chime SDK external user ID. An idempotency token. Links the
    #   attendee to an identity managed by a builder application.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @return [Types::CreateAttendeeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAttendeeResponse#attendee #attendee} => Types::Attendee
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_attendee({
    #     meeting_id: "GuidString", # required
    #     external_user_id: "ExternalUserIdType", # required
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
    #   resp.attendee.external_user_id #=> String
    #   resp.attendee.attendee_id #=> String
    #   resp.attendee.join_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateAttendee AWS API Documentation
    #
    # @overload create_attendee(params = {})
    # @param [Hash] params ({})
    def create_attendee(params = {}, options = {})
      req = build_request(:create_attendee, params)
      req.send_request(options)
    end

    # Creates a bot for an Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :display_name
    #   The bot display name.
    #
    # @option params [String] :domain
    #   The domain of the Amazon Chime Enterprise account.
    #
    # @return [Types::CreateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot({
    #     account_id: "NonEmptyString", # required
    #     display_name: "SensitiveString", # required
    #     domain: "NonEmptyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateBot AWS API Documentation
    #
    # @overload create_bot(params = {})
    # @param [Hash] params ({})
    def create_bot(params = {}, options = {})
      req = build_request(:create_bot, params)
      req.send_request(options)
    end

    # Creates a channel to which you can add users and send messages.
    #
    # **Restriction**: You can't change a channel's privacy.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateChannel][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannel.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the channel request.
    #
    # @option params [required, String] :name
    #   The name of the channel.
    #
    # @option params [String] :mode
    #   The channel mode: `UNRESTRICTED` or `RESTRICTED`. Administrators,
    #   moderators, and channel members can add themselves and other members
    #   to unrestricted channels. Only administrators and moderators can add
    #   members to restricted channels.
    #
    # @option params [String] :privacy
    #   The channel's privacy level: `PUBLIC` or `PRIVATE`. Private channels
    #   aren't discoverable by users outside the channel. Public channels are
    #   discoverable by anyone in the `AppInstance`.
    #
    # @option params [String] :metadata
    #   The metadata of the creation request. Limited to 1KB and UTF-8.
    #
    # @option params [required, String] :client_request_token
    #   The client token for the request. An `Idempotency` token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags for the creation request.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::CreateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelResponse#channel_arn #channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel({
    #     app_instance_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName", # required
    #     mode: "UNRESTRICTED", # accepts UNRESTRICTED, RESTRICTED
    #     privacy: "PUBLIC", # accepts PUBLIC, PRIVATE
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannel AWS API Documentation
    #
    # @overload create_channel(params = {})
    # @param [Hash] params ({})
    def create_channel(params = {}, options = {})
      req = build_request(:create_channel, params)
      req.send_request(options)
    end

    # Permanently bans a member from a channel. Moderators can't add banned
    # members to a channel. To undo a ban, you first have to
    # `DeleteChannelBan`, and then `CreateChannelMembership`. Bans are
    # cleaned up when you delete users or channels.
    #
    # If you ban a user who is already part of a channel, that user is
    # automatically kicked from the channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateChannelBan][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelBan.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the ban request.
    #
    # @option params [required, String] :member_arn
    #   The ARN of the member being banned.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::CreateChannelBanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelBanResponse#channel_arn #channel_arn} => String
    #   * {Types::CreateChannelBanResponse#member #member} => Types::Identity
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_ban({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.member.arn #=> String
    #   resp.member.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelBan AWS API Documentation
    #
    # @overload create_channel_ban(params = {})
    # @param [Hash] params ({})
    def create_channel_ban(params = {}, options = {})
      req = build_request(:create_channel_ban, params)
      req.send_request(options)
    end

    # Adds a user to a channel. The `InvitedBy` response field is derived
    # from the request header. A channel member can:
    #
    # * List messages
    #
    # * Send messages
    #
    # * Receive messages
    #
    # * Edit their own messages
    #
    # * Leave the channel
    #
    # Privacy settings impact this action as follows:
    #
    # * Public Channels: You do not need to be a member to list messages,
    #   but you must be a member to send messages.
    #
    # * Private Channels: You must be a member to list or send messages.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateChannelMembership][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelMembership.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel to which you're adding users.
    #
    # @option params [required, String] :member_arn
    #   The ARN of the member you want to add to the channel.
    #
    # @option params [required, String] :type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default members
    #   are always returned as part of `ListChannelMemberships`. Hidden
    #   members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`. Otherwise hidden members are
    #   not returned. This is only supported by moderators.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::CreateChannelMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelMembershipResponse#channel_arn #channel_arn} => String
    #   * {Types::CreateChannelMembershipResponse#member #member} => Types::Identity
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_membership({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     type: "DEFAULT", # required, accepts DEFAULT, HIDDEN
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.member.arn #=> String
    #   resp.member.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelMembership AWS API Documentation
    #
    # @overload create_channel_membership(params = {})
    # @param [Hash] params ({})
    def create_channel_membership(params = {}, options = {})
      req = build_request(:create_channel_membership, params)
      req.send_request(options)
    end

    # Creates a new `ChannelModerator`. A channel moderator can:
    #
    # * Add and remove other members of the channel.
    #
    # * Add and remove other moderators of the channel.
    #
    # * Add and remove user bans for the channel.
    #
    # * Redact messages in the channel.
    #
    # * List messages in the channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateChannelModerator][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelModerator.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :channel_moderator_arn
    #   The ARN of the moderator.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::CreateChannelModeratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChannelModeratorResponse#channel_arn #channel_arn} => String
    #   * {Types::CreateChannelModeratorResponse#channel_moderator #channel_moderator} => Types::Identity
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_channel_moderator({
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.channel_moderator.arn #=> String
    #   resp.channel_moderator.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateChannelModerator AWS API Documentation
    #
    # @overload create_channel_moderator(params = {})
    # @param [Hash] params ({})
    def create_channel_moderator(params = {}, options = {})
      req = build_request(:create_channel_moderator, params)
      req.send_request(options)
    end

    # Creates a media capture pipeline.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateMediaCapturePipeline][1],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_CreateMediaCapturePipeline
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :source_type
    #   Source type from which the media artifacts will be captured. A Chime
    #   SDK Meeting is the only supported source.
    #
    # @option params [required, String] :source_arn
    #   ARN of the source from which the media artifacts are captured.
    #
    # @option params [required, String] :sink_type
    #   Destination type to which the media artifacts are saved. You must use
    #   an S3 bucket.
    #
    # @option params [required, String] :sink_arn
    #   The ARN of the sink type.
    #
    # @option params [String] :client_request_token
    #   The unique identifier for the client request. The token makes the API
    #   request idempotent. Use a different token for different media pipeline
    #   requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::ChimeSdkMeetingConfiguration] :chime_sdk_meeting_configuration
    #   The configuration for a specified media capture pipeline. `SourceType`
    #   must be `ChimeSdkMeeting`.
    #
    # @return [Types::CreateMediaCapturePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMediaCapturePipelineResponse#media_capture_pipeline #media_capture_pipeline} => Types::MediaCapturePipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_media_capture_pipeline({
    #     source_type: "ChimeSdkMeeting", # required, accepts ChimeSdkMeeting
    #     source_arn: "Arn", # required
    #     sink_type: "S3Bucket", # required, accepts S3Bucket
    #     sink_arn: "Arn", # required
    #     client_request_token: "ClientRequestToken",
    #     chime_sdk_meeting_configuration: {
    #       source_configuration: {
    #         selected_video_streams: {
    #           attendee_ids: ["GuidString"],
    #           external_user_ids: ["ExternalUserIdType"],
    #         },
    #       },
    #       artifacts_configuration: {
    #         audio: { # required
    #           mux_type: "AudioOnly", # required, accepts AudioOnly, AudioWithActiveSpeakerVideo
    #         },
    #         video: { # required
    #           state: "Enabled", # required, accepts Enabled, Disabled
    #           mux_type: "VideoOnly", # accepts VideoOnly
    #         },
    #         content: { # required
    #           state: "Enabled", # required, accepts Enabled, Disabled
    #           mux_type: "ContentOnly", # accepts ContentOnly
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.media_capture_pipeline.source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_capture_pipeline.source_arn #=> String
    #   resp.media_capture_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
    #   resp.media_capture_pipeline.sink_type #=> String, one of "S3Bucket"
    #   resp.media_capture_pipeline.sink_arn #=> String
    #   resp.media_capture_pipeline.created_timestamp #=> Time
    #   resp.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of "AudioOnly", "AudioWithActiveSpeakerVideo"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of "VideoOnly"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of "ContentOnly"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMediaCapturePipeline AWS API Documentation
    #
    # @overload create_media_capture_pipeline(params = {})
    # @param [Hash] params ({})
    def create_media_capture_pipeline(params = {}, options = {})
      req = build_request(:create_media_capture_pipeline, params)
      req.send_request(options)
    end

    # Creates a new Amazon Chime SDK meeting in the specified media Region
    # with no initial attendees. For more information about specifying media
    # Regions, see [Amazon Chime SDK Media Regions][1] in the *Amazon Chime
    # SDK Developer Guide* . For more information about the Amazon Chime
    # SDK, see [Using the Amazon Chime SDK][2] in the *Amazon Chime SDK
    # Developer Guide*.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateMeeting][3], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][4] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html
    # [4]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different meetings.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :external_meeting_id
    #   The external meeting ID.
    #
    # @option params [String] :meeting_host_id
    #   Reserved.
    #
    # @option params [String] :media_region
    #   The Region in which to create the meeting. Default: `us-east-1`.
    #
    #   Available values: `af-south-1` , `ap-northeast-1` , `ap-northeast-2` ,
    #   `ap-south-1` , `ap-southeast-1` , `ap-southeast-2` , `ca-central-1` ,
    #   `eu-central-1` , `eu-north-1` , `eu-south-1` , `eu-west-1` ,
    #   `eu-west-2` , `eu-west-3` , `sa-east-1` , `us-east-1` , `us-east-2` ,
    #   `us-west-1` , `us-west-2` .
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @option params [Types::MeetingNotificationConfiguration] :notifications_configuration
    #   The configuration for resource targets to receive notifications when
    #   meeting and attendee events occur.
    #
    # @return [Types::CreateMeetingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMeetingResponse#meeting #meeting} => Types::Meeting
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting({
    #     client_request_token: "ClientRequestToken", # required
    #     external_meeting_id: "ExternalMeetingIdType",
    #     meeting_host_id: "ExternalUserIdType",
    #     media_region: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     notifications_configuration: {
    #       sns_topic_arn: "Arn",
    #       sqs_queue_arn: "Arn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.meeting.meeting_id #=> String
    #   resp.meeting.external_meeting_id #=> String
    #   resp.meeting.media_placement.audio_host_url #=> String
    #   resp.meeting.media_placement.audio_fallback_url #=> String
    #   resp.meeting.media_placement.screen_data_url #=> String
    #   resp.meeting.media_placement.screen_sharing_url #=> String
    #   resp.meeting.media_placement.screen_viewing_url #=> String
    #   resp.meeting.media_placement.signaling_url #=> String
    #   resp.meeting.media_placement.turn_control_url #=> String
    #   resp.meeting.media_placement.event_ingestion_url #=> String
    #   resp.meeting.media_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeeting AWS API Documentation
    #
    # @overload create_meeting(params = {})
    # @param [Hash] params ({})
    def create_meeting(params = {}, options = {})
      req = build_request(:create_meeting, params)
      req.send_request(options)
    end

    # Uses the join token and call metadata in a meeting request (From
    # number, To number, and so forth) to initiate an outbound call to a
    # public switched telephone network (PSTN) and join them into a Chime
    # meeting. Also ensures that the From number belongs to the customer.
    #
    # To play welcome audio or implement an interactive voice response
    # (IVR), use the `CreateSipMediaApplicationCall` action with the
    # corresponding SIP media application ID.
    #
    # **This API is is not available in a dedicated namespace.**
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :from_phone_number
    #   Phone number used as the caller ID when the remote party receives a
    #   call.
    #
    # @option params [required, String] :to_phone_number
    #   Phone number called when inviting someone to a meeting.
    #
    # @option params [required, String] :join_token
    #   Token used by the Amazon Chime SDK attendee. Call the
    #   [CreateAttendee][1] action to get a join token.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chime/latest/APIReference/API_CreateAttendee.html
    #
    # @return [Types::CreateMeetingDialOutResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMeetingDialOutResponse#transaction_id #transaction_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting_dial_out({
    #     meeting_id: "GuidString", # required
    #     from_phone_number: "E164PhoneNumber", # required
    #     to_phone_number: "E164PhoneNumber", # required
    #     join_token: "JoinTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transaction_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingDialOut AWS API Documentation
    #
    # @overload create_meeting_dial_out(params = {})
    # @param [Hash] params ({})
    def create_meeting_dial_out(params = {}, options = {})
      req = build_request(:create_meeting_dial_out, params)
      req.send_request(options)
    end

    # Creates a new Amazon Chime SDK meeting in the specified media Region,
    # with attendees. For more information about specifying media Regions,
    # see [Amazon Chime SDK Media Regions][1] in the *Amazon Chime SDK
    # Developer Guide* . For more information about the Amazon Chime SDK,
    # see [Using the Amazon Chime SDK][2] in the *Amazon Chime SDK Developer
    # Guide* .
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateMeetingWithAttendees][3],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][4] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeetingWithAttendees.html
    # [4]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :client_request_token
    #   The unique identifier for the client request. Use a different token
    #   for different meetings.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :external_meeting_id
    #   The external meeting ID.
    #
    # @option params [String] :meeting_host_id
    #   Reserved.
    #
    # @option params [String] :media_region
    #   The Region in which to create the meeting. Default: `us-east-1` .
    #
    #   Available values: `af-south-1` , `ap-northeast-1` , `ap-northeast-2` ,
    #   `ap-south-1` , `ap-southeast-1` , `ap-southeast-2` , `ca-central-1` ,
    #   `eu-central-1` , `eu-north-1` , `eu-south-1` , `eu-west-1` ,
    #   `eu-west-2` , `eu-west-3` , `sa-east-1` , `us-east-1` , `us-east-2` ,
    #   `us-west-1` , `us-west-2` .
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @option params [Types::MeetingNotificationConfiguration] :notifications_configuration
    #   The resource target configurations for receiving Amazon Chime SDK
    #   meeting and attendee event notifications. The Amazon Chime SDK
    #   supports resource targets located in the US East (N. Virginia) AWS
    #   Region (us-east-1).
    #
    # @option params [Array<Types::CreateAttendeeRequestItem>] :attendees
    #   The request containing the attendees to create.
    #
    # @return [Types::CreateMeetingWithAttendeesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMeetingWithAttendeesResponse#meeting #meeting} => Types::Meeting
    #   * {Types::CreateMeetingWithAttendeesResponse#attendees #attendees} => Array&lt;Types::Attendee&gt;
    #   * {Types::CreateMeetingWithAttendeesResponse#errors #errors} => Array&lt;Types::CreateAttendeeError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_meeting_with_attendees({
    #     client_request_token: "ClientRequestToken", # required
    #     external_meeting_id: "ExternalMeetingIdType",
    #     meeting_host_id: "ExternalUserIdType",
    #     media_region: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     notifications_configuration: {
    #       sns_topic_arn: "Arn",
    #       sqs_queue_arn: "Arn",
    #     },
    #     attendees: [
    #       {
    #         external_user_id: "ExternalUserIdType", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.meeting.meeting_id #=> String
    #   resp.meeting.external_meeting_id #=> String
    #   resp.meeting.media_placement.audio_host_url #=> String
    #   resp.meeting.media_placement.audio_fallback_url #=> String
    #   resp.meeting.media_placement.screen_data_url #=> String
    #   resp.meeting.media_placement.screen_sharing_url #=> String
    #   resp.meeting.media_placement.screen_viewing_url #=> String
    #   resp.meeting.media_placement.signaling_url #=> String
    #   resp.meeting.media_placement.turn_control_url #=> String
    #   resp.meeting.media_placement.event_ingestion_url #=> String
    #   resp.meeting.media_region #=> String
    #   resp.attendees #=> Array
    #   resp.attendees[0].external_user_id #=> String
    #   resp.attendees[0].attendee_id #=> String
    #   resp.attendees[0].join_token #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].external_user_id #=> String
    #   resp.errors[0].error_code #=> String
    #   resp.errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateMeetingWithAttendees AWS API Documentation
    #
    # @overload create_meeting_with_attendees(params = {})
    # @param [Hash] params ({})
    def create_meeting_with_attendees(params = {}, options = {})
      req = build_request(:create_meeting_with_attendees, params)
      req.send_request(options)
    end

    # Creates an order for phone numbers to be provisioned. For toll-free
    # numbers, you cannot use the Amazon Chime Business Calling product
    # type. For numbers outside the U.S., you must use the Amazon Chime SIP
    # Media Application Dial-In product type.
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
    #     product_type: "BusinessCalling", # required, accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_order.phone_number_order_id #=> String
    #   resp.phone_number_order.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_order.status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_order.ordered_phone_numbers #=> Array
    #   resp.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_order.ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_order.created_timestamp #=> Time
    #   resp.phone_number_order.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreatePhoneNumberOrder AWS API Documentation
    #
    # @overload create_phone_number_order(params = {})
    # @param [Hash] params ({})
    def create_phone_number_order(params = {}, options = {})
      req = build_request(:create_phone_number_order, params)
      req.send_request(options)
    end

    # Creates a proxy session on the specified Amazon Chime Voice Connector
    # for the specified participant phone numbers.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateProxySession][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateProxySession.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime voice connector ID.
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
    #   The proxy session capabilities.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateProxySession AWS API Documentation
    #
    # @overload create_proxy_session(params = {})
    # @param [Hash] params ({})
    def create_proxy_session(params = {}, options = {})
      req = build_request(:create_proxy_session, params)
      req.send_request(options)
    end

    # Creates a chat room for the specified Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :name
    #   The room name.
    #
    # @option params [String] :client_request_token
    #   The idempotency token for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoomResponse#room #room} => Types::Room
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room({
    #     account_id: "NonEmptyString", # required
    #     name: "SensitiveString", # required
    #     client_request_token: "ClientRequestToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.room.room_id #=> String
    #   resp.room.name #=> String
    #   resp.room.account_id #=> String
    #   resp.room.created_by #=> String
    #   resp.room.created_timestamp #=> Time
    #   resp.room.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateRoom AWS API Documentation
    #
    # @overload create_room(params = {})
    # @param [Hash] params ({})
    def create_room(params = {}, options = {})
      req = build_request(:create_room, params)
      req.send_request(options)
    end

    # Adds a member to a chat room in an Amazon Chime Enterprise account. A
    # member can be either a user or a bot. The member role designates
    # whether the member is a chat room administrator or a general chat room
    # member.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, String] :member_id
    #   The Amazon Chime member ID (user ID or bot ID).
    #
    # @option params [String] :role
    #   The role of the member.
    #
    # @return [Types::CreateRoomMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoomMembershipResponse#room_membership #room_membership} => Types::RoomMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room_membership({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #     role: "Administrator", # accepts Administrator, Member
    #   })
    #
    # @example Response structure
    #
    #   resp.room_membership.room_id #=> String
    #   resp.room_membership.member.member_id #=> String
    #   resp.room_membership.member.member_type #=> String, one of "User", "Bot", "Webhook"
    #   resp.room_membership.member.email #=> String
    #   resp.room_membership.member.full_name #=> String
    #   resp.room_membership.member.account_id #=> String
    #   resp.room_membership.role #=> String, one of "Administrator", "Member"
    #   resp.room_membership.invited_by #=> String
    #   resp.room_membership.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateRoomMembership AWS API Documentation
    #
    # @overload create_room_membership(params = {})
    # @param [Hash] params ({})
    def create_room_membership(params = {}, options = {})
      req = build_request(:create_room_membership, params)
      req.send_request(options)
    end

    # Creates a SIP media application.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateSipMediaApplication][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipMediaApplication.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :aws_region
    #   The AWS Region assigned to the SIP media application.
    #
    # @option params [required, String] :name
    #   The SIP media application name.
    #
    # @option params [required, Array<Types::SipMediaApplicationEndpoint>] :endpoints
    #   List of endpoints (Lambda Amazon Resource Names) specified for the SIP
    #   media application. Currently, only one endpoint is supported.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipMediaApplication AWS API Documentation
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
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [CreateSipMediaApplicationCall][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipMediaApplicationCall.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :from_phone_number
    #   The phone number that a user calls from. This is a phone number in
    #   your Amazon Chime phone number inventory.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.sip_media_application_call.transaction_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipMediaApplicationCall AWS API Documentation
    #
    # @overload create_sip_media_application_call(params = {})
    # @param [Hash] params ({})
    def create_sip_media_application_call(params = {}, options = {})
      req = build_request(:create_sip_media_application_call, params)
      req.send_request(options)
    end

    # Creates a SIP rule which can be used to run a SIP media application as
    # a target for a specific trigger type.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateSipRule][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipRule.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    #   outbound host name of an Amazon Chime Voice Connector. If
    #   `TriggerType` is `ToPhoneNumber`, the value can be a customer-owned
    #   phone number in the E164 format. The `SipMediaApplication` specified
    #   in the `SipRule` is triggered if the request URI in an incoming SIP
    #   request matches the `RequestUriHostname`, or if the `To` header in the
    #   incoming SIP request matches the `ToPhoneNumber` value.
    #
    # @option params [Boolean] :disabled
    #   Enables or disables a rule. You must disable rules before you can
    #   delete them.
    #
    # @option params [required, Array<Types::SipRuleTargetApplication>] :target_applications
    #   List of SIP media applications with priority and AWS Region. Only one
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
    #     target_applications: [ # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateSipRule AWS API Documentation
    #
    # @overload create_sip_rule(params = {})
    # @param [Hash] params ({})
    def create_sip_rule(params = {}, options = {})
      req = build_request(:create_sip_rule, params)
      req.send_request(options)
    end

    # Creates a user under the specified Amazon Chime account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :username
    #   The user name.
    #
    # @option params [String] :email
    #   The user's email address.
    #
    # @option params [String] :user_type
    #   The user type.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     account_id: "NonEmptyString", # required
    #     username: "String",
    #     email: "EmailAddress",
    #     user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime Voice Connector under the administrator's AWS
    # account. You can choose to create an Amazon Chime Voice Connector in a
    # specific AWS Region.
    #
    # Enabling CreateVoiceConnectorRequest$RequireEncryption configures your
    # Amazon Chime Voice Connector to use TLS transport for SIP signaling
    # and Secure RTP (SRTP) for media. Inbound calls use TLS transport, and
    # unencrypted outbound calls are blocked.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateVoiceConnector][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateVoiceConnector.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime Voice Connector.
    #
    # @option params [String] :aws_region
    #   The AWS Region in which the Amazon Chime Voice Connector is created.
    #   Default value: `us-east-1` .
    #
    # @option params [required, Boolean] :require_encryption
    #   When enabled, requires encryption for the Amazon Chime Voice
    #   Connector.
    #
    # @return [Types::CreateVoiceConnectorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVoiceConnectorResponse#voice_connector #voice_connector} => Types::VoiceConnector
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_voice_connector({
    #     name: "VoiceConnectorName", # required
    #     aws_region: "us-east-1", # accepts us-east-1, us-west-2
    #     require_encryption: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.voice_connector.voice_connector_id #=> String
    #   resp.voice_connector.aws_region #=> String, one of "us-east-1", "us-west-2"
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #   resp.voice_connector.voice_connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateVoiceConnector AWS API Documentation
    #
    # @overload create_voice_connector(params = {})
    # @param [Hash] params ({})
    def create_voice_connector(params = {}, options = {})
      req = build_request(:create_voice_connector, params)
      req.send_request(options)
    end

    # Creates an Amazon Chime Voice Connector group under the
    # administrator's AWS account. You can associate Amazon Chime Voice
    # Connectors with the Amazon Chime Voice Connector group by including
    # `VoiceConnectorItems` in the request.
    #
    # You can include Amazon Chime Voice Connectors from different AWS
    # Regions in your group. This creates a fault tolerant mechanism for
    # fallback in case of availability events.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [CreateVoiceConnectorGroup][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateVoiceConnectorGroup.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime Voice Connector group.
    #
    # @option params [Array<Types::VoiceConnectorItem>] :voice_connector_items
    #   The Amazon Chime Voice Connectors to route inbound calls to.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/CreateVoiceConnectorGroup AWS API Documentation
    #
    # @overload create_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def create_voice_connector_group(params = {}, options = {})
      req = build_request(:create_voice_connector_group, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Chime account. You must suspend all users
    # before deleting `Team` account. You can use the BatchSuspendUser
    # action to dodo.
    #
    # For `EnterpriseLWA` and `EnterpriseAD` accounts, you must release the
    # claimed domains for your Amazon Chime account before deletion. As soon
    # as you release the domain, all users under that account are suspended.
    #
    # Deleted accounts appear in your `Disabled` accounts list for 90 days.
    # To restore deleted account from your `Disabled` accounts list, you
    # must contact AWS Support.
    #
    # After 90 days, deleted accounts are permanently removed from your
    # `Disabled` accounts list.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAccount AWS API Documentation
    #
    # @overload delete_account(params = {})
    # @param [Hash] params ({})
    def delete_account(params = {}, options = {})
      req = build_request(:delete_account, params)
      req.send_request(options)
    end

    # Deletes an `AppInstance` and all associated data asynchronously.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteAppInstance][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstance.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAppInstance AWS API Documentation
    #
    # @overload delete_app_instance(params = {})
    # @param [Hash] params ({})
    def delete_app_instance(params = {}, options = {})
      req = build_request(:delete_app_instance, params)
      req.send_request(options)
    end

    # Demotes an `AppInstanceAdmin` to an `AppInstanceUser`. This action
    # does not delete the user.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteAppInstanceAdmin][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceAdmin.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_admin_arn
    #   The ARN of the `AppInstance`'s administrator.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_admin({
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAppInstanceAdmin AWS API Documentation
    #
    # @overload delete_app_instance_admin(params = {})
    # @param [Hash] params ({})
    def delete_app_instance_admin(params = {}, options = {})
      req = build_request(:delete_app_instance_admin, params)
      req.send_request(options)
    end

    # Deletes the streaming configurations of an `AppInstance`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DeleteAppInstanceStreamingConfigurations][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceStreamingConfigurations.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the streaming configurations being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_streaming_configurations({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAppInstanceStreamingConfigurations AWS API Documentation
    #
    # @overload delete_app_instance_streaming_configurations(params = {})
    # @param [Hash] params ({})
    def delete_app_instance_streaming_configurations(params = {}, options = {})
      req = build_request(:delete_app_instance_streaming_configurations, params)
      req.send_request(options)
    end

    # Deletes an `AppInstanceUser`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteAppInstanceUser][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceUser.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the user request being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_instance_user({
    #     app_instance_user_arn: "ChimeArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAppInstanceUser AWS API Documentation
    #
    # @overload delete_app_instance_user(params = {})
    # @param [Hash] params ({})
    def delete_app_instance_user(params = {}, options = {})
      req = build_request(:delete_app_instance_user, params)
      req.send_request(options)
    end

    # Deletes an attendee from the specified Amazon Chime SDK meeting and
    # deletes their `JoinToken`. Attendees are automatically deleted when a
    # Amazon Chime SDK meeting is deleted. For more information about the
    # Amazon Chime SDK, see [Using the Amazon Chime SDK][1] in the *Amazon
    # Chime SDK Developer Guide*.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteAttendee][2], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][3] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_DeleteAttendee.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :attendee_id
    #   The Amazon Chime SDK attendee ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attendee({
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteAttendee AWS API Documentation
    #
    # @overload delete_attendee(params = {})
    # @param [Hash] params ({})
    def delete_attendee(params = {}, options = {})
      req = build_request(:delete_attendee, params)
      req.send_request(options)
    end

    # Immediately makes a channel and its memberships inaccessible and marks
    # them for deletion. This is an irreversible process.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteChannel][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannel.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel being deleted.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel({
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannel AWS API Documentation
    #
    # @overload delete_channel(params = {})
    # @param [Hash] params ({})
    def delete_channel(params = {}, options = {})
      req = build_request(:delete_channel, params)
      req.send_request(options)
    end

    # Removes a user from a channel's ban list.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteChannelBan][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelBan.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel from which the `AppInstanceUser` was banned.
    #
    # @option params [required, String] :member_arn
    #   The ARN of the `AppInstanceUser` that you want to reinstate.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_ban({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelBan AWS API Documentation
    #
    # @overload delete_channel_ban(params = {})
    # @param [Hash] params ({})
    def delete_channel_ban(params = {}, options = {})
      req = build_request(:delete_channel_ban, params)
      req.send_request(options)
    end

    # Removes a member from a channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteChannelMembership][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelMembership.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel from which you want to remove the user.
    #
    # @option params [required, String] :member_arn
    #   The ARN of the member that you're removing from the channel.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_membership({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelMembership AWS API Documentation
    #
    # @overload delete_channel_membership(params = {})
    # @param [Hash] params ({})
    def delete_channel_membership(params = {}, options = {})
      req = build_request(:delete_channel_membership, params)
      req.send_request(options)
    end

    # Deletes a channel message. Only admins can perform this action.
    # Deletion makes messages inaccessible immediately. A background process
    # deletes any revisions created by `UpdateChannelMessage`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteChannelMessage][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelMessage.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :message_id
    #   The ID of the message being deleted.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelMessage AWS API Documentation
    #
    # @overload delete_channel_message(params = {})
    # @param [Hash] params ({})
    def delete_channel_message(params = {}, options = {})
      req = build_request(:delete_channel_message, params)
      req.send_request(options)
    end

    # Deletes a channel moderator.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteChannelModerator][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelModerator.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :channel_moderator_arn
    #   The ARN of the moderator being deleted.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_channel_moderator({
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteChannelModerator AWS API Documentation
    #
    # @overload delete_channel_moderator(params = {})
    # @param [Hash] params ({})
    def delete_channel_moderator(params = {}, options = {})
      req = build_request(:delete_channel_moderator, params)
      req.send_request(options)
    end

    # Deletes the events configuration that allows a bot to receive outgoing
    # events.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteEventsConfiguration AWS API Documentation
    #
    # @overload delete_events_configuration(params = {})
    # @param [Hash] params ({})
    def delete_events_configuration(params = {}, options = {})
      req = build_request(:delete_events_configuration, params)
      req.send_request(options)
    end

    # Deletes the media capture pipeline.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteMediaCapturePipeline][1],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_DeleteMediaCapturePipeline.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :media_pipeline_id
    #   The ID of the media capture pipeline being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_media_capture_pipeline({
    #     media_pipeline_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteMediaCapturePipeline AWS API Documentation
    #
    # @overload delete_media_capture_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_media_capture_pipeline(params = {}, options = {})
      req = build_request(:delete_media_capture_pipeline, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Chime SDK meeting. The operation deletes
    # all attendees, disconnects all clients, and prevents new clients from
    # joining the meeting. For more information about the Amazon Chime SDK,
    # see [Using the Amazon Chime SDK][1] in the *Amazon Chime SDK Developer
    # Guide*.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteMeeting][2], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][3] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_DeleteMeeting.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_meeting({
    #     meeting_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteMeeting AWS API Documentation
    #
    # @overload delete_meeting(params = {})
    # @param [Hash] params ({})
    def delete_meeting(params = {}, options = {})
      req = build_request(:delete_meeting, params)
      req.send_request(options)
    end

    # Moves the specified phone number into the **Deletion queue**. A phone
    # number must be disassociated from any users or Amazon Chime Voice
    # Connectors before it can be deleted.
    #
    # Deleted phone numbers remain in the **Deletion queue** for 7 days
    # before they are deleted permanently.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_phone_number({
    #     phone_number_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeletePhoneNumber AWS API Documentation
    #
    # @overload delete_phone_number(params = {})
    # @param [Hash] params ({})
    def delete_phone_number(params = {}, options = {})
      req = build_request(:delete_phone_number, params)
      req.send_request(options)
    end

    # Deletes the specified proxy session from the specified Amazon Chime
    # Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteProxySession][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteProxySession.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime voice connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteProxySession AWS API Documentation
    #
    # @overload delete_proxy_session(params = {})
    # @param [Hash] params ({})
    def delete_proxy_session(params = {}, options = {})
      req = build_request(:delete_proxy_session, params)
      req.send_request(options)
    end

    # Deletes a chat room in an Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The chat room ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteRoom AWS API Documentation
    #
    # @overload delete_room(params = {})
    # @param [Hash] params ({})
    def delete_room(params = {}, options = {})
      req = build_request(:delete_room, params)
      req.send_request(options)
    end

    # Removes a member from a chat room in an Amazon Chime Enterprise
    # account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, String] :member_id
    #   The member ID (user ID or bot ID).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room_membership({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteRoomMembership AWS API Documentation
    #
    # @overload delete_room_membership(params = {})
    # @param [Hash] params ({})
    def delete_room_membership(params = {}, options = {})
      req = build_request(:delete_room_membership, params)
      req.send_request(options)
    end

    # Deletes a SIP media application.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteSipMediaApplication][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteSipMediaApplication.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteSipMediaApplication AWS API Documentation
    #
    # @overload delete_sip_media_application(params = {})
    # @param [Hash] params ({})
    def delete_sip_media_application(params = {}, options = {})
      req = build_request(:delete_sip_media_application, params)
      req.send_request(options)
    end

    # Deletes a SIP rule. You must disable a SIP rule before you can delete
    # it.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteSipRule][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteSipRule.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteSipRule AWS API Documentation
    #
    # @overload delete_sip_rule(params = {})
    # @param [Hash] params ({})
    def delete_sip_rule(params = {}, options = {})
      req = build_request(:delete_sip_rule, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Chime Voice Connector. Any phone numbers
    # associated with the Amazon Chime Voice Connector must be disassociated
    # from it before it can be deleted.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteVoiceConnector][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnector.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnector AWS API Documentation
    #
    # @overload delete_voice_connector(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector(params = {}, options = {})
      req = build_request(:delete_voice_connector, params)
      req.send_request(options)
    end

    # Deletes the emergency calling configuration details from the specified
    # Amazon Chime Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DeleteVoiceConnectorEmergencyCallingConfiguration][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorEmergencyCallingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_emergency_calling_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorEmergencyCallingConfiguration AWS API Documentation
    #
    # @overload delete_voice_connector_emergency_calling_configuration(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_emergency_calling_configuration(params = {}, options = {})
      req = build_request(:delete_voice_connector_emergency_calling_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified Amazon Chime Voice Connector group. Any
    # `VoiceConnectorItems` and phone numbers associated with the group must
    # be removed before it can be deleted.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteVoiceConnectorGroup][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorGroup.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_group({
    #     voice_connector_group_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorGroup AWS API Documentation
    #
    # @overload delete_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_group(params = {}, options = {})
      req = build_request(:delete_voice_connector_group, params)
      req.send_request(options)
    end

    # Deletes the origination settings for the specified Amazon Chime Voice
    # Connector.
    #
    # <note markdown="1"> If emergency calling is configured for the Amazon Chime Voice
    # Connector, it must be deleted prior to deleting the origination
    # settings.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DeleteVoiceConnectorOrigination][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorOrigination.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_origination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorOrigination AWS API Documentation
    #
    # @overload delete_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_origination(params = {}, options = {})
      req = build_request(:delete_voice_connector_origination, params)
      req.send_request(options)
    end

    # Deletes the proxy configuration from the specified Amazon Chime Voice
    # Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DeleteVoiceProxy][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorProxy.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_proxy({
    #     voice_connector_id: "NonEmptyString128", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorProxy AWS API Documentation
    #
    # @overload delete_voice_connector_proxy(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_proxy(params = {}, options = {})
      req = build_request(:delete_voice_connector_proxy, params)
      req.send_request(options)
    end

    # Deletes the streaming configuration for the specified Amazon Chime
    # Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DeleteVoiceConnectorStreamingConfiguration][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorStreamingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_streaming_configuration({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorStreamingConfiguration AWS API Documentation
    #
    # @overload delete_voice_connector_streaming_configuration(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_streaming_configuration(params = {}, options = {})
      req = build_request(:delete_voice_connector_streaming_configuration, params)
      req.send_request(options)
    end

    # Deletes the termination settings for the specified Amazon Chime Voice
    # Connector.
    #
    # <note markdown="1"> If emergency calling is configured for the Amazon Chime Voice
    # Connector, it must be deleted prior to deleting the termination
    # settings.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DeleteVoiceConnectorTermination][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorTermination.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_voice_connector_termination({
    #     voice_connector_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorTermination AWS API Documentation
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
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DeleteVoiceConnectorTerminationCredentials][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorTerminationCredentials.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DeleteVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload delete_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def delete_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:delete_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Returns the full details of an `AppInstance`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DescribeAppInstance][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstance.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::DescribeAppInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppInstanceResponse#app_instance #app_instance} => Types::AppInstance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance.app_instance_arn #=> String
    #   resp.app_instance.name #=> String
    #   resp.app_instance.metadata #=> String
    #   resp.app_instance.created_timestamp #=> Time
    #   resp.app_instance.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstance AWS API Documentation
    #
    # @overload describe_app_instance(params = {})
    # @param [Hash] params ({})
    def describe_app_instance(params = {}, options = {})
      req = build_request(:describe_app_instance, params)
      req.send_request(options)
    end

    # Returns the full details of an `AppInstanceAdmin`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DescribeAppInstanceAdmin][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstanceAdmin.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_admin_arn
    #   The ARN of the `AppInstanceAdmin`.
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::DescribeAppInstanceAdminResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppInstanceAdminResponse#app_instance_admin #app_instance_admin} => Types::AppInstanceAdmin
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_admin({
    #     app_instance_admin_arn: "ChimeArn", # required
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_admin.admin.arn #=> String
    #   resp.app_instance_admin.admin.name #=> String
    #   resp.app_instance_admin.app_instance_arn #=> String
    #   resp.app_instance_admin.created_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstanceAdmin AWS API Documentation
    #
    # @overload describe_app_instance_admin(params = {})
    # @param [Hash] params ({})
    def describe_app_instance_admin(params = {}, options = {})
      req = build_request(:describe_app_instance_admin, params)
      req.send_request(options)
    end

    # Returns the full details of an `AppInstanceUser`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DescribeAppInstanceUser][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstanceUser.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @return [Types::DescribeAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAppInstanceUserResponse#app_instance_user #app_instance_user} => Types::AppInstanceUser
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_app_instance_user({
    #     app_instance_user_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user.app_instance_user_arn #=> String
    #   resp.app_instance_user.name #=> String
    #   resp.app_instance_user.created_timestamp #=> Time
    #   resp.app_instance_user.metadata #=> String
    #   resp.app_instance_user.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeAppInstanceUser AWS API Documentation
    #
    # @overload describe_app_instance_user(params = {})
    # @param [Hash] params ({})
    def describe_app_instance_user(params = {}, options = {})
      req = build_request(:describe_app_instance_user, params)
      req.send_request(options)
    end

    # Returns the full details of a channel in an Amazon Chime
    # `AppInstance`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DescribeChannel][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannel.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::DescribeChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelResponse#channel #channel} => Types::Channel
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel({
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.name #=> String
    #   resp.channel.channel_arn #=> String
    #   resp.channel.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channel.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channel.metadata #=> String
    #   resp.channel.created_by.arn #=> String
    #   resp.channel.created_by.name #=> String
    #   resp.channel.created_timestamp #=> Time
    #   resp.channel.last_message_timestamp #=> Time
    #   resp.channel.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannel AWS API Documentation
    #
    # @overload describe_channel(params = {})
    # @param [Hash] params ({})
    def describe_channel(params = {}, options = {})
      req = build_request(:describe_channel, params)
      req.send_request(options)
    end

    # Returns the full details of a channel ban.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DescribeChannelBan][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelBan.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel from which the user is banned.
    #
    # @option params [required, String] :member_arn
    #   The ARN of the member being banned.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::DescribeChannelBanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelBanResponse#channel_ban #channel_ban} => Types::ChannelBan
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_ban({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_ban.member.arn #=> String
    #   resp.channel_ban.member.name #=> String
    #   resp.channel_ban.channel_arn #=> String
    #   resp.channel_ban.created_timestamp #=> Time
    #   resp.channel_ban.created_by.arn #=> String
    #   resp.channel_ban.created_by.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelBan AWS API Documentation
    #
    # @overload describe_channel_ban(params = {})
    # @param [Hash] params ({})
    def describe_channel_ban(params = {}, options = {})
      req = build_request(:describe_channel_ban, params)
      req.send_request(options)
    end

    # Returns the full details of a user's channel membership.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DescribeChannelMembership][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelMembership.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :member_arn
    #   The ARN of the member.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::DescribeChannelMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelMembershipResponse#channel_membership #channel_membership} => Types::ChannelMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_membership({
    #     channel_arn: "ChimeArn", # required
    #     member_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_membership.invited_by.arn #=> String
    #   resp.channel_membership.invited_by.name #=> String
    #   resp.channel_membership.type #=> String, one of "DEFAULT", "HIDDEN"
    #   resp.channel_membership.member.arn #=> String
    #   resp.channel_membership.member.name #=> String
    #   resp.channel_membership.channel_arn #=> String
    #   resp.channel_membership.created_timestamp #=> Time
    #   resp.channel_membership.last_updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelMembership AWS API Documentation
    #
    # @overload describe_channel_membership(params = {})
    # @param [Hash] params ({})
    def describe_channel_membership(params = {}, options = {})
      req = build_request(:describe_channel_membership, params)
      req.send_request(options)
    end

    # Returns the details of a channel based on the membership of the
    # specified `AppInstanceUser`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DescribeChannelMembershipForAppInstanceUser][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelMembershipForAppInstanceUser.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel to which the user belongs.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the user in a channel.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::DescribeChannelMembershipForAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelMembershipForAppInstanceUserResponse#channel_membership #channel_membership} => Types::ChannelMembershipForAppInstanceUserSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_membership_for_app_instance_user({
    #     channel_arn: "ChimeArn", # required
    #     app_instance_user_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_membership.channel_summary.name #=> String
    #   resp.channel_membership.channel_summary.channel_arn #=> String
    #   resp.channel_membership.channel_summary.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channel_membership.channel_summary.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channel_membership.channel_summary.metadata #=> String
    #   resp.channel_membership.channel_summary.last_message_timestamp #=> Time
    #   resp.channel_membership.app_instance_user_membership_summary.type #=> String, one of "DEFAULT", "HIDDEN"
    #   resp.channel_membership.app_instance_user_membership_summary.read_marker_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelMembershipForAppInstanceUser AWS API Documentation
    #
    # @overload describe_channel_membership_for_app_instance_user(params = {})
    # @param [Hash] params ({})
    def describe_channel_membership_for_app_instance_user(params = {}, options = {})
      req = build_request(:describe_channel_membership_for_app_instance_user, params)
      req.send_request(options)
    end

    # Returns the full details of a channel moderated by the specified
    # `AppInstanceUser`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DescribeChannelModeratedByAppInstanceUser][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelModeratedByAppInstanceUser.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the moderated channel.
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser` in the moderated channel.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::DescribeChannelModeratedByAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelModeratedByAppInstanceUserResponse#channel #channel} => Types::ChannelModeratedByAppInstanceUserSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_moderated_by_app_instance_user({
    #     channel_arn: "ChimeArn", # required
    #     app_instance_user_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel.channel_summary.name #=> String
    #   resp.channel.channel_summary.channel_arn #=> String
    #   resp.channel.channel_summary.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channel.channel_summary.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channel.channel_summary.metadata #=> String
    #   resp.channel.channel_summary.last_message_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelModeratedByAppInstanceUser AWS API Documentation
    #
    # @overload describe_channel_moderated_by_app_instance_user(params = {})
    # @param [Hash] params ({})
    def describe_channel_moderated_by_app_instance_user(params = {}, options = {})
      req = build_request(:describe_channel_moderated_by_app_instance_user, params)
      req.send_request(options)
    end

    # Returns the full details of a single ChannelModerator.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [DescribeChannelModerator][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelModerator.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :channel_moderator_arn
    #   The ARN of the channel moderator.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::DescribeChannelModeratorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChannelModeratorResponse#channel_moderator #channel_moderator} => Types::ChannelModerator
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_channel_moderator({
    #     channel_arn: "ChimeArn", # required
    #     channel_moderator_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_moderator.moderator.arn #=> String
    #   resp.channel_moderator.moderator.name #=> String
    #   resp.channel_moderator.channel_arn #=> String
    #   resp.channel_moderator.created_timestamp #=> Time
    #   resp.channel_moderator.created_by.arn #=> String
    #   resp.channel_moderator.created_by.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DescribeChannelModerator AWS API Documentation
    #
    # @overload describe_channel_moderator(params = {})
    # @param [Hash] params ({})
    def describe_channel_moderator(params = {}, options = {})
      req = build_request(:describe_channel_moderator, params)
      req.send_request(options)
    end

    # Disassociates the primary provisioned phone number from the specified
    # Amazon Chime user.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_number_from_user({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumberFromUser AWS API Documentation
    #
    # @overload disassociate_phone_number_from_user(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_number_from_user(params = {}, options = {})
      req = build_request(:disassociate_phone_number_from_user, params)
      req.send_request(options)
    end

    # Disassociates the specified phone numbers from the specified Amazon
    # Chime Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DisassociatePhoneNumbersFromVoiceConnector][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DisassociatePhoneNumbersFromVoiceConnector.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumbersFromVoiceConnector AWS API Documentation
    #
    # @overload disassociate_phone_numbers_from_voice_connector(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_numbers_from_voice_connector(params = {}, options = {})
      req = build_request(:disassociate_phone_numbers_from_voice_connector, params)
      req.send_request(options)
    end

    # Disassociates the specified phone numbers from the specified Amazon
    # Chime Voice Connector group.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [DisassociatePhoneNumbersFromVoiceConnectorGroup][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DisassociatePhoneNumbersFromVoiceConnectorGroup.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #
    # @option params [required, Array<String>] :e164_phone_numbers
    #   List of phone numbers, in E.164 format.
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
    #   resp.phone_number_errors[0].error_code #=> String, one of "BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist"
    #   resp.phone_number_errors[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociatePhoneNumbersFromVoiceConnectorGroup AWS API Documentation
    #
    # @overload disassociate_phone_numbers_from_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_numbers_from_voice_connector_group(params = {}, options = {})
      req = build_request(:disassociate_phone_numbers_from_voice_connector_group, params)
      req.send_request(options)
    end

    # Disassociates the specified sign-in delegate groups from the specified
    # Amazon Chime account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :group_names
    #   The sign-in delegate group names.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_signin_delegate_groups_from_account({
    #     account_id: "NonEmptyString", # required
    #     group_names: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/DisassociateSigninDelegateGroupsFromAccount AWS API Documentation
    #
    # @overload disassociate_signin_delegate_groups_from_account(params = {})
    # @param [Hash] params ({})
    def disassociate_signin_delegate_groups_from_account(params = {}, options = {})
      req = build_request(:disassociate_signin_delegate_groups_from_account, params)
      req.send_request(options)
    end

    # Retrieves details for the specified Amazon Chime account, such as
    # account type and supported licenses.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Types::GetAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.account_status #=> String, one of "Suspended", "Active"
    #   resp.account.signin_delegate_groups #=> Array
    #   resp.account.signin_delegate_groups[0].group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccount AWS API Documentation
    #
    # @overload get_account(params = {})
    # @param [Hash] params ({})
    def get_account(params = {}, options = {})
      req = build_request(:get_account, params)
      req.send_request(options)
    end

    # Retrieves account settings for the specified Amazon Chime account ID,
    # such as remote control and dialout settings. For more information
    # about these settings, see [Use the Policies Page][1] in the *Amazon
    # Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/policies.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Types::GetAccountSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountSettingsResponse#account_settings #account_settings} => Types::AccountSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_settings({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_settings.disable_remote_control #=> Boolean
    #   resp.account_settings.enable_dial_out #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAccountSettings AWS API Documentation
    #
    # @overload get_account_settings(params = {})
    # @param [Hash] params ({})
    def get_account_settings(params = {}, options = {})
      req = build_request(:get_account_settings, params)
      req.send_request(options)
    end

    # Gets the retention settings for an `AppInstance`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [GetMessagingRetentionSettings][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_GetAppInstanceRetentionSettings.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::GetAppInstanceRetentionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppInstanceRetentionSettingsResponse#app_instance_retention_settings #app_instance_retention_settings} => Types::AppInstanceRetentionSettings
    #   * {Types::GetAppInstanceRetentionSettingsResponse#initiate_deletion_timestamp #initiate_deletion_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_instance_retention_settings({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_retention_settings.channel_retention_settings.retention_days #=> Integer
    #   resp.initiate_deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAppInstanceRetentionSettings AWS API Documentation
    #
    # @overload get_app_instance_retention_settings(params = {})
    # @param [Hash] params ({})
    def get_app_instance_retention_settings(params = {}, options = {})
      req = build_request(:get_app_instance_retention_settings, params)
      req.send_request(options)
    end

    # Gets the streaming settings for an `AppInstance`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [GetMessagingStreamingConfigurations][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetMessagingStreamingConfigurations.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @return [Types::GetAppInstanceStreamingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAppInstanceStreamingConfigurationsResponse#app_instance_streaming_configurations #app_instance_streaming_configurations} => Array&lt;Types::AppInstanceStreamingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_instance_streaming_configurations({
    #     app_instance_arn: "ChimeArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_streaming_configurations #=> Array
    #   resp.app_instance_streaming_configurations[0].app_instance_data_type #=> String, one of "Channel", "ChannelMessage"
    #   resp.app_instance_streaming_configurations[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAppInstanceStreamingConfigurations AWS API Documentation
    #
    # @overload get_app_instance_streaming_configurations(params = {})
    # @param [Hash] params ({})
    def get_app_instance_streaming_configurations(params = {}, options = {})
      req = build_request(:get_app_instance_streaming_configurations, params)
      req.send_request(options)
    end

    # Gets the Amazon Chime SDK attendee details for a specified meeting ID
    # and attendee ID. For more information about the Amazon Chime SDK, see
    # [Using the Amazon Chime SDK][1] in the *Amazon Chime SDK Developer
    # Guide*.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetAttendee][2], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][3] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetAttendee.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :attendee_id
    #   The Amazon Chime SDK attendee ID.
    #
    # @return [Types::GetAttendeeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAttendeeResponse#attendee #attendee} => Types::Attendee
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_attendee({
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attendee.external_user_id #=> String
    #   resp.attendee.attendee_id #=> String
    #   resp.attendee.join_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetAttendee AWS API Documentation
    #
    # @overload get_attendee(params = {})
    # @param [Hash] params ({})
    def get_attendee(params = {}, options = {})
      req = build_request(:get_attendee, params)
      req.send_request(options)
    end

    # Retrieves details for the specified bot, such as bot email address,
    # bot type, status, and display name.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::GetBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetBot AWS API Documentation
    #
    # @overload get_bot(params = {})
    # @param [Hash] params ({})
    def get_bot(params = {}, options = {})
      req = build_request(:get_bot, params)
      req.send_request(options)
    end

    # Gets the full details of a channel message.
    #
    # <note markdown="1"> The x-amz-chime-bearer request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetChannelMessage][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetChannelMessage.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :message_id
    #   The ID of the message.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::GetChannelMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetChannelMessageResponse#channel_message #channel_message} => Types::ChannelMessage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_message.channel_arn #=> String
    #   resp.channel_message.message_id #=> String
    #   resp.channel_message.content #=> String
    #   resp.channel_message.metadata #=> String
    #   resp.channel_message.type #=> String, one of "STANDARD", "CONTROL"
    #   resp.channel_message.created_timestamp #=> Time
    #   resp.channel_message.last_edited_timestamp #=> Time
    #   resp.channel_message.last_updated_timestamp #=> Time
    #   resp.channel_message.sender.arn #=> String
    #   resp.channel_message.sender.name #=> String
    #   resp.channel_message.redacted #=> Boolean
    #   resp.channel_message.persistence #=> String, one of "PERSISTENT", "NON_PERSISTENT"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetChannelMessage AWS API Documentation
    #
    # @overload get_channel_message(params = {})
    # @param [Hash] params ({})
    def get_channel_message(params = {}, options = {})
      req = build_request(:get_channel_message, params)
      req.send_request(options)
    end

    # Gets details for an events configuration that allows a bot to receive
    # outgoing events, such as an HTTPS endpoint or Lambda function ARN.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::GetEventsConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEventsConfigurationResponse#events_configuration #events_configuration} => Types::EventsConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.events_configuration.bot_id #=> String
    #   resp.events_configuration.outbound_events_https_endpoint #=> String
    #   resp.events_configuration.lambda_function_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetEventsConfiguration AWS API Documentation
    #
    # @overload get_events_configuration(params = {})
    # @param [Hash] params ({})
    def get_events_configuration(params = {}, options = {})
      req = build_request(:get_events_configuration, params)
      req.send_request(options)
    end

    # Retrieves global settings for the administrator's AWS account, such
    # as Amazon Chime Business Calling and Amazon Chime Voice Connector
    # settings.
    #
    # @return [Types::GetGlobalSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGlobalSettingsResponse#business_calling #business_calling} => Types::BusinessCallingSettings
    #   * {Types::GetGlobalSettingsResponse#voice_connector #voice_connector} => Types::VoiceConnectorSettings
    #
    # @example Response structure
    #
    #   resp.business_calling.cdr_bucket #=> String
    #   resp.voice_connector.cdr_bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetGlobalSettings AWS API Documentation
    #
    # @overload get_global_settings(params = {})
    # @param [Hash] params ({})
    def get_global_settings(params = {}, options = {})
      req = build_request(:get_global_settings, params)
      req.send_request(options)
    end

    # Gets an existing media capture pipeline.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetMediaCapturePipeline][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_GetMediaCapturePipeline.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :media_pipeline_id
    #   The ID of the pipeline that you want to get.
    #
    # @return [Types::GetMediaCapturePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMediaCapturePipelineResponse#media_capture_pipeline #media_capture_pipeline} => Types::MediaCapturePipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_capture_pipeline({
    #     media_pipeline_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.media_capture_pipeline.media_pipeline_id #=> String
    #   resp.media_capture_pipeline.source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_capture_pipeline.source_arn #=> String
    #   resp.media_capture_pipeline.status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
    #   resp.media_capture_pipeline.sink_type #=> String, one of "S3Bucket"
    #   resp.media_capture_pipeline.sink_arn #=> String
    #   resp.media_capture_pipeline.created_timestamp #=> Time
    #   resp.media_capture_pipeline.updated_timestamp #=> Time
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of "AudioOnly", "AudioWithActiveSpeakerVideo"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of "VideoOnly"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipeline.chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of "ContentOnly"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMediaCapturePipeline AWS API Documentation
    #
    # @overload get_media_capture_pipeline(params = {})
    # @param [Hash] params ({})
    def get_media_capture_pipeline(params = {}, options = {})
      req = build_request(:get_media_capture_pipeline, params)
      req.send_request(options)
    end

    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetMeeting][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    # Gets the Amazon Chime SDK meeting details for the specified meeting
    # ID. For more information about the Amazon Chime SDK, see [Using the
    # Amazon Chime SDK][3] in the *Amazon Chime SDK Developer Guide* .
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetMeeting.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @return [Types::GetMeetingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMeetingResponse#meeting #meeting} => Types::Meeting
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_meeting({
    #     meeting_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.meeting.meeting_id #=> String
    #   resp.meeting.external_meeting_id #=> String
    #   resp.meeting.media_placement.audio_host_url #=> String
    #   resp.meeting.media_placement.audio_fallback_url #=> String
    #   resp.meeting.media_placement.screen_data_url #=> String
    #   resp.meeting.media_placement.screen_sharing_url #=> String
    #   resp.meeting.media_placement.screen_viewing_url #=> String
    #   resp.meeting.media_placement.signaling_url #=> String
    #   resp.meeting.media_placement.turn_control_url #=> String
    #   resp.meeting.media_placement.event_ingestion_url #=> String
    #   resp.meeting.media_region #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMeeting AWS API Documentation
    #
    # @overload get_meeting(params = {})
    # @param [Hash] params ({})
    def get_meeting(params = {}, options = {})
      req = build_request(:get_meeting, params)
      req.send_request(options)
    end

    # The details of the endpoint for the messaging session.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetMessagingSessionEndpoint][1],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetMessagingSessionEndpoint.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @return [Types::GetMessagingSessionEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMessagingSessionEndpointResponse#endpoint #endpoint} => Types::MessagingSessionEndpoint
    #
    # @example Response structure
    #
    #   resp.endpoint.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetMessagingSessionEndpoint AWS API Documentation
    #
    # @overload get_messaging_session_endpoint(params = {})
    # @param [Hash] params ({})
    def get_messaging_session_endpoint(params = {}, options = {})
      req = build_request(:get_messaging_session_endpoint, params)
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
    #     phone_number_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumber AWS API Documentation
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
    #   The ID for the phone number order.
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
    #   resp.phone_number_order.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_order.status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_order.ordered_phone_numbers #=> Array
    #   resp.phone_number_order.ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_order.ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_order.created_timestamp #=> Time
    #   resp.phone_number_order.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberOrder AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetPhoneNumberSettings AWS API Documentation
    #
    # @overload get_phone_number_settings(params = {})
    # @param [Hash] params ({})
    def get_phone_number_settings(params = {}, options = {})
      req = build_request(:get_phone_number_settings, params)
      req.send_request(options)
    end

    # Gets the specified proxy session details for the specified Amazon
    # Chime Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetProxySession][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetProxySession.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime voice connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetProxySession AWS API Documentation
    #
    # @overload get_proxy_session(params = {})
    # @param [Hash] params ({})
    def get_proxy_session(params = {}, options = {})
      req = build_request(:get_proxy_session, params)
      req.send_request(options)
    end

    # Gets the retention settings for the specified Amazon Chime Enterprise
    # account. For more information about retention settings, see [Managing
    # Chat Retention Policies][1] in the *Amazon Chime Administration
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @return [Types::GetRetentionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRetentionSettingsResponse#retention_settings #retention_settings} => Types::RetentionSettings
    #   * {Types::GetRetentionSettingsResponse#initiate_deletion_timestamp #initiate_deletion_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_retention_settings({
    #     account_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.retention_settings.room_retention_settings.retention_days #=> Integer
    #   resp.retention_settings.conversation_retention_settings.retention_days #=> Integer
    #   resp.initiate_deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetRetentionSettings AWS API Documentation
    #
    # @overload get_retention_settings(params = {})
    # @param [Hash] params ({})
    def get_retention_settings(params = {}, options = {})
      req = build_request(:get_retention_settings, params)
      req.send_request(options)
    end

    # Retrieves room details, such as the room name, for a room in an Amazon
    # Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @return [Types::GetRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRoomResponse#room #room} => Types::Room
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.room.room_id #=> String
    #   resp.room.name #=> String
    #   resp.room.account_id #=> String
    #   resp.room.created_by #=> String
    #   resp.room.created_timestamp #=> Time
    #   resp.room.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetRoom AWS API Documentation
    #
    # @overload get_room(params = {})
    # @param [Hash] params ({})
    def get_room(params = {}, options = {})
      req = build_request(:get_room, params)
      req.send_request(options)
    end

    # Retrieves the information for a SIP media application, including name,
    # AWS Region, and endpoints.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetSipMediaApplication][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipMediaApplication.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipMediaApplication AWS API Documentation
    #
    # @overload get_sip_media_application(params = {})
    # @param [Hash] params ({})
    def get_sip_media_application(params = {}, options = {})
      req = build_request(:get_sip_media_application, params)
      req.send_request(options)
    end

    # Returns the logging configuration for the specified SIP media
    # application.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [GetSipMediaApplicationLoggingConfiguration][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipMediaApplicationLoggingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipMediaApplicationLoggingConfiguration AWS API Documentation
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
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetSipRule][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipRule.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetSipRule AWS API Documentation
    #
    # @overload get_sip_rule(params = {})
    # @param [Hash] params ({})
    def get_sip_rule(params = {}, options = {})
      req = build_request(:get_sip_rule, params)
      req.send_request(options)
    end

    # Retrieves details for the specified user ID, such as primary email
    # address, license type,and personal meeting PIN.
    #
    # To retrieve user details with an email address instead of a user ID,
    # use the ListUsers action, and then filter by email address.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::GetUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUser AWS API Documentation
    #
    # @overload get_user(params = {})
    # @param [Hash] params ({})
    def get_user(params = {}, options = {})
      req = build_request(:get_user, params)
      req.send_request(options)
    end

    # Retrieves settings for the specified user ID, such as any associated
    # phone number settings.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::GetUserSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUserSettingsResponse#user_settings #user_settings} => Types::UserSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_settings({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user_settings.telephony.inbound_calling #=> Boolean
    #   resp.user_settings.telephony.outbound_calling #=> Boolean
    #   resp.user_settings.telephony.sms #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetUserSettings AWS API Documentation
    #
    # @overload get_user_settings(params = {})
    # @param [Hash] params ({})
    def get_user_settings(params = {}, options = {})
      req = build_request(:get_user_settings, params)
      req.send_request(options)
    end

    # Retrieves details for the specified Amazon Chime Voice Connector, such
    # as timestamps,name, outbound host, and encryption requirements.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetVoiceConnector][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnector.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    #   resp.voice_connector.aws_region #=> String, one of "us-east-1", "us-west-2"
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #   resp.voice_connector.voice_connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnector AWS API Documentation
    #
    # @overload get_voice_connector(params = {})
    # @param [Hash] params ({})
    def get_voice_connector(params = {}, options = {})
      req = build_request(:get_voice_connector, params)
      req.send_request(options)
    end

    # Gets the emergency calling configuration details for the specified
    # Amazon Chime Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [GetVoiceConnectorEmergencyCallingConfiguration][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorEmergencyCallingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorEmergencyCallingConfiguration AWS API Documentation
    #
    # @overload get_voice_connector_emergency_calling_configuration(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_emergency_calling_configuration(params = {}, options = {})
      req = build_request(:get_voice_connector_emergency_calling_configuration, params)
      req.send_request(options)
    end

    # Retrieves details for the specified Amazon Chime Voice Connector
    # group, such as timestamps,name, and associated `VoiceConnectorItems`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetVoiceConnectorGroup][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorGroup.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorGroup AWS API Documentation
    #
    # @overload get_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_group(params = {}, options = {})
      req = build_request(:get_voice_connector_group, params)
      req.send_request(options)
    end

    # Retrieves the logging configuration details for the specified Amazon
    # Chime Voice Connector. Shows whether SIP message logs are enabled for
    # sending to Amazon CloudWatch Logs.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [GetVoiceConnectorLoggingConfiguration][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorLoggingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorLoggingConfiguration AWS API Documentation
    #
    # @overload get_voice_connector_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_logging_configuration(params = {}, options = {})
      req = build_request(:get_voice_connector_logging_configuration, params)
      req.send_request(options)
    end

    # Retrieves origination setting details for the specified Amazon Chime
    # Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetVoiceConnectorOrigination][1],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorOrigination.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorOrigination AWS API Documentation
    #
    # @overload get_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_origination(params = {}, options = {})
      req = build_request(:get_voice_connector_origination, params)
      req.send_request(options)
    end

    # Gets the proxy configuration details for the specified Amazon Chime
    # Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetVoiceConnectorProxy][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorProxy.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime voice connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorProxy AWS API Documentation
    #
    # @overload get_voice_connector_proxy(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_proxy(params = {}, options = {})
      req = build_request(:get_voice_connector_proxy, params)
      req.send_request(options)
    end

    # Retrieves the streaming configuration details for the specified Amazon
    # Chime Voice Connector. Shows whether media streaming is enabled for
    # sending to Amazon Kinesis. It also shows the retention period, in
    # hours, for the Amazon Kinesis data.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [GetVoiceConnectorStreamingConfiguration][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorStreamingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorStreamingConfiguration AWS API Documentation
    #
    # @overload get_voice_connector_streaming_configuration(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_streaming_configuration(params = {}, options = {})
      req = build_request(:get_voice_connector_streaming_configuration, params)
      req.send_request(options)
    end

    # Retrieves termination setting details for the specified Amazon Chime
    # Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [GetVoiceConnectorTermination][1],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorTermination.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorTermination AWS API Documentation
    #
    # @overload get_voice_connector_termination(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_termination(params = {}, options = {})
      req = build_request(:get_voice_connector_termination, params)
      req.send_request(options)
    end

    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [GetVoiceConnectorTerminationHealth][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    # Retrieves information about the last time a SIP `OPTIONS` ping was
    # received from your SIP infrastructure for the specified Amazon Chime
    # Voice Connector.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorTerminationHealth.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/GetVoiceConnectorTerminationHealth AWS API Documentation
    #
    # @overload get_voice_connector_termination_health(params = {})
    # @param [Hash] params ({})
    def get_voice_connector_termination_health(params = {}, options = {})
      req = build_request(:get_voice_connector_termination_health, params)
      req.send_request(options)
    end

    # Sends email to a maximum of 50 users, inviting them to the specified
    # Amazon Chime `Team` account. Only `Team` account types are currently
    # supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Array<String>] :user_email_list
    #   The user email addresses to which to send the email invitation.
    #
    # @option params [String] :user_type
    #   The user type.
    #
    # @return [Types::InviteUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InviteUsersResponse#invites #invites} => Array&lt;Types::Invite&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_users({
    #     account_id: "NonEmptyString", # required
    #     user_email_list: ["EmailAddress"], # required
    #     user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #   })
    #
    # @example Response structure
    #
    #   resp.invites #=> Array
    #   resp.invites[0].invite_id #=> String
    #   resp.invites[0].status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.invites[0].email_address #=> String
    #   resp.invites[0].email_status #=> String, one of "NotSent", "Sent", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/InviteUsers AWS API Documentation
    #
    # @overload invite_users(params = {})
    # @param [Hash] params ({})
    def invite_users(params = {}, options = {})
      req = build_request(:invite_users, params)
      req.send_request(options)
    end

    # Lists the Amazon Chime accounts under the administrator's AWS
    # account. You can filter accounts by account name prefix. To find out
    # which Amazon Chime account a user belongs to, you can filter by the
    # user's email address, which returns one account result.
    #
    # @option params [String] :name
    #   Amazon Chime account name prefix with which to filter results.
    #
    # @option params [String] :user_email
    #   User email address with which to filter results.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @return [Types::ListAccountsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccountsResponse#accounts #accounts} => Array&lt;Types::Account&gt;
    #   * {Types::ListAccountsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts({
    #     name: "AccountName",
    #     user_email: "EmailAddress",
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.accounts #=> Array
    #   resp.accounts[0].aws_account_id #=> String
    #   resp.accounts[0].account_id #=> String
    #   resp.accounts[0].name #=> String
    #   resp.accounts[0].account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.accounts[0].created_timestamp #=> Time
    #   resp.accounts[0].default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.accounts[0].supported_licenses #=> Array
    #   resp.accounts[0].supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.accounts[0].account_status #=> String, one of "Suspended", "Active"
    #   resp.accounts[0].signin_delegate_groups #=> Array
    #   resp.accounts[0].signin_delegate_groups[0].group_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAccounts AWS API Documentation
    #
    # @overload list_accounts(params = {})
    # @param [Hash] params ({})
    def list_accounts(params = {}, options = {})
      req = build_request(:list_accounts, params)
      req.send_request(options)
    end

    # Returns a list of the administrators in the `AppInstance`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListAppInstanceAdmins][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstanceAdmins.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of administrators that you want to return.
    #
    # @option params [String] :next_token
    #   The token returned from previous API requests until the number of
    #   administrators is reached.
    #
    # @return [Types::ListAppInstanceAdminsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInstanceAdminsResponse#app_instance_arn #app_instance_arn} => String
    #   * {Types::ListAppInstanceAdminsResponse#app_instance_admins #app_instance_admins} => Array&lt;Types::AppInstanceAdminSummary&gt;
    #   * {Types::ListAppInstanceAdminsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_admins({
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_arn #=> String
    #   resp.app_instance_admins #=> Array
    #   resp.app_instance_admins[0].admin.arn #=> String
    #   resp.app_instance_admins[0].admin.name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstanceAdmins AWS API Documentation
    #
    # @overload list_app_instance_admins(params = {})
    # @param [Hash] params ({})
    def list_app_instance_admins(params = {}, options = {})
      req = build_request(:list_app_instance_admins, params)
      req.send_request(options)
    end

    # List all `AppInstanceUsers` created under a single `AppInstance`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListAppInstanceUsers][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstanceUsers.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of requests that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested users are
    #   returned.
    #
    # @return [Types::ListAppInstanceUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInstanceUsersResponse#app_instance_arn #app_instance_arn} => String
    #   * {Types::ListAppInstanceUsersResponse#app_instance_users #app_instance_users} => Array&lt;Types::AppInstanceUserSummary&gt;
    #   * {Types::ListAppInstanceUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instance_users({
    #     app_instance_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_arn #=> String
    #   resp.app_instance_users #=> Array
    #   resp.app_instance_users[0].app_instance_user_arn #=> String
    #   resp.app_instance_users[0].name #=> String
    #   resp.app_instance_users[0].metadata #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstanceUsers AWS API Documentation
    #
    # @overload list_app_instance_users(params = {})
    # @param [Hash] params ({})
    def list_app_instance_users(params = {}, options = {})
      req = build_request(:list_app_instance_users, params)
      req.send_request(options)
    end

    # Lists all Amazon Chime `AppInstance`s created under a single AWS
    # account.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListAppInstances][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstances.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of `AppInstance`s that you want to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API requests until you reach the maximum
    #   number of `AppInstance`s.
    #
    # @return [Types::ListAppInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAppInstancesResponse#app_instances #app_instances} => Array&lt;Types::AppInstanceSummary&gt;
    #   * {Types::ListAppInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_instances({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instances #=> Array
    #   resp.app_instances[0].app_instance_arn #=> String
    #   resp.app_instances[0].name #=> String
    #   resp.app_instances[0].metadata #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAppInstances AWS API Documentation
    #
    # @overload list_app_instances(params = {})
    # @param [Hash] params ({})
    def list_app_instances(params = {}, options = {})
      req = build_request(:list_app_instances, params)
      req.send_request(options)
    end

    # Lists the tags applied to an Amazon Chime SDK attendee resource.
    #
    # ListAttendeeTags is not supported in the Amazon Chime SDK Meetings
    # Namespace. Update your application to remove calls to this API.
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :attendee_id
    #   The Amazon Chime SDK attendee ID.
    #
    # @return [Types::ListAttendeeTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttendeeTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attendee_tags({
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAttendeeTags AWS API Documentation
    #
    # @overload list_attendee_tags(params = {})
    # @param [Hash] params ({})
    def list_attendee_tags(params = {}, options = {})
      req = build_request(:list_attendee_tags, params)
      req.send_request(options)
    end

    # Lists the attendees for the specified Amazon Chime SDK meeting. For
    # more information about the Amazon Chime SDK, see [Using the Amazon
    # Chime SDK][1] in the *Amazon Chime SDK Developer Guide*.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListAttendees][2], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][3] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListAttendees.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListAttendeesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttendeesResponse#attendees #attendees} => Array&lt;Types::Attendee&gt;
    #   * {Types::ListAttendeesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attendees({
    #     meeting_id: "GuidString", # required
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attendees #=> Array
    #   resp.attendees[0].external_user_id #=> String
    #   resp.attendees[0].attendee_id #=> String
    #   resp.attendees[0].join_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListAttendees AWS API Documentation
    #
    # @overload list_attendees(params = {})
    # @param [Hash] params ({})
    def list_attendees(params = {}, options = {})
      req = build_request(:list_attendees, params)
      req.send_request(options)
    end

    # Lists the bots associated with the administrator's Amazon Chime
    # Enterprise account ID.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. The default
    #   is 10.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotsResponse#bots #bots} => Array&lt;Types::Bot&gt;
    #   * {Types::ListBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots({
    #     account_id: "NonEmptyString", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.bots #=> Array
    #   resp.bots[0].bot_id #=> String
    #   resp.bots[0].user_id #=> String
    #   resp.bots[0].display_name #=> String
    #   resp.bots[0].bot_type #=> String, one of "ChatBot"
    #   resp.bots[0].disabled #=> Boolean
    #   resp.bots[0].created_timestamp #=> Time
    #   resp.bots[0].updated_timestamp #=> Time
    #   resp.bots[0].bot_email #=> String
    #   resp.bots[0].security_token #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListBots AWS API Documentation
    #
    # @overload list_bots(params = {})
    # @param [Hash] params ({})
    def list_bots(params = {}, options = {})
      req = build_request(:list_bots, params)
      req.send_request(options)
    end

    # Lists all the users banned from a particular channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListChannelBans][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelBans.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bans that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested bans are
    #   returned.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::ListChannelBansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelBansResponse#channel_arn #channel_arn} => String
    #   * {Types::ListChannelBansResponse#next_token #next_token} => String
    #   * {Types::ListChannelBansResponse#channel_bans #channel_bans} => Array&lt;Types::ChannelBanSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_bans({
    #     channel_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.next_token #=> String
    #   resp.channel_bans #=> Array
    #   resp.channel_bans[0].member.arn #=> String
    #   resp.channel_bans[0].member.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelBans AWS API Documentation
    #
    # @overload list_channel_bans(params = {})
    # @param [Hash] params ({})
    def list_channel_bans(params = {}, options = {})
      req = build_request(:list_channel_bans, params)
      req.send_request(options)
    end

    # Lists all channel memberships in a channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListChannelMemberships][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMemberships.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The maximum number of channel memberships that you want returned.
    #
    # @option params [String] :type
    #   The membership type of a user, `DEFAULT` or `HIDDEN`. Default members
    #   are always returned as part of `ListChannelMemberships`. Hidden
    #   members are only returned if the type filter in
    #   `ListChannelMemberships` equals `HIDDEN`. Otherwise hidden members are
    #   not returned.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channel memberships that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested channel
    #   memberships are returned.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::ListChannelMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelMembershipsResponse#channel_arn #channel_arn} => String
    #   * {Types::ListChannelMembershipsResponse#channel_memberships #channel_memberships} => Array&lt;Types::ChannelMembershipSummary&gt;
    #   * {Types::ListChannelMembershipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_memberships({
    #     channel_arn: "ChimeArn", # required
    #     type: "DEFAULT", # accepts DEFAULT, HIDDEN
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.channel_memberships #=> Array
    #   resp.channel_memberships[0].member.arn #=> String
    #   resp.channel_memberships[0].member.name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMemberships AWS API Documentation
    #
    # @overload list_channel_memberships(params = {})
    # @param [Hash] params ({})
    def list_channel_memberships(params = {}, options = {})
      req = build_request(:list_channel_memberships, params)
      req.send_request(options)
    end

    # Lists all channels that a particular `AppInstanceUser` is a part of.
    # Only an `AppInstanceAdmin` can call the API with a user ARN that is
    # not their own.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [ListChannelMembershipsForAppInstanceUser][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`s
    #
    # @option params [Integer] :max_results
    #   The maximum number of users that you want returned.
    #
    # @option params [String] :next_token
    #   The token returned from previous API requests until the number of
    #   channel memberships is reached.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::ListChannelMembershipsForAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelMembershipsForAppInstanceUserResponse#channel_memberships #channel_memberships} => Array&lt;Types::ChannelMembershipForAppInstanceUserSummary&gt;
    #   * {Types::ListChannelMembershipsForAppInstanceUserResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_memberships_for_app_instance_user({
    #     app_instance_user_arn: "ChimeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_memberships #=> Array
    #   resp.channel_memberships[0].channel_summary.name #=> String
    #   resp.channel_memberships[0].channel_summary.channel_arn #=> String
    #   resp.channel_memberships[0].channel_summary.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channel_memberships[0].channel_summary.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channel_memberships[0].channel_summary.metadata #=> String
    #   resp.channel_memberships[0].channel_summary.last_message_timestamp #=> Time
    #   resp.channel_memberships[0].app_instance_user_membership_summary.type #=> String, one of "DEFAULT", "HIDDEN"
    #   resp.channel_memberships[0].app_instance_user_membership_summary.read_marker_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMembershipsForAppInstanceUser AWS API Documentation
    #
    # @overload list_channel_memberships_for_app_instance_user(params = {})
    # @param [Hash] params ({})
    def list_channel_memberships_for_app_instance_user(params = {}, options = {})
      req = build_request(:list_channel_memberships_for_app_instance_user, params)
      req.send_request(options)
    end

    # List all the messages in a channel. Returns a paginated list of
    # `ChannelMessages`. By default, sorted by creation timestamp in
    # descending order.
    #
    # <note markdown="1"> Redacted messages appear in the results as empty, since they are only
    # redacted, not deleted. Deleted messages do not appear in the results.
    # This action always returns the latest version of an edited message.
    #
    #  Also, the x-amz-chime-bearer request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListChannelMessages][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMessages.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [String] :sort_order
    #   The order in which you want messages sorted. Default is Descending,
    #   based on time created.
    #
    # @option params [Time,DateTime,Date,Integer,String] :not_before
    #   The initial or starting time stamp for your requested messages.
    #
    # @option params [Time,DateTime,Date,Integer,String] :not_after
    #   The final or ending time stamp for your requested messages.
    #
    # @option params [Integer] :max_results
    #   The maximum number of messages that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested messages
    #   are returned.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::ListChannelMessagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelMessagesResponse#channel_arn #channel_arn} => String
    #   * {Types::ListChannelMessagesResponse#next_token #next_token} => String
    #   * {Types::ListChannelMessagesResponse#channel_messages #channel_messages} => Array&lt;Types::ChannelMessageSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_messages({
    #     channel_arn: "ChimeArn", # required
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     not_before: Time.now,
    #     not_after: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.next_token #=> String
    #   resp.channel_messages #=> Array
    #   resp.channel_messages[0].message_id #=> String
    #   resp.channel_messages[0].content #=> String
    #   resp.channel_messages[0].metadata #=> String
    #   resp.channel_messages[0].type #=> String, one of "STANDARD", "CONTROL"
    #   resp.channel_messages[0].created_timestamp #=> Time
    #   resp.channel_messages[0].last_updated_timestamp #=> Time
    #   resp.channel_messages[0].last_edited_timestamp #=> Time
    #   resp.channel_messages[0].sender.arn #=> String
    #   resp.channel_messages[0].sender.name #=> String
    #   resp.channel_messages[0].redacted #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelMessages AWS API Documentation
    #
    # @overload list_channel_messages(params = {})
    # @param [Hash] params ({})
    def list_channel_messages(params = {}, options = {})
      req = build_request(:list_channel_messages, params)
      req.send_request(options)
    end

    # Lists all the moderators for a channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListChannelModerators][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelModerators.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [Integer] :max_results
    #   The maximum number of moderators that you want returned.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested moderators
    #   are returned.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::ListChannelModeratorsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelModeratorsResponse#channel_arn #channel_arn} => String
    #   * {Types::ListChannelModeratorsResponse#next_token #next_token} => String
    #   * {Types::ListChannelModeratorsResponse#channel_moderators #channel_moderators} => Array&lt;Types::ChannelModeratorSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channel_moderators({
    #     channel_arn: "ChimeArn", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.next_token #=> String
    #   resp.channel_moderators #=> Array
    #   resp.channel_moderators[0].moderator.arn #=> String
    #   resp.channel_moderators[0].moderator.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelModerators AWS API Documentation
    #
    # @overload list_channel_moderators(params = {})
    # @param [Hash] params ({})
    def list_channel_moderators(params = {}, options = {})
      req = build_request(:list_channel_moderators, params)
      req.send_request(options)
    end

    # Lists all Channels created under a single Chime App as a paginated
    # list. You can specify filters to narrow results.
    #
    # **Functionality &amp; restrictions**
    #
    # * Use privacy = `PUBLIC` to retrieve all public channels in the
    #   account.
    #
    # * Only an `AppInstanceAdmin` can set privacy = `PRIVATE` to list the
    #   private channels in an account.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListChannels][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannels.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [String] :privacy
    #   The privacy setting. `PUBLIC` retrieves all the public channels.
    #   `PRIVATE` retrieves private channels. Only an `AppInstanceAdmin` can
    #   retrieve private channels.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels that you want to return.
    #
    # @option params [String] :next_token
    #   The token passed by previous API calls until all requested channels
    #   are returned.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::ListChannelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsResponse#channels #channels} => Array&lt;Types::ChannelSummary&gt;
    #   * {Types::ListChannelsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels({
    #     app_instance_arn: "ChimeArn", # required
    #     privacy: "PUBLIC", # accepts PUBLIC, PRIVATE
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].name #=> String
    #   resp.channels[0].channel_arn #=> String
    #   resp.channels[0].mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channels[0].privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channels[0].metadata #=> String
    #   resp.channels[0].last_message_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannels AWS API Documentation
    #
    # @overload list_channels(params = {})
    # @param [Hash] params ({})
    def list_channels(params = {}, options = {})
      req = build_request(:list_channels, params)
      req.send_request(options)
    end

    # A list of the channels moderated by an `AppInstanceUser`.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [ListChannelsModeratedByAppInstanceUser][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelsModeratedByAppInstanceUser.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [String] :app_instance_user_arn
    #   The ARN of the user in the moderated channel.
    #
    # @option params [Integer] :max_results
    #   The maximum number of channels in the request.
    #
    # @option params [String] :next_token
    #   The token returned from previous API requests until the number of
    #   channels moderated by the user is reached.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::ListChannelsModeratedByAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListChannelsModeratedByAppInstanceUserResponse#channels #channels} => Array&lt;Types::ChannelModeratedByAppInstanceUserSummary&gt;
    #   * {Types::ListChannelsModeratedByAppInstanceUserResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_channels_moderated_by_app_instance_user({
    #     app_instance_user_arn: "ChimeArn",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channels #=> Array
    #   resp.channels[0].channel_summary.name #=> String
    #   resp.channels[0].channel_summary.channel_arn #=> String
    #   resp.channels[0].channel_summary.mode #=> String, one of "UNRESTRICTED", "RESTRICTED"
    #   resp.channels[0].channel_summary.privacy #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.channels[0].channel_summary.metadata #=> String
    #   resp.channels[0].channel_summary.last_message_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListChannelsModeratedByAppInstanceUser AWS API Documentation
    #
    # @overload list_channels_moderated_by_app_instance_user(params = {})
    # @param [Hash] params ({})
    def list_channels_moderated_by_app_instance_user(params = {}, options = {})
      req = build_request(:list_channels_moderated_by_app_instance_user, params)
      req.send_request(options)
    end

    # Returns a list of media capture pipelines.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListMediaCapturePipelines][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_ListMediaCapturePipelines.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Valid Range:
    #   1 - 99.
    #
    # @return [Types::ListMediaCapturePipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMediaCapturePipelinesResponse#media_capture_pipelines #media_capture_pipelines} => Array&lt;Types::MediaCapturePipeline&gt;
    #   * {Types::ListMediaCapturePipelinesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_media_capture_pipelines({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.media_capture_pipelines #=> Array
    #   resp.media_capture_pipelines[0].media_pipeline_id #=> String
    #   resp.media_capture_pipelines[0].source_type #=> String, one of "ChimeSdkMeeting"
    #   resp.media_capture_pipelines[0].source_arn #=> String
    #   resp.media_capture_pipelines[0].status #=> String, one of "Initializing", "InProgress", "Failed", "Stopping", "Stopped"
    #   resp.media_capture_pipelines[0].sink_type #=> String, one of "S3Bucket"
    #   resp.media_capture_pipelines[0].sink_arn #=> String
    #   resp.media_capture_pipelines[0].created_timestamp #=> Time
    #   resp.media_capture_pipelines[0].updated_timestamp #=> Time
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids #=> Array
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams.attendee_ids[0] #=> String
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids #=> Array
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.source_configuration.selected_video_streams.external_user_ids[0] #=> String
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.audio.mux_type #=> String, one of "AudioOnly", "AudioWithActiveSpeakerVideo"
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.video.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.video.mux_type #=> String, one of "VideoOnly"
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.content.state #=> String, one of "Enabled", "Disabled"
    #   resp.media_capture_pipelines[0].chime_sdk_meeting_configuration.artifacts_configuration.content.mux_type #=> String, one of "ContentOnly"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMediaCapturePipelines AWS API Documentation
    #
    # @overload list_media_capture_pipelines(params = {})
    # @param [Hash] params ({})
    def list_media_capture_pipelines(params = {}, options = {})
      req = build_request(:list_media_capture_pipelines, params)
      req.send_request(options)
    end

    # Lists the tags applied to an Amazon Chime SDK meeting resource.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListTagsForResource][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListTagsForResource.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @return [Types::ListMeetingTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMeetingTagsResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_meeting_tags({
    #     meeting_id: "GuidString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMeetingTags AWS API Documentation
    #
    # @overload list_meeting_tags(params = {})
    # @param [Hash] params ({})
    def list_meeting_tags(params = {}, options = {})
      req = build_request(:list_meeting_tags, params)
      req.send_request(options)
    end

    # Lists up to 100 active Amazon Chime SDK meetings.
    #
    # ListMeetings is not supported in the Amazon Chime SDK Meetings
    # Namespace. Update your application to remove calls to this API.
    #
    # For more information about the Amazon Chime SDK, see [Using the Amazon
    # Chime SDK][1] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @return [Types::ListMeetingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMeetingsResponse#meetings #meetings} => Array&lt;Types::Meeting&gt;
    #   * {Types::ListMeetingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_meetings({
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.meetings #=> Array
    #   resp.meetings[0].meeting_id #=> String
    #   resp.meetings[0].external_meeting_id #=> String
    #   resp.meetings[0].media_placement.audio_host_url #=> String
    #   resp.meetings[0].media_placement.audio_fallback_url #=> String
    #   resp.meetings[0].media_placement.screen_data_url #=> String
    #   resp.meetings[0].media_placement.screen_sharing_url #=> String
    #   resp.meetings[0].media_placement.screen_viewing_url #=> String
    #   resp.meetings[0].media_placement.signaling_url #=> String
    #   resp.meetings[0].media_placement.turn_control_url #=> String
    #   resp.meetings[0].media_placement.event_ingestion_url #=> String
    #   resp.meetings[0].media_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListMeetings AWS API Documentation
    #
    # @overload list_meetings(params = {})
    # @param [Hash] params ({})
    def list_meetings(params = {}, options = {})
      req = build_request(:list_meetings, params)
      req.send_request(options)
    end

    # Lists the phone number orders for the administrator's Amazon Chime
    # account.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
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
    #   resp.phone_number_orders[0].product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number_orders[0].status #=> String, one of "Processing", "Successful", "Failed", "Partial"
    #   resp.phone_number_orders[0].ordered_phone_numbers #=> Array
    #   resp.phone_number_orders[0].ordered_phone_numbers[0].e164_phone_number #=> String
    #   resp.phone_number_orders[0].ordered_phone_numbers[0].status #=> String, one of "Processing", "Acquired", "Failed"
    #   resp.phone_number_orders[0].created_timestamp #=> Time
    #   resp.phone_number_orders[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumberOrders AWS API Documentation
    #
    # @overload list_phone_number_orders(params = {})
    # @param [Hash] params ({})
    def list_phone_number_orders(params = {}, options = {})
      req = build_request(:list_phone_number_orders, params)
      req.send_request(options)
    end

    # Lists the phone numbers for the specified Amazon Chime account, Amazon
    # Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice
    # Connector group.
    #
    # @option params [String] :status
    #   The phone number status.
    #
    # @option params [String] :product_type
    #   The phone number product type.
    #
    # @option params [String] :filter_name
    #   The filter to use to limit the number of results.
    #
    # @option params [String] :filter_value
    #   The value to use for the filter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
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
    #     status: "AcquireInProgress", # accepts AcquireInProgress, AcquireFailed, Unassigned, Assigned, ReleaseInProgress, DeleteInProgress, ReleaseFailed, DeleteFailed
    #     product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #     filter_name: "AccountId", # accepts AccountId, UserId, VoiceConnectorId, VoiceConnectorGroupId, SipRuleId
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
    #   resp.phone_numbers[0].product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_numbers[0].status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_numbers[0].capabilities.inbound_call #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_call #=> Boolean
    #   resp.phone_numbers[0].capabilities.inbound_sms #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_sms #=> Boolean
    #   resp.phone_numbers[0].capabilities.inbound_mms #=> Boolean
    #   resp.phone_numbers[0].capabilities.outbound_mms #=> Boolean
    #   resp.phone_numbers[0].associations #=> Array
    #   resp.phone_numbers[0].associations[0].value #=> String
    #   resp.phone_numbers[0].associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_numbers[0].associations[0].associated_timestamp #=> Time
    #   resp.phone_numbers[0].calling_name #=> String
    #   resp.phone_numbers[0].calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_numbers[0].created_timestamp #=> Time
    #   resp.phone_numbers[0].updated_timestamp #=> Time
    #   resp.phone_numbers[0].deletion_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListPhoneNumbers AWS API Documentation
    #
    # @overload list_phone_numbers(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers(params = {}, options = {})
      req = build_request(:list_phone_numbers, params)
      req.send_request(options)
    end

    # Lists the proxy sessions for the specified Amazon Chime Voice
    # Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListProxySessions][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListProxySessions.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime voice connector ID.
    #
    # @option params [String] :status
    #   The proxy session status.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListProxySessions AWS API Documentation
    #
    # @overload list_proxy_sessions(params = {})
    # @param [Hash] params ({})
    def list_proxy_sessions(params = {}, options = {})
      req = build_request(:list_proxy_sessions, params)
      req.send_request(options)
    end

    # Lists the membership details for the specified room in an Amazon Chime
    # Enterprise account, such as the members' IDs, email addresses, and
    # names.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListRoomMembershipsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoomMembershipsResponse#room_memberships #room_memberships} => Array&lt;Types::RoomMembership&gt;
    #   * {Types::ListRoomMembershipsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_room_memberships({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.room_memberships #=> Array
    #   resp.room_memberships[0].room_id #=> String
    #   resp.room_memberships[0].member.member_id #=> String
    #   resp.room_memberships[0].member.member_type #=> String, one of "User", "Bot", "Webhook"
    #   resp.room_memberships[0].member.email #=> String
    #   resp.room_memberships[0].member.full_name #=> String
    #   resp.room_memberships[0].member.account_id #=> String
    #   resp.room_memberships[0].role #=> String, one of "Administrator", "Member"
    #   resp.room_memberships[0].invited_by #=> String
    #   resp.room_memberships[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListRoomMemberships AWS API Documentation
    #
    # @overload list_room_memberships(params = {})
    # @param [Hash] params ({})
    def list_room_memberships(params = {}, options = {})
      req = build_request(:list_room_memberships, params)
      req.send_request(options)
    end

    # Lists the room details for the specified Amazon Chime Enterprise
    # account. Optionally, filter the results by a member ID (user ID or bot
    # ID) to see a list of rooms that the member belongs to.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :member_id
    #   The member ID (user ID or bot ID).
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListRoomsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoomsResponse#rooms #rooms} => Array&lt;Types::Room&gt;
    #   * {Types::ListRoomsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rooms({
    #     account_id: "NonEmptyString", # required
    #     member_id: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.rooms #=> Array
    #   resp.rooms[0].room_id #=> String
    #   resp.rooms[0].name #=> String
    #   resp.rooms[0].account_id #=> String
    #   resp.rooms[0].created_by #=> String
    #   resp.rooms[0].created_timestamp #=> Time
    #   resp.rooms[0].updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListRooms AWS API Documentation
    #
    # @overload list_rooms(params = {})
    # @param [Hash] params ({})
    def list_rooms(params = {}, options = {})
      req = build_request(:list_rooms, params)
      req.send_request(options)
    end

    # Lists the SIP media applications under the administrator's AWS
    # account.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListSipMediaApplications][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListSipMediaApplications.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSipMediaApplications AWS API Documentation
    #
    # @overload list_sip_media_applications(params = {})
    # @param [Hash] params ({})
    def list_sip_media_applications(params = {}, options = {})
      req = build_request(:list_sip_media_applications, params)
      req.send_request(options)
    end

    # Lists the SIP rules under the administrator's AWS account.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListSipRules][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListSipRules.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSipRules AWS API Documentation
    #
    # @overload list_sip_rules(params = {})
    # @param [Hash] params ({})
    def list_sip_rules(params = {}, options = {})
      req = build_request(:list_sip_rules, params)
      req.send_request(options)
    end

    # Lists supported phone number countries.
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
    #     product_type: "BusinessCalling", # required, accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_countries #=> Array
    #   resp.phone_number_countries[0].country_code #=> String
    #   resp.phone_number_countries[0].supported_phone_number_types #=> Array
    #   resp.phone_number_countries[0].supported_phone_number_types[0] #=> String, one of "Local", "TollFree"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListSupportedPhoneNumberCountries AWS API Documentation
    #
    # @overload list_supported_phone_number_countries(params = {})
    # @param [Hash] params ({})
    def list_supported_phone_number_countries(params = {}, options = {})
      req = build_request(:list_supported_phone_number_countries, params)
      req.send_request(options)
    end

    # Lists the tags applied to an Amazon Chime SDK meeting and messaging
    # resources.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the applicable latest version in the Amazon Chime SDK.
    #
    #  * For meetings: [ListTagsForResource][1].
    #
    # * For messaging: [ListTagsForResource][2].
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][3] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListTagsForResource.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListTagsForResource.html
    # [3]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists the users that belong to the specified Amazon Chime account. You
    # can specify an email address to list only the user that the email
    # address belongs to.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :user_email
    #   Optional. The user email address used to filter results. Maximum 1.
    #
    # @option params [String] :user_type
    #   The user type.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call. Defaults to
    #   100.
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     account_id: "NonEmptyString", # required
    #     user_email: "EmailAddress",
    #     user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].user_id #=> String
    #   resp.users[0].account_id #=> String
    #   resp.users[0].primary_email #=> String
    #   resp.users[0].primary_provisioned_number #=> String
    #   resp.users[0].display_name #=> String
    #   resp.users[0].license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.users[0].user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.users[0].user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.users[0].user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.users[0].registered_on #=> Time
    #   resp.users[0].invited_on #=> Time
    #   resp.users[0].alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.users[0].alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.users[0].personal_pin #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Lists the Amazon Chime Voice Connector groups for the administrator's
    # AWS account.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListVoiceConnectorGroups][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectorGroups.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorGroups AWS API Documentation
    #
    # @overload list_voice_connector_groups(params = {})
    # @param [Hash] params ({})
    def list_voice_connector_groups(params = {}, options = {})
      req = build_request(:list_voice_connector_groups, params)
      req.send_request(options)
    end

    # Lists the SIP credentials for the specified Amazon Chime Voice
    # Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [ListVoiceConnectorTerminationCredentials][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectorTerminationCredentials.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload list_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def list_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:list_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Lists the Amazon Chime Voice Connectors for the administrator's AWS
    # account.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ListVoiceConnectors][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectors.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [String] :next_token
    #   The token to use to retrieve the next page of results.
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
    #   resp.voice_connectors[0].aws_region #=> String, one of "us-east-1", "us-west-2"
    #   resp.voice_connectors[0].name #=> String
    #   resp.voice_connectors[0].outbound_host_name #=> String
    #   resp.voice_connectors[0].require_encryption #=> Boolean
    #   resp.voice_connectors[0].created_timestamp #=> Time
    #   resp.voice_connectors[0].updated_timestamp #=> Time
    #   resp.voice_connectors[0].voice_connector_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ListVoiceConnectors AWS API Documentation
    #
    # @overload list_voice_connectors(params = {})
    # @param [Hash] params ({})
    def list_voice_connectors(params = {}, options = {})
      req = build_request(:list_voice_connectors, params)
      req.send_request(options)
    end

    # Logs out the specified user from all of the devices they are currently
    # logged into.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.logout_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/LogoutUser AWS API Documentation
    #
    # @overload logout_user(params = {})
    # @param [Hash] params ({})
    def logout_user(params = {}, options = {})
      req = build_request(:logout_user, params)
      req.send_request(options)
    end

    # Sets the amount of time in days that a given `AppInstance` retains
    # data.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [PutAppInstanceRetentionSettings][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_PutAppInstanceRetentionSettings.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [required, Types::AppInstanceRetentionSettings] :app_instance_retention_settings
    #   The time in days to retain data. Data type: number.
    #
    # @return [Types::PutAppInstanceRetentionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAppInstanceRetentionSettingsResponse#app_instance_retention_settings #app_instance_retention_settings} => Types::AppInstanceRetentionSettings
    #   * {Types::PutAppInstanceRetentionSettingsResponse#initiate_deletion_timestamp #initiate_deletion_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_instance_retention_settings({
    #     app_instance_arn: "ChimeArn", # required
    #     app_instance_retention_settings: { # required
    #       channel_retention_settings: {
    #         retention_days: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_retention_settings.channel_retention_settings.retention_days #=> Integer
    #   resp.initiate_deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutAppInstanceRetentionSettings AWS API Documentation
    #
    # @overload put_app_instance_retention_settings(params = {})
    # @param [Hash] params ({})
    def put_app_instance_retention_settings(params = {}, options = {})
      req = build_request(:put_app_instance_retention_settings, params)
      req.send_request(options)
    end

    # The data streaming configurations of an `AppInstance`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [PutMessagingStreamingConfigurations][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_PutMessagingStreamingConfigurations.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [required, Array<Types::AppInstanceStreamingConfiguration>] :app_instance_streaming_configurations
    #   The streaming configurations set for an `AppInstance`.
    #
    # @return [Types::PutAppInstanceStreamingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAppInstanceStreamingConfigurationsResponse#app_instance_streaming_configurations #app_instance_streaming_configurations} => Array&lt;Types::AppInstanceStreamingConfiguration&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_instance_streaming_configurations({
    #     app_instance_arn: "ChimeArn", # required
    #     app_instance_streaming_configurations: [ # required
    #       {
    #         app_instance_data_type: "Channel", # required, accepts Channel, ChannelMessage
    #         resource_arn: "Arn", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_streaming_configurations #=> Array
    #   resp.app_instance_streaming_configurations[0].app_instance_data_type #=> String, one of "Channel", "ChannelMessage"
    #   resp.app_instance_streaming_configurations[0].resource_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutAppInstanceStreamingConfigurations AWS API Documentation
    #
    # @overload put_app_instance_streaming_configurations(params = {})
    # @param [Hash] params ({})
    def put_app_instance_streaming_configurations(params = {}, options = {})
      req = build_request(:put_app_instance_streaming_configurations, params)
      req.send_request(options)
    end

    # Creates an events configuration that allows a bot to receive outgoing
    # events sent by Amazon Chime. Choose either an HTTPS endpoint or a
    # Lambda function ARN. For more information, see Bot.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @option params [String] :outbound_events_https_endpoint
    #   HTTPS endpoint that allows the bot to receive outgoing events.
    #
    # @option params [String] :lambda_function_arn
    #   Lambda function ARN that allows the bot to receive outgoing events.
    #
    # @return [Types::PutEventsConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutEventsConfigurationResponse#events_configuration #events_configuration} => Types::EventsConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events_configuration({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #     outbound_events_https_endpoint: "SensitiveString",
    #     lambda_function_arn: "SensitiveString",
    #   })
    #
    # @example Response structure
    #
    #   resp.events_configuration.bot_id #=> String
    #   resp.events_configuration.outbound_events_https_endpoint #=> String
    #   resp.events_configuration.lambda_function_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutEventsConfiguration AWS API Documentation
    #
    # @overload put_events_configuration(params = {})
    # @param [Hash] params ({})
    def put_events_configuration(params = {}, options = {})
      req = build_request(:put_events_configuration, params)
      req.send_request(options)
    end

    # Puts retention settings for the specified Amazon Chime Enterprise
    # account. We recommend using AWS CloudTrail to monitor usage of this
    # API for your account. For more information, see [Logging Amazon Chime
    # API Calls with AWS CloudTrail][1] in the *Amazon Chime Administration
    # Guide*.
    #
    # To turn off existing retention settings, remove the number of days
    # from the corresponding **RetentionDays** field in the
    # **RetentionSettings** object. For more information about retention
    # settings, see [Managing Chat Retention Policies][2] in the *Amazon
    # Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html
    # [2]: https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Types::RetentionSettings] :retention_settings
    #   The retention settings.
    #
    # @return [Types::PutRetentionSettingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRetentionSettingsResponse#retention_settings #retention_settings} => Types::RetentionSettings
    #   * {Types::PutRetentionSettingsResponse#initiate_deletion_timestamp #initiate_deletion_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_settings({
    #     account_id: "NonEmptyString", # required
    #     retention_settings: { # required
    #       room_retention_settings: {
    #         retention_days: 1,
    #       },
    #       conversation_retention_settings: {
    #         retention_days: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.retention_settings.room_retention_settings.retention_days #=> Integer
    #   resp.retention_settings.conversation_retention_settings.retention_days #=> Integer
    #   resp.initiate_deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutRetentionSettings AWS API Documentation
    #
    # @overload put_retention_settings(params = {})
    # @param [Hash] params ({})
    def put_retention_settings(params = {}, options = {})
      req = build_request(:put_retention_settings, params)
      req.send_request(options)
    end

    # Updates the logging configuration for the specified SIP media
    # application.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [PutSipMediaApplicationLoggingConfiguration][1], in the Amazon Chime
    # SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutSipMediaApplicationLoggingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :sip_media_application_id
    #   The SIP media application ID.
    #
    # @option params [Types::SipMediaApplicationLoggingConfiguration] :sip_media_application_logging_configuration
    #   The actual logging configuration.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutSipMediaApplicationLoggingConfiguration AWS API Documentation
    #
    # @overload put_sip_media_application_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_sip_media_application_logging_configuration(params = {}, options = {})
      req = build_request(:put_sip_media_application_logging_configuration, params)
      req.send_request(options)
    end

    # Puts emergency calling configuration details to the specified Amazon
    # Chime Voice Connector, such as emergency phone numbers and calling
    # countries. Origination and termination settings must be enabled for
    # the Amazon Chime Voice Connector before emergency calling can be
    # configured.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [PutVoiceConnectorEmergencyCallingConfiguration][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorEmergencyCallingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, Types::EmergencyCallingConfiguration] :emergency_calling_configuration
    #   The emergency calling configuration details.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorEmergencyCallingConfiguration AWS API Documentation
    #
    # @overload put_voice_connector_emergency_calling_configuration(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_emergency_calling_configuration(params = {}, options = {})
      req = build_request(:put_voice_connector_emergency_calling_configuration, params)
      req.send_request(options)
    end

    # Adds a logging configuration for the specified Amazon Chime Voice
    # Connector. The logging configuration specifies whether SIP message
    # logs are enabled for sending to Amazon CloudWatch Logs.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [PutVoiceConnectorLoggingConfiguration][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorLoggingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, Types::LoggingConfiguration] :logging_configuration
    #   The logging configuration details to add.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorLoggingConfiguration AWS API Documentation
    #
    # @overload put_voice_connector_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_logging_configuration(params = {}, options = {})
      req = build_request(:put_voice_connector_logging_configuration, params)
      req.send_request(options)
    end

    # Adds origination settings for the specified Amazon Chime Voice
    # Connector.
    #
    # <note markdown="1"> If emergency calling is configured for the Amazon Chime Voice
    # Connector, it must be deleted prior to turning off origination
    # settings.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [PutVoiceConnectorOrigination][1],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorOrigination.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, Types::Origination] :origination
    #   The origination setting details to add.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorOrigination AWS API Documentation
    #
    # @overload put_voice_connector_origination(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_origination(params = {}, options = {})
      req = build_request(:put_voice_connector_origination, params)
      req.send_request(options)
    end

    # Puts the specified proxy configuration to the specified Amazon Chime
    # Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [PutVoiceConnectorProxy][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorProxy.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime voice connector ID.
    #
    # @option params [required, Integer] :default_session_expiry_minutes
    #   The default number of minutes allowed for proxy sessions.
    #
    # @option params [required, Array<String>] :phone_number_pool_countries
    #   The countries for proxy phone numbers to be selected from.
    #
    # @option params [String] :fall_back_phone_number
    #   The phone number to route calls to after a proxy session expires.
    #
    # @option params [Boolean] :disabled
    #   When true, stops proxy sessions from being created on the specified
    #   Amazon Chime Voice Connector.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorProxy AWS API Documentation
    #
    # @overload put_voice_connector_proxy(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_proxy(params = {}, options = {})
      req = build_request(:put_voice_connector_proxy, params)
      req.send_request(options)
    end

    # Adds a streaming configuration for the specified Amazon Chime Voice
    # Connector. The streaming configuration specifies whether media
    # streaming is enabled for sending to Kinesis. It also sets the
    # retention period, in hours, for the Amazon Kinesis data.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [PutVoiceConnectorStreamingConfiguration][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorStreamingConfiguration.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, Types::StreamingConfiguration] :streaming_configuration
    #   The streaming configuration details to add.
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
    #       disabled: false,
    #       streaming_notification_targets: [
    #         {
    #           notification_target: "EventBridge", # required, accepts EventBridge, SNS, SQS
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorStreamingConfiguration AWS API Documentation
    #
    # @overload put_voice_connector_streaming_configuration(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_streaming_configuration(params = {}, options = {})
      req = build_request(:put_voice_connector_streaming_configuration, params)
      req.send_request(options)
    end

    # Adds termination settings for the specified Amazon Chime Voice
    # Connector.
    #
    # <note markdown="1"> If emergency calling is configured for the Amazon Chime Voice
    # Connector, it must be deleted prior to turning off termination
    # settings.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [PutVoiceConnectorTermination][1],
    # in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorTermination.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, Types::Termination] :termination
    #   The termination setting details to add.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorTermination AWS API Documentation
    #
    # @overload put_voice_connector_termination(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_termination(params = {}, options = {})
      req = build_request(:put_voice_connector_termination, params)
      req.send_request(options)
    end

    # Adds termination SIP credentials for the specified Amazon Chime Voice
    # Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [PutVoiceConnectorTerminationCredentials][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorTerminationCredentials.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [Array<Types::Credential>] :credentials
    #   The termination SIP credentials.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/PutVoiceConnectorTerminationCredentials AWS API Documentation
    #
    # @overload put_voice_connector_termination_credentials(params = {})
    # @param [Hash] params ({})
    def put_voice_connector_termination_credentials(params = {}, options = {})
      req = build_request(:put_voice_connector_termination_credentials, params)
      req.send_request(options)
    end

    # Redacts message content, but not metadata. The message exists in the
    # back end, but the action returns null content, and the state shows as
    # redacted.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [RedactChannelMessage][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_RedactChannelMessage.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel containing the messages that you want to
    #   redact.
    #
    # @option params [required, String] :message_id
    #   The ID of the message being redacted.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::RedactChannelMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RedactChannelMessageResponse#channel_arn #channel_arn} => String
    #   * {Types::RedactChannelMessageResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactChannelMessage AWS API Documentation
    #
    # @overload redact_channel_message(params = {})
    # @param [Hash] params ({})
    def redact_channel_message(params = {}, options = {})
      req = build_request(:redact_channel_message, params)
      req.send_request(options)
    end

    # Redacts the specified message from the specified Amazon Chime
    # conversation.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :conversation_id
    #   The conversation ID.
    #
    # @option params [required, String] :message_id
    #   The message ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_conversation_message({
    #     account_id: "NonEmptyString", # required
    #     conversation_id: "NonEmptyString", # required
    #     message_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactConversationMessage AWS API Documentation
    #
    # @overload redact_conversation_message(params = {})
    # @param [Hash] params ({})
    def redact_conversation_message(params = {}, options = {})
      req = build_request(:redact_conversation_message, params)
      req.send_request(options)
    end

    # Redacts the specified message from the specified Amazon Chime channel.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, String] :message_id
    #   The message ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.redact_room_message({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     message_id: "NonEmptyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RedactRoomMessage AWS API Documentation
    #
    # @overload redact_room_message(params = {})
    # @param [Hash] params ({})
    def redact_room_message(params = {}, options = {})
      req = build_request(:redact_room_message, params)
      req.send_request(options)
    end

    # Regenerates the security token for a bot.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @return [Types::RegenerateSecurityTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegenerateSecurityTokenResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.regenerate_security_token({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RegenerateSecurityToken AWS API Documentation
    #
    # @overload regenerate_security_token(params = {})
    # @param [Hash] params ({})
    def regenerate_security_token(params = {}, options = {})
      req = build_request(:regenerate_security_token, params)
      req.send_request(options)
    end

    # Resets the personal meeting PIN for the specified user on an Amazon
    # Chime account. Returns the User object with the updated personal
    # meeting PIN.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @return [Types::ResetPersonalPINResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ResetPersonalPINResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_personal_pin({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ResetPersonalPIN AWS API Documentation
    #
    # @overload reset_personal_pin(params = {})
    # @param [Hash] params ({})
    def reset_personal_pin(params = {}, options = {})
      req = build_request(:reset_personal_pin, params)
      req.send_request(options)
    end

    # Moves a phone number from the **Deletion queue** back into the phone
    # number **Inventory**.
    #
    # @option params [required, String] :phone_number_id
    #   The phone number.
    #
    # @return [Types::RestorePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestorePhoneNumberResponse#phone_number #phone_number} => Types::PhoneNumber
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_phone_number({
    #     phone_number_id: "NonEmptyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/RestorePhoneNumber AWS API Documentation
    #
    # @overload restore_phone_number(params = {})
    # @param [Hash] params ({})
    def restore_phone_number(params = {}, options = {})
      req = build_request(:restore_phone_number, params)
      req.send_request(options)
    end

    # Searches for phone numbers that can be ordered. For US numbers,
    # provide at least one of the following search filters: `AreaCode`,
    # `City`, `State`, or `TollFreePrefix`. If you provide `City`, you must
    # also provide `State`. Numbers outside the US only support the
    # `PhoneNumberType` filter, which you must use.
    #
    # @option params [String] :area_code
    #   The area code used to filter results. Only applies to the US.
    #
    # @option params [String] :city
    #   The city used to filter results. Only applies to the US.
    #
    # @option params [String] :country
    #   The country used to filter results. Defaults to the US Format: ISO
    #   3166-1 alpha-2.
    #
    # @option params [String] :state
    #   The state used to filter results. Required only if you provide `City`.
    #   Only applies to the US.
    #
    # @option params [String] :toll_free_prefix
    #   The toll-free prefix that you use to filter results. Only applies to
    #   the US.
    #
    # @option params [String] :phone_number_type
    #   The phone number type used to filter results. Required for non-US
    #   numbers.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in a single call.
    #
    # @option params [String] :next_token
    #   The token used to retrieve the next page of results.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SearchAvailablePhoneNumbers AWS API Documentation
    #
    # @overload search_available_phone_numbers(params = {})
    # @param [Hash] params ({})
    def search_available_phone_numbers(params = {}, options = {})
      req = build_request(:search_available_phone_numbers, params)
      req.send_request(options)
    end

    # Sends a message to a particular channel that the member is a part of.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  Also, `STANDARD` messages can contain 4KB of data and the 1KB of
    # metadata. `CONTROL` messages can contain 30 bytes of data and no
    # metadata.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [SendChannelMessage][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_SendChannelMessage.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :content
    #   The content of the message.
    #
    # @option params [required, String] :type
    #   The type of message, `STANDARD` or `CONTROL`.
    #
    # @option params [required, String] :persistence
    #   Boolean that controls whether the message is persisted on the back
    #   end. Required.
    #
    # @option params [String] :metadata
    #   The optional metadata for each message.
    #
    # @option params [required, String] :client_request_token
    #   The `Idempotency` token for each client request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::SendChannelMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SendChannelMessageResponse#channel_arn #channel_arn} => String
    #   * {Types::SendChannelMessageResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     content: "NonEmptyContent", # required
    #     type: "STANDARD", # required, accepts STANDARD, CONTROL
    #     persistence: "PERSISTENT", # required, accepts PERSISTENT, NON_PERSISTENT
    #     metadata: "Metadata",
    #     client_request_token: "ClientRequestToken", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/SendChannelMessage AWS API Documentation
    #
    # @overload send_channel_message(params = {})
    # @param [Hash] params ({})
    def send_channel_message(params = {}, options = {})
      req = build_request(:send_channel_message, params)
      req.send_request(options)
    end

    # Starts transcription for the specified `meetingId`. For more
    # information, refer to [ Using Amazon Chime SDK live transcription ][1]
    # in the *Amazon Chime SDK Developer Guide*.
    #
    # If you specify an invalid configuration, a `TranscriptFailed` event
    # will be sent with the contents of the `BadRequestException` generated
    # by Amazon Transcribe. For more information on each parameter and which
    # combinations are valid, refer to the [StartStreamTranscription][2] API
    # in the *Amazon Transcribe Developer Guide*.
    #
    # <note markdown="1"> Amazon Chime SDK live transcription is powered by Amazon Transcribe.
    # Use of Amazon Transcribe is subject to the [AWS Service Terms][3],
    # including the terms specific to the AWS Machine Learning and
    # Artificial Intelligence Services.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [StartMeetingTranscription][4], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][5] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html
    # [3]: https://aws.amazon.com/service-terms/
    # [4]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_StartMeetingTranscription.html
    # [5]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The unique ID of the meeting being transcribed.
    #
    # @option params [required, Types::TranscriptionConfiguration] :transcription_configuration
    #   The configuration for the current transcription operation. Must
    #   contain `EngineTranscribeSettings` or
    #   `EngineTranscribeMedicalSettings`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_meeting_transcription({
    #     meeting_id: "GuidString", # required
    #     transcription_configuration: { # required
    #       engine_transcribe_settings: {
    #         language_code: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, hi-IN
    #         vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #         vocabulary_filter_name: "String",
    #         vocabulary_name: "String",
    #         region: "us-east-2", # accepts us-east-2, us-east-1, us-west-2, ap-northeast-2, ap-southeast-2, ap-northeast-1, ca-central-1, eu-central-1, eu-west-1, eu-west-2, sa-east-1, auto
    #         enable_partial_results_stabilization: false,
    #         partial_results_stability: "low", # accepts low, medium, high
    #         content_identification_type: "PII", # accepts PII
    #         content_redaction_type: "PII", # accepts PII
    #         pii_entity_types: "TranscribePiiEntityTypes",
    #         language_model_name: "TranscribeLanguageModelName",
    #         identify_language: false,
    #         language_options: "TranscribeLanguageOptions",
    #         preferred_language: "en-US", # accepts en-US, en-GB, es-US, fr-CA, fr-FR, en-AU, it-IT, de-DE, pt-BR, ja-JP, ko-KR, zh-CN, th-TH, hi-IN
    #         vocabulary_names: "TranscribeVocabularyNamesOrFilterNamesString",
    #         vocabulary_filter_names: "TranscribeVocabularyNamesOrFilterNamesString",
    #       },
    #       engine_transcribe_medical_settings: {
    #         language_code: "en-US", # required, accepts en-US
    #         specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE, CARDIOLOGY, NEUROLOGY, ONCOLOGY, RADIOLOGY, UROLOGY
    #         type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
    #         vocabulary_name: "String",
    #         region: "us-east-1", # accepts us-east-1, us-east-2, us-west-2, ap-southeast-2, ca-central-1, eu-west-1, auto
    #         content_identification_type: "PHI", # accepts PHI
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/StartMeetingTranscription AWS API Documentation
    #
    # @overload start_meeting_transcription(params = {})
    # @param [Hash] params ({})
    def start_meeting_transcription(params = {}, options = {})
      req = build_request(:start_meeting_transcription, params)
      req.send_request(options)
    end

    # Stops transcription for the specified `meetingId`.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [StopMeetingTranscription][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_StopMeetingTranscription.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The unique ID of the meeting for which you stop transcription.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_meeting_transcription({
    #     meeting_id: "GuidString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/StopMeetingTranscription AWS API Documentation
    #
    # @overload stop_meeting_transcription(params = {})
    # @param [Hash] params ({})
    def stop_meeting_transcription(params = {}, options = {})
      req = build_request(:stop_meeting_transcription, params)
      req.send_request(options)
    end

    # Applies the specified tags to the specified Amazon Chime attendee.
    #
    # TagAttendee is not supported in the Amazon Chime SDK Meetings
    # Namespace. Update your application to remove calls to this API.
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :attendee_id
    #   The Amazon Chime SDK attendee ID.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_attendee({
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TagAttendee AWS API Documentation
    #
    # @overload tag_attendee(params = {})
    # @param [Hash] params ({})
    def tag_attendee(params = {}, options = {})
      req = build_request(:tag_attendee, params)
      req.send_request(options)
    end

    # Applies the specified tags to the specified Amazon Chime SDK meeting.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [TagResource][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_TagResource.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_meeting({
    #     meeting_id: "GuidString", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TagMeeting AWS API Documentation
    #
    # @overload tag_meeting(params = {})
    # @param [Hash] params ({})
    def tag_meeting(params = {}, options = {})
      req = build_request(:tag_meeting, params)
      req.send_request(options)
    end

    # Applies the specified tags to the specified Amazon Chime SDK meeting
    # resource.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [TagResource][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_TagResource.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tag key-value pairs.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Untags the specified tags from the specified Amazon Chime SDK
    # attendee.
    #
    # UntagAttendee is not supported in the Amazon Chime SDK Meetings
    # Namespace. Update your application to remove calls to this API.
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, String] :attendee_id
    #   The Amazon Chime SDK attendee ID.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_attendee({
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UntagAttendee AWS API Documentation
    #
    # @overload untag_attendee(params = {})
    # @param [Hash] params ({})
    def untag_attendee(params = {}, options = {})
      req = build_request(:untag_attendee, params)
      req.send_request(options)
    end

    # Untags the specified tags from the specified Amazon Chime SDK meeting.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UntagResource][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_UntagResource.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :meeting_id
    #   The Amazon Chime SDK meeting ID.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_meeting({
    #     meeting_id: "GuidString", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UntagMeeting AWS API Documentation
    #
    # @overload untag_meeting(params = {})
    # @param [Hash] params ({})
    def untag_meeting(params = {}, options = {})
      req = build_request(:untag_meeting, params)
      req.send_request(options)
    end

    # Untags the specified tags from the specified Amazon Chime SDK meeting
    # resource.
    #
    # Applies the specified tags to the specified Amazon Chime SDK meeting
    # resource.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UntagResource][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_UntagResource.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :resource_arn
    #   The resource ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates account details for the specified Amazon Chime account.
    # Currently, only account name and default license updates are supported
    # for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [String] :name
    #   The new name for the specified Amazon Chime account.
    #
    # @option params [String] :default_license
    #   The default license applied when you add users to an Amazon Chime
    #   account.
    #
    # @return [Types::UpdateAccountResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountResponse#account #account} => Types::Account
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account({
    #     account_id: "NonEmptyString", # required
    #     name: "AccountName",
    #     default_license: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #   })
    #
    # @example Response structure
    #
    #   resp.account.aws_account_id #=> String
    #   resp.account.account_id #=> String
    #   resp.account.name #=> String
    #   resp.account.account_type #=> String, one of "Team", "EnterpriseDirectory", "EnterpriseLWA", "EnterpriseOIDC"
    #   resp.account.created_timestamp #=> Time
    #   resp.account.default_license #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.supported_licenses #=> Array
    #   resp.account.supported_licenses[0] #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.account.account_status #=> String, one of "Suspended", "Active"
    #   resp.account.signin_delegate_groups #=> Array
    #   resp.account.signin_delegate_groups[0].group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccount AWS API Documentation
    #
    # @overload update_account(params = {})
    # @param [Hash] params ({})
    def update_account(params = {}, options = {})
      req = build_request(:update_account, params)
      req.send_request(options)
    end

    # Updates the settings for the specified Amazon Chime account. You can
    # update settings for remote control of shared screens, or for the
    # dial-out option. For more information about these settings, see [Use
    # the Policies Page][1] in the *Amazon Chime Administration Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime/latest/ag/policies.html
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, Types::AccountSettings] :account_settings
    #   The Amazon Chime account settings to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_settings({
    #     account_id: "NonEmptyString", # required
    #     account_settings: { # required
    #       disable_remote_control: false,
    #       enable_dial_out: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAccountSettings AWS API Documentation
    #
    # @overload update_account_settings(params = {})
    # @param [Hash] params ({})
    def update_account_settings(params = {}, options = {})
      req = build_request(:update_account_settings, params)
      req.send_request(options)
    end

    # Updates `AppInstance` metadata.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateAppInstance][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_UpdateAppInstance.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_arn
    #   The ARN of the `AppInstance`.
    #
    # @option params [required, String] :name
    #   The name that you want to change.
    #
    # @option params [String] :metadata
    #   The metadata that you want to change.
    #
    # @return [Types::UpdateAppInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppInstanceResponse#app_instance_arn #app_instance_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance({
    #     app_instance_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName", # required
    #     metadata: "Metadata",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAppInstance AWS API Documentation
    #
    # @overload update_app_instance(params = {})
    # @param [Hash] params ({})
    def update_app_instance(params = {}, options = {})
      req = build_request(:update_app_instance, params)
      req.send_request(options)
    end

    # Updates the details of an `AppInstanceUser`. You can update names and
    # metadata.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateAppInstanceUser][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_UpdateAppInstanceUser.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :app_instance_user_arn
    #   The ARN of the `AppInstanceUser`.
    #
    # @option params [required, String] :name
    #   The name of the `AppInstanceUser`.
    #
    # @option params [String] :metadata
    #   The metadata of the `AppInstanceUser`.
    #
    # @return [Types::UpdateAppInstanceUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAppInstanceUserResponse#app_instance_user_arn #app_instance_user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_instance_user({
    #     app_instance_user_arn: "ChimeArn", # required
    #     name: "UserName", # required
    #     metadata: "Metadata",
    #   })
    #
    # @example Response structure
    #
    #   resp.app_instance_user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateAppInstanceUser AWS API Documentation
    #
    # @overload update_app_instance_user(params = {})
    # @param [Hash] params ({})
    def update_app_instance_user(params = {}, options = {})
      req = build_request(:update_app_instance_user, params)
      req.send_request(options)
    end

    # Updates the status of the specified bot, such as starting or stopping
    # the bot from running in your Amazon Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :bot_id
    #   The bot ID.
    #
    # @option params [Boolean] :disabled
    #   When true, stops the specified bot from running in your account.
    #
    # @return [Types::UpdateBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateBotResponse#bot #bot} => Types::Bot
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_bot({
    #     account_id: "NonEmptyString", # required
    #     bot_id: "NonEmptyString", # required
    #     disabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.bot.bot_id #=> String
    #   resp.bot.user_id #=> String
    #   resp.bot.display_name #=> String
    #   resp.bot.bot_type #=> String, one of "ChatBot"
    #   resp.bot.disabled #=> Boolean
    #   resp.bot.created_timestamp #=> Time
    #   resp.bot.updated_timestamp #=> Time
    #   resp.bot.bot_email #=> String
    #   resp.bot.security_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateBot AWS API Documentation
    #
    # @overload update_bot(params = {})
    # @param [Hash] params ({})
    def update_bot(params = {}, options = {})
      req = build_request(:update_bot, params)
      req.send_request(options)
    end

    # Update a channel's attributes.
    #
    # **Restriction**: You can't change a channel's privacy.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateChannel][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannel.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :name
    #   The name of the channel.
    #
    # @option params [required, String] :mode
    #   The mode of the update request.
    #
    # @option params [String] :metadata
    #   The metadata for the update request.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::UpdateChannelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelResponse#channel_arn #channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel({
    #     channel_arn: "ChimeArn", # required
    #     name: "NonEmptyResourceName", # required
    #     mode: "UNRESTRICTED", # required, accepts UNRESTRICTED, RESTRICTED
    #     metadata: "Metadata",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannel AWS API Documentation
    #
    # @overload update_channel(params = {})
    # @param [Hash] params ({})
    def update_channel(params = {}, options = {})
      req = build_request(:update_channel, params)
      req.send_request(options)
    end

    # Updates the content of a message.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateChannelMessage][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannelMessage.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [required, String] :message_id
    #   The ID string of the message being updated.
    #
    # @option params [String] :content
    #   The content of the message being updated.
    #
    # @option params [String] :metadata
    #   The metadata of the message being updated.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::UpdateChannelMessageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelMessageResponse#channel_arn #channel_arn} => String
    #   * {Types::UpdateChannelMessageResponse#message_id #message_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_message({
    #     channel_arn: "ChimeArn", # required
    #     message_id: "MessageId", # required
    #     content: "Content",
    #     metadata: "Metadata",
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #   resp.message_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannelMessage AWS API Documentation
    #
    # @overload update_channel_message(params = {})
    # @param [Hash] params ({})
    def update_channel_message(params = {}, options = {})
      req = build_request(:update_channel_message, params)
      req.send_request(options)
    end

    # The details of the time when a user last read messages in a channel.
    #
    # <note markdown="1"> The `x-amz-chime-bearer` request header is mandatory. Use the
    # `AppInstanceUserArn` of the user that makes the API call as the value
    # in the header.
    #
    #  </note>
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateChannelReadMarker][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannelReadMarker.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :channel_arn
    #   The ARN of the channel.
    #
    # @option params [String] :chime_bearer
    #   The `AppInstanceUserArn` of the user that makes the API call.
    #
    # @return [Types::UpdateChannelReadMarkerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChannelReadMarkerResponse#channel_arn #channel_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_channel_read_marker({
    #     channel_arn: "ChimeArn", # required
    #     chime_bearer: "ChimeArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateChannelReadMarker AWS API Documentation
    #
    # @overload update_channel_read_marker(params = {})
    # @param [Hash] params ({})
    def update_channel_read_marker(params = {}, options = {})
      req = build_request(:update_channel_read_marker, params)
      req.send_request(options)
    end

    # Updates global settings for the administrator's AWS account, such as
    # Amazon Chime Business Calling and Amazon Chime Voice Connector
    # settings.
    #
    # @option params [Types::BusinessCallingSettings] :business_calling
    #   The Amazon Chime Business Calling settings.
    #
    # @option params [Types::VoiceConnectorSettings] :voice_connector
    #   The Amazon Chime Voice Connector settings.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_settings({
    #     business_calling: {
    #       cdr_bucket: "String",
    #     },
    #     voice_connector: {
    #       cdr_bucket: "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateGlobalSettings AWS API Documentation
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
    # For toll-free numbers, you cannot use the Amazon Chime Business
    # Calling product type. For numbers outside the U.S., you must use the
    # Amazon Chime SIP Media Application Dial-In product type.
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
    #     phone_number_id: "String", # required
    #     product_type: "BusinessCalling", # accepts BusinessCalling, VoiceConnector, SipMediaApplicationDialIn
    #     calling_name: "CallingName",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number.phone_number_id #=> String
    #   resp.phone_number.e164_phone_number #=> String
    #   resp.phone_number.country #=> String
    #   resp.phone_number.type #=> String, one of "Local", "TollFree"
    #   resp.phone_number.product_type #=> String, one of "BusinessCalling", "VoiceConnector", "SipMediaApplicationDialIn"
    #   resp.phone_number.status #=> String, one of "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"
    #   resp.phone_number.capabilities.inbound_call #=> Boolean
    #   resp.phone_number.capabilities.outbound_call #=> Boolean
    #   resp.phone_number.capabilities.inbound_sms #=> Boolean
    #   resp.phone_number.capabilities.outbound_sms #=> Boolean
    #   resp.phone_number.capabilities.inbound_mms #=> Boolean
    #   resp.phone_number.capabilities.outbound_mms #=> Boolean
    #   resp.phone_number.associations #=> Array
    #   resp.phone_number.associations[0].value #=> String
    #   resp.phone_number.associations[0].name #=> String, one of "AccountId", "UserId", "VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"
    #   resp.phone_number.associations[0].associated_timestamp #=> Time
    #   resp.phone_number.calling_name #=> String
    #   resp.phone_number.calling_name_status #=> String, one of "Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"
    #   resp.phone_number.created_timestamp #=> Time
    #   resp.phone_number.updated_timestamp #=> Time
    #   resp.phone_number.deletion_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumber AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdatePhoneNumberSettings AWS API Documentation
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
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateProxySession][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateProxySession.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime voice connector ID.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateProxySession AWS API Documentation
    #
    # @overload update_proxy_session(params = {})
    # @param [Hash] params ({})
    def update_proxy_session(params = {}, options = {})
      req = build_request(:update_proxy_session, params)
      req.send_request(options)
    end

    # Updates room details, such as the room name, for a room in an Amazon
    # Chime Enterprise account.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [String] :name
    #   The room name.
    #
    # @return [Types::UpdateRoomResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoomResponse#room #room} => Types::Room
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     name: "SensitiveString",
    #   })
    #
    # @example Response structure
    #
    #   resp.room.room_id #=> String
    #   resp.room.name #=> String
    #   resp.room.account_id #=> String
    #   resp.room.created_by #=> String
    #   resp.room.created_timestamp #=> Time
    #   resp.room.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateRoom AWS API Documentation
    #
    # @overload update_room(params = {})
    # @param [Hash] params ({})
    def update_room(params = {}, options = {})
      req = build_request(:update_room, params)
      req.send_request(options)
    end

    # Updates room membership details, such as the member role, for a room
    # in an Amazon Chime Enterprise account. The member role designates
    # whether the member is a chat room administrator or a general chat room
    # member. The member role can be updated only for user IDs.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :room_id
    #   The room ID.
    #
    # @option params [required, String] :member_id
    #   The member ID.
    #
    # @option params [String] :role
    #   The role of the member.
    #
    # @return [Types::UpdateRoomMembershipResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoomMembershipResponse#room_membership #room_membership} => Types::RoomMembership
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room_membership({
    #     account_id: "NonEmptyString", # required
    #     room_id: "NonEmptyString", # required
    #     member_id: "NonEmptyString", # required
    #     role: "Administrator", # accepts Administrator, Member
    #   })
    #
    # @example Response structure
    #
    #   resp.room_membership.room_id #=> String
    #   resp.room_membership.member.member_id #=> String
    #   resp.room_membership.member.member_type #=> String, one of "User", "Bot", "Webhook"
    #   resp.room_membership.member.email #=> String
    #   resp.room_membership.member.full_name #=> String
    #   resp.room_membership.member.account_id #=> String
    #   resp.room_membership.role #=> String, one of "Administrator", "Member"
    #   resp.room_membership.invited_by #=> String
    #   resp.room_membership.updated_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateRoomMembership AWS API Documentation
    #
    # @overload update_room_membership(params = {})
    # @param [Hash] params ({})
    def update_room_membership(params = {}, options = {})
      req = build_request(:update_room_membership, params)
      req.send_request(options)
    end

    # Updates the details of the specified SIP media application.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateSipMediaApplication][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipMediaApplication.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipMediaApplication AWS API Documentation
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
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version,
    # [UpdateSipMediaApplicationCall][1], in the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipMediaApplicationCall.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipMediaApplicationCall AWS API Documentation
    #
    # @overload update_sip_media_application_call(params = {})
    # @param [Hash] params ({})
    def update_sip_media_application_call(params = {}, options = {})
      req = build_request(:update_sip_media_application_call, params)
      req.send_request(options)
    end

    # Updates the details of the specified SIP rule.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateSipRule][1], in the Amazon
    # Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipRule.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :sip_rule_id
    #   The SIP rule ID.
    #
    # @option params [required, String] :name
    #   The new name for the specified SIP rule.
    #
    # @option params [Boolean] :disabled
    #   The new value specified to indicate whether the rule is disabled.
    #
    # @option params [Array<Types::SipRuleTargetApplication>] :target_applications
    #   The new value of the list of target applications.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateSipRule AWS API Documentation
    #
    # @overload update_sip_rule(params = {})
    # @param [Hash] params ({})
    def update_sip_rule(params = {}, options = {})
      req = build_request(:update_sip_rule, params)
      req.send_request(options)
    end

    # Updates user details for a specified user ID. Currently, only
    # `LicenseType` updates are supported for this action.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [String] :license_type
    #   The user license type to update. This must be a supported license type
    #   for the Amazon Chime account that the user belongs to.
    #
    # @option params [String] :user_type
    #   The user type.
    #
    # @option params [Types::AlexaForBusinessMetadata] :alexa_for_business_metadata
    #   The Alexa for Business metadata.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     account_id: "NonEmptyString", # required
    #     user_id: "NonEmptyString", # required
    #     license_type: "Basic", # accepts Basic, Plus, Pro, ProTrial
    #     user_type: "PrivateUser", # accepts PrivateUser, SharedDevice
    #     alexa_for_business_metadata: {
    #       is_alexa_for_business_enabled: false,
    #       alexa_for_business_room_arn: "SensitiveString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user.user_id #=> String
    #   resp.user.account_id #=> String
    #   resp.user.primary_email #=> String
    #   resp.user.primary_provisioned_number #=> String
    #   resp.user.display_name #=> String
    #   resp.user.license_type #=> String, one of "Basic", "Plus", "Pro", "ProTrial"
    #   resp.user.user_type #=> String, one of "PrivateUser", "SharedDevice"
    #   resp.user.user_registration_status #=> String, one of "Unregistered", "Registered", "Suspended"
    #   resp.user.user_invitation_status #=> String, one of "Pending", "Accepted", "Failed"
    #   resp.user.registered_on #=> Time
    #   resp.user.invited_on #=> Time
    #   resp.user.alexa_for_business_metadata.is_alexa_for_business_enabled #=> Boolean
    #   resp.user.alexa_for_business_metadata.alexa_for_business_room_arn #=> String
    #   resp.user.personal_pin #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
      req.send_request(options)
    end

    # Updates the settings for the specified user, such as phone number
    # settings.
    #
    # @option params [required, String] :account_id
    #   The Amazon Chime account ID.
    #
    # @option params [required, String] :user_id
    #   The user ID.
    #
    # @option params [required, Types::UserSettings] :user_settings
    #   The user settings to update.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_settings({
    #     account_id: "String", # required
    #     user_id: "String", # required
    #     user_settings: { # required
    #       telephony: { # required
    #         inbound_calling: false, # required
    #         outbound_calling: false, # required
    #         sms: false, # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateUserSettings AWS API Documentation
    #
    # @overload update_user_settings(params = {})
    # @param [Hash] params ({})
    def update_user_settings(params = {}, options = {})
      req = build_request(:update_user_settings, params)
      req.send_request(options)
    end

    # Updates details for the specified Amazon Chime Voice Connector.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateVoiceConnector][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateVoiceConnector.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_id
    #   The Amazon Chime Voice Connector ID.
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime Voice Connector.
    #
    # @option params [required, Boolean] :require_encryption
    #   When enabled, requires encryption for the Amazon Chime Voice
    #   Connector.
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
    #   resp.voice_connector.aws_region #=> String, one of "us-east-1", "us-west-2"
    #   resp.voice_connector.name #=> String
    #   resp.voice_connector.outbound_host_name #=> String
    #   resp.voice_connector.require_encryption #=> Boolean
    #   resp.voice_connector.created_timestamp #=> Time
    #   resp.voice_connector.updated_timestamp #=> Time
    #   resp.voice_connector.voice_connector_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateVoiceConnector AWS API Documentation
    #
    # @overload update_voice_connector(params = {})
    # @param [Hash] params ({})
    def update_voice_connector(params = {}, options = {})
      req = build_request(:update_voice_connector, params)
      req.send_request(options)
    end

    # Updates details of the specified Amazon Chime Voice Connector group,
    # such as the name and Amazon Chime Voice Connector priority ranking.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [UpdateVoiceConnectorGroup][1], in
    # the Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateVoiceConnectorGroup.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
    #
    # @option params [required, String] :voice_connector_group_id
    #   The Amazon Chime Voice Connector group ID.
    #
    # @option params [required, String] :name
    #   The name of the Amazon Chime Voice Connector group.
    #
    # @option params [required, Array<Types::VoiceConnectorItem>] :voice_connector_items
    #   The `VoiceConnectorItems` to associate with the group.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/UpdateVoiceConnectorGroup AWS API Documentation
    #
    # @overload update_voice_connector_group(params = {})
    # @param [Hash] params ({})
    def update_voice_connector_group(params = {}, options = {})
      req = build_request(:update_voice_connector_group, params)
      req.send_request(options)
    end

    # Validates an address to be used for 911 calls made with Amazon Chime
    # Voice Connectors. You can use validated addresses in a Presence
    # Information Data Format Location Object file that you include in SIP
    # requests. That helps ensure that addresses are routed to the
    # appropriate Public Safety Answering Point.
    #
    # **This API is is no longer supported and will not be updated.** We
    # recommend using the latest version, [ValidateE911Address][1], in the
    # Amazon Chime SDK.
    #
    #  Using the latest version requires migrating to a dedicated namespace.
    # For more information, refer to [Migrating from the Amazon Chime
    # namespace][2] in the *Amazon Chime SDK Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ValidateE911Address.html
    # [2]: https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html
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
    #   The address country, such as `US`.
    #
    # @option params [required, String] :postal_code
    #   The address postal code, such as `04352`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chime-2018-05-01/ValidateE911Address AWS API Documentation
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
      context[:gem_name] = 'aws-sdk-chime'
      context[:gem_version] = '1.77.0'
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
