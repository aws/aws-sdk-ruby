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

Aws::Plugins::GlobalConfiguration.add_identifier(:connect)

module Aws::Connect
  # An API client for Connect.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Connect::Client.new(
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

    @identifier = :connect

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
    add_plugin(Aws::Connect::Plugins::Endpoints)

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
    #   @option options [Aws::Connect::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Connect::EndpointParameters`
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

    # Activates an evaluation form in the specified Amazon Connect instance.
    # After the evaluation form is activated, it is available to start new
    # evaluations based on the form.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [required, Integer] :evaluation_form_version
    #   The version of the evaluation form to activate. If the version
    #   property is not provided, the latest version of the evaluation form is
    #   activated.
    #
    # @return [Types::ActivateEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateEvaluationFormResponse#evaluation_form_id #evaluation_form_id} => String
    #   * {Types::ActivateEvaluationFormResponse#evaluation_form_arn #evaluation_form_arn} => String
    #   * {Types::ActivateEvaluationFormResponse#evaluation_form_version #evaluation_form_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_id #=> String
    #   resp.evaluation_form_arn #=> String
    #   resp.evaluation_form_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ActivateEvaluationForm AWS API Documentation
    #
    # @overload activate_evaluation_form(params = {})
    # @param [Hash] params ({})
    def activate_evaluation_form(params = {}, options = {})
      req = build_request(:activate_evaluation_form, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Associates an approved origin to an Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :origin
    #   The domain to add to your allow list.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_approved_origin({
    #     instance_id: "InstanceId", # required
    #     origin: "Origin", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateApprovedOrigin AWS API Documentation
    #
    # @overload associate_approved_origin(params = {})
    # @param [Hash] params ({})
    def associate_approved_origin(params = {}, options = {})
      req = build_request(:associate_approved_origin, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Allows the specified Amazon Connect instance to access the specified
    # Amazon Lex or Amazon Lex V2 bot.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Types::LexBot] :lex_bot
    #   Configuration information of an Amazon Lex bot.
    #
    # @option params [Types::LexV2Bot] :lex_v2_bot
    #   The Amazon Lex V2 bot to associate with the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_bot({
    #     instance_id: "InstanceId", # required
    #     lex_bot: {
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #     lex_v2_bot: {
    #       alias_arn: "AliasArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateBot AWS API Documentation
    #
    # @overload associate_bot(params = {})
    # @param [Hash] params ({})
    def associate_bot(params = {}, options = {})
      req = build_request(:associate_bot, params)
      req.send_request(options)
    end

    # Associates an existing vocabulary as the default. Contact Lens for
    # Amazon Connect uses the vocabulary in post-call and real-time analysis
    # sessions for the given language.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #
    # @option params [String] :vocabulary_id
    #   The identifier of the custom vocabulary. If this is empty, the default
    #   is set to none.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_default_vocabulary({
    #     instance_id: "InstanceId", # required
    #     language_code: "ar-AE", # required, accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN, en-NZ, en-ZA
    #     vocabulary_id: "VocabularyId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateDefaultVocabulary AWS API Documentation
    #
    # @overload associate_default_vocabulary(params = {})
    # @param [Hash] params ({})
    def associate_default_vocabulary(params = {}, options = {})
      req = build_request(:associate_default_vocabulary, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Associates a storage resource type for the first time. You can only
    # associate one type of storage configuration in a single call. This
    # means, for example, that you can't define an instance with multiple
    # S3 buckets for storing chat transcripts.
    #
    # This API does not create a resource that doesn't exist. It only
    # associates it to the instance. Ensure that the resource being
    # specified in the storage configuration, like an S3 bucket, exists when
    # being used for association.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @option params [required, Types::InstanceStorageConfig] :storage_config
    #   A valid storage type.
    #
    # @return [Types::AssociateInstanceStorageConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateInstanceStorageConfigResponse#association_id #association_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_instance_storage_config({
    #     instance_id: "InstanceId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS
    #     storage_config: { # required
    #       association_id: "AssociationId",
    #       storage_type: "S3", # required, accepts S3, KINESIS_VIDEO_STREAM, KINESIS_STREAM, KINESIS_FIREHOSE
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "Prefix", # required
    #         encryption_config: {
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: "Prefix", # required
    #         retention_period_hours: 1, # required
    #         encryption_config: { # required
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: "ARN", # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: "ARN", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateInstanceStorageConfig AWS API Documentation
    #
    # @overload associate_instance_storage_config(params = {})
    # @param [Hash] params ({})
    def associate_instance_storage_config(params = {}, options = {})
      req = build_request(:associate_instance_storage_config, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Allows the specified Amazon Connect instance to access the specified
    # Lambda function.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :function_arn
    #   The Amazon Resource Name (ARN) for the Lambda function being
    #   associated. Maximum number of characters allowed is 140.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_lambda_function({
    #     instance_id: "InstanceId", # required
    #     function_arn: "FunctionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateLambdaFunction AWS API Documentation
    #
    # @overload associate_lambda_function(params = {})
    # @param [Hash] params ({})
    def associate_lambda_function(params = {}, options = {})
      req = build_request(:associate_lambda_function, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Allows the specified Amazon Connect instance to access the specified
    # Amazon Lex V1 bot. This API only supports the association of Amazon
    # Lex V1 bots.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Types::LexBot] :lex_bot
    #   The Amazon Lex bot to associate with the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_lex_bot({
    #     instance_id: "InstanceId", # required
    #     lex_bot: { # required
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateLexBot AWS API Documentation
    #
    # @overload associate_lex_bot(params = {})
    # @param [Hash] params ({})
    def associate_lex_bot(params = {}, options = {})
      req = build_request(:associate_lex_bot, params)
      req.send_request(options)
    end

    # Associates a flow with a phone number claimed to your Amazon Connect
    # instance.
    #
    # If the number is claimed to a traffic distribution group, and you are
    # calling this API using an instance in the Amazon Web Services Region
    # where the traffic distribution group was created, you can use either a
    # full phone number ARN or UUID value for the `PhoneNumberId` URI
    # request parameter. However, if the number is claimed to a traffic
    # distribution group and you are calling this API using an instance in
    # the alternate Amazon Web Services Region associated with the traffic
    # distribution group, you must provide a full phone number ARN. If a
    # UUID is provided in this scenario, you will receive a
    # `ResourceNotFoundException`.
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_phone_number_contact_flow({
    #     phone_number_id: "PhoneNumberId", # required
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociatePhoneNumberContactFlow AWS API Documentation
    #
    # @overload associate_phone_number_contact_flow(params = {})
    # @param [Hash] params ({})
    def associate_phone_number_contact_flow(params = {}, options = {})
      req = build_request(:associate_phone_number_contact_flow, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Associates a set of quick connects with a queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, Array<String>] :quick_connect_ids
    #   The quick connects to associate with this queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_queue_quick_connects({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     quick_connect_ids: ["QuickConnectId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateQueueQuickConnects AWS API Documentation
    #
    # @overload associate_queue_quick_connects(params = {})
    # @param [Hash] params ({})
    def associate_queue_quick_connects(params = {}, options = {})
      req = build_request(:associate_queue_quick_connects, params)
      req.send_request(options)
    end

    # Associates a set of queues with a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The queues to associate with this routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_configs: [ # required
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateRoutingProfileQueues AWS API Documentation
    #
    # @overload associate_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def associate_routing_profile_queues(params = {}, options = {})
      req = build_request(:associate_routing_profile_queues, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Associates a security key to the instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :key
    #   A valid security key in PEM format.
    #
    # @return [Types::AssociateSecurityKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateSecurityKeyResponse#association_id #association_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_security_key({
    #     instance_id: "InstanceId", # required
    #     key: "PEM", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.association_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/AssociateSecurityKey AWS API Documentation
    #
    # @overload associate_security_key(params = {})
    # @param [Hash] params ({})
    def associate_security_key(params = {}, options = {})
      req = build_request(:associate_security_key, params)
      req.send_request(options)
    end

    # Claims an available phone number to your Amazon Connect instance or
    # traffic distribution group. You can call this API only in the same
    # Amazon Web Services Region where the Amazon Connect instance or
    # traffic distribution group was created.
    #
    # For more information about how to use this operation, see [Claim a
    # phone number in your country][1] and [Claim phone numbers to traffic
    # distribution groups][2] in the *Amazon Connect Administrator Guide*.
    #
    # You can call the [SearchAvailablePhoneNumbers][3] API for available
    # phone numbers that you can claim. Call the [DescribePhoneNumber][4]
    # API to verify the status of a previous [ClaimPhoneNumber][5]
    # operation.
    #
    # If you plan to claim and release numbers frequently during a 30 day
    # period, contact us for a service quota exception. Otherwise, it is
    # possible you will be blocked from claiming and releasing any more
    # numbers until 30 days past the oldest number released has expired.
    #
    # By default you can claim and release up to 200% of your maximum number
    # of active phone numbers during any 30 day period. If you claim and
    # release phone numbers using the UI or API during a rolling 30 day
    # cycle that exceeds 200% of your phone number service level quota, you
    # will be blocked from claiming any more numbers until 30 days past the
    # oldest number released has expired.
    #
    # For example, if you already have 99 claimed numbers and a service
    # level quota of 99 phone numbers, and in any 30 day period you release
    # 99, claim 99, and then release 99, you will have exceeded the 200%
    # limit. At that point you are blocked from claiming any more numbers
    # until you open an Amazon Web Services support ticket.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-number.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-numbers-traffic-distribution-groups.html
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html
    # [4]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    # [5]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
    #   distribution groups that phone numbers are claimed to.
    #
    # @option params [required, String] :phone_number
    #   The phone number you want to claim. Phone numbers are formatted `[+]
    #   [country code] [subscriber number including area code]`.
    #
    # @option params [String] :phone_number_description
    #   The description of the phone number.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1].
    #
    #   Pattern:
    #   `^[a-f0-9]\{8\}-[a-f0-9]\{4\}-[a-f0-9]\{4\}-[a-f0-9]\{4\}-[a-f0-9]\{12\}$`
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @return [Types::ClaimPhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ClaimPhoneNumberResponse#phone_number_id #phone_number_id} => String
    #   * {Types::ClaimPhoneNumberResponse#phone_number_arn #phone_number_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.claim_phone_number({
    #     target_arn: "ARN", # required
    #     phone_number: "PhoneNumber", # required
    #     phone_number_description: "PhoneNumberDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_id #=> String
    #   resp.phone_number_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ClaimPhoneNumber AWS API Documentation
    #
    # @overload claim_phone_number(params = {})
    # @param [Hash] params ({})
    def claim_phone_number(params = {}, options = {})
      req = build_request(:claim_phone_number, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Creates an agent status for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the status.
    #
    # @option params [String] :description
    #   The description of the status.
    #
    # @option params [required, String] :state
    #   The state of the status.
    #
    # @option params [Integer] :display_order
    #   The display order of the status.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateAgentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAgentStatusResponse#agent_status_arn #agent_status_arn} => String
    #   * {Types::CreateAgentStatusResponse#agent_status_id #agent_status_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent_status({
    #     instance_id: "InstanceId", # required
    #     name: "AgentStatusName", # required
    #     description: "AgentStatusDescription",
    #     state: "ENABLED", # required, accepts ENABLED, DISABLED
    #     display_order: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_status_arn #=> String
    #   resp.agent_status_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateAgentStatus AWS API Documentation
    #
    # @overload create_agent_status(params = {})
    # @param [Hash] params ({})
    def create_agent_status(params = {}, options = {})
      req = build_request(:create_agent_status, params)
      req.send_request(options)
    end

    # Creates a flow for the specified Amazon Connect instance.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :name
    #   The name of the flow.
    #
    # @option params [required, String] :type
    #   The type of the flow. For descriptions of the available types, see
    #   [Choose a flow type][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types
    #
    # @option params [String] :description
    #   The description of the flow.
    #
    # @option params [required, String] :content
    #   The content of the flow.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateContactFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactFlowResponse#contact_flow_id #contact_flow_id} => String
    #   * {Types::CreateContactFlowResponse#contact_flow_arn #contact_flow_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_flow({
    #     instance_id: "InstanceId", # required
    #     name: "ContactFlowName", # required
    #     type: "CONTACT_FLOW", # required, accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER
    #     description: "ContactFlowDescription",
    #     content: "ContactFlowContent", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_id #=> String
    #   resp.contact_flow_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlow AWS API Documentation
    #
    # @overload create_contact_flow(params = {})
    # @param [Hash] params ({})
    def create_contact_flow(params = {}, options = {})
      req = build_request(:create_contact_flow, params)
      req.send_request(options)
    end

    # Creates a flow module for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the flow module.
    #
    # @option params [String] :description
    #   The description of the flow module.
    #
    # @option params [required, String] :content
    #   The content of the flow module.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
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
    # @return [Types::CreateContactFlowModuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateContactFlowModuleResponse#id #id} => String
    #   * {Types::CreateContactFlowModuleResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_contact_flow_module({
    #     instance_id: "InstanceId", # required
    #     name: "ContactFlowModuleName", # required
    #     description: "ContactFlowModuleDescription",
    #     content: "ContactFlowModuleContent", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateContactFlowModule AWS API Documentation
    #
    # @overload create_contact_flow_module(params = {})
    # @param [Hash] params ({})
    def create_contact_flow_module(params = {}, options = {})
      req = build_request(:create_contact_flow_module, params)
      req.send_request(options)
    end

    # Creates an evaluation form in the specified Amazon Connect instance.
    # The form can be used to define questions related to agent performance,
    # and create sections to organize such questions. Question and section
    # identifiers cannot be duplicated within the same evaluation form.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :title
    #   A title of the evaluation form.
    #
    # @option params [String] :description
    #   The description of the evaluation form.
    #
    # @option params [required, Array<Types::EvaluationFormItem>] :items
    #   Items that are part of the evaluation form. The total number of
    #   sections and questions must not exceed 100 each. Questions must be
    #   contained in a section.
    #
    # @option params [Types::EvaluationFormScoringStrategy] :scoring_strategy
    #   A scoring strategy of the evaluation form.
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
    # @return [Types::CreateEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEvaluationFormResponse#evaluation_form_id #evaluation_form_id} => String
    #   * {Types::CreateEvaluationFormResponse#evaluation_form_arn #evaluation_form_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     title: "EvaluationFormTitle", # required
    #     description: "EvaluationFormDescription",
    #     items: [ # required
    #       {
    #         section: {
    #           title: "EvaluationFormSectionTitle", # required
    #           ref_id: "ReferenceId", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           items: { # required
    #             # recursive EvaluationFormItemsList
    #           },
    #           weight: 1.0,
    #         },
    #         question: {
    #           title: "EvaluationFormQuestionTitle", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           ref_id: "ReferenceId", # required
    #           not_applicable_enabled: false,
    #           question_type: "TEXT", # required, accepts TEXT, SINGLESELECT, NUMERIC
    #           question_type_properties: {
    #             numeric: {
    #               min_value: 1, # required
    #               max_value: 1, # required
    #               options: [
    #                 {
    #                   min_value: 1, # required
    #                   max_value: 1, # required
    #                   score: 1,
    #                   automatic_fail: false,
    #                 },
    #               ],
    #               automation: {
    #                 property_value: {
    #                   label: "OVERALL_CUSTOMER_SENTIMENT_SCORE", # required, accepts OVERALL_CUSTOMER_SENTIMENT_SCORE, OVERALL_AGENT_SENTIMENT_SCORE, NON_TALK_TIME, NON_TALK_TIME_PERCENTAGE, NUMBER_OF_INTERRUPTIONS, CONTACT_DURATION, AGENT_INTERACTION_DURATION, CUSTOMER_HOLD_TIME
    #                 },
    #               },
    #             },
    #             single_select: {
    #               options: [ # required
    #                 {
    #                   ref_id: "ReferenceId", # required
    #                   text: "EvaluationFormSingleSelectQuestionOptionText", # required
    #                   score: 1,
    #                   automatic_fail: false,
    #                 },
    #               ],
    #               display_as: "DROPDOWN", # accepts DROPDOWN, RADIO
    #               automation: {
    #                 options: [ # required
    #                   {
    #                     rule_category: {
    #                       category: "SingleSelectQuestionRuleCategoryAutomationLabel", # required
    #                       condition: "PRESENT", # required, accepts PRESENT, NOT_PRESENT
    #                       option_ref_id: "ReferenceId", # required
    #                     },
    #                   },
    #                 ],
    #                 default_option_ref_id: "ReferenceId",
    #               },
    #             },
    #           },
    #           weight: 1.0,
    #         },
    #       },
    #     ],
    #     scoring_strategy: {
    #       mode: "QUESTION_ONLY", # required, accepts QUESTION_ONLY, SECTION_ONLY
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_id #=> String
    #   resp.evaluation_form_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateEvaluationForm AWS API Documentation
    #
    # @overload create_evaluation_form(params = {})
    # @param [Hash] params ({})
    def create_evaluation_form(params = {}, options = {})
      req = build_request(:create_evaluation_form, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Creates hours of operation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the hours of operation.
    #
    # @option params [String] :description
    #   The description of the hours of operation.
    #
    # @option params [required, String] :time_zone
    #   The time zone of the hours of operation.
    #
    # @option params [required, Array<Types::HoursOfOperationConfig>] :config
    #   Configuration information for the hours of operation: day, start time,
    #   and end time.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateHoursOfOperationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateHoursOfOperationResponse#hours_of_operation_id #hours_of_operation_id} => String
    #   * {Types::CreateHoursOfOperationResponse#hours_of_operation_arn #hours_of_operation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "HoursOfOperationDescription",
    #     time_zone: "TimeZone", # required
    #     config: [ # required
    #       {
    #         day: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         start_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation_id #=> String
    #   resp.hours_of_operation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateHoursOfOperation AWS API Documentation
    #
    # @overload create_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def create_hours_of_operation(params = {}, options = {})
      req = build_request(:create_hours_of_operation, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Initiates an Amazon Connect instance with all the supported channels
    # enabled. It does not attach any storage, such as Amazon Simple Storage
    # Service (Amazon S3) or Amazon Kinesis. It also does not allow for any
    # configurations on features, such as Contact Lens for Amazon Connect.
    #
    # Amazon Connect enforces a limit on the total number of instances that
    # you can create or delete in 30 days. If you exceed this limit, you
    # will get an error message indicating there has been an excessive
    # number of attempts at creating or deleting instances. You must wait 30
    # days before you can restart creating and deleting instances in your
    # account.
    #
    # @option params [String] :client_token
    #   The idempotency token.
    #
    # @option params [required, String] :identity_management_type
    #   The type of identity management for your Amazon Connect users.
    #
    # @option params [String] :instance_alias
    #   The name for your instance.
    #
    # @option params [String] :directory_id
    #   The identifier for the directory.
    #
    # @option params [required, Boolean] :inbound_calls_enabled
    #   Your contact center handles incoming contacts.
    #
    # @option params [required, Boolean] :outbound_calls_enabled
    #   Your contact center allows outbound calls.
    #
    # @return [Types::CreateInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateInstanceResponse#id #id} => String
    #   * {Types::CreateInstanceResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance({
    #     client_token: "ClientToken",
    #     identity_management_type: "SAML", # required, accepts SAML, CONNECT_MANAGED, EXISTING_DIRECTORY
    #     instance_alias: "DirectoryAlias",
    #     directory_id: "DirectoryId",
    #     inbound_calls_enabled: false, # required
    #     outbound_calls_enabled: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateInstance AWS API Documentation
    #
    # @overload create_instance(params = {})
    # @param [Hash] params ({})
    def create_instance(params = {}, options = {})
      req = build_request(:create_instance, params)
      req.send_request(options)
    end

    # Creates an Amazon Web Services resource association with an Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_type
    #   The type of information to be ingested.
    #
    # @option params [required, String] :integration_arn
    #   The Amazon Resource Name (ARN) of the integration.
    #
    #   <note markdown="1"> When integrating with Amazon Pinpoint, the Amazon Connect and Amazon
    #   Pinpoint instances must be in the same account.
    #
    #    </note>
    #
    # @option params [String] :source_application_url
    #   The URL for the external application. This field is only required for
    #   the EVENT integration type.
    #
    # @option params [String] :source_application_name
    #   The name of the external application. This field is only required for
    #   the EVENT integration type.
    #
    # @option params [String] :source_type
    #   The type of the data source. This field is only required for the EVENT
    #   integration type.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateIntegrationAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntegrationAssociationResponse#integration_association_id #integration_association_id} => String
    #   * {Types::CreateIntegrationAssociationResponse#integration_association_arn #integration_association_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_integration_association({
    #     instance_id: "InstanceId", # required
    #     integration_type: "EVENT", # required, accepts EVENT, VOICE_ID, PINPOINT_APP, WISDOM_ASSISTANT, WISDOM_KNOWLEDGE_BASE, CASES_DOMAIN
    #     integration_arn: "ARN", # required
    #     source_application_url: "URI",
    #     source_application_name: "SourceApplicationName",
    #     source_type: "SALESFORCE", # accepts SALESFORCE, ZENDESK
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_association_id #=> String
    #   resp.integration_association_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateIntegrationAssociation AWS API Documentation
    #
    # @overload create_integration_association(params = {})
    # @param [Hash] params ({})
    def create_integration_association(params = {}, options = {})
      req = build_request(:create_integration_association, params)
      req.send_request(options)
    end

    # Adds a new participant into an on-going chat contact. For more
    # information, see [Customize chat flow experiences by integrating
    # custom participants][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect. Only
    #   contacts in the CHAT channel are supported.
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
    # @option params [required, Types::ParticipantDetailsToAdd] :participant_details
    #   Information identifying the participant.
    #
    #   The only Valid value for `ParticipantRole` is `CUSTOM_BOT`.
    #
    #    `DisplayName` is **Required**.
    #
    # @return [Types::CreateParticipantResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParticipantResponse#participant_credentials #participant_credentials} => Types::ParticipantTokenCredentials
    #   * {Types::CreateParticipantResponse#participant_id #participant_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_participant({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     client_token: "ClientToken",
    #     participant_details: { # required
    #       participant_role: "AGENT", # accepts AGENT, CUSTOMER, SYSTEM, CUSTOM_BOT
    #       display_name: "DisplayName",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.participant_credentials.participant_token #=> String
    #   resp.participant_credentials.expiry #=> String
    #   resp.participant_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateParticipant AWS API Documentation
    #
    # @overload create_participant(params = {})
    # @param [Hash] params ({})
    def create_participant(params = {}, options = {})
      req = build_request(:create_participant, params)
      req.send_request(options)
    end

    # Creates a prompt. For more information about prompts, such as
    # supported file types and maximum length, see [Create prompts][1] in
    # the *Amazon Connect Administrator's Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/prompts.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the prompt.
    #
    # @option params [String] :description
    #   The description of the prompt.
    #
    # @option params [required, String] :s3_uri
    #   The URI for the S3 bucket where the prompt is stored.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreatePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePromptResponse#prompt_arn #prompt_arn} => String
    #   * {Types::CreatePromptResponse#prompt_id #prompt_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_prompt({
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "PromptDescription",
    #     s3_uri: "S3Uri", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_arn #=> String
    #   resp.prompt_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreatePrompt AWS API Documentation
    #
    # @overload create_prompt(params = {})
    # @param [Hash] params ({})
    def create_prompt(params = {}, options = {})
      req = build_request(:create_prompt, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Creates a new queue for the specified Amazon Connect instance.
    #
    # If the number being used in the input is claimed to a traffic
    # distribution group, and you are calling this API using an instance in
    # the Amazon Web Services Region where the traffic distribution group
    # was created, you can use either a full phone number ARN or UUID value
    # for the `OutboundCallerIdNumberId` value of the
    # [OutboundCallerConfig][1] request body parameter. However, if the
    # number is claimed to a traffic distribution group and you are calling
    # this API using an instance in the alternate Amazon Web Services Region
    # associated with the traffic distribution group, you must provide a
    # full phone number ARN. If a UUID is provided in this scenario, you
    # will receive a `ResourceNotFoundException`.
    #
    #  Only use the phone number ARN format that doesn't contain `instance`
    # in the path, for example,
    # `arn:aws:connect:us-east-1:1234567890:phone-number/uuid`. This is the
    # same ARN format that is returned when you call the
    # [ListPhoneNumbersV2][2] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_OutboundCallerConfig
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the queue.
    #
    # @option params [String] :description
    #   The description of the queue.
    #
    # @option params [Types::OutboundCallerConfig] :outbound_caller_config
    #   The outbound caller ID name, number, and outbound whisper flow.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @option params [Integer] :max_contacts
    #   The maximum number of contacts that can be in the queue before it is
    #   considered full.
    #
    # @option params [Array<String>] :quick_connect_ids
    #   The quick connects available to agents who are working the queue.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQueueResponse#queue_arn #queue_arn} => String
    #   * {Types::CreateQueueResponse#queue_id #queue_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_queue({
    #     instance_id: "InstanceId", # required
    #     name: "CommonNameLength127", # required
    #     description: "QueueDescription",
    #     outbound_caller_config: {
    #       outbound_caller_id_name: "OutboundCallerIdName",
    #       outbound_caller_id_number_id: "PhoneNumberId",
    #       outbound_flow_id: "ContactFlowId",
    #     },
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     max_contacts: 1,
    #     quick_connect_ids: ["QuickConnectId"],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_arn #=> String
    #   resp.queue_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateQueue AWS API Documentation
    #
    # @overload create_queue(params = {})
    # @param [Hash] params ({})
    def create_queue(params = {}, options = {})
      req = build_request(:create_queue, params)
      req.send_request(options)
    end

    # Creates a quick connect for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the quick connect.
    #
    # @option params [String] :description
    #   The description of the quick connect.
    #
    # @option params [required, Types::QuickConnectConfig] :quick_connect_config
    #   Configuration settings for the quick connect.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateQuickConnectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateQuickConnectResponse#quick_connect_arn #quick_connect_arn} => String
    #   * {Types::CreateQuickConnectResponse#quick_connect_id #quick_connect_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_quick_connect({
    #     instance_id: "InstanceId", # required
    #     name: "QuickConnectName", # required
    #     description: "QuickConnectDescription",
    #     quick_connect_config: { # required
    #       quick_connect_type: "USER", # required, accepts USER, QUEUE, PHONE_NUMBER
    #       user_config: {
    #         user_id: "UserId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       queue_config: {
    #         queue_id: "QueueId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       phone_config: {
    #         phone_number: "PhoneNumber", # required
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_connect_arn #=> String
    #   resp.quick_connect_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateQuickConnect AWS API Documentation
    #
    # @overload create_quick_connect(params = {})
    # @param [Hash] params ({})
    def create_quick_connect(params = {}, options = {})
      req = build_request(:create_quick_connect, params)
      req.send_request(options)
    end

    # Creates a new routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the routing profile. Must not be more than 127 characters.
    #
    # @option params [required, String] :description
    #   Description of the routing profile. Must not be more than 250
    #   characters.
    #
    # @option params [required, String] :default_outbound_queue_id
    #   The default outbound queue for the routing profile.
    #
    # @option params [Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The inbound queues associated with the routing profile. If no queue is
    #   added, the agent can make only outbound calls.
    #
    #   The limit of 10 array members applies to the maximum number of
    #   `RoutingProfileQueueConfig` objects that can be passed during a
    #   CreateRoutingProfile API request. It is different from the quota of 50
    #   queues per routing profile per instance that is listed in [Amazon
    #   Connect service quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    #
    # @option params [required, Array<Types::MediaConcurrency>] :media_concurrencies
    #   The channels that agents can handle in the Contact Control Panel (CCP)
    #   for this routing profile.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateRoutingProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoutingProfileResponse#routing_profile_arn #routing_profile_arn} => String
    #   * {Types::CreateRoutingProfileResponse#routing_profile_id #routing_profile_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_routing_profile({
    #     instance_id: "InstanceId", # required
    #     name: "RoutingProfileName", # required
    #     description: "RoutingProfileDescription", # required
    #     default_outbound_queue_id: "QueueId", # required
    #     queue_configs: [
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #     media_concurrencies: [ # required
    #       {
    #         channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #         concurrency: 1, # required
    #         cross_channel_behavior: {
    #           behavior_type: "ROUTE_CURRENT_CHANNEL_ONLY", # required, accepts ROUTE_CURRENT_CHANNEL_ONLY, ROUTE_ANY_CHANNEL
    #         },
    #       },
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile_arn #=> String
    #   resp.routing_profile_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRoutingProfile AWS API Documentation
    #
    # @overload create_routing_profile(params = {})
    # @param [Hash] params ({})
    def create_routing_profile(params = {}, options = {})
      req = build_request(:create_routing_profile, params)
      req.send_request(options)
    end

    # Creates a rule for the specified Amazon Connect instance.
    #
    # Use the [Rules Function language][1] to code conditions for the rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   A unique name for the rule.
    #
    # @option params [required, Types::RuleTriggerEventSource] :trigger_event_source
    #   The event source to trigger the rule.
    #
    # @option params [required, String] :function
    #   The conditions of the rule.
    #
    # @option params [required, Array<Types::RuleAction>] :actions
    #   A list of actions to be run when the rule is triggered.
    #
    # @option params [required, String] :publish_status
    #   The publish status of the rule.
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
    # @return [Types::CreateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleResponse#rule_arn #rule_arn} => String
    #   * {Types::CreateRuleResponse#rule_id #rule_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     instance_id: "InstanceId", # required
    #     name: "RuleName", # required
    #     trigger_event_source: { # required
    #       event_source_name: "OnPostCallAnalysisAvailable", # required, accepts OnPostCallAnalysisAvailable, OnRealTimeCallAnalysisAvailable, OnPostChatAnalysisAvailable, OnZendeskTicketCreate, OnZendeskTicketStatusUpdate, OnSalesforceCaseCreate, OnContactEvaluationSubmit
    #       integration_association_id: "IntegrationAssociationId",
    #     },
    #     function: "RuleFunction", # required
    #     actions: [ # required
    #       {
    #         action_type: "CREATE_TASK", # required, accepts CREATE_TASK, ASSIGN_CONTACT_CATEGORY, GENERATE_EVENTBRIDGE_EVENT, SEND_NOTIFICATION
    #         task_action: {
    #           name: "TaskNameExpression", # required
    #           description: "TaskDescriptionExpression",
    #           contact_flow_id: "ContactFlowId", # required
    #           references: {
    #             "ReferenceKey" => {
    #               value: "ReferenceValue", # required
    #               type: "URL", # required, accepts URL, ATTACHMENT, NUMBER, STRING, DATE, EMAIL
    #             },
    #           },
    #         },
    #         event_bridge_action: {
    #           name: "EventBridgeActionName", # required
    #         },
    #         assign_contact_category_action: {
    #         },
    #         send_notification_action: {
    #           delivery_method: "EMAIL", # required, accepts EMAIL
    #           subject: "Subject",
    #           content: "Content", # required
    #           content_type: "PLAIN_TEXT", # required, accepts PLAIN_TEXT
    #           recipient: { # required
    #             user_tags: {
    #               "String" => "String",
    #             },
    #             user_ids: ["UserId"],
    #           },
    #         },
    #       },
    #     ],
    #     publish_status: "DRAFT", # required, accepts DRAFT, PUBLISHED
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Creates a security profile.
    #
    # @option params [required, String] :security_profile_name
    #   The name of the security profile.
    #
    # @option params [String] :description
    #   The description of the security profile.
    #
    # @option params [Array<String>] :permissions
    #   Permissions assigned to the security profile. For a list of valid
    #   permissions, see [List of security profile permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @option params [Hash<String,String>] :allowed_access_control_tags
    #   The list of tags that a security profile uses to restrict access to
    #   resources in Amazon Connect.
    #
    # @option params [Array<String>] :tag_restricted_resources
    #   The list of resources that a security profile applies tag restrictions
    #   to in Amazon Connect. Following are acceptable ResourceNames: `User`
    #   \| `SecurityProfile` \| `Queue` \| `RoutingProfile`
    #
    # @return [Types::CreateSecurityProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecurityProfileResponse#security_profile_id #security_profile_id} => String
    #   * {Types::CreateSecurityProfileResponse#security_profile_arn #security_profile_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_security_profile({
    #     security_profile_name: "CreateSecurityProfileName", # required
    #     description: "SecurityProfileDescription",
    #     permissions: ["SecurityProfilePermission"],
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     allowed_access_control_tags: {
    #       "SecurityProfilePolicyKey" => "SecurityProfilePolicyValue",
    #     },
    #     tag_restricted_resources: ["TagRestrictedResourceName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_id #=> String
    #   resp.security_profile_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateSecurityProfile AWS API Documentation
    #
    # @overload create_security_profile(params = {})
    # @param [Hash] params ({})
    def create_security_profile(params = {}, options = {})
      req = build_request(:create_security_profile, params)
      req.send_request(options)
    end

    # Creates a new task template in the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the task template.
    #
    # @option params [String] :description
    #   The description of the task template.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow that runs by default when a task is created
    #   by referencing this template.
    #
    # @option params [Types::TaskTemplateConstraints] :constraints
    #   Constraints that are applicable to the fields listed.
    #
    # @option params [Types::TaskTemplateDefaults] :defaults
    #   The default values for fields when a task is created by referencing
    #   this template.
    #
    # @option params [String] :status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to it.
    #   Tasks can only be created from `ACTIVE` templates. If a template is
    #   marked as `INACTIVE`, then a task that refers to this template cannot
    #   be created.
    #
    # @option params [required, Array<Types::TaskTemplateField>] :fields
    #   Fields that are part of the template.
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
    # @return [Types::CreateTaskTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTaskTemplateResponse#id #id} => String
    #   * {Types::CreateTaskTemplateResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task_template({
    #     instance_id: "InstanceId", # required
    #     name: "TaskTemplateName", # required
    #     description: "TaskTemplateDescription",
    #     contact_flow_id: "ContactFlowId",
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #       read_only_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #       invisible_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #           default_value: "TaskTemplateFieldValue",
    #         },
    #       ],
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     fields: [ # required
    #       {
    #         id: { # required
    #           name: "TaskTemplateFieldName",
    #         },
    #         description: "TaskTemplateFieldDescription",
    #         type: "NAME", # accepts NAME, DESCRIPTION, SCHEDULED_TIME, QUICK_CONNECT, URL, NUMBER, TEXT, TEXT_AREA, DATE_TIME, BOOLEAN, SINGLE_SELECT, EMAIL
    #         single_select_options: ["TaskTemplateSingleSelectOption"],
    #       },
    #     ],
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateTaskTemplate AWS API Documentation
    #
    # @overload create_task_template(params = {})
    # @param [Hash] params ({})
    def create_task_template(params = {}, options = {})
      req = build_request(:create_task_template, params)
      req.send_request(options)
    end

    # Creates a traffic distribution group given an Amazon Connect instance
    # that has been replicated.
    #
    # For more information about creating traffic distribution groups, see
    # [Set up traffic distribution groups][1] in the *Amazon Connect
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-traffic-distribution-groups.html
    #
    # @option params [required, String] :name
    #   The name for the traffic distribution group.
    #
    # @option params [String] :description
    #   A description for the traffic distribution group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance that has been
    #   replicated. You can find the `instanceId` in the ARN of the instance.
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
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateTrafficDistributionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTrafficDistributionGroupResponse#id #id} => String
    #   * {Types::CreateTrafficDistributionGroupResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_traffic_distribution_group({
    #     name: "Name128", # required
    #     description: "Description250",
    #     instance_id: "InstanceIdOrArn", # required
    #     client_token: "ClientToken",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateTrafficDistributionGroup AWS API Documentation
    #
    # @overload create_traffic_distribution_group(params = {})
    # @param [Hash] params ({})
    def create_traffic_distribution_group(params = {}, options = {})
      req = build_request(:create_traffic_distribution_group, params)
      req.send_request(options)
    end

    # Creates a use case for an integration association.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_association_id
    #   The identifier for the integration association.
    #
    # @option params [required, String] :use_case_type
    #   The type of use case to associate to the integration association. Each
    #   integration association can have only one of each use case type.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateUseCaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUseCaseResponse#use_case_id #use_case_id} => String
    #   * {Types::CreateUseCaseResponse#use_case_arn #use_case_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_use_case({
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     use_case_type: "RULES_EVALUATION", # required, accepts RULES_EVALUATION, CONNECT_CAMPAIGNS
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.use_case_id #=> String
    #   resp.use_case_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUseCase AWS API Documentation
    #
    # @overload create_use_case(params = {})
    # @param [Hash] params ({})
    def create_use_case(params = {}, options = {})
      req = build_request(:create_use_case, params)
      req.send_request(options)
    end

    # Creates a user account for the specified Amazon Connect instance.
    #
    # For information about how to create user accounts using the Amazon
    # Connect console, see [Add Users][1] in the *Amazon Connect
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html
    #
    # @option params [required, String] :username
    #   The user name for the account. For instances not using SAML for
    #   identity management, the user name can include up to 20 characters. If
    #   you are using SAML for identity management, the user name can include
    #   up to 64 characters from \[a-zA-Z0-9\_-.\\@\]+.
    #
    # @option params [String] :password
    #   The password for the user account. A password is required if you are
    #   using Amazon Connect for identity management. Otherwise, it is an
    #   error to include a password.
    #
    # @option params [Types::UserIdentityInfo] :identity_info
    #   The information about the identity of the user.
    #
    # @option params [required, Types::UserPhoneConfig] :phone_config
    #   The phone settings for the user.
    #
    # @option params [String] :directory_user_id
    #   The identifier of the user account in the directory used for identity
    #   management. If Amazon Connect cannot access the directory, you can
    #   specify this identifier to authenticate users. If you include the
    #   identifier, we assume that Amazon Connect cannot access the directory.
    #   Otherwise, the identity information is used to authenticate users from
    #   your directory.
    #
    #   This parameter is required if you are using an existing directory for
    #   identity management in Amazon Connect when Amazon Connect cannot
    #   access your directory to authenticate users. If you are using SAML for
    #   identity management and include this parameter, an error is returned.
    #
    # @option params [required, Array<String>] :security_profile_ids
    #   The identifier of the security profile for the user.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile for the user.
    #
    # @option params [String] :hierarchy_group_id
    #   The identifier of the hierarchy group for the user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user_id #user_id} => String
    #   * {Types::CreateUserResponse#user_arn #user_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     username: "AgentUsername", # required
    #     password: "Password",
    #     identity_info: {
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #       secondary_email: "Email",
    #       mobile: "PhoneNumber",
    #     },
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber",
    #     },
    #     directory_user_id: "DirectoryUserId",
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     hierarchy_group_id: "HierarchyGroupId",
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.user_id #=> String
    #   resp.user_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Creates a new user hierarchy group.
    #
    # @option params [required, String] :name
    #   The name of the user hierarchy group. Must not be more than 100
    #   characters.
    #
    # @option params [String] :parent_group_id
    #   The identifier for the parent hierarchy group. The user hierarchy is
    #   created at level one if the parent group ID is null.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateUserHierarchyGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserHierarchyGroupResponse#hierarchy_group_id #hierarchy_group_id} => String
    #   * {Types::CreateUserHierarchyGroupResponse#hierarchy_group_arn #hierarchy_group_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_hierarchy_group({
    #     name: "HierarchyGroupName", # required
    #     parent_group_id: "HierarchyGroupId",
    #     instance_id: "InstanceId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_group_id #=> String
    #   resp.hierarchy_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateUserHierarchyGroup AWS API Documentation
    #
    # @overload create_user_hierarchy_group(params = {})
    # @param [Hash] params ({})
    def create_user_hierarchy_group(params = {}, options = {})
      req = build_request(:create_user_hierarchy_group, params)
      req.send_request(options)
    end

    # Creates a custom vocabulary associated with your Amazon Connect
    # instance. You can set a custom vocabulary to be your default
    # vocabulary for a given language. Contact Lens for Amazon Connect uses
    # the default vocabulary in post-call and real-time contact analysis
    # sessions for that language.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]. If a create request is
    #   received more than once with same client token, subsequent requests
    #   return the previous response without creating a vocabulary again.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :vocabulary_name
    #   A unique name of the custom vocabulary.
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #
    # @option params [required, String] :content
    #   The content of the custom vocabulary in plain-text format with a table
    #   of values. Each row in the table represents a word or a phrase,
    #   described with `Phrase`, `IPA`, `SoundsLike`, and `DisplayAs` fields.
    #   Separate the fields with TAB characters. The size limit is 50KB. For
    #   more information, see [Create a custom vocabulary using a table][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table
    #
    # @option params [Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Types::CreateVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVocabularyResponse#vocabulary_arn #vocabulary_arn} => String
    #   * {Types::CreateVocabularyResponse#vocabulary_id #vocabulary_id} => String
    #   * {Types::CreateVocabularyResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary({
    #     client_token: "ClientToken",
    #     instance_id: "InstanceId", # required
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "ar-AE", # required, accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN, en-NZ, en-ZA
    #     content: "VocabularyContent", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_arn #=> String
    #   resp.vocabulary_id #=> String
    #   resp.state #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/CreateVocabulary AWS API Documentation
    #
    # @overload create_vocabulary(params = {})
    # @param [Hash] params ({})
    def create_vocabulary(params = {}, options = {})
      req = build_request(:create_vocabulary, params)
      req.send_request(options)
    end

    # Deactivates an evaluation form in the specified Amazon Connect
    # instance. After a form is deactivated, it is no longer available for
    # users to start new evaluations based on the form.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [required, Integer] :evaluation_form_version
    #   A version of the evaluation form. If the version property is not
    #   provided, the latest version of the evaluation form is deactivated.
    #
    # @return [Types::DeactivateEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeactivateEvaluationFormResponse#evaluation_form_id #evaluation_form_id} => String
    #   * {Types::DeactivateEvaluationFormResponse#evaluation_form_arn #evaluation_form_arn} => String
    #   * {Types::DeactivateEvaluationFormResponse#evaluation_form_version #evaluation_form_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_id #=> String
    #   resp.evaluation_form_arn #=> String
    #   resp.evaluation_form_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeactivateEvaluationForm AWS API Documentation
    #
    # @overload deactivate_evaluation_form(params = {})
    # @param [Hash] params ({})
    def deactivate_evaluation_form(params = {}, options = {})
      req = build_request(:deactivate_evaluation_form, params)
      req.send_request(options)
    end

    # Deletes a contact evaluation in the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_id
    #   A unique identifier for the contact evaluation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactEvaluation AWS API Documentation
    #
    # @overload delete_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def delete_contact_evaluation(params = {}, options = {})
      req = build_request(:delete_contact_evaluation, params)
      req.send_request(options)
    end

    # Deletes a flow for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_flow({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlow AWS API Documentation
    #
    # @overload delete_contact_flow(params = {})
    # @param [Hash] params ({})
    def delete_contact_flow(params = {}, options = {})
      req = build_request(:delete_contact_flow, params)
      req.send_request(options)
    end

    # Deletes the specified flow module.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_module_id
    #   The identifier of the flow module.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_contact_flow_module({
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteContactFlowModule AWS API Documentation
    #
    # @overload delete_contact_flow_module(params = {})
    # @param [Hash] params ({})
    def delete_contact_flow_module(params = {}, options = {})
      req = build_request(:delete_contact_flow_module, params)
      req.send_request(options)
    end

    # Deletes an evaluation form in the specified Amazon Connect instance.
    #
    # * If the version property is provided, only the specified version of
    #   the evaluation form is deleted.
    #
    # * If no version is provided, then the full form (all versions) is
    #   deleted.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [Integer] :evaluation_form_version
    #   The unique identifier for the evaluation form.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteEvaluationForm AWS API Documentation
    #
    # @overload delete_evaluation_form(params = {})
    # @param [Hash] params ({})
    def delete_evaluation_form(params = {}, options = {})
      req = build_request(:delete_evaluation_form, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Deletes an hours of operation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteHoursOfOperation AWS API Documentation
    #
    # @overload delete_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def delete_hours_of_operation(params = {}, options = {})
      req = build_request(:delete_hours_of_operation, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Deletes the Amazon Connect instance.
    #
    # Amazon Connect enforces a limit on the total number of instances that
    # you can create or delete in 30 days. If you exceed this limit, you
    # will get an error message indicating there has been an excessive
    # number of attempts at creating or deleting instances. You must wait 30
    # days before you can restart creating and deleting instances in your
    # account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteInstance AWS API Documentation
    #
    # @overload delete_instance(params = {})
    # @param [Hash] params ({})
    def delete_instance(params = {}, options = {})
      req = build_request(:delete_instance, params)
      req.send_request(options)
    end

    # Deletes an Amazon Web Services resource association from an Amazon
    # Connect instance. The association must not have any use cases
    # associated with it.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_association_id
    #   The identifier for the integration association.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_integration_association({
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteIntegrationAssociation AWS API Documentation
    #
    # @overload delete_integration_association(params = {})
    # @param [Hash] params ({})
    def delete_integration_association(params = {}, options = {})
      req = build_request(:delete_integration_association, params)
      req.send_request(options)
    end

    # Deletes a prompt.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :prompt_id
    #   A unique identifier for the prompt.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_prompt({
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeletePrompt AWS API Documentation
    #
    # @overload delete_prompt(params = {})
    # @param [Hash] params ({})
    def delete_prompt(params = {}, options = {})
      req = build_request(:delete_prompt, params)
      req.send_request(options)
    end

    # Deletes a queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queue({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteQueue AWS API Documentation
    #
    # @overload delete_queue(params = {})
    # @param [Hash] params ({})
    def delete_queue(params = {}, options = {})
      req = build_request(:delete_queue, params)
      req.send_request(options)
    end

    # Deletes a quick connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_quick_connect({
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteQuickConnect AWS API Documentation
    #
    # @overload delete_quick_connect(params = {})
    # @param [Hash] params ({})
    def delete_quick_connect(params = {}, options = {})
      req = build_request(:delete_quick_connect, params)
      req.send_request(options)
    end

    # Deletes a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_routing_profile({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteRoutingProfile AWS API Documentation
    #
    # @overload delete_routing_profile(params = {})
    # @param [Hash] params ({})
    def delete_routing_profile(params = {}, options = {})
      req = build_request(:delete_routing_profile, params)
      req.send_request(options)
    end

    # Deletes a rule for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :rule_id
    #   A unique identifier for the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     instance_id: "InstanceId", # required
    #     rule_id: "RuleId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Deletes a security profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_security_profile({
    #     instance_id: "InstanceId", # required
    #     security_profile_id: "SecurityProfileId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteSecurityProfile AWS API Documentation
    #
    # @overload delete_security_profile(params = {})
    # @param [Hash] params ({})
    def delete_security_profile(params = {}, options = {})
      req = build_request(:delete_security_profile, params)
      req.send_request(options)
    end

    # Deletes the task template.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :task_template_id
    #   A unique identifier for the task template.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task_template({
    #     instance_id: "InstanceId", # required
    #     task_template_id: "TaskTemplateId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteTaskTemplate AWS API Documentation
    #
    # @overload delete_task_template(params = {})
    # @param [Hash] params ({})
    def delete_task_template(params = {}, options = {})
      req = build_request(:delete_task_template, params)
      req.send_request(options)
    end

    # Deletes a traffic distribution group. This API can be called only in
    # the Region where the traffic distribution group is created.
    #
    # For more information about deleting traffic distribution groups, see
    # [Delete traffic distribution groups][1] in the *Amazon Connect
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/delete-traffic-distribution-groups.html
    #
    # @option params [required, String] :traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the traffic
    #   distribution group was created. The ARN must be provided if the call
    #   is from the replicated Region.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_traffic_distribution_group({
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteTrafficDistributionGroup AWS API Documentation
    #
    # @overload delete_traffic_distribution_group(params = {})
    # @param [Hash] params ({})
    def delete_traffic_distribution_group(params = {}, options = {})
      req = build_request(:delete_traffic_distribution_group, params)
      req.send_request(options)
    end

    # Deletes a use case from an integration association.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_association_id
    #   The identifier for the integration association.
    #
    # @option params [required, String] :use_case_id
    #   The identifier for the use case.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_use_case({
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     use_case_id: "UseCaseId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUseCase AWS API Documentation
    #
    # @overload delete_use_case(params = {})
    # @param [Hash] params ({})
    def delete_use_case(params = {}, options = {})
      req = build_request(:delete_use_case, params)
      req.send_request(options)
    end

    # Deletes a user account from the specified Amazon Connect instance.
    #
    # For information about what happens to a user's data when their
    # account is deleted, see [Delete Users from Your Amazon Connect
    # Instance][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     instance_id: "InstanceId", # required
    #     user_id: "UserId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Deletes an existing user hierarchy group. It must not be associated
    # with any agents or have any active child groups.
    #
    # @option params [required, String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_hierarchy_group({
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteUserHierarchyGroup AWS API Documentation
    #
    # @overload delete_user_hierarchy_group(params = {})
    # @param [Hash] params ({})
    def delete_user_hierarchy_group(params = {}, options = {})
      req = build_request(:delete_user_hierarchy_group, params)
      req.send_request(options)
    end

    # Deletes the vocabulary that has the given identifier.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :vocabulary_id
    #   The identifier of the custom vocabulary.
    #
    # @return [Types::DeleteVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVocabularyResponse#vocabulary_arn #vocabulary_arn} => String
    #   * {Types::DeleteVocabularyResponse#vocabulary_id #vocabulary_id} => String
    #   * {Types::DeleteVocabularyResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary({
    #     instance_id: "InstanceId", # required
    #     vocabulary_id: "VocabularyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_arn #=> String
    #   resp.vocabulary_id #=> String
    #   resp.state #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DeleteVocabulary AWS API Documentation
    #
    # @overload delete_vocabulary(params = {})
    # @param [Hash] params ({})
    def delete_vocabulary(params = {}, options = {})
      req = build_request(:delete_vocabulary, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Describes an agent status.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :agent_status_id
    #   The identifier for the agent status.
    #
    # @return [Types::DescribeAgentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAgentStatusResponse#agent_status #agent_status} => Types::AgentStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agent_status({
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.agent_status.agent_status_arn #=> String
    #   resp.agent_status.agent_status_id #=> String
    #   resp.agent_status.name #=> String
    #   resp.agent_status.description #=> String
    #   resp.agent_status.type #=> String, one of "ROUTABLE", "CUSTOM", "OFFLINE"
    #   resp.agent_status.display_order #=> Integer
    #   resp.agent_status.state #=> String, one of "ENABLED", "DISABLED"
    #   resp.agent_status.tags #=> Hash
    #   resp.agent_status.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeAgentStatus AWS API Documentation
    #
    # @overload describe_agent_status(params = {})
    # @param [Hash] params ({})
    def describe_agent_status(params = {}, options = {})
      req = build_request(:describe_agent_status, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Describes the specified contact.
    #
    # Contact information remains available in Amazon Connect for 24 months,
    # and then it is deleted.
    #
    #  Only data from November 12, 2021, and later is returned by this API.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @return [Types::DescribeContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactResponse#contact #contact} => Types::Contact
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact.arn #=> String
    #   resp.contact.id #=> String
    #   resp.contact.initial_contact_id #=> String
    #   resp.contact.previous_contact_id #=> String
    #   resp.contact.initiation_method #=> String, one of "INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND"
    #   resp.contact.name #=> String
    #   resp.contact.description #=> String
    #   resp.contact.channel #=> String, one of "VOICE", "CHAT", "TASK"
    #   resp.contact.queue_info.id #=> String
    #   resp.contact.queue_info.enqueue_timestamp #=> Time
    #   resp.contact.agent_info.id #=> String
    #   resp.contact.agent_info.connected_to_agent_timestamp #=> Time
    #   resp.contact.initiation_timestamp #=> Time
    #   resp.contact.disconnect_timestamp #=> Time
    #   resp.contact.last_update_timestamp #=> Time
    #   resp.contact.scheduled_timestamp #=> Time
    #   resp.contact.related_contact_id #=> String
    #   resp.contact.wisdom_info.session_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContact AWS API Documentation
    #
    # @overload describe_contact(params = {})
    # @param [Hash] params ({})
    def describe_contact(params = {}, options = {})
      req = build_request(:describe_contact, params)
      req.send_request(options)
    end

    # Describes a contact evaluation in the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_id
    #   A unique identifier for the contact evaluation.
    #
    # @return [Types::DescribeContactEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactEvaluationResponse#evaluation #evaluation} => Types::Evaluation
    #   * {Types::DescribeContactEvaluationResponse#evaluation_form #evaluation_form} => Types::EvaluationFormContent
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation.evaluation_id #=> String
    #   resp.evaluation.evaluation_arn #=> String
    #   resp.evaluation.metadata.contact_id #=> String
    #   resp.evaluation.metadata.evaluator_arn #=> String
    #   resp.evaluation.metadata.contact_agent_id #=> String
    #   resp.evaluation.metadata.score.percentage #=> Float
    #   resp.evaluation.metadata.score.not_applicable #=> Boolean
    #   resp.evaluation.metadata.score.automatic_fail #=> Boolean
    #   resp.evaluation.answers #=> Hash
    #   resp.evaluation.answers["ResourceId"].value.string_value #=> String
    #   resp.evaluation.answers["ResourceId"].value.numeric_value #=> Float
    #   resp.evaluation.answers["ResourceId"].value.not_applicable #=> Boolean
    #   resp.evaluation.answers["ResourceId"].system_suggested_value.string_value #=> String
    #   resp.evaluation.answers["ResourceId"].system_suggested_value.numeric_value #=> Float
    #   resp.evaluation.answers["ResourceId"].system_suggested_value.not_applicable #=> Boolean
    #   resp.evaluation.notes #=> Hash
    #   resp.evaluation.notes["ResourceId"].value #=> String
    #   resp.evaluation.status #=> String, one of "DRAFT", "SUBMITTED"
    #   resp.evaluation.scores #=> Hash
    #   resp.evaluation.scores["ResourceId"].percentage #=> Float
    #   resp.evaluation.scores["ResourceId"].not_applicable #=> Boolean
    #   resp.evaluation.scores["ResourceId"].automatic_fail #=> Boolean
    #   resp.evaluation.created_time #=> Time
    #   resp.evaluation.last_modified_time #=> Time
    #   resp.evaluation.tags #=> Hash
    #   resp.evaluation.tags["TagKey"] #=> String
    #   resp.evaluation_form.evaluation_form_version #=> Integer
    #   resp.evaluation_form.evaluation_form_id #=> String
    #   resp.evaluation_form.evaluation_form_arn #=> String
    #   resp.evaluation_form.title #=> String
    #   resp.evaluation_form.description #=> String
    #   resp.evaluation_form.items #=> Array
    #   resp.evaluation_form.items[0].section.title #=> String
    #   resp.evaluation_form.items[0].section.ref_id #=> String
    #   resp.evaluation_form.items[0].section.instructions #=> String
    #   resp.evaluation_form.items[0].section.items #=> Types::EvaluationFormItemsList
    #   resp.evaluation_form.items[0].section.weight #=> Float
    #   resp.evaluation_form.items[0].question.title #=> String
    #   resp.evaluation_form.items[0].question.instructions #=> String
    #   resp.evaluation_form.items[0].question.ref_id #=> String
    #   resp.evaluation_form.items[0].question.not_applicable_enabled #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type #=> String, one of "TEXT", "SINGLESELECT", "NUMERIC"
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.min_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.max_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].min_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].max_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].score #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].automatic_fail #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.automation.property_value.label #=> String, one of "OVERALL_CUSTOMER_SENTIMENT_SCORE", "OVERALL_AGENT_SENTIMENT_SCORE", "NON_TALK_TIME", "NON_TALK_TIME_PERCENTAGE", "NUMBER_OF_INTERRUPTIONS", "CONTACT_DURATION", "AGENT_INTERACTION_DURATION", "CUSTOMER_HOLD_TIME"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].ref_id #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].text #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].score #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].automatic_fail #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.display_as #=> String, one of "DROPDOWN", "RADIO"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.category #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.condition #=> String, one of "PRESENT", "NOT_PRESENT"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.option_ref_id #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.default_option_ref_id #=> String
    #   resp.evaluation_form.items[0].question.weight #=> Float
    #   resp.evaluation_form.scoring_strategy.mode #=> String, one of "QUESTION_ONLY", "SECTION_ONLY"
    #   resp.evaluation_form.scoring_strategy.status #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactEvaluation AWS API Documentation
    #
    # @overload describe_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def describe_contact_evaluation(params = {}, options = {})
      req = build_request(:describe_contact_evaluation, params)
      req.send_request(options)
    end

    # Describes the specified flow.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @return [Types::DescribeContactFlowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactFlowResponse#contact_flow #contact_flow} => Types::ContactFlow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_flow({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow.arn #=> String
    #   resp.contact_flow.id #=> String
    #   resp.contact_flow.name #=> String
    #   resp.contact_flow.type #=> String, one of "CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"
    #   resp.contact_flow.state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.contact_flow.description #=> String
    #   resp.contact_flow.content #=> String
    #   resp.contact_flow.tags #=> Hash
    #   resp.contact_flow.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlow AWS API Documentation
    #
    # @overload describe_contact_flow(params = {})
    # @param [Hash] params ({})
    def describe_contact_flow(params = {}, options = {})
      req = build_request(:describe_contact_flow, params)
      req.send_request(options)
    end

    # Describes the specified flow module.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_module_id
    #   The identifier of the flow module.
    #
    # @return [Types::DescribeContactFlowModuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeContactFlowModuleResponse#contact_flow_module #contact_flow_module} => Types::ContactFlowModule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_contact_flow_module({
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_module.arn #=> String
    #   resp.contact_flow_module.id #=> String
    #   resp.contact_flow_module.name #=> String
    #   resp.contact_flow_module.content #=> String
    #   resp.contact_flow_module.description #=> String
    #   resp.contact_flow_module.state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.contact_flow_module.status #=> String, one of "PUBLISHED", "SAVED"
    #   resp.contact_flow_module.tags #=> Hash
    #   resp.contact_flow_module.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeContactFlowModule AWS API Documentation
    #
    # @overload describe_contact_flow_module(params = {})
    # @param [Hash] params ({})
    def describe_contact_flow_module(params = {}, options = {})
      req = build_request(:describe_contact_flow_module, params)
      req.send_request(options)
    end

    # Describes an evaluation form in the specified Amazon Connect instance.
    # If the version property is not provided, the latest version of the
    # evaluation form is described.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   A unique identifier for the contact evaluation.
    #
    # @option params [Integer] :evaluation_form_version
    #   A version of the evaluation form.
    #
    # @return [Types::DescribeEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEvaluationFormResponse#evaluation_form #evaluation_form} => Types::EvaluationForm
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form.evaluation_form_id #=> String
    #   resp.evaluation_form.evaluation_form_version #=> Integer
    #   resp.evaluation_form.locked #=> Boolean
    #   resp.evaluation_form.evaluation_form_arn #=> String
    #   resp.evaluation_form.title #=> String
    #   resp.evaluation_form.description #=> String
    #   resp.evaluation_form.status #=> String, one of "DRAFT", "ACTIVE"
    #   resp.evaluation_form.items #=> Array
    #   resp.evaluation_form.items[0].section.title #=> String
    #   resp.evaluation_form.items[0].section.ref_id #=> String
    #   resp.evaluation_form.items[0].section.instructions #=> String
    #   resp.evaluation_form.items[0].section.items #=> Types::EvaluationFormItemsList
    #   resp.evaluation_form.items[0].section.weight #=> Float
    #   resp.evaluation_form.items[0].question.title #=> String
    #   resp.evaluation_form.items[0].question.instructions #=> String
    #   resp.evaluation_form.items[0].question.ref_id #=> String
    #   resp.evaluation_form.items[0].question.not_applicable_enabled #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type #=> String, one of "TEXT", "SINGLESELECT", "NUMERIC"
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.min_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.max_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].min_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].max_value #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].score #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.options[0].automatic_fail #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type_properties.numeric.automation.property_value.label #=> String, one of "OVERALL_CUSTOMER_SENTIMENT_SCORE", "OVERALL_AGENT_SENTIMENT_SCORE", "NON_TALK_TIME", "NON_TALK_TIME_PERCENTAGE", "NUMBER_OF_INTERRUPTIONS", "CONTACT_DURATION", "AGENT_INTERACTION_DURATION", "CUSTOMER_HOLD_TIME"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].ref_id #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].text #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].score #=> Integer
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.options[0].automatic_fail #=> Boolean
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.display_as #=> String, one of "DROPDOWN", "RADIO"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options #=> Array
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.category #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.condition #=> String, one of "PRESENT", "NOT_PRESENT"
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.options[0].rule_category.option_ref_id #=> String
    #   resp.evaluation_form.items[0].question.question_type_properties.single_select.automation.default_option_ref_id #=> String
    #   resp.evaluation_form.items[0].question.weight #=> Float
    #   resp.evaluation_form.scoring_strategy.mode #=> String, one of "QUESTION_ONLY", "SECTION_ONLY"
    #   resp.evaluation_form.scoring_strategy.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.evaluation_form.created_time #=> Time
    #   resp.evaluation_form.created_by #=> String
    #   resp.evaluation_form.last_modified_time #=> Time
    #   resp.evaluation_form.last_modified_by #=> String
    #   resp.evaluation_form.tags #=> Hash
    #   resp.evaluation_form.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeEvaluationForm AWS API Documentation
    #
    # @overload describe_evaluation_form(params = {})
    # @param [Hash] params ({})
    def describe_evaluation_form(params = {}, options = {})
      req = build_request(:describe_evaluation_form, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Describes the hours of operation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @return [Types::DescribeHoursOfOperationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeHoursOfOperationResponse#hours_of_operation #hours_of_operation} => Types::HoursOfOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation.hours_of_operation_id #=> String
    #   resp.hours_of_operation.hours_of_operation_arn #=> String
    #   resp.hours_of_operation.name #=> String
    #   resp.hours_of_operation.description #=> String
    #   resp.hours_of_operation.time_zone #=> String
    #   resp.hours_of_operation.config #=> Array
    #   resp.hours_of_operation.config[0].day #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.hours_of_operation.config[0].start_time.hours #=> Integer
    #   resp.hours_of_operation.config[0].start_time.minutes #=> Integer
    #   resp.hours_of_operation.config[0].end_time.hours #=> Integer
    #   resp.hours_of_operation.config[0].end_time.minutes #=> Integer
    #   resp.hours_of_operation.tags #=> Hash
    #   resp.hours_of_operation.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeHoursOfOperation AWS API Documentation
    #
    # @overload describe_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def describe_hours_of_operation(params = {}, options = {})
      req = build_request(:describe_hours_of_operation, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns the current state of the specified instance identifier. It
    # tracks the instance while it is being created and returns an error
    # status, if applicable.
    #
    # If an instance is not created successfully, the instance status reason
    # field returns details relevant to the reason. The instance in a failed
    # state is returned only for 24 hours after the CreateInstance API was
    # invoked.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceResponse#instance #instance} => Types::Instance
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance.id #=> String
    #   resp.instance.arn #=> String
    #   resp.instance.identity_management_type #=> String, one of "SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"
    #   resp.instance.instance_alias #=> String
    #   resp.instance.created_time #=> Time
    #   resp.instance.service_role #=> String
    #   resp.instance.instance_status #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"
    #   resp.instance.status_reason.message #=> String
    #   resp.instance.inbound_calls_enabled #=> Boolean
    #   resp.instance.outbound_calls_enabled #=> Boolean
    #   resp.instance.instance_access_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstance AWS API Documentation
    #
    # @overload describe_instance(params = {})
    # @param [Hash] params ({})
    def describe_instance(params = {}, options = {})
      req = build_request(:describe_instance, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Describes the specified instance attribute.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :attribute_type
    #   The type of attribute.
    #
    # @return [Types::DescribeInstanceAttributeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceAttributeResponse#attribute #attribute} => Types::Attribute
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_attribute({
    #     instance_id: "InstanceId", # required
    #     attribute_type: "INBOUND_CALLS", # required, accepts INBOUND_CALLS, OUTBOUND_CALLS, CONTACTFLOW_LOGS, CONTACT_LENS, AUTO_RESOLVE_BEST_VOICES, USE_CUSTOM_TTS_VOICES, EARLY_MEDIA, MULTI_PARTY_CONFERENCE, HIGH_VOLUME_OUTBOUND, ENHANCED_CONTACT_MONITORING
    #   })
    #
    # @example Response structure
    #
    #   resp.attribute.attribute_type #=> String, one of "INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE", "HIGH_VOLUME_OUTBOUND", "ENHANCED_CONTACT_MONITORING"
    #   resp.attribute.value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceAttribute AWS API Documentation
    #
    # @overload describe_instance_attribute(params = {})
    # @param [Hash] params ({})
    def describe_instance_attribute(params = {}, options = {})
      req = build_request(:describe_instance_attribute, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Retrieves the current storage configurations for the specified
    # resource type, association ID, and instance ID.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @return [Types::DescribeInstanceStorageConfigResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceStorageConfigResponse#storage_config #storage_config} => Types::InstanceStorageConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_storage_config({
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_config.association_id #=> String
    #   resp.storage_config.storage_type #=> String, one of "S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"
    #   resp.storage_config.s3_config.bucket_name #=> String
    #   resp.storage_config.s3_config.bucket_prefix #=> String
    #   resp.storage_config.s3_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.storage_config.s3_config.encryption_config.key_id #=> String
    #   resp.storage_config.kinesis_video_stream_config.prefix #=> String
    #   resp.storage_config.kinesis_video_stream_config.retention_period_hours #=> Integer
    #   resp.storage_config.kinesis_video_stream_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.storage_config.kinesis_video_stream_config.encryption_config.key_id #=> String
    #   resp.storage_config.kinesis_stream_config.stream_arn #=> String
    #   resp.storage_config.kinesis_firehose_config.firehose_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeInstanceStorageConfig AWS API Documentation
    #
    # @overload describe_instance_storage_config(params = {})
    # @param [Hash] params ({})
    def describe_instance_storage_config(params = {}, options = {})
      req = build_request(:describe_instance_storage_config, params)
      req.send_request(options)
    end

    # Gets details and status of a phone number that’s claimed to your
    # Amazon Connect instance or traffic distribution group.
    #
    # If the number is claimed to a traffic distribution group, and you are
    # calling in the Amazon Web Services Region where the traffic
    # distribution group was created, you can use either a phone number ARN
    # or UUID value for the `PhoneNumberId` URI request parameter. However,
    # if the number is claimed to a traffic distribution group and you are
    # calling this API in the alternate Amazon Web Services Region
    # associated with the traffic distribution group, you must provide a
    # full phone number ARN. If a UUID is provided in this scenario, you
    # will receive a `ResourceNotFoundException`.
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @return [Types::DescribePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePhoneNumberResponse#claimed_phone_number_summary #claimed_phone_number_summary} => Types::ClaimedPhoneNumberSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_phone_number({
    #     phone_number_id: "PhoneNumberId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.claimed_phone_number_summary.phone_number_id #=> String
    #   resp.claimed_phone_number_summary.phone_number_arn #=> String
    #   resp.claimed_phone_number_summary.phone_number #=> String
    #   resp.claimed_phone_number_summary.phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.claimed_phone_number_summary.phone_number_type #=> String, one of "TOLL_FREE", "DID"
    #   resp.claimed_phone_number_summary.phone_number_description #=> String
    #   resp.claimed_phone_number_summary.target_arn #=> String
    #   resp.claimed_phone_number_summary.tags #=> Hash
    #   resp.claimed_phone_number_summary.tags["TagKey"] #=> String
    #   resp.claimed_phone_number_summary.phone_number_status.status #=> String, one of "CLAIMED", "IN_PROGRESS", "FAILED"
    #   resp.claimed_phone_number_summary.phone_number_status.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePhoneNumber AWS API Documentation
    #
    # @overload describe_phone_number(params = {})
    # @param [Hash] params ({})
    def describe_phone_number(params = {}, options = {})
      req = build_request(:describe_phone_number, params)
      req.send_request(options)
    end

    # Describes the prompt.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :prompt_id
    #   A unique identifier for the prompt.
    #
    # @return [Types::DescribePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePromptResponse#prompt #prompt} => Types::Prompt
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_prompt({
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt.prompt_arn #=> String
    #   resp.prompt.prompt_id #=> String
    #   resp.prompt.name #=> String
    #   resp.prompt.description #=> String
    #   resp.prompt.tags #=> Hash
    #   resp.prompt.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribePrompt AWS API Documentation
    #
    # @overload describe_prompt(params = {})
    # @param [Hash] params ({})
    def describe_prompt(params = {}, options = {})
      req = build_request(:describe_prompt, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Describes the specified queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @return [Types::DescribeQueueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQueueResponse#queue #queue} => Types::Queue
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_queue({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.queue.name #=> String
    #   resp.queue.queue_arn #=> String
    #   resp.queue.queue_id #=> String
    #   resp.queue.description #=> String
    #   resp.queue.outbound_caller_config.outbound_caller_id_name #=> String
    #   resp.queue.outbound_caller_config.outbound_caller_id_number_id #=> String
    #   resp.queue.outbound_caller_config.outbound_flow_id #=> String
    #   resp.queue.hours_of_operation_id #=> String
    #   resp.queue.max_contacts #=> Integer
    #   resp.queue.status #=> String, one of "ENABLED", "DISABLED"
    #   resp.queue.tags #=> Hash
    #   resp.queue.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeQueue AWS API Documentation
    #
    # @overload describe_queue(params = {})
    # @param [Hash] params ({})
    def describe_queue(params = {}, options = {})
      req = build_request(:describe_queue, params)
      req.send_request(options)
    end

    # Describes the quick connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @return [Types::DescribeQuickConnectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeQuickConnectResponse#quick_connect #quick_connect} => Types::QuickConnect
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_quick_connect({
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_connect.quick_connect_arn #=> String
    #   resp.quick_connect.quick_connect_id #=> String
    #   resp.quick_connect.name #=> String
    #   resp.quick_connect.description #=> String
    #   resp.quick_connect.quick_connect_config.quick_connect_type #=> String, one of "USER", "QUEUE", "PHONE_NUMBER"
    #   resp.quick_connect.quick_connect_config.user_config.user_id #=> String
    #   resp.quick_connect.quick_connect_config.user_config.contact_flow_id #=> String
    #   resp.quick_connect.quick_connect_config.queue_config.queue_id #=> String
    #   resp.quick_connect.quick_connect_config.queue_config.contact_flow_id #=> String
    #   resp.quick_connect.quick_connect_config.phone_config.phone_number #=> String
    #   resp.quick_connect.tags #=> Hash
    #   resp.quick_connect.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeQuickConnect AWS API Documentation
    #
    # @overload describe_quick_connect(params = {})
    # @param [Hash] params ({})
    def describe_quick_connect(params = {}, options = {})
      req = build_request(:describe_quick_connect, params)
      req.send_request(options)
    end

    # Describes the specified routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @return [Types::DescribeRoutingProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRoutingProfileResponse#routing_profile #routing_profile} => Types::RoutingProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_routing_profile({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile.instance_id #=> String
    #   resp.routing_profile.name #=> String
    #   resp.routing_profile.routing_profile_arn #=> String
    #   resp.routing_profile.routing_profile_id #=> String
    #   resp.routing_profile.description #=> String
    #   resp.routing_profile.media_concurrencies #=> Array
    #   resp.routing_profile.media_concurrencies[0].channel #=> String, one of "VOICE", "CHAT", "TASK"
    #   resp.routing_profile.media_concurrencies[0].concurrency #=> Integer
    #   resp.routing_profile.media_concurrencies[0].cross_channel_behavior.behavior_type #=> String, one of "ROUTE_CURRENT_CHANNEL_ONLY", "ROUTE_ANY_CHANNEL"
    #   resp.routing_profile.default_outbound_queue_id #=> String
    #   resp.routing_profile.tags #=> Hash
    #   resp.routing_profile.tags["TagKey"] #=> String
    #   resp.routing_profile.number_of_associated_queues #=> Integer
    #   resp.routing_profile.number_of_associated_users #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRoutingProfile AWS API Documentation
    #
    # @overload describe_routing_profile(params = {})
    # @param [Hash] params ({})
    def describe_routing_profile(params = {}, options = {})
      req = build_request(:describe_routing_profile, params)
      req.send_request(options)
    end

    # Describes a rule for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :rule_id
    #   A unique identifier for the rule.
    #
    # @return [Types::DescribeRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuleResponse#rule #rule} => Types::Rule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule({
    #     instance_id: "InstanceId", # required
    #     rule_id: "RuleId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule.name #=> String
    #   resp.rule.rule_id #=> String
    #   resp.rule.rule_arn #=> String
    #   resp.rule.trigger_event_source.event_source_name #=> String, one of "OnPostCallAnalysisAvailable", "OnRealTimeCallAnalysisAvailable", "OnPostChatAnalysisAvailable", "OnZendeskTicketCreate", "OnZendeskTicketStatusUpdate", "OnSalesforceCaseCreate", "OnContactEvaluationSubmit"
    #   resp.rule.trigger_event_source.integration_association_id #=> String
    #   resp.rule.function #=> String
    #   resp.rule.actions #=> Array
    #   resp.rule.actions[0].action_type #=> String, one of "CREATE_TASK", "ASSIGN_CONTACT_CATEGORY", "GENERATE_EVENTBRIDGE_EVENT", "SEND_NOTIFICATION"
    #   resp.rule.actions[0].task_action.name #=> String
    #   resp.rule.actions[0].task_action.description #=> String
    #   resp.rule.actions[0].task_action.contact_flow_id #=> String
    #   resp.rule.actions[0].task_action.references #=> Hash
    #   resp.rule.actions[0].task_action.references["ReferenceKey"].value #=> String
    #   resp.rule.actions[0].task_action.references["ReferenceKey"].type #=> String, one of "URL", "ATTACHMENT", "NUMBER", "STRING", "DATE", "EMAIL"
    #   resp.rule.actions[0].event_bridge_action.name #=> String
    #   resp.rule.actions[0].send_notification_action.delivery_method #=> String, one of "EMAIL"
    #   resp.rule.actions[0].send_notification_action.subject #=> String
    #   resp.rule.actions[0].send_notification_action.content #=> String
    #   resp.rule.actions[0].send_notification_action.content_type #=> String, one of "PLAIN_TEXT"
    #   resp.rule.actions[0].send_notification_action.recipient.user_tags #=> Hash
    #   resp.rule.actions[0].send_notification_action.recipient.user_tags["String"] #=> String
    #   resp.rule.actions[0].send_notification_action.recipient.user_ids #=> Array
    #   resp.rule.actions[0].send_notification_action.recipient.user_ids[0] #=> String
    #   resp.rule.publish_status #=> String, one of "DRAFT", "PUBLISHED"
    #   resp.rule.created_time #=> Time
    #   resp.rule.last_updated_time #=> Time
    #   resp.rule.last_updated_by #=> String
    #   resp.rule.tags #=> Hash
    #   resp.rule.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeRule AWS API Documentation
    #
    # @overload describe_rule(params = {})
    # @param [Hash] params ({})
    def describe_rule(params = {}, options = {})
      req = build_request(:describe_rule, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Gets basic information about the security profle.
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeSecurityProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecurityProfileResponse#security_profile #security_profile} => Types::SecurityProfile
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_security_profile({
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile.id #=> String
    #   resp.security_profile.organization_resource_id #=> String
    #   resp.security_profile.arn #=> String
    #   resp.security_profile.security_profile_name #=> String
    #   resp.security_profile.description #=> String
    #   resp.security_profile.tags #=> Hash
    #   resp.security_profile.tags["TagKey"] #=> String
    #   resp.security_profile.allowed_access_control_tags #=> Hash
    #   resp.security_profile.allowed_access_control_tags["SecurityProfilePolicyKey"] #=> String
    #   resp.security_profile.tag_restricted_resources #=> Array
    #   resp.security_profile.tag_restricted_resources[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeSecurityProfile AWS API Documentation
    #
    # @overload describe_security_profile(params = {})
    # @param [Hash] params ({})
    def describe_security_profile(params = {}, options = {})
      req = build_request(:describe_security_profile, params)
      req.send_request(options)
    end

    # Gets details and status of a traffic distribution group.
    #
    # @option params [required, String] :traffic_distribution_group_id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the traffic
    #   distribution group was created. The ARN must be provided if the call
    #   is from the replicated Region.
    #
    # @return [Types::DescribeTrafficDistributionGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrafficDistributionGroupResponse#traffic_distribution_group #traffic_distribution_group} => Types::TrafficDistributionGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_traffic_distribution_group({
    #     traffic_distribution_group_id: "TrafficDistributionGroupIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_distribution_group.id #=> String
    #   resp.traffic_distribution_group.arn #=> String
    #   resp.traffic_distribution_group.name #=> String
    #   resp.traffic_distribution_group.description #=> String
    #   resp.traffic_distribution_group.instance_arn #=> String
    #   resp.traffic_distribution_group.status #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "PENDING_DELETION", "DELETION_FAILED", "UPDATE_IN_PROGRESS"
    #   resp.traffic_distribution_group.tags #=> Hash
    #   resp.traffic_distribution_group.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeTrafficDistributionGroup AWS API Documentation
    #
    # @overload describe_traffic_distribution_group(params = {})
    # @param [Hash] params ({})
    def describe_traffic_distribution_group(params = {}, options = {})
      req = build_request(:describe_traffic_distribution_group, params)
      req.send_request(options)
    end

    # Describes the specified user account. You can [find the instance ID in
    # the Amazon Connect console][1] (it’s the final part of the ARN). The
    # console does not display the user IDs. Instead, list the users and
    # note the IDs provided in the output.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user({
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.id #=> String
    #   resp.user.arn #=> String
    #   resp.user.username #=> String
    #   resp.user.identity_info.first_name #=> String
    #   resp.user.identity_info.last_name #=> String
    #   resp.user.identity_info.email #=> String
    #   resp.user.identity_info.secondary_email #=> String
    #   resp.user.identity_info.mobile #=> String
    #   resp.user.phone_config.phone_type #=> String, one of "SOFT_PHONE", "DESK_PHONE"
    #   resp.user.phone_config.auto_accept #=> Boolean
    #   resp.user.phone_config.after_contact_work_time_limit #=> Integer
    #   resp.user.phone_config.desk_phone_number #=> String
    #   resp.user.directory_user_id #=> String
    #   resp.user.security_profile_ids #=> Array
    #   resp.user.security_profile_ids[0] #=> String
    #   resp.user.routing_profile_id #=> String
    #   resp.user.hierarchy_group_id #=> String
    #   resp.user.tags #=> Hash
    #   resp.user.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUser AWS API Documentation
    #
    # @overload describe_user(params = {})
    # @param [Hash] params ({})
    def describe_user(params = {}, options = {})
      req = build_request(:describe_user, params)
      req.send_request(options)
    end

    # Describes the specified hierarchy group.
    #
    # @option params [required, String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeUserHierarchyGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserHierarchyGroupResponse#hierarchy_group #hierarchy_group} => Types::HierarchyGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_group({
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_group.id #=> String
    #   resp.hierarchy_group.arn #=> String
    #   resp.hierarchy_group.name #=> String
    #   resp.hierarchy_group.level_id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_one.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_two.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_three.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_four.name #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.id #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.arn #=> String
    #   resp.hierarchy_group.hierarchy_path.level_five.name #=> String
    #   resp.hierarchy_group.tags #=> Hash
    #   resp.hierarchy_group.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyGroup AWS API Documentation
    #
    # @overload describe_user_hierarchy_group(params = {})
    # @param [Hash] params ({})
    def describe_user_hierarchy_group(params = {}, options = {})
      req = build_request(:describe_user_hierarchy_group, params)
      req.send_request(options)
    end

    # Describes the hierarchy structure of the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::DescribeUserHierarchyStructureResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUserHierarchyStructureResponse#hierarchy_structure #hierarchy_structure} => Types::HierarchyStructure
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_hierarchy_structure({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.hierarchy_structure.level_one.id #=> String
    #   resp.hierarchy_structure.level_one.arn #=> String
    #   resp.hierarchy_structure.level_one.name #=> String
    #   resp.hierarchy_structure.level_two.id #=> String
    #   resp.hierarchy_structure.level_two.arn #=> String
    #   resp.hierarchy_structure.level_two.name #=> String
    #   resp.hierarchy_structure.level_three.id #=> String
    #   resp.hierarchy_structure.level_three.arn #=> String
    #   resp.hierarchy_structure.level_three.name #=> String
    #   resp.hierarchy_structure.level_four.id #=> String
    #   resp.hierarchy_structure.level_four.arn #=> String
    #   resp.hierarchy_structure.level_four.name #=> String
    #   resp.hierarchy_structure.level_five.id #=> String
    #   resp.hierarchy_structure.level_five.arn #=> String
    #   resp.hierarchy_structure.level_five.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeUserHierarchyStructure AWS API Documentation
    #
    # @overload describe_user_hierarchy_structure(params = {})
    # @param [Hash] params ({})
    def describe_user_hierarchy_structure(params = {}, options = {})
      req = build_request(:describe_user_hierarchy_structure, params)
      req.send_request(options)
    end

    # Describes the specified vocabulary.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :vocabulary_id
    #   The identifier of the custom vocabulary.
    #
    # @return [Types::DescribeVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVocabularyResponse#vocabulary #vocabulary} => Types::Vocabulary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vocabulary({
    #     instance_id: "InstanceId", # required
    #     vocabulary_id: "VocabularyId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary.name #=> String
    #   resp.vocabulary.id #=> String
    #   resp.vocabulary.arn #=> String
    #   resp.vocabulary.language_code #=> String, one of "ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA"
    #   resp.vocabulary.state #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"
    #   resp.vocabulary.last_modified_time #=> Time
    #   resp.vocabulary.failure_reason #=> String
    #   resp.vocabulary.content #=> String
    #   resp.vocabulary.tags #=> Hash
    #   resp.vocabulary.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DescribeVocabulary AWS API Documentation
    #
    # @overload describe_vocabulary(params = {})
    # @param [Hash] params ({})
    def describe_vocabulary(params = {}, options = {})
      req = build_request(:describe_vocabulary, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Revokes access to integrated applications from Amazon Connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :origin
    #   The domain URL of the integrated application.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_approved_origin({
    #     instance_id: "InstanceId", # required
    #     origin: "Origin", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateApprovedOrigin AWS API Documentation
    #
    # @overload disassociate_approved_origin(params = {})
    # @param [Hash] params ({})
    def disassociate_approved_origin(params = {}, options = {})
      req = build_request(:disassociate_approved_origin, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Revokes authorization from the specified instance to access the
    # specified Amazon Lex or Amazon Lex V2 bot.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Types::LexBot] :lex_bot
    #   Configuration information of an Amazon Lex bot.
    #
    # @option params [Types::LexV2Bot] :lex_v2_bot
    #   The Amazon Lex V2 bot to disassociate from the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_bot({
    #     instance_id: "InstanceId", # required
    #     lex_bot: {
    #       name: "BotName", # required
    #       lex_region: "LexRegion", # required
    #     },
    #     lex_v2_bot: {
    #       alias_arn: "AliasArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateBot AWS API Documentation
    #
    # @overload disassociate_bot(params = {})
    # @param [Hash] params ({})
    def disassociate_bot(params = {}, options = {})
      req = build_request(:disassociate_bot, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Removes the storage type configurations for the specified resource
    # type and association ID.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_instance_storage_config({
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateInstanceStorageConfig AWS API Documentation
    #
    # @overload disassociate_instance_storage_config(params = {})
    # @param [Hash] params ({})
    def disassociate_instance_storage_config(params = {}, options = {})
      req = build_request(:disassociate_instance_storage_config, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Remove the Lambda function from the dropdown options available in the
    # relevant flow blocks.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance..
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :function_arn
    #   The Amazon Resource Name (ARN) of the Lambda function being
    #   disassociated.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_lambda_function({
    #     instance_id: "InstanceId", # required
    #     function_arn: "FunctionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateLambdaFunction AWS API Documentation
    #
    # @overload disassociate_lambda_function(params = {})
    # @param [Hash] params ({})
    def disassociate_lambda_function(params = {}, options = {})
      req = build_request(:disassociate_lambda_function, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Revokes authorization from the specified instance to access the
    # specified Amazon Lex bot.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :bot_name
    #   The name of the Amazon Lex bot. Maximum character limit of 50.
    #
    # @option params [required, String] :lex_region
    #   The Amazon Web Services Region in which the Amazon Lex bot has been
    #   created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_lex_bot({
    #     instance_id: "InstanceId", # required
    #     bot_name: "BotName", # required
    #     lex_region: "LexRegion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateLexBot AWS API Documentation
    #
    # @overload disassociate_lex_bot(params = {})
    # @param [Hash] params ({})
    def disassociate_lex_bot(params = {}, options = {})
      req = build_request(:disassociate_lex_bot, params)
      req.send_request(options)
    end

    # Removes the flow association from a phone number claimed to your
    # Amazon Connect instance.
    #
    # If the number is claimed to a traffic distribution group, and you are
    # calling this API using an instance in the Amazon Web Services Region
    # where the traffic distribution group was created, you can use either a
    # full phone number ARN or UUID value for the `PhoneNumberId` URI
    # request parameter. However, if the number is claimed to a traffic
    # distribution group and you are calling this API using an instance in
    # the alternate Amazon Web Services Region associated with the traffic
    # distribution group, you must provide a full phone number ARN. If a
    # UUID is provided in this scenario, you will receive a
    # `ResourceNotFoundException`.
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_phone_number_contact_flow({
    #     phone_number_id: "PhoneNumberId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociatePhoneNumberContactFlow AWS API Documentation
    #
    # @overload disassociate_phone_number_contact_flow(params = {})
    # @param [Hash] params ({})
    def disassociate_phone_number_contact_flow(params = {}, options = {})
      req = build_request(:disassociate_phone_number_contact_flow, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Disassociates a set of quick connects from a queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, Array<String>] :quick_connect_ids
    #   The quick connects to disassociate from the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_queue_quick_connects({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     quick_connect_ids: ["QuickConnectId"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateQueueQuickConnects AWS API Documentation
    #
    # @overload disassociate_queue_quick_connects(params = {})
    # @param [Hash] params ({})
    def disassociate_queue_quick_connects(params = {}, options = {})
      req = build_request(:disassociate_queue_quick_connects, params)
      req.send_request(options)
    end

    # Disassociates a set of queues from a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueReference>] :queue_references
    #   The queues to disassociate from this routing profile.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_references: [ # required
    #       {
    #         queue_id: "QueueId", # required
    #         channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateRoutingProfileQueues AWS API Documentation
    #
    # @overload disassociate_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def disassociate_routing_profile_queues(params = {}, options = {})
      req = build_request(:disassociate_routing_profile_queues, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Deletes the specified security key.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_security_key({
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DisassociateSecurityKey AWS API Documentation
    #
    # @overload disassociate_security_key(params = {})
    # @param [Hash] params ({})
    def disassociate_security_key(params = {}, options = {})
      req = build_request(:disassociate_security_key, params)
      req.send_request(options)
    end

    # Dismisses contacts from an agent’s CCP and returns the agent to an
    # available state, which allows the agent to receive a new routed
    # contact. Contacts can only be dismissed if they are in a `MISSED`,
    # `ERROR`, `ENDED`, or `REJECTED` state in the [Agent Event Stream][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.dismiss_user_contact({
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/DismissUserContact AWS API Documentation
    #
    # @overload dismiss_user_contact(params = {})
    # @param [Hash] params ({})
    def dismiss_user_contact(params = {}, options = {})
      req = build_request(:dismiss_user_contact, params)
      req.send_request(options)
    end

    # Retrieves the contact attributes for the specified contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the initial contact.
    #
    # @return [Types::GetContactAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetContactAttributesResponse#attributes #attributes} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_contact_attributes({
    #     instance_id: "InstanceId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Hash
    #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetContactAttributes AWS API Documentation
    #
    # @overload get_contact_attributes(params = {})
    # @param [Hash] params ({})
    def get_contact_attributes(params = {}, options = {})
      req = build_request(:get_contact_attributes, params)
      req.send_request(options)
    end

    # Gets the real-time metric data from the specified Amazon Connect
    # instance.
    #
    # For a description of each metric, see [Real-time Metrics
    # Definitions][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Types::Filters] :filters
    #   The filters to apply to returned metrics. You can filter up to the
    #   following limits:
    #
    #   * Queues: 100
    #
    #   * Routing profiles: 100
    #
    #   * Channels: 3 (VOICE, CHAT, and TASK channels are supported.)
    #
    #   Metric data is retrieved only for the resources associated with the
    #   queues or routing profiles, and by any channels included in the
    #   filter. (You cannot filter by both queue AND routing profile.) You can
    #   include both resource IDs and resource ARNs in the same request.
    #
    #   Currently tagging is only supported on the resources that are passed
    #   in the filter.
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics returned. For example, when
    #   grouped by `QUEUE`, the metrics returned apply to each queue rather
    #   than aggregated for all queues.
    #
    #   * If you group by `CHANNEL`, you should include a Channels filter.
    #     VOICE, CHAT, and TASK channels are supported.
    #
    #   * If you group by `ROUTING_PROFILE`, you must include either a queue
    #     or routing profile filter. In addition, a routing profile filter is
    #     required for metrics `CONTACTS_SCHEDULED`, `CONTACTS_IN_QUEUE`, and
    #     ` OLDEST_CONTACT_AGE`.
    #
    #   * If no `Grouping` is included in the request, a summary of metrics is
    #     returned.
    #
    # @option params [required, Array<Types::CurrentMetric>] :current_metrics
    #   The metrics to retrieve. Specify the name and unit for each metric.
    #   The following metrics are available. For a description of all the
    #   metrics, see [Real-time Metrics Definitions][1] in the *Amazon Connect
    #   Administrator Guide*.
    #
    #   AGENTS\_AFTER\_CONTACT\_WORK
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [ACW][2]
    #
    #   AGENTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Available][3]
    #
    #   AGENTS\_ERROR
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Error][4]
    #
    #   AGENTS\_NON\_PRODUCTIVE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [NPT (Non-Productive Time)][5]
    #
    #   AGENTS\_ON\_CALL
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [On contact][6]
    #
    #   AGENTS\_ON\_CONTACT
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [On contact][6]
    #
    #   AGENTS\_ONLINE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Online][7]
    #
    #   AGENTS\_STAFFED
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Staffed][8]
    #
    #   CONTACTS\_IN\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [In queue][9]
    #
    #   CONTACTS\_SCHEDULED
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Scheduled][10]
    #
    #   OLDEST\_CONTACT\_AGE
    #
    #   : Unit: SECONDS
    #
    #     When you use groupings, Unit says SECONDS and the Value is returned
    #     in SECONDS.
    #
    #     When you do not use groupings, Unit says SECONDS but the Value is
    #     returned in MILLISECONDS. For example, if you get a response like
    #     this:
    #
    #     `\{ "Metric": \{ "Name": "OLDEST_CONTACT_AGE", "Unit": "SECONDS" \},
    #     "Value": 24113.0 `\\}
    #
    #     The actual OLDEST\_CONTACT\_AGE is 24 seconds.
    #
    #     Name in real-time metrics report: [Oldest][11]
    #
    #   SLOTS\_ACTIVE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Active][12]
    #
    #   SLOTS\_AVAILABLE
    #
    #   : Unit: COUNT
    #
    #     Name in real-time metrics report: [Availability][13]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#aftercallwork-real-time
    #   [3]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#available-real-time
    #   [4]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#error-real-time
    #   [5]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#non-productive-time-real-time
    #   [6]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#on-call-real-time
    #   [7]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#online-real-time
    #   [8]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#staffed-real-time
    #   [9]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#in-queue-real-time
    #   [10]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#scheduled-real-time
    #   [11]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#oldest-real-time
    #   [12]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#active-real-time
    #   [13]: https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html#availability-real-time
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   The token expires after 5 minutes from the time it is created.
    #   Subsequent requests that use the token must use the same request
    #   parameters as the request that generated the token.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Array<Types::CurrentMetricSortCriteria>] :sort_criteria
    #   The way to sort the resulting response based on metrics. You can enter
    #   one sort criteria. By default resources are sorted based on
    #   `AGENTS_ONLINE`, `DESCENDING`. The metric collection is sorted based
    #   on the input metrics.
    #
    #   Note the following:
    #
    #   * Sorting on `SLOTS_ACTIVE` and `SLOTS_AVAILABLE` is not supported.
    #
    #   ^
    #
    # @return [Types::GetCurrentMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCurrentMetricDataResponse#next_token #next_token} => String
    #   * {Types::GetCurrentMetricDataResponse#metric_results #metric_results} => Array&lt;Types::CurrentMetricResult&gt;
    #   * {Types::GetCurrentMetricDataResponse#data_snapshot_time #data_snapshot_time} => Time
    #   * {Types::GetCurrentMetricDataResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_metric_data({
    #     instance_id: "InstanceId", # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE"], # accepts VOICE, CHAT, TASK
    #       routing_profiles: ["RoutingProfileId"],
    #     },
    #     groupings: ["QUEUE"], # accepts QUEUE, CHANNEL, ROUTING_PROFILE
    #     current_metrics: [ # required
    #       {
    #         name: "AGENTS_ONLINE", # accepts AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED, AGENTS_ON_CONTACT, SLOTS_ACTIVE, SLOTS_AVAILABLE
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     sort_criteria: [
    #       {
    #         sort_by_metric: "AGENTS_ONLINE", # accepts AGENTS_ONLINE, AGENTS_AVAILABLE, AGENTS_ON_CALL, AGENTS_NON_PRODUCTIVE, AGENTS_AFTER_CONTACT_WORK, AGENTS_ERROR, AGENTS_STAFFED, CONTACTS_IN_QUEUE, OLDEST_CONTACT_AGE, CONTACTS_SCHEDULED, AGENTS_ON_CONTACT, SLOTS_ACTIVE, SLOTS_AVAILABLE
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions.queue.id #=> String
    #   resp.metric_results[0].dimensions.queue.arn #=> String
    #   resp.metric_results[0].dimensions.channel #=> String, one of "VOICE", "CHAT", "TASK"
    #   resp.metric_results[0].dimensions.routing_profile.id #=> String
    #   resp.metric_results[0].dimensions.routing_profile.arn #=> String
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String, one of "AGENTS_ONLINE", "AGENTS_AVAILABLE", "AGENTS_ON_CALL", "AGENTS_NON_PRODUCTIVE", "AGENTS_AFTER_CONTACT_WORK", "AGENTS_ERROR", "AGENTS_STAFFED", "CONTACTS_IN_QUEUE", "OLDEST_CONTACT_AGE", "CONTACTS_SCHEDULED", "AGENTS_ON_CONTACT", "SLOTS_ACTIVE", "SLOTS_AVAILABLE"
    #   resp.metric_results[0].collections[0].metric.unit #=> String, one of "SECONDS", "COUNT", "PERCENT"
    #   resp.metric_results[0].collections[0].value #=> Float
    #   resp.data_snapshot_time #=> Time
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentMetricData AWS API Documentation
    #
    # @overload get_current_metric_data(params = {})
    # @param [Hash] params ({})
    def get_current_metric_data(params = {}, options = {})
      req = build_request(:get_current_metric_data, params)
      req.send_request(options)
    end

    # Gets the real-time active user data from the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Types::UserDataFilters] :filters
    #   The filters to apply to returned user data. You can filter up to the
    #   following limits:
    #
    #   * Queues: 100
    #
    #   * Routing profiles: 100
    #
    #   * Agents: 100
    #
    #   * Contact states: 9
    #
    #   * User hierarchy groups: 1
    #
    #   The user data is retrieved for only the specified values/resources in
    #   the filter. A maximum of one filter can be passed from queues, routing
    #   profiles, agents, and user hierarchy groups.
    #
    #   Currently tagging is only supported on the resources that are passed
    #   in the filter.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::GetCurrentUserDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCurrentUserDataResponse#next_token #next_token} => String
    #   * {Types::GetCurrentUserDataResponse#user_data_list #user_data_list} => Array&lt;Types::UserData&gt;
    #   * {Types::GetCurrentUserDataResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_user_data({
    #     instance_id: "InstanceId", # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       contact_filter: {
    #         contact_states: ["INCOMING"], # accepts INCOMING, PENDING, CONNECTING, CONNECTED, CONNECTED_ONHOLD, MISSED, ERROR, ENDED, REJECTED
    #       },
    #       routing_profiles: ["RoutingProfileId"],
    #       agents: ["UserId"],
    #       user_hierarchy_groups: ["HierarchyGroupId"],
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.user_data_list #=> Array
    #   resp.user_data_list[0].user.id #=> String
    #   resp.user_data_list[0].user.arn #=> String
    #   resp.user_data_list[0].routing_profile.id #=> String
    #   resp.user_data_list[0].routing_profile.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_one.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_one.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_two.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_two.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_three.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_three.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_four.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_four.arn #=> String
    #   resp.user_data_list[0].hierarchy_path.level_five.id #=> String
    #   resp.user_data_list[0].hierarchy_path.level_five.arn #=> String
    #   resp.user_data_list[0].status.status_start_timestamp #=> Time
    #   resp.user_data_list[0].status.status_arn #=> String
    #   resp.user_data_list[0].status.status_name #=> String
    #   resp.user_data_list[0].available_slots_by_channel #=> Hash
    #   resp.user_data_list[0].available_slots_by_channel["Channel"] #=> Integer
    #   resp.user_data_list[0].max_slots_by_channel #=> Hash
    #   resp.user_data_list[0].max_slots_by_channel["Channel"] #=> Integer
    #   resp.user_data_list[0].active_slots_by_channel #=> Hash
    #   resp.user_data_list[0].active_slots_by_channel["Channel"] #=> Integer
    #   resp.user_data_list[0].contacts #=> Array
    #   resp.user_data_list[0].contacts[0].contact_id #=> String
    #   resp.user_data_list[0].contacts[0].channel #=> String, one of "VOICE", "CHAT", "TASK"
    #   resp.user_data_list[0].contacts[0].initiation_method #=> String, one of "INBOUND", "OUTBOUND", "TRANSFER", "QUEUE_TRANSFER", "CALLBACK", "API", "DISCONNECT", "MONITOR", "EXTERNAL_OUTBOUND"
    #   resp.user_data_list[0].contacts[0].agent_contact_state #=> String, one of "INCOMING", "PENDING", "CONNECTING", "CONNECTED", "CONNECTED_ONHOLD", "MISSED", "ERROR", "ENDED", "REJECTED"
    #   resp.user_data_list[0].contacts[0].state_start_timestamp #=> Time
    #   resp.user_data_list[0].contacts[0].connected_to_agent_timestamp #=> Time
    #   resp.user_data_list[0].contacts[0].queue.id #=> String
    #   resp.user_data_list[0].contacts[0].queue.arn #=> String
    #   resp.user_data_list[0].next_status #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetCurrentUserData AWS API Documentation
    #
    # @overload get_current_user_data(params = {})
    # @param [Hash] params ({})
    def get_current_user_data(params = {}, options = {})
      req = build_request(:get_current_user_data, params)
      req.send_request(options)
    end

    # Retrieves a token for federation.
    #
    # <note markdown="1"> This API doesn't support root users. If you try to invoke
    # GetFederationToken with root credentials, an error message similar to
    # the following one appears:
    #
    #  `Provided identity: Principal: .... User: .... cannot be used for
    # federation with Amazon Connect`
    #
    #  </note>
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::GetFederationTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFederationTokenResponse#credentials #credentials} => Types::Credentials
    #   * {Types::GetFederationTokenResponse#sign_in_url #sign_in_url} => String
    #   * {Types::GetFederationTokenResponse#user_arn #user_arn} => String
    #   * {Types::GetFederationTokenResponse#user_id #user_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_federation_token({
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.credentials.access_token #=> String
    #   resp.credentials.access_token_expiration #=> Time
    #   resp.credentials.refresh_token #=> String
    #   resp.credentials.refresh_token_expiration #=> Time
    #   resp.sign_in_url #=> String
    #   resp.user_arn #=> String
    #   resp.user_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetFederationToken AWS API Documentation
    #
    # @overload get_federation_token(params = {})
    # @param [Hash] params ({})
    def get_federation_token(params = {}, options = {})
      req = build_request(:get_federation_token, params)
      req.send_request(options)
    end

    # Gets historical metric data from the specified Amazon Connect
    # instance.
    #
    # For a description of each historical metric, see [Historical Metrics
    # Definitions][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp, in UNIX Epoch time format, at which to start the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using a multiple of 5 minutes, such as 10:05,
    #   10:10, 10:15.
    #
    #   The start time cannot be earlier than 24 hours before the time of the
    #   request. Historical metrics are available only for 24 hours.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be specified using an interval of 5 minutes, such as 11:00,
    #   11:05, 11:10, and must be later than the start time timestamp.
    #
    #   The time range between the start and end time must be less than 24
    #   hours.
    #
    # @option params [required, Types::Filters] :filters
    #   The queues, up to 100, or channels, to use to filter the metrics
    #   returned. Metric data is retrieved only for the resources associated
    #   with the queues or channels included in the filter. You can include
    #   both queue IDs and queue ARNs in the same request. VOICE, CHAT, and
    #   TASK channels are supported.
    #
    #   <note markdown="1"> To filter by `Queues`, enter the queue ID/ARN, not the name of the
    #   queue.
    #
    #    </note>
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics returned. For example, when
    #   results are grouped by queue, the metrics returned are grouped by
    #   queue. The values returned apply to the metrics for each queue rather
    #   than aggregated for all queues.
    #
    #   If no grouping is specified, a summary of metrics for all queues is
    #   returned.
    #
    # @option params [required, Array<Types::HistoricalMetric>] :historical_metrics
    #   The metrics to retrieve. Specify the name, unit, and statistic for
    #   each metric. The following historical metrics are available. For a
    #   description of each metric, see [Historical Metrics Definitions][1] in
    #   the *Amazon Connect Administrator Guide*.
    #
    #   <note markdown="1"> This API does not support a contacts incoming metric (there's no
    #   CONTACTS\_INCOMING metric missing from the documented list).
    #
    #    </note>
    #
    #   ABANDON\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   API\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CALLBACK\_CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_AGENT\_HUNG\_UP\_FIRST
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_CONSULTED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED\_INCOMING
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HANDLED\_OUTBOUND
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_MISSED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_IN
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_IN\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: COUNT
    #
    #     Statistic: SUM
    #
    #   HANDLE\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   INTERACTION\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   OCCUPANCY
    #
    #   : Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #   QUEUE\_ANSWER\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: AVG
    #
    #   QUEUED\_TIME
    #
    #   : Unit: SECONDS
    #
    #     Statistic: MAX
    #
    #   SERVICE\_LEVEL
    #
    #   : You can include up to 20 SERVICE\_LEVEL metrics in a request.
    #
    #     Unit: PERCENT
    #
    #     Statistic: AVG
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::GetMetricDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricDataResponse#next_token #next_token} => String
    #   * {Types::GetMetricDataResponse#metric_results #metric_results} => Array&lt;Types::HistoricalMetricResult&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_data({
    #     instance_id: "InstanceId", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     filters: { # required
    #       queues: ["QueueId"],
    #       channels: ["VOICE"], # accepts VOICE, CHAT, TASK
    #       routing_profiles: ["RoutingProfileId"],
    #     },
    #     groupings: ["QUEUE"], # accepts QUEUE, CHANNEL, ROUTING_PROFILE
    #     historical_metrics: [ # required
    #       {
    #         name: "CONTACTS_QUEUED", # accepts CONTACTS_QUEUED, CONTACTS_HANDLED, CONTACTS_ABANDONED, CONTACTS_CONSULTED, CONTACTS_AGENT_HUNG_UP_FIRST, CONTACTS_HANDLED_INCOMING, CONTACTS_HANDLED_OUTBOUND, CONTACTS_HOLD_ABANDONS, CONTACTS_TRANSFERRED_IN, CONTACTS_TRANSFERRED_OUT, CONTACTS_TRANSFERRED_IN_FROM_QUEUE, CONTACTS_TRANSFERRED_OUT_FROM_QUEUE, CONTACTS_MISSED, CALLBACK_CONTACTS_HANDLED, API_CONTACTS_HANDLED, OCCUPANCY, HANDLE_TIME, AFTER_CONTACT_WORK_TIME, QUEUED_TIME, ABANDON_TIME, QUEUE_ANSWER_TIME, HOLD_TIME, INTERACTION_TIME, INTERACTION_AND_HOLD_TIME, SERVICE_LEVEL
    #         threshold: {
    #           comparison: "LT", # accepts LT
    #           threshold_value: 1.0,
    #         },
    #         statistic: "SUM", # accepts SUM, MAX, AVG
    #         unit: "SECONDS", # accepts SECONDS, COUNT, PERCENT
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions.queue.id #=> String
    #   resp.metric_results[0].dimensions.queue.arn #=> String
    #   resp.metric_results[0].dimensions.channel #=> String, one of "VOICE", "CHAT", "TASK"
    #   resp.metric_results[0].dimensions.routing_profile.id #=> String
    #   resp.metric_results[0].dimensions.routing_profile.arn #=> String
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String, one of "CONTACTS_QUEUED", "CONTACTS_HANDLED", "CONTACTS_ABANDONED", "CONTACTS_CONSULTED", "CONTACTS_AGENT_HUNG_UP_FIRST", "CONTACTS_HANDLED_INCOMING", "CONTACTS_HANDLED_OUTBOUND", "CONTACTS_HOLD_ABANDONS", "CONTACTS_TRANSFERRED_IN", "CONTACTS_TRANSFERRED_OUT", "CONTACTS_TRANSFERRED_IN_FROM_QUEUE", "CONTACTS_TRANSFERRED_OUT_FROM_QUEUE", "CONTACTS_MISSED", "CALLBACK_CONTACTS_HANDLED", "API_CONTACTS_HANDLED", "OCCUPANCY", "HANDLE_TIME", "AFTER_CONTACT_WORK_TIME", "QUEUED_TIME", "ABANDON_TIME", "QUEUE_ANSWER_TIME", "HOLD_TIME", "INTERACTION_TIME", "INTERACTION_AND_HOLD_TIME", "SERVICE_LEVEL"
    #   resp.metric_results[0].collections[0].metric.threshold.comparison #=> String, one of "LT"
    #   resp.metric_results[0].collections[0].metric.threshold.threshold_value #=> Float
    #   resp.metric_results[0].collections[0].metric.statistic #=> String, one of "SUM", "MAX", "AVG"
    #   resp.metric_results[0].collections[0].metric.unit #=> String, one of "SECONDS", "COUNT", "PERCENT"
    #   resp.metric_results[0].collections[0].value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricData AWS API Documentation
    #
    # @overload get_metric_data(params = {})
    # @param [Hash] params ({})
    def get_metric_data(params = {}, options = {})
      req = build_request(:get_metric_data, params)
      req.send_request(options)
    end

    # Gets metric data from the specified Amazon Connect instance.
    #
    # `GetMetricDataV2` offers more features than [GetMetricData][1], the
    # previous version of this API. It has new metrics, offers filtering at
    # a metric level, and offers the ability to filter and group data by
    # channels, queues, routing profiles, agents, and agent hierarchy
    # levels. It can retrieve historical data for the last 35 days, in
    # 24-hour intervals.
    #
    # For a description of the historical metrics that are supported by
    # `GetMetricDataV2` and `GetMetricData`, see [Historical metrics
    # definitions][2] in the *Amazon Connect Administrator's Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricData.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. This includes the
    #   `instanceId` an Amazon Connect instance.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp, in UNIX Epoch time format, at which to start the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be before the end time timestamp. The time range between the
    #   start and end time must be less than 24 hours. The start time cannot
    #   be earlier than 35 days before the time of the request. Historical
    #   metrics are available for 35 days.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp, in UNIX Epoch time format, at which to end the
    #   reporting interval for the retrieval of historical metrics data. The
    #   time must be later than the start time timestamp. It cannot be later
    #   than the current timestamp.
    #
    #   The time range between the start and end time must be less than 24
    #   hours.
    #
    # @option params [required, Array<Types::FilterV2>] :filters
    #   The filters to apply to returned metrics. You can filter on the
    #   following resources:
    #
    #   * Queues
    #
    #   * Routing profiles
    #
    #   * Agents
    #
    #   * Channels
    #
    #   * User hierarchy groups
    #
    #   At least one filter must be passed from queues, routing profiles,
    #   agents, or user hierarchy groups.
    #
    #   To filter by phone number, see [Create a historical metrics report][1]
    #   in the *Amazon Connect Administrator's Guide*.
    #
    #   Note the following limits:
    #
    #   * **Filter keys**: A maximum of 5 filter keys are supported in a
    #     single request. Valid filter keys: `QUEUE` \| `ROUTING_PROFILE` \|
    #     `AGENT` \| `CHANNEL` \| `AGENT_HIERARCHY_LEVEL_ONE` \|
    #     `AGENT_HIERARCHY_LEVEL_TWO` \| `AGENT_HIERARCHY_LEVEL_THREE` \|
    #     `AGENT_HIERARCHY_LEVEL_FOUR` \| `AGENT_HIERARCHY_LEVEL_FIVE`
    #
    #   * **Filter values**: A maximum of 100 filter values are supported in a
    #     single request. VOICE, CHAT, and TASK are valid `filterValue` for
    #     the CHANNEL filter key. They do not count towards limitation of 100
    #     filter values. For example, a GetMetricDataV2 request can filter by
    #     50 queues, 35 agents, and 15 routing profiles for a total of 100
    #     filter values, along with 3 channel filters.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-historical-metrics-report.html
    #
    # @option params [Array<String>] :groupings
    #   The grouping applied to the metrics that are returned. For example,
    #   when results are grouped by queue, the metrics returned are grouped by
    #   queue. The values that are returned apply to the metrics for each
    #   queue. They are not aggregated for all queues.
    #
    #   If no grouping is specified, a summary of all metrics is returned.
    #
    #   Valid grouping keys: `QUEUE` \| `ROUTING_PROFILE` \| `AGENT` \|
    #   `CHANNEL` \| `AGENT_HIERARCHY_LEVEL_ONE` \|
    #   `AGENT_HIERARCHY_LEVEL_TWO` \| `AGENT_HIERARCHY_LEVEL_THREE` \|
    #   `AGENT_HIERARCHY_LEVEL_FOUR` \| `AGENT_HIERARCHY_LEVEL_FIVE`
    #
    # @option params [required, Array<Types::MetricV2>] :metrics
    #   The metrics to retrieve. Specify the name, groupings, and filters for
    #   each metric. The following historical metrics are available. For a
    #   description of each metric, see [Historical metrics definitions][1] in
    #   the *Amazon Connect Administrator's Guide*.
    #
    #   AGENT\_ADHERENT\_TIME
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][2] is available.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AGENT\_NON\_RESPONSE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AGENT\_OCCUPANCY
    #
    #   : Unit: Percentage
    #
    #     Valid groupings and filters: Routing Profile, Agent, Agent Hierarchy
    #
    #   AGENT\_SCHEDULE\_ADHERENCE
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][2] is available.
    #
    #     Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AGENT\_SCHEDULED\_TIME
    #
    #   : This metric is available only in Amazon Web Services Regions where
    #     [Forecasting, capacity planning, and scheduling][2] is available.
    #
    #     Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AVG\_ABANDON\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AVG\_AFTER\_CONTACT\_WORK\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AVG\_AGENT\_CONNECTING\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid metric filter key: `INITIATION_METHOD`. For now, this metric
    #     only supports the following as `INITIATION_METHOD`: `INBOUND` \|
    #     `OUTBOUND` \| `CALLBACK` \| `API`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AVG\_HANDLE\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AVG\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AVG\_INTERACTION\_AND\_HOLD\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   AVG\_INTERACTION\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #   AVG\_QUEUE\_ANSWER\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #   CONTACTS\_ABANDONED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   CONTACTS\_CREATED
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #   CONTACTS\_HANDLED
    #
    #   : Unit: Count
    #
    #     Valid metric filter key: `INITIATION_METHOD`, `DISCONNECT_REASON`
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   CONTACTS\_HOLD\_ABANDONS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   CONTACTS\_QUEUED
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   CONTACTS\_TRANSFERRED\_OUT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_BY\_AGENT
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   CONTACTS\_TRANSFERRED\_OUT\_FROM\_QUEUE
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   MAX\_QUEUED\_TIME
    #
    #   : Unit: Seconds
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile, Agent,
    #     Agent Hierarchy
    #
    #   SERVICE\_LEVEL
    #
    #   : You can include up to 20 SERVICE\_LEVEL metrics in a request.
    #
    #     Unit: Percent
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #   SUM\_CONTACTS\_ANSWERED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #   SUM\_CONTACTS\_ABANDONED\_IN\_X
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #     Threshold: For `ThresholdValue`, enter any whole number from 1 to
    #     604800 (inclusive), in seconds. For `Comparison`, you must enter
    #     `LT` (for "Less than").
    #
    #   SUM\_CONTACTS\_DISCONNECTED
    #
    #   : Valid metric filter key: `DISCONNECT_REASON`
    #
    #     Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #   SUM\_RETRY\_CALLBACK\_ATTEMPTS
    #
    #   : Unit: Count
    #
    #     Valid groupings and filters: Queue, Channel, Routing Profile
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html
    #   [2]: https://docs.aws.amazon.com/connect/latest/adminguide/regions.html#optimization_region
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::GetMetricDataV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricDataV2Response#next_token #next_token} => String
    #   * {Types::GetMetricDataV2Response#metric_results #metric_results} => Array&lt;Types::MetricResultV2&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metric_data_v2({
    #     resource_arn: "ARN", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     filters: [ # required
    #       {
    #         filter_key: "ResourceArnOrId",
    #         filter_values: ["ResourceArnOrId"],
    #       },
    #     ],
    #     groupings: ["GroupingV2"],
    #     metrics: [ # required
    #       {
    #         name: "MetricNameV2",
    #         threshold: [
    #           {
    #             comparison: "ResourceArnOrId",
    #             threshold_value: 1.0,
    #           },
    #         ],
    #         metric_filters: [
    #           {
    #             metric_filter_key: "String",
    #             metric_filter_values: ["String"],
    #           },
    #         ],
    #       },
    #     ],
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.metric_results #=> Array
    #   resp.metric_results[0].dimensions #=> Hash
    #   resp.metric_results[0].dimensions["DimensionsV2Key"] #=> String
    #   resp.metric_results[0].collections #=> Array
    #   resp.metric_results[0].collections[0].metric.name #=> String
    #   resp.metric_results[0].collections[0].metric.threshold #=> Array
    #   resp.metric_results[0].collections[0].metric.threshold[0].comparison #=> String
    #   resp.metric_results[0].collections[0].metric.threshold[0].threshold_value #=> Float
    #   resp.metric_results[0].collections[0].metric.metric_filters #=> Array
    #   resp.metric_results[0].collections[0].metric.metric_filters[0].metric_filter_key #=> String
    #   resp.metric_results[0].collections[0].metric.metric_filters[0].metric_filter_values #=> Array
    #   resp.metric_results[0].collections[0].metric.metric_filters[0].metric_filter_values[0] #=> String
    #   resp.metric_results[0].collections[0].value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetMetricDataV2 AWS API Documentation
    #
    # @overload get_metric_data_v2(params = {})
    # @param [Hash] params ({})
    def get_metric_data_v2(params = {}, options = {})
      req = build_request(:get_metric_data_v2, params)
      req.send_request(options)
    end

    # Gets the prompt file.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :prompt_id
    #   A unique identifier for the prompt.
    #
    # @return [Types::GetPromptFileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPromptFileResponse#prompt_presigned_url #prompt_presigned_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_prompt_file({
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_presigned_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetPromptFile AWS API Documentation
    #
    # @overload get_prompt_file(params = {})
    # @param [Hash] params ({})
    def get_prompt_file(params = {}, options = {})
      req = build_request(:get_prompt_file, params)
      req.send_request(options)
    end

    # Gets details about a specific task template in the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :task_template_id
    #   A unique identifier for the task template.
    #
    # @option params [String] :snapshot_version
    #   The system generated version of a task template that is associated
    #   with a task, when the task is created.
    #
    # @return [Types::GetTaskTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTaskTemplateResponse#instance_id #instance_id} => String
    #   * {Types::GetTaskTemplateResponse#id #id} => String
    #   * {Types::GetTaskTemplateResponse#arn #arn} => String
    #   * {Types::GetTaskTemplateResponse#name #name} => String
    #   * {Types::GetTaskTemplateResponse#description #description} => String
    #   * {Types::GetTaskTemplateResponse#contact_flow_id #contact_flow_id} => String
    #   * {Types::GetTaskTemplateResponse#constraints #constraints} => Types::TaskTemplateConstraints
    #   * {Types::GetTaskTemplateResponse#defaults #defaults} => Types::TaskTemplateDefaults
    #   * {Types::GetTaskTemplateResponse#fields #fields} => Array&lt;Types::TaskTemplateField&gt;
    #   * {Types::GetTaskTemplateResponse#status #status} => String
    #   * {Types::GetTaskTemplateResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetTaskTemplateResponse#created_time #created_time} => Time
    #   * {Types::GetTaskTemplateResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_task_template({
    #     instance_id: "InstanceId", # required
    #     task_template_id: "TaskTemplateId", # required
    #     snapshot_version: "SnapshotVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.contact_flow_id #=> String
    #   resp.constraints.required_fields #=> Array
    #   resp.constraints.required_fields[0].id.name #=> String
    #   resp.constraints.read_only_fields #=> Array
    #   resp.constraints.read_only_fields[0].id.name #=> String
    #   resp.constraints.invisible_fields #=> Array
    #   resp.constraints.invisible_fields[0].id.name #=> String
    #   resp.defaults.default_field_values #=> Array
    #   resp.defaults.default_field_values[0].id.name #=> String
    #   resp.defaults.default_field_values[0].default_value #=> String
    #   resp.fields #=> Array
    #   resp.fields[0].id.name #=> String
    #   resp.fields[0].description #=> String
    #   resp.fields[0].type #=> String, one of "NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL"
    #   resp.fields[0].single_select_options #=> Array
    #   resp.fields[0].single_select_options[0] #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.last_modified_time #=> Time
    #   resp.created_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTaskTemplate AWS API Documentation
    #
    # @overload get_task_template(params = {})
    # @param [Hash] params ({})
    def get_task_template(params = {}, options = {})
      req = build_request(:get_task_template, params)
      req.send_request(options)
    end

    # Retrieves the current traffic distribution for a given traffic
    # distribution group.
    #
    # @option params [required, String] :id
    #   The identifier of the traffic distribution group.
    #
    # @return [Types::GetTrafficDistributionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTrafficDistributionResponse#telephony_config #telephony_config} => Types::TelephonyConfig
    #   * {Types::GetTrafficDistributionResponse#id #id} => String
    #   * {Types::GetTrafficDistributionResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_traffic_distribution({
    #     id: "TrafficDistributionGroupIdOrArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.telephony_config.distributions #=> Array
    #   resp.telephony_config.distributions[0].region #=> String
    #   resp.telephony_config.distributions[0].percentage #=> Integer
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/GetTrafficDistribution AWS API Documentation
    #
    # @overload get_traffic_distribution(params = {})
    # @param [Hash] params ({})
    def get_traffic_distribution(params = {}, options = {})
      req = build_request(:get_traffic_distribution, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Lists agent statuses.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Array<String>] :agent_status_types
    #   Available agent status types.
    #
    # @return [Types::ListAgentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAgentStatusResponse#next_token #next_token} => String
    #   * {Types::ListAgentStatusResponse#agent_status_summary_list #agent_status_summary_list} => Array&lt;Types::AgentStatusSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agent_statuses({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     agent_status_types: ["ROUTABLE"], # accepts ROUTABLE, CUSTOM, OFFLINE
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.agent_status_summary_list #=> Array
    #   resp.agent_status_summary_list[0].id #=> String
    #   resp.agent_status_summary_list[0].arn #=> String
    #   resp.agent_status_summary_list[0].name #=> String
    #   resp.agent_status_summary_list[0].type #=> String, one of "ROUTABLE", "CUSTOM", "OFFLINE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListAgentStatuses AWS API Documentation
    #
    # @overload list_agent_statuses(params = {})
    # @param [Hash] params ({})
    def list_agent_statuses(params = {}, options = {})
      req = build_request(:list_agent_statuses, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all approved origins associated with the
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListApprovedOriginsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListApprovedOriginsResponse#origins #origins} => Array&lt;String&gt;
    #   * {Types::ListApprovedOriginsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_approved_origins({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.origins #=> Array
    #   resp.origins[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListApprovedOrigins AWS API Documentation
    #
    # @overload list_approved_origins(params = {})
    # @param [Hash] params ({})
    def list_approved_origins(params = {}, options = {})
      req = build_request(:list_approved_origins, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # For the specified version of Amazon Lex, returns a paginated list of
    # all the Amazon Lex bots currently associated with the instance. Use
    # this API to returns both Amazon Lex V1 and V2 bots.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [required, String] :lex_version
    #   The version of Amazon Lex or Amazon Lex V2.
    #
    # @return [Types::ListBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListBotsResponse#lex_bots #lex_bots} => Array&lt;Types::LexBotConfig&gt;
    #   * {Types::ListBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bots({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     lex_version: "V1", # required, accepts V1, V2
    #   })
    #
    # @example Response structure
    #
    #   resp.lex_bots #=> Array
    #   resp.lex_bots[0].lex_bot.name #=> String
    #   resp.lex_bots[0].lex_bot.lex_region #=> String
    #   resp.lex_bots[0].lex_v2_bot.alias_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListBots AWS API Documentation
    #
    # @overload list_bots(params = {})
    # @param [Hash] params ({})
    def list_bots(params = {}, options = {})
      req = build_request(:list_bots, params)
      req.send_request(options)
    end

    # Lists contact evaluations in the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   This is not expected to be set because the value returned in the
    #   previous response is always null.
    #
    # @return [Types::ListContactEvaluationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactEvaluationsResponse#evaluation_summary_list #evaluation_summary_list} => Array&lt;Types::EvaluationSummary&gt;
    #   * {Types::ListContactEvaluationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_evaluations({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_summary_list #=> Array
    #   resp.evaluation_summary_list[0].evaluation_id #=> String
    #   resp.evaluation_summary_list[0].evaluation_arn #=> String
    #   resp.evaluation_summary_list[0].evaluation_form_title #=> String
    #   resp.evaluation_summary_list[0].evaluation_form_id #=> String
    #   resp.evaluation_summary_list[0].status #=> String, one of "DRAFT", "SUBMITTED"
    #   resp.evaluation_summary_list[0].evaluator_arn #=> String
    #   resp.evaluation_summary_list[0].score.percentage #=> Float
    #   resp.evaluation_summary_list[0].score.not_applicable #=> Boolean
    #   resp.evaluation_summary_list[0].score.automatic_fail #=> Boolean
    #   resp.evaluation_summary_list[0].created_time #=> Time
    #   resp.evaluation_summary_list[0].last_modified_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactEvaluations AWS API Documentation
    #
    # @overload list_contact_evaluations(params = {})
    # @param [Hash] params ({})
    def list_contact_evaluations(params = {}, options = {})
      req = build_request(:list_contact_evaluations, params)
      req.send_request(options)
    end

    # Provides information about the flow modules for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :contact_flow_module_state
    #   The state of the flow module.
    #
    # @return [Types::ListContactFlowModulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactFlowModulesResponse#contact_flow_modules_summary_list #contact_flow_modules_summary_list} => Array&lt;Types::ContactFlowModuleSummary&gt;
    #   * {Types::ListContactFlowModulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_flow_modules({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     contact_flow_module_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_modules_summary_list #=> Array
    #   resp.contact_flow_modules_summary_list[0].id #=> String
    #   resp.contact_flow_modules_summary_list[0].arn #=> String
    #   resp.contact_flow_modules_summary_list[0].name #=> String
    #   resp.contact_flow_modules_summary_list[0].state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlowModules AWS API Documentation
    #
    # @overload list_contact_flow_modules(params = {})
    # @param [Hash] params ({})
    def list_contact_flow_modules(params = {}, options = {})
      req = build_request(:list_contact_flow_modules, params)
      req.send_request(options)
    end

    # Provides information about the flows for the specified Amazon Connect
    # instance.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    # For more information about flows, see [Flows][2] in the *Amazon
    # Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Array<String>] :contact_flow_types
    #   The type of flow.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListContactFlowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactFlowsResponse#contact_flow_summary_list #contact_flow_summary_list} => Array&lt;Types::ContactFlowSummary&gt;
    #   * {Types::ListContactFlowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_flows({
    #     instance_id: "InstanceId", # required
    #     contact_flow_types: ["CONTACT_FLOW"], # accepts CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_flow_summary_list #=> Array
    #   resp.contact_flow_summary_list[0].id #=> String
    #   resp.contact_flow_summary_list[0].arn #=> String
    #   resp.contact_flow_summary_list[0].name #=> String
    #   resp.contact_flow_summary_list[0].contact_flow_type #=> String, one of "CONTACT_FLOW", "CUSTOMER_QUEUE", "CUSTOMER_HOLD", "CUSTOMER_WHISPER", "AGENT_HOLD", "AGENT_WHISPER", "OUTBOUND_WHISPER", "AGENT_TRANSFER", "QUEUE_TRANSFER"
    #   resp.contact_flow_summary_list[0].contact_flow_state #=> String, one of "ACTIVE", "ARCHIVED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactFlows AWS API Documentation
    #
    # @overload list_contact_flows(params = {})
    # @param [Hash] params ({})
    def list_contact_flows(params = {}, options = {})
      req = build_request(:list_contact_flows, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # For the specified `referenceTypes`, returns a list of references
    # associated with the contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the initial contact.
    #
    # @option params [required, Array<String>] :reference_types
    #   The type of reference.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   This is not expected to be set, because the value returned in the
    #   previous response is always null.
    #
    # @return [Types::ListContactReferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListContactReferencesResponse#reference_summary_list #reference_summary_list} => Array&lt;Types::ReferenceSummary&gt;
    #   * {Types::ListContactReferencesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_contact_references({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     reference_types: ["URL"], # required, accepts URL, ATTACHMENT, NUMBER, STRING, DATE, EMAIL
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.reference_summary_list #=> Array
    #   resp.reference_summary_list[0].url.name #=> String
    #   resp.reference_summary_list[0].url.value #=> String
    #   resp.reference_summary_list[0].attachment.name #=> String
    #   resp.reference_summary_list[0].attachment.value #=> String
    #   resp.reference_summary_list[0].attachment.status #=> String, one of "APPROVED", "REJECTED"
    #   resp.reference_summary_list[0].string.name #=> String
    #   resp.reference_summary_list[0].string.value #=> String
    #   resp.reference_summary_list[0].number.name #=> String
    #   resp.reference_summary_list[0].number.value #=> String
    #   resp.reference_summary_list[0].date.name #=> String
    #   resp.reference_summary_list[0].date.value #=> String
    #   resp.reference_summary_list[0].email.name #=> String
    #   resp.reference_summary_list[0].email.value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListContactReferences AWS API Documentation
    #
    # @overload list_contact_references(params = {})
    # @param [Hash] params ({})
    def list_contact_references(params = {}, options = {})
      req = build_request(:list_contact_references, params)
      req.send_request(options)
    end

    # Lists the default vocabularies for the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListDefaultVocabulariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDefaultVocabulariesResponse#default_vocabulary_list #default_vocabulary_list} => Array&lt;Types::DefaultVocabulary&gt;
    #   * {Types::ListDefaultVocabulariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_default_vocabularies({
    #     instance_id: "InstanceId", # required
    #     language_code: "ar-AE", # accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN, en-NZ, en-ZA
    #     max_results: 1,
    #     next_token: "VocabularyNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.default_vocabulary_list #=> Array
    #   resp.default_vocabulary_list[0].instance_id #=> String
    #   resp.default_vocabulary_list[0].language_code #=> String, one of "ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA"
    #   resp.default_vocabulary_list[0].vocabulary_id #=> String
    #   resp.default_vocabulary_list[0].vocabulary_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListDefaultVocabularies AWS API Documentation
    #
    # @overload list_default_vocabularies(params = {})
    # @param [Hash] params ({})
    def list_default_vocabularies(params = {}, options = {})
      req = build_request(:list_default_vocabularies, params)
      req.send_request(options)
    end

    # Lists versions of an evaluation form in the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListEvaluationFormVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEvaluationFormVersionsResponse#evaluation_form_version_summary_list #evaluation_form_version_summary_list} => Array&lt;Types::EvaluationFormVersionSummary&gt;
    #   * {Types::ListEvaluationFormVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_evaluation_form_versions({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_version_summary_list #=> Array
    #   resp.evaluation_form_version_summary_list[0].evaluation_form_arn #=> String
    #   resp.evaluation_form_version_summary_list[0].evaluation_form_id #=> String
    #   resp.evaluation_form_version_summary_list[0].evaluation_form_version #=> Integer
    #   resp.evaluation_form_version_summary_list[0].locked #=> Boolean
    #   resp.evaluation_form_version_summary_list[0].status #=> String, one of "DRAFT", "ACTIVE"
    #   resp.evaluation_form_version_summary_list[0].created_time #=> Time
    #   resp.evaluation_form_version_summary_list[0].created_by #=> String
    #   resp.evaluation_form_version_summary_list[0].last_modified_time #=> Time
    #   resp.evaluation_form_version_summary_list[0].last_modified_by #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListEvaluationFormVersions AWS API Documentation
    #
    # @overload list_evaluation_form_versions(params = {})
    # @param [Hash] params ({})
    def list_evaluation_form_versions(params = {}, options = {})
      req = build_request(:list_evaluation_form_versions, params)
      req.send_request(options)
    end

    # Lists evaluation forms in the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListEvaluationFormsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEvaluationFormsResponse#evaluation_form_summary_list #evaluation_form_summary_list} => Array&lt;Types::EvaluationFormSummary&gt;
    #   * {Types::ListEvaluationFormsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_evaluation_forms({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_summary_list #=> Array
    #   resp.evaluation_form_summary_list[0].evaluation_form_id #=> String
    #   resp.evaluation_form_summary_list[0].evaluation_form_arn #=> String
    #   resp.evaluation_form_summary_list[0].title #=> String
    #   resp.evaluation_form_summary_list[0].created_time #=> Time
    #   resp.evaluation_form_summary_list[0].created_by #=> String
    #   resp.evaluation_form_summary_list[0].last_modified_time #=> Time
    #   resp.evaluation_form_summary_list[0].last_modified_by #=> String
    #   resp.evaluation_form_summary_list[0].last_activated_time #=> Time
    #   resp.evaluation_form_summary_list[0].last_activated_by #=> String
    #   resp.evaluation_form_summary_list[0].latest_version #=> Integer
    #   resp.evaluation_form_summary_list[0].active_version #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListEvaluationForms AWS API Documentation
    #
    # @overload list_evaluation_forms(params = {})
    # @param [Hash] params ({})
    def list_evaluation_forms(params = {}, options = {})
      req = build_request(:list_evaluation_forms, params)
      req.send_request(options)
    end

    # Provides information about the hours of operation for the specified
    # Amazon Connect instance.
    #
    # For more information about hours of operation, see [Set the Hours of
    # Operation for a Queue][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListHoursOfOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListHoursOfOperationsResponse#hours_of_operation_summary_list #hours_of_operation_summary_list} => Array&lt;Types::HoursOfOperationSummary&gt;
    #   * {Types::ListHoursOfOperationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hours_of_operations({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operation_summary_list #=> Array
    #   resp.hours_of_operation_summary_list[0].id #=> String
    #   resp.hours_of_operation_summary_list[0].arn #=> String
    #   resp.hours_of_operation_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListHoursOfOperations AWS API Documentation
    #
    # @overload list_hours_of_operations(params = {})
    # @param [Hash] params ({})
    def list_hours_of_operations(params = {}, options = {})
      req = build_request(:list_hours_of_operations, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all attribute types for the given
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListInstanceAttributesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceAttributesResponse#attributes #attributes} => Array&lt;Types::Attribute&gt;
    #   * {Types::ListInstanceAttributesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_attributes({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.attributes #=> Array
    #   resp.attributes[0].attribute_type #=> String, one of "INBOUND_CALLS", "OUTBOUND_CALLS", "CONTACTFLOW_LOGS", "CONTACT_LENS", "AUTO_RESOLVE_BEST_VOICES", "USE_CUSTOM_TTS_VOICES", "EARLY_MEDIA", "MULTI_PARTY_CONFERENCE", "HIGH_VOLUME_OUTBOUND", "ENHANCED_CONTACT_MONITORING"
    #   resp.attributes[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstanceAttributes AWS API Documentation
    #
    # @overload list_instance_attributes(params = {})
    # @param [Hash] params ({})
    def list_instance_attributes(params = {}, options = {})
      req = build_request(:list_instance_attributes, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of storage configs for the identified
    # instance and resource type.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListInstanceStorageConfigsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstanceStorageConfigsResponse#storage_configs #storage_configs} => Array&lt;Types::InstanceStorageConfig&gt;
    #   * {Types::ListInstanceStorageConfigsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_storage_configs({
    #     instance_id: "InstanceId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_configs #=> Array
    #   resp.storage_configs[0].association_id #=> String
    #   resp.storage_configs[0].storage_type #=> String, one of "S3", "KINESIS_VIDEO_STREAM", "KINESIS_STREAM", "KINESIS_FIREHOSE"
    #   resp.storage_configs[0].s3_config.bucket_name #=> String
    #   resp.storage_configs[0].s3_config.bucket_prefix #=> String
    #   resp.storage_configs[0].s3_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.storage_configs[0].s3_config.encryption_config.key_id #=> String
    #   resp.storage_configs[0].kinesis_video_stream_config.prefix #=> String
    #   resp.storage_configs[0].kinesis_video_stream_config.retention_period_hours #=> Integer
    #   resp.storage_configs[0].kinesis_video_stream_config.encryption_config.encryption_type #=> String, one of "KMS"
    #   resp.storage_configs[0].kinesis_video_stream_config.encryption_config.key_id #=> String
    #   resp.storage_configs[0].kinesis_stream_config.stream_arn #=> String
    #   resp.storage_configs[0].kinesis_firehose_config.firehose_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstanceStorageConfigs AWS API Documentation
    #
    # @overload list_instance_storage_configs(params = {})
    # @param [Hash] params ({})
    def list_instance_storage_configs(params = {}, options = {})
      req = build_request(:list_instance_storage_configs, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Return a list of instances which are in active state,
    # creation-in-progress state, and failed state. Instances that aren't
    # successfully created (they are in a failed state) are returned only
    # for 24 hours after the CreateInstance API was invoked.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListInstancesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInstancesResponse#instance_summary_list #instance_summary_list} => Array&lt;Types::InstanceSummary&gt;
    #   * {Types::ListInstancesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_summary_list #=> Array
    #   resp.instance_summary_list[0].id #=> String
    #   resp.instance_summary_list[0].arn #=> String
    #   resp.instance_summary_list[0].identity_management_type #=> String, one of "SAML", "CONNECT_MANAGED", "EXISTING_DIRECTORY"
    #   resp.instance_summary_list[0].instance_alias #=> String
    #   resp.instance_summary_list[0].created_time #=> Time
    #   resp.instance_summary_list[0].service_role #=> String
    #   resp.instance_summary_list[0].instance_status #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED"
    #   resp.instance_summary_list[0].inbound_calls_enabled #=> Boolean
    #   resp.instance_summary_list[0].outbound_calls_enabled #=> Boolean
    #   resp.instance_summary_list[0].instance_access_url #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListInstances AWS API Documentation
    #
    # @overload list_instances(params = {})
    # @param [Hash] params ({})
    def list_instances(params = {}, options = {})
      req = build_request(:list_instances, params)
      req.send_request(options)
    end

    # Provides summary information about the Amazon Web Services resource
    # associations for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :integration_type
    #   The integration type.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListIntegrationAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIntegrationAssociationsResponse#integration_association_summary_list #integration_association_summary_list} => Array&lt;Types::IntegrationAssociationSummary&gt;
    #   * {Types::ListIntegrationAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_integration_associations({
    #     instance_id: "InstanceId", # required
    #     integration_type: "EVENT", # accepts EVENT, VOICE_ID, PINPOINT_APP, WISDOM_ASSISTANT, WISDOM_KNOWLEDGE_BASE, CASES_DOMAIN
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.integration_association_summary_list #=> Array
    #   resp.integration_association_summary_list[0].integration_association_id #=> String
    #   resp.integration_association_summary_list[0].integration_association_arn #=> String
    #   resp.integration_association_summary_list[0].instance_id #=> String
    #   resp.integration_association_summary_list[0].integration_type #=> String, one of "EVENT", "VOICE_ID", "PINPOINT_APP", "WISDOM_ASSISTANT", "WISDOM_KNOWLEDGE_BASE", "CASES_DOMAIN"
    #   resp.integration_association_summary_list[0].integration_arn #=> String
    #   resp.integration_association_summary_list[0].source_application_url #=> String
    #   resp.integration_association_summary_list[0].source_application_name #=> String
    #   resp.integration_association_summary_list[0].source_type #=> String, one of "SALESFORCE", "ZENDESK"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListIntegrationAssociations AWS API Documentation
    #
    # @overload list_integration_associations(params = {})
    # @param [Hash] params ({})
    def list_integration_associations(params = {}, options = {})
      req = build_request(:list_integration_associations, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all Lambda functions that display in the
    # dropdown options in the relevant flow blocks.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListLambdaFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLambdaFunctionsResponse#lambda_functions #lambda_functions} => Array&lt;String&gt;
    #   * {Types::ListLambdaFunctionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lambda_functions({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.lambda_functions #=> Array
    #   resp.lambda_functions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListLambdaFunctions AWS API Documentation
    #
    # @overload list_lambda_functions(params = {})
    # @param [Hash] params ({})
    def list_lambda_functions(params = {}, options = {})
      req = build_request(:list_lambda_functions, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all the Amazon Lex V1 bots currently
    # associated with the instance. To return both Amazon Lex V1 and V2
    # bots, use the [ListBots][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListBots.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. If no value is
    #   specified, the default is 10.
    #
    # @return [Types::ListLexBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLexBotsResponse#lex_bots #lex_bots} => Array&lt;Types::LexBot&gt;
    #   * {Types::ListLexBotsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_lex_bots({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.lex_bots #=> Array
    #   resp.lex_bots[0].name #=> String
    #   resp.lex_bots[0].lex_region #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListLexBots AWS API Documentation
    #
    # @overload list_lex_bots(params = {})
    # @param [Hash] params ({})
    def list_lex_bots(params = {}, options = {})
      req = build_request(:list_lex_bots, params)
      req.send_request(options)
    end

    # Provides information about the phone numbers for the specified Amazon
    # Connect instance.
    #
    # For more information about phone numbers, see [Set Up Phone Numbers
    # for Your Contact Center][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    # The phone number `Arn` value that is returned from each of the items
    # in the [PhoneNumberSummaryList][2] cannot be used to tag phone number
    # resources. It will fail with a `ResourceNotFoundException`. Instead,
    # use the [ListPhoneNumbersV2][3] API. It returns the new phone number
    # ARN that can be used to tag phone number resources.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbers.html#connect-ListPhoneNumbers-response-PhoneNumberSummaryList
    # [3]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Array<String>] :phone_number_types
    #   The type of phone number.
    #
    # @option params [Array<String>] :phone_number_country_codes
    #   The ISO country code.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListPhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumbersResponse#phone_number_summary_list #phone_number_summary_list} => Array&lt;Types::PhoneNumberSummary&gt;
    #   * {Types::ListPhoneNumbersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers({
    #     instance_id: "InstanceId", # required
    #     phone_number_types: ["TOLL_FREE"], # accepts TOLL_FREE, DID
    #     phone_number_country_codes: ["AF"], # accepts AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_summary_list #=> Array
    #   resp.phone_number_summary_list[0].id #=> String
    #   resp.phone_number_summary_list[0].arn #=> String
    #   resp.phone_number_summary_list[0].phone_number #=> String
    #   resp.phone_number_summary_list[0].phone_number_type #=> String, one of "TOLL_FREE", "DID"
    #   resp.phone_number_summary_list[0].phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbers AWS API Documentation
    #
    # @overload list_phone_numbers(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers(params = {}, options = {})
      req = build_request(:list_phone_numbers, params)
      req.send_request(options)
    end

    # Lists phone numbers claimed to your Amazon Connect instance or traffic
    # distribution group. If the provided `TargetArn` is a traffic
    # distribution group, you can call this API in both Amazon Web Services
    # Regions associated with traffic distribution group.
    #
    # For more information about phone numbers, see [Set Up Phone Numbers
    # for Your Contact Center][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html
    #
    # @option params [String] :target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
    #   distribution groups that phone numbers are claimed to. If `TargetArn`
    #   input is not provided, this API lists numbers claimed to all the
    #   Amazon Connect instances belonging to your account in the same Amazon
    #   Web Services Region as the request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Array<String>] :phone_number_country_codes
    #   The ISO country code.
    #
    # @option params [Array<String>] :phone_number_types
    #   The type of phone number.
    #
    # @option params [String] :phone_number_prefix
    #   The prefix of the phone number. If provided, it must contain `+` as
    #   part of the country code.
    #
    # @return [Types::ListPhoneNumbersV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPhoneNumbersV2Response#next_token #next_token} => String
    #   * {Types::ListPhoneNumbersV2Response#list_phone_numbers_summary_list #list_phone_numbers_summary_list} => Array&lt;Types::ListPhoneNumbersSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phone_numbers_v2({
    #     target_arn: "ARN",
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #     phone_number_country_codes: ["AF"], # accepts AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
    #     phone_number_types: ["TOLL_FREE"], # accepts TOLL_FREE, DID
    #     phone_number_prefix: "PhoneNumberPrefix",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.list_phone_numbers_summary_list #=> Array
    #   resp.list_phone_numbers_summary_list[0].phone_number_id #=> String
    #   resp.list_phone_numbers_summary_list[0].phone_number_arn #=> String
    #   resp.list_phone_numbers_summary_list[0].phone_number #=> String
    #   resp.list_phone_numbers_summary_list[0].phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.list_phone_numbers_summary_list[0].phone_number_type #=> String, one of "TOLL_FREE", "DID"
    #   resp.list_phone_numbers_summary_list[0].target_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPhoneNumbersV2 AWS API Documentation
    #
    # @overload list_phone_numbers_v2(params = {})
    # @param [Hash] params ({})
    def list_phone_numbers_v2(params = {}, options = {})
      req = build_request(:list_phone_numbers_v2, params)
      req.send_request(options)
    end

    # Provides information about the prompts for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListPromptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPromptsResponse#prompt_summary_list #prompt_summary_list} => Array&lt;Types::PromptSummary&gt;
    #   * {Types::ListPromptsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_prompts({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_summary_list #=> Array
    #   resp.prompt_summary_list[0].id #=> String
    #   resp.prompt_summary_list[0].arn #=> String
    #   resp.prompt_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListPrompts AWS API Documentation
    #
    # @overload list_prompts(params = {})
    # @param [Hash] params ({})
    def list_prompts(params = {}, options = {})
      req = build_request(:list_prompts, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Lists the quick connects associated with a queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListQueueQuickConnectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueueQuickConnectsResponse#next_token #next_token} => String
    #   * {Types::ListQueueQuickConnectsResponse#quick_connect_summary_list #quick_connect_summary_list} => Array&lt;Types::QuickConnectSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queue_quick_connects({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.quick_connect_summary_list #=> Array
    #   resp.quick_connect_summary_list[0].id #=> String
    #   resp.quick_connect_summary_list[0].arn #=> String
    #   resp.quick_connect_summary_list[0].name #=> String
    #   resp.quick_connect_summary_list[0].quick_connect_type #=> String, one of "USER", "QUEUE", "PHONE_NUMBER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueueQuickConnects AWS API Documentation
    #
    # @overload list_queue_quick_connects(params = {})
    # @param [Hash] params ({})
    def list_queue_quick_connects(params = {}, options = {})
      req = build_request(:list_queue_quick_connects, params)
      req.send_request(options)
    end

    # Provides information about the queues for the specified Amazon Connect
    # instance.
    #
    # If you do not specify a `QueueTypes` parameter, both standard and
    # agent queues are returned. This might cause an unexpected truncation
    # of results if you have more than 1000 agents and you limit the number
    # of results of the API call in code.
    #
    # For more information about queues, see [Queues: Standard and Agent][1]
    # in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Array<String>] :queue_types
    #   The type of queue.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQueuesResponse#queue_summary_list #queue_summary_list} => Array&lt;Types::QueueSummary&gt;
    #   * {Types::ListQueuesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queues({
    #     instance_id: "InstanceId", # required
    #     queue_types: ["STANDARD"], # accepts STANDARD, AGENT
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.queue_summary_list #=> Array
    #   resp.queue_summary_list[0].id #=> String
    #   resp.queue_summary_list[0].arn #=> String
    #   resp.queue_summary_list[0].name #=> String
    #   resp.queue_summary_list[0].queue_type #=> String, one of "STANDARD", "AGENT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQueues AWS API Documentation
    #
    # @overload list_queues(params = {})
    # @param [Hash] params ({})
    def list_queues(params = {}, options = {})
      req = build_request(:list_queues, params)
      req.send_request(options)
    end

    # Provides information about the quick connects for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @option params [Array<String>] :quick_connect_types
    #   The type of quick connect. In the Amazon Connect console, when you
    #   create a quick connect, you are prompted to assign one of the
    #   following types: Agent (USER), External (PHONE\_NUMBER), or Queue
    #   (QUEUE).
    #
    # @return [Types::ListQuickConnectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListQuickConnectsResponse#quick_connect_summary_list #quick_connect_summary_list} => Array&lt;Types::QuickConnectSummary&gt;
    #   * {Types::ListQuickConnectsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_quick_connects({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     quick_connect_types: ["USER"], # accepts USER, QUEUE, PHONE_NUMBER
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_connect_summary_list #=> Array
    #   resp.quick_connect_summary_list[0].id #=> String
    #   resp.quick_connect_summary_list[0].arn #=> String
    #   resp.quick_connect_summary_list[0].name #=> String
    #   resp.quick_connect_summary_list[0].quick_connect_type #=> String, one of "USER", "QUEUE", "PHONE_NUMBER"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListQuickConnects AWS API Documentation
    #
    # @overload list_quick_connects(params = {})
    # @param [Hash] params ({})
    def list_quick_connects(params = {}, options = {})
      req = build_request(:list_quick_connects, params)
      req.send_request(options)
    end

    # Lists the queues associated with a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListRoutingProfileQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingProfileQueuesResponse#next_token #next_token} => String
    #   * {Types::ListRoutingProfileQueuesResponse#routing_profile_queue_config_summary_list #routing_profile_queue_config_summary_list} => Array&lt;Types::RoutingProfileQueueConfigSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.routing_profile_queue_config_summary_list #=> Array
    #   resp.routing_profile_queue_config_summary_list[0].queue_id #=> String
    #   resp.routing_profile_queue_config_summary_list[0].queue_arn #=> String
    #   resp.routing_profile_queue_config_summary_list[0].queue_name #=> String
    #   resp.routing_profile_queue_config_summary_list[0].priority #=> Integer
    #   resp.routing_profile_queue_config_summary_list[0].delay #=> Integer
    #   resp.routing_profile_queue_config_summary_list[0].channel #=> String, one of "VOICE", "CHAT", "TASK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfileQueues AWS API Documentation
    #
    # @overload list_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def list_routing_profile_queues(params = {}, options = {})
      req = build_request(:list_routing_profile_queues, params)
      req.send_request(options)
    end

    # Provides summary information about the routing profiles for the
    # specified Amazon Connect instance.
    #
    # For more information about routing profiles, see [Routing Profiles][1]
    # and [Create a Routing Profile][2] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListRoutingProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoutingProfilesResponse#routing_profile_summary_list #routing_profile_summary_list} => Array&lt;Types::RoutingProfileSummary&gt;
    #   * {Types::ListRoutingProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_routing_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profile_summary_list #=> Array
    #   resp.routing_profile_summary_list[0].id #=> String
    #   resp.routing_profile_summary_list[0].arn #=> String
    #   resp.routing_profile_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRoutingProfiles AWS API Documentation
    #
    # @overload list_routing_profiles(params = {})
    # @param [Hash] params ({})
    def list_routing_profiles(params = {}, options = {})
      req = build_request(:list_routing_profiles, params)
      req.send_request(options)
    end

    # List all rules for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :publish_status
    #   The publish status of the rule.
    #
    # @option params [String] :event_source_name
    #   The name of the event source.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesResponse#rule_summary_list #rule_summary_list} => Array&lt;Types::RuleSummary&gt;
    #   * {Types::ListRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     instance_id: "InstanceId", # required
    #     publish_status: "DRAFT", # accepts DRAFT, PUBLISHED
    #     event_source_name: "OnPostCallAnalysisAvailable", # accepts OnPostCallAnalysisAvailable, OnRealTimeCallAnalysisAvailable, OnPostChatAnalysisAvailable, OnZendeskTicketCreate, OnZendeskTicketStatusUpdate, OnSalesforceCaseCreate, OnContactEvaluationSubmit
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_summary_list #=> Array
    #   resp.rule_summary_list[0].name #=> String
    #   resp.rule_summary_list[0].rule_id #=> String
    #   resp.rule_summary_list[0].rule_arn #=> String
    #   resp.rule_summary_list[0].event_source_name #=> String, one of "OnPostCallAnalysisAvailable", "OnRealTimeCallAnalysisAvailable", "OnPostChatAnalysisAvailable", "OnZendeskTicketCreate", "OnZendeskTicketStatusUpdate", "OnSalesforceCaseCreate", "OnContactEvaluationSubmit"
    #   resp.rule_summary_list[0].publish_status #=> String, one of "DRAFT", "PUBLISHED"
    #   resp.rule_summary_list[0].action_summaries #=> Array
    #   resp.rule_summary_list[0].action_summaries[0].action_type #=> String, one of "CREATE_TASK", "ASSIGN_CONTACT_CATEGORY", "GENERATE_EVENTBRIDGE_EVENT", "SEND_NOTIFICATION"
    #   resp.rule_summary_list[0].created_time #=> Time
    #   resp.rule_summary_list[0].last_updated_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Returns a paginated list of all security keys associated with the
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListSecurityKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityKeysResponse#security_keys #security_keys} => Array&lt;Types::SecurityKey&gt;
    #   * {Types::ListSecurityKeysResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_keys({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_keys #=> Array
    #   resp.security_keys[0].association_id #=> String
    #   resp.security_keys[0].key #=> String
    #   resp.security_keys[0].creation_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityKeys AWS API Documentation
    #
    # @overload list_security_keys(params = {})
    # @param [Hash] params ({})
    def list_security_keys(params = {}, options = {})
      req = build_request(:list_security_keys, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Lists the permissions granted to a security profile.
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListSecurityProfilePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfilePermissionsResponse#permissions #permissions} => Array&lt;String&gt;
    #   * {Types::ListSecurityProfilePermissionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profile_permissions({
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.permissions #=> Array
    #   resp.permissions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfilePermissions AWS API Documentation
    #
    # @overload list_security_profile_permissions(params = {})
    # @param [Hash] params ({})
    def list_security_profile_permissions(params = {}, options = {})
      req = build_request(:list_security_profile_permissions, params)
      req.send_request(options)
    end

    # Provides summary information about the security profiles for the
    # specified Amazon Connect instance.
    #
    # For more information about security profiles, see [Security
    # Profiles][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListSecurityProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecurityProfilesResponse#security_profile_summary_list #security_profile_summary_list} => Array&lt;Types::SecurityProfileSummary&gt;
    #   * {Types::ListSecurityProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_security_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profile_summary_list #=> Array
    #   resp.security_profile_summary_list[0].id #=> String
    #   resp.security_profile_summary_list[0].arn #=> String
    #   resp.security_profile_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListSecurityProfiles AWS API Documentation
    #
    # @overload list_security_profiles(params = {})
    # @param [Hash] params ({})
    def list_security_profiles(params = {}, options = {})
      req = build_request(:list_security_profiles, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # For sample policies that use tags, see [Amazon Connect Identity-Based
    # Policy Examples][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource. All Amazon Connect
    #   resources (instances, queues, flows, routing profiles, etc) have an
    #   ARN. To locate the ARN for an instance, for example, see [Find your
    #   Amazon Connect instance ID/ARN][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists task templates for the specified Amazon Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    #   It is not expected that you set this because the value returned in the
    #   previous response is always null.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    #   It is not expected that you set this.
    #
    # @option params [String] :status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to it.
    #   Tasks can only be created from `ACTIVE` templates. If a template is
    #   marked as `INACTIVE`, then a task that refers to this template cannot
    #   be created.
    #
    # @option params [String] :name
    #   The name of the task template.
    #
    # @return [Types::ListTaskTemplatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTaskTemplatesResponse#task_templates #task_templates} => Array&lt;Types::TaskTemplateMetadata&gt;
    #   * {Types::ListTaskTemplatesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_templates({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     name: "TaskTemplateName",
    #   })
    #
    # @example Response structure
    #
    #   resp.task_templates #=> Array
    #   resp.task_templates[0].id #=> String
    #   resp.task_templates[0].arn #=> String
    #   resp.task_templates[0].name #=> String
    #   resp.task_templates[0].description #=> String
    #   resp.task_templates[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.task_templates[0].last_modified_time #=> Time
    #   resp.task_templates[0].created_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTaskTemplates AWS API Documentation
    #
    # @overload list_task_templates(params = {})
    # @param [Hash] params ({})
    def list_task_templates(params = {}, options = {})
      req = build_request(:list_task_templates, params)
      req.send_request(options)
    end

    # Lists traffic distribution groups.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Types::ListTrafficDistributionGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTrafficDistributionGroupsResponse#next_token #next_token} => String
    #   * {Types::ListTrafficDistributionGroupsResponse#traffic_distribution_group_summary_list #traffic_distribution_group_summary_list} => Array&lt;Types::TrafficDistributionGroupSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_traffic_distribution_groups({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     instance_id: "InstanceIdOrArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.traffic_distribution_group_summary_list #=> Array
    #   resp.traffic_distribution_group_summary_list[0].id #=> String
    #   resp.traffic_distribution_group_summary_list[0].arn #=> String
    #   resp.traffic_distribution_group_summary_list[0].name #=> String
    #   resp.traffic_distribution_group_summary_list[0].instance_arn #=> String
    #   resp.traffic_distribution_group_summary_list[0].status #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "PENDING_DELETION", "DELETION_FAILED", "UPDATE_IN_PROGRESS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListTrafficDistributionGroups AWS API Documentation
    #
    # @overload list_traffic_distribution_groups(params = {})
    # @param [Hash] params ({})
    def list_traffic_distribution_groups(params = {}, options = {})
      req = build_request(:list_traffic_distribution_groups, params)
      req.send_request(options)
    end

    # Lists the use cases for the integration association.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :integration_association_id
    #   The identifier for the integration association.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @return [Types::ListUseCasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUseCasesResponse#use_case_summary_list #use_case_summary_list} => Array&lt;Types::UseCase&gt;
    #   * {Types::ListUseCasesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_use_cases({
    #     instance_id: "InstanceId", # required
    #     integration_association_id: "IntegrationAssociationId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.use_case_summary_list #=> Array
    #   resp.use_case_summary_list[0].use_case_id #=> String
    #   resp.use_case_summary_list[0].use_case_arn #=> String
    #   resp.use_case_summary_list[0].use_case_type #=> String, one of "RULES_EVALUATION", "CONNECT_CAMPAIGNS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUseCases AWS API Documentation
    #
    # @overload list_use_cases(params = {})
    # @param [Hash] params ({})
    def list_use_cases(params = {}, options = {})
      req = build_request(:list_use_cases, params)
      req.send_request(options)
    end

    # Provides summary information about the hierarchy groups for the
    # specified Amazon Connect instance.
    #
    # For more information about agent hierarchies, see [Set Up Agent
    # Hierarchies][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListUserHierarchyGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUserHierarchyGroupsResponse#user_hierarchy_group_summary_list #user_hierarchy_group_summary_list} => Array&lt;Types::HierarchyGroupSummary&gt;
    #   * {Types::ListUserHierarchyGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_hierarchy_groups({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_hierarchy_group_summary_list #=> Array
    #   resp.user_hierarchy_group_summary_list[0].id #=> String
    #   resp.user_hierarchy_group_summary_list[0].arn #=> String
    #   resp.user_hierarchy_group_summary_list[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUserHierarchyGroups AWS API Documentation
    #
    # @overload list_user_hierarchy_groups(params = {})
    # @param [Hash] params ({})
    def list_user_hierarchy_groups(params = {}, options = {})
      req = build_request(:list_user_hierarchy_groups, params)
      req.send_request(options)
    end

    # Provides summary information about the users for the specified Amazon
    # Connect instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page. The default
    #   MaxResult size is 100.
    #
    # @return [Types::ListUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListUsersResponse#user_summary_list #user_summary_list} => Array&lt;Types::UserSummary&gt;
    #   * {Types::ListUsersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.user_summary_list #=> Array
    #   resp.user_summary_list[0].id #=> String
    #   resp.user_summary_list[0].arn #=> String
    #   resp.user_summary_list[0].username #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ListUsers AWS API Documentation
    #
    # @overload list_users(params = {})
    # @param [Hash] params ({})
    def list_users(params = {}, options = {})
      req = build_request(:list_users, params)
      req.send_request(options)
    end

    # Initiates silent monitoring of a contact. The Contact Control Panel
    # (CCP) of the user specified by *userId* will be set to silent
    # monitoring mode on the contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the ARN of the instance.
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [Array<String>] :allowed_monitor_capabilities
    #   Specify which monitoring actions the user is allowed to take. For
    #   example, whether the user is allowed to escalate from silent
    #   monitoring to barge.
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
    # @return [Types::MonitorContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MonitorContactResponse#contact_id #contact_id} => String
    #   * {Types::MonitorContactResponse#contact_arn #contact_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.monitor_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     user_id: "AgentResourceId", # required
    #     allowed_monitor_capabilities: ["SILENT_MONITOR"], # accepts SILENT_MONITOR, BARGE
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.contact_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/MonitorContact AWS API Documentation
    #
    # @overload monitor_contact(params = {})
    # @param [Hash] params ({})
    def monitor_contact(params = {}, options = {})
      req = build_request(:monitor_contact, params)
      req.send_request(options)
    end

    # Changes the current status of a user or agent in Amazon Connect. If
    # the agent is currently handling a contact, this sets the agent's next
    # status.
    #
    # For more information, see [Agent status][1] and [Set your next
    # status][2] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html
    #
    # @option params [required, String] :user_id
    #   The identifier of the user.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :agent_status_id
    #   The identifier of the agent status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_user_status({
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/PutUserStatus AWS API Documentation
    #
    # @overload put_user_status(params = {})
    # @param [Hash] params ({})
    def put_user_status(params = {}, options = {})
      req = build_request(:put_user_status, params)
      req.send_request(options)
    end

    # Releases a phone number previously claimed to an Amazon Connect
    # instance or traffic distribution group. You can call this API only in
    # the Amazon Web Services Region where the number was claimed.
    #
    # To release phone numbers from a traffic distribution group, use the
    # `ReleasePhoneNumber` API, not the Amazon Connect console.
    #
    #  After releasing a phone number, the phone number enters into a
    # cooldown period of 30 days. It cannot be searched for or claimed again
    # until the period has ended. If you accidentally release a phone
    # number, contact Amazon Web Services Support.
    #
    # If you plan to claim and release numbers frequently during a 30 day
    # period, contact us for a service quota exception. Otherwise, it is
    # possible you will be blocked from claiming and releasing any more
    # numbers until 30 days past the oldest number released has expired.
    #
    # By default you can claim and release up to 200% of your maximum number
    # of active phone numbers during any 30 day period. If you claim and
    # release phone numbers using the UI or API during a rolling 30 day
    # cycle that exceeds 200% of your phone number service level quota, you
    # will be blocked from claiming any more numbers until 30 days past the
    # oldest number released has expired.
    #
    # For example, if you already have 99 claimed numbers and a service
    # level quota of 99 phone numbers, and in any 30 day period you release
    # 99, claim 99, and then release 99, you will have exceeded the 200%
    # limit. At that point you are blocked from claiming any more numbers
    # until you open an Amazon Web Services support ticket.
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
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
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_phone_number({
    #     phone_number_id: "PhoneNumberId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReleasePhoneNumber AWS API Documentation
    #
    # @overload release_phone_number(params = {})
    # @param [Hash] params ({})
    def release_phone_number(params = {}, options = {})
      req = build_request(:release_phone_number, params)
      req.send_request(options)
    end

    # Replicates an Amazon Connect instance in the specified Amazon Web
    # Services Region.
    #
    # For more information about replicating an Amazon Connect instance, see
    # [Create a replica of your existing Amazon Connect instance][1] in the
    # *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance. You
    #   can provide the `InstanceId`, or the entire ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :replica_region
    #   The Amazon Web Services Region where to replicate the Amazon Connect
    #   instance.
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
    # @option params [required, String] :replica_alias
    #   The alias for the replicated instance. The `ReplicaAlias` must be
    #   unique.
    #
    # @return [Types::ReplicateInstanceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicateInstanceResponse#id #id} => String
    #   * {Types::ReplicateInstanceResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replicate_instance({
    #     instance_id: "InstanceIdOrArn", # required
    #     replica_region: "AwsRegion", # required
    #     client_token: "ClientToken",
    #     replica_alias: "DirectoryAlias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ReplicateInstance AWS API Documentation
    #
    # @overload replicate_instance(params = {})
    # @param [Hash] params ({})
    def replicate_instance(params = {}, options = {})
      req = build_request(:replicate_instance, params)
      req.send_request(options)
    end

    # When a contact is being recorded, and the recording has been suspended
    # using SuspendContactRecording, this API resumes recording the call or
    # screen.
    #
    # Voice and screen recordings are supported.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/ResumeContactRecording AWS API Documentation
    #
    # @overload resume_contact_recording(params = {})
    # @param [Hash] params ({})
    def resume_contact_recording(params = {}, options = {})
      req = build_request(:resume_contact_recording, params)
      req.send_request(options)
    end

    # Searches for available phone numbers that you can claim to your Amazon
    # Connect instance or traffic distribution group. If the provided
    # `TargetArn` is a traffic distribution group, you can call this API in
    # both Amazon Web Services Regions associated with the traffic
    # distribution group.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
    #   distribution groups that phone numbers are claimed to.
    #
    # @option params [required, String] :phone_number_country_code
    #   The ISO country code.
    #
    # @option params [required, String] :phone_number_type
    #   The type of phone number.
    #
    # @option params [String] :phone_number_prefix
    #   The prefix of the phone number. If provided, it must contain `+` as
    #   part of the country code.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @return [Types::SearchAvailablePhoneNumbersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchAvailablePhoneNumbersResponse#next_token #next_token} => String
    #   * {Types::SearchAvailablePhoneNumbersResponse#available_numbers_list #available_numbers_list} => Array&lt;Types::AvailableNumberSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_available_phone_numbers({
    #     target_arn: "ARN", # required
    #     phone_number_country_code: "AF", # required, accepts AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
    #     phone_number_type: "TOLL_FREE", # required, accepts TOLL_FREE, DID
    #     phone_number_prefix: "PhoneNumberPrefix",
    #     max_results: 1,
    #     next_token: "LargeNextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.available_numbers_list #=> Array
    #   resp.available_numbers_list[0].phone_number #=> String
    #   resp.available_numbers_list[0].phone_number_country_code #=> String, one of "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CK", "CR", "HR", "CU", "CW", "CY", "CZ", "CD", "DK", "DJ", "DM", "DO", "TL", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "CI", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "KP", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "CG", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.available_numbers_list[0].phone_number_type #=> String, one of "TOLL_FREE", "DID"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchAvailablePhoneNumbers AWS API Documentation
    #
    # @overload search_available_phone_numbers(params = {})
    # @param [Hash] params ({})
    def search_available_phone_numbers(params = {}, options = {})
      req = build_request(:search_available_phone_numbers, params)
      req.send_request(options)
    end

    # Searches the hours of operation in an Amazon Connect instance, with
    # optional filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::HoursOfOperationSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::HoursOfOperationSearchCriteria] :search_criteria
    #   The search criteria to be used to return hours of operations.
    #
    # @return [Types::SearchHoursOfOperationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchHoursOfOperationsResponse#hours_of_operations #hours_of_operations} => Array&lt;Types::HoursOfOperation&gt;
    #   * {Types::SearchHoursOfOperationsResponse#next_token #next_token} => String
    #   * {Types::SearchHoursOfOperationsResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_hours_of_operations({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive HoursOfOperationSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive HoursOfOperationSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.hours_of_operations #=> Array
    #   resp.hours_of_operations[0].hours_of_operation_id #=> String
    #   resp.hours_of_operations[0].hours_of_operation_arn #=> String
    #   resp.hours_of_operations[0].name #=> String
    #   resp.hours_of_operations[0].description #=> String
    #   resp.hours_of_operations[0].time_zone #=> String
    #   resp.hours_of_operations[0].config #=> Array
    #   resp.hours_of_operations[0].config[0].day #=> String, one of "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY"
    #   resp.hours_of_operations[0].config[0].start_time.hours #=> Integer
    #   resp.hours_of_operations[0].config[0].start_time.minutes #=> Integer
    #   resp.hours_of_operations[0].config[0].end_time.hours #=> Integer
    #   resp.hours_of_operations[0].config[0].end_time.minutes #=> Integer
    #   resp.hours_of_operations[0].tags #=> Hash
    #   resp.hours_of_operations[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchHoursOfOperations AWS API Documentation
    #
    # @overload search_hours_of_operations(params = {})
    # @param [Hash] params ({})
    def search_hours_of_operations(params = {}, options = {})
      req = build_request(:search_hours_of_operations, params)
      req.send_request(options)
    end

    # Searches prompts in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::PromptSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::PromptSearchCriteria] :search_criteria
    #   The search criteria to be used to return prompts.
    #
    # @return [Types::SearchPromptsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchPromptsResponse#prompts #prompts} => Array&lt;Types::Prompt&gt;
    #   * {Types::SearchPromptsResponse#next_token #next_token} => String
    #   * {Types::SearchPromptsResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_prompts({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive PromptSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive PromptSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.prompts #=> Array
    #   resp.prompts[0].prompt_arn #=> String
    #   resp.prompts[0].prompt_id #=> String
    #   resp.prompts[0].name #=> String
    #   resp.prompts[0].description #=> String
    #   resp.prompts[0].tags #=> Hash
    #   resp.prompts[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchPrompts AWS API Documentation
    #
    # @overload search_prompts(params = {})
    # @param [Hash] params ({})
    def search_prompts(params = {}, options = {})
      req = build_request(:search_prompts, params)
      req.send_request(options)
    end

    # Searches queues in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::QueueSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::QueueSearchCriteria] :search_criteria
    #   The search criteria to be used to return queues.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries with
    #   a minimum of 2 characters and a maximum of 25 characters. Any queries
    #   with character lengths outside of this range will throw invalid
    #   results.
    #
    #    </note>
    #
    # @return [Types::SearchQueuesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchQueuesResponse#queues #queues} => Array&lt;Types::Queue&gt;
    #   * {Types::SearchQueuesResponse#next_token #next_token} => String
    #   * {Types::SearchQueuesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_queues({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive QueueSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive QueueSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #       queue_type_condition: "STANDARD", # accepts STANDARD
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.queues #=> Array
    #   resp.queues[0].name #=> String
    #   resp.queues[0].queue_arn #=> String
    #   resp.queues[0].queue_id #=> String
    #   resp.queues[0].description #=> String
    #   resp.queues[0].outbound_caller_config.outbound_caller_id_name #=> String
    #   resp.queues[0].outbound_caller_config.outbound_caller_id_number_id #=> String
    #   resp.queues[0].outbound_caller_config.outbound_flow_id #=> String
    #   resp.queues[0].hours_of_operation_id #=> String
    #   resp.queues[0].max_contacts #=> Integer
    #   resp.queues[0].status #=> String, one of "ENABLED", "DISABLED"
    #   resp.queues[0].tags #=> Hash
    #   resp.queues[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchQueues AWS API Documentation
    #
    # @overload search_queues(params = {})
    # @param [Hash] params ({})
    def search_queues(params = {}, options = {})
      req = build_request(:search_queues, params)
      req.send_request(options)
    end

    # Searches quick connects in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::QuickConnectSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::QuickConnectSearchCriteria] :search_criteria
    #   The search criteria to be used to return quick connects.
    #
    # @return [Types::SearchQuickConnectsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchQuickConnectsResponse#quick_connects #quick_connects} => Array&lt;Types::QuickConnect&gt;
    #   * {Types::SearchQuickConnectsResponse#next_token #next_token} => String
    #   * {Types::SearchQuickConnectsResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_quick_connects({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive QuickConnectSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive QuickConnectSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.quick_connects #=> Array
    #   resp.quick_connects[0].quick_connect_arn #=> String
    #   resp.quick_connects[0].quick_connect_id #=> String
    #   resp.quick_connects[0].name #=> String
    #   resp.quick_connects[0].description #=> String
    #   resp.quick_connects[0].quick_connect_config.quick_connect_type #=> String, one of "USER", "QUEUE", "PHONE_NUMBER"
    #   resp.quick_connects[0].quick_connect_config.user_config.user_id #=> String
    #   resp.quick_connects[0].quick_connect_config.user_config.contact_flow_id #=> String
    #   resp.quick_connects[0].quick_connect_config.queue_config.queue_id #=> String
    #   resp.quick_connects[0].quick_connect_config.queue_config.contact_flow_id #=> String
    #   resp.quick_connects[0].quick_connect_config.phone_config.phone_number #=> String
    #   resp.quick_connects[0].tags #=> Hash
    #   resp.quick_connects[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchQuickConnects AWS API Documentation
    #
    # @overload search_quick_connects(params = {})
    # @param [Hash] params ({})
    def search_quick_connects(params = {}, options = {})
      req = build_request(:search_quick_connects, params)
      req.send_request(options)
    end

    # Searches tags used in an Amazon Connect instance using optional search
    # criteria.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can find the
    #   instanceId in the Amazon Resource Name (ARN) of the instance.
    #
    # @option params [Array<String>] :resource_types
    #   The list of resource types to be used to search tags from. If not
    #   provided or if any empty list is provided, this API will search from
    #   all supported resource types.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::ResourceTagsSearchCriteria] :search_criteria
    #   The search criteria to be used to return tags.
    #
    # @return [Types::SearchResourceTagsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchResourceTagsResponse#tags #tags} => Array&lt;Types::TagSet&gt;
    #   * {Types::SearchResourceTagsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_resource_tags({
    #     instance_id: "InstanceIdOrArn", # required
    #     resource_types: ["String"],
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_criteria: {
    #       tag_search_condition: {
    #         tag_key: "TagKeyString",
    #         tag_value: "TagValueString",
    #         tag_key_comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #         tag_value_comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchResourceTags AWS API Documentation
    #
    # @overload search_resource_tags(params = {})
    # @param [Hash] params ({})
    def search_resource_tags(params = {}, options = {})
      req = build_request(:search_resource_tags, params)
      req.send_request(options)
    end

    # Searches routing profiles in an Amazon Connect instance, with optional
    # filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::RoutingProfileSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::RoutingProfileSearchCriteria] :search_criteria
    #   The search criteria to be used to return routing profiles.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries with
    #   a minimum of 2 characters and a maximum of 25 characters. Any queries
    #   with character lengths outside of this range will throw invalid
    #   results.
    #
    #    </note>
    #
    # @return [Types::SearchRoutingProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchRoutingProfilesResponse#routing_profiles #routing_profiles} => Array&lt;Types::RoutingProfile&gt;
    #   * {Types::SearchRoutingProfilesResponse#next_token #next_token} => String
    #   * {Types::SearchRoutingProfilesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_routing_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive RoutingProfileSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive RoutingProfileSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.routing_profiles #=> Array
    #   resp.routing_profiles[0].instance_id #=> String
    #   resp.routing_profiles[0].name #=> String
    #   resp.routing_profiles[0].routing_profile_arn #=> String
    #   resp.routing_profiles[0].routing_profile_id #=> String
    #   resp.routing_profiles[0].description #=> String
    #   resp.routing_profiles[0].media_concurrencies #=> Array
    #   resp.routing_profiles[0].media_concurrencies[0].channel #=> String, one of "VOICE", "CHAT", "TASK"
    #   resp.routing_profiles[0].media_concurrencies[0].concurrency #=> Integer
    #   resp.routing_profiles[0].media_concurrencies[0].cross_channel_behavior.behavior_type #=> String, one of "ROUTE_CURRENT_CHANNEL_ONLY", "ROUTE_ANY_CHANNEL"
    #   resp.routing_profiles[0].default_outbound_queue_id #=> String
    #   resp.routing_profiles[0].tags #=> Hash
    #   resp.routing_profiles[0].tags["TagKey"] #=> String
    #   resp.routing_profiles[0].number_of_associated_queues #=> Integer
    #   resp.routing_profiles[0].number_of_associated_users #=> Integer
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchRoutingProfiles AWS API Documentation
    #
    # @overload search_routing_profiles(params = {})
    # @param [Hash] params ({})
    def search_routing_profiles(params = {}, options = {})
      req = build_request(:search_routing_profiles, params)
      req.send_request(options)
    end

    # Searches security profiles in an Amazon Connect instance, with
    # optional filtering.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::SecurityProfileSearchCriteria] :search_criteria
    #   The search criteria to be used to return security profiles.
    #
    #   <note markdown="1"> The `name` field support "contains" queries with a minimum of 2
    #   characters and maximum of 25 characters. Any queries with character
    #   lengths outside of this range will throw invalid results.
    #
    #    </note>
    #
    #   <note markdown="1"> The currently supported value for `FieldName`: `name`
    #
    #    </note>
    #
    # @option params [Types::SecurityProfilesSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @return [Types::SearchSecurityProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchSecurityProfilesResponse#security_profiles #security_profiles} => Array&lt;Types::SecurityProfileSearchSummary&gt;
    #   * {Types::SearchSecurityProfilesResponse#next_token #next_token} => String
    #   * {Types::SearchSecurityProfilesResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_security_profiles({
    #     instance_id: "InstanceId", # required
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive SecurityProfileSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive SecurityProfileSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #     },
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.security_profiles #=> Array
    #   resp.security_profiles[0].id #=> String
    #   resp.security_profiles[0].organization_resource_id #=> String
    #   resp.security_profiles[0].arn #=> String
    #   resp.security_profiles[0].security_profile_name #=> String
    #   resp.security_profiles[0].description #=> String
    #   resp.security_profiles[0].tags #=> Hash
    #   resp.security_profiles[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchSecurityProfiles AWS API Documentation
    #
    # @overload search_security_profiles(params = {})
    # @param [Hash] params ({})
    def search_security_profiles(params = {}, options = {})
      req = build_request(:search_security_profiles, params)
      req.send_request(options)
    end

    # Searches users in an Amazon Connect instance, with optional filtering.
    #
    # <note markdown="1"> `AfterContactWorkTimeLimit` is returned in milliseconds.
    #
    #  </note>
    #
    # @option params [String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [Types::UserSearchFilter] :search_filter
    #   Filters to be applied to search results.
    #
    # @option params [Types::UserSearchCriteria] :search_criteria
    #   The search criteria to be used to return users.
    #
    #   <note markdown="1"> The `name` and `description` fields support "contains" queries with
    #   a minimum of 2 characters and a maximum of 25 characters. Any queries
    #   with character lengths outside of this range will throw invalid
    #   results.
    #
    #    </note>
    #
    # @return [Types::SearchUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchUsersResponse#users #users} => Array&lt;Types::UserSearchSummary&gt;
    #   * {Types::SearchUsersResponse#next_token #next_token} => String
    #   * {Types::SearchUsersResponse#approximate_total_count #approximate_total_count} => Integer
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_users({
    #     instance_id: "InstanceId",
    #     next_token: "NextToken2500",
    #     max_results: 1,
    #     search_filter: {
    #       tag_filter: {
    #         or_conditions: [
    #           [
    #             {
    #               tag_key: "String",
    #               tag_value: "String",
    #             },
    #           ],
    #         ],
    #         and_conditions: [
    #           {
    #             tag_key: "String",
    #             tag_value: "String",
    #           },
    #         ],
    #         tag_condition: {
    #           tag_key: "String",
    #           tag_value: "String",
    #         },
    #       },
    #     },
    #     search_criteria: {
    #       or_conditions: [
    #         {
    #           # recursive UserSearchCriteria
    #         },
    #       ],
    #       and_conditions: [
    #         {
    #           # recursive UserSearchCriteria
    #         },
    #       ],
    #       string_condition: {
    #         field_name: "String",
    #         value: "String",
    #         comparison_type: "STARTS_WITH", # accepts STARTS_WITH, CONTAINS, EXACT
    #       },
    #       hierarchy_group_condition: {
    #         value: "String",
    #         hierarchy_group_match_type: "EXACT", # accepts EXACT, WITH_CHILD_GROUPS
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].arn #=> String
    #   resp.users[0].directory_user_id #=> String
    #   resp.users[0].hierarchy_group_id #=> String
    #   resp.users[0].id #=> String
    #   resp.users[0].identity_info.first_name #=> String
    #   resp.users[0].identity_info.last_name #=> String
    #   resp.users[0].phone_config.phone_type #=> String, one of "SOFT_PHONE", "DESK_PHONE"
    #   resp.users[0].phone_config.auto_accept #=> Boolean
    #   resp.users[0].phone_config.after_contact_work_time_limit #=> Integer
    #   resp.users[0].phone_config.desk_phone_number #=> String
    #   resp.users[0].routing_profile_id #=> String
    #   resp.users[0].security_profile_ids #=> Array
    #   resp.users[0].security_profile_ids[0] #=> String
    #   resp.users[0].tags #=> Hash
    #   resp.users[0].tags["TagKey"] #=> String
    #   resp.users[0].username #=> String
    #   resp.next_token #=> String
    #   resp.approximate_total_count #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchUsers AWS API Documentation
    #
    # @overload search_users(params = {})
    # @param [Hash] params ({})
    def search_users(params = {}, options = {})
      req = build_request(:search_users, params)
      req.send_request(options)
    end

    # Searches for vocabularies within a specific Amazon Connect instance
    # using `State`, `NameStartsWith`, and `LanguageCode`.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per page.
    #
    # @option params [String] :next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #
    # @option params [String] :state
    #   The current state of the custom vocabulary.
    #
    # @option params [String] :name_starts_with
    #   The starting pattern of the name of the vocabulary.
    #
    # @option params [String] :language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [What is Amazon
    #   Transcribe?][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html
    #
    # @return [Types::SearchVocabulariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchVocabulariesResponse#vocabulary_summary_list #vocabulary_summary_list} => Array&lt;Types::VocabularySummary&gt;
    #   * {Types::SearchVocabulariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_vocabularies({
    #     instance_id: "InstanceId", # required
    #     max_results: 1,
    #     next_token: "VocabularyNextToken",
    #     state: "CREATION_IN_PROGRESS", # accepts CREATION_IN_PROGRESS, ACTIVE, CREATION_FAILED, DELETE_IN_PROGRESS
    #     name_starts_with: "VocabularyName",
    #     language_code: "ar-AE", # accepts ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN, en-NZ, en-ZA
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_summary_list #=> Array
    #   resp.vocabulary_summary_list[0].name #=> String
    #   resp.vocabulary_summary_list[0].id #=> String
    #   resp.vocabulary_summary_list[0].arn #=> String
    #   resp.vocabulary_summary_list[0].language_code #=> String, one of "ar-AE", "de-CH", "de-DE", "en-AB", "en-AU", "en-GB", "en-IE", "en-IN", "en-US", "en-WL", "es-ES", "es-US", "fr-CA", "fr-FR", "hi-IN", "it-IT", "ja-JP", "ko-KR", "pt-BR", "pt-PT", "zh-CN", "en-NZ", "en-ZA"
    #   resp.vocabulary_summary_list[0].state #=> String, one of "CREATION_IN_PROGRESS", "ACTIVE", "CREATION_FAILED", "DELETE_IN_PROGRESS"
    #   resp.vocabulary_summary_list[0].last_modified_time #=> Time
    #   resp.vocabulary_summary_list[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SearchVocabularies AWS API Documentation
    #
    # @overload search_vocabularies(params = {})
    # @param [Hash] params ({})
    def search_vocabularies(params = {}, options = {})
      req = build_request(:search_vocabularies, params)
      req.send_request(options)
    end

    # Initiates a flow to start a new chat for the customer. Response of
    # this API provides a token required to obtain credentials from the
    # [CreateParticipantConnection][1] API in the Amazon Connect Participant
    # Service.
    #
    # When a new chat contact is successfully created, clients must
    # subscribe to the participant’s connection for the created chat within
    # 5 minutes. This is achieved by invoking
    # [CreateParticipantConnection][1] with WEBSOCKET and
    # CONNECTION\_CREDENTIALS.
    #
    # A 429 error occurs in the following situations:
    #
    # * API rate limit is exceeded. API TPS throttling returns a
    #   `TooManyRequests` exception.
    #
    # * The [quota for concurrent active chats][2] is exceeded. Active chat
    #   throttling returns a `LimitExceededException`.
    #
    # If you use the `ChatDurationInMinutes` parameter and receive a 400
    # error, your account may not support the ability to configure custom
    # chat durations. For more information, contact Amazon Web Services
    # Support.
    #
    # For more information about chat, see [Chat][3] in the *Amazon Connect
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    # [3]: https://docs.aws.amazon.com/connect/latest/adminguide/chat.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow for initiating the chat. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the flow.
    #   On the flow page, under the name of the flow, choose **Show additional
    #   flow information**. The ContactFlowId is the last part of the ARN,
    #   shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes. They can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [required, Types::ParticipantDetails] :participant_details
    #   Information identifying the participant.
    #
    # @option params [Types::ChatMessage] :initial_message
    #   The initial message to be sent to the newly created chat.
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
    # @option params [Integer] :chat_duration_in_minutes
    #   The total duration of the newly started chat session. If not
    #   specified, the chat session duration defaults to 25 hour. The minimum
    #   configurable time is 60 minutes. The maximum configurable time is
    #   10,080 minutes (7 days).
    #
    # @option params [Array<String>] :supported_messaging_content_types
    #   The supported chat message content types. Supported types are
    #   `text/plain`, `text/markdown`, `application/json`,
    #   `application/vnd.amazonaws.connect.message.interactive`, and
    #   `application/vnd.amazonaws.connect.message.interactive.response`.
    #
    #   Content types must always contain `text/plain`. You can then put any
    #   other supported type in the list. For example, all the following lists
    #   are valid because they contain `text/plain`: `[text/plain,
    #   text/markdown, application/json]`, `[text/markdown, text/plain]`,
    #   `[text/plain, application/json,
    #   application/vnd.amazonaws.connect.message.interactive.response]`.
    #
    #   <note markdown="1"> The type `application/vnd.amazonaws.connect.message.interactive` is
    #   required to use the [Show view][1] flow block.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/show-view-block.html
    #
    # @option params [Types::PersistentChat] :persistent_chat
    #   Enable persistent chats. For more information about enabling
    #   persistent chat, and for example use cases and how to configure for
    #   them, see [Enable persistent chat][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html
    #
    # @option params [String] :related_contact_id
    #   The unique identifier for an Amazon Connect contact. This identifier
    #   is related to the chat starting.
    #
    #   <note markdown="1"> You cannot provide data for both RelatedContactId and PersistentChat.
    #
    #    </note>
    #
    # @return [Types::StartChatContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartChatContactResponse#contact_id #contact_id} => String
    #   * {Types::StartChatContactResponse#participant_id #participant_id} => String
    #   * {Types::StartChatContactResponse#participant_token #participant_token} => String
    #   * {Types::StartChatContactResponse#continued_from_contact_id #continued_from_contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_chat_contact({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     participant_details: { # required
    #       display_name: "DisplayName", # required
    #     },
    #     initial_message: {
    #       content_type: "ChatContentType", # required
    #       content: "ChatContent", # required
    #     },
    #     client_token: "ClientToken",
    #     chat_duration_in_minutes: 1,
    #     supported_messaging_content_types: ["SupportedMessagingContentType"],
    #     persistent_chat: {
    #       rehydration_type: "ENTIRE_PAST_SESSION", # accepts ENTIRE_PAST_SESSION, FROM_SEGMENT
    #       source_contact_id: "ContactId",
    #     },
    #     related_contact_id: "ContactId",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.participant_id #=> String
    #   resp.participant_token #=> String
    #   resp.continued_from_contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartChatContact AWS API Documentation
    #
    # @overload start_chat_contact(params = {})
    # @param [Hash] params ({})
    def start_chat_contact(params = {}, options = {})
      req = build_request(:start_chat_contact, params)
      req.send_request(options)
    end

    # Starts an empty evaluation in the specified Amazon Connect instance,
    # using the given evaluation form for the particular contact. The
    # evaluation form version used for the contact evaluation corresponds to
    # the currently activated version. If no version is activated for the
    # evaluation form, the contact evaluation cannot be started.
    #
    # <note markdown="1"> Evaluations created through the public API do not contain answer
    # values suggested from automation.
    #
    #  </note>
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
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
    # @return [Types::StartContactEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartContactEvaluationResponse#evaluation_id #evaluation_id} => String
    #   * {Types::StartContactEvaluationResponse#evaluation_arn #evaluation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #   resp.evaluation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactEvaluation AWS API Documentation
    #
    # @overload start_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def start_contact_evaluation(params = {}, options = {})
      req = build_request(:start_contact_evaluation, params)
      req.send_request(options)
    end

    # Starts recording the contact:
    #
    # * If the API is called *before* the agent joins the call, recording
    #   starts when the agent joins the call.
    #
    # * If the API is called *after* the agent joins the call, recording
    #   starts at the time of the API call.
    #
    # StartContactRecording is a one-time action. For example, if you use
    # StopContactRecording to stop recording an ongoing call, you can't use
    # StartContactRecording to restart it. For scenarios where the recording
    # has started and you want to suspend and resume it, such as when
    # collecting sensitive information (for example, a credit card number),
    # use SuspendContactRecording and ResumeContactRecording.
    #
    # You can use this API to override the recording behavior configured in
    # the [Set recording behavior][1] block.
    #
    # Only voice recordings are supported at this time.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [required, Types::VoiceRecordingConfiguration] :voice_recording_configuration
    #   The person being recorded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #     voice_recording_configuration: { # required
    #       voice_recording_track: "FROM_AGENT", # accepts FROM_AGENT, TO_AGENT, ALL
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactRecording AWS API Documentation
    #
    # @overload start_contact_recording(params = {})
    # @param [Hash] params ({})
    def start_contact_recording(params = {}, options = {})
      req = build_request(:start_contact_recording, params)
      req.send_request(options)
    end

    # Initiates real-time message streaming for a new chat contact.
    #
    # For more information about message streaming, see [Enable real-time
    # chat message streaming][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [required, Types::ChatStreamingConfiguration] :chat_streaming_configuration
    #   The streaming configuration, such as the Amazon SNS streaming
    #   endpoint.
    #
    # @option params [required, String] :client_token
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
    # @return [Types::StartContactStreamingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartContactStreamingResponse#streaming_id #streaming_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_contact_streaming({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     chat_streaming_configuration: { # required
    #       streaming_endpoint_arn: "ChatStreamingEndpointARN", # required
    #     },
    #     client_token: "ClientToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.streaming_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartContactStreaming AWS API Documentation
    #
    # @overload start_contact_streaming(params = {})
    # @param [Hash] params ({})
    def start_contact_streaming(params = {}, options = {})
      req = build_request(:start_contact_streaming, params)
      req.send_request(options)
    end

    # Places an outbound call to a contact, and then initiates the flow. It
    # performs the actions in the flow that's specified (in
    # `ContactFlowId`).
    #
    # Agents do not initiate the outbound API, which means that they do not
    # dial the contact. If the flow places an outbound call to a contact,
    # and then puts the contact in queue, the call is then routed to the
    # agent, like any other inbound case.
    #
    # There is a 60-second dialing timeout for this operation. If the call
    # is not connected after 60 seconds, it fails.
    #
    # <note markdown="1"> UK numbers with a 447 prefix are not allowed by default. Before you
    # can dial these UK mobile numbers, you must submit a service quota
    # increase request. For more information, see [Amazon Connect Service
    # Quotas][1] in the *Amazon Connect Administrator Guide*.
    #
    #  </note>
    #
    # <note markdown="1"> Campaign calls are not allowed by default. Before you can make a call
    # with `TrafficType` = `CAMPAIGN`, you must submit a service quota
    # increase request to the quota [Amazon Connect campaigns][2].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#outbound-communications-quotas
    #
    # @option params [required, String] :destination_phone_number
    #   The phone number of the customer, in E.164 format.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow for the outbound call. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the flow.
    #   On the flow page, under the name of the flow, choose **Show additional
    #   flow information**. The ContactFlowId is the last part of the ARN,
    #   shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency, see
    #   [Making retries safe with idempotent APIs][1]. The token is valid for
    #   7 days after creation. If a contact is already started, the contact ID
    #   is returned.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #
    # @option params [String] :source_phone_number
    #   The phone number associated with the Amazon Connect instance, in E.164
    #   format. If you do not specify a source phone number, you must specify
    #   a queue.
    #
    # @option params [String] :queue_id
    #   The queue for the call. If you specify a queue, the phone displayed
    #   for caller ID is the phone number specified in the queue. If you do
    #   not specify a queue, the queue defined in the flow is used. If you do
    #   not specify a queue, you must specify a source phone number.
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [Types::AnswerMachineDetectionConfig] :answer_machine_detection_config
    #   Configuration of the answering machine detection for this outbound
    #   call.
    #
    # @option params [String] :campaign_id
    #   The campaign identifier of the outbound communication.
    #
    # @option params [String] :traffic_type
    #   Denotes the class of traffic. Calls with different traffic types are
    #   handled differently by Amazon Connect. The default value is `GENERAL`.
    #   Use `CAMPAIGN` if `EnableAnswerMachineDetection` is set to `true`. For
    #   all other cases, use `GENERAL`.
    #
    # @return [Types::StartOutboundVoiceContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartOutboundVoiceContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_outbound_voice_contact({
    #     destination_phone_number: "PhoneNumber", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     instance_id: "InstanceId", # required
    #     client_token: "ClientToken",
    #     source_phone_number: "PhoneNumber",
    #     queue_id: "QueueId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     answer_machine_detection_config: {
    #       enable_answer_machine_detection: false,
    #       await_answer_machine_prompt: false,
    #     },
    #     campaign_id: "CampaignId",
    #     traffic_type: "GENERAL", # accepts GENERAL, CAMPAIGN
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartOutboundVoiceContact AWS API Documentation
    #
    # @overload start_outbound_voice_contact(params = {})
    # @param [Hash] params ({})
    def start_outbound_voice_contact(params = {}, options = {})
      req = build_request(:start_outbound_voice_contact, params)
      req.send_request(options)
    end

    # Initiates a flow to start a new task.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :previous_contact_id
    #   The identifier of the previous chat, voice, or task contact.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow for initiating the tasks. To see the
    #   ContactFlowId in the Amazon Connect console user interface, on the
    #   navigation menu go to **Routing**, **Contact Flows**. Choose the flow.
    #   On the flow page, under the name of the flow, choose **Show additional
    #   flow information**. The ContactFlowId is the last part of the ARN,
    #   shown here in bold:
    #
    #   arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/**846ec553-a005-41c0-8341-xxxxxxxxxxxx**
    #
    # @option params [Hash<String,String>] :attributes
    #   A custom key-value pair using an attribute map. The attributes are
    #   standard Amazon Connect attributes, and can be accessed in flows just
    #   like any other contact attributes.
    #
    #   There can be up to 32,768 UTF-8 bytes across all key-value pairs per
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @option params [required, String] :name
    #   The name of a task that is shown to an agent in the Contact Control
    #   Panel (CCP).
    #
    # @option params [Hash<String,Types::Reference>] :references
    #   A formatted URL that is shown to an agent in the Contact Control Panel
    #   (CCP).
    #
    # @option params [String] :description
    #   A description of the task that is shown to an agent in the Contact
    #   Control Panel (CCP).
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
    # @option params [Time,DateTime,Date,Integer,String] :scheduled_time
    #   The timestamp, in Unix Epoch seconds format, at which to start running
    #   the inbound flow. The scheduled time cannot be in the past. It must be
    #   within up to 6 days in future.
    #
    # @option params [String] :task_template_id
    #   A unique identifier for the task template.
    #
    # @option params [String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @option params [String] :related_contact_id
    #   The contactId that is [related][1] to this contact.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html#linked-tasks
    #
    # @return [Types::StartTaskContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTaskContactResponse#contact_id #contact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task_contact({
    #     instance_id: "InstanceId", # required
    #     previous_contact_id: "ContactId",
    #     contact_flow_id: "ContactFlowId",
    #     attributes: {
    #       "AttributeName" => "AttributeValue",
    #     },
    #     name: "Name", # required
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue", # required
    #         type: "URL", # required, accepts URL, ATTACHMENT, NUMBER, STRING, DATE, EMAIL
    #       },
    #     },
    #     description: "Description",
    #     client_token: "ClientToken",
    #     scheduled_time: Time.now,
    #     task_template_id: "TaskTemplateId",
    #     quick_connect_id: "QuickConnectId",
    #     related_contact_id: "ContactId",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StartTaskContact AWS API Documentation
    #
    # @overload start_task_contact(params = {})
    # @param [Hash] params ({})
    def start_task_contact(params = {}, options = {})
      req = build_request(:start_task_contact, params)
      req.send_request(options)
    end

    # Ends the specified contact. This call does not work for the following
    # initiation methods:
    #
    # * DISCONNECT
    #
    # * TRANSFER
    #
    # * QUEUE\_TRANSFER
    #
    # @option params [required, String] :contact_id
    #   The ID of the contact.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact({
    #     contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContact AWS API Documentation
    #
    # @overload stop_contact(params = {})
    # @param [Hash] params ({})
    def stop_contact(params = {}, options = {})
      req = build_request(:stop_contact, params)
      req.send_request(options)
    end

    # Stops recording a call when a contact is being recorded.
    # StopContactRecording is a one-time action. If you use
    # StopContactRecording to stop recording an ongoing call, you can't use
    # StartContactRecording to restart it. For scenarios where the recording
    # has started and you want to suspend it for sensitive information (for
    # example, to collect a credit card number), and then restart it, use
    # SuspendContactRecording and ResumeContactRecording.
    #
    # Only voice recordings are supported at this time.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactRecording AWS API Documentation
    #
    # @overload stop_contact_recording(params = {})
    # @param [Hash] params ({})
    def stop_contact_recording(params = {}, options = {})
      req = build_request(:stop_contact_recording, params)
      req.send_request(options)
    end

    # Ends message streaming on a specified contact. To restart message
    # streaming on that contact, call the [StartContactStreaming][1] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   that is associated with the first interaction with the contact center.
    #
    # @option params [required, String] :streaming_id
    #   The identifier of the streaming configuration enabled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_contact_streaming({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     streaming_id: "StreamingId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/StopContactStreaming AWS API Documentation
    #
    # @overload stop_contact_streaming(params = {})
    # @param [Hash] params ({})
    def stop_contact_streaming(params = {}, options = {})
      req = build_request(:stop_contact_streaming, params)
      req.send_request(options)
    end

    # Submits a contact evaluation in the specified Amazon Connect instance.
    # Answers included in the request are merged with existing answers for
    # the given evaluation. If no answers or notes are passed, the
    # evaluation is submitted with the existing answers and notes. You can
    # delete an answer or note by passing an empty object (`\{\}`) to the
    # question identifier.
    #
    # If a contact evaluation is already in submitted state, this operation
    # will trigger a resubmission.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_id
    #   A unique identifier for the contact evaluation.
    #
    # @option params [Hash<String,Types::EvaluationAnswerInput>] :answers
    #   A map of question identifiers to answer value.
    #
    # @option params [Hash<String,Types::EvaluationNote>] :notes
    #   A map of question identifiers to note value.
    #
    # @return [Types::SubmitContactEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SubmitContactEvaluationResponse#evaluation_id #evaluation_id} => String
    #   * {Types::SubmitContactEvaluationResponse#evaluation_arn #evaluation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #     answers: {
    #       "ResourceId" => {
    #         value: {
    #           string_value: "EvaluationAnswerDataStringValue",
    #           numeric_value: 1.0,
    #           not_applicable: false,
    #         },
    #       },
    #     },
    #     notes: {
    #       "ResourceId" => {
    #         value: "EvaluationNoteString",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #   resp.evaluation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SubmitContactEvaluation AWS API Documentation
    #
    # @overload submit_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def submit_contact_evaluation(params = {}, options = {})
      req = build_request(:submit_contact_evaluation, params)
      req.send_request(options)
    end

    # When a contact is being recorded, this API suspends recording the call
    # or screen. For example, you might suspend the call or screen recording
    # while collecting sensitive information, such as a credit card number.
    # Then use ResumeContactRecording to restart recording.
    #
    # The period of time that the recording is suspended is filled with
    # silence in the final recording.
    #
    # Voice and screen recordings are supported.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_contact_recording({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     initial_contact_id: "ContactId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/SuspendContactRecording AWS API Documentation
    #
    # @overload suspend_contact_recording(params = {})
    # @param [Hash] params ({})
    def suspend_contact_recording(params = {}, options = {})
      req = build_request(:suspend_contact_recording, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # Some of the supported resource types are agents, routing profiles,
    # queues, quick connects, contact flows, agent statuses, hours of
    # operation, phone numbers, security profiles, and task templates. For a
    # complete list, see [Tagging resources in Amazon Connect][1].
    #
    # For sample policies that use tags, see [Amazon Connect Identity-Based
    # Policy Examples][2] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html
    # [2]: https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags used to organize, track, or control access for this resource.
    #   For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ARN", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Transfers contacts from one agent or queue to another agent or queue
    # at any point after a contact is created. You can transfer a contact to
    # another queue by providing the flow which orchestrates the contact to
    # the destination queue. This gives you more control over contact
    # handling and helps you adhere to the service level agreement (SLA)
    # guaranteed to your customers.
    #
    # Note the following requirements:
    #
    # * Transfer is supported for only `TASK` contacts.
    #
    # * Do not use both `QueueId` and `UserId` in the same call.
    #
    # * The following flow types are supported: Inbound flow, Transfer to
    #   agent flow, and Transfer to queue flow.
    #
    # * The `TransferContact` API can be called only on active contacts.
    #
    # * A contact cannot be transferred more than 11 times.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [String] :user_id
    #   The identifier for the user.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
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
    # @return [Types::TransferContactResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TransferContactResponse#contact_id #contact_id} => String
    #   * {Types::TransferContactResponse#contact_arn #contact_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     queue_id: "QueueId",
    #     user_id: "AgentResourceId",
    #     contact_flow_id: "ContactFlowId", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.contact_id #=> String
    #   resp.contact_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/TransferContact AWS API Documentation
    #
    # @overload transfer_contact(params = {})
    # @param [Hash] params ({})
    def transfer_contact(params = {}, options = {})
      req = build_request(:transfer_contact, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ARN", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates agent status.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :agent_status_id
    #   The identifier of the agent status.
    #
    # @option params [String] :name
    #   The name of the agent status.
    #
    # @option params [String] :description
    #   The description of the agent status.
    #
    # @option params [String] :state
    #   The state of the agent status.
    #
    # @option params [Integer] :display_order
    #   The display order of the agent status.
    #
    # @option params [Boolean] :reset_order_number
    #   A number indicating the reset order of the agent status.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent_status({
    #     instance_id: "InstanceId", # required
    #     agent_status_id: "AgentStatusId", # required
    #     name: "AgentStatusName",
    #     description: "UpdateAgentStatusDescription",
    #     state: "ENABLED", # accepts ENABLED, DISABLED
    #     display_order: 1,
    #     reset_order_number: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateAgentStatus AWS API Documentation
    #
    # @overload update_agent_status(params = {})
    # @param [Hash] params ({})
    def update_agent_status(params = {}, options = {})
      req = build_request(:update_agent_status, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Adds or updates user-defined contact information associated with the
    # specified contact. At least one field to be updated must be present in
    # the request.
    #
    # You can add or update user-defined contact information for both
    # ongoing and completed contacts.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with your contact center.
    #
    # @option params [String] :name
    #   The name of the contact.
    #
    # @option params [String] :description
    #   The description of the contact.
    #
    # @option params [Hash<String,Types::Reference>] :references
    #   Well-formed data on contact, shown to agents on Contact Control Panel
    #   (CCP).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     name: "Name",
    #     description: "Description",
    #     references: {
    #       "ReferenceKey" => {
    #         value: "ReferenceValue", # required
    #         type: "URL", # required, accepts URL, ATTACHMENT, NUMBER, STRING, DATE, EMAIL
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContact AWS API Documentation
    #
    # @overload update_contact(params = {})
    # @param [Hash] params ({})
    def update_contact(params = {}, options = {})
      req = build_request(:update_contact, params)
      req.send_request(options)
    end

    # Creates or updates user-defined contact attributes associated with the
    # specified contact.
    #
    # You can create or update user-defined attributes for both ongoing and
    # completed contacts. For example, while the call is active, you can
    # update the customer's name or the reason the customer called. You can
    # add notes about steps that the agent took during the call that display
    # to the next agent that takes the call. You can also update attributes
    # for a contact using data from your CRM application and save the data
    # with the contact in Amazon Connect. You could also flag calls for
    # additional analysis, such as legal review or to identify abusive
    # callers.
    #
    # Contact attributes are available in Amazon Connect for 24 months, and
    # are then deleted. For information about contact record retention and
    # the maximum size of the contact record attributes section, see
    # [Feature specifications][1] in the *Amazon Connect Administrator
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits
    #
    # @option params [required, String] :initial_contact_id
    #   The identifier of the contact. This is the identifier of the contact
    #   associated with the first interaction with the contact center.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, Hash<String,String>] :attributes
    #   The Amazon Connect attributes. These attributes can be accessed in
    #   flows just like any other contact attributes.
    #
    #   You can have up to 32,768 UTF-8 bytes across all attributes for a
    #   contact. Attribute keys can include only alphanumeric, dash, and
    #   underscore characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_attributes({
    #     initial_contact_id: "ContactId", # required
    #     instance_id: "InstanceId", # required
    #     attributes: { # required
    #       "AttributeName" => "AttributeValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactAttributes AWS API Documentation
    #
    # @overload update_contact_attributes(params = {})
    # @param [Hash] params ({})
    def update_contact_attributes(params = {}, options = {})
      req = build_request(:update_contact_attributes, params)
      req.send_request(options)
    end

    # Updates details about a contact evaluation in the specified Amazon
    # Connect instance. A contact evaluation must be in draft state. Answers
    # included in the request are merged with existing answers for the given
    # evaluation. An answer or note can be deleted by passing an empty
    # object (`\{\}`) to the question identifier.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_id
    #   A unique identifier for the contact evaluation.
    #
    # @option params [Hash<String,Types::EvaluationAnswerInput>] :answers
    #   A map of question identifiers to answer value.
    #
    # @option params [Hash<String,Types::EvaluationNote>] :notes
    #   A map of question identifiers to note value.
    #
    # @return [Types::UpdateContactEvaluationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateContactEvaluationResponse#evaluation_id #evaluation_id} => String
    #   * {Types::UpdateContactEvaluationResponse#evaluation_arn #evaluation_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_evaluation({
    #     instance_id: "InstanceId", # required
    #     evaluation_id: "ResourceId", # required
    #     answers: {
    #       "ResourceId" => {
    #         value: {
    #           string_value: "EvaluationAnswerDataStringValue",
    #           numeric_value: 1.0,
    #           not_applicable: false,
    #         },
    #       },
    #     },
    #     notes: {
    #       "ResourceId" => {
    #         value: "EvaluationNoteString",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_id #=> String
    #   resp.evaluation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactEvaluation AWS API Documentation
    #
    # @overload update_contact_evaluation(params = {})
    # @param [Hash] params ({})
    def update_contact_evaluation(params = {}, options = {})
      req = build_request(:update_contact_evaluation, params)
      req.send_request(options)
    end

    # Updates the specified flow.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [required, String] :content
    #   The JSON string that represents flow's content. For an example, see
    #   [Example contact flow in Amazon Connect Flow language][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language-example.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_content({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     content: "ContactFlowContent", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowContent AWS API Documentation
    #
    # @overload update_contact_flow_content(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_content(params = {}, options = {})
      req = build_request(:update_contact_flow_content, params)
      req.send_request(options)
    end

    # Updates metadata about specified flow.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [String] :name
    #   The name of the flow.
    #
    # @option params [String] :description
    #   The description of the flow.
    #
    # @option params [String] :contact_flow_state
    #   The state of flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_metadata({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     name: "ContactFlowName",
    #     description: "ContactFlowDescription",
    #     contact_flow_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowMetadata AWS API Documentation
    #
    # @overload update_contact_flow_metadata(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_metadata(params = {}, options = {})
      req = build_request(:update_contact_flow_metadata, params)
      req.send_request(options)
    end

    # Updates specified flow module for the specified Amazon Connect
    # instance.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_module_id
    #   The identifier of the flow module.
    #
    # @option params [required, String] :content
    #   The content of the flow module.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_module_content({
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #     content: "ContactFlowModuleContent", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowModuleContent AWS API Documentation
    #
    # @overload update_contact_flow_module_content(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_module_content(params = {}, options = {})
      req = build_request(:update_contact_flow_module_content, params)
      req.send_request(options)
    end

    # Updates metadata about specified flow module.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_flow_module_id
    #   The identifier of the flow module.
    #
    # @option params [String] :name
    #   The name of the flow module.
    #
    # @option params [String] :description
    #   The description of the flow module.
    #
    # @option params [String] :state
    #   The state of flow module.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_module_metadata({
    #     instance_id: "InstanceId", # required
    #     contact_flow_module_id: "ContactFlowModuleId", # required
    #     name: "ContactFlowModuleName",
    #     description: "ContactFlowModuleDescription",
    #     state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowModuleMetadata AWS API Documentation
    #
    # @overload update_contact_flow_module_metadata(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_module_metadata(params = {}, options = {})
      req = build_request(:update_contact_flow_module_metadata, params)
      req.send_request(options)
    end

    # The name of the flow.
    #
    # You can also create and update flows using the [Amazon Connect Flow
    # language][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance.
    #
    # @option params [required, String] :contact_flow_id
    #   The identifier of the flow.
    #
    # @option params [String] :name
    #   The name of the flow.
    #
    # @option params [String] :description
    #   The description of the flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_flow_name({
    #     instance_id: "InstanceId", # required
    #     contact_flow_id: "ContactFlowId", # required
    #     name: "ContactFlowName",
    #     description: "ContactFlowDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactFlowName AWS API Documentation
    #
    # @overload update_contact_flow_name(params = {})
    # @param [Hash] params ({})
    def update_contact_flow_name(params = {}, options = {})
      req = build_request(:update_contact_flow_name, params)
      req.send_request(options)
    end

    # Updates the scheduled time of a task contact that is already
    # scheduled.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :scheduled_time
    #   The timestamp, in Unix Epoch seconds format, at which to start running
    #   the inbound flow. The scheduled time cannot be in the past. It must be
    #   within up to 6 days in future.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_contact_schedule({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     scheduled_time: Time.now, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateContactSchedule AWS API Documentation
    #
    # @overload update_contact_schedule(params = {})
    # @param [Hash] params ({})
    def update_contact_schedule(params = {}, options = {})
      req = build_request(:update_contact_schedule, params)
      req.send_request(options)
    end

    # Updates details about a specific evaluation form version in the
    # specified Amazon Connect instance. Question and section identifiers
    # cannot be duplicated within the same evaluation form.
    #
    # This operation does not support partial updates. Instead it does a
    # full update of evaluation form content.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :evaluation_form_id
    #   The unique identifier for the evaluation form.
    #
    # @option params [required, Integer] :evaluation_form_version
    #   A version of the evaluation form to update.
    #
    # @option params [Boolean] :create_new_version
    #   A flag indicating whether the operation must create a new version.
    #
    # @option params [required, String] :title
    #   A title of the evaluation form.
    #
    # @option params [String] :description
    #   The description of the evaluation form.
    #
    # @option params [required, Array<Types::EvaluationFormItem>] :items
    #   Items that are part of the evaluation form. The total number of
    #   sections and questions must not exceed 100 each. Questions must be
    #   contained in a section.
    #
    # @option params [Types::EvaluationFormScoringStrategy] :scoring_strategy
    #   A scoring strategy of the evaluation form.
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
    # @return [Types::UpdateEvaluationFormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEvaluationFormResponse#evaluation_form_id #evaluation_form_id} => String
    #   * {Types::UpdateEvaluationFormResponse#evaluation_form_arn #evaluation_form_arn} => String
    #   * {Types::UpdateEvaluationFormResponse#evaluation_form_version #evaluation_form_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_evaluation_form({
    #     instance_id: "InstanceId", # required
    #     evaluation_form_id: "ResourceId", # required
    #     evaluation_form_version: 1, # required
    #     create_new_version: false,
    #     title: "EvaluationFormTitle", # required
    #     description: "EvaluationFormDescription",
    #     items: [ # required
    #       {
    #         section: {
    #           title: "EvaluationFormSectionTitle", # required
    #           ref_id: "ReferenceId", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           items: { # required
    #             # recursive EvaluationFormItemsList
    #           },
    #           weight: 1.0,
    #         },
    #         question: {
    #           title: "EvaluationFormQuestionTitle", # required
    #           instructions: "EvaluationFormQuestionInstructions",
    #           ref_id: "ReferenceId", # required
    #           not_applicable_enabled: false,
    #           question_type: "TEXT", # required, accepts TEXT, SINGLESELECT, NUMERIC
    #           question_type_properties: {
    #             numeric: {
    #               min_value: 1, # required
    #               max_value: 1, # required
    #               options: [
    #                 {
    #                   min_value: 1, # required
    #                   max_value: 1, # required
    #                   score: 1,
    #                   automatic_fail: false,
    #                 },
    #               ],
    #               automation: {
    #                 property_value: {
    #                   label: "OVERALL_CUSTOMER_SENTIMENT_SCORE", # required, accepts OVERALL_CUSTOMER_SENTIMENT_SCORE, OVERALL_AGENT_SENTIMENT_SCORE, NON_TALK_TIME, NON_TALK_TIME_PERCENTAGE, NUMBER_OF_INTERRUPTIONS, CONTACT_DURATION, AGENT_INTERACTION_DURATION, CUSTOMER_HOLD_TIME
    #                 },
    #               },
    #             },
    #             single_select: {
    #               options: [ # required
    #                 {
    #                   ref_id: "ReferenceId", # required
    #                   text: "EvaluationFormSingleSelectQuestionOptionText", # required
    #                   score: 1,
    #                   automatic_fail: false,
    #                 },
    #               ],
    #               display_as: "DROPDOWN", # accepts DROPDOWN, RADIO
    #               automation: {
    #                 options: [ # required
    #                   {
    #                     rule_category: {
    #                       category: "SingleSelectQuestionRuleCategoryAutomationLabel", # required
    #                       condition: "PRESENT", # required, accepts PRESENT, NOT_PRESENT
    #                       option_ref_id: "ReferenceId", # required
    #                     },
    #                   },
    #                 ],
    #                 default_option_ref_id: "ReferenceId",
    #               },
    #             },
    #           },
    #           weight: 1.0,
    #         },
    #       },
    #     ],
    #     scoring_strategy: {
    #       mode: "QUESTION_ONLY", # required, accepts QUESTION_ONLY, SECTION_ONLY
    #       status: "ENABLED", # required, accepts ENABLED, DISABLED
    #     },
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.evaluation_form_id #=> String
    #   resp.evaluation_form_arn #=> String
    #   resp.evaluation_form_version #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateEvaluationForm AWS API Documentation
    #
    # @overload update_evaluation_form(params = {})
    # @param [Hash] params ({})
    def update_evaluation_form(params = {}, options = {})
      req = build_request(:update_evaluation_form, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates the hours of operation.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier of the hours of operation.
    #
    # @option params [String] :name
    #   The name of the hours of operation.
    #
    # @option params [String] :description
    #   The description of the hours of operation.
    #
    # @option params [String] :time_zone
    #   The time zone of the hours of operation.
    #
    # @option params [Array<Types::HoursOfOperationConfig>] :config
    #   Configuration information of the hours of operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #     name: "CommonNameLength127",
    #     description: "UpdateHoursOfOperationDescription",
    #     time_zone: "TimeZone",
    #     config: [
    #       {
    #         day: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         start_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #         end_time: { # required
    #           hours: 1, # required
    #           minutes: 1, # required
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateHoursOfOperation AWS API Documentation
    #
    # @overload update_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def update_hours_of_operation(params = {}, options = {})
      req = build_request(:update_hours_of_operation, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates the value for the specified attribute type.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :attribute_type
    #   The type of attribute.
    #
    #   <note markdown="1"> Only allowlisted customers can consume USE\_CUSTOM\_TTS\_VOICES. To
    #   access this feature, contact Amazon Web Services Support for
    #   allowlisting.
    #
    #    </note>
    #
    # @option params [required, String] :value
    #   The value for the attribute. Maximum character limit is 100.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_attribute({
    #     instance_id: "InstanceId", # required
    #     attribute_type: "INBOUND_CALLS", # required, accepts INBOUND_CALLS, OUTBOUND_CALLS, CONTACTFLOW_LOGS, CONTACT_LENS, AUTO_RESOLVE_BEST_VOICES, USE_CUSTOM_TTS_VOICES, EARLY_MEDIA, MULTI_PARTY_CONFERENCE, HIGH_VOLUME_OUTBOUND, ENHANCED_CONTACT_MONITORING
    #     value: "InstanceAttributeValue", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateInstanceAttribute AWS API Documentation
    #
    # @overload update_instance_attribute(params = {})
    # @param [Hash] params ({})
    def update_instance_attribute(params = {}, options = {})
      req = build_request(:update_instance_attribute, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates an existing configuration for a resource type. This API is
    # idempotent.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :association_id
    #   The existing association identifier that uniquely identifies the
    #   resource type and storage config for the given instance ID.
    #
    # @option params [required, String] :resource_type
    #   A valid resource type.
    #
    # @option params [required, Types::InstanceStorageConfig] :storage_config
    #   The storage configuration for the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_storage_config({
    #     instance_id: "InstanceId", # required
    #     association_id: "AssociationId", # required
    #     resource_type: "CHAT_TRANSCRIPTS", # required, accepts CHAT_TRANSCRIPTS, CALL_RECORDINGS, SCHEDULED_REPORTS, MEDIA_STREAMS, CONTACT_TRACE_RECORDS, AGENT_EVENTS, REAL_TIME_CONTACT_ANALYSIS_SEGMENTS, ATTACHMENTS, CONTACT_EVALUATIONS, SCREEN_RECORDINGS
    #     storage_config: { # required
    #       association_id: "AssociationId",
    #       storage_type: "S3", # required, accepts S3, KINESIS_VIDEO_STREAM, KINESIS_STREAM, KINESIS_FIREHOSE
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "Prefix", # required
    #         encryption_config: {
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       },
    #       kinesis_video_stream_config: {
    #         prefix: "Prefix", # required
    #         retention_period_hours: 1, # required
    #         encryption_config: { # required
    #           encryption_type: "KMS", # required, accepts KMS
    #           key_id: "KeyId", # required
    #         },
    #       },
    #       kinesis_stream_config: {
    #         stream_arn: "ARN", # required
    #       },
    #       kinesis_firehose_config: {
    #         firehose_arn: "ARN", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateInstanceStorageConfig AWS API Documentation
    #
    # @overload update_instance_storage_config(params = {})
    # @param [Hash] params ({})
    def update_instance_storage_config(params = {}, options = {})
      req = build_request(:update_instance_storage_config, params)
      req.send_request(options)
    end

    # Updates timeouts for when human chat participants are to be considered
    # idle, and when agents are automatically disconnected from a chat due
    # to idleness. You can set four timers:
    #
    # * Customer idle timeout
    #
    # * Customer auto-disconnect timeout
    #
    # * Agent idle timeout
    #
    # * Agent auto-disconnect timeout
    #
    # For more information about how chat timeouts work, see [Set up chat
    # timeouts for human participants][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :contact_id
    #   The identifier of the contact in this instance of Amazon Connect.
    #
    # @option params [required, Types::UpdateParticipantRoleConfigChannelInfo] :channel_configuration
    #   The Amazon Connect channel you want to configure.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_participant_role_config({
    #     instance_id: "InstanceId", # required
    #     contact_id: "ContactId", # required
    #     channel_configuration: { # required
    #       chat: {
    #         participant_timer_config_list: [ # required
    #           {
    #             participant_role: "CUSTOMER", # required, accepts CUSTOMER, AGENT
    #             timer_type: "IDLE", # required, accepts IDLE, DISCONNECT_NONCUSTOMER
    #             timer_value: { # required
    #               participant_timer_action: "Unset", # accepts Unset
    #               participant_timer_duration_in_minutes: 1,
    #             },
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateParticipantRoleConfig AWS API Documentation
    #
    # @overload update_participant_role_config(params = {})
    # @param [Hash] params ({})
    def update_participant_role_config(params = {}, options = {})
      req = build_request(:update_participant_role_config, params)
      req.send_request(options)
    end

    # Updates your claimed phone number from its current Amazon Connect
    # instance or traffic distribution group to another Amazon Connect
    # instance or traffic distribution group in the same Amazon Web Services
    # Region.
    #
    # After using this API, you must verify that the phone number is
    # attached to the correct flow in the target instance or traffic
    # distribution group. You need to do this because the API switches only
    # the phone number to a new instance or traffic distribution group. It
    # doesn't migrate the flow configuration of the phone number, too.
    #
    #  You can call [DescribePhoneNumber][1] API to verify the status of a
    # previous [UpdatePhoneNumber][2] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html
    #
    # @option params [required, String] :phone_number_id
    #   A unique identifier for the phone number.
    #
    # @option params [required, String] :target_arn
    #   The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
    #   distribution groups that phone numbers are claimed to.
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
    # @return [Types::UpdatePhoneNumberResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePhoneNumberResponse#phone_number_id #phone_number_id} => String
    #   * {Types::UpdatePhoneNumberResponse#phone_number_arn #phone_number_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_phone_number({
    #     phone_number_id: "PhoneNumberId", # required
    #     target_arn: "ARN", # required
    #     client_token: "ClientToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.phone_number_id #=> String
    #   resp.phone_number_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePhoneNumber AWS API Documentation
    #
    # @overload update_phone_number(params = {})
    # @param [Hash] params ({})
    def update_phone_number(params = {}, options = {})
      req = build_request(:update_phone_number, params)
      req.send_request(options)
    end

    # Updates a prompt.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :prompt_id
    #   A unique identifier for the prompt.
    #
    # @option params [String] :name
    #   The name of the prompt.
    #
    # @option params [String] :description
    #   A description of the prompt.
    #
    # @option params [String] :s3_uri
    #   The URI for the S3 bucket where the prompt is stored.
    #
    # @return [Types::UpdatePromptResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePromptResponse#prompt_arn #prompt_arn} => String
    #   * {Types::UpdatePromptResponse#prompt_id #prompt_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_prompt({
    #     instance_id: "InstanceId", # required
    #     prompt_id: "PromptId", # required
    #     name: "CommonNameLength127",
    #     description: "PromptDescription",
    #     s3_uri: "S3Uri",
    #   })
    #
    # @example Response structure
    #
    #   resp.prompt_arn #=> String
    #   resp.prompt_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdatePrompt AWS API Documentation
    #
    # @overload update_prompt(params = {})
    # @param [Hash] params ({})
    def update_prompt(params = {}, options = {})
      req = build_request(:update_prompt, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates the hours of operation for the specified queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, String] :hours_of_operation_id
    #   The identifier for the hours of operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_hours_of_operation({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     hours_of_operation_id: "HoursOfOperationId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueHoursOfOperation AWS API Documentation
    #
    # @overload update_queue_hours_of_operation(params = {})
    # @param [Hash] params ({})
    def update_queue_hours_of_operation(params = {}, options = {})
      req = build_request(:update_queue_hours_of_operation, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates the maximum number of contacts allowed in a queue before it is
    # considered full.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [Integer] :max_contacts
    #   The maximum number of contacts that can be in the queue before it is
    #   considered full.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_max_contacts({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     max_contacts: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueMaxContacts AWS API Documentation
    #
    # @overload update_queue_max_contacts(params = {})
    # @param [Hash] params ({})
    def update_queue_max_contacts(params = {}, options = {})
      req = build_request(:update_queue_max_contacts, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates the name and description of a queue. At least `Name` or
    # `Description` must be provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [String] :name
    #   The name of the queue.
    #
    # @option params [String] :description
    #   The description of the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_name({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     name: "CommonNameLength127",
    #     description: "QueueDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueName AWS API Documentation
    #
    # @overload update_queue_name(params = {})
    # @param [Hash] params ({})
    def update_queue_name(params = {}, options = {})
      req = build_request(:update_queue_name, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates the outbound caller ID name, number, and outbound whisper flow
    # for a specified queue.
    #
    # If the number being used in the input is claimed to a traffic
    # distribution group, and you are calling this API using an instance in
    # the Amazon Web Services Region where the traffic distribution group
    # was created, you can use either a full phone number ARN or UUID value
    # for the `OutboundCallerIdNumberId` value of the
    # [OutboundCallerConfig][1] request body parameter. However, if the
    # number is claimed to a traffic distribution group and you are calling
    # this API using an instance in the alternate Amazon Web Services Region
    # associated with the traffic distribution group, you must provide a
    # full phone number ARN. If a UUID is provided in this scenario, you
    # will receive a `ResourceNotFoundException`.
    #
    #  Only use the phone number ARN format that doesn't contain `instance`
    # in the path, for example,
    # `arn:aws:connect:us-east-1:1234567890:phone-number/uuid`. This is the
    # same ARN format that is returned when you call the
    # [ListPhoneNumbersV2][2] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/API_OutboundCallerConfig
    # [2]: https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, Types::OutboundCallerConfig] :outbound_caller_config
    #   The outbound caller ID name, number, and outbound whisper flow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_outbound_caller_config({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     outbound_caller_config: { # required
    #       outbound_caller_id_name: "OutboundCallerIdName",
    #       outbound_caller_id_number_id: "PhoneNumberId",
    #       outbound_flow_id: "ContactFlowId",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueOutboundCallerConfig AWS API Documentation
    #
    # @overload update_queue_outbound_caller_config(params = {})
    # @param [Hash] params ({})
    def update_queue_outbound_caller_config(params = {}, options = {})
      req = build_request(:update_queue_outbound_caller_config, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates the status of the queue.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :queue_id
    #   The identifier for the queue.
    #
    # @option params [required, String] :status
    #   The status of the queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_queue_status({
    #     instance_id: "InstanceId", # required
    #     queue_id: "QueueId", # required
    #     status: "ENABLED", # required, accepts ENABLED, DISABLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQueueStatus AWS API Documentation
    #
    # @overload update_queue_status(params = {})
    # @param [Hash] params ({})
    def update_queue_status(params = {}, options = {})
      req = build_request(:update_queue_status, params)
      req.send_request(options)
    end

    # Updates the configuration settings for the specified quick connect.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @option params [required, Types::QuickConnectConfig] :quick_connect_config
    #   Information about the configuration settings for the quick connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_connect_config({
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #     quick_connect_config: { # required
    #       quick_connect_type: "USER", # required, accepts USER, QUEUE, PHONE_NUMBER
    #       user_config: {
    #         user_id: "UserId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       queue_config: {
    #         queue_id: "QueueId", # required
    #         contact_flow_id: "ContactFlowId", # required
    #       },
    #       phone_config: {
    #         phone_number: "PhoneNumber", # required
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQuickConnectConfig AWS API Documentation
    #
    # @overload update_quick_connect_config(params = {})
    # @param [Hash] params ({})
    def update_quick_connect_config(params = {}, options = {})
      req = build_request(:update_quick_connect_config, params)
      req.send_request(options)
    end

    # Updates the name and description of a quick connect. The request
    # accepts the following data in JSON format. At least `Name` or
    # `Description` must be provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :quick_connect_id
    #   The identifier for the quick connect.
    #
    # @option params [String] :name
    #   The name of the quick connect.
    #
    # @option params [String] :description
    #   The description of the quick connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_quick_connect_name({
    #     instance_id: "InstanceId", # required
    #     quick_connect_id: "QuickConnectId", # required
    #     name: "QuickConnectName",
    #     description: "UpdateQuickConnectDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateQuickConnectName AWS API Documentation
    #
    # @overload update_quick_connect_name(params = {})
    # @param [Hash] params ({})
    def update_quick_connect_name(params = {}, options = {})
      req = build_request(:update_quick_connect_name, params)
      req.send_request(options)
    end

    # Updates the channels that agents can handle in the Contact Control
    # Panel (CCP) for a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::MediaConcurrency>] :media_concurrencies
    #   The channels that agents can handle in the Contact Control Panel
    #   (CCP).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_concurrency({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     media_concurrencies: [ # required
    #       {
    #         channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #         concurrency: 1, # required
    #         cross_channel_behavior: {
    #           behavior_type: "ROUTE_CURRENT_CHANNEL_ONLY", # required, accepts ROUTE_CURRENT_CHANNEL_ONLY, ROUTE_ANY_CHANNEL
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileConcurrency AWS API Documentation
    #
    # @overload update_routing_profile_concurrency(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_concurrency(params = {}, options = {})
      req = build_request(:update_routing_profile_concurrency, params)
      req.send_request(options)
    end

    # Updates the default outbound queue of a routing profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, String] :default_outbound_queue_id
    #   The identifier for the default outbound queue.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_default_outbound_queue({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     default_outbound_queue_id: "QueueId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileDefaultOutboundQueue AWS API Documentation
    #
    # @overload update_routing_profile_default_outbound_queue(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_default_outbound_queue(params = {}, options = {})
      req = build_request(:update_routing_profile_default_outbound_queue, params)
      req.send_request(options)
    end

    # Updates the name and description of a routing profile. The request
    # accepts the following data in JSON format. At least `Name` or
    # `Description` must be provided.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [String] :name
    #   The name of the routing profile. Must not be more than 127 characters.
    #
    # @option params [String] :description
    #   The description of the routing profile. Must not be more than 250
    #   characters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_name({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     name: "RoutingProfileName",
    #     description: "RoutingProfileDescription",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileName AWS API Documentation
    #
    # @overload update_routing_profile_name(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_name(params = {}, options = {})
      req = build_request(:update_routing_profile_name, params)
      req.send_request(options)
    end

    # Updates the properties associated with a set of queues for a routing
    # profile.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile.
    #
    # @option params [required, Array<Types::RoutingProfileQueueConfig>] :queue_configs
    #   The queues to be updated for this routing profile. Queues must first
    #   be associated to the routing profile. You can do this using
    #   AssociateRoutingProfileQueues.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_routing_profile_queues({
    #     instance_id: "InstanceId", # required
    #     routing_profile_id: "RoutingProfileId", # required
    #     queue_configs: [ # required
    #       {
    #         queue_reference: { # required
    #           queue_id: "QueueId", # required
    #           channel: "VOICE", # required, accepts VOICE, CHAT, TASK
    #         },
    #         priority: 1, # required
    #         delay: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRoutingProfileQueues AWS API Documentation
    #
    # @overload update_routing_profile_queues(params = {})
    # @param [Hash] params ({})
    def update_routing_profile_queues(params = {}, options = {})
      req = build_request(:update_routing_profile_queues, params)
      req.send_request(options)
    end

    # Updates a rule for the specified Amazon Connect instance.
    #
    # Use the [Rules Function language][1] to code conditions for the rule.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html
    #
    # @option params [required, String] :rule_id
    #   A unique identifier for the rule.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [required, String] :name
    #   The name of the rule. You can change the name only if
    #   `TriggerEventSource` is one of the following values:
    #   `OnZendeskTicketCreate` \| `OnZendeskTicketStatusUpdate` \|
    #   `OnSalesforceCaseCreate`
    #
    # @option params [required, String] :function
    #   The conditions of the rule.
    #
    # @option params [required, Array<Types::RuleAction>] :actions
    #   A list of actions to be run when the rule is triggered.
    #
    # @option params [required, String] :publish_status
    #   The publish status of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule({
    #     rule_id: "RuleId", # required
    #     instance_id: "InstanceId", # required
    #     name: "RuleName", # required
    #     function: "RuleFunction", # required
    #     actions: [ # required
    #       {
    #         action_type: "CREATE_TASK", # required, accepts CREATE_TASK, ASSIGN_CONTACT_CATEGORY, GENERATE_EVENTBRIDGE_EVENT, SEND_NOTIFICATION
    #         task_action: {
    #           name: "TaskNameExpression", # required
    #           description: "TaskDescriptionExpression",
    #           contact_flow_id: "ContactFlowId", # required
    #           references: {
    #             "ReferenceKey" => {
    #               value: "ReferenceValue", # required
    #               type: "URL", # required, accepts URL, ATTACHMENT, NUMBER, STRING, DATE, EMAIL
    #             },
    #           },
    #         },
    #         event_bridge_action: {
    #           name: "EventBridgeActionName", # required
    #         },
    #         assign_contact_category_action: {
    #         },
    #         send_notification_action: {
    #           delivery_method: "EMAIL", # required, accepts EMAIL
    #           subject: "Subject",
    #           content: "Content", # required
    #           content_type: "PLAIN_TEXT", # required, accepts PLAIN_TEXT
    #           recipient: { # required
    #             user_tags: {
    #               "String" => "String",
    #             },
    #             user_ids: ["UserId"],
    #           },
    #         },
    #       },
    #     ],
    #     publish_status: "DRAFT", # required, accepts DRAFT, PUBLISHED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateRule AWS API Documentation
    #
    # @overload update_rule(params = {})
    # @param [Hash] params ({})
    def update_rule(params = {}, options = {})
      req = build_request(:update_rule, params)
      req.send_request(options)
    end

    # This API is in preview release for Amazon Connect and is subject to
    # change.
    #
    # Updates a security profile.
    #
    # @option params [String] :description
    #   The description of the security profile.
    #
    # @option params [Array<String>] :permissions
    #   The permissions granted to a security profile. For a list of valid
    #   permissions, see [List of security profile permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html
    #
    # @option params [required, String] :security_profile_id
    #   The identifier for the security profle.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [Hash<String,String>] :allowed_access_control_tags
    #   The list of tags that a security profile uses to restrict access to
    #   resources in Amazon Connect.
    #
    # @option params [Array<String>] :tag_restricted_resources
    #   The list of resources that a security profile applies tag restrictions
    #   to in Amazon Connect.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_security_profile({
    #     description: "SecurityProfileDescription",
    #     permissions: ["SecurityProfilePermission"],
    #     security_profile_id: "SecurityProfileId", # required
    #     instance_id: "InstanceId", # required
    #     allowed_access_control_tags: {
    #       "SecurityProfilePolicyKey" => "SecurityProfilePolicyValue",
    #     },
    #     tag_restricted_resources: ["TagRestrictedResourceName"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateSecurityProfile AWS API Documentation
    #
    # @overload update_security_profile(params = {})
    # @param [Hash] params ({})
    def update_security_profile(params = {}, options = {})
      req = build_request(:update_security_profile, params)
      req.send_request(options)
    end

    # Updates details about a specific task template in the specified Amazon
    # Connect instance. This operation does not support partial updates.
    # Instead it does a full update of template content.
    #
    # @option params [required, String] :task_template_id
    #   A unique identifier for the task template.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @option params [String] :name
    #   The name of the task template.
    #
    # @option params [String] :description
    #   The description of the task template.
    #
    # @option params [String] :contact_flow_id
    #   The identifier of the flow that runs by default when a task is created
    #   by referencing this template.
    #
    # @option params [Types::TaskTemplateConstraints] :constraints
    #   Constraints that are applicable to the fields listed.
    #
    # @option params [Types::TaskTemplateDefaults] :defaults
    #   The default values for fields when a task is created by referencing
    #   this template.
    #
    # @option params [String] :status
    #   Marks a template as `ACTIVE` or `INACTIVE` for a task to refer to it.
    #   Tasks can only be created from `ACTIVE` templates. If a template is
    #   marked as `INACTIVE`, then a task that refers to this template cannot
    #   be created.
    #
    # @option params [Array<Types::TaskTemplateField>] :fields
    #   Fields that are part of the template.
    #
    # @return [Types::UpdateTaskTemplateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTaskTemplateResponse#instance_id #instance_id} => String
    #   * {Types::UpdateTaskTemplateResponse#id #id} => String
    #   * {Types::UpdateTaskTemplateResponse#arn #arn} => String
    #   * {Types::UpdateTaskTemplateResponse#name #name} => String
    #   * {Types::UpdateTaskTemplateResponse#description #description} => String
    #   * {Types::UpdateTaskTemplateResponse#contact_flow_id #contact_flow_id} => String
    #   * {Types::UpdateTaskTemplateResponse#constraints #constraints} => Types::TaskTemplateConstraints
    #   * {Types::UpdateTaskTemplateResponse#defaults #defaults} => Types::TaskTemplateDefaults
    #   * {Types::UpdateTaskTemplateResponse#fields #fields} => Array&lt;Types::TaskTemplateField&gt;
    #   * {Types::UpdateTaskTemplateResponse#status #status} => String
    #   * {Types::UpdateTaskTemplateResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateTaskTemplateResponse#created_time #created_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task_template({
    #     task_template_id: "TaskTemplateId", # required
    #     instance_id: "InstanceId", # required
    #     name: "TaskTemplateName",
    #     description: "TaskTemplateDescription",
    #     contact_flow_id: "ContactFlowId",
    #     constraints: {
    #       required_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #       read_only_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #       invisible_fields: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #         },
    #       ],
    #     },
    #     defaults: {
    #       default_field_values: [
    #         {
    #           id: {
    #             name: "TaskTemplateFieldName",
    #           },
    #           default_value: "TaskTemplateFieldValue",
    #         },
    #       ],
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     fields: [
    #       {
    #         id: { # required
    #           name: "TaskTemplateFieldName",
    #         },
    #         description: "TaskTemplateFieldDescription",
    #         type: "NAME", # accepts NAME, DESCRIPTION, SCHEDULED_TIME, QUICK_CONNECT, URL, NUMBER, TEXT, TEXT_AREA, DATE_TIME, BOOLEAN, SINGLE_SELECT, EMAIL
    #         single_select_options: ["TaskTemplateSingleSelectOption"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_id #=> String
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.contact_flow_id #=> String
    #   resp.constraints.required_fields #=> Array
    #   resp.constraints.required_fields[0].id.name #=> String
    #   resp.constraints.read_only_fields #=> Array
    #   resp.constraints.read_only_fields[0].id.name #=> String
    #   resp.constraints.invisible_fields #=> Array
    #   resp.constraints.invisible_fields[0].id.name #=> String
    #   resp.defaults.default_field_values #=> Array
    #   resp.defaults.default_field_values[0].id.name #=> String
    #   resp.defaults.default_field_values[0].default_value #=> String
    #   resp.fields #=> Array
    #   resp.fields[0].id.name #=> String
    #   resp.fields[0].description #=> String
    #   resp.fields[0].type #=> String, one of "NAME", "DESCRIPTION", "SCHEDULED_TIME", "QUICK_CONNECT", "URL", "NUMBER", "TEXT", "TEXT_AREA", "DATE_TIME", "BOOLEAN", "SINGLE_SELECT", "EMAIL"
    #   resp.fields[0].single_select_options #=> Array
    #   resp.fields[0].single_select_options[0] #=> String
    #   resp.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.last_modified_time #=> Time
    #   resp.created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTaskTemplate AWS API Documentation
    #
    # @overload update_task_template(params = {})
    # @param [Hash] params ({})
    def update_task_template(params = {}, options = {})
      req = build_request(:update_task_template, params)
      req.send_request(options)
    end

    # Updates the traffic distribution for a given traffic distribution
    # group.
    #
    # For more information about updating a traffic distribution group, see
    # [Update telephony traffic distribution across Amazon Web Services
    # Regions ][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/update-telephony-traffic-distribution.html
    #
    # @option params [required, String] :id
    #   The identifier of the traffic distribution group. This can be the ID
    #   or the ARN if the API is being called in the Region where the traffic
    #   distribution group was created. The ARN must be provided if the call
    #   is from the replicated Region.
    #
    # @option params [Types::TelephonyConfig] :telephony_config
    #   The distribution of traffic between the instance and its replica(s).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_traffic_distribution({
    #     id: "TrafficDistributionGroupIdOrArn", # required
    #     telephony_config: {
    #       distributions: [ # required
    #         {
    #           region: "AwsRegion", # required
    #           percentage: 1, # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateTrafficDistribution AWS API Documentation
    #
    # @overload update_traffic_distribution(params = {})
    # @param [Hash] params ({})
    def update_traffic_distribution(params = {}, options = {})
      req = build_request(:update_traffic_distribution, params)
      req.send_request(options)
    end

    # Assigns the specified hierarchy group to the specified user.
    #
    # @option params [String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy({
    #     hierarchy_group_id: "HierarchyGroupId",
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchy AWS API Documentation
    #
    # @overload update_user_hierarchy(params = {})
    # @param [Hash] params ({})
    def update_user_hierarchy(params = {}, options = {})
      req = build_request(:update_user_hierarchy, params)
      req.send_request(options)
    end

    # Updates the name of the user hierarchy group.
    #
    # @option params [required, String] :name
    #   The name of the hierarchy group. Must not be more than 100 characters.
    #
    # @option params [required, String] :hierarchy_group_id
    #   The identifier of the hierarchy group.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy_group_name({
    #     name: "HierarchyGroupName", # required
    #     hierarchy_group_id: "HierarchyGroupId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchyGroupName AWS API Documentation
    #
    # @overload update_user_hierarchy_group_name(params = {})
    # @param [Hash] params ({})
    def update_user_hierarchy_group_name(params = {}, options = {})
      req = build_request(:update_user_hierarchy_group_name, params)
      req.send_request(options)
    end

    # Updates the user hierarchy structure: add, remove, and rename user
    # hierarchy levels.
    #
    # @option params [required, Types::HierarchyStructureUpdate] :hierarchy_structure
    #   The hierarchy levels to update.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_hierarchy_structure({
    #     hierarchy_structure: { # required
    #       level_one: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_two: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_three: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_four: {
    #         name: "HierarchyLevelName", # required
    #       },
    #       level_five: {
    #         name: "HierarchyLevelName", # required
    #       },
    #     },
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserHierarchyStructure AWS API Documentation
    #
    # @overload update_user_hierarchy_structure(params = {})
    # @param [Hash] params ({})
    def update_user_hierarchy_structure(params = {}, options = {})
      req = build_request(:update_user_hierarchy_structure, params)
      req.send_request(options)
    end

    # Updates the identity information for the specified user.
    #
    # We strongly recommend limiting who has the ability to invoke
    # `UpdateUserIdentityInfo`. Someone with that ability can change the
    # login credentials of other users by changing their email address. This
    # poses a security risk to your organization. They can change the email
    # address of a user to the attacker's email address, and then reset the
    # password through email. For more information, see [Best Practices for
    # Security Profiles][1] in the *Amazon Connect Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html
    #
    # @option params [required, Types::UserIdentityInfo] :identity_info
    #   The identity information for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_identity_info({
    #     identity_info: { # required
    #       first_name: "AgentFirstName",
    #       last_name: "AgentLastName",
    #       email: "Email",
    #       secondary_email: "Email",
    #       mobile: "PhoneNumber",
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserIdentityInfo AWS API Documentation
    #
    # @overload update_user_identity_info(params = {})
    # @param [Hash] params ({})
    def update_user_identity_info(params = {}, options = {})
      req = build_request(:update_user_identity_info, params)
      req.send_request(options)
    end

    # Updates the phone configuration settings for the specified user.
    #
    # @option params [required, Types::UserPhoneConfig] :phone_config
    #   Information about phone configuration settings for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_phone_config({
    #     phone_config: { # required
    #       phone_type: "SOFT_PHONE", # required, accepts SOFT_PHONE, DESK_PHONE
    #       auto_accept: false,
    #       after_contact_work_time_limit: 1,
    #       desk_phone_number: "PhoneNumber",
    #     },
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserPhoneConfig AWS API Documentation
    #
    # @overload update_user_phone_config(params = {})
    # @param [Hash] params ({})
    def update_user_phone_config(params = {}, options = {})
      req = build_request(:update_user_phone_config, params)
      req.send_request(options)
    end

    # Assigns the specified routing profile to the specified user.
    #
    # @option params [required, String] :routing_profile_id
    #   The identifier of the routing profile for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_routing_profile({
    #     routing_profile_id: "RoutingProfileId", # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserRoutingProfile AWS API Documentation
    #
    # @overload update_user_routing_profile(params = {})
    # @param [Hash] params ({})
    def update_user_routing_profile(params = {}, options = {})
      req = build_request(:update_user_routing_profile, params)
      req.send_request(options)
    end

    # Assigns the specified security profiles to the specified user.
    #
    # @option params [required, Array<String>] :security_profile_ids
    #   The identifiers of the security profiles for the user.
    #
    # @option params [required, String] :user_id
    #   The identifier of the user account.
    #
    # @option params [required, String] :instance_id
    #   The identifier of the Amazon Connect instance. You can [find the
    #   instance ID][1] in the Amazon Resource Name (ARN) of the instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_security_profiles({
    #     security_profile_ids: ["SecurityProfileId"], # required
    #     user_id: "UserId", # required
    #     instance_id: "InstanceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connect-2017-08-08/UpdateUserSecurityProfiles AWS API Documentation
    #
    # @overload update_user_security_profiles(params = {})
    # @param [Hash] params ({})
    def update_user_security_profiles(params = {}, options = {})
      req = build_request(:update_user_security_profiles, params)
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
      context[:gem_name] = 'aws-sdk-connect'
      context[:gem_version] = '1.120.0'
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
