# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length'
require 'aws-sdk-core/plugins/credentials_configuration'
require 'aws-sdk-core/plugins/logging'
require 'aws-sdk-core/plugins/param_converter'
require 'aws-sdk-core/plugins/param_validator'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/helpful_socket_errors'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/regional_endpoint'
require 'aws-sdk-core/plugins/endpoint_discovery'
require 'aws-sdk-core/plugins/endpoint_pattern'
require 'aws-sdk-core/plugins/response_paging'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/idempotency_token'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/jsonvalue_converter'
require 'aws-sdk-core/plugins/client_metrics_plugin'
require 'aws-sdk-core/plugins/client_metrics_send_plugin'
require 'aws-sdk-core/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/http_checksum'
require 'aws-sdk-core/plugins/checksum_algorithm'
require 'aws-sdk-core/plugins/request_compression'
require 'aws-sdk-core/plugins/defaults_mode'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/telemetry'
require 'aws-sdk-core/plugins/sign'
require 'aws-sdk-core/plugins/protocols/rest_json'

module Aws::S3Vectors
  # An API client for S3Vectors.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::S3Vectors::Client.new(
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

    @identifier = :s3vectors

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
    add_plugin(Aws::S3Vectors::Plugins::Endpoints)

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
    #     When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
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
    #   @option options [Aws::S3Vectors::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::S3Vectors::EndpointParameters`.
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

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Creates a vector index within a vector bucket. To specify the vector
    # bucket, you must use either the vector bucket name or the vector
    # bucket Amazon Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:CreateIndex` permission to use this
    #   operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket to create the vector index in.
    #
    # @option params [String] :vector_bucket_arn
    #   The Amazon Resource Name (ARN) of the vector bucket to create the
    #   vector index in.
    #
    # @option params [required, String] :index_name
    #   The name of the vector index to create.
    #
    # @option params [required, String] :data_type
    #   The data type of the vectors to be inserted into the vector index.
    #
    # @option params [required, Integer] :dimension
    #   The dimensions of the vectors to be inserted into the vector index.
    #
    # @option params [required, String] :distance_metric
    #   The distance metric to be used for similarity search.
    #
    # @option params [Types::MetadataConfiguration] :metadata_configuration
    #   The metadata configuration for the vector index.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_index({
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #     index_name: "IndexName", # required
    #     data_type: "float32", # required, accepts float32
    #     dimension: 1, # required
    #     distance_metric: "euclidean", # required, accepts euclidean, cosine
    #     metadata_configuration: {
    #       non_filterable_metadata_keys: ["MetadataKey"], # required
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/CreateIndex AWS API Documentation
    #
    # @overload create_index(params = {})
    # @param [Hash] params ({})
    def create_index(params = {}, options = {})
      req = build_request(:create_index, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Creates a vector bucket in the Amazon Web Services Region that you
    # want your bucket to be in.
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:CreateVectorBucket` permission to use
    #   this operation.
    #
    # @option params [required, String] :vector_bucket_name
    #   The name of the vector bucket to create.
    #
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   The encryption configuration for the vector bucket. By default, if you
    #   don't specify, all new vectors in Amazon S3 vector buckets use
    #   server-side encryption with Amazon S3 managed keys (SSE-S3),
    #   specifically `AES256`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vector_bucket({
    #     vector_bucket_name: "VectorBucketName", # required
    #     encryption_configuration: {
    #       sse_type: "AES256", # accepts AES256, aws:kms
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/CreateVectorBucket AWS API Documentation
    #
    # @overload create_vector_bucket(params = {})
    # @param [Hash] params ({})
    def create_vector_bucket(params = {}, options = {})
      req = build_request(:create_vector_bucket, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Deletes a vector index. To specify the vector index, you can either
    # use both the vector bucket name and vector index name, or use the
    # vector index Amazon Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:DeleteIndex` permission to use this
    #   operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #
    # @option params [String] :index_name
    #   The name of the vector index to delete.
    #
    # @option params [String] :index_arn
    #   The ARN of the vector index to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_index({
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteIndex AWS API Documentation
    #
    # @overload delete_index(params = {})
    # @param [Hash] params ({})
    def delete_index(params = {}, options = {})
      req = build_request(:delete_index, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Deletes a vector bucket. All vector indexes in the vector bucket must
    # be deleted before the vector bucket can be deleted. To perform this
    # operation, you must use either the vector bucket name or the vector
    # bucket Amazon Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:DeleteVectorBucket` permission to use
    #   this operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket to delete.
    #
    # @option params [String] :vector_bucket_arn
    #   The ARN of the vector bucket to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vector_bucket({
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectorBucket AWS API Documentation
    #
    # @overload delete_vector_bucket(params = {})
    # @param [Hash] params ({})
    def delete_vector_bucket(params = {}, options = {})
      req = build_request(:delete_vector_bucket, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Deletes a vector bucket policy. To specify the bucket, you must use
    # either the vector bucket name or the vector bucket Amazon Resource
    # Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:DeleteVectorBucketPolicy` permission to
    #   use this operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket to delete the policy from.
    #
    # @option params [String] :vector_bucket_arn
    #   The ARN of the vector bucket to delete the policy from.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vector_bucket_policy({
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectorBucketPolicy AWS API Documentation
    #
    # @overload delete_vector_bucket_policy(params = {})
    # @param [Hash] params ({})
    def delete_vector_bucket_policy(params = {}, options = {})
      req = build_request(:delete_vector_bucket_policy, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Deletes one or more vectors in a vector index. To specify the vector
    # index, you can either use both the vector bucket name and vector index
    # name, or use the vector index Amazon Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:DeleteVectors` permission to use this
    #   operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #
    # @option params [String] :index_name
    #   The name of the vector index that contains a vector you want to
    #   delete.
    #
    # @option params [String] :index_arn
    #   The ARN of the vector index that contains a vector you want to delete.
    #
    # @option params [required, Array<String>] :keys
    #   The keys of the vectors to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vectors({
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     keys: ["VectorKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/DeleteVectors AWS API Documentation
    #
    # @overload delete_vectors(params = {})
    # @param [Hash] params ({})
    def delete_vectors(params = {}, options = {})
      req = build_request(:delete_vectors, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Returns vector index attributes. To specify the vector index, you can
    # either use both the vector bucket name and the vector index name, or
    # use the vector index Amazon Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:GetIndex` permission to use this
    #   operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #
    # @option params [String] :index_name
    #   The name of the vector index.
    #
    # @option params [String] :index_arn
    #   The ARN of the vector index.
    #
    # @return [Types::GetIndexOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIndexOutput#index #index} => Types::Index
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_index({
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.index.vector_bucket_name #=> String
    #   resp.index.index_name #=> String
    #   resp.index.index_arn #=> String
    #   resp.index.creation_time #=> Time
    #   resp.index.data_type #=> String, one of "float32"
    #   resp.index.dimension #=> Integer
    #   resp.index.distance_metric #=> String, one of "euclidean", "cosine"
    #   resp.index.metadata_configuration.non_filterable_metadata_keys #=> Array
    #   resp.index.metadata_configuration.non_filterable_metadata_keys[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetIndex AWS API Documentation
    #
    # @overload get_index(params = {})
    # @param [Hash] params ({})
    def get_index(params = {}, options = {})
      req = build_request(:get_index, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Returns vector bucket attributes. To specify the bucket, you must use
    # either the vector bucket name or the vector bucket Amazon Resource
    # Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:GetVectorBucket` permission to use this
    #   operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket to retrieve information about.
    #
    # @option params [String] :vector_bucket_arn
    #   The ARN of the vector bucket to retrieve information about.
    #
    # @return [Types::GetVectorBucketOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVectorBucketOutput#vector_bucket #vector_bucket} => Types::VectorBucket
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vector_bucket({
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.vector_bucket.vector_bucket_name #=> String
    #   resp.vector_bucket.vector_bucket_arn #=> String
    #   resp.vector_bucket.creation_time #=> Time
    #   resp.vector_bucket.encryption_configuration.sse_type #=> String, one of "AES256", "aws:kms"
    #   resp.vector_bucket.encryption_configuration.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectorBucket AWS API Documentation
    #
    # @overload get_vector_bucket(params = {})
    # @param [Hash] params ({})
    def get_vector_bucket(params = {}, options = {})
      req = build_request(:get_vector_bucket, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Gets details about a vector bucket policy. To specify the bucket, you
    # must use either the vector bucket name or the vector bucket Amazon
    # Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:GetVectorBucketPolicy` permission to
    #   use this operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket.
    #
    # @option params [String] :vector_bucket_arn
    #   The ARN of the vector bucket.
    #
    # @return [Types::GetVectorBucketPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVectorBucketPolicyOutput#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vector_bucket_policy({
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectorBucketPolicy AWS API Documentation
    #
    # @overload get_vector_bucket_policy(params = {})
    # @param [Hash] params ({})
    def get_vector_bucket_policy(params = {}, options = {})
      req = build_request(:get_vector_bucket_policy, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Returns vector attributes. To specify the vector index, you can
    # either
    # use both the vector bucket name and the vector index name, or use the
    # vector index Amazon Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:GetVectors` permission to use this
    #   operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #
    # @option params [String] :index_name
    #   The name of the vector index.
    #
    # @option params [String] :index_arn
    #   The ARN of the vector index.
    #
    # @option params [required, Array<String>] :keys
    #   The names of the vectors you want to return attributes for.
    #
    # @option params [Boolean] :return_data
    #   Indicates whether to include the vector data in the response. The
    #   default value is `false`.
    #
    # @option params [Boolean] :return_metadata
    #   Indicates whether to include metadata in the response. The default
    #   value is `false`.
    #
    # @return [Types::GetVectorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVectorsOutput#vectors #vectors} => Array&lt;Types::GetOutputVector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vectors({
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     keys: ["VectorKey"], # required
    #     return_data: false,
    #     return_metadata: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vectors #=> Array
    #   resp.vectors[0].key #=> String
    #   resp.vectors[0].data.float32 #=> Array
    #   resp.vectors[0].data.float32[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/GetVectors AWS API Documentation
    #
    # @overload get_vectors(params = {})
    # @param [Hash] params ({})
    def get_vectors(params = {}, options = {})
      req = build_request(:get_vectors, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Returns a list of all the vector indexes within the specified vector
    # bucket. To specify the bucket, you must use either the vector bucket
    # name or the vector bucket Amazon Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:ListIndexes` permission to use this
    #   operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket that contains the vector indexes.
    #
    # @option params [String] :vector_bucket_arn
    #   The ARN of the vector bucket that contains the vector indexes.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to be returned in the response.
    #
    # @option params [String] :next_token
    #   The previous pagination token.
    #
    # @option params [String] :prefix
    #   Limits the response to vector indexes that begin with the specified
    #   prefix.
    #
    # @return [Types::ListIndexesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIndexesOutput#next_token #next_token} => String
    #   * {Types::ListIndexesOutput#indexes #indexes} => Array&lt;Types::IndexSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indexes({
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #     max_results: 1,
    #     next_token: "ListIndexesNextToken",
    #     prefix: "ListIndexesPrefix",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.indexes #=> Array
    #   resp.indexes[0].vector_bucket_name #=> String
    #   resp.indexes[0].index_name #=> String
    #   resp.indexes[0].index_arn #=> String
    #   resp.indexes[0].creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListIndexes AWS API Documentation
    #
    # @overload list_indexes(params = {})
    # @param [Hash] params ({})
    def list_indexes(params = {}, options = {})
      req = build_request(:list_indexes, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Returns a list of all the vector buckets that are owned by the
    # authenticated sender of the request.
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:ListVectorBuckets` permission to use
    #   this operation.
    #
    # @option params [Integer] :max_results
    #   The maximum number of vector buckets to be returned in the response.
    #
    # @option params [String] :next_token
    #   The previous pagination token.
    #
    # @option params [String] :prefix
    #   Limits the response to vector buckets that begin with the specified
    #   prefix.
    #
    # @return [Types::ListVectorBucketsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVectorBucketsOutput#next_token #next_token} => String
    #   * {Types::ListVectorBucketsOutput#vector_buckets #vector_buckets} => Array&lt;Types::VectorBucketSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vector_buckets({
    #     max_results: 1,
    #     next_token: "ListVectorBucketsNextToken",
    #     prefix: "ListVectorBucketsPrefix",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.vector_buckets #=> Array
    #   resp.vector_buckets[0].vector_bucket_name #=> String
    #   resp.vector_buckets[0].vector_bucket_arn #=> String
    #   resp.vector_buckets[0].creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListVectorBuckets AWS API Documentation
    #
    # @overload list_vector_buckets(params = {})
    # @param [Hash] params ({})
    def list_vector_buckets(params = {}, options = {})
      req = build_request(:list_vector_buckets, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  List vectors in the specified vector index. To specify the vector
    # index, you can either use both the vector bucket name and the vector
    # index name, or use the vector index Amazon Resource Name (ARN).
    #
    #  `ListVectors` operations proceed sequentially; however, for faster
    # performance on a large number of vectors in a vector index,
    # applications can request a parallel `ListVectors` operation by
    # providing the `segmentCount` and `segmentIndex` parameters.
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:ListVectors` permission to use this
    #   operation. Additional permissions are required based on the request
    #   parameters you specify:
    #
    #   * With only `s3vectors:ListVectors` permission, you can list vector
    #     keys when `returnData` and `returnMetadata` are both set to false
    #     or not specified..
    #
    #   * If you set `returnData` or `returnMetadata` to true, you must have
    #     both `s3vectors:ListVectors` and `s3vectors:GetVectors`
    #     permissions. The request fails with a `403 Forbidden` error if you
    #     request vector data or metadata without the `s3vectors:GetVectors`
    #     permission.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket.
    #
    # @option params [String] :index_name
    #   The name of the vector index.
    #
    # @option params [String] :index_arn
    #   The Amazon resource Name (ARN) of the vector index.
    #
    # @option params [Integer] :max_results
    #   The maximum number of vectors to return on a page.
    #
    #   If you don't specify `maxResults`, the `ListVectors` operation uses a
    #   default value of 500.
    #
    #   If the processed dataset size exceeds 1 MB before reaching the
    #   `maxResults` value, the operation stops and returns the vectors that
    #   are retrieved up to that point, along with a `nextToken` that you can
    #   use in a subsequent request to retrieve the next set of results.
    #
    # @option params [String] :next_token
    #   Pagination token from a previous request. The value of this field is
    #   empty for an initial request.
    #
    # @option params [Integer] :segment_count
    #   For a parallel `ListVectors` request, `segmentCount` represents the
    #   total number of vector segments into which the `ListVectors` operation
    #   will be divided. The value of `segmentCount` corresponds to the number
    #   of application workers that will perform the parallel `ListVectors`
    #   operation. For example, if you want to use four application threads to
    #   list vectors in a vector index, specify a `segmentCount` value of 4.
    #
    #   If you specify a `segmentCount` value of 1, the `ListVectors`
    #   operation will be sequential rather than parallel.
    #
    #   If you specify `segmentCount`, you must also specify `segmentIndex`.
    #
    # @option params [Integer] :segment_index
    #   For a parallel `ListVectors` request, `segmentIndex` is the index of
    #   the segment from which to list vectors in the current request. It
    #   identifies an individual segment to be listed by an application
    #   worker.
    #
    #   Segment IDs are zero-based, so the first segment is always 0. For
    #   example, if you want to use four application threads to list vectors
    #   in a vector index, then the first thread specifies a `segmentIndex`
    #   value of 0, the second thread specifies 1, and so on.
    #
    #   The value of `segmentIndex` must be less than the value provided for
    #   `segmentCount`.
    #
    #   If you provide `segmentIndex`, you must also provide `segmentCount`.
    #
    # @option params [Boolean] :return_data
    #   If true, the vector data of each vector will be included in the
    #   response. The default value is `false`.
    #
    # @option params [Boolean] :return_metadata
    #   If true, the metadata associated with each vector will be included in
    #   the response. The default value is `false`.
    #
    # @return [Types::ListVectorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVectorsOutput#next_token #next_token} => String
    #   * {Types::ListVectorsOutput#vectors #vectors} => Array&lt;Types::ListOutputVector&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vectors({
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     max_results: 1,
    #     next_token: "ListVectorsNextToken",
    #     segment_count: 1,
    #     segment_index: 1,
    #     return_data: false,
    #     return_metadata: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.vectors #=> Array
    #   resp.vectors[0].key #=> String
    #   resp.vectors[0].data.float32 #=> Array
    #   resp.vectors[0].data.float32[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/ListVectors AWS API Documentation
    #
    # @overload list_vectors(params = {})
    # @param [Hash] params ({})
    def list_vectors(params = {}, options = {})
      req = build_request(:list_vectors, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Creates a bucket policy for a vector bucket. To specify the bucket,
    # you must use either the vector bucket name or the vector bucket Amazon
    # Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:PutVectorBucketPolicy` permission to
    #   use this operation.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket.
    #
    # @option params [String] :vector_bucket_arn
    #   The Amazon Resource Name (ARN) of the vector bucket.
    #
    # @option params [required, String] :policy
    #   The `JSON` that defines the policy. For more information about bucket
    #   policies for S3 Vectors, see [Managing vector bucket policies][1] in
    #   the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-bucket-policy.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_vector_bucket_policy({
    #     vector_bucket_name: "VectorBucketName",
    #     vector_bucket_arn: "VectorBucketArn",
    #     policy: "VectorBucketPolicy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/PutVectorBucketPolicy AWS API Documentation
    #
    # @overload put_vector_bucket_policy(params = {})
    # @param [Hash] params ({})
    def put_vector_bucket_policy(params = {}, options = {})
      req = build_request(:put_vector_bucket_policy, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Adds one or more vectors to a vector index. To specify the vector
    # index, you can either use both the vector bucket name and the vector
    # index name, or use the vector index Amazon Resource Name (ARN).
    #
    #  For more information about limits, see [Limitations and
    # restrictions][1] in the *Amazon S3 User Guide*.
    #
    #  <note markdown="1"> When inserting vector data into your vector
    # index, you must provide
    # the vector data as `float32` (32-bit floating point) values. If you
    # pass higher-precision values to an Amazon Web Services SDK, S3 Vectors
    # converts the values to 32-bit floating point before storing them, and
    # `GetVectors`, `ListVectors`, and `QueryVectors` operations return the
    # float32 values. Different Amazon Web Services SDKs may have different
    # default numeric types, so ensure your vectors are properly formatted
    # as `float32` values regardless of which SDK you're using. For
    # example, in Python, use `numpy.float32` or explicitly cast your
    # values.
    #
    #  </note>
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:PutVectors` permission to use this
    #   operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-limitations.html
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #
    # @option params [String] :index_name
    #   The name of the vector index where you want to write vectors.
    #
    # @option params [String] :index_arn
    #   The ARN of the vector index where you want to write vectors.
    #
    # @option params [required, Array<Types::PutInputVector>] :vectors
    #   The vectors to add to a vector index. The number of vectors in a
    #   single request must not exceed the resource capacity, otherwise the
    #   request will be rejected with the error `ServiceUnavailableException`
    #   with the error message "Currently unable to handle the request".
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_vectors({
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     vectors: [ # required
    #       {
    #         key: "VectorKey", # required
    #         data: { # required
    #           float32: [1.0],
    #         },
    #         metadata: {
    #         },
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/PutVectors AWS API Documentation
    #
    # @overload put_vectors(params = {})
    # @param [Hash] params ({})
    def put_vectors(params = {}, options = {})
      req = build_request(:put_vectors, params)
      req.send_request(options)
    end

    # <note markdown="1"> Amazon S3 Vectors is in preview release for Amazon
    # S3 and is subject
    # to change.
    #
    #  </note>
    #
    #  Performs an approximate nearest neighbor search query in a vector
    # index using a query vector. By default, it returns the keys of
    # approximate nearest neighbors. You can optionally include the computed
    # distance (between the query vector and each vector in the response),
    # the vector data, and metadata of each vector in the response.
    #
    #  To specify the vector index, you can either use both the vector
    # bucket
    # name and the vector index name, or use the vector index Amazon
    # Resource Name (ARN).
    #
    #  Permissions
    #
    # \: You must have the `s3vectors:QueryVectors` permission to use this
    #   operation. Additional permissions are required based on the request
    #   parameters you specify:
    #
    #   * With only `s3vectors:QueryVectors` permission, you can retrieve
    #     vector keys of approximate nearest neighbors and computed
    #     distances between these vectors. This permission is sufficient
    #     only when you don't set any metadata filters and don't request
    #     vector data or metadata (by keeping the `returnMetadata` parameter
    #     set to `false` or not specified).
    #
    #   * If you specify a metadata filter or set `returnMetadata` to true,
    #     you must have both `s3vectors:QueryVectors` and
    #     `s3vectors:GetVectors` permissions. The request fails with a `403
    #     Forbidden error` if you request metadata filtering, vector data,
    #     or metadata without the `s3vectors:GetVectors` permission.
    #
    # @option params [String] :vector_bucket_name
    #   The name of the vector bucket that contains the vector index.
    #
    # @option params [String] :index_name
    #   The name of the vector index that you want to query.
    #
    # @option params [String] :index_arn
    #   The ARN of the vector index that you want to query.
    #
    # @option params [required, Integer] :top_k
    #   The number of results to return for each query.
    #
    # @option params [required, Types::VectorData] :query_vector
    #   The query vector. Ensure that the query vector has the same dimension
    #   as the dimension of the vector index that's being queried. For
    #   example, if your vector index contains vectors with 384 dimensions,
    #   your query vector must also have 384 dimensions.
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :filter
    #   Metadata filter to apply during the query. For more information about
    #   metadata keys, see [Metadata filtering][1] in the *Amazon S3 User
    #   Guide*.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-vectors-metadata-filtering.html
    #
    # @option params [Boolean] :return_metadata
    #   Indicates whether to include metadata in the response. The default
    #   value is `false`.
    #
    # @option params [Boolean] :return_distance
    #   Indicates whether to include the computed distance in the response.
    #   The default value is `false`.
    #
    # @return [Types::QueryVectorsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::QueryVectorsOutput#vectors #vectors} => Array&lt;Types::QueryOutputVector&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.query_vectors({
    #     vector_bucket_name: "VectorBucketName",
    #     index_name: "IndexName",
    #     index_arn: "IndexArn",
    #     top_k: 1, # required
    #     query_vector: { # required
    #       float32: [1.0],
    #     },
    #     filter: {
    #     },
    #     return_metadata: false,
    #     return_distance: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.vectors #=> Array
    #   resp.vectors[0].key #=> String
    #   resp.vectors[0].data.float32 #=> Array
    #   resp.vectors[0].data.float32[0] #=> Float
    #   resp.vectors[0].distance #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3vectors-2025-07-15/QueryVectors AWS API Documentation
    #
    # @overload query_vectors(params = {})
    # @param [Hash] params ({})
    def query_vectors(params = {}, options = {})
      req = build_request(:query_vectors, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::S3Vectors')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-s3vectors'
      context[:gem_version] = '1.0.0'
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
