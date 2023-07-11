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

Aws::Plugins::GlobalConfiguration.add_identifier(:ivsrealtime)

module Aws::IVSRealTime
  # An API client for IVSRealTime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::IVSRealTime::Client.new(
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

    @identifier = :ivsrealtime

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
    add_plugin(Aws::IVSRealTime::Plugins::Endpoints)

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
    #   @option options [Aws::IVSRealTime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::IVSRealTime::EndpointParameters`
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

    # Creates an additional token for a specified stage. This can be done
    # after stage creation or when tokens expire. Tokens always are scoped
    # to the stage for which they are created.
    #
    # Encryption keys are owned by Amazon IVS and never used directly by
    # your application.
    #
    # @option params [Hash<String,String>] :attributes
    #   Application-provided attributes to encode into the token and attach to
    #   a stage. Map keys and values can contain UTF-8 encoded text. The
    #   maximum length of this field is 1 KB total. *This field is exposed to
    #   all stage participants and should not be used for personally
    #   identifying, confidential, or sensitive information.*
    #
    # @option params [Array<String>] :capabilities
    #   Set of capabilities that the user is allowed to perform in the stage.
    #   Default: `PUBLISH, SUBSCRIBE`.
    #
    # @option params [Integer] :duration
    #   Duration (in minutes), after which the token expires. Default: 720 (12
    #   hours).
    #
    # @option params [required, String] :stage_arn
    #   ARN of the stage to which this token is scoped.
    #
    # @option params [String] :user_id
    #   Name that can be specified to help identify the token. This can be any
    #   UTF-8 encoded text. *This field is exposed to all stage participants
    #   and should not be used for personally identifying, confidential, or
    #   sensitive information.*
    #
    # @return [Types::CreateParticipantTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParticipantTokenResponse#participant_token #participant_token} => Types::ParticipantToken
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_participant_token({
    #     attributes: {
    #       "String" => "String",
    #     },
    #     capabilities: ["PUBLISH"], # accepts PUBLISH, SUBSCRIBE
    #     duration: 1,
    #     stage_arn: "StageArn", # required
    #     user_id: "ParticipantTokenUserId",
    #   })
    #
    # @example Response structure
    #
    #   resp.participant_token.attributes #=> Hash
    #   resp.participant_token.attributes["String"] #=> String
    #   resp.participant_token.capabilities #=> Array
    #   resp.participant_token.capabilities[0] #=> String, one of "PUBLISH", "SUBSCRIBE"
    #   resp.participant_token.duration #=> Integer
    #   resp.participant_token.expiration_time #=> Time
    #   resp.participant_token.participant_id #=> String
    #   resp.participant_token.token #=> String
    #   resp.participant_token.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateParticipantToken AWS API Documentation
    #
    # @overload create_participant_token(params = {})
    # @param [Hash] params ({})
    def create_participant_token(params = {}, options = {})
      req = build_request(:create_participant_token, params)
      req.send_request(options)
    end

    # Creates a new stage (and optionally participant tokens).
    #
    # @option params [String] :name
    #   Optional name that can be specified for the stage being created.
    #
    # @option params [Array<Types::ParticipantTokenConfiguration>] :participant_token_configurations
    #   Array of participant token configuration objects to attach to the new
    #   stage.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Types::CreateStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStageResponse#participant_tokens #participant_tokens} => Array&lt;Types::ParticipantToken&gt;
    #   * {Types::CreateStageResponse#stage #stage} => Types::Stage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage({
    #     name: "StageName",
    #     participant_token_configurations: [
    #       {
    #         attributes: {
    #           "String" => "String",
    #         },
    #         capabilities: ["PUBLISH"], # accepts PUBLISH, SUBSCRIBE
    #         duration: 1,
    #         user_id: "ParticipantTokenUserId",
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.participant_tokens #=> Array
    #   resp.participant_tokens[0].attributes #=> Hash
    #   resp.participant_tokens[0].attributes["String"] #=> String
    #   resp.participant_tokens[0].capabilities #=> Array
    #   resp.participant_tokens[0].capabilities[0] #=> String, one of "PUBLISH", "SUBSCRIBE"
    #   resp.participant_tokens[0].duration #=> Integer
    #   resp.participant_tokens[0].expiration_time #=> Time
    #   resp.participant_tokens[0].participant_id #=> String
    #   resp.participant_tokens[0].token #=> String
    #   resp.participant_tokens[0].user_id #=> String
    #   resp.stage.active_session_id #=> String
    #   resp.stage.arn #=> String
    #   resp.stage.name #=> String
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStage AWS API Documentation
    #
    # @overload create_stage(params = {})
    # @param [Hash] params ({})
    def create_stage(params = {}, options = {})
      req = build_request(:create_stage, params)
      req.send_request(options)
    end

    # Shuts down and deletes the specified stage (disconnecting all
    # participants).
    #
    # @option params [required, String] :arn
    #   ARN of the stage to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stage({
    #     arn: "StageArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStage AWS API Documentation
    #
    # @overload delete_stage(params = {})
    # @param [Hash] params ({})
    def delete_stage(params = {}, options = {})
      req = build_request(:delete_stage, params)
      req.send_request(options)
    end

    # Disconnects a specified participant and revokes the participant
    # permanently from a specified stage.
    #
    # @option params [required, String] :participant_id
    #   Identifier of the participant to be disconnected. This is assigned by
    #   IVS and returned by CreateParticipantToken.
    #
    # @option params [String] :reason
    #   Description of why this participant is being disconnected.
    #
    # @option params [required, String] :stage_arn
    #   ARN of the stage to which the participant is attached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_participant({
    #     participant_id: "ParticipantTokenId", # required
    #     reason: "DisconnectParticipantReason",
    #     stage_arn: "StageArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DisconnectParticipant AWS API Documentation
    #
    # @overload disconnect_participant(params = {})
    # @param [Hash] params ({})
    def disconnect_participant(params = {}, options = {})
      req = build_request(:disconnect_participant, params)
      req.send_request(options)
    end

    # Gets information about the specified participant token.
    #
    # @option params [required, String] :participant_id
    #   Unique identifier for the participant. This is assigned by IVS and
    #   returned by CreateParticipantToken.
    #
    # @option params [required, String] :session_id
    #   ID of a session within the stage.
    #
    # @option params [required, String] :stage_arn
    #   Stage ARN.
    #
    # @return [Types::GetParticipantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParticipantResponse#participant #participant} => Types::Participant
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_participant({
    #     participant_id: "ParticipantId", # required
    #     session_id: "StageSessionId", # required
    #     stage_arn: "StageArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.participant.attributes #=> Hash
    #   resp.participant.attributes["String"] #=> String
    #   resp.participant.first_join_time #=> Time
    #   resp.participant.participant_id #=> String
    #   resp.participant.published #=> Boolean
    #   resp.participant.state #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.participant.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetParticipant AWS API Documentation
    #
    # @overload get_participant(params = {})
    # @param [Hash] params ({})
    def get_participant(params = {}, options = {})
      req = build_request(:get_participant, params)
      req.send_request(options)
    end

    # Gets information for the specified stage.
    #
    # @option params [required, String] :arn
    #   ARN of the stage for which the information is to be retrieved.
    #
    # @return [Types::GetStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStageResponse#stage #stage} => Types::Stage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage({
    #     arn: "StageArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stage.active_session_id #=> String
    #   resp.stage.arn #=> String
    #   resp.stage.name #=> String
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStage AWS API Documentation
    #
    # @overload get_stage(params = {})
    # @param [Hash] params ({})
    def get_stage(params = {}, options = {})
      req = build_request(:get_stage, params)
      req.send_request(options)
    end

    # Gets information for the specified stage session.
    #
    # @option params [required, String] :session_id
    #   ID of a session within the stage.
    #
    # @option params [required, String] :stage_arn
    #   ARN of the stage for which the information is to be retrieved.
    #
    # @return [Types::GetStageSessionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStageSessionResponse#stage_session #stage_session} => Types::StageSession
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage_session({
    #     session_id: "StageSessionId", # required
    #     stage_arn: "StageArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stage_session.end_time #=> Time
    #   resp.stage_session.session_id #=> String
    #   resp.stage_session.start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStageSession AWS API Documentation
    #
    # @overload get_stage_session(params = {})
    # @param [Hash] params ({})
    def get_stage_session(params = {}, options = {})
      req = build_request(:get_stage_session, params)
      req.send_request(options)
    end

    # Lists events for a specified participant that occurred during a
    # specified stage session.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @option params [String] :next_token
    #   The first participant to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #
    # @option params [required, String] :participant_id
    #   Unique identifier for this participant. This is assigned by IVS and
    #   returned by CreateParticipantToken.
    #
    # @option params [required, String] :session_id
    #   ID of a session within the stage.
    #
    # @option params [required, String] :stage_arn
    #   Stage ARN.
    #
    # @return [Types::ListParticipantEventsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListParticipantEventsResponse#events #events} => Array&lt;Types::Event&gt;
    #   * {Types::ListParticipantEventsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_participant_events({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     participant_id: "ParticipantId", # required
    #     session_id: "StageSessionId", # required
    #     stage_arn: "StageArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.events #=> Array
    #   resp.events[0].error_code #=> String, one of "INSUFFICIENT_CAPABILITIES"
    #   resp.events[0].event_time #=> Time
    #   resp.events[0].name #=> String, one of "JOINED", "LEFT", "PUBLISH_STARTED", "PUBLISH_STOPPED", "SUBSCRIBE_STARTED", "SUBSCRIBE_STOPPED", "PUBLISH_ERROR", "SUBSCRIBE_ERROR", "JOIN_ERROR"
    #   resp.events[0].participant_id #=> String
    #   resp.events[0].remote_participant_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipantEvents AWS API Documentation
    #
    # @overload list_participant_events(params = {})
    # @param [Hash] params ({})
    def list_participant_events(params = {}, options = {})
      req = build_request(:list_participant_events, params)
      req.send_request(options)
    end

    # Lists all participants in a specified stage session.
    #
    # @option params [Boolean] :filter_by_published
    #   Filters the response list to only show participants who published
    #   during the stage session. Only one of `filterByUserId`,
    #   `filterByPublished`, or `filterByState` can be provided per request.
    #
    # @option params [String] :filter_by_state
    #   Filters the response list to only show participants in the specified
    #   state. Only one of `filterByUserId`, `filterByPublished`, or
    #   `filterByState` can be provided per request.
    #
    # @option params [String] :filter_by_user_id
    #   Filters the response list to match the specified user ID. Only one of
    #   `filterByUserId`, `filterByPublished`, or `filterByState` can be
    #   provided per request. A `userId` is a customer-assigned name to help
    #   identify the token; this can be used to link a participant to a user
    #   in the customer’s own systems.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @option params [String] :next_token
    #   The first participant to retrieve. This is used for pagination; see
    #   the `nextToken` response field.
    #
    # @option params [required, String] :session_id
    #   ID of the session within the stage.
    #
    # @option params [required, String] :stage_arn
    #   Stage ARN.
    #
    # @return [Types::ListParticipantsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListParticipantsResponse#next_token #next_token} => String
    #   * {Types::ListParticipantsResponse#participants #participants} => Array&lt;Types::ParticipantSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_participants({
    #     filter_by_published: false,
    #     filter_by_state: "CONNECTED", # accepts CONNECTED, DISCONNECTED
    #     filter_by_user_id: "UserId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     session_id: "StageSessionId", # required
    #     stage_arn: "StageArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.participants #=> Array
    #   resp.participants[0].first_join_time #=> Time
    #   resp.participants[0].participant_id #=> String
    #   resp.participants[0].published #=> Boolean
    #   resp.participants[0].state #=> String, one of "CONNECTED", "DISCONNECTED"
    #   resp.participants[0].user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListParticipants AWS API Documentation
    #
    # @overload list_participants(params = {})
    # @param [Hash] params ({})
    def list_participants(params = {}, options = {})
      req = build_request(:list_participants, params)
      req.send_request(options)
    end

    # Gets all sessions for a specified stage.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @option params [String] :next_token
    #   The first stage to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @option params [required, String] :stage_arn
    #   Stage ARN.
    #
    # @return [Types::ListStageSessionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStageSessionsResponse#next_token #next_token} => String
    #   * {Types::ListStageSessionsResponse#stage_sessions #stage_sessions} => Array&lt;Types::StageSessionSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stage_sessions({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     stage_arn: "StageArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.stage_sessions #=> Array
    #   resp.stage_sessions[0].end_time #=> Time
    #   resp.stage_sessions[0].session_id #=> String
    #   resp.stage_sessions[0].start_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStageSessions AWS API Documentation
    #
    # @overload list_stage_sessions(params = {})
    # @param [Hash] params ({})
    def list_stage_sessions(params = {}, options = {})
      req = build_request(:list_stage_sessions, params)
      req.send_request(options)
    end

    # Gets summary information about all stages in your account, in the AWS
    # region where the API request is processed.
    #
    # @option params [Integer] :max_results
    #   Maximum number of results to return. Default: 50.
    #
    # @option params [String] :next_token
    #   The first stage to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #
    # @return [Types::ListStagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStagesResponse#next_token #next_token} => String
    #   * {Types::ListStagesResponse#stages #stages} => Array&lt;Types::StageSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stages({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.stages #=> Array
    #   resp.stages[0].active_session_id #=> String
    #   resp.stages[0].arn #=> String
    #   resp.stages[0].name #=> String
    #   resp.stages[0].tags #=> Hash
    #   resp.stages[0].tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStages AWS API Documentation
    #
    # @overload list_stages(params = {})
    # @param [Hash] params ({})
    def list_stages(params = {}, options = {})
      req = build_request(:list_stages, params)
      req.send_request(options)
    end

    # Gets information about AWS tags for the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be retrieved. The ARN must be URL-encoded.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Adds or updates tags for the AWS resource with the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be tagged. The ARN must be URL-encoded.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Array of tags to be added or updated. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints beyond what
    #   is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes tags from the resource with the specified ARN.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be untagged. The ARN must be URL-encoded.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Array of tags to be removed. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints beyond what
    #   is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a stage’s configuration.
    #
    # @option params [required, String] :arn
    #   ARN of the stage to be updated.
    #
    # @option params [String] :name
    #   Name of the stage to be updated.
    #
    # @return [Types::UpdateStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStageResponse#stage #stage} => Types::Stage
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage({
    #     arn: "StageArn", # required
    #     name: "StageName",
    #   })
    #
    # @example Response structure
    #
    #   resp.stage.active_session_id #=> String
    #   resp.stage.arn #=> String
    #   resp.stage.name #=> String
    #   resp.stage.tags #=> Hash
    #   resp.stage.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateStage AWS API Documentation
    #
    # @overload update_stage(params = {})
    # @param [Hash] params ({})
    def update_stage(params = {}, options = {})
      req = build_request(:update_stage, params)
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
      context[:gem_name] = 'aws-sdk-ivsrealtime'
      context[:gem_version] = '1.7.0'
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
