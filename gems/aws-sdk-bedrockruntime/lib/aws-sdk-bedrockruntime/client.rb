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
require 'aws-sdk-core/plugins/invocation_id.rb'
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
require 'aws-sdk-core/plugins/event_stream_configuration.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:bedrockruntime)

module Aws::BedrockRuntime
  # An API client for BedrockRuntime.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::BedrockRuntime::Client.new(
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

    @identifier = :bedrockruntime

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
    add_plugin(Aws::Plugins::InvocationId)
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
    add_plugin(Aws::Plugins::EventStreamConfiguration)
    add_plugin(Aws::BedrockRuntime::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
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
    #   @option options [String, URI::HTTPS, URI::HTTP] :endpoint
    #     Normally you should not configure the `:endpoint` option
    #     directly. This is normally constructed from the `:region`
    #     option. Configuring `:endpoint` is normally reserved for
    #     connecting to test or custom endpoints. The endpoint should
    #     be a URI formatted like:
    #
    #         'http://example.com'
    #         'https://example.com'
    #         'http://example.com:123'
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
    #   @option options [Proc] :event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
    #
    #   @option options [Boolean] :ignore_configured_endpoint_urls
    #     Setting to true disables use of endpoint URLs provided via environment
    #     variables and the shared configuration file.
    #
    #   @option options [Proc] :input_event_stream_handler
    #     When an EventStream or Proc object is provided, it can be used for sending events for the event stream.
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
    #   @option options [Proc] :output_event_stream_handler
    #     When an EventStream or Proc object is provided, it will be used as callback for each chunk of event stream response received along the way.
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
    #   @option options [String] :sdk_ua_app_id
    #     A unique and opaque application ID that is appended to the
    #     User-Agent header as app/sdk_ua_app_id. It should have a
    #     maximum length of 50. This variable is sourced from environment
    #     variable AWS_SDK_UA_APP_ID or the shared config profile attribute sdk_ua_app_id.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Array] :sigv4a_signing_region_set
    #     A list of regions that should be signed with SigV4a signing. When
    #     not passed, a default `:sigv4a_signing_region_set` is searched for
    #     in the following locations:
    #
    #     * `Aws.config[:sigv4a_signing_region_set]`
    #     * `ENV['AWS_SIGV4A_SIGNING_REGION_SET']`
    #     * `~/.aws/config`
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
    #   @option options [Aws::BedrockRuntime::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::BedrockRuntime::EndpointParameters`
    #
    #   @option options [Float] :http_continue_timeout (1)
    #     The number of seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has "Expect"
    #     header set to "100-continue".  Defaults to `nil` which  disables this
    #     behaviour.  This value can safely be set per request on the session.
    #
    #   @option options [Float] :http_idle_timeout (5)
    #     The number of seconds a connection is allowed to sit idle before it
    #     is considered stale.  Stale connections are closed and removed from the
    #     pool before making a request.
    #
    #   @option options [Float] :http_open_timeout (15)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [URI::HTTP,String] :http_proxy
    #     A proxy to send requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_read_timeout (60)
    #     The default number of seconds to wait for response data.
    #     This value can safely be set per-request on the session.
    #
    #   @option options [Boolean] :http_wire_trace (false)
    #     When `true`,  HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Proc] :on_chunk_received
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the response body is received. It provides three arguments: the chunk,
    #     the number of bytes received, and the total number of
    #     bytes in the response (or nil if the server did not send a `content-length`).
    #
    #   @option options [Proc] :on_chunk_sent
    #     When a Proc object is provided, it will be used as callback when each chunk
    #     of the request body is sent. It provides three arguments: the chunk,
    #     the number of bytes read from the body, and the total number of
    #     bytes in the body.
    #
    #   @option options [Boolean] :raise_response_errors (true)
    #     When `true`, response errors are raised.
    #
    #   @option options [String] :ssl_ca_bundle
    #     Full path to the SSL certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass `:ssl_ca_bundle` or
    #     `:ssl_ca_directory` the the system default will be used if available.
    #
    #   @option options [String] :ssl_ca_directory
    #     Full path of the directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the system
    #     default will be used if available.
    #
    #   @option options [String] :ssl_ca_store
    #     Sets the X509::Store to verify peer certificate.
    #
    #   @option options [Float] :ssl_timeout
    #     Sets the SSL timeout in seconds
    #
    #   @option options [Boolean] :ssl_verify_peer (true)
    #     When `true`, SSL peer certificates are verified when establishing a connection.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # The action to apply a guardrail.
    #
    # @option params [required, String] :guardrail_identifier
    #   The guardrail identifier used in the request to apply the guardrail.
    #
    # @option params [required, String] :guardrail_version
    #   The guardrail version used in the request to apply the guardrail.
    #
    # @option params [required, String] :source
    #   The source of data used in the request to apply the guardrail.
    #
    # @option params [required, Array<Types::GuardrailContentBlock>] :content
    #   The content details used in the request to apply the guardrail.
    #
    # @return [Types::ApplyGuardrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ApplyGuardrailResponse#usage #usage} => Types::GuardrailUsage
    #   * {Types::ApplyGuardrailResponse#action #action} => String
    #   * {Types::ApplyGuardrailResponse#outputs #outputs} => Array&lt;Types::GuardrailOutputContent&gt;
    #   * {Types::ApplyGuardrailResponse#assessments #assessments} => Array&lt;Types::GuardrailAssessment&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_guardrail({
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     guardrail_version: "GuardrailVersion", # required
    #     source: "INPUT", # required, accepts INPUT, OUTPUT
    #     content: [ # required
    #       {
    #         text: {
    #           text: "String", # required
    #           qualifiers: ["grounding_source"], # accepts grounding_source, query, guard_content
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.usage.topic_policy_units #=> Integer
    #   resp.usage.content_policy_units #=> Integer
    #   resp.usage.word_policy_units #=> Integer
    #   resp.usage.sensitive_information_policy_units #=> Integer
    #   resp.usage.sensitive_information_policy_free_units #=> Integer
    #   resp.usage.contextual_grounding_policy_units #=> Integer
    #   resp.action #=> String, one of "NONE", "GUARDRAIL_INTERVENED"
    #   resp.outputs #=> Array
    #   resp.outputs[0].text #=> String
    #   resp.assessments #=> Array
    #   resp.assessments[0].topic_policy.topics #=> Array
    #   resp.assessments[0].topic_policy.topics[0].name #=> String
    #   resp.assessments[0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   resp.assessments[0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   resp.assessments[0].content_policy.filters #=> Array
    #   resp.assessments[0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.assessments[0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.assessments[0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   resp.assessments[0].word_policy.custom_words #=> Array
    #   resp.assessments[0].word_policy.custom_words[0].match #=> String
    #   resp.assessments[0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   resp.assessments[0].word_policy.managed_word_lists #=> Array
    #   resp.assessments[0].word_policy.managed_word_lists[0].match #=> String
    #   resp.assessments[0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   resp.assessments[0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   resp.assessments[0].sensitive_information_policy.pii_entities #=> Array
    #   resp.assessments[0].sensitive_information_policy.pii_entities[0].match #=> String
    #   resp.assessments[0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.assessments[0].sensitive_information_policy.pii_entities[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   resp.assessments[0].sensitive_information_policy.regexes #=> Array
    #   resp.assessments[0].sensitive_information_policy.regexes[0].name #=> String
    #   resp.assessments[0].sensitive_information_policy.regexes[0].match #=> String
    #   resp.assessments[0].sensitive_information_policy.regexes[0].regex #=> String
    #   resp.assessments[0].sensitive_information_policy.regexes[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   resp.assessments[0].contextual_grounding_policy.filters #=> Array
    #   resp.assessments[0].contextual_grounding_policy.filters[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   resp.assessments[0].contextual_grounding_policy.filters[0].threshold #=> Float
    #   resp.assessments[0].contextual_grounding_policy.filters[0].score #=> Float
    #   resp.assessments[0].contextual_grounding_policy.filters[0].action #=> String, one of "BLOCKED", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ApplyGuardrail AWS API Documentation
    #
    # @overload apply_guardrail(params = {})
    # @param [Hash] params ({})
    def apply_guardrail(params = {}, options = {})
      req = build_request(:apply_guardrail, params)
      req.send_request(options)
    end

    # Sends messages to the specified Amazon Bedrock model. `Converse`
    # provides a consistent interface that works with all models that
    # support messages. This allows you to write code once and use it with
    # different models. If a model has unique inference parameters, you can
    # also pass those unique parameters to the model.
    #
    # Amazon Bedrock doesn't store any text, images, or documents that you
    # provide as content. The data is only used to generate the response.
    #
    # For information about the Converse API, see *Use the Converse API* in
    # the *Amazon Bedrock User Guide*. To use a guardrail, see *Use a
    # guardrail with the Converse API* in the *Amazon Bedrock User Guide*.
    # To use a tool with a model, see *Tool use (Function calling)* in the
    # *Amazon Bedrock User Guide*
    #
    # For example code, see *Converse API examples* in the *Amazon Bedrock
    # User Guide*.
    #
    # This operation requires permission for the `bedrock:InvokeModel`
    # action.
    #
    # @option params [required, String] :model_id
    #   The identifier for the model that you want to call.
    #
    #   The `modelId` to provide depends on the type of model that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a list
    #     of model IDs for base models, see [Amazon Bedrock base model IDs
    #     (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][2] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput for
    #     it. Then specify the ARN of the resulting provisioned model. For
    #     more information, see [Use a custom model in Amazon Bedrock][3] in
    #     the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #
    # @option params [required, Array<Types::Message>] :messages
    #   The messages that you want to send to the model.
    #
    # @option params [Array<Types::SystemContentBlock>] :system
    #   A system prompt to pass to the model.
    #
    # @option params [Types::InferenceConfiguration] :inference_config
    #   Inference parameters to pass to the model. `Converse` supports a base
    #   set of inference parameters. If you need to pass additional parameters
    #   that the model supports, use the `additionalModelRequestFields`
    #   request field.
    #
    # @option params [Types::ToolConfiguration] :tool_config
    #   Configuration information for the tools that the model can use when
    #   generating a response.
    #
    #   <note markdown="1"> This field is only supported by Anthropic Claude 3, Cohere Command R,
    #   Cohere Command R+, and Mistral Large models.
    #
    #    </note>
    #
    # @option params [Types::GuardrailConfiguration] :guardrail_config
    #   Configuration information for a guardrail that you want to use in the
    #   request.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :additional_model_request_fields
    #   Additional inference parameters that the model supports, beyond the
    #   base set of inference parameters that `Converse` supports in the
    #   `inferenceConfig` field. For more information, see [Model
    #   parameters][1].
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #
    # @option params [Array<String>] :additional_model_response_field_paths
    #   Additional model parameters field paths to return in the response.
    #   `Converse` returns the requested fields as a JSON Pointer object in
    #   the `additionalModelResponseFields` field. The following is example
    #   JSON for `additionalModelResponseFieldPaths`.
    #
    #   `[ "/stop_sequence" ]`
    #
    #   For information about the JSON Pointer syntax, see the [Internet
    #   Engineering Task Force (IETF)][1] documentation.
    #
    #   `Converse` rejects an empty JSON Pointer or incorrectly structured
    #   JSON Pointer with a `400` error code. if the JSON Pointer is valid,
    #   but the requested field is not in the model response, it is ignored by
    #   `Converse`.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc6901
    #
    # @return [Types::ConverseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConverseResponse#output #output} => Types::ConverseOutput
    #   * {Types::ConverseResponse#stop_reason #stop_reason} => String
    #   * {Types::ConverseResponse#usage #usage} => Types::TokenUsage
    #   * {Types::ConverseResponse#metrics #metrics} => Types::ConverseMetrics
    #   * {Types::ConverseResponse#additional_model_response_fields #additional_model_response_fields} => Hash,Array,String,Numeric,Boolean
    #   * {Types::ConverseResponse#trace #trace} => Types::ConverseTrace
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.converse({
    #     model_id: "ConversationalModelId", # required
    #     messages: [ # required
    #       {
    #         role: "user", # required, accepts user, assistant
    #         content: [ # required
    #           {
    #             text: "String",
    #             image: {
    #               format: "png", # required, accepts png, jpeg, gif, webp
    #               source: { # required
    #                 bytes: "data",
    #               },
    #             },
    #             document: {
    #               format: "pdf", # required, accepts pdf, csv, doc, docx, xls, xlsx, html, txt, md
    #               name: "DocumentBlockNameString", # required
    #               source: { # required
    #                 bytes: "data",
    #               },
    #             },
    #             tool_use: {
    #               tool_use_id: "ToolUseId", # required
    #               name: "ToolName", # required
    #               input: { # required
    #               },
    #             },
    #             tool_result: {
    #               tool_use_id: "ToolUseId", # required
    #               content: [ # required
    #                 {
    #                   json: {
    #                   },
    #                   text: "String",
    #                   image: {
    #                     format: "png", # required, accepts png, jpeg, gif, webp
    #                     source: { # required
    #                       bytes: "data",
    #                     },
    #                   },
    #                   document: {
    #                     format: "pdf", # required, accepts pdf, csv, doc, docx, xls, xlsx, html, txt, md
    #                     name: "DocumentBlockNameString", # required
    #                     source: { # required
    #                       bytes: "data",
    #                     },
    #                   },
    #                 },
    #               ],
    #               status: "success", # accepts success, error
    #             },
    #             guard_content: {
    #               text: {
    #                 text: "String", # required
    #                 qualifiers: ["grounding_source"], # accepts grounding_source, query, guard_content
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #     system: [
    #       {
    #         text: "NonEmptyString",
    #         guard_content: {
    #           text: {
    #             text: "String", # required
    #             qualifiers: ["grounding_source"], # accepts grounding_source, query, guard_content
    #           },
    #         },
    #       },
    #     ],
    #     inference_config: {
    #       max_tokens: 1,
    #       temperature: 1.0,
    #       top_p: 1.0,
    #       stop_sequences: ["NonEmptyString"],
    #     },
    #     tool_config: {
    #       tools: [ # required
    #         {
    #           tool_spec: {
    #             name: "ToolName", # required
    #             description: "NonEmptyString",
    #             input_schema: { # required
    #               json: {
    #               },
    #             },
    #           },
    #         },
    #       ],
    #       tool_choice: {
    #         auto: {
    #         },
    #         any: {
    #         },
    #         tool: {
    #           name: "ToolName", # required
    #         },
    #       },
    #     },
    #     guardrail_config: {
    #       guardrail_identifier: "GuardrailIdentifier", # required
    #       guardrail_version: "GuardrailVersion", # required
    #       trace: "enabled", # accepts enabled, disabled
    #     },
    #     additional_model_request_fields: {
    #     },
    #     additional_model_response_field_paths: ["ConverseRequestAdditionalModelResponseFieldPathsListMemberString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.output.message.role #=> String, one of "user", "assistant"
    #   resp.output.message.content #=> Array
    #   resp.output.message.content[0].text #=> String
    #   resp.output.message.content[0].image.format #=> String, one of "png", "jpeg", "gif", "webp"
    #   resp.output.message.content[0].image.source.bytes #=> String
    #   resp.output.message.content[0].document.format #=> String, one of "pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"
    #   resp.output.message.content[0].document.name #=> String
    #   resp.output.message.content[0].document.source.bytes #=> String
    #   resp.output.message.content[0].tool_use.tool_use_id #=> String
    #   resp.output.message.content[0].tool_use.name #=> String
    #   resp.output.message.content[0].tool_result.tool_use_id #=> String
    #   resp.output.message.content[0].tool_result.content #=> Array
    #   resp.output.message.content[0].tool_result.content[0].text #=> String
    #   resp.output.message.content[0].tool_result.content[0].image.format #=> String, one of "png", "jpeg", "gif", "webp"
    #   resp.output.message.content[0].tool_result.content[0].image.source.bytes #=> String
    #   resp.output.message.content[0].tool_result.content[0].document.format #=> String, one of "pdf", "csv", "doc", "docx", "xls", "xlsx", "html", "txt", "md"
    #   resp.output.message.content[0].tool_result.content[0].document.name #=> String
    #   resp.output.message.content[0].tool_result.content[0].document.source.bytes #=> String
    #   resp.output.message.content[0].tool_result.status #=> String, one of "success", "error"
    #   resp.output.message.content[0].guard_content.text.text #=> String
    #   resp.output.message.content[0].guard_content.text.qualifiers #=> Array
    #   resp.output.message.content[0].guard_content.text.qualifiers[0] #=> String, one of "grounding_source", "query", "guard_content"
    #   resp.stop_reason #=> String, one of "end_turn", "tool_use", "max_tokens", "stop_sequence", "guardrail_intervened", "content_filtered"
    #   resp.usage.input_tokens #=> Integer
    #   resp.usage.output_tokens #=> Integer
    #   resp.usage.total_tokens #=> Integer
    #   resp.metrics.latency_ms #=> Integer
    #   resp.trace.guardrail.model_output #=> Array
    #   resp.trace.guardrail.model_output[0] #=> String
    #   resp.trace.guardrail.input_assessment #=> Hash
    #   resp.trace.guardrail.input_assessment["String"].topic_policy.topics #=> Array
    #   resp.trace.guardrail.input_assessment["String"].topic_policy.topics[0].name #=> String
    #   resp.trace.guardrail.input_assessment["String"].topic_policy.topics[0].type #=> String, one of "DENY"
    #   resp.trace.guardrail.input_assessment["String"].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   resp.trace.guardrail.input_assessment["String"].content_policy.filters #=> Array
    #   resp.trace.guardrail.input_assessment["String"].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.trace.guardrail.input_assessment["String"].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.trace.guardrail.input_assessment["String"].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   resp.trace.guardrail.input_assessment["String"].word_policy.custom_words #=> Array
    #   resp.trace.guardrail.input_assessment["String"].word_policy.custom_words[0].match #=> String
    #   resp.trace.guardrail.input_assessment["String"].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   resp.trace.guardrail.input_assessment["String"].word_policy.managed_word_lists #=> Array
    #   resp.trace.guardrail.input_assessment["String"].word_policy.managed_word_lists[0].match #=> String
    #   resp.trace.guardrail.input_assessment["String"].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   resp.trace.guardrail.input_assessment["String"].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.pii_entities #=> Array
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.pii_entities[0].match #=> String
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.pii_entities[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes #=> Array
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes[0].name #=> String
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes[0].match #=> String
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes[0].regex #=> String
    #   resp.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   resp.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters #=> Array
    #   resp.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   resp.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters[0].threshold #=> Float
    #   resp.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters[0].score #=> Float
    #   resp.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters[0].action #=> String, one of "BLOCKED", "NONE"
    #   resp.trace.guardrail.output_assessments #=> Hash
    #   resp.trace.guardrail.output_assessments["String"] #=> Array
    #   resp.trace.guardrail.output_assessments["String"][0].topic_policy.topics #=> Array
    #   resp.trace.guardrail.output_assessments["String"][0].topic_policy.topics[0].name #=> String
    #   resp.trace.guardrail.output_assessments["String"][0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   resp.trace.guardrail.output_assessments["String"][0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   resp.trace.guardrail.output_assessments["String"][0].content_policy.filters #=> Array
    #   resp.trace.guardrail.output_assessments["String"][0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.trace.guardrail.output_assessments["String"][0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.trace.guardrail.output_assessments["String"][0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   resp.trace.guardrail.output_assessments["String"][0].word_policy.custom_words #=> Array
    #   resp.trace.guardrail.output_assessments["String"][0].word_policy.custom_words[0].match #=> String
    #   resp.trace.guardrail.output_assessments["String"][0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   resp.trace.guardrail.output_assessments["String"][0].word_policy.managed_word_lists #=> Array
    #   resp.trace.guardrail.output_assessments["String"][0].word_policy.managed_word_lists[0].match #=> String
    #   resp.trace.guardrail.output_assessments["String"][0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   resp.trace.guardrail.output_assessments["String"][0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.pii_entities #=> Array
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.pii_entities[0].match #=> String
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.pii_entities[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes #=> Array
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes[0].name #=> String
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes[0].match #=> String
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes[0].regex #=> String
    #   resp.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   resp.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters #=> Array
    #   resp.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   resp.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters[0].threshold #=> Float
    #   resp.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters[0].score #=> Float
    #   resp.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters[0].action #=> String, one of "BLOCKED", "NONE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/Converse AWS API Documentation
    #
    # @overload converse(params = {})
    # @param [Hash] params ({})
    def converse(params = {}, options = {})
      req = build_request(:converse, params)
      req.send_request(options)
    end

    # Sends messages to the specified Amazon Bedrock model and returns the
    # response in a stream. `ConverseStream` provides a consistent API that
    # works with all Amazon Bedrock models that support messages. This
    # allows you to write code once and use it with different models. Should
    # a model have unique inference parameters, you can also pass those
    # unique parameters to the model.
    #
    # To find out if a model supports streaming, call
    # [GetFoundationModel][1] and check the `responseStreamingSupported`
    # field in the response.
    #
    # <note markdown="1"> The CLI doesn't support streaming operations in Amazon Bedrock,
    # including `ConverseStream`.
    #
    #  </note>
    #
    # Amazon Bedrock doesn't store any text, images, or documents that you
    # provide as content. The data is only used to generate the response.
    #
    # For information about the Converse API, see *Use the Converse API* in
    # the *Amazon Bedrock User Guide*. To use a guardrail, see *Use a
    # guardrail with the Converse API* in the *Amazon Bedrock User Guide*.
    # To use a tool with a model, see *Tool use (Function calling)* in the
    # *Amazon Bedrock User Guide*
    #
    # For example code, see *Conversation streaming example* in the *Amazon
    # Bedrock User Guide*.
    #
    # This operation requires permission for the
    # `bedrock:InvokeModelWithResponseStream` action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html
    #
    # @option params [required, String] :model_id
    #   The ID for the model.
    #
    #   The `modelId` to provide depends on the type of model that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a list
    #     of model IDs for base models, see [Amazon Bedrock base model IDs
    #     (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][2] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput for
    #     it. Then specify the ARN of the resulting provisioned model. For
    #     more information, see [Use a custom model in Amazon Bedrock][3] in
    #     the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #
    # @option params [required, Array<Types::Message>] :messages
    #   The messages that you want to send to the model.
    #
    # @option params [Array<Types::SystemContentBlock>] :system
    #   A system prompt to send to the model.
    #
    # @option params [Types::InferenceConfiguration] :inference_config
    #   Inference parameters to pass to the model. `ConverseStream` supports a
    #   base set of inference parameters. If you need to pass additional
    #   parameters that the model supports, use the
    #   `additionalModelRequestFields` request field.
    #
    # @option params [Types::ToolConfiguration] :tool_config
    #   Configuration information for the tools that the model can use when
    #   generating a response.
    #
    #   <note markdown="1"> This field is only supported by Anthropic Claude 3 models.
    #
    #    </note>
    #
    # @option params [Types::GuardrailStreamConfiguration] :guardrail_config
    #   Configuration information for a guardrail that you want to use in the
    #   request.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :additional_model_request_fields
    #   Additional inference parameters that the model supports, beyond the
    #   base set of inference parameters that `ConverseStream` supports in the
    #   `inferenceConfig` field.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Array<String>] :additional_model_response_field_paths
    #   Additional model parameters field paths to return in the response.
    #   `ConverseStream` returns the requested fields as a JSON Pointer object
    #   in the `additionalModelResponseFields` field. The following is example
    #   JSON for `additionalModelResponseFieldPaths`.
    #
    #   `[ "/stop_sequence" ]`
    #
    #   For information about the JSON Pointer syntax, see the [Internet
    #   Engineering Task Force (IETF)][1] documentation.
    #
    #   `ConverseStream` rejects an empty JSON Pointer or incorrectly
    #   structured JSON Pointer with a `400` error code. if the JSON Pointer
    #   is valid, but the requested field is not in the model response, it is
    #   ignored by `ConverseStream`.
    #
    #
    #
    #   [1]: https://datatracker.ietf.org/doc/html/rfc6901
    #
    # @return [Types::ConverseStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ConverseStreamResponse#stream #stream} => Types::ConverseStreamOutput
    #
    # @example EventStream Operation Example
    #
    #   You can process the event once it arrives immediately, or wait until the
    #   full response is complete and iterate through the eventstream enumerator.
    #
    #   To interact with event immediately, you need to register #converse_stream
    #   with callbacks. Callbacks can be registered for specific events or for all
    #   events, including error events.
    #
    #   Callbacks can be passed into the `:event_stream_handler` option or within a
    #   block statement attached to the #converse_stream call directly. Hybrid
    #   pattern of both is also supported.
    #
    #   `:event_stream_handler` option takes in either a Proc object or
    #   Aws::BedrockRuntime::EventStreams::ConverseStreamOutput object.
    #
    #   Usage pattern a): Callbacks with a block attached to #converse_stream
    #     Example for registering callbacks for all event types and an error event
    #
    #     client.converse_stream( # params input# ) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #
    #       stream.on_event do |event|
    #         # process all events arrive
    #         puts event.event_type
    #         ...
    #       end
    #
    #     end
    #
    #   Usage pattern b): Pass in `:event_stream_handler` for #converse_stream
    #
    #     1) Create a Aws::BedrockRuntime::EventStreams::ConverseStreamOutput object
    #     Example for registering callbacks with specific events
    #
    #       handler = Aws::BedrockRuntime::EventStreams::ConverseStreamOutput.new
    #       handler.on_message_start_event do |event|
    #         event # => Aws::BedrockRuntime::Types::messageStart
    #       end
    #       handler.on_content_block_start_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockStart
    #       end
    #       handler.on_content_block_delta_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockDelta
    #       end
    #       handler.on_content_block_stop_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockStop
    #       end
    #       handler.on_message_stop_event do |event|
    #         event # => Aws::BedrockRuntime::Types::messageStop
    #       end
    #       handler.on_metadata_event do |event|
    #         event # => Aws::BedrockRuntime::Types::metadata
    #       end
    #       handler.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::internalServerException
    #       end
    #       handler.on_model_stream_error_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelStreamErrorException
    #       end
    #       handler.on_validation_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::validationException
    #       end
    #       handler.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::throttlingException
    #       end
    #       handler.on_service_unavailable_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::serviceUnavailableException
    #       end
    #
    #     client.converse_stream( # params input #, event_stream_handler: handler)
    #
    #     2) Use a Ruby Proc object
    #     Example for registering callbacks with specific events
    #
    #     handler = Proc.new do |stream|
    #       stream.on_message_start_event do |event|
    #         event # => Aws::BedrockRuntime::Types::messageStart
    #       end
    #       stream.on_content_block_start_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockStart
    #       end
    #       stream.on_content_block_delta_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockDelta
    #       end
    #       stream.on_content_block_stop_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockStop
    #       end
    #       stream.on_message_stop_event do |event|
    #         event # => Aws::BedrockRuntime::Types::messageStop
    #       end
    #       stream.on_metadata_event do |event|
    #         event # => Aws::BedrockRuntime::Types::metadata
    #       end
    #       stream.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::internalServerException
    #       end
    #       stream.on_model_stream_error_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelStreamErrorException
    #       end
    #       stream.on_validation_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::validationException
    #       end
    #       stream.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::throttlingException
    #       end
    #       stream.on_service_unavailable_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::serviceUnavailableException
    #       end
    #     end
    #
    #     client.converse_stream( # params input #, event_stream_handler: handler)
    #
    #   Usage pattern c): Hybrid pattern of a) and b)
    #
    #       handler = Aws::BedrockRuntime::EventStreams::ConverseStreamOutput.new
    #       handler.on_message_start_event do |event|
    #         event # => Aws::BedrockRuntime::Types::messageStart
    #       end
    #       handler.on_content_block_start_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockStart
    #       end
    #       handler.on_content_block_delta_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockDelta
    #       end
    #       handler.on_content_block_stop_event do |event|
    #         event # => Aws::BedrockRuntime::Types::contentBlockStop
    #       end
    #       handler.on_message_stop_event do |event|
    #         event # => Aws::BedrockRuntime::Types::messageStop
    #       end
    #       handler.on_metadata_event do |event|
    #         event # => Aws::BedrockRuntime::Types::metadata
    #       end
    #       handler.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::internalServerException
    #       end
    #       handler.on_model_stream_error_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelStreamErrorException
    #       end
    #       handler.on_validation_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::validationException
    #       end
    #       handler.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::throttlingException
    #       end
    #       handler.on_service_unavailable_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::serviceUnavailableException
    #       end
    #
    #     client.converse_stream( # params input #, event_stream_handler: handler) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #     end
    #
    #   You can also iterate through events after the response complete.
    #
    #   Events are available at resp.stream # => Enumerator
    #   For parameter input example, please refer to following request syntax
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.converse_stream({
    #     model_id: "ConversationalModelId", # required
    #     messages: [ # required
    #       {
    #         role: "user", # required, accepts user, assistant
    #         content: [ # required
    #           {
    #             text: "String",
    #             image: {
    #               format: "png", # required, accepts png, jpeg, gif, webp
    #               source: { # required
    #                 bytes: "data",
    #               },
    #             },
    #             document: {
    #               format: "pdf", # required, accepts pdf, csv, doc, docx, xls, xlsx, html, txt, md
    #               name: "DocumentBlockNameString", # required
    #               source: { # required
    #                 bytes: "data",
    #               },
    #             },
    #             tool_use: {
    #               tool_use_id: "ToolUseId", # required
    #               name: "ToolName", # required
    #               input: { # required
    #               },
    #             },
    #             tool_result: {
    #               tool_use_id: "ToolUseId", # required
    #               content: [ # required
    #                 {
    #                   json: {
    #                   },
    #                   text: "String",
    #                   image: {
    #                     format: "png", # required, accepts png, jpeg, gif, webp
    #                     source: { # required
    #                       bytes: "data",
    #                     },
    #                   },
    #                   document: {
    #                     format: "pdf", # required, accepts pdf, csv, doc, docx, xls, xlsx, html, txt, md
    #                     name: "DocumentBlockNameString", # required
    #                     source: { # required
    #                       bytes: "data",
    #                     },
    #                   },
    #                 },
    #               ],
    #               status: "success", # accepts success, error
    #             },
    #             guard_content: {
    #               text: {
    #                 text: "String", # required
    #                 qualifiers: ["grounding_source"], # accepts grounding_source, query, guard_content
    #               },
    #             },
    #           },
    #         ],
    #       },
    #     ],
    #     system: [
    #       {
    #         text: "NonEmptyString",
    #         guard_content: {
    #           text: {
    #             text: "String", # required
    #             qualifiers: ["grounding_source"], # accepts grounding_source, query, guard_content
    #           },
    #         },
    #       },
    #     ],
    #     inference_config: {
    #       max_tokens: 1,
    #       temperature: 1.0,
    #       top_p: 1.0,
    #       stop_sequences: ["NonEmptyString"],
    #     },
    #     tool_config: {
    #       tools: [ # required
    #         {
    #           tool_spec: {
    #             name: "ToolName", # required
    #             description: "NonEmptyString",
    #             input_schema: { # required
    #               json: {
    #               },
    #             },
    #           },
    #         },
    #       ],
    #       tool_choice: {
    #         auto: {
    #         },
    #         any: {
    #         },
    #         tool: {
    #           name: "ToolName", # required
    #         },
    #       },
    #     },
    #     guardrail_config: {
    #       guardrail_identifier: "GuardrailIdentifier", # required
    #       guardrail_version: "GuardrailVersion", # required
    #       trace: "enabled", # accepts enabled, disabled
    #       stream_processing_mode: "sync", # accepts sync, async
    #     },
    #     additional_model_request_fields: {
    #     },
    #     additional_model_response_field_paths: ["ConverseStreamRequestAdditionalModelResponseFieldPathsListMemberString"],
    #   })
    #
    # @example Response structure
    #
    #   All events are available at resp.stream:
    #   resp.stream #=> Enumerator
    #   resp.stream.event_types #=> [:message_start, :content_block_start, :content_block_delta, :content_block_stop, :message_stop, :metadata, :internal_server_exception, :model_stream_error_exception, :validation_exception, :throttling_exception, :service_unavailable_exception]
    #
    #   For :message_start event available at #on_message_start_event callback and response eventstream enumerator:
    #   event.role #=> String, one of "user", "assistant"
    #
    #   For :content_block_start event available at #on_content_block_start_event callback and response eventstream enumerator:
    #   event.start.tool_use.tool_use_id #=> String
    #   event.start.tool_use.name #=> String
    #   event.content_block_index #=> Integer
    #
    #   For :content_block_delta event available at #on_content_block_delta_event callback and response eventstream enumerator:
    #   event.delta.text #=> String
    #   event.delta.tool_use.input #=> String
    #   event.content_block_index #=> Integer
    #
    #   For :content_block_stop event available at #on_content_block_stop_event callback and response eventstream enumerator:
    #   event.content_block_index #=> Integer
    #
    #   For :message_stop event available at #on_message_stop_event callback and response eventstream enumerator:
    #   event.stop_reason #=> String, one of "end_turn", "tool_use", "max_tokens", "stop_sequence", "guardrail_intervened", "content_filtered"
    #
    #   For :metadata event available at #on_metadata_event callback and response eventstream enumerator:
    #   event.usage.input_tokens #=> Integer
    #   event.usage.output_tokens #=> Integer
    #   event.usage.total_tokens #=> Integer
    #   event.metrics.latency_ms #=> Integer
    #   event.trace.guardrail.model_output #=> Array
    #   event.trace.guardrail.model_output[0] #=> String
    #   event.trace.guardrail.input_assessment #=> Hash
    #   event.trace.guardrail.input_assessment["String"].topic_policy.topics #=> Array
    #   event.trace.guardrail.input_assessment["String"].topic_policy.topics[0].name #=> String
    #   event.trace.guardrail.input_assessment["String"].topic_policy.topics[0].type #=> String, one of "DENY"
    #   event.trace.guardrail.input_assessment["String"].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail.input_assessment["String"].content_policy.filters #=> Array
    #   event.trace.guardrail.input_assessment["String"].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   event.trace.guardrail.input_assessment["String"].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   event.trace.guardrail.input_assessment["String"].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail.input_assessment["String"].word_policy.custom_words #=> Array
    #   event.trace.guardrail.input_assessment["String"].word_policy.custom_words[0].match #=> String
    #   event.trace.guardrail.input_assessment["String"].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail.input_assessment["String"].word_policy.managed_word_lists #=> Array
    #   event.trace.guardrail.input_assessment["String"].word_policy.managed_word_lists[0].match #=> String
    #   event.trace.guardrail.input_assessment["String"].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   event.trace.guardrail.input_assessment["String"].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.pii_entities #=> Array
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.pii_entities[0].match #=> String
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.pii_entities[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes #=> Array
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes[0].name #=> String
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes[0].match #=> String
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes[0].regex #=> String
    #   event.trace.guardrail.input_assessment["String"].sensitive_information_policy.regexes[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   event.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters #=> Array
    #   event.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   event.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters[0].threshold #=> Float
    #   event.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters[0].score #=> Float
    #   event.trace.guardrail.input_assessment["String"].contextual_grounding_policy.filters[0].action #=> String, one of "BLOCKED", "NONE"
    #   event.trace.guardrail.output_assessments #=> Hash
    #   event.trace.guardrail.output_assessments["String"] #=> Array
    #   event.trace.guardrail.output_assessments["String"][0].topic_policy.topics #=> Array
    #   event.trace.guardrail.output_assessments["String"][0].topic_policy.topics[0].name #=> String
    #   event.trace.guardrail.output_assessments["String"][0].topic_policy.topics[0].type #=> String, one of "DENY"
    #   event.trace.guardrail.output_assessments["String"][0].topic_policy.topics[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail.output_assessments["String"][0].content_policy.filters #=> Array
    #   event.trace.guardrail.output_assessments["String"][0].content_policy.filters[0].type #=> String, one of "INSULTS", "HATE", "SEXUAL", "VIOLENCE", "MISCONDUCT", "PROMPT_ATTACK"
    #   event.trace.guardrail.output_assessments["String"][0].content_policy.filters[0].confidence #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   event.trace.guardrail.output_assessments["String"][0].content_policy.filters[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail.output_assessments["String"][0].word_policy.custom_words #=> Array
    #   event.trace.guardrail.output_assessments["String"][0].word_policy.custom_words[0].match #=> String
    #   event.trace.guardrail.output_assessments["String"][0].word_policy.custom_words[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail.output_assessments["String"][0].word_policy.managed_word_lists #=> Array
    #   event.trace.guardrail.output_assessments["String"][0].word_policy.managed_word_lists[0].match #=> String
    #   event.trace.guardrail.output_assessments["String"][0].word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   event.trace.guardrail.output_assessments["String"][0].word_policy.managed_word_lists[0].action #=> String, one of "BLOCKED"
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.pii_entities #=> Array
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.pii_entities[0].match #=> String
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.pii_entities[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes #=> Array
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes[0].name #=> String
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes[0].match #=> String
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes[0].regex #=> String
    #   event.trace.guardrail.output_assessments["String"][0].sensitive_information_policy.regexes[0].action #=> String, one of "ANONYMIZED", "BLOCKED"
    #   event.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters #=> Array
    #   event.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   event.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters[0].threshold #=> Float
    #   event.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters[0].score #=> Float
    #   event.trace.guardrail.output_assessments["String"][0].contextual_grounding_policy.filters[0].action #=> String, one of "BLOCKED", "NONE"
    #
    #   For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :model_stream_error_exception event available at #on_model_stream_error_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.original_status_code #=> Integer
    #   event.original_message #=> String
    #
    #   For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :service_unavailable_exception event available at #on_service_unavailable_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/ConverseStream AWS API Documentation
    #
    # @overload converse_stream(params = {})
    # @param [Hash] params ({})
    def converse_stream(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::ConverseStreamOutput then handler
        when Proc then EventStreams::ConverseStreamOutput.new.tap(&handler)
        when nil then EventStreams::ConverseStreamOutput.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockRuntime::EventStreams::ConverseStreamOutput"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:converse_stream, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
    end

    # Invokes the specified Amazon Bedrock model to run inference using the
    # prompt and inference parameters provided in the request body. You use
    # model inference to generate text, images, and embeddings.
    #
    # For example code, see *Invoke model code examples* in the *Amazon
    # Bedrock User Guide*.
    #
    # This operation requires permission for the `bedrock:InvokeModel`
    # action.
    #
    # @option params [required, String, StringIO, File] :body
    #   The prompt and inference parameters in the format specified in the
    #   `contentType` in the header. You must provide the body in JSON format.
    #   To see the format and content of the request and response bodies for
    #   different models, refer to [Inference parameters][1]. For more
    #   information, see [Run inference][2] in the Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request. You must specify
    #   `application/json`.
    #
    # @option params [String] :accept
    #   The desired MIME type of the inference body in the response. The
    #   default value is `application/json`.
    #
    # @option params [required, String] :model_id
    #   The unique identifier of the model to invoke to run inference.
    #
    #   The `modelId` to provide depends on the type of model that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a list
    #     of model IDs for base models, see [Amazon Bedrock base model IDs
    #     (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][2] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput for
    #     it. Then specify the ARN of the resulting provisioned model. For
    #     more information, see [Use a custom model in Amazon Bedrock][3] in
    #     the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #
    # @option params [String] :trace
    #   Specifies whether to enable or disable the Bedrock trace. If enabled,
    #   you can see the full Bedrock trace.
    #
    # @option params [String] :guardrail_identifier
    #   The unique identifier of the guardrail that you want to use. If you
    #   don't provide a value, no guardrail is applied to the invocation.
    #
    #   An error will be thrown in the following situations.
    #
    #   * You don't provide a guardrail identifier but you specify the
    #     `amazon-bedrock-guardrailConfig` field in the request body.
    #
    #   * You enable the guardrail but the `contentType` isn't
    #     `application/json`.
    #
    #   * You provide a guardrail identifier, but `guardrailVersion` isn't
    #     specified.
    #
    # @option params [String] :guardrail_version
    #   The version number for the guardrail. The value can also be `DRAFT`.
    #
    # @return [Types::InvokeModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeModelResponse#body #body} => String
    #   * {Types::InvokeModelResponse#content_type #content_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_model({
    #     body: "data", # required
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     model_id: "InvokeModelIdentifier", # required
    #     trace: "ENABLED", # accepts ENABLED, DISABLED
    #     guardrail_identifier: "GuardrailIdentifier",
    #     guardrail_version: "GuardrailVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> String
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModel AWS API Documentation
    #
    # @overload invoke_model(params = {})
    # @param [Hash] params ({})
    def invoke_model(params = {}, options = {})
      req = build_request(:invoke_model, params)
      req.send_request(options)
    end

    # Invoke the specified Amazon Bedrock model to run inference using the
    # prompt and inference parameters provided in the request body. The
    # response is returned in a stream.
    #
    # To see if a model supports streaming, call [GetFoundationModel][1] and
    # check the `responseStreamingSupported` field in the response.
    #
    # <note markdown="1"> The CLI doesn't support streaming operations in Amazon Bedrock,
    # including `InvokeModelWithResponseStream`.
    #
    #  </note>
    #
    # For example code, see *Invoke model with streaming code example* in
    # the *Amazon Bedrock User Guide*.
    #
    # This operation requires permissions to perform the
    # `bedrock:InvokeModelWithResponseStream` action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GetFoundationModel.html
    #
    # @option params [required, String, StringIO, File] :body
    #   The prompt and inference parameters in the format specified in the
    #   `contentType` in the header. You must provide the body in JSON format.
    #   To see the format and content of the request and response bodies for
    #   different models, refer to [Inference parameters][1]. For more
    #   information, see [Run inference][2] in the Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/api-methods-run.html
    #
    # @option params [String] :content_type
    #   The MIME type of the input data in the request. You must specify
    #   `application/json`.
    #
    # @option params [String] :accept
    #   The desired MIME type of the inference body in the response. The
    #   default value is `application/json`.
    #
    # @option params [required, String] :model_id
    #   The unique identifier of the model to invoke to run inference.
    #
    #   The `modelId` to provide depends on the type of model that you use:
    #
    #   * If you use a base model, specify the model ID or its ARN. For a list
    #     of model IDs for base models, see [Amazon Bedrock base model IDs
    #     (on-demand throughput)][1] in the Amazon Bedrock User Guide.
    #
    #   * If you use a provisioned model, specify the ARN of the Provisioned
    #     Throughput. For more information, see [Run inference using a
    #     Provisioned Throughput][2] in the Amazon Bedrock User Guide.
    #
    #   * If you use a custom model, first purchase Provisioned Throughput for
    #     it. Then specify the ARN of the resulting provisioned model. For
    #     more information, see [Use a custom model in Amazon Bedrock][3] in
    #     the Amazon Bedrock User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#model-ids-arns
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-thru-use.html
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-use.html
    #
    # @option params [String] :trace
    #   Specifies whether to enable or disable the Bedrock trace. If enabled,
    #   you can see the full Bedrock trace.
    #
    # @option params [String] :guardrail_identifier
    #   The unique identifier of the guardrail that you want to use. If you
    #   don't provide a value, no guardrail is applied to the invocation.
    #
    #   An error is thrown in the following situations.
    #
    #   * You don't provide a guardrail identifier but you specify the
    #     `amazon-bedrock-guardrailConfig` field in the request body.
    #
    #   * You enable the guardrail but the `contentType` isn't
    #     `application/json`.
    #
    #   * You provide a guardrail identifier, but `guardrailVersion` isn't
    #     specified.
    #
    # @option params [String] :guardrail_version
    #   The version number for the guardrail. The value can also be `DRAFT`.
    #
    # @return [Types::InvokeModelWithResponseStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InvokeModelWithResponseStreamResponse#body #body} => Types::ResponseStream
    #   * {Types::InvokeModelWithResponseStreamResponse#content_type #content_type} => String
    #
    # @example EventStream Operation Example
    #
    #   You can process the event once it arrives immediately, or wait until the
    #   full response is complete and iterate through the eventstream enumerator.
    #
    #   To interact with event immediately, you need to register #invoke_model_with_response_stream
    #   with callbacks. Callbacks can be registered for specific events or for all
    #   events, including error events.
    #
    #   Callbacks can be passed into the `:event_stream_handler` option or within a
    #   block statement attached to the #invoke_model_with_response_stream call directly. Hybrid
    #   pattern of both is also supported.
    #
    #   `:event_stream_handler` option takes in either a Proc object or
    #   Aws::BedrockRuntime::EventStreams::ResponseStream object.
    #
    #   Usage pattern a): Callbacks with a block attached to #invoke_model_with_response_stream
    #     Example for registering callbacks for all event types and an error event
    #
    #     client.invoke_model_with_response_stream( # params input# ) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #
    #       stream.on_event do |event|
    #         # process all events arrive
    #         puts event.event_type
    #         ...
    #       end
    #
    #     end
    #
    #   Usage pattern b): Pass in `:event_stream_handler` for #invoke_model_with_response_stream
    #
    #     1) Create a Aws::BedrockRuntime::EventStreams::ResponseStream object
    #     Example for registering callbacks with specific events
    #
    #       handler = Aws::BedrockRuntime::EventStreams::ResponseStream.new
    #       handler.on_chunk_event do |event|
    #         event # => Aws::BedrockRuntime::Types::chunk
    #       end
    #       handler.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::internalServerException
    #       end
    #       handler.on_model_stream_error_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelStreamErrorException
    #       end
    #       handler.on_validation_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::validationException
    #       end
    #       handler.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::throttlingException
    #       end
    #       handler.on_model_timeout_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelTimeoutException
    #       end
    #       handler.on_service_unavailable_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::serviceUnavailableException
    #       end
    #
    #     client.invoke_model_with_response_stream( # params input #, event_stream_handler: handler)
    #
    #     2) Use a Ruby Proc object
    #     Example for registering callbacks with specific events
    #
    #     handler = Proc.new do |stream|
    #       stream.on_chunk_event do |event|
    #         event # => Aws::BedrockRuntime::Types::chunk
    #       end
    #       stream.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::internalServerException
    #       end
    #       stream.on_model_stream_error_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelStreamErrorException
    #       end
    #       stream.on_validation_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::validationException
    #       end
    #       stream.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::throttlingException
    #       end
    #       stream.on_model_timeout_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelTimeoutException
    #       end
    #       stream.on_service_unavailable_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::serviceUnavailableException
    #       end
    #     end
    #
    #     client.invoke_model_with_response_stream( # params input #, event_stream_handler: handler)
    #
    #   Usage pattern c): Hybrid pattern of a) and b)
    #
    #       handler = Aws::BedrockRuntime::EventStreams::ResponseStream.new
    #       handler.on_chunk_event do |event|
    #         event # => Aws::BedrockRuntime::Types::chunk
    #       end
    #       handler.on_internal_server_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::internalServerException
    #       end
    #       handler.on_model_stream_error_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelStreamErrorException
    #       end
    #       handler.on_validation_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::validationException
    #       end
    #       handler.on_throttling_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::throttlingException
    #       end
    #       handler.on_model_timeout_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::modelTimeoutException
    #       end
    #       handler.on_service_unavailable_exception_event do |event|
    #         event # => Aws::BedrockRuntime::Types::serviceUnavailableException
    #       end
    #
    #     client.invoke_model_with_response_stream( # params input #, event_stream_handler: handler) do |stream|
    #       stream.on_error_event do |event|
    #         # catch unmodeled error event in the stream
    #         raise event
    #         # => Aws::Errors::EventError
    #         # event.event_type => :error
    #         # event.error_code => String
    #         # event.error_message => String
    #       end
    #     end
    #
    #   You can also iterate through events after the response complete.
    #
    #   Events are available at resp.body # => Enumerator
    #   For parameter input example, please refer to following request syntax
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_model_with_response_stream({
    #     body: "data", # required
    #     content_type: "MimeType",
    #     accept: "MimeType",
    #     model_id: "InvokeModelIdentifier", # required
    #     trace: "ENABLED", # accepts ENABLED, DISABLED
    #     guardrail_identifier: "GuardrailIdentifier",
    #     guardrail_version: "GuardrailVersion",
    #   })
    #
    # @example Response structure
    #
    #   All events are available at resp.body:
    #   resp.body #=> Enumerator
    #   resp.body.event_types #=> [:chunk, :internal_server_exception, :model_stream_error_exception, :validation_exception, :throttling_exception, :model_timeout_exception, :service_unavailable_exception]
    #
    #   For :chunk event available at #on_chunk_event callback and response eventstream enumerator:
    #   event.bytes #=> String
    #
    #   For :internal_server_exception event available at #on_internal_server_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :model_stream_error_exception event available at #on_model_stream_error_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #   event.original_status_code #=> Integer
    #   event.original_message #=> String
    #
    #   For :validation_exception event available at #on_validation_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :throttling_exception event available at #on_throttling_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :model_timeout_exception event available at #on_model_timeout_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   For :service_unavailable_exception event available at #on_service_unavailable_exception_event callback and response eventstream enumerator:
    #   event.message #=> String
    #
    #   resp.content_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-runtime-2023-09-30/InvokeModelWithResponseStream AWS API Documentation
    #
    # @overload invoke_model_with_response_stream(params = {})
    # @param [Hash] params ({})
    def invoke_model_with_response_stream(params = {}, options = {}, &block)
      params = params.dup
      event_stream_handler = case handler = params.delete(:event_stream_handler)
        when EventStreams::ResponseStream then handler
        when Proc then EventStreams::ResponseStream.new.tap(&handler)
        when nil then EventStreams::ResponseStream.new
        else
          msg = "expected :event_stream_handler to be a block or "\
                "instance of Aws::BedrockRuntime::EventStreams::ResponseStream"\
                ", got `#{handler.inspect}` instead"
          raise ArgumentError, msg
        end

      yield(event_stream_handler) if block_given?

      req = build_request(:invoke_model_with_response_stream, params)

      req.context[:event_stream_handler] = event_stream_handler
      req.handlers.add(Aws::Binary::DecodeHandler, priority: 95)

      req.send_request(options, &block)
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
      context[:gem_name] = 'aws-sdk-bedrockruntime'
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
