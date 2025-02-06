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
require 'aws-sdk-core/plugins/telemetry.rb'
require 'aws-sdk-core/plugins/sign.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

module Aws::Chatbot
  # An API client for Chatbot.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Chatbot::Client.new(
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

    @identifier = :chatbot

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
    add_plugin(Aws::Plugins::Telemetry)
    add_plugin(Aws::Plugins::Sign)
    add_plugin(Aws::Plugins::Protocols::RestJson)
    add_plugin(Aws::Chatbot::Plugins::Endpoints)

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
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'],
    #       ENV['AWS_SESSION_TOKEN'], and ENV['AWS_ACCOUNT_ID']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
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
    #   @option options [String] :account_id
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
    #   @option options [String] :request_checksum_calculation ("when_supported")
    #     Determines when a checksum will be calculated for request payloads. Values are:
    #
    #     * `when_supported` - (default) When set, a checksum will be
    #       calculated for all request payloads of operations modeled with the
    #       `httpChecksum` trait where `requestChecksumRequired` is `true` and/or a
    #       `requestAlgorithmMember` is modeled.
    #     * `when_required` - When set, a checksum will only be calculated for
    #       request payloads of operations modeled with the  `httpChecksum` trait where
    #       `requestChecksumRequired` is `true` or where a `requestAlgorithmMember`
    #       is modeled and supplied.
    #
    #   @option options [Integer] :request_min_compression_size_bytes (10240)
    #     The minimum size in bytes that triggers compression for request
    #     bodies. The value must be non-negative integer value between 0
    #     and 10485780 bytes inclusive.
    #
    #   @option options [String] :response_checksum_validation ("when_supported")
    #     Determines when checksum validation will be performed on response payloads. Values are:
    #
    #     * `when_supported` - (default) When set, checksum validation is performed on all
    #       response payloads of operations modeled with the `httpChecksum` trait where
    #       `responseAlgorithms` is modeled, except when no modeled checksum algorithms
    #       are supported.
    #     * `when_required` - When set, checksum validation is not performed on
    #       response payloads of operations unless the checksum algorithm is supported and
    #       the `requestValidationModeMember` member is set to `ENABLED`.
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
    #   @option options [Aws::Telemetry::TelemetryProviderBase] :telemetry_provider (Aws::Telemetry::NoOpTelemetryProvider)
    #     Allows you to provide a telemetry provider, which is used to
    #     emit telemetry data. By default, uses `NoOpTelemetryProvider` which
    #     will not record or emit any telemetry data. The SDK supports the
    #     following telemetry providers:
    #
    #     * OpenTelemetry (OTel) - To use the OTel provider, install and require the
    #     `opentelemetry-sdk` gem and then, pass in an instance of a
    #     `Aws::Telemetry::OTelProvider` for telemetry provider.
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
    #   @option options [Aws::Chatbot::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Chatbot::EndpointParameters`.
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
    #   @option options [OpenSSL::X509::Certificate] :ssl_cert
    #     Sets a client certificate when creating http connections.
    #
    #   @option options [OpenSSL::PKey] :ssl_key
    #     Sets a client key when creating http connections.
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

    # Links a resource (for example, a custom action) to a channel
    # configuration.
    #
    # @option params [required, String] :resource
    #   The resource Amazon Resource Name (ARN) to link.
    #
    # @option params [required, String] :chat_configuration
    #   The channel configuration to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Associate a custom action to a configuration
    #
    #   # Associate a custom action to a channel configuration, allowing it to be used in that channel
    #
    #   resp = client.associate_to_configuration({
    #     chat_configuration: "arn:aws:chatbot::1234567890:chat-configuration/slack-channel/my-channel", 
    #     resource: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_to_configuration({
    #     resource: "ResourceIdentifier", # required
    #     chat_configuration: "ChatConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/AssociateToConfiguration AWS API Documentation
    #
    # @overload associate_to_configuration(params = {})
    # @param [Hash] params ({})
    def associate_to_configuration(params = {}, options = {})
      req = build_request(:associate_to_configuration, params)
      req.send_request(options)
    end

    # Creates an AWS Chatbot configuration for Amazon Chime.
    #
    # @option params [required, String] :webhook_description
    #   A description of the webhook. We recommend using the convention
    #   `RoomName/WebhookName`.
    #
    #   For more information, see [Tutorial: Get started with Amazon Chime][1]
    #   in the <i> AWS Chatbot Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html
    #
    # @option params [required, String] :webhook_url
    #   The URL for the Amazon Chime webhook.
    #
    # @option params [required, Array<String>] :sns_topic_arns
    #   The Amazon Resource Names (ARNs) of the SNS topics that deliver
    #   notifications to AWS Chatbot.
    #
    # @option params [required, String] :iam_role_arn
    #   A user-defined role that AWS Chatbot assumes. This is not the
    #   service-linked role.
    #
    #   For more information, see [IAM policies for AWS Chatbot][1] in the <i>
    #   AWS Chatbot Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html
    #
    # @option params [required, String] :configuration_name
    #   The name of the configuration.
    #
    # @option params [String] :logging_level
    #   Logging levels include `ERROR`, `INFO`, or `NONE`.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of tags assigned to a resource. A tag is a string-to-string map
    #   of key-value pairs.
    #
    # @return [Types::CreateChimeWebhookConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateChimeWebhookConfigurationResult#webhook_configuration #webhook_configuration} => Types::ChimeWebhookConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_chime_webhook_configuration({
    #     webhook_description: "ChimeWebhookDescription", # required
    #     webhook_url: "ChimeWebhookUrl", # required
    #     sns_topic_arns: ["Arn"], # required
    #     iam_role_arn: "Arn", # required
    #     configuration_name: "ConfigurationName", # required
    #     logging_level: "CustomerCwLogLevel",
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook_configuration.webhook_description #=> String
    #   resp.webhook_configuration.chat_configuration_arn #=> String
    #   resp.webhook_configuration.iam_role_arn #=> String
    #   resp.webhook_configuration.sns_topic_arns #=> Array
    #   resp.webhook_configuration.sns_topic_arns[0] #=> String
    #   resp.webhook_configuration.configuration_name #=> String
    #   resp.webhook_configuration.logging_level #=> String
    #   resp.webhook_configuration.tags #=> Array
    #   resp.webhook_configuration.tags[0].tag_key #=> String
    #   resp.webhook_configuration.tags[0].tag_value #=> String
    #   resp.webhook_configuration.state #=> String
    #   resp.webhook_configuration.state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateChimeWebhookConfiguration AWS API Documentation
    #
    # @overload create_chime_webhook_configuration(params = {})
    # @param [Hash] params ({})
    def create_chime_webhook_configuration(params = {}, options = {})
      req = build_request(:create_chime_webhook_configuration, params)
      req.send_request(options)
    end

    # Creates a custom action that can be invoked as an alias or as a button
    # on a notification.
    #
    # @option params [required, Types::CustomActionDefinition] :definition
    #   The definition of the command to run when invoked as an alias or as an
    #   action button.
    #
    # @option params [String] :alias_name
    #   The name used to invoke this action in a chat channel. For example,
    #   `@aws run my-alias`.
    #
    # @option params [Array<Types::CustomActionAttachment>] :attachments
    #   Defines when this custom action button should be attached to a
    #   notification.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of tags assigned to a resource. A tag is a string-to-string map
    #   of key-value pairs.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. Idempotency ensures that an API request
    #   completes only once. With an idempotent request, if the original
    #   request completes successfully, subsequent retries with the same
    #   client token returns the result from the original successful request.
    #
    #   If you do not specify a client token, one is automatically generated
    #   by the SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :action_name
    #   The name of the custom action. This name is included in the Amazon
    #   Resource Name (ARN).
    #
    # @return [Types::CreateCustomActionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCustomActionResult#custom_action_arn #custom_action_arn} => String
    #
    #
    # @example Example: Create an alias that invokes a Lambda function
    #
    #   # Creates an alias that invokes a Lambda function from chat channels. You can use this alias by entering 'run invoke',
    #   # after which you're prompted for the function name.
    #
    #   resp = client.create_custom_action({
    #     action_name: "my-custom-action", 
    #     alias_name: "invoke", 
    #     definition: {
    #       command_text: "lambda invoke $functionName", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #   }
    #
    # @example Example: Create a custom action to list alarms
    #
    #   # Creates a button on all Cloudwatch notifications that lists alarms in the ‘ALARM’ state.
    #
    #   resp = client.create_custom_action({
    #     action_name: "describe-alarms", 
    #     attachments: [
    #       {
    #         button_text: "List alarms", 
    #         notification_type: "CloudWatch", 
    #       }, 
    #     ], 
    #     definition: {
    #       command_text: "cloudwatch describe-alarms --state-value ALARM", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/describe-alarms", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_action({
    #     definition: { # required
    #       command_text: "CustomActionDefinitionCommandTextString", # required
    #     },
    #     alias_name: "CustomActionAliasName",
    #     attachments: [
    #       {
    #         notification_type: "CustomActionAttachmentNotificationType",
    #         button_text: "CustomActionButtonText",
    #         criteria: [
    #           {
    #             operator: "HAS_VALUE", # required, accepts HAS_VALUE, EQUALS
    #             variable_name: "CustomActionAttachmentCriteriaVariableNameString", # required
    #             value: "CustomActionAttachmentCriteriaValueString",
    #           },
    #         ],
    #         variables: {
    #           "CustomActionAttachmentVariablesKeyString" => "CustomActionAttachmentVariablesValueString",
    #         },
    #       },
    #     ],
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #     client_token: "ClientToken",
    #     action_name: "CustomActionName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_action_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateCustomAction AWS API Documentation
    #
    # @overload create_custom_action(params = {})
    # @param [Hash] params ({})
    def create_custom_action(params = {}, options = {})
      req = build_request(:create_custom_action, params)
      req.send_request(options)
    end

    # Creates an AWS Chatbot configuration for Microsoft Teams.
    #
    # @option params [required, String] :channel_id
    #   The ID of the Microsoft Teams channel.
    #
    # @option params [String] :channel_name
    #   The name of the Microsoft Teams channel.
    #
    # @option params [required, String] :team_id
    #   The ID of the Microsoft Teams authorized with AWS Chatbot.
    #
    #   To get the team ID, you must perform the initial authorization flow
    #   with Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more information, see [Step 1:
    #   Configure a Microsoft Teams client][1] in the <i> AWS Chatbot
    #   Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup
    #
    # @option params [String] :team_name
    #   The name of the Microsoft Teams Team.
    #
    # @option params [required, String] :tenant_id
    #   The ID of the Microsoft Teams tenant.
    #
    # @option params [Array<String>] :sns_topic_arns
    #   The Amazon Resource Names (ARNs) of the SNS topics that deliver
    #   notifications to AWS Chatbot.
    #
    # @option params [required, String] :iam_role_arn
    #   A user-defined role that AWS Chatbot assumes. This is not the
    #   service-linked role.
    #
    #   For more information, see [IAM policies for AWS Chatbot][1] in the <i>
    #   AWS Chatbot Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html
    #
    # @option params [required, String] :configuration_name
    #   The name of the configuration.
    #
    # @option params [String] :logging_level
    #   Logging levels include `ERROR`, `INFO`, or `NONE`.
    #
    # @option params [Array<String>] :guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed `AdministratorAccess` policy is applied by default if
    #   this is not set.
    #
    # @option params [Boolean] :user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of tags assigned to a resource. A tag is a string-to-string map
    #   of key-value pairs.
    #
    # @return [Types::CreateTeamsChannelConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTeamsChannelConfigurationResult#channel_configuration #channel_configuration} => Types::TeamsChannelConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_microsoft_teams_channel_configuration({
    #     channel_id: "TeamsChannelId", # required
    #     channel_name: "TeamsChannelName",
    #     team_id: "UUID", # required
    #     team_name: "TeamName",
    #     tenant_id: "UUID", # required
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn", # required
    #     configuration_name: "ConfigurationName", # required
    #     logging_level: "CustomerCwLogLevel",
    #     guardrail_policy_arns: ["GuardrailPolicyArn"],
    #     user_authorization_required: false,
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_configuration.channel_id #=> String
    #   resp.channel_configuration.channel_name #=> String
    #   resp.channel_configuration.team_id #=> String
    #   resp.channel_configuration.team_name #=> String
    #   resp.channel_configuration.tenant_id #=> String
    #   resp.channel_configuration.chat_configuration_arn #=> String
    #   resp.channel_configuration.iam_role_arn #=> String
    #   resp.channel_configuration.sns_topic_arns #=> Array
    #   resp.channel_configuration.sns_topic_arns[0] #=> String
    #   resp.channel_configuration.configuration_name #=> String
    #   resp.channel_configuration.logging_level #=> String
    #   resp.channel_configuration.guardrail_policy_arns #=> Array
    #   resp.channel_configuration.guardrail_policy_arns[0] #=> String
    #   resp.channel_configuration.user_authorization_required #=> Boolean
    #   resp.channel_configuration.tags #=> Array
    #   resp.channel_configuration.tags[0].tag_key #=> String
    #   resp.channel_configuration.tags[0].tag_value #=> String
    #   resp.channel_configuration.state #=> String
    #   resp.channel_configuration.state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateMicrosoftTeamsChannelConfiguration AWS API Documentation
    #
    # @overload create_microsoft_teams_channel_configuration(params = {})
    # @param [Hash] params ({})
    def create_microsoft_teams_channel_configuration(params = {}, options = {})
      req = build_request(:create_microsoft_teams_channel_configuration, params)
      req.send_request(options)
    end

    # Creates an AWS Chatbot confugration for Slack.
    #
    # @option params [required, String] :slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #
    # @option params [required, String] :slack_channel_id
    #   The ID of the Slack channel.
    #
    #   To get this ID, open Slack, right click on the channel name in the
    #   left pane, then choose Copy Link. The channel ID is the 9-character
    #   string at the end of the URL. For example, ABCBBLZZZ.
    #
    # @option params [String] :slack_channel_name
    #   The name of the Slack channel.
    #
    # @option params [Array<String>] :sns_topic_arns
    #   The Amazon Resource Names (ARNs) of the SNS topics that deliver
    #   notifications to AWS Chatbot.
    #
    # @option params [required, String] :iam_role_arn
    #   A user-defined role that AWS Chatbot assumes. This is not the
    #   service-linked role.
    #
    #   For more information, see [IAM policies for AWS Chatbot][1] in the <i>
    #   AWS Chatbot Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html
    #
    # @option params [required, String] :configuration_name
    #   The name of the configuration.
    #
    # @option params [String] :logging_level
    #   Logging levels include `ERROR`, `INFO`, or `NONE`.
    #
    # @option params [Array<String>] :guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed `AdministratorAccess` policy is applied by default if
    #   this is not set.
    #
    # @option params [Boolean] :user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A map of tags assigned to a resource. A tag is a string-to-string map
    #   of key-value pairs.
    #
    # @return [Types::CreateSlackChannelConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSlackChannelConfigurationResult#channel_configuration #channel_configuration} => Types::SlackChannelConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_slack_channel_configuration({
    #     slack_team_id: "SlackTeamId", # required
    #     slack_channel_id: "SlackChannelId", # required
    #     slack_channel_name: "SlackChannelDisplayName",
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn", # required
    #     configuration_name: "ConfigurationName", # required
    #     logging_level: "CustomerCwLogLevel",
    #     guardrail_policy_arns: ["GuardrailPolicyArn"],
    #     user_authorization_required: false,
    #     tags: [
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_configuration.slack_team_name #=> String
    #   resp.channel_configuration.slack_team_id #=> String
    #   resp.channel_configuration.slack_channel_id #=> String
    #   resp.channel_configuration.slack_channel_name #=> String
    #   resp.channel_configuration.chat_configuration_arn #=> String
    #   resp.channel_configuration.iam_role_arn #=> String
    #   resp.channel_configuration.sns_topic_arns #=> Array
    #   resp.channel_configuration.sns_topic_arns[0] #=> String
    #   resp.channel_configuration.configuration_name #=> String
    #   resp.channel_configuration.logging_level #=> String
    #   resp.channel_configuration.guardrail_policy_arns #=> Array
    #   resp.channel_configuration.guardrail_policy_arns[0] #=> String
    #   resp.channel_configuration.user_authorization_required #=> Boolean
    #   resp.channel_configuration.tags #=> Array
    #   resp.channel_configuration.tags[0].tag_key #=> String
    #   resp.channel_configuration.tags[0].tag_value #=> String
    #   resp.channel_configuration.state #=> String
    #   resp.channel_configuration.state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/CreateSlackChannelConfiguration AWS API Documentation
    #
    # @overload create_slack_channel_configuration(params = {})
    # @param [Hash] params ({})
    def create_slack_channel_configuration(params = {}, options = {})
      req = build_request(:create_slack_channel_configuration, params)
      req.send_request(options)
    end

    # Deletes a Amazon Chime webhook configuration for AWS Chatbot.
    #
    # @option params [required, String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_chime_webhook_configuration({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteChimeWebhookConfiguration AWS API Documentation
    #
    # @overload delete_chime_webhook_configuration(params = {})
    # @param [Hash] params ({})
    def delete_chime_webhook_configuration(params = {}, options = {})
      req = build_request(:delete_chime_webhook_configuration, params)
      req.send_request(options)
    end

    # Deletes a custom action.
    #
    # @option params [required, String] :custom_action_arn
    #   The fully defined ARN of the custom action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Delete a custom action
    #
    #   resp = client.delete_custom_action({
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_action({
    #     custom_action_arn: "CustomActionArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteCustomAction AWS API Documentation
    #
    # @overload delete_custom_action(params = {})
    # @param [Hash] params ({})
    def delete_custom_action(params = {}, options = {})
      req = build_request(:delete_custom_action, params)
      req.send_request(options)
    end

    # Deletes a Microsoft Teams channel configuration for AWS Chatbot
    #
    # @option params [required, String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the
    #   MicrosoftTeamsChannelConfiguration associated with the user identity
    #   to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_microsoft_teams_channel_configuration({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteMicrosoftTeamsChannelConfiguration AWS API Documentation
    #
    # @overload delete_microsoft_teams_channel_configuration(params = {})
    # @param [Hash] params ({})
    def delete_microsoft_teams_channel_configuration(params = {}, options = {})
      req = build_request(:delete_microsoft_teams_channel_configuration, params)
      req.send_request(options)
    end

    # Deletes the Microsoft Teams team authorization allowing for channels
    # to be configured in that Microsoft Teams team. Note that the Microsoft
    # Teams team must have no channels configured to remove it.
    #
    # @option params [required, String] :team_id
    #   The ID of the Microsoft Teams team authorized with AWS Chatbot.
    #
    #   To get the team ID, you must perform the initial authorization flow
    #   with Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more information, see [Step 1:
    #   Configure a Microsoft Teams client][1] in the <i> AWS Chatbot
    #   Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_microsoft_teams_configured_team({
    #     team_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteMicrosoftTeamsConfiguredTeam AWS API Documentation
    #
    # @overload delete_microsoft_teams_configured_team(params = {})
    # @param [Hash] params ({})
    def delete_microsoft_teams_configured_team(params = {}, options = {})
      req = build_request(:delete_microsoft_teams_configured_team, params)
      req.send_request(options)
    end

    # Identifes a user level permission for a channel configuration.
    #
    # @option params [required, String] :chat_configuration_arn
    #   The ARN of the MicrosoftTeamsChannelConfiguration associated with the
    #   user identity to delete.
    #
    # @option params [required, String] :user_id
    #   The Microsoft Teams user ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_microsoft_teams_user_identity({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     user_id: "UUID", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteMicrosoftTeamsUserIdentity AWS API Documentation
    #
    # @overload delete_microsoft_teams_user_identity(params = {})
    # @param [Hash] params ({})
    def delete_microsoft_teams_user_identity(params = {}, options = {})
      req = build_request(:delete_microsoft_teams_user_identity, params)
      req.send_request(options)
    end

    # Deletes a Slack channel configuration for AWS Chatbot
    #
    # @option params [required, String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the SlackChannelConfiguration to
    #   delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slack_channel_configuration({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackChannelConfiguration AWS API Documentation
    #
    # @overload delete_slack_channel_configuration(params = {})
    # @param [Hash] params ({})
    def delete_slack_channel_configuration(params = {}, options = {})
      req = build_request(:delete_slack_channel_configuration, params)
      req.send_request(options)
    end

    # Deletes a user level permission for a Slack channel configuration.
    #
    # @option params [required, String] :chat_configuration_arn
    #   The ARN of the SlackChannelConfiguration associated with the user
    #   identity to delete.
    #
    # @option params [required, String] :slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #
    # @option params [required, String] :slack_user_id
    #   The ID of the user in Slack
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slack_user_identity({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     slack_team_id: "SlackTeamId", # required
    #     slack_user_id: "SlackUserId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackUserIdentity AWS API Documentation
    #
    # @overload delete_slack_user_identity(params = {})
    # @param [Hash] params ({})
    def delete_slack_user_identity(params = {}, options = {})
      req = build_request(:delete_slack_user_identity, params)
      req.send_request(options)
    end

    # Deletes the Slack workspace authorization that allows channels to be
    # configured in that workspace. This requires all configured channels in
    # the workspace to be deleted.
    #
    # @option params [required, String] :slack_team_id
    #   The ID of the Slack workspace authorized with AWS Chatbot.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slack_workspace_authorization({
    #     slack_team_id: "SlackTeamId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DeleteSlackWorkspaceAuthorization AWS API Documentation
    #
    # @overload delete_slack_workspace_authorization(params = {})
    # @param [Hash] params ({})
    def delete_slack_workspace_authorization(params = {}, options = {})
      req = build_request(:delete_slack_workspace_authorization, params)
      req.send_request(options)
    end

    # Lists Amazon Chime webhook configurations optionally filtered by
    # ChatConfigurationArn
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [String] :chat_configuration_arn
    #   An optional Amazon Resource Name (ARN) of a ChimeWebhookConfiguration
    #   to describe.
    #
    # @return [Types::DescribeChimeWebhookConfigurationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeChimeWebhookConfigurationsResult#next_token #next_token} => String
    #   * {Types::DescribeChimeWebhookConfigurationsResult#webhook_configurations #webhook_configurations} => Array&lt;Types::ChimeWebhookConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_chime_webhook_configurations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     chat_configuration_arn: "ChatConfigurationArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.webhook_configurations #=> Array
    #   resp.webhook_configurations[0].webhook_description #=> String
    #   resp.webhook_configurations[0].chat_configuration_arn #=> String
    #   resp.webhook_configurations[0].iam_role_arn #=> String
    #   resp.webhook_configurations[0].sns_topic_arns #=> Array
    #   resp.webhook_configurations[0].sns_topic_arns[0] #=> String
    #   resp.webhook_configurations[0].configuration_name #=> String
    #   resp.webhook_configurations[0].logging_level #=> String
    #   resp.webhook_configurations[0].tags #=> Array
    #   resp.webhook_configurations[0].tags[0].tag_key #=> String
    #   resp.webhook_configurations[0].tags[0].tag_value #=> String
    #   resp.webhook_configurations[0].state #=> String
    #   resp.webhook_configurations[0].state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeChimeWebhookConfigurations AWS API Documentation
    #
    # @overload describe_chime_webhook_configurations(params = {})
    # @param [Hash] params ({})
    def describe_chime_webhook_configurations(params = {}, options = {})
      req = build_request(:describe_chime_webhook_configurations, params)
      req.send_request(options)
    end

    # Lists Slack channel configurations optionally filtered by
    # ChatConfigurationArn
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [String] :chat_configuration_arn
    #   An optional Amazon Resource Name (ARN) of a SlackChannelConfiguration
    #   to describe.
    #
    # @return [Types::DescribeSlackChannelConfigurationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSlackChannelConfigurationsResult#next_token #next_token} => String
    #   * {Types::DescribeSlackChannelConfigurationsResult#slack_channel_configurations #slack_channel_configurations} => Array&lt;Types::SlackChannelConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_slack_channel_configurations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     chat_configuration_arn: "ChatConfigurationArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.slack_channel_configurations #=> Array
    #   resp.slack_channel_configurations[0].slack_team_name #=> String
    #   resp.slack_channel_configurations[0].slack_team_id #=> String
    #   resp.slack_channel_configurations[0].slack_channel_id #=> String
    #   resp.slack_channel_configurations[0].slack_channel_name #=> String
    #   resp.slack_channel_configurations[0].chat_configuration_arn #=> String
    #   resp.slack_channel_configurations[0].iam_role_arn #=> String
    #   resp.slack_channel_configurations[0].sns_topic_arns #=> Array
    #   resp.slack_channel_configurations[0].sns_topic_arns[0] #=> String
    #   resp.slack_channel_configurations[0].configuration_name #=> String
    #   resp.slack_channel_configurations[0].logging_level #=> String
    #   resp.slack_channel_configurations[0].guardrail_policy_arns #=> Array
    #   resp.slack_channel_configurations[0].guardrail_policy_arns[0] #=> String
    #   resp.slack_channel_configurations[0].user_authorization_required #=> Boolean
    #   resp.slack_channel_configurations[0].tags #=> Array
    #   resp.slack_channel_configurations[0].tags[0].tag_key #=> String
    #   resp.slack_channel_configurations[0].tags[0].tag_value #=> String
    #   resp.slack_channel_configurations[0].state #=> String
    #   resp.slack_channel_configurations[0].state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackChannelConfigurations AWS API Documentation
    #
    # @overload describe_slack_channel_configurations(params = {})
    # @param [Hash] params ({})
    def describe_slack_channel_configurations(params = {}, options = {})
      req = build_request(:describe_slack_channel_configurations, params)
      req.send_request(options)
    end

    # Lists all Slack user identities with a mapped role.
    #
    # @option params [String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the SlackChannelConfiguration
    #   associated with the user identities to describe.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @return [Types::DescribeSlackUserIdentitiesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSlackUserIdentitiesResult#slack_user_identities #slack_user_identities} => Array&lt;Types::SlackUserIdentity&gt;
    #   * {Types::DescribeSlackUserIdentitiesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_slack_user_identities({
    #     chat_configuration_arn: "ChatConfigurationArn",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.slack_user_identities #=> Array
    #   resp.slack_user_identities[0].iam_role_arn #=> String
    #   resp.slack_user_identities[0].chat_configuration_arn #=> String
    #   resp.slack_user_identities[0].slack_team_id #=> String
    #   resp.slack_user_identities[0].slack_user_id #=> String
    #   resp.slack_user_identities[0].aws_user_identity #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackUserIdentities AWS API Documentation
    #
    # @overload describe_slack_user_identities(params = {})
    # @param [Hash] params ({})
    def describe_slack_user_identities(params = {}, options = {})
      req = build_request(:describe_slack_user_identities, params)
      req.send_request(options)
    end

    # List all authorized Slack workspaces connected to the AWS Account
    # onboarded with AWS Chatbot.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @return [Types::DescribeSlackWorkspacesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSlackWorkspacesResult#slack_workspaces #slack_workspaces} => Array&lt;Types::SlackWorkspace&gt;
    #   * {Types::DescribeSlackWorkspacesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_slack_workspaces({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.slack_workspaces #=> Array
    #   resp.slack_workspaces[0].slack_team_id #=> String
    #   resp.slack_workspaces[0].slack_team_name #=> String
    #   resp.slack_workspaces[0].state #=> String
    #   resp.slack_workspaces[0].state_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DescribeSlackWorkspaces AWS API Documentation
    #
    # @overload describe_slack_workspaces(params = {})
    # @param [Hash] params ({})
    def describe_slack_workspaces(params = {}, options = {})
      req = build_request(:describe_slack_workspaces, params)
      req.send_request(options)
    end

    # Unlink a resource, for example a custom action, from a channel
    # configuration.
    #
    # @option params [required, String] :resource
    #   The resource (for example, a custom action) Amazon Resource Name (ARN)
    #   to unlink.
    #
    # @option params [required, String] :chat_configuration
    #   The channel configuration the resource is being disassociated from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: Disassociate a custom action from a configuration
    #
    #   resp = client.disassociate_from_configuration({
    #     chat_configuration: "arn:aws:chatbot::1234567890:chat-configuration/slack-channel/my-channel", 
    #     resource: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_from_configuration({
    #     resource: "ResourceIdentifier", # required
    #     chat_configuration: "ChatConfigurationArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/DisassociateFromConfiguration AWS API Documentation
    #
    # @overload disassociate_from_configuration(params = {})
    # @param [Hash] params ({})
    def disassociate_from_configuration(params = {}, options = {})
      req = build_request(:disassociate_from_configuration, params)
      req.send_request(options)
    end

    # Returns AWS Chatbot account preferences.
    #
    # @return [Types::GetAccountPreferencesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountPreferencesResult#account_preferences #account_preferences} => Types::AccountPreferences
    #
    # @example Response structure
    #
    #   resp.account_preferences.user_authorization_required #=> Boolean
    #   resp.account_preferences.training_data_collection_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetAccountPreferences AWS API Documentation
    #
    # @overload get_account_preferences(params = {})
    # @param [Hash] params ({})
    def get_account_preferences(params = {}, options = {})
      req = build_request(:get_account_preferences, params)
      req.send_request(options)
    end

    # Returns a custom action.
    #
    # @option params [required, String] :custom_action_arn
    #   Returns the fully defined Amazon Resource Name (ARN) of the custom
    #   action.
    #
    # @return [Types::GetCustomActionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomActionResult#custom_action #custom_action} => Types::CustomAction
    #
    #
    # @example Example: Get a custom action
    #
    #   resp = client.get_custom_action({
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     custom_action: {
    #       action_name: "my-custom-action", 
    #       custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #       definition: {
    #         command_text: "lambda invoke $functionName", 
    #       }, 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_action({
    #     custom_action_arn: "CustomActionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_action.custom_action_arn #=> String
    #   resp.custom_action.definition.command_text #=> String
    #   resp.custom_action.alias_name #=> String
    #   resp.custom_action.attachments #=> Array
    #   resp.custom_action.attachments[0].notification_type #=> String
    #   resp.custom_action.attachments[0].button_text #=> String
    #   resp.custom_action.attachments[0].criteria #=> Array
    #   resp.custom_action.attachments[0].criteria[0].operator #=> String, one of "HAS_VALUE", "EQUALS"
    #   resp.custom_action.attachments[0].criteria[0].variable_name #=> String
    #   resp.custom_action.attachments[0].criteria[0].value #=> String
    #   resp.custom_action.attachments[0].variables #=> Hash
    #   resp.custom_action.attachments[0].variables["CustomActionAttachmentVariablesKeyString"] #=> String
    #   resp.custom_action.action_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetCustomAction AWS API Documentation
    #
    # @overload get_custom_action(params = {})
    # @param [Hash] params ({})
    def get_custom_action(params = {}, options = {})
      req = build_request(:get_custom_action, params)
      req.send_request(options)
    end

    # Returns a Microsoft Teams channel configuration in an AWS account.
    #
    # @option params [required, String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the
    #   MicrosoftTeamsChannelConfiguration to retrieve.
    #
    # @return [Types::GetTeamsChannelConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTeamsChannelConfigurationResult#channel_configuration #channel_configuration} => Types::TeamsChannelConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_microsoft_teams_channel_configuration({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_configuration.channel_id #=> String
    #   resp.channel_configuration.channel_name #=> String
    #   resp.channel_configuration.team_id #=> String
    #   resp.channel_configuration.team_name #=> String
    #   resp.channel_configuration.tenant_id #=> String
    #   resp.channel_configuration.chat_configuration_arn #=> String
    #   resp.channel_configuration.iam_role_arn #=> String
    #   resp.channel_configuration.sns_topic_arns #=> Array
    #   resp.channel_configuration.sns_topic_arns[0] #=> String
    #   resp.channel_configuration.configuration_name #=> String
    #   resp.channel_configuration.logging_level #=> String
    #   resp.channel_configuration.guardrail_policy_arns #=> Array
    #   resp.channel_configuration.guardrail_policy_arns[0] #=> String
    #   resp.channel_configuration.user_authorization_required #=> Boolean
    #   resp.channel_configuration.tags #=> Array
    #   resp.channel_configuration.tags[0].tag_key #=> String
    #   resp.channel_configuration.tags[0].tag_value #=> String
    #   resp.channel_configuration.state #=> String
    #   resp.channel_configuration.state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/GetMicrosoftTeamsChannelConfiguration AWS API Documentation
    #
    # @overload get_microsoft_teams_channel_configuration(params = {})
    # @param [Hash] params ({})
    def get_microsoft_teams_channel_configuration(params = {}, options = {})
      req = build_request(:get_microsoft_teams_channel_configuration, params)
      req.send_request(options)
    end

    # Lists resources associated with a channel configuration.
    #
    # @option params [required, String] :chat_configuration
    #   The channel configuration to list associations for.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @return [Types::ListAssociationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAssociationsResult#associations #associations} => Array&lt;Types::AssociationListing&gt;
    #   * {Types::ListAssociationsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List custom actions associated with a configuration
    #
    #   resp = client.list_associations({
    #     chat_configuration: "arn:aws:chatbot::1234567890:chat-configuration/slack-channel/my-channel", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     associations: [
    #       {
    #         resource: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associations({
    #     chat_configuration: "ChatConfigurationArn", # required
    #     max_results: 1,
    #     next_token: "ListAssociationsRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.associations #=> Array
    #   resp.associations[0].resource #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListAssociations AWS API Documentation
    #
    # @overload list_associations(params = {})
    # @param [Hash] params ({})
    def list_associations(params = {}, options = {})
      req = build_request(:list_associations, params)
      req.send_request(options)
    end

    # Lists custom actions defined in this account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @return [Types::ListCustomActionsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomActionsResult#custom_actions #custom_actions} => Array&lt;String&gt;
    #   * {Types::ListCustomActionsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: List custom actions
    #
    #   resp = client.list_custom_actions({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     custom_actions: [
    #       "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_actions({
    #     max_results: 1,
    #     next_token: "ListCustomActionsRequestNextTokenString",
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_actions #=> Array
    #   resp.custom_actions[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListCustomActions AWS API Documentation
    #
    # @overload list_custom_actions(params = {})
    # @param [Hash] params ({})
    def list_custom_actions(params = {}, options = {})
      req = build_request(:list_custom_actions, params)
      req.send_request(options)
    end

    # Lists all AWS Chatbot Microsoft Teams channel configurations in an AWS
    # account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [String] :team_id
    #   The ID of the Microsoft Teams authorized with AWS Chatbot.
    #
    #   To get the team ID, you must perform the initial authorization flow
    #   with Microsoft Teams in the AWS Chatbot console. Then you can copy and
    #   paste the team ID from the console. For more information, see [Step 1:
    #   Configure a Microsoft Teams client][1] in the <i> AWS Chatbot
    #   Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/teams-setup.html#teams-client-setup
    #
    # @return [Types::ListTeamsChannelConfigurationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTeamsChannelConfigurationsResult#next_token #next_token} => String
    #   * {Types::ListTeamsChannelConfigurationsResult#team_channel_configurations #team_channel_configurations} => Array&lt;Types::TeamsChannelConfiguration&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_microsoft_teams_channel_configurations({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     team_id: "UUID",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.team_channel_configurations #=> Array
    #   resp.team_channel_configurations[0].channel_id #=> String
    #   resp.team_channel_configurations[0].channel_name #=> String
    #   resp.team_channel_configurations[0].team_id #=> String
    #   resp.team_channel_configurations[0].team_name #=> String
    #   resp.team_channel_configurations[0].tenant_id #=> String
    #   resp.team_channel_configurations[0].chat_configuration_arn #=> String
    #   resp.team_channel_configurations[0].iam_role_arn #=> String
    #   resp.team_channel_configurations[0].sns_topic_arns #=> Array
    #   resp.team_channel_configurations[0].sns_topic_arns[0] #=> String
    #   resp.team_channel_configurations[0].configuration_name #=> String
    #   resp.team_channel_configurations[0].logging_level #=> String
    #   resp.team_channel_configurations[0].guardrail_policy_arns #=> Array
    #   resp.team_channel_configurations[0].guardrail_policy_arns[0] #=> String
    #   resp.team_channel_configurations[0].user_authorization_required #=> Boolean
    #   resp.team_channel_configurations[0].tags #=> Array
    #   resp.team_channel_configurations[0].tags[0].tag_key #=> String
    #   resp.team_channel_configurations[0].tags[0].tag_value #=> String
    #   resp.team_channel_configurations[0].state #=> String
    #   resp.team_channel_configurations[0].state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsChannelConfigurations AWS API Documentation
    #
    # @overload list_microsoft_teams_channel_configurations(params = {})
    # @param [Hash] params ({})
    def list_microsoft_teams_channel_configurations(params = {}, options = {})
      req = build_request(:list_microsoft_teams_channel_configurations, params)
      req.send_request(options)
    end

    # Lists all authorized Microsoft Teams for an AWS Account
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @return [Types::ListMicrosoftTeamsConfiguredTeamsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMicrosoftTeamsConfiguredTeamsResult#configured_teams #configured_teams} => Array&lt;Types::ConfiguredTeam&gt;
    #   * {Types::ListMicrosoftTeamsConfiguredTeamsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_microsoft_teams_configured_teams({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.configured_teams #=> Array
    #   resp.configured_teams[0].tenant_id #=> String
    #   resp.configured_teams[0].team_id #=> String
    #   resp.configured_teams[0].team_name #=> String
    #   resp.configured_teams[0].state #=> String
    #   resp.configured_teams[0].state_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsConfiguredTeams AWS API Documentation
    #
    # @overload list_microsoft_teams_configured_teams(params = {})
    # @param [Hash] params ({})
    def list_microsoft_teams_configured_teams(params = {}, options = {})
      req = build_request(:list_microsoft_teams_configured_teams, params)
      req.send_request(options)
    end

    # A list all Microsoft Teams user identities with a mapped role.
    #
    # @option params [String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the
    #   MicrosoftTeamsChannelConfiguration associated with the user identities
    #   to list.
    #
    # @option params [String] :next_token
    #   An optional token returned from a prior request. Use this token for
    #   pagination of results from this action. If this parameter is
    #   specified, the response includes only results beyond the token, up to
    #   the value specified by MaxResults.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to include in the response. If more
    #   results exist than the specified MaxResults value, a token is included
    #   in the response so that the remaining results can be retrieved.
    #
    # @return [Types::ListMicrosoftTeamsUserIdentitiesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMicrosoftTeamsUserIdentitiesResult#teams_user_identities #teams_user_identities} => Array&lt;Types::TeamsUserIdentity&gt;
    #   * {Types::ListMicrosoftTeamsUserIdentitiesResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_microsoft_teams_user_identities({
    #     chat_configuration_arn: "ChatConfigurationArn",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.teams_user_identities #=> Array
    #   resp.teams_user_identities[0].iam_role_arn #=> String
    #   resp.teams_user_identities[0].chat_configuration_arn #=> String
    #   resp.teams_user_identities[0].team_id #=> String
    #   resp.teams_user_identities[0].user_id #=> String
    #   resp.teams_user_identities[0].aws_user_identity #=> String
    #   resp.teams_user_identities[0].teams_channel_id #=> String
    #   resp.teams_user_identities[0].teams_tenant_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListMicrosoftTeamsUserIdentities AWS API Documentation
    #
    # @overload list_microsoft_teams_user_identities(params = {})
    # @param [Hash] params ({})
    def list_microsoft_teams_user_identities(params = {}, options = {})
      req = build_request(:list_microsoft_teams_user_identities, params)
      req.send_request(options)
    end

    # Lists all of the tags associated with the Amazon Resource Name (ARN)
    # that you specify. The resource can be a user, server, or role.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to list tags for.
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
    #   resp.tags[0].tag_key #=> String
    #   resp.tags[0].tag_value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Attaches a key-value pair to a resource, as identified by its Amazon
    # Resource Name (ARN). Resources are users, servers, roles, and other
    # entities.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the configuration.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of tags to apply to the configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         tag_key: "TagKey", # required
    #         tag_value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Detaches a key-value pair from a resource, as identified by its Amazon
    # Resource Name (ARN). Resources are users, servers, roles, and other
    # entities.
    #
    # @option params [required, String] :resource_arn
    #   The value of the resource that will have the tag removed. An Amazon
    #   Resource Name (ARN) is an identifier for a specific AWS resource, such
    #   as a server, user, or role.
    #
    # @option params [required, Array<String>] :tag_keys
    #   TagKeys are key-value pairs assigned to ARNs that can be used to group
    #   and search for resources by type. This metadata can be attached to
    #   resources for any purpose.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates AWS Chatbot account preferences.
    #
    # @option params [Boolean] :user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #
    # @option params [Boolean] :training_data_collection_enabled
    #   Turns on training data collection.
    #
    #   This helps improve the AWS Chatbot experience by allowing AWS Chatbot
    #   to store and use your customer information, such as AWS Chatbot
    #   configurations, notifications, user inputs, AWS Chatbot generated
    #   responses, and interaction data. This data helps us to continuously
    #   improve and develop Artificial Intelligence (AI) technologies. Your
    #   data is not shared with any third parties and is protected using
    #   sophisticated controls to prevent unauthorized access and misuse. AWS
    #   Chatbot does not store or use interactions in chat channels with
    #   Amazon Q for training AI technologies for AWS Chatbot.
    #
    # @return [Types::UpdateAccountPreferencesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountPreferencesResult#account_preferences #account_preferences} => Types::AccountPreferences
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_preferences({
    #     user_authorization_required: false,
    #     training_data_collection_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_preferences.user_authorization_required #=> Boolean
    #   resp.account_preferences.training_data_collection_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateAccountPreferences AWS API Documentation
    #
    # @overload update_account_preferences(params = {})
    # @param [Hash] params ({})
    def update_account_preferences(params = {}, options = {})
      req = build_request(:update_account_preferences, params)
      req.send_request(options)
    end

    # Updates a Amazon Chime webhook configuration.
    #
    # @option params [required, String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the ChimeWebhookConfiguration to
    #   update.
    #
    # @option params [String] :webhook_description
    #   A description of the webhook. We recommend using the convention
    #   `RoomName/WebhookName`.
    #
    #   For more information, see [Tutorial: Get started with Amazon Chime][1]
    #   in the <i> AWS Chatbot Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/chime-setup.html
    #
    # @option params [String] :webhook_url
    #   The URL for the Amazon Chime webhook.
    #
    # @option params [Array<String>] :sns_topic_arns
    #   The ARNs of the SNS topics that deliver notifications to AWS Chatbot.
    #
    # @option params [String] :iam_role_arn
    #   A user-defined role that AWS Chatbot assumes. This is not the
    #   service-linked role.
    #
    #   For more information, see [IAM policies for AWS Chatbot][1] in the <i>
    #   AWS Chatbot Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html
    #
    # @option params [String] :logging_level
    #   Logging levels include `ERROR`, `INFO`, or `NONE`.
    #
    # @return [Types::UpdateChimeWebhookConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateChimeWebhookConfigurationResult#webhook_configuration #webhook_configuration} => Types::ChimeWebhookConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_chime_webhook_configuration({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     webhook_description: "ChimeWebhookDescription",
    #     webhook_url: "ChimeWebhookUrl",
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn",
    #     logging_level: "CustomerCwLogLevel",
    #   })
    #
    # @example Response structure
    #
    #   resp.webhook_configuration.webhook_description #=> String
    #   resp.webhook_configuration.chat_configuration_arn #=> String
    #   resp.webhook_configuration.iam_role_arn #=> String
    #   resp.webhook_configuration.sns_topic_arns #=> Array
    #   resp.webhook_configuration.sns_topic_arns[0] #=> String
    #   resp.webhook_configuration.configuration_name #=> String
    #   resp.webhook_configuration.logging_level #=> String
    #   resp.webhook_configuration.tags #=> Array
    #   resp.webhook_configuration.tags[0].tag_key #=> String
    #   resp.webhook_configuration.tags[0].tag_value #=> String
    #   resp.webhook_configuration.state #=> String
    #   resp.webhook_configuration.state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateChimeWebhookConfiguration AWS API Documentation
    #
    # @overload update_chime_webhook_configuration(params = {})
    # @param [Hash] params ({})
    def update_chime_webhook_configuration(params = {}, options = {})
      req = build_request(:update_chime_webhook_configuration, params)
      req.send_request(options)
    end

    # Updates a custom action.
    #
    # @option params [required, String] :custom_action_arn
    #   The fully defined Amazon Resource Name (ARN) of the custom action.
    #
    # @option params [required, Types::CustomActionDefinition] :definition
    #   The definition of the command to run when invoked as an alias or as an
    #   action button.
    #
    # @option params [String] :alias_name
    #   The name used to invoke this action in the chat channel. For example,
    #   `@aws run my-alias`.
    #
    # @option params [Array<Types::CustomActionAttachment>] :attachments
    #   Defines when this custom action button should be attached to a
    #   notification.
    #
    # @return [Types::UpdateCustomActionResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateCustomActionResult#custom_action_arn #custom_action_arn} => String
    #
    #
    # @example Example: Update the command definition of an existing action
    #
    #   # Updates the command text of a custom action without altering the existing alias name or attachment criteria
    #
    #   resp = client.update_custom_action({
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #     definition: {
    #       command_text: "lambda invoke MyNewFunction", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     custom_action_arn: "arn:aws:chatbot::1234567890:custom-action/my-custom-action", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_custom_action({
    #     custom_action_arn: "CustomActionArn", # required
    #     definition: { # required
    #       command_text: "CustomActionDefinitionCommandTextString", # required
    #     },
    #     alias_name: "CustomActionAliasName",
    #     attachments: [
    #       {
    #         notification_type: "CustomActionAttachmentNotificationType",
    #         button_text: "CustomActionButtonText",
    #         criteria: [
    #           {
    #             operator: "HAS_VALUE", # required, accepts HAS_VALUE, EQUALS
    #             variable_name: "CustomActionAttachmentCriteriaVariableNameString", # required
    #             value: "CustomActionAttachmentCriteriaValueString",
    #           },
    #         ],
    #         variables: {
    #           "CustomActionAttachmentVariablesKeyString" => "CustomActionAttachmentVariablesValueString",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.custom_action_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateCustomAction AWS API Documentation
    #
    # @overload update_custom_action(params = {})
    # @param [Hash] params ({})
    def update_custom_action(params = {}, options = {})
      req = build_request(:update_custom_action, params)
      req.send_request(options)
    end

    # Updates an Microsoft Teams channel configuration.
    #
    # @option params [required, String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the TeamsChannelConfiguration to
    #   update.
    #
    # @option params [required, String] :channel_id
    #   The ID of the Microsoft Teams channel.
    #
    # @option params [String] :channel_name
    #   The name of the Microsoft Teams channel.
    #
    # @option params [Array<String>] :sns_topic_arns
    #   The Amazon Resource Names (ARNs) of the SNS topics that deliver
    #   notifications to AWS Chatbot.
    #
    # @option params [String] :iam_role_arn
    #   A user-defined role that AWS Chatbot assumes. This is not the
    #   service-linked role.
    #
    #   For more information, see [IAM policies for AWS Chatbot][1] in the <i>
    #   AWS Chatbot Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html
    #
    # @option params [String] :logging_level
    #   Logging levels include `ERROR`, `INFO`, or `NONE`.
    #
    # @option params [Array<String>] :guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed `AdministratorAccess` policy is applied by default if
    #   this is not set.
    #
    # @option params [Boolean] :user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #
    # @return [Types::UpdateTeamsChannelConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTeamsChannelConfigurationResult#channel_configuration #channel_configuration} => Types::TeamsChannelConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_microsoft_teams_channel_configuration({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     channel_id: "TeamsChannelId", # required
    #     channel_name: "TeamsChannelName",
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn",
    #     logging_level: "CustomerCwLogLevel",
    #     guardrail_policy_arns: ["GuardrailPolicyArn"],
    #     user_authorization_required: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_configuration.channel_id #=> String
    #   resp.channel_configuration.channel_name #=> String
    #   resp.channel_configuration.team_id #=> String
    #   resp.channel_configuration.team_name #=> String
    #   resp.channel_configuration.tenant_id #=> String
    #   resp.channel_configuration.chat_configuration_arn #=> String
    #   resp.channel_configuration.iam_role_arn #=> String
    #   resp.channel_configuration.sns_topic_arns #=> Array
    #   resp.channel_configuration.sns_topic_arns[0] #=> String
    #   resp.channel_configuration.configuration_name #=> String
    #   resp.channel_configuration.logging_level #=> String
    #   resp.channel_configuration.guardrail_policy_arns #=> Array
    #   resp.channel_configuration.guardrail_policy_arns[0] #=> String
    #   resp.channel_configuration.user_authorization_required #=> Boolean
    #   resp.channel_configuration.tags #=> Array
    #   resp.channel_configuration.tags[0].tag_key #=> String
    #   resp.channel_configuration.tags[0].tag_value #=> String
    #   resp.channel_configuration.state #=> String
    #   resp.channel_configuration.state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateMicrosoftTeamsChannelConfiguration AWS API Documentation
    #
    # @overload update_microsoft_teams_channel_configuration(params = {})
    # @param [Hash] params ({})
    def update_microsoft_teams_channel_configuration(params = {}, options = {})
      req = build_request(:update_microsoft_teams_channel_configuration, params)
      req.send_request(options)
    end

    # Updates a Slack channel configuration.
    #
    # @option params [required, String] :chat_configuration_arn
    #   The Amazon Resource Name (ARN) of the SlackChannelConfiguration to
    #   update.
    #
    # @option params [required, String] :slack_channel_id
    #   The ID of the Slack channel.
    #
    #   To get this ID, open Slack, right click on the channel name in the
    #   left pane, then choose Copy Link. The channel ID is the 9-character
    #   string at the end of the URL. For example, ABCBBLZZZ.
    #
    # @option params [String] :slack_channel_name
    #   The name of the Slack channel.
    #
    # @option params [Array<String>] :sns_topic_arns
    #   The Amazon Resource Names (ARNs) of the SNS topics that deliver
    #   notifications to AWS Chatbot.
    #
    # @option params [String] :iam_role_arn
    #   A user-defined role that AWS Chatbot assumes. This is not the
    #   service-linked role.
    #
    #   For more information, see [IAM policies for AWS Chatbot][1] in the <i>
    #   AWS Chatbot Administrator Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/chatbot-iam-policies.html
    #
    # @option params [String] :logging_level
    #   Logging levels include `ERROR`, `INFO`, or `NONE`.
    #
    # @option params [Array<String>] :guardrail_policy_arns
    #   The list of IAM policy ARNs that are applied as channel guardrails.
    #   The AWS managed `AdministratorAccess` policy is applied by default if
    #   this is not set.
    #
    # @option params [Boolean] :user_authorization_required
    #   Enables use of a user role requirement in your chat configuration.
    #
    # @return [Types::UpdateSlackChannelConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSlackChannelConfigurationResult#channel_configuration #channel_configuration} => Types::SlackChannelConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_slack_channel_configuration({
    #     chat_configuration_arn: "ChatConfigurationArn", # required
    #     slack_channel_id: "SlackChannelId", # required
    #     slack_channel_name: "SlackChannelDisplayName",
    #     sns_topic_arns: ["Arn"],
    #     iam_role_arn: "Arn",
    #     logging_level: "CustomerCwLogLevel",
    #     guardrail_policy_arns: ["GuardrailPolicyArn"],
    #     user_authorization_required: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.channel_configuration.slack_team_name #=> String
    #   resp.channel_configuration.slack_team_id #=> String
    #   resp.channel_configuration.slack_channel_id #=> String
    #   resp.channel_configuration.slack_channel_name #=> String
    #   resp.channel_configuration.chat_configuration_arn #=> String
    #   resp.channel_configuration.iam_role_arn #=> String
    #   resp.channel_configuration.sns_topic_arns #=> Array
    #   resp.channel_configuration.sns_topic_arns[0] #=> String
    #   resp.channel_configuration.configuration_name #=> String
    #   resp.channel_configuration.logging_level #=> String
    #   resp.channel_configuration.guardrail_policy_arns #=> Array
    #   resp.channel_configuration.guardrail_policy_arns[0] #=> String
    #   resp.channel_configuration.user_authorization_required #=> Boolean
    #   resp.channel_configuration.tags #=> Array
    #   resp.channel_configuration.tags[0].tag_key #=> String
    #   resp.channel_configuration.tags[0].tag_value #=> String
    #   resp.channel_configuration.state #=> String
    #   resp.channel_configuration.state_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/chatbot-2017-10-11/UpdateSlackChannelConfiguration AWS API Documentation
    #
    # @overload update_slack_channel_configuration(params = {})
    # @param [Hash] params ({})
    def update_slack_channel_configuration(params = {}, options = {})
      req = build_request(:update_slack_channel_configuration, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Chatbot')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-chatbot'
      context[:gem_version] = '1.21.0'
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
