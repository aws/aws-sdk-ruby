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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

module Aws::Firehose
  # An API client for Firehose.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Firehose::Client.new(
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

    @identifier = :firehose

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Firehose::Plugins::Endpoints)

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
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disables response data type conversions. The request parameters
    #     hash must be formatted exactly as the API expects.This option is useful
    #     when you want to ensure the highest level of performance by avoiding
    #     overhead of walking request parameters and response data structures.
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
    #   @option options [Aws::Firehose::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Firehose::EndpointParameters`.
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

    # Creates a Firehose stream.
    #
    # By default, you can create up to 50 Firehose streams per Amazon Web
    # Services Region.
    #
    # This is an asynchronous operation that immediately returns. The
    # initial status of the Firehose stream is `CREATING`. After the
    # Firehose stream is created, its status is `ACTIVE` and it now accepts
    # data. If the Firehose stream creation fails, the status transitions to
    # `CREATING_FAILED`. Attempts to send data to a delivery stream that is
    # not in the `ACTIVE` state cause an exception. To check the state of a
    # Firehose stream, use DescribeDeliveryStream.
    #
    # If the status of a Firehose stream is `CREATING_FAILED`, this status
    # doesn't change, and you can't invoke `CreateDeliveryStream` again on
    # it. However, you can invoke the DeleteDeliveryStream operation to
    # delete it.
    #
    # A Firehose stream can be configured to receive records directly from
    # providers using PutRecord or PutRecordBatch, or it can be configured
    # to use an existing Kinesis stream as its source. To specify a Kinesis
    # data stream as input, set the `DeliveryStreamType` parameter to
    # `KinesisStreamAsSource`, and provide the Kinesis stream Amazon
    # Resource Name (ARN) and role ARN in the
    # `KinesisStreamSourceConfiguration` parameter.
    #
    # To create a Firehose stream with server-side encryption (SSE) enabled,
    # include DeliveryStreamEncryptionConfigurationInput in your request.
    # This is optional. You can also invoke StartDeliveryStreamEncryption to
    # turn on SSE for an existing Firehose stream that doesn't have SSE
    # enabled.
    #
    # A Firehose stream is configured with a single destination, such as
    # Amazon Simple Storage Service (Amazon S3), Amazon Redshift, Amazon
    # OpenSearch Service, Amazon OpenSearch Serverless, Splunk, and any
    # custom HTTP endpoint or HTTP endpoints owned by or supported by
    # third-party service providers, including Datadog, Dynatrace,
    # LogicMonitor, MongoDB, New Relic, and Sumo Logic. You must specify
    # only one of the following destination configuration parameters:
    # `ExtendedS3DestinationConfiguration`, `S3DestinationConfiguration`,
    # `ElasticsearchDestinationConfiguration`,
    # `RedshiftDestinationConfiguration`, or
    # `SplunkDestinationConfiguration`.
    #
    # When you specify `S3DestinationConfiguration`, you can also provide
    # the following optional values: BufferingHints,
    # `EncryptionConfiguration`, and `CompressionFormat`. By default, if no
    # `BufferingHints` value is provided, Firehose buffers data up to 5 MB
    # or for 5 minutes, whichever condition is satisfied first.
    # `BufferingHints` is a hint, so there are some cases where the service
    # cannot adhere to these conditions strictly. For example, record
    # boundaries might be such that the size is a little over or under the
    # configured buffering size. By default, no encryption is performed. We
    # strongly recommend that you enable encryption to ensure secure data
    # storage in Amazon S3.
    #
    # A few notes about Amazon Redshift as a destination:
    #
    # * An Amazon Redshift destination requires an S3 bucket as intermediate
    #   location. Firehose first delivers data to Amazon S3 and then uses
    #   `COPY` syntax to load data into an Amazon Redshift table. This is
    #   specified in the `RedshiftDestinationConfiguration.S3Configuration`
    #   parameter.
    #
    # * The compression formats `SNAPPY` or `ZIP` cannot be specified in
    #   `RedshiftDestinationConfiguration.S3Configuration` because the
    #   Amazon Redshift `COPY` operation that reads from the S3 bucket
    #   doesn't support these compression formats.
    #
    # * We strongly recommend that you use the user name and password you
    #   provide exclusively with Firehose, and that the permissions for the
    #   account are restricted for Amazon Redshift `INSERT` permissions.
    #
    # Firehose assumes the IAM role that is configured as part of the
    # destination. The role should allow the Firehose principal to assume
    # the role, and the role should have permissions that allow the service
    # to deliver the data. For more information, see [Grant Firehose Access
    # to an Amazon S3 Destination][1] in the *Amazon Firehose Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/controlling-access.html#using-iam-s3
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream. This name must be unique per Amazon
    #   Web Services account in the same Amazon Web Services Region. If the
    #   Firehose streams are in different accounts or different Regions, you
    #   can have multiple Firehose streams with the same name.
    #
    # @option params [String] :delivery_stream_type
    #   The Firehose stream type. This parameter can be one of the following
    #   values:
    #
    #   * `DirectPut`: Provider applications access the Firehose stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`: The Firehose stream uses a Kinesis data
    #     stream as a source.
    #
    # @option params [Types::DirectPutSourceConfiguration] :direct_put_source_configuration
    #   The structure that configures parameters such as `ThroughputHintInMBs`
    #   for a stream configured with Direct PUT as a source.
    #
    # @option params [Types::KinesisStreamSourceConfiguration] :kinesis_stream_source_configuration
    #   When a Kinesis data stream is used as the source for the Firehose
    #   stream, a KinesisStreamSourceConfiguration containing the Kinesis data
    #   stream Amazon Resource Name (ARN) and the role ARN for the source
    #   stream.
    #
    # @option params [Types::DeliveryStreamEncryptionConfigurationInput] :delivery_stream_encryption_configuration_input
    #   Used to specify the type and Amazon Resource Name (ARN) of the KMS key
    #   needed for Server-Side Encryption (SSE).
    #
    # @option params [Types::S3DestinationConfiguration] :s3_destination_configuration
    #   \[Deprecated\] The destination in Amazon S3. You can specify only one
    #   destination.
    #
    # @option params [Types::ExtendedS3DestinationConfiguration] :extended_s3_destination_configuration
    #   The destination in Amazon S3. You can specify only one destination.
    #
    # @option params [Types::RedshiftDestinationConfiguration] :redshift_destination_configuration
    #   The destination in Amazon Redshift. You can specify only one
    #   destination.
    #
    # @option params [Types::ElasticsearchDestinationConfiguration] :elasticsearch_destination_configuration
    #   The destination in Amazon OpenSearch Service. You can specify only one
    #   destination.
    #
    # @option params [Types::AmazonopensearchserviceDestinationConfiguration] :amazonopensearchservice_destination_configuration
    #   The destination in Amazon OpenSearch Service. You can specify only one
    #   destination.
    #
    # @option params [Types::SplunkDestinationConfiguration] :splunk_destination_configuration
    #   The destination in Splunk. You can specify only one destination.
    #
    # @option params [Types::HttpEndpointDestinationConfiguration] :http_endpoint_destination_configuration
    #   Enables configuring Kinesis Firehose to deliver data to any HTTP
    #   endpoint destination. You can specify only one destination.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A set of tags to assign to the Firehose stream. A tag is a key-value
    #   pair that you can define and assign to Amazon Web Services resources.
    #   Tags are metadata. For example, you can add friendly names and
    #   descriptions or other types of information that can help you
    #   distinguish the Firehose stream. For more information about tags, see
    #   [Using Cost Allocation Tags][1] in the Amazon Web Services Billing and
    #   Cost Management User Guide.
    #
    #   You can specify up to 50 tags when creating a Firehose stream.
    #
    #   If you specify tags in the `CreateDeliveryStream` action, Amazon Data
    #   Firehose performs an additional authorization on the
    #   `firehose:TagDeliveryStream` action to verify if users have
    #   permissions to create tags. If you do not provide this permission,
    #   requests to create new Firehose streams with IAM resource tags will
    #   fail with an `AccessDeniedException` such as following.
    #
    #   **AccessDeniedException**
    #
    #   User: arn:aws:sts::x:assumed-role/x/x is not authorized to perform:
    #   firehose:TagDeliveryStream on resource:
    #   arn:aws:firehose:us-east-1:x:deliverystream/x with an explicit deny in
    #   an identity-based policy.
    #
    #   For an example IAM policy, see [Tag example.][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #   [2]: https://docs.aws.amazon.com/firehose/latest/APIReference/API_CreateDeliveryStream.html#API_CreateDeliveryStream_Examples
    #
    # @option params [Types::AmazonOpenSearchServerlessDestinationConfiguration] :amazon_open_search_serverless_destination_configuration
    #   The destination in the Serverless offering for Amazon OpenSearch
    #   Service. You can specify only one destination.
    #
    # @option params [Types::MSKSourceConfiguration] :msk_source_configuration
    #   The configuration for the Amazon MSK cluster to be used as the source
    #   for a delivery stream.
    #
    # @option params [Types::SnowflakeDestinationConfiguration] :snowflake_destination_configuration
    #   Configure Snowflake destination
    #
    # @option params [Types::IcebergDestinationConfiguration] :iceberg_destination_configuration
    #   Configure Apache Iceberg Tables destination.
    #
    # @option params [Types::DatabaseSourceConfiguration] :database_source_configuration
    #   The top level object for configuring streams with database as a
    #   source.
    #
    #   Amazon Data Firehose is in preview release and is subject to change.
    #
    # @return [Types::CreateDeliveryStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateDeliveryStreamOutput#delivery_stream_arn #delivery_stream_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     delivery_stream_type: "DirectPut", # accepts DirectPut, KinesisStreamAsSource, MSKAsSource, DatabaseAsSource
    #     direct_put_source_configuration: {
    #       throughput_hint_in_m_bs: 1, # required
    #     },
    #     kinesis_stream_source_configuration: {
    #       kinesis_stream_arn: "KinesisStreamARN", # required
    #       role_arn: "RoleARN", # required
    #     },
    #     delivery_stream_encryption_configuration_input: {
    #       key_arn: "AWSKMSKeyARN",
    #       key_type: "AWS_OWNED_CMK", # required, accepts AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
    #     },
    #     s3_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     extended_s3_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       bucket_arn: "BucketARN", # required
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #       s3_backup_configuration: {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       data_format_conversion_configuration: {
    #         schema_configuration: {
    #           role_arn: "NonEmptyStringWithoutWhitespace",
    #           catalog_id: "NonEmptyStringWithoutWhitespace",
    #           database_name: "NonEmptyStringWithoutWhitespace",
    #           table_name: "NonEmptyStringWithoutWhitespace",
    #           region: "NonEmptyStringWithoutWhitespace",
    #           version_id: "NonEmptyStringWithoutWhitespace",
    #         },
    #         input_format_configuration: {
    #           deserializer: {
    #             open_x_json_ser_de: {
    #               convert_dots_in_json_keys_to_underscores: false,
    #               case_insensitive: false,
    #               column_to_json_key_mappings: {
    #                 "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #               },
    #             },
    #             hive_json_ser_de: {
    #               timestamp_formats: ["NonEmptyString"],
    #             },
    #           },
    #         },
    #         output_format_configuration: {
    #           serializer: {
    #             parquet_ser_de: {
    #               block_size_bytes: 1,
    #               page_size_bytes: 1,
    #               compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #               enable_dictionary_compression: false,
    #               max_padding_bytes: 1,
    #               writer_version: "V1", # accepts V1, V2
    #             },
    #             orc_ser_de: {
    #               stripe_size_bytes: 1,
    #               block_size_bytes: 1,
    #               row_index_stride: 1,
    #               enable_padding: false,
    #               padding_tolerance: 1.0,
    #               compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #               bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #               bloom_filter_false_positive_probability: 1.0,
    #               dictionary_key_threshold: 1.0,
    #               format_version: "V0_11", # accepts V0_11, V0_12
    #             },
    #           },
    #         },
    #         enabled: false,
    #       },
    #       dynamic_partitioning_configuration: {
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         enabled: false,
    #       },
    #       file_extension: "FileExtension",
    #       custom_time_zone: "CustomTimeZone",
    #     },
    #     redshift_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       cluster_jdbc_url: "ClusterJDBCURL", # required
    #       copy_command: { # required
    #         data_table_name: "DataTableName", # required
    #         data_table_columns: "DataTableColumns",
    #         copy_options: "CopyOptions",
    #       },
    #       username: "Username",
    #       password: "Password",
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #       s3_backup_configuration: {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #     },
    #     elasticsearch_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       domain_arn: "ElasticsearchDomainARN",
    #       cluster_endpoint: "ElasticsearchClusterEndpoint",
    #       index_name: "ElasticsearchIndexName", # required
    #       type_name: "ElasticsearchTypeName",
    #       index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDocumentsOnly", # accepts FailedDocumentsOnly, AllDocuments
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       vpc_configuration: {
    #         subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         role_arn: "RoleARN", # required
    #         security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #       },
    #       document_id_options: {
    #         default_document_id_format: "FIREHOSE_DEFAULT", # required, accepts FIREHOSE_DEFAULT, NO_DOCUMENT_ID
    #       },
    #     },
    #     amazonopensearchservice_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       domain_arn: "AmazonopensearchserviceDomainARN",
    #       cluster_endpoint: "AmazonopensearchserviceClusterEndpoint",
    #       index_name: "AmazonopensearchserviceIndexName", # required
    #       type_name: "AmazonopensearchserviceTypeName",
    #       index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDocumentsOnly", # accepts FailedDocumentsOnly, AllDocuments
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       vpc_configuration: {
    #         subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         role_arn: "RoleARN", # required
    #         security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #       },
    #       document_id_options: {
    #         default_document_id_format: "FIREHOSE_DEFAULT", # required, accepts FIREHOSE_DEFAULT, NO_DOCUMENT_ID
    #       },
    #     },
    #     splunk_destination_configuration: {
    #       hec_endpoint: "HECEndpoint", # required
    #       hec_endpoint_type: "Raw", # required, accepts Raw, Event
    #       hec_token: "HECToken",
    #       hec_acknowledgment_timeout_in_seconds: 1,
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedEventsOnly", # accepts FailedEventsOnly, AllEvents
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #     },
    #     http_endpoint_destination_configuration: {
    #       endpoint_configuration: { # required
    #         url: "HttpEndpointUrl", # required
    #         name: "HttpEndpointName",
    #         access_key: "HttpEndpointAccessKey",
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       request_configuration: {
    #         content_encoding: "NONE", # accepts NONE, GZIP
    #         common_attributes: [
    #           {
    #             attribute_name: "HttpEndpointAttributeName", # required
    #             attribute_value: "HttpEndpointAttributeValue", # required
    #           },
    #         ],
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       role_arn: "RoleARN",
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #     amazon_open_search_serverless_destination_configuration: {
    #       role_arn: "RoleARN", # required
    #       collection_endpoint: "AmazonOpenSearchServerlessCollectionEndpoint",
    #       index_name: "AmazonOpenSearchServerlessIndexName", # required
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDocumentsOnly", # accepts FailedDocumentsOnly, AllDocuments
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       vpc_configuration: {
    #         subnet_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #         role_arn: "RoleARN", # required
    #         security_group_ids: ["NonEmptyStringWithoutWhitespace"], # required
    #       },
    #     },
    #     msk_source_configuration: {
    #       msk_cluster_arn: "MSKClusterARN", # required
    #       topic_name: "TopicName", # required
    #       authentication_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         connectivity: "PUBLIC", # required, accepts PUBLIC, PRIVATE
    #       },
    #       read_from_timestamp: Time.now,
    #     },
    #     snowflake_destination_configuration: {
    #       account_url: "SnowflakeAccountUrl", # required
    #       private_key: "SnowflakePrivateKey",
    #       key_passphrase: "SnowflakeKeyPassphrase",
    #       user: "SnowflakeUser",
    #       database: "SnowflakeDatabase", # required
    #       schema: "SnowflakeSchema", # required
    #       table: "SnowflakeTable", # required
    #       snowflake_role_configuration: {
    #         enabled: false,
    #         snowflake_role: "SnowflakeRole",
    #       },
    #       data_loading_option: "JSON_MAPPING", # accepts JSON_MAPPING, VARIANT_CONTENT_MAPPING, VARIANT_CONTENT_AND_METADATA_MAPPING
    #       meta_data_column_name: "SnowflakeMetaDataColumnName",
    #       content_column_name: "SnowflakeContentColumnName",
    #       snowflake_vpc_configuration: {
    #         private_link_vpce_id: "SnowflakePrivateLinkVpceId", # required
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       role_arn: "RoleARN", # required
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #     },
    #     iceberg_destination_configuration: {
    #       destination_table_configuration_list: [
    #         {
    #           destination_table_name: "StringWithLettersDigitsUnderscoresDots", # required
    #           destination_database_name: "StringWithLettersDigitsUnderscoresDots", # required
    #           unique_keys: ["NonEmptyStringWithoutWhitespace"],
    #           partition_spec: {
    #             identity: [
    #               {
    #                 source_name: "NonEmptyStringWithoutWhitespace", # required
    #               },
    #             ],
    #           },
    #           s3_error_output_prefix: "ErrorOutputPrefix",
    #         },
    #       ],
    #       schema_evolution_configuration: {
    #         enabled: false, # required
    #       },
    #       table_creation_configuration: {
    #         enabled: false, # required
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       role_arn: "RoleARN", # required
    #       append_only: false,
    #       catalog_configuration: { # required
    #         catalog_arn: "GlueDataCatalogARN",
    #         warehouse_location: "WarehouseLocation",
    #       },
    #       s3_configuration: { # required
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #     },
    #     database_source_configuration: {
    #       type: "MySQL", # required, accepts MySQL, PostgreSQL
    #       endpoint: "DatabaseEndpoint", # required
    #       port: 1, # required
    #       ssl_mode: "Disabled", # accepts Disabled, Enabled
    #       databases: { # required
    #         include: ["DatabaseName"],
    #         exclude: ["DatabaseName"],
    #       },
    #       tables: { # required
    #         include: ["DatabaseTableName"],
    #         exclude: ["DatabaseTableName"],
    #       },
    #       columns: {
    #         include: ["DatabaseColumnName"],
    #         exclude: ["DatabaseColumnName"],
    #       },
    #       surrogate_keys: ["NonEmptyStringWithoutWhitespace"],
    #       snapshot_watermark_table: "DatabaseTableName", # required
    #       database_source_authentication_configuration: { # required
    #         secrets_manager_configuration: { # required
    #           secret_arn: "SecretARN",
    #           role_arn: "RoleARN",
    #           enabled: false, # required
    #         },
    #       },
    #       database_source_vpc_configuration: { # required
    #         vpc_endpoint_service_name: "VpcEndpointServiceName", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_stream_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/CreateDeliveryStream AWS API Documentation
    #
    # @overload create_delivery_stream(params = {})
    # @param [Hash] params ({})
    def create_delivery_stream(params = {}, options = {})
      req = build_request(:create_delivery_stream, params)
      req.send_request(options)
    end

    # Deletes a Firehose stream and its data.
    #
    # You can delete a Firehose stream only if it is in one of the following
    # states: `ACTIVE`, `DELETING`, `CREATING_FAILED`, or `DELETING_FAILED`.
    # You can't delete a Firehose stream that is in the `CREATING` state.
    # To check the state of a Firehose stream, use DescribeDeliveryStream.
    #
    # DeleteDeliveryStream is an asynchronous API. When an API request to
    # DeleteDeliveryStream succeeds, the Firehose stream is marked for
    # deletion, and it goes into the `DELETING` state.While the Firehose
    # stream is in the `DELETING` state, the service might continue to
    # accept records, but it doesn't make any guarantees with respect to
    # delivering the data. Therefore, as a best practice, first stop any
    # applications that are sending records before you delete a Firehose
    # stream.
    #
    # Removal of a Firehose stream that is in the `DELETING` state is a low
    # priority operation for the service. A stream may remain in the
    # `DELETING` state for several minutes. Therefore, as a best practice,
    # applications should not wait for streams in the `DELETING` state to be
    # removed.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream.
    #
    # @option params [Boolean] :allow_force_delete
    #   Set this to true if you want to delete the Firehose stream even if
    #   Firehose is unable to retire the grant for the CMK. Firehose might be
    #   unable to retire the grant due to a customer error, such as when the
    #   CMK or the grant are in an invalid state. If you force deletion, you
    #   can then use the [RevokeGrant][1] operation to revoke the grant you
    #   gave to Firehose. If a failure to retire the grant happens due to an
    #   Amazon Web Services KMS issue, Firehose keeps retrying the delete
    #   operation.
    #
    #   The default value is false.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     allow_force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DeleteDeliveryStream AWS API Documentation
    #
    # @overload delete_delivery_stream(params = {})
    # @param [Hash] params ({})
    def delete_delivery_stream(params = {}, options = {})
      req = build_request(:delete_delivery_stream, params)
      req.send_request(options)
    end

    # Describes the specified Firehose stream and its status. For example,
    # after your Firehose stream is created, call `DescribeDeliveryStream`
    # to see whether the Firehose stream is `ACTIVE` and therefore ready for
    # data to be sent to it.
    #
    # If the status of a Firehose stream is `CREATING_FAILED`, this status
    # doesn't change, and you can't invoke CreateDeliveryStream again on
    # it. However, you can invoke the DeleteDeliveryStream operation to
    # delete it. If the status is `DELETING_FAILED`, you can force deletion
    # by invoking DeleteDeliveryStream again but with
    # DeleteDeliveryStreamInput$AllowForceDelete set to true.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream.
    #
    # @option params [Integer] :limit
    #   The limit on the number of destinations to return. You can have one
    #   destination per Firehose stream.
    #
    # @option params [String] :exclusive_start_destination_id
    #   The ID of the destination to start returning the destination
    #   information. Firehose supports one destination per Firehose stream.
    #
    # @return [Types::DescribeDeliveryStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDeliveryStreamOutput#delivery_stream_description #delivery_stream_description} => Types::DeliveryStreamDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     limit: 1,
    #     exclusive_start_destination_id: "DestinationId",
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_stream_description.delivery_stream_name #=> String
    #   resp.delivery_stream_description.delivery_stream_arn #=> String
    #   resp.delivery_stream_description.delivery_stream_status #=> String, one of "CREATING", "CREATING_FAILED", "DELETING", "DELETING_FAILED", "ACTIVE"
    #   resp.delivery_stream_description.failure_description.type #=> String, one of "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND", "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED", "RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"
    #   resp.delivery_stream_description.failure_description.details #=> String
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.key_arn #=> String
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.key_type #=> String, one of "AWS_OWNED_CMK", "CUSTOMER_MANAGED_CMK"
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.status #=> String, one of "ENABLED", "ENABLING", "ENABLING_FAILED", "DISABLED", "DISABLING", "DISABLING_FAILED"
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.failure_description.type #=> String, one of "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND", "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED", "RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"
    #   resp.delivery_stream_description.delivery_stream_encryption_configuration.failure_description.details #=> String
    #   resp.delivery_stream_description.delivery_stream_type #=> String, one of "DirectPut", "KinesisStreamAsSource", "MSKAsSource", "DatabaseAsSource"
    #   resp.delivery_stream_description.version_id #=> String
    #   resp.delivery_stream_description.create_timestamp #=> Time
    #   resp.delivery_stream_description.last_update_timestamp #=> Time
    #   resp.delivery_stream_description.source.direct_put_source_description.throughput_hint_in_m_bs #=> Integer
    #   resp.delivery_stream_description.source.kinesis_stream_source_description.kinesis_stream_arn #=> String
    #   resp.delivery_stream_description.source.kinesis_stream_source_description.role_arn #=> String
    #   resp.delivery_stream_description.source.kinesis_stream_source_description.delivery_start_timestamp #=> Time
    #   resp.delivery_stream_description.source.msk_source_description.msk_cluster_arn #=> String
    #   resp.delivery_stream_description.source.msk_source_description.topic_name #=> String
    #   resp.delivery_stream_description.source.msk_source_description.authentication_configuration.role_arn #=> String
    #   resp.delivery_stream_description.source.msk_source_description.authentication_configuration.connectivity #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.delivery_stream_description.source.msk_source_description.delivery_start_timestamp #=> Time
    #   resp.delivery_stream_description.source.msk_source_description.read_from_timestamp #=> Time
    #   resp.delivery_stream_description.source.database_source_description.type #=> String, one of "MySQL", "PostgreSQL"
    #   resp.delivery_stream_description.source.database_source_description.endpoint #=> String
    #   resp.delivery_stream_description.source.database_source_description.port #=> Integer
    #   resp.delivery_stream_description.source.database_source_description.ssl_mode #=> String, one of "Disabled", "Enabled"
    #   resp.delivery_stream_description.source.database_source_description.databases.include #=> Array
    #   resp.delivery_stream_description.source.database_source_description.databases.include[0] #=> String
    #   resp.delivery_stream_description.source.database_source_description.databases.exclude #=> Array
    #   resp.delivery_stream_description.source.database_source_description.databases.exclude[0] #=> String
    #   resp.delivery_stream_description.source.database_source_description.tables.include #=> Array
    #   resp.delivery_stream_description.source.database_source_description.tables.include[0] #=> String
    #   resp.delivery_stream_description.source.database_source_description.tables.exclude #=> Array
    #   resp.delivery_stream_description.source.database_source_description.tables.exclude[0] #=> String
    #   resp.delivery_stream_description.source.database_source_description.columns.include #=> Array
    #   resp.delivery_stream_description.source.database_source_description.columns.include[0] #=> String
    #   resp.delivery_stream_description.source.database_source_description.columns.exclude #=> Array
    #   resp.delivery_stream_description.source.database_source_description.columns.exclude[0] #=> String
    #   resp.delivery_stream_description.source.database_source_description.surrogate_keys #=> Array
    #   resp.delivery_stream_description.source.database_source_description.surrogate_keys[0] #=> String
    #   resp.delivery_stream_description.source.database_source_description.snapshot_watermark_table #=> String
    #   resp.delivery_stream_description.source.database_source_description.snapshot_info #=> Array
    #   resp.delivery_stream_description.source.database_source_description.snapshot_info[0].id #=> String
    #   resp.delivery_stream_description.source.database_source_description.snapshot_info[0].table #=> String
    #   resp.delivery_stream_description.source.database_source_description.snapshot_info[0].request_timestamp #=> Time
    #   resp.delivery_stream_description.source.database_source_description.snapshot_info[0].requested_by #=> String, one of "USER", "FIREHOSE"
    #   resp.delivery_stream_description.source.database_source_description.snapshot_info[0].status #=> String, one of "IN_PROGRESS", "COMPLETE", "SUSPENDED"
    #   resp.delivery_stream_description.source.database_source_description.snapshot_info[0].failure_description.type #=> String, one of "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND", "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED", "RETIRE_KMS_GRANT_FAILED", "CREATE_KMS_GRANT_FAILED", "KMS_ACCESS_DENIED", "DISABLED_KMS_KEY", "INVALID_KMS_KEY", "KMS_KEY_NOT_FOUND", "KMS_OPT_IN_REQUIRED", "CREATE_ENI_FAILED", "DELETE_ENI_FAILED", "SUBNET_NOT_FOUND", "SECURITY_GROUP_NOT_FOUND", "ENI_ACCESS_DENIED", "SUBNET_ACCESS_DENIED", "SECURITY_GROUP_ACCESS_DENIED", "UNKNOWN_ERROR"
    #   resp.delivery_stream_description.source.database_source_description.snapshot_info[0].failure_description.details #=> String
    #   resp.delivery_stream_description.source.database_source_description.database_source_authentication_configuration.secrets_manager_configuration.secret_arn #=> String
    #   resp.delivery_stream_description.source.database_source_description.database_source_authentication_configuration.secrets_manager_configuration.role_arn #=> String
    #   resp.delivery_stream_description.source.database_source_description.database_source_authentication_configuration.secrets_manager_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.source.database_source_description.database_source_vpc_configuration.vpc_endpoint_service_name #=> String
    #   resp.delivery_stream_description.destinations #=> Array
    #   resp.delivery_stream_description.destinations[0].destination_id #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_mode #=> String, one of "Disabled", "Enabled"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.s3_backup_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.catalog_id #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.database_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.table_name #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.region #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.schema_configuration.version_id #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.convert_dots_in_json_keys_to_underscores #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.case_insensitive #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.column_to_json_key_mappings #=> Hash
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.open_x_json_ser_de.column_to_json_key_mappings["NonEmptyStringWithoutWhitespace"] #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.hive_json_ser_de.timestamp_formats #=> Array
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.input_format_configuration.deserializer.hive_json_ser_de.timestamp_formats[0] #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.block_size_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.page_size_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.compression #=> String, one of "UNCOMPRESSED", "GZIP", "SNAPPY"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.enable_dictionary_compression #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.max_padding_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.parquet_ser_de.writer_version #=> String, one of "V1", "V2"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.stripe_size_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.block_size_bytes #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.row_index_stride #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.enable_padding #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.padding_tolerance #=> Float
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.compression #=> String, one of "NONE", "ZLIB", "SNAPPY"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_columns #=> Array
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_columns[0] #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.bloom_filter_false_positive_probability #=> Float
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.dictionary_key_threshold #=> Float
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.output_format_configuration.serializer.orc_ser_de.format_version #=> String, one of "V0_11", "V0_12"
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.data_format_conversion_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.dynamic_partitioning_configuration.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.dynamic_partitioning_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.file_extension #=> String
    #   resp.delivery_stream_description.destinations[0].extended_s3_destination_description.custom_time_zone #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cluster_jdbc_url #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.data_table_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.data_table_columns #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.copy_command.copy_options #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.username #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_mode #=> String, one of "Disabled", "Enabled"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.s3_backup_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.secrets_manager_configuration.secret_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.secrets_manager_configuration.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].redshift_destination_description.secrets_manager_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.domain_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cluster_endpoint #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.index_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.type_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.index_rotation_period #=> String, one of "NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_backup_mode #=> String, one of "FailedDocumentsOnly", "AllDocuments"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.subnet_ids #=> Array
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.subnet_ids[0] #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.security_group_ids #=> Array
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.security_group_ids[0] #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.vpc_configuration_description.vpc_id #=> String
    #   resp.delivery_stream_description.destinations[0].elasticsearch_destination_description.document_id_options.default_document_id_format #=> String, one of "FIREHOSE_DEFAULT", "NO_DOCUMENT_ID"
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.domain_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.cluster_endpoint #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.index_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.type_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.index_rotation_period #=> String, one of "NoRotation", "OneHour", "OneDay", "OneWeek", "OneMonth"
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_backup_mode #=> String, one of "FailedDocumentsOnly", "AllDocuments"
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.vpc_configuration_description.subnet_ids #=> Array
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.vpc_configuration_description.subnet_ids[0] #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.vpc_configuration_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.vpc_configuration_description.security_group_ids #=> Array
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.vpc_configuration_description.security_group_ids[0] #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.vpc_configuration_description.vpc_id #=> String
    #   resp.delivery_stream_description.destinations[0].amazonopensearchservice_destination_description.document_id_options.default_document_id_format #=> String, one of "FIREHOSE_DEFAULT", "NO_DOCUMENT_ID"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_endpoint #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_endpoint_type #=> String, one of "Raw", "Event"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_token #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.hec_acknowledgment_timeout_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_backup_mode #=> String, one of "FailedEventsOnly", "AllEvents"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.secrets_manager_configuration.secret_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.secrets_manager_configuration.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].splunk_destination_description.secrets_manager_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.endpoint_configuration.url #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.endpoint_configuration.name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.content_encoding #=> String, one of "NONE", "GZIP"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes #=> Array
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes[0].attribute_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.request_configuration.common_attributes[0].attribute_value #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_backup_mode #=> String, one of "FailedDataOnly", "AllData"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.secrets_manager_configuration.secret_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.secrets_manager_configuration.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].http_endpoint_destination_description.secrets_manager_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.account_url #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.user #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.database #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.schema #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.table #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.snowflake_role_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.snowflake_role_configuration.snowflake_role #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.data_loading_option #=> String, one of "JSON_MAPPING", "VARIANT_CONTENT_MAPPING", "VARIANT_CONTENT_AND_METADATA_MAPPING"
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.meta_data_column_name #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.content_column_name #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.snowflake_vpc_configuration.private_link_vpce_id #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_backup_mode #=> String, one of "FailedDataOnly", "AllData"
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.secrets_manager_configuration.secret_arn #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.secrets_manager_configuration.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.secrets_manager_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].snowflake_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.collection_endpoint #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.index_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_backup_mode #=> String, one of "FailedDocumentsOnly", "AllDocuments"
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.vpc_configuration_description.subnet_ids #=> Array
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.vpc_configuration_description.subnet_ids[0] #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.vpc_configuration_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.vpc_configuration_description.security_group_ids #=> Array
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.vpc_configuration_description.security_group_ids[0] #=> String
    #   resp.delivery_stream_description.destinations[0].amazon_open_search_serverless_destination_description.vpc_configuration_description.vpc_id #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.destination_table_configuration_list #=> Array
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.destination_table_configuration_list[0].destination_table_name #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.destination_table_configuration_list[0].destination_database_name #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.destination_table_configuration_list[0].unique_keys #=> Array
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.destination_table_configuration_list[0].unique_keys[0] #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.destination_table_configuration_list[0].partition_spec.identity #=> Array
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.destination_table_configuration_list[0].partition_spec.identity[0].source_name #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.destination_table_configuration_list[0].s3_error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.schema_evolution_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.table_creation_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.processing_configuration.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.processing_configuration.processors #=> Array
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.processing_configuration.processors[0].type #=> String, one of "RecordDeAggregation", "Decompression", "CloudWatchLogProcessing", "Lambda", "MetadataExtraction", "AppendDelimiterToRecord"
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.processing_configuration.processors[0].parameters #=> Array
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.processing_configuration.processors[0].parameters[0].parameter_name #=> String, one of "LambdaArn", "NumberOfRetries", "MetadataExtractionQuery", "JsonParsingEngine", "RoleArn", "BufferSizeInMBs", "BufferIntervalInSeconds", "SubRecordType", "Delimiter", "CompressionFormat", "DataMessageExtraction"
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.processing_configuration.processors[0].parameters[0].parameter_value #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_backup_mode #=> String, one of "FailedDataOnly", "AllData"
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.retry_options.duration_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.append_only #=> Boolean
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.catalog_configuration.catalog_arn #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.catalog_configuration.warehouse_location #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.role_arn #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.bucket_arn #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.prefix #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.error_output_prefix #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.buffering_hints.size_in_m_bs #=> Integer
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.buffering_hints.interval_in_seconds #=> Integer
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.compression_format #=> String, one of "UNCOMPRESSED", "GZIP", "ZIP", "Snappy", "HADOOP_SNAPPY"
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.encryption_configuration.no_encryption_config #=> String, one of "NoEncryption"
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.encryption_configuration.kms_encryption_config.awskms_key_arn #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.cloud_watch_logging_options.enabled #=> Boolean
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.cloud_watch_logging_options.log_group_name #=> String
    #   resp.delivery_stream_description.destinations[0].iceberg_destination_description.s3_destination_description.cloud_watch_logging_options.log_stream_name #=> String
    #   resp.delivery_stream_description.has_more_destinations #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/DescribeDeliveryStream AWS API Documentation
    #
    # @overload describe_delivery_stream(params = {})
    # @param [Hash] params ({})
    def describe_delivery_stream(params = {}, options = {})
      req = build_request(:describe_delivery_stream, params)
      req.send_request(options)
    end

    # Lists your Firehose streams in alphabetical order of their names.
    #
    # The number of Firehose streams might be too large to return using a
    # single call to `ListDeliveryStreams`. You can limit the number of
    # Firehose streams returned, using the `Limit` parameter. To determine
    # whether there are more delivery streams to list, check the value of
    # `HasMoreDeliveryStreams` in the output. If there are more Firehose
    # streams to list, you can request them by calling this operation again
    # and setting the `ExclusiveStartDeliveryStreamName` parameter to the
    # name of the last Firehose stream returned in the last call.
    #
    # @option params [Integer] :limit
    #   The maximum number of Firehose streams to list. The default value is
    #   10.
    #
    # @option params [String] :delivery_stream_type
    #   The Firehose stream type. This can be one of the following values:
    #
    #   * `DirectPut`: Provider applications access the Firehose stream
    #     directly.
    #
    #   * `KinesisStreamAsSource`: The Firehose stream uses a Kinesis data
    #     stream as a source.
    #
    #   This parameter is optional. If this parameter is omitted, Firehose
    #   streams of all types are returned.
    #
    # @option params [String] :exclusive_start_delivery_stream_name
    #   The list of Firehose streams returned by this call to
    #   `ListDeliveryStreams` will start with the Firehose stream whose name
    #   comes alphabetically immediately after the name you specify in
    #   `ExclusiveStartDeliveryStreamName`.
    #
    # @return [Types::ListDeliveryStreamsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListDeliveryStreamsOutput#delivery_stream_names #delivery_stream_names} => Array&lt;String&gt;
    #   * {Types::ListDeliveryStreamsOutput#has_more_delivery_streams #has_more_delivery_streams} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delivery_streams({
    #     limit: 1,
    #     delivery_stream_type: "DirectPut", # accepts DirectPut, KinesisStreamAsSource, MSKAsSource, DatabaseAsSource
    #     exclusive_start_delivery_stream_name: "DeliveryStreamName",
    #   })
    #
    # @example Response structure
    #
    #   resp.delivery_stream_names #=> Array
    #   resp.delivery_stream_names[0] #=> String
    #   resp.has_more_delivery_streams #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListDeliveryStreams AWS API Documentation
    #
    # @overload list_delivery_streams(params = {})
    # @param [Hash] params ({})
    def list_delivery_streams(params = {}, options = {})
      req = build_request(:list_delivery_streams, params)
      req.send_request(options)
    end

    # Lists the tags for the specified Firehose stream. This operation has a
    # limit of five transactions per second per account.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream whose tags you want to list.
    #
    # @option params [String] :exclusive_start_tag_key
    #   The key to use as the starting point for the list of tags. If you set
    #   this parameter, `ListTagsForDeliveryStream` gets all tags that occur
    #   after `ExclusiveStartTagKey`.
    #
    # @option params [Integer] :limit
    #   The number of tags to return. If this number is less than the total
    #   number of tags associated with the Firehose stream, `HasMoreTags` is
    #   set to `true` in the response. To list additional tags, set
    #   `ExclusiveStartTagKey` to the last key in the response.
    #
    # @return [Types::ListTagsForDeliveryStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForDeliveryStreamOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForDeliveryStreamOutput#has_more_tags #has_more_tags} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     exclusive_start_tag_key: "TagKey",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.has_more_tags #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/ListTagsForDeliveryStream AWS API Documentation
    #
    # @overload list_tags_for_delivery_stream(params = {})
    # @param [Hash] params ({})
    def list_tags_for_delivery_stream(params = {}, options = {})
      req = build_request(:list_tags_for_delivery_stream, params)
      req.send_request(options)
    end

    # Writes a single data record into an Firehose stream. To write multiple
    # data records into a Firehose stream, use PutRecordBatch. Applications
    # using these operations are referred to as producers.
    #
    # By default, each Firehose stream can take in up to 2,000 transactions
    # per second, 5,000 records per second, or 5 MB per second. If you use
    # PutRecord and PutRecordBatch, the limits are an aggregate across these
    # two operations for each Firehose stream. For more information about
    # limits and how to request an increase, see [Amazon Firehose
    # Limits][1].
    #
    # Firehose accumulates and publishes a particular metric for a customer
    # account in one minute intervals. It is possible that the bursts of
    # incoming bytes/records ingested to a Firehose stream last only for a
    # few seconds. Due to this, the actual spikes in the traffic might not
    # be fully visible in the customer's 1 minute CloudWatch metrics.
    #
    # You must specify the name of the Firehose stream and the data record
    # when using PutRecord. The data record consists of a data blob that can
    # be up to 1,000 KiB in size, and any kind of data. For example, it can
    # be a segment from a log file, geographic location data, website
    # clickstream data, and so on.
    #
    # For multi record de-aggregation, you can not put more than 500 records
    # even if the data blob length is less than 1000 KiB. If you include
    # more than 500 records, the request succeeds but the record
    # de-aggregation doesn't work as expected and transformation lambda is
    # invoked with the complete base64 encoded data blob instead of
    # de-aggregated base64 decoded records.
    #
    # Firehose buffers records before delivering them to the destination. To
    # disambiguate the data blobs at the destination, a common solution is
    # to use delimiters in the data, such as a newline (`\n`) or some other
    # character unique within the data. This allows the consumer application
    # to parse individual data items when reading the data from the
    # destination.
    #
    # The `PutRecord` operation returns a `RecordId`, which is a unique
    # string assigned to each record. Producer applications can use this ID
    # for purposes such as auditability and investigation.
    #
    # If the `PutRecord` operation throws a `ServiceUnavailableException`,
    # the API is automatically reinvoked (retried) 3 times. If the exception
    # persists, it is possible that the throughput limits have been exceeded
    # for the Firehose stream.
    #
    # Re-invoking the Put API operations (for example, PutRecord and
    # PutRecordBatch) can result in data duplicates. For larger data assets,
    # allow for a longer time out before retrying Put API operations.
    #
    # Data records sent to Firehose are stored for 24 hours from the time
    # they are added to a Firehose stream as it tries to send the records to
    # the destination. If the destination is unreachable for more than 24
    # hours, the data is no longer available.
    #
    # Don't concatenate two or more base64 strings to form the data fields
    # of your records. Instead, concatenate the raw data, then perform
    # base64 encoding.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/limits.html
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream.
    #
    # @option params [required, Types::Record] :record
    #   The record.
    #
    # @return [Types::PutRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRecordOutput#record_id #record_id} => String
    #   * {Types::PutRecordOutput#encrypted #encrypted} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     record: { # required
    #       data: "data", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.record_id #=> String
    #   resp.encrypted #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecord AWS API Documentation
    #
    # @overload put_record(params = {})
    # @param [Hash] params ({})
    def put_record(params = {}, options = {})
      req = build_request(:put_record, params)
      req.send_request(options)
    end

    # Writes multiple data records into a Firehose stream in a single call,
    # which can achieve higher throughput per producer than when writing
    # single records. To write single data records into a Firehose stream,
    # use PutRecord. Applications using these operations are referred to as
    # producers.
    #
    # Firehose accumulates and publishes a particular metric for a customer
    # account in one minute intervals. It is possible that the bursts of
    # incoming bytes/records ingested to a Firehose stream last only for a
    # few seconds. Due to this, the actual spikes in the traffic might not
    # be fully visible in the customer's 1 minute CloudWatch metrics.
    #
    # For information about service quota, see [Amazon Firehose Quota][1].
    #
    # Each PutRecordBatch request supports up to 500 records. Each record in
    # the request can be as large as 1,000 KB (before base64 encoding), up
    # to a limit of 4 MB for the entire request. These limits cannot be
    # changed.
    #
    # You must specify the name of the Firehose stream and the data record
    # when using PutRecord. The data record consists of a data blob that can
    # be up to 1,000 KB in size, and any kind of data. For example, it could
    # be a segment from a log file, geographic location data, website
    # clickstream data, and so on.
    #
    # For multi record de-aggregation, you can not put more than 500 records
    # even if the data blob length is less than 1000 KiB. If you include
    # more than 500 records, the request succeeds but the record
    # de-aggregation doesn't work as expected and transformation lambda is
    # invoked with the complete base64 encoded data blob instead of
    # de-aggregated base64 decoded records.
    #
    # Firehose buffers records before delivering them to the destination. To
    # disambiguate the data blobs at the destination, a common solution is
    # to use delimiters in the data, such as a newline (`\n`) or some other
    # character unique within the data. This allows the consumer application
    # to parse individual data items when reading the data from the
    # destination.
    #
    # The PutRecordBatch response includes a count of failed records,
    # `FailedPutCount`, and an array of responses, `RequestResponses`. Even
    # if the PutRecordBatch call succeeds, the value of `FailedPutCount` may
    # be greater than 0, indicating that there are records for which the
    # operation didn't succeed. Each entry in the `RequestResponses` array
    # provides additional information about the processed record. It
    # directly correlates with a record in the request array using the same
    # ordering, from the top to the bottom. The response array always
    # includes the same number of records as the request array.
    # `RequestResponses` includes both successfully and unsuccessfully
    # processed records. Firehose tries to process all records in each
    # PutRecordBatch request. A single record failure does not stop the
    # processing of subsequent records.
    #
    # A successfully processed record includes a `RecordId` value, which is
    # unique for the record. An unsuccessfully processed record includes
    # `ErrorCode` and `ErrorMessage` values. `ErrorCode` reflects the type
    # of error, and is one of the following values:
    # `ServiceUnavailableException` or `InternalFailure`. `ErrorMessage`
    # provides more detailed information about the error.
    #
    # If there is an internal server error or a timeout, the write might
    # have completed or it might have failed. If `FailedPutCount` is greater
    # than 0, retry the request, resending only those records that might
    # have failed processing. This minimizes the possible duplicate records
    # and also reduces the total bytes sent (and corresponding charges). We
    # recommend that you handle any duplicates at the destination.
    #
    # If PutRecordBatch throws `ServiceUnavailableException`, the API is
    # automatically reinvoked (retried) 3 times. If the exception persists,
    # it is possible that the throughput limits have been exceeded for the
    # Firehose stream.
    #
    # Re-invoking the Put API operations (for example, PutRecord and
    # PutRecordBatch) can result in data duplicates. For larger data assets,
    # allow for a longer time out before retrying Put API operations.
    #
    # Data records sent to Firehose are stored for 24 hours from the time
    # they are added to a Firehose stream as it attempts to send the records
    # to the destination. If the destination is unreachable for more than 24
    # hours, the data is no longer available.
    #
    # Don't concatenate two or more base64 strings to form the data fields
    # of your records. Instead, concatenate the raw data, then perform
    # base64 encoding.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/firehose/latest/dev/limits.html
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream.
    #
    # @option params [required, Array<Types::Record>] :records
    #   One or more records.
    #
    # @return [Types::PutRecordBatchOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRecordBatchOutput#failed_put_count #failed_put_count} => Integer
    #   * {Types::PutRecordBatchOutput#encrypted #encrypted} => Boolean
    #   * {Types::PutRecordBatchOutput#request_responses #request_responses} => Array&lt;Types::PutRecordBatchResponseEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record_batch({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     records: [ # required
    #       {
    #         data: "data", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_put_count #=> Integer
    #   resp.encrypted #=> Boolean
    #   resp.request_responses #=> Array
    #   resp.request_responses[0].record_id #=> String
    #   resp.request_responses[0].error_code #=> String
    #   resp.request_responses[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/PutRecordBatch AWS API Documentation
    #
    # @overload put_record_batch(params = {})
    # @param [Hash] params ({})
    def put_record_batch(params = {}, options = {})
      req = build_request(:put_record_batch, params)
      req.send_request(options)
    end

    # Enables server-side encryption (SSE) for the Firehose stream.
    #
    # This operation is asynchronous. It returns immediately. When you
    # invoke it, Firehose first sets the encryption status of the stream to
    # `ENABLING`, and then to `ENABLED`. The encryption status of a Firehose
    # stream is the `Status` property in
    # DeliveryStreamEncryptionConfiguration. If the operation fails, the
    # encryption status changes to `ENABLING_FAILED`. You can continue to
    # read and write data to your Firehose stream while the encryption
    # status is `ENABLING`, but the data is not encrypted. It can take up to
    # 5 seconds after the encryption status changes to `ENABLED` before all
    # records written to the Firehose stream are encrypted. To find out
    # whether a record or a batch of records was encrypted, check the
    # response elements PutRecordOutput$Encrypted and
    # PutRecordBatchOutput$Encrypted, respectively.
    #
    # To check the encryption status of a Firehose stream, use
    # DescribeDeliveryStream.
    #
    # Even if encryption is currently enabled for a Firehose stream, you can
    # still invoke this operation on it to change the ARN of the CMK or both
    # its type and ARN. If you invoke this method to change the CMK, and the
    # old CMK is of type `CUSTOMER_MANAGED_CMK`, Firehose schedules the
    # grant it had on the old CMK for retirement. If the new CMK is of type
    # `CUSTOMER_MANAGED_CMK`, Firehose creates a grant that enables it to
    # use the new CMK to encrypt and decrypt data and to manage the grant.
    #
    # For the KMS grant creation to be successful, the Firehose API
    # operations `StartDeliveryStreamEncryption` and `CreateDeliveryStream`
    # should not be called with session credentials that are more than 6
    # hours old.
    #
    # If a Firehose stream already has encryption enabled and then you
    # invoke this operation to change the ARN of the CMK or both its type
    # and ARN and you get `ENABLING_FAILED`, this only means that the
    # attempt to change the CMK failed. In this case, encryption remains
    # enabled with the old CMK.
    #
    # If the encryption status of your Firehose stream is `ENABLING_FAILED`,
    # you can invoke this operation again with a valid CMK. The CMK must be
    # enabled and the key policy mustn't explicitly deny the permission for
    # Firehose to invoke KMS encrypt and decrypt operations.
    #
    # You can enable SSE for a Firehose stream only if it's a Firehose
    # stream that uses `DirectPut` as its source.
    #
    # The `StartDeliveryStreamEncryption` and `StopDeliveryStreamEncryption`
    # operations have a combined limit of 25 calls per Firehose stream per
    # 24 hours. For example, you reach the limit if you call
    # `StartDeliveryStreamEncryption` 13 times and
    # `StopDeliveryStreamEncryption` 12 times for the same Firehose stream
    # in a 24-hour period.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream for which you want to enable
    #   server-side encryption (SSE).
    #
    # @option params [Types::DeliveryStreamEncryptionConfigurationInput] :delivery_stream_encryption_configuration_input
    #   Used to specify the type and Amazon Resource Name (ARN) of the KMS key
    #   needed for Server-Side Encryption (SSE).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_delivery_stream_encryption({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     delivery_stream_encryption_configuration_input: {
    #       key_arn: "AWSKMSKeyARN",
    #       key_type: "AWS_OWNED_CMK", # required, accepts AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StartDeliveryStreamEncryption AWS API Documentation
    #
    # @overload start_delivery_stream_encryption(params = {})
    # @param [Hash] params ({})
    def start_delivery_stream_encryption(params = {}, options = {})
      req = build_request(:start_delivery_stream_encryption, params)
      req.send_request(options)
    end

    # Disables server-side encryption (SSE) for the Firehose stream.
    #
    # This operation is asynchronous. It returns immediately. When you
    # invoke it, Firehose first sets the encryption status of the stream to
    # `DISABLING`, and then to `DISABLED`. You can continue to read and
    # write data to your stream while its status is `DISABLING`. It can take
    # up to 5 seconds after the encryption status changes to `DISABLED`
    # before all records written to the Firehose stream are no longer
    # subject to encryption. To find out whether a record or a batch of
    # records was encrypted, check the response elements
    # PutRecordOutput$Encrypted and PutRecordBatchOutput$Encrypted,
    # respectively.
    #
    # To check the encryption state of a Firehose stream, use
    # DescribeDeliveryStream.
    #
    # If SSE is enabled using a customer managed CMK and then you invoke
    # `StopDeliveryStreamEncryption`, Firehose schedules the related KMS
    # grant for retirement and then retires it after it ensures that it is
    # finished delivering records to the destination.
    #
    # The `StartDeliveryStreamEncryption` and `StopDeliveryStreamEncryption`
    # operations have a combined limit of 25 calls per Firehose stream per
    # 24 hours. For example, you reach the limit if you call
    # `StartDeliveryStreamEncryption` 13 times and
    # `StopDeliveryStreamEncryption` 12 times for the same Firehose stream
    # in a 24-hour period.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream for which you want to disable
    #   server-side encryption (SSE).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_delivery_stream_encryption({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/StopDeliveryStreamEncryption AWS API Documentation
    #
    # @overload stop_delivery_stream_encryption(params = {})
    # @param [Hash] params ({})
    def stop_delivery_stream_encryption(params = {}, options = {})
      req = build_request(:stop_delivery_stream_encryption, params)
      req.send_request(options)
    end

    # Adds or updates tags for the specified Firehose stream. A tag is a
    # key-value pair that you can define and assign to Amazon Web Services
    # resources. If you specify a tag that already exists, the tag value is
    # replaced with the value that you specify in the request. Tags are
    # metadata. For example, you can add friendly names and descriptions or
    # other types of information that can help you distinguish the Firehose
    # stream. For more information about tags, see [Using Cost Allocation
    # Tags][1] in the *Amazon Web Services Billing and Cost Management User
    # Guide*.
    #
    # Each Firehose stream can have up to 50 tags.
    #
    # This operation has a limit of five transactions per second per
    # account.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream to which you want to add the tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A set of key-value pairs to use to create the tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/TagDeliveryStream AWS API Documentation
    #
    # @overload tag_delivery_stream(params = {})
    # @param [Hash] params ({})
    def tag_delivery_stream(params = {}, options = {})
      req = build_request(:tag_delivery_stream, params)
      req.send_request(options)
    end

    # Removes tags from the specified Firehose stream. Removed tags are
    # deleted, and you can't recover them after this operation successfully
    # completes.
    #
    # If you specify a tag that doesn't exist, the operation ignores it.
    #
    # This operation has a limit of five transactions per second per
    # account.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. Each corresponding tag is removed from the
    #   delivery stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_delivery_stream({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UntagDeliveryStream AWS API Documentation
    #
    # @overload untag_delivery_stream(params = {})
    # @param [Hash] params ({})
    def untag_delivery_stream(params = {}, options = {})
      req = build_request(:untag_delivery_stream, params)
      req.send_request(options)
    end

    # Updates the specified destination of the specified Firehose stream.
    #
    # Use this operation to change the destination type (for example, to
    # replace the Amazon S3 destination with Amazon Redshift) or change the
    # parameters associated with a destination (for example, to change the
    # bucket name of the Amazon S3 destination). The update might not occur
    # immediately. The target Firehose stream remains active while the
    # configurations are updated, so data writes to the Firehose stream can
    # continue during this process. The updated configurations are usually
    # effective within a few minutes.
    #
    # Switching between Amazon OpenSearch Service and other services is not
    # supported. For an Amazon OpenSearch Service destination, you can only
    # update to another Amazon OpenSearch Service destination.
    #
    # If the destination type is the same, Firehose merges the configuration
    # parameters specified with the destination configuration that already
    # exists on the delivery stream. If any of the parameters are not
    # specified in the call, the existing values are retained. For example,
    # in the Amazon S3 destination, if EncryptionConfiguration is not
    # specified, then the existing `EncryptionConfiguration` is maintained
    # on the destination.
    #
    # If the destination type is not the same, for example, changing the
    # destination from Amazon S3 to Amazon Redshift, Firehose does not merge
    # any parameters. In this case, all parameters must be specified.
    #
    # Firehose uses `CurrentDeliveryStreamVersionId` to avoid race
    # conditions and conflicting merges. This is a required field, and the
    # service updates the configuration only if the existing configuration
    # has a version ID that matches. After the update is applied
    # successfully, the version ID is updated, and can be retrieved using
    # DescribeDeliveryStream. Use the new version ID to set
    # `CurrentDeliveryStreamVersionId` in the next call.
    #
    # @option params [required, String] :delivery_stream_name
    #   The name of the Firehose stream.
    #
    # @option params [required, String] :current_delivery_stream_version_id
    #   Obtain this value from the `VersionId` result of
    #   DeliveryStreamDescription. This value is required, and helps the
    #   service perform conditional operations. For example, if there is an
    #   interleaving update and this value is null, then the update
    #   destination fails. After the update is successful, the `VersionId`
    #   value is updated. The service then performs a merge of the old
    #   configuration with the new configuration.
    #
    # @option params [required, String] :destination_id
    #   The ID of the destination.
    #
    # @option params [Types::S3DestinationUpdate] :s3_destination_update
    #   \[Deprecated\] Describes an update for a destination in Amazon S3.
    #
    # @option params [Types::ExtendedS3DestinationUpdate] :extended_s3_destination_update
    #   Describes an update for a destination in Amazon S3.
    #
    # @option params [Types::RedshiftDestinationUpdate] :redshift_destination_update
    #   Describes an update for a destination in Amazon Redshift.
    #
    # @option params [Types::ElasticsearchDestinationUpdate] :elasticsearch_destination_update
    #   Describes an update for a destination in Amazon OpenSearch Service.
    #
    # @option params [Types::AmazonopensearchserviceDestinationUpdate] :amazonopensearchservice_destination_update
    #   Describes an update for a destination in Amazon OpenSearch Service.
    #
    # @option params [Types::SplunkDestinationUpdate] :splunk_destination_update
    #   Describes an update for a destination in Splunk.
    #
    # @option params [Types::HttpEndpointDestinationUpdate] :http_endpoint_destination_update
    #   Describes an update to the specified HTTP endpoint destination.
    #
    # @option params [Types::AmazonOpenSearchServerlessDestinationUpdate] :amazon_open_search_serverless_destination_update
    #   Describes an update for a destination in the Serverless offering for
    #   Amazon OpenSearch Service.
    #
    # @option params [Types::SnowflakeDestinationUpdate] :snowflake_destination_update
    #   Update to the Snowflake destination configuration settings.
    #
    # @option params [Types::IcebergDestinationUpdate] :iceberg_destination_update
    #   Describes an update for a destination in Apache Iceberg Tables.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_destination({
    #     delivery_stream_name: "DeliveryStreamName", # required
    #     current_delivery_stream_version_id: "DeliveryStreamVersionId", # required
    #     destination_id: "DestinationId", # required
    #     s3_destination_update: {
    #       role_arn: "RoleARN",
    #       bucket_arn: "BucketARN",
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     extended_s3_destination_update: {
    #       role_arn: "RoleARN",
    #       bucket_arn: "BucketARN",
    #       prefix: "Prefix",
    #       error_output_prefix: "ErrorOutputPrefix",
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #       encryption_configuration: {
    #         no_encryption_config: "NoEncryption", # accepts NoEncryption
    #         kms_encryption_config: {
    #           awskms_key_arn: "AWSKMSKeyARN", # required
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #       s3_backup_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       data_format_conversion_configuration: {
    #         schema_configuration: {
    #           role_arn: "NonEmptyStringWithoutWhitespace",
    #           catalog_id: "NonEmptyStringWithoutWhitespace",
    #           database_name: "NonEmptyStringWithoutWhitespace",
    #           table_name: "NonEmptyStringWithoutWhitespace",
    #           region: "NonEmptyStringWithoutWhitespace",
    #           version_id: "NonEmptyStringWithoutWhitespace",
    #         },
    #         input_format_configuration: {
    #           deserializer: {
    #             open_x_json_ser_de: {
    #               convert_dots_in_json_keys_to_underscores: false,
    #               case_insensitive: false,
    #               column_to_json_key_mappings: {
    #                 "NonEmptyStringWithoutWhitespace" => "NonEmptyString",
    #               },
    #             },
    #             hive_json_ser_de: {
    #               timestamp_formats: ["NonEmptyString"],
    #             },
    #           },
    #         },
    #         output_format_configuration: {
    #           serializer: {
    #             parquet_ser_de: {
    #               block_size_bytes: 1,
    #               page_size_bytes: 1,
    #               compression: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, SNAPPY
    #               enable_dictionary_compression: false,
    #               max_padding_bytes: 1,
    #               writer_version: "V1", # accepts V1, V2
    #             },
    #             orc_ser_de: {
    #               stripe_size_bytes: 1,
    #               block_size_bytes: 1,
    #               row_index_stride: 1,
    #               enable_padding: false,
    #               padding_tolerance: 1.0,
    #               compression: "NONE", # accepts NONE, ZLIB, SNAPPY
    #               bloom_filter_columns: ["NonEmptyStringWithoutWhitespace"],
    #               bloom_filter_false_positive_probability: 1.0,
    #               dictionary_key_threshold: 1.0,
    #               format_version: "V0_11", # accepts V0_11, V0_12
    #             },
    #           },
    #         },
    #         enabled: false,
    #       },
    #       dynamic_partitioning_configuration: {
    #         retry_options: {
    #           duration_in_seconds: 1,
    #         },
    #         enabled: false,
    #       },
    #       file_extension: "FileExtension",
    #       custom_time_zone: "CustomTimeZone",
    #     },
    #     redshift_destination_update: {
    #       role_arn: "RoleARN",
    #       cluster_jdbc_url: "ClusterJDBCURL",
    #       copy_command: {
    #         data_table_name: "DataTableName", # required
    #         data_table_columns: "DataTableColumns",
    #         copy_options: "CopyOptions",
    #       },
    #       username: "Username",
    #       password: "Password",
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "Disabled", # accepts Disabled, Enabled
    #       s3_backup_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #     },
    #     elasticsearch_destination_update: {
    #       role_arn: "RoleARN",
    #       domain_arn: "ElasticsearchDomainARN",
    #       cluster_endpoint: "ElasticsearchClusterEndpoint",
    #       index_name: "ElasticsearchIndexName",
    #       type_name: "ElasticsearchTypeName",
    #       index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       document_id_options: {
    #         default_document_id_format: "FIREHOSE_DEFAULT", # required, accepts FIREHOSE_DEFAULT, NO_DOCUMENT_ID
    #       },
    #     },
    #     amazonopensearchservice_destination_update: {
    #       role_arn: "RoleARN",
    #       domain_arn: "AmazonopensearchserviceDomainARN",
    #       cluster_endpoint: "AmazonopensearchserviceClusterEndpoint",
    #       index_name: "AmazonopensearchserviceIndexName",
    #       type_name: "AmazonopensearchserviceTypeName",
    #       index_rotation_period: "NoRotation", # accepts NoRotation, OneHour, OneDay, OneWeek, OneMonth
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       document_id_options: {
    #         default_document_id_format: "FIREHOSE_DEFAULT", # required, accepts FIREHOSE_DEFAULT, NO_DOCUMENT_ID
    #       },
    #     },
    #     splunk_destination_update: {
    #       hec_endpoint: "HECEndpoint",
    #       hec_endpoint_type: "Raw", # accepts Raw, Event
    #       hec_token: "HECToken",
    #       hec_acknowledgment_timeout_in_seconds: 1,
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedEventsOnly", # accepts FailedEventsOnly, AllEvents
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #     },
    #     http_endpoint_destination_update: {
    #       endpoint_configuration: {
    #         url: "HttpEndpointUrl", # required
    #         name: "HttpEndpointName",
    #         access_key: "HttpEndpointAccessKey",
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       request_configuration: {
    #         content_encoding: "NONE", # accepts NONE, GZIP
    #         common_attributes: [
    #           {
    #             attribute_name: "HttpEndpointAttributeName", # required
    #             attribute_value: "HttpEndpointAttributeValue", # required
    #           },
    #         ],
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       role_arn: "RoleARN",
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #     },
    #     amazon_open_search_serverless_destination_update: {
    #       role_arn: "RoleARN",
    #       collection_endpoint: "AmazonOpenSearchServerlessCollectionEndpoint",
    #       index_name: "AmazonOpenSearchServerlessIndexName",
    #       buffering_hints: {
    #         interval_in_seconds: 1,
    #         size_in_m_bs: 1,
    #       },
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #     },
    #     snowflake_destination_update: {
    #       account_url: "SnowflakeAccountUrl",
    #       private_key: "SnowflakePrivateKey",
    #       key_passphrase: "SnowflakeKeyPassphrase",
    #       user: "SnowflakeUser",
    #       database: "SnowflakeDatabase",
    #       schema: "SnowflakeSchema",
    #       table: "SnowflakeTable",
    #       snowflake_role_configuration: {
    #         enabled: false,
    #         snowflake_role: "SnowflakeRole",
    #       },
    #       data_loading_option: "JSON_MAPPING", # accepts JSON_MAPPING, VARIANT_CONTENT_MAPPING, VARIANT_CONTENT_AND_METADATA_MAPPING
    #       meta_data_column_name: "SnowflakeMetaDataColumnName",
    #       content_column_name: "SnowflakeContentColumnName",
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       role_arn: "RoleARN",
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #       s3_update: {
    #         role_arn: "RoleARN",
    #         bucket_arn: "BucketARN",
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #       secrets_manager_configuration: {
    #         secret_arn: "SecretARN",
    #         role_arn: "RoleARN",
    #         enabled: false, # required
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #     },
    #     iceberg_destination_update: {
    #       destination_table_configuration_list: [
    #         {
    #           destination_table_name: "StringWithLettersDigitsUnderscoresDots", # required
    #           destination_database_name: "StringWithLettersDigitsUnderscoresDots", # required
    #           unique_keys: ["NonEmptyStringWithoutWhitespace"],
    #           partition_spec: {
    #             identity: [
    #               {
    #                 source_name: "NonEmptyStringWithoutWhitespace", # required
    #               },
    #             ],
    #           },
    #           s3_error_output_prefix: "ErrorOutputPrefix",
    #         },
    #       ],
    #       schema_evolution_configuration: {
    #         enabled: false, # required
    #       },
    #       table_creation_configuration: {
    #         enabled: false, # required
    #       },
    #       buffering_hints: {
    #         size_in_m_bs: 1,
    #         interval_in_seconds: 1,
    #       },
    #       cloud_watch_logging_options: {
    #         enabled: false,
    #         log_group_name: "LogGroupName",
    #         log_stream_name: "LogStreamName",
    #       },
    #       processing_configuration: {
    #         enabled: false,
    #         processors: [
    #           {
    #             type: "RecordDeAggregation", # required, accepts RecordDeAggregation, Decompression, CloudWatchLogProcessing, Lambda, MetadataExtraction, AppendDelimiterToRecord
    #             parameters: [
    #               {
    #                 parameter_name: "LambdaArn", # required, accepts LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter, CompressionFormat, DataMessageExtraction
    #                 parameter_value: "ProcessorParameterValue", # required
    #               },
    #             ],
    #           },
    #         ],
    #       },
    #       s3_backup_mode: "FailedDataOnly", # accepts FailedDataOnly, AllData
    #       retry_options: {
    #         duration_in_seconds: 1,
    #       },
    #       role_arn: "RoleARN",
    #       append_only: false,
    #       catalog_configuration: {
    #         catalog_arn: "GlueDataCatalogARN",
    #         warehouse_location: "WarehouseLocation",
    #       },
    #       s3_configuration: {
    #         role_arn: "RoleARN", # required
    #         bucket_arn: "BucketARN", # required
    #         prefix: "Prefix",
    #         error_output_prefix: "ErrorOutputPrefix",
    #         buffering_hints: {
    #           size_in_m_bs: 1,
    #           interval_in_seconds: 1,
    #         },
    #         compression_format: "UNCOMPRESSED", # accepts UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY
    #         encryption_configuration: {
    #           no_encryption_config: "NoEncryption", # accepts NoEncryption
    #           kms_encryption_config: {
    #             awskms_key_arn: "AWSKMSKeyARN", # required
    #           },
    #         },
    #         cloud_watch_logging_options: {
    #           enabled: false,
    #           log_group_name: "LogGroupName",
    #           log_stream_name: "LogStreamName",
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/firehose-2015-08-04/UpdateDestination AWS API Documentation
    #
    # @overload update_destination(params = {})
    # @param [Hash] params ({})
    def update_destination(params = {}, options = {})
      req = build_request(:update_destination, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Firehose')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-firehose'
      context[:gem_version] = '1.88.0'
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
