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

module Aws::Omics
  # An API client for Omics.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Omics::Client.new(
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

    @identifier = :omics

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
    add_plugin(Aws::Omics::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be an instance of any one of the
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
    #
    #     * The `:access_key_id`, `:secret_access_key`, `:session_token`, and
    #       `:account_id` options.
    #
    #     * `ENV['AWS_ACCESS_KEY_ID']`, `ENV['AWS_SECRET_ACCESS_KEY']`,
    #       `ENV['AWS_SESSION_TOKEN']`, and `ENV['AWS_ACCOUNT_ID']`.
    #
    #     * `~/.aws/credentials`
    #
    #     * `~/.aws/config`
    #
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts
    #       are very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential
    #       fetching can be disabled by setting `ENV['AWS_EC2_METADATA_DISABLED']`
    #       to `true`.
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
    #   @option options [Array<String>] :auth_scheme_preference
    #     A list of preferred authentication schemes to use when making a request. Supported values are:
    #     `sigv4`, `sigv4a`, `httpBearerAuth`, and `noAuth`. When set using `ENV['AWS_AUTH_SCHEME_PREFERENCE']` or in
    #     shared config as `auth_scheme_preference`, the value should be a comma-separated list.
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
    #     Used when loading credentials from the shared credentials file at `HOME/.aws/credentials`.
    #     When not specified, 'default' is used.
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
    #     Your Bearer token used for authentication. This can be an instance of any one of the
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
    #   @option options [Aws::Omics::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Omics::EndpointParameters`.
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

    # Stops a multipart upload.
    #
    # @option params [required, String] :sequence_store_id
    #   The sequence store ID for the store involved in the multipart upload.
    #
    # @option params [required, String] :upload_id
    #   The ID for the multipart upload.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_multipart_read_set_upload({
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AbortMultipartReadSetUpload AWS API Documentation
    #
    # @overload abort_multipart_read_set_upload(params = {})
    # @param [Hash] params ({})
    def abort_multipart_read_set_upload(params = {}, options = {})
      req = build_request(:abort_multipart_read_set_upload, params)
      req.send_request(options)
    end

    # Accept a resource share request.
    #
    # @option params [required, String] :share_id
    #   The ID of the resource share.
    #
    # @return [Types::AcceptShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AcceptShareResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_share({
    #     share_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING", "ACTIVATING", "ACTIVE", "DELETING", "DELETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/AcceptShare AWS API Documentation
    #
    # @overload accept_share(params = {})
    # @param [Hash] params ({})
    def accept_share(params = {}, options = {})
      req = build_request(:accept_share, params)
      req.send_request(options)
    end

    # Deletes one or more read sets.
    #
    # @option params [required, Array<String>] :ids
    #   The read sets' IDs.
    #
    # @option params [required, String] :sequence_store_id
    #   The read sets' sequence store ID.
    #
    # @return [Types::BatchDeleteReadSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteReadSetResponse#errors #errors} => Array&lt;Types::ReadSetBatchError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_read_set({
    #     ids: ["ReadSetId"], # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].id #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/BatchDeleteReadSet AWS API Documentation
    #
    # @overload batch_delete_read_set(params = {})
    # @param [Hash] params ({})
    def batch_delete_read_set(params = {}, options = {})
      req = build_request(:batch_delete_read_set, params)
      req.send_request(options)
    end

    # Cancels an annotation import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_annotation_import_job({
    #     job_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelAnnotationImportJob AWS API Documentation
    #
    # @overload cancel_annotation_import_job(params = {})
    # @param [Hash] params ({})
    def cancel_annotation_import_job(params = {}, options = {})
      req = build_request(:cancel_annotation_import_job, params)
      req.send_request(options)
    end

    # Cancels a run using its ID and returns a response with no body if the
    # operation is successful. To confirm that the run has been cancelled,
    # use the `ListRuns` API operation to check that it is no longer listed.
    #
    # @option params [required, String] :id
    #   The run's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_run({
    #     id: "RunId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelRun AWS API Documentation
    #
    # @overload cancel_run(params = {})
    # @param [Hash] params ({})
    def cancel_run(params = {}, options = {})
      req = build_request(:cancel_run, params)
      req.send_request(options)
    end

    # Cancels a variant import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_variant_import_job({
    #     job_id: "ResourceId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CancelVariantImportJob AWS API Documentation
    #
    # @overload cancel_variant_import_job(params = {})
    # @param [Hash] params ({})
    def cancel_variant_import_job(params = {}, options = {})
      req = build_request(:cancel_variant_import_job, params)
      req.send_request(options)
    end

    # Concludes a multipart upload once you have uploaded all the
    # components.
    #
    # @option params [required, String] :sequence_store_id
    #   The sequence store ID for the store involved in the multipart upload.
    #
    # @option params [required, String] :upload_id
    #   The ID for the multipart upload.
    #
    # @option params [required, Array<Types::CompleteReadSetUploadPartListItem>] :parts
    #   The individual uploads or parts of a multipart upload.
    #
    # @return [Types::CompleteMultipartReadSetUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CompleteMultipartReadSetUploadResponse#read_set_id #read_set_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_multipart_read_set_upload({
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #     parts: [ # required
    #       {
    #         part_number: 1, # required
    #         part_source: "SOURCE1", # required, accepts SOURCE1, SOURCE2
    #         checksum: "CompleteReadSetUploadPartListItemChecksumString", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.read_set_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CompleteMultipartReadSetUpload AWS API Documentation
    #
    # @overload complete_multipart_read_set_upload(params = {})
    # @param [Hash] params ({})
    def complete_multipart_read_set_upload(params = {}, options = {})
      req = build_request(:complete_multipart_read_set_upload, params)
      req.send_request(options)
    end

    # Creates an annotation store.
    #
    # @option params [Types::ReferenceItem] :reference
    #   The genome reference for the store's annotations.
    #
    # @option params [String] :name
    #   A name for the store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the store.
    #
    # @option params [String] :version_name
    #   The name given to an annotation store version to distinguish it from
    #   other versions.
    #
    # @option params [Types::SseConfig] :sse_config
    #   Server-side encryption (SSE) settings for the store.
    #
    # @option params [required, String] :store_format
    #   The annotation file format of the store.
    #
    # @option params [Types::StoreOptions] :store_options
    #   File parsing options for the annotation store.
    #
    # @return [Types::CreateAnnotationStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnnotationStoreResponse#id #id} => String
    #   * {Types::CreateAnnotationStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::CreateAnnotationStoreResponse#store_format #store_format} => String
    #   * {Types::CreateAnnotationStoreResponse#store_options #store_options} => Types::StoreOptions
    #   * {Types::CreateAnnotationStoreResponse#status #status} => String
    #   * {Types::CreateAnnotationStoreResponse#name #name} => String
    #   * {Types::CreateAnnotationStoreResponse#version_name #version_name} => String
    #   * {Types::CreateAnnotationStoreResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_annotation_store({
    #     reference: {
    #       reference_arn: "ReferenceArn",
    #     },
    #     name: "StoreName",
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     version_name: "VersionName",
    #     sse_config: {
    #       type: "KMS", # required, accepts KMS
    #       key_arn: "SseConfigKeyArnString",
    #     },
    #     store_format: "GFF", # required, accepts GFF, TSV, VCF
    #     store_options: {
    #       tsv_store_options: {
    #         annotation_type: "GENERIC", # accepts GENERIC, CHR_POS, CHR_POS_REF_ALT, CHR_START_END_ONE_BASE, CHR_START_END_REF_ALT_ONE_BASE, CHR_START_END_ZERO_BASE, CHR_START_END_REF_ALT_ZERO_BASE
    #         format_to_header: {
    #           "CHR" => "FormatToHeaderValueString",
    #         },
    #         schema: [
    #           {
    #             "SchemaItemKeyString" => "LONG", # accepts LONG, INT, STRING, FLOAT, DOUBLE, BOOLEAN
    #           },
    #         ],
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.store_format #=> String, one of "GFF", "TSV", "VCF"
    #   resp.store_options.tsv_store_options.annotation_type #=> String, one of "GENERIC", "CHR_POS", "CHR_POS_REF_ALT", "CHR_START_END_ONE_BASE", "CHR_START_END_REF_ALT_ONE_BASE", "CHR_START_END_ZERO_BASE", "CHR_START_END_REF_ALT_ZERO_BASE"
    #   resp.store_options.tsv_store_options.format_to_header #=> Hash
    #   resp.store_options.tsv_store_options.format_to_header["FormatToHeaderKey"] #=> String
    #   resp.store_options.tsv_store_options.schema #=> Array
    #   resp.store_options.tsv_store_options.schema[0] #=> Hash
    #   resp.store_options.tsv_store_options.schema[0]["SchemaItemKeyString"] #=> String, one of "LONG", "INT", "STRING", "FLOAT", "DOUBLE", "BOOLEAN"
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.name #=> String
    #   resp.version_name #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateAnnotationStore AWS API Documentation
    #
    # @overload create_annotation_store(params = {})
    # @param [Hash] params ({})
    def create_annotation_store(params = {}, options = {})
      req = build_request(:create_annotation_store, params)
      req.send_request(options)
    end

    # Creates a new version of an annotation store.
    #
    # @option params [required, String] :name
    #   The name of an annotation store version from which versions are being
    #   created.
    #
    # @option params [required, String] :version_name
    #   The name given to an annotation store version to distinguish it from
    #   other versions.
    #
    # @option params [String] :description
    #   The description of an annotation store version.
    #
    # @option params [Types::VersionOptions] :version_options
    #   The options for an annotation store version.
    #
    # @option params [Hash<String,String>] :tags
    #   Any tags added to annotation store version.
    #
    # @return [Types::CreateAnnotationStoreVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAnnotationStoreVersionResponse#id #id} => String
    #   * {Types::CreateAnnotationStoreVersionResponse#version_name #version_name} => String
    #   * {Types::CreateAnnotationStoreVersionResponse#store_id #store_id} => String
    #   * {Types::CreateAnnotationStoreVersionResponse#version_options #version_options} => Types::VersionOptions
    #   * {Types::CreateAnnotationStoreVersionResponse#name #name} => String
    #   * {Types::CreateAnnotationStoreVersionResponse#status #status} => String
    #   * {Types::CreateAnnotationStoreVersionResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_annotation_store_version({
    #     name: "StoreName", # required
    #     version_name: "VersionName", # required
    #     description: "Description",
    #     version_options: {
    #       tsv_version_options: {
    #         annotation_type: "GENERIC", # accepts GENERIC, CHR_POS, CHR_POS_REF_ALT, CHR_START_END_ONE_BASE, CHR_START_END_REF_ALT_ONE_BASE, CHR_START_END_ZERO_BASE, CHR_START_END_REF_ALT_ZERO_BASE
    #         format_to_header: {
    #           "CHR" => "FormatToHeaderValueString",
    #         },
    #         schema: [
    #           {
    #             "SchemaItemKeyString" => "LONG", # accepts LONG, INT, STRING, FLOAT, DOUBLE, BOOLEAN
    #           },
    #         ],
    #       },
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.version_name #=> String
    #   resp.store_id #=> String
    #   resp.version_options.tsv_version_options.annotation_type #=> String, one of "GENERIC", "CHR_POS", "CHR_POS_REF_ALT", "CHR_START_END_ONE_BASE", "CHR_START_END_REF_ALT_ONE_BASE", "CHR_START_END_ZERO_BASE", "CHR_START_END_REF_ALT_ZERO_BASE"
    #   resp.version_options.tsv_version_options.format_to_header #=> Hash
    #   resp.version_options.tsv_version_options.format_to_header["FormatToHeaderKey"] #=> String
    #   resp.version_options.tsv_version_options.schema #=> Array
    #   resp.version_options.tsv_version_options.schema[0] #=> Hash
    #   resp.version_options.tsv_version_options.schema[0]["SchemaItemKeyString"] #=> String, one of "LONG", "INT", "STRING", "FLOAT", "DOUBLE", "BOOLEAN"
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateAnnotationStoreVersion AWS API Documentation
    #
    # @overload create_annotation_store_version(params = {})
    # @param [Hash] params ({})
    def create_annotation_store_version(params = {}, options = {})
      req = build_request(:create_annotation_store_version, params)
      req.send_request(options)
    end

    # Begins a multipart read set upload.
    #
    # @option params [required, String] :sequence_store_id
    #   The sequence store ID for the store that is the destination of the
    #   multipart uploads.
    #
    # @option params [String] :client_token
    #   An idempotency token that can be used to avoid triggering multiple
    #   multipart uploads.
    #
    # @option params [required, String] :source_file_type
    #   The type of file being uploaded.
    #
    # @option params [required, String] :subject_id
    #   The source's subject ID.
    #
    # @option params [required, String] :sample_id
    #   The source's sample ID.
    #
    # @option params [String] :generated_from
    #   Where the source originated.
    #
    # @option params [String] :reference_arn
    #   The ARN of the reference.
    #
    # @option params [required, String] :name
    #   The name of the read set.
    #
    # @option params [String] :description
    #   The description of the read set.
    #
    # @option params [Hash<String,String>] :tags
    #   Any tags to add to the read set.
    #
    # @return [Types::CreateMultipartReadSetUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMultipartReadSetUploadResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#upload_id #upload_id} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#source_file_type #source_file_type} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#subject_id #subject_id} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#sample_id #sample_id} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#generated_from #generated_from} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#reference_arn #reference_arn} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#name #name} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#description #description} => String
    #   * {Types::CreateMultipartReadSetUploadResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateMultipartReadSetUploadResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multipart_read_set_upload({
    #     sequence_store_id: "SequenceStoreId", # required
    #     client_token: "ClientToken",
    #     source_file_type: "FASTQ", # required, accepts FASTQ, BAM, CRAM, UBAM
    #     subject_id: "SubjectId", # required
    #     sample_id: "SampleId", # required
    #     generated_from: "GeneratedFrom",
    #     reference_arn: "ReferenceArn",
    #     name: "ReadSetName", # required
    #     description: "ReadSetDescription",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.sequence_store_id #=> String
    #   resp.upload_id #=> String
    #   resp.source_file_type #=> String, one of "FASTQ", "BAM", "CRAM", "UBAM"
    #   resp.subject_id #=> String
    #   resp.sample_id #=> String
    #   resp.generated_from #=> String
    #   resp.reference_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateMultipartReadSetUpload AWS API Documentation
    #
    # @overload create_multipart_read_set_upload(params = {})
    # @param [Hash] params ({})
    def create_multipart_read_set_upload(params = {}, options = {})
      req = build_request(:create_multipart_read_set_upload, params)
      req.send_request(options)
    end

    # Creates a reference store.
    #
    # @option params [required, String] :name
    #   A name for the store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [Types::SseConfig] :sse_config
    #   Server-side encryption (SSE) settings for the store.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the store.
    #
    # @option params [String] :client_token
    #   To ensure that requests don't run multiple times, specify a unique
    #   token for each request.
    #
    # @return [Types::CreateReferenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReferenceStoreResponse#id #id} => String
    #   * {Types::CreateReferenceStoreResponse#arn #arn} => String
    #   * {Types::CreateReferenceStoreResponse#name #name} => String
    #   * {Types::CreateReferenceStoreResponse#description #description} => String
    #   * {Types::CreateReferenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::CreateReferenceStoreResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_reference_store({
    #     name: "ReferenceStoreName", # required
    #     description: "ReferenceStoreDescription",
    #     sse_config: {
    #       type: "KMS", # required, accepts KMS
    #       key_arn: "SseConfigKeyArnString",
    #     },
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
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.sse_config.key_arn #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateReferenceStore AWS API Documentation
    #
    # @overload create_reference_store(params = {})
    # @param [Hash] params ({})
    def create_reference_store(params = {}, options = {})
      req = build_request(:create_reference_store, params)
      req.send_request(options)
    end

    # Creates a run cache to store and reference task outputs from completed
    # private runs. Specify an Amazon S3 location where Amazon Web Services
    # HealthOmics saves the cached data. This data must be immediately
    # accessible and not in an archived state. You can save intermediate
    # task files to a run cache if they are declared as task outputs in the
    # workflow definition file.
    #
    # For more information, see [Call caching][1] and [Creating a run
    # cache][2] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-call-caching.html
    # [2]: https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-create.html
    #
    # @option params [String] :cache_behavior
    #   Default cache behavior for runs that use this cache. Supported values
    #   are:
    #
    #   `CACHE_ON_FAILURE`: Caches task outputs from completed tasks for runs
    #   that fail. This setting is useful if you're debugging a workflow that
    #   fails after several tasks completed successfully. The subsequent run
    #   uses the cache outputs for previously-completed tasks if the task
    #   definition, inputs, and container in ECR are identical to the prior
    #   run.
    #
    #   `CACHE_ALWAYS`: Caches task outputs from completed tasks for all runs.
    #   This setting is useful in development mode, but do not use it in a
    #   production setting.
    #
    #   If you don't specify a value, the default behavior is
    #   CACHE\_ON\_FAILURE. When you start a run that uses this cache, you can
    #   override the default cache behavior.
    #
    #   For more information, see [Run cache behavior][1] in the *Amazon Web
    #   Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior
    #
    # @option params [required, String] :cache_s3_location
    #   Specify the S3 location for storing the cached task outputs. This data
    #   must be immediately accessible (not in an archived state).
    #
    # @option params [String] :description
    #   Enter a description of the run cache.
    #
    # @option params [String] :name
    #   Enter a user-friendly name for the run cache.
    #
    # @option params [required, String] :request_id
    #   A unique request token, to ensure idempotency. If you don't specify a
    #   token, Amazon Web Services HealthOmics automatically generates a
    #   universally unique identifier (UUID) for the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Hash<String,String>] :tags
    #   Specify one or more tags to associate with this run cache.
    #
    # @option params [String] :cache_bucket_owner_id
    #   The Amazon Web Services account ID of the expected owner of the S3
    #   bucket for the run cache. If not provided, your account ID is set as
    #   the owner of the bucket.
    #
    # @return [Types::CreateRunCacheResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRunCacheResponse#arn #arn} => String
    #   * {Types::CreateRunCacheResponse#id #id} => String
    #   * {Types::CreateRunCacheResponse#status #status} => String
    #   * {Types::CreateRunCacheResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_run_cache({
    #     cache_behavior: "CACHE_ON_FAILURE", # accepts CACHE_ON_FAILURE, CACHE_ALWAYS
    #     cache_s3_location: "S3UriForBucketOrObject", # required
    #     description: "UserCustomDescription",
    #     name: "UserCustomName",
    #     request_id: "RunCacheRequestId", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     cache_bucket_owner_id: "AwsAccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "ACTIVE", "DELETED", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateRunCache AWS API Documentation
    #
    # @overload create_run_cache(params = {})
    # @param [Hash] params ({})
    def create_run_cache(params = {}, options = {})
      req = build_request(:create_run_cache, params)
      req.send_request(options)
    end

    # Creates a run group to limit the compute resources for the runs that
    # are added to the group. Returns an ARN, ID, and tags for the run
    # group.
    #
    # @option params [String] :name
    #   A name for the group.
    #
    # @option params [Integer] :max_cpus
    #   The maximum number of CPUs that can run concurrently across all active
    #   runs in the run group.
    #
    # @option params [Integer] :max_runs
    #   The maximum number of runs that can be running at the same time.
    #
    # @option params [Integer] :max_duration
    #   The maximum time for each run (in minutes). If a run exceeds the
    #   maximum run time, the run fails automatically.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the group.
    #
    # @option params [required, String] :request_id
    #   To ensure that requests don't run multiple times, specify a unique ID
    #   for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Integer] :max_gpus
    #   The maximum number of GPUs that can run concurrently across all active
    #   runs in the run group.
    #
    # @return [Types::CreateRunGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRunGroupResponse#arn #arn} => String
    #   * {Types::CreateRunGroupResponse#id #id} => String
    #   * {Types::CreateRunGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_run_group({
    #     name: "RunGroupName",
    #     max_cpus: 1,
    #     max_runs: 1,
    #     max_duration: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     request_id: "RunGroupRequestId", # required
    #     max_gpus: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateRunGroup AWS API Documentation
    #
    # @overload create_run_group(params = {})
    # @param [Hash] params ({})
    def create_run_group(params = {}, options = {})
      req = build_request(:create_run_group, params)
      req.send_request(options)
    end

    # Creates a sequence store.
    #
    # @option params [required, String] :name
    #   A name for the store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [Types::SseConfig] :sse_config
    #   Server-side encryption (SSE) settings for the store.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the store.
    #
    # @option params [String] :client_token
    #   To ensure that requests don't run multiple times, specify a unique
    #   token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :fallback_location
    #   An S3 location that is used to store files that have failed a direct
    #   upload.
    #
    # @option params [String] :e_tag_algorithm_family
    #   The ETag algorithm family to use for ingested read sets.
    #
    # @option params [Array<String>] :propagated_set_level_tags
    #   The tags keys to propagate to the S3 objects associated with read sets
    #   in the sequence store.
    #
    # @option params [Types::S3AccessConfig] :s3_access_config
    #   S3 access configuration parameters
    #
    # @return [Types::CreateSequenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSequenceStoreResponse#id #id} => String
    #   * {Types::CreateSequenceStoreResponse#arn #arn} => String
    #   * {Types::CreateSequenceStoreResponse#name #name} => String
    #   * {Types::CreateSequenceStoreResponse#description #description} => String
    #   * {Types::CreateSequenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::CreateSequenceStoreResponse#creation_time #creation_time} => Time
    #   * {Types::CreateSequenceStoreResponse#fallback_location #fallback_location} => String
    #   * {Types::CreateSequenceStoreResponse#e_tag_algorithm_family #e_tag_algorithm_family} => String
    #   * {Types::CreateSequenceStoreResponse#status #status} => String
    #   * {Types::CreateSequenceStoreResponse#status_message #status_message} => String
    #   * {Types::CreateSequenceStoreResponse#propagated_set_level_tags #propagated_set_level_tags} => Array&lt;String&gt;
    #   * {Types::CreateSequenceStoreResponse#s3_access #s3_access} => Types::SequenceStoreS3Access
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_sequence_store({
    #     name: "SequenceStoreName", # required
    #     description: "SequenceStoreDescription",
    #     sse_config: {
    #       type: "KMS", # required, accepts KMS
    #       key_arn: "SseConfigKeyArnString",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     client_token: "ClientToken",
    #     fallback_location: "FallbackLocation",
    #     e_tag_algorithm_family: "MD5up", # accepts MD5up, SHA256up, SHA512up
    #     propagated_set_level_tags: ["TagKey"],
    #     s3_access_config: {
    #       access_log_location: "AccessLogLocation",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.sse_config.key_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.fallback_location #=> String
    #   resp.e_tag_algorithm_family #=> String, one of "MD5up", "SHA256up", "SHA512up"
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.status_message #=> String
    #   resp.propagated_set_level_tags #=> Array
    #   resp.propagated_set_level_tags[0] #=> String
    #   resp.s3_access.s3_uri #=> String
    #   resp.s3_access.s3_access_point_arn #=> String
    #   resp.s3_access.access_log_location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateSequenceStore AWS API Documentation
    #
    # @overload create_sequence_store(params = {})
    # @param [Hash] params ({})
    def create_sequence_store(params = {}, options = {})
      req = build_request(:create_sequence_store, params)
      req.send_request(options)
    end

    # Creates a cross-account shared resource. The resource owner makes an
    # offer to share the resource with the principal subscriber (an AWS user
    # with a different account than the resource owner).
    #
    # The following resources support cross-account sharing:
    #
    # * HealthOmics variant stores
    #
    # * HealthOmics annotation stores
    #
    # * Private workflows
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the resource to be shared.
    #
    # @option params [required, String] :principal_subscriber
    #   The principal subscriber is the account being offered shared access to
    #   the resource.
    #
    # @option params [String] :share_name
    #   A name that the owner defines for the share.
    #
    # @return [Types::CreateShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateShareResponse#share_id #share_id} => String
    #   * {Types::CreateShareResponse#status #status} => String
    #   * {Types::CreateShareResponse#share_name #share_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_share({
    #     resource_arn: "String", # required
    #     principal_subscriber: "String", # required
    #     share_name: "ShareName",
    #   })
    #
    # @example Response structure
    #
    #   resp.share_id #=> String
    #   resp.status #=> String, one of "PENDING", "ACTIVATING", "ACTIVE", "DELETING", "DELETED", "FAILED"
    #   resp.share_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateShare AWS API Documentation
    #
    # @overload create_share(params = {})
    # @param [Hash] params ({})
    def create_share(params = {}, options = {})
      req = build_request(:create_share, params)
      req.send_request(options)
    end

    # Creates a variant store.
    #
    # @option params [required, Types::ReferenceItem] :reference
    #   The genome reference for the store's variants.
    #
    # @option params [String] :name
    #   A name for the store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the store.
    #
    # @option params [Types::SseConfig] :sse_config
    #   Server-side encryption (SSE) settings for the store.
    #
    # @return [Types::CreateVariantStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVariantStoreResponse#id #id} => String
    #   * {Types::CreateVariantStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::CreateVariantStoreResponse#status #status} => String
    #   * {Types::CreateVariantStoreResponse#name #name} => String
    #   * {Types::CreateVariantStoreResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_variant_store({
    #     reference: { # required
    #       reference_arn: "ReferenceArn",
    #     },
    #     name: "StoreName",
    #     description: "Description",
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     sse_config: {
    #       type: "KMS", # required, accepts KMS
    #       key_arn: "SseConfigKeyArnString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.name #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateVariantStore AWS API Documentation
    #
    # @overload create_variant_store(params = {})
    # @param [Hash] params ({})
    def create_variant_store(params = {}, options = {})
      req = build_request(:create_variant_store, params)
      req.send_request(options)
    end

    # Creates a private workflow. Before you create a private workflow, you
    # must create and configure these required resources:
    #
    # * *Workflow definition files*: Define your workflow in one or more
    #   workflow definition files, written in WDL, Nextflow, or CWL. The
    #   workflow definition specifies the inputs and outputs for runs that
    #   use the workflow. It also includes specifications for the runs and
    #   run tasks for your workflow, including compute and memory
    #   requirements. The workflow definition file must be in .zip format.
    #
    # * (Optional) *Parameter template*: You can create a parameter template
    #   file that defines the run parameters, or Amazon Web Services
    #   HealthOmics can generate the parameter template for you.
    #
    # * *ECR container images*: Create one or more container images for the
    #   workflow. Store the images in a private ECR repository.
    #
    # * (Optional) *Sentieon licenses*: Request a Sentieon license if using
    #   the Sentieon software in a private workflow.
    #
    # For more information, see [Creating or updating a private workflow in
    # Amazon Web Services HealthOmics][1] in the *Amazon Web Services
    # HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/creating-private-workflows.html
    #
    # @option params [String] :name
    #   Name (optional but highly recommended) for the workflow to locate
    #   relevant information in the CloudWatch logs and Amazon Web Services
    #   HealthOmics console.
    #
    # @option params [String] :description
    #   A description for the workflow.
    #
    # @option params [String] :engine
    #   The workflow engine for the workflow. This is only required if you
    #   have workflow definition files from more than one engine in your zip
    #   file. Otherwise, the service can detect the engine automatically from
    #   your workflow definition.
    #
    # @option params [String, StringIO, File] :definition_zip
    #   A ZIP archive containing the main workflow definition file and
    #   dependencies that it imports for the workflow. You can use a file with
    #   a ://fileb prefix instead of the Base64 string. For more information,
    #   see [Workflow definition requirements][1] in the *Amazon Web Services
    #   HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-defn-requirements.html
    #
    # @option params [String] :definition_uri
    #   The S3 URI of a definition for the workflow. The S3 bucket must be in
    #   the same region as the workflow.
    #
    # @option params [String] :main
    #   The path of the main definition file for the workflow. This parameter
    #   is not required if the ZIP archive contains only one workflow
    #   definition file, or if the main definition file is named “main”. An
    #   example path is: `workflow-definition/main-file.wdl`.
    #
    # @option params [Hash<String,Types::WorkflowParameter>] :parameter_template
    #   A parameter template for the workflow. If this field is blank, Amazon
    #   Web Services HealthOmics will automatically parse the parameter
    #   template values from your workflow definition file. To override these
    #   service generated default values, provide a parameter template. To
    #   view an example of a parameter template, see [Parameter template
    #   files][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/parameter-templates.html
    #
    # @option params [Integer] :storage_capacity
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow or workflow version. The `storageCapacity` can be
    #   overwritten at run time. The storage capacity is not required for runs
    #   with a `DYNAMIC` storage type.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the workflow. You can define up to 50 tags for the workflow.
    #   For more information, see [Adding a tag][1] in the *Amazon Web
    #   Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html
    #
    # @option params [required, String] :request_id
    #   An idempotency token to ensure that duplicate workflows are not
    #   created when Amazon Web Services HealthOmics submits retry requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :accelerators
    #   The computational accelerator specified to run the workflow.
    #
    # @option params [String] :storage_type
    #   The default storage type for runs that use this workflow. The
    #   `storageType` can be overridden at run time. `DYNAMIC` storage
    #   dynamically scales the storage up or down, based on file system
    #   utilization. `STATIC` storage allocates a fixed amount of storage. For
    #   more information about dynamic and static storage types, see [Run
    #   storage types][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html
    #
    # @option params [String] :readme_markdown
    #   The markdown content for the workflow's README file. This provides
    #   documentation and usage information for users of the workflow.
    #
    # @option params [String] :parameter_template_path
    #   The path to the workflow parameter template JSON file within the
    #   repository. This file defines the input parameters for runs that use
    #   this workflow. If not specified, the workflow will be created without
    #   a parameter template.
    #
    # @option params [String] :readme_path
    #   The path to the workflow README markdown file within the repository.
    #   This file provides documentation and usage information for the
    #   workflow. If not specified, the `README.md` file from the root
    #   directory of the repository will be used.
    #
    # @option params [Types::DefinitionRepository] :definition_repository
    #   The repository information for the workflow definition. This allows
    #   you to source your workflow definition directly from a code
    #   repository.
    #
    # @option params [String] :workflow_bucket_owner_id
    #   The Amazon Web Services account ID of the expected owner of the S3
    #   bucket that contains the workflow definition. If not specified, the
    #   service skips the validation.
    #
    # @option params [String] :readme_uri
    #   The S3 URI of the README file for the workflow. This file provides
    #   documentation and usage information for the workflow. Requirements
    #   include:
    #
    #   * The S3 URI must begin with `s3://USER-OWNED-BUCKET/`
    #
    #   * The requester must have access to the S3 bucket and object.
    #
    #   * The max README content length is 500 KiB.
    #
    # @return [Types::CreateWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowResponse#arn #arn} => String
    #   * {Types::CreateWorkflowResponse#id #id} => String
    #   * {Types::CreateWorkflowResponse#status #status} => String
    #   * {Types::CreateWorkflowResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateWorkflowResponse#uuid #uuid} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow({
    #     name: "WorkflowName",
    #     description: "WorkflowDescription",
    #     engine: "WDL", # accepts WDL, NEXTFLOW, CWL
    #     definition_zip: "data",
    #     definition_uri: "WorkflowDefinition",
    #     main: "WorkflowMain",
    #     parameter_template: {
    #       "WorkflowParameterName" => {
    #         description: "WorkflowParameterDescription",
    #         optional: false,
    #       },
    #     },
    #     storage_capacity: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     request_id: "WorkflowRequestId", # required
    #     accelerators: "GPU", # accepts GPU
    #     storage_type: "STATIC", # accepts STATIC, DYNAMIC
    #     readme_markdown: "ReadmeMarkdown",
    #     parameter_template_path: "ParameterTemplatePath",
    #     readme_path: "ReadmePath",
    #     definition_repository: {
    #       connection_arn: "ConnectionArn", # required
    #       full_repository_id: "FullRepositoryId", # required
    #       source_reference: {
    #         type: "BRANCH", # required, accepts BRANCH, TAG, COMMIT
    #         value: "SourceReferenceValue", # required
    #       },
    #       exclude_file_patterns: ["String"],
    #     },
    #     workflow_bucket_owner_id: "WorkflowBucketOwnerId",
    #     readme_uri: "S3UriForObject",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED", "INACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.uuid #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateWorkflow AWS API Documentation
    #
    # @overload create_workflow(params = {})
    # @param [Hash] params ({})
    def create_workflow(params = {}, options = {})
      req = build_request(:create_workflow, params)
      req.send_request(options)
    end

    # Creates a new workflow version for the workflow that you specify with
    # the `workflowId` parameter.
    #
    # When you create a new version of a workflow, you need to specify the
    # configuration for the new version. It doesn't inherit any
    # configuration values from the workflow.
    #
    # Provide a version name that is unique for this workflow. You cannot
    # change the name after HealthOmics creates the version.
    #
    # <note markdown="1"> Don’t include any personally identifiable information (PII) in the
    # version name. Version names appear in the workflow version ARN.
    #
    #  </note>
    #
    # For more information, see [Workflow versioning in Amazon Web Services
    # HealthOmics][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html
    #
    # @option params [required, String] :workflow_id
    #   The ID of the workflow where you are creating the new version.
    #
    # @option params [required, String] :version_name
    #   A name for the workflow version. Provide a version name that is unique
    #   for this workflow. You cannot change the name after HealthOmics
    #   creates the version.
    #
    #   The version name must start with a letter or number and it can include
    #   upper-case and lower-case letters, numbers, hyphens, periods and
    #   underscores. The maximum length is 64 characters. You can use a simple
    #   naming scheme, such as version1, version2, version3. You can also
    #   match your workflow versions with your own internal versioning
    #   conventions, such as 2.7.0, 2.7.1, 2.7.2.
    #
    # @option params [String, StringIO, File] :definition_zip
    #   A zip archive containing the workflow definition for this workflow
    #   version.
    #
    # @option params [String] :definition_uri
    #   The URI specifies the location of the workflow definition for this
    #   workflow version.
    #
    # @option params [String] :accelerators
    #   The computational accelerator for this workflow version.
    #
    # @option params [String] :description
    #   A description for this workflow version.
    #
    # @option params [String] :engine
    #   The workflow engine for this workflow version.
    #
    # @option params [String] :main
    #   The path of the main definition file for this workflow version.
    #
    # @option params [Hash<String,Types::WorkflowParameter>] :parameter_template
    #   The parameter template defines the input parameters for runs that use
    #   this workflow version.
    #
    # @option params [required, String] :request_id
    #   To ensure that requests don't run multiple times, specify a unique ID
    #   for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :storage_type
    #   The default storage type for runs that use this workflow. STATIC
    #   storage allocates a fixed amount of storage. DYNAMIC storage
    #   dynamically scales the storage up or down, based on file system
    #   utilization. For more information about static and dynamic storage,
    #   see [Running workflows][1] in the *Amazon Web Services HealthOmics
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html
    #
    # @option params [Integer] :storage_capacity
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow or workflow version.
    #
    # @option params [Hash<String,String>] :tags
    #   Optional tags to associate with this workflow version.
    #
    # @option params [String] :workflow_bucket_owner_id
    #   Amazon Web Services Id of the owner of the S3 bucket that contains the
    #   workflow definition. You need to specify this parameter if your
    #   account is not the bucket owner.
    #
    # @option params [String] :readme_markdown
    #   The markdown content for the workflow version's README file. This
    #   provides documentation and usage information for users of this
    #   specific workflow version.
    #
    # @option params [String] :parameter_template_path
    #   The path to the workflow version parameter template JSON file within
    #   the repository. This file defines the input parameters for runs that
    #   use this workflow version. If not specified, the workflow version will
    #   be created without a parameter template.
    #
    # @option params [String] :readme_path
    #   The path to the workflow version README markdown file within the
    #   repository. This file provides documentation and usage information for
    #   the workflow. If not specified, the `README.md` file from the root
    #   directory of the repository will be used.
    #
    # @option params [Types::DefinitionRepository] :definition_repository
    #   The repository information for the workflow version definition. This
    #   allows you to source your workflow version definition directly from a
    #   code repository.
    #
    # @option params [String] :readme_uri
    #   The S3 URI of the README file for the workflow version. This file
    #   provides documentation and usage information for the workflow version.
    #   Requirements include:
    #
    #   * The S3 URI must begin with `s3://USER-OWNED-BUCKET/`
    #
    #   * The requester must have access to the S3 bucket and object.
    #
    #   * The max README content length is 500 KiB.
    #
    # @return [Types::CreateWorkflowVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWorkflowVersionResponse#arn #arn} => String
    #   * {Types::CreateWorkflowVersionResponse#workflow_id #workflow_id} => String
    #   * {Types::CreateWorkflowVersionResponse#version_name #version_name} => String
    #   * {Types::CreateWorkflowVersionResponse#status #status} => String
    #   * {Types::CreateWorkflowVersionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::CreateWorkflowVersionResponse#uuid #uuid} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workflow_version({
    #     workflow_id: "WorkflowId", # required
    #     version_name: "WorkflowVersionName", # required
    #     definition_zip: "data",
    #     definition_uri: "WorkflowDefinition",
    #     accelerators: "GPU", # accepts GPU
    #     description: "WorkflowVersionDescription",
    #     engine: "WDL", # accepts WDL, NEXTFLOW, CWL
    #     main: "WorkflowMain",
    #     parameter_template: {
    #       "WorkflowParameterName" => {
    #         description: "WorkflowParameterDescription",
    #         optional: false,
    #       },
    #     },
    #     request_id: "WorkflowRequestId", # required
    #     storage_type: "STATIC", # accepts STATIC, DYNAMIC
    #     storage_capacity: 1,
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     workflow_bucket_owner_id: "WorkflowBucketOwnerId",
    #     readme_markdown: "ReadmeMarkdown",
    #     parameter_template_path: "ParameterTemplatePath",
    #     readme_path: "ReadmePath",
    #     definition_repository: {
    #       connection_arn: "ConnectionArn", # required
    #       full_repository_id: "FullRepositoryId", # required
    #       source_reference: {
    #         type: "BRANCH", # required, accepts BRANCH, TAG, COMMIT
    #         value: "SourceReferenceValue", # required
    #       },
    #       exclude_file_patterns: ["String"],
    #     },
    #     readme_uri: "S3UriForObject",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.workflow_id #=> String
    #   resp.version_name #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED", "INACTIVE"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.uuid #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/CreateWorkflowVersion AWS API Documentation
    #
    # @overload create_workflow_version(params = {})
    # @param [Hash] params ({})
    def create_workflow_version(params = {}, options = {})
      req = build_request(:create_workflow_version, params)
      req.send_request(options)
    end

    # Deletes an annotation store.
    #
    # @option params [required, String] :name
    #   The store's name.
    #
    # @option params [Boolean] :force
    #   Whether to force deletion.
    #
    # @return [Types::DeleteAnnotationStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAnnotationStoreResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_annotation_store({
    #     name: "String", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteAnnotationStore AWS API Documentation
    #
    # @overload delete_annotation_store(params = {})
    # @param [Hash] params ({})
    def delete_annotation_store(params = {}, options = {})
      req = build_request(:delete_annotation_store, params)
      req.send_request(options)
    end

    # Deletes one or multiple versions of an annotation store.
    #
    # @option params [required, String] :name
    #   The name of the annotation store from which versions are being
    #   deleted.
    #
    # @option params [required, Array<String>] :versions
    #   The versions of an annotation store to be deleted.
    #
    # @option params [Boolean] :force
    #   Forces the deletion of an annotation store version when imports are
    #   in-progress..
    #
    # @return [Types::DeleteAnnotationStoreVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteAnnotationStoreVersionsResponse#errors #errors} => Array&lt;Types::VersionDeleteError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_annotation_store_versions({
    #     name: "String", # required
    #     versions: ["VersionName"], # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].version_name #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteAnnotationStoreVersions AWS API Documentation
    #
    # @overload delete_annotation_store_versions(params = {})
    # @param [Hash] params ({})
    def delete_annotation_store_versions(params = {}, options = {})
      req = build_request(:delete_annotation_store_versions, params)
      req.send_request(options)
    end

    # Deletes a genome reference.
    #
    # @option params [required, String] :id
    #   The reference's ID.
    #
    # @option params [required, String] :reference_store_id
    #   The reference's store ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_reference({
    #     id: "ReferenceId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteReference AWS API Documentation
    #
    # @overload delete_reference(params = {})
    # @param [Hash] params ({})
    def delete_reference(params = {}, options = {})
      req = build_request(:delete_reference, params)
      req.send_request(options)
    end

    # Deletes a genome reference store.
    #
    # @option params [required, String] :id
    #   The store's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_reference_store({
    #     id: "ReferenceStoreId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteReferenceStore AWS API Documentation
    #
    # @overload delete_reference_store(params = {})
    # @param [Hash] params ({})
    def delete_reference_store(params = {}, options = {})
      req = build_request(:delete_reference_store, params)
      req.send_request(options)
    end

    # Deletes a run and returns a response with no body if the operation is
    # successful. You can only delete a run that has reached a `COMPLETED`,
    # `FAILED`, or `CANCELLED` stage. A completed run has delivered an
    # output, or was cancelled and resulted in no output. When you delete a
    # run, only the metadata associated with the run is deleted. The run
    # outputs remain in Amazon S3 and logs remain in CloudWatch.
    #
    # To verify that the workflow is deleted:
    #
    # * Use `ListRuns` to confirm the workflow no longer appears in the
    #   list.
    #
    # * Use `GetRun` to verify the workflow cannot be found.
    #
    # @option params [required, String] :id
    #   The run's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_run({
    #     id: "RunId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteRun AWS API Documentation
    #
    # @overload delete_run(params = {})
    # @param [Hash] params ({})
    def delete_run(params = {}, options = {})
      req = build_request(:delete_run, params)
      req.send_request(options)
    end

    # Deletes a run cache and returns a response with no body if the
    # operation is successful. This action removes the cache metadata stored
    # in the service account, but does not delete the data in Amazon S3. You
    # can access the cache data in Amazon S3, for inspection or to
    # troubleshoot issues. You can remove old cache data using standard S3
    # `Delete` operations.
    #
    # For more information, see [Deleting a run cache][1] in the *Amazon Web
    # Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-delete.html
    #
    # @option params [required, String] :id
    #   Run cache identifier for the cache you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_run_cache({
    #     id: "RunCacheId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteRunCache AWS API Documentation
    #
    # @overload delete_run_cache(params = {})
    # @param [Hash] params ({})
    def delete_run_cache(params = {}, options = {})
      req = build_request(:delete_run_cache, params)
      req.send_request(options)
    end

    # Deletes a run group and returns a response with no body if the
    # operation is successful.
    #
    # To verify that the run group is deleted:
    #
    # * Use `ListRunGroups` to confirm the workflow no longer appears in the
    #   list.
    #
    # * Use `GetRunGroup` to verify the workflow cannot be found.
    #
    # @option params [required, String] :id
    #   The run group's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_run_group({
    #     id: "RunGroupId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteRunGroup AWS API Documentation
    #
    # @overload delete_run_group(params = {})
    # @param [Hash] params ({})
    def delete_run_group(params = {}, options = {})
      req = build_request(:delete_run_group, params)
      req.send_request(options)
    end

    # Deletes an access policy for the specified store.
    #
    # @option params [required, String] :s3_access_point_arn
    #   The S3 access point ARN that has the access policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_s3_access_policy({
    #     s3_access_point_arn: "S3AccessPointArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteS3AccessPolicy AWS API Documentation
    #
    # @overload delete_s3_access_policy(params = {})
    # @param [Hash] params ({})
    def delete_s3_access_policy(params = {}, options = {})
      req = build_request(:delete_s3_access_policy, params)
      req.send_request(options)
    end

    # Deletes a sequence store.
    #
    # @option params [required, String] :id
    #   The sequence store's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_sequence_store({
    #     id: "SequenceStoreId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteSequenceStore AWS API Documentation
    #
    # @overload delete_sequence_store(params = {})
    # @param [Hash] params ({})
    def delete_sequence_store(params = {}, options = {})
      req = build_request(:delete_sequence_store, params)
      req.send_request(options)
    end

    # Deletes a resource share. If you are the resource owner, the
    # subscriber will no longer have access to the shared resource. If you
    # are the subscriber, this operation deletes your access to the share.
    #
    # @option params [required, String] :share_id
    #   The ID for the resource share to be deleted.
    #
    # @return [Types::DeleteShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteShareResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_share({
    #     share_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "PENDING", "ACTIVATING", "ACTIVE", "DELETING", "DELETED", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteShare AWS API Documentation
    #
    # @overload delete_share(params = {})
    # @param [Hash] params ({})
    def delete_share(params = {}, options = {})
      req = build_request(:delete_share, params)
      req.send_request(options)
    end

    # Deletes a variant store.
    #
    # @option params [required, String] :name
    #   The store's name.
    #
    # @option params [Boolean] :force
    #   Whether to force deletion.
    #
    # @return [Types::DeleteVariantStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteVariantStoreResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_variant_store({
    #     name: "String", # required
    #     force: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteVariantStore AWS API Documentation
    #
    # @overload delete_variant_store(params = {})
    # @param [Hash] params ({})
    def delete_variant_store(params = {}, options = {})
      req = build_request(:delete_variant_store, params)
      req.send_request(options)
    end

    # Deletes a workflow by specifying its ID. No response is returned if
    # the deletion is successful.
    #
    # To verify that the workflow is deleted:
    #
    # * Use `ListWorkflows` to confirm the workflow no longer appears in the
    #   list.
    #
    # * Use `GetWorkflow` to verify the workflow cannot be found.
    #
    # @option params [required, String] :id
    #   The workflow's ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow({
    #     id: "WorkflowId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteWorkflow AWS API Documentation
    #
    # @overload delete_workflow(params = {})
    # @param [Hash] params ({})
    def delete_workflow(params = {}, options = {})
      req = build_request(:delete_workflow, params)
      req.send_request(options)
    end

    # Deletes a workflow version. Deleting a workflow version doesn't
    # affect any ongoing runs that are using the workflow version.
    #
    # For more information, see [Workflow versioning in Amazon Web Services
    # HealthOmics][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html
    #
    # @option params [required, String] :workflow_id
    #   The workflow's ID.
    #
    # @option params [required, String] :version_name
    #   The workflow version name.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workflow_version({
    #     workflow_id: "WorkflowId", # required
    #     version_name: "WorkflowVersionName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/DeleteWorkflowVersion AWS API Documentation
    #
    # @overload delete_workflow_version(params = {})
    # @param [Hash] params ({})
    def delete_workflow_version(params = {}, options = {})
      req = build_request(:delete_workflow_version, params)
      req.send_request(options)
    end

    # Gets information about an annotation import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Types::GetAnnotationImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnnotationImportResponse#id #id} => String
    #   * {Types::GetAnnotationImportResponse#destination_name #destination_name} => String
    #   * {Types::GetAnnotationImportResponse#version_name #version_name} => String
    #   * {Types::GetAnnotationImportResponse#role_arn #role_arn} => String
    #   * {Types::GetAnnotationImportResponse#status #status} => String
    #   * {Types::GetAnnotationImportResponse#status_message #status_message} => String
    #   * {Types::GetAnnotationImportResponse#creation_time #creation_time} => Time
    #   * {Types::GetAnnotationImportResponse#update_time #update_time} => Time
    #   * {Types::GetAnnotationImportResponse#completion_time #completion_time} => Time
    #   * {Types::GetAnnotationImportResponse#items #items} => Array&lt;Types::AnnotationImportItemDetail&gt;
    #   * {Types::GetAnnotationImportResponse#run_left_normalization #run_left_normalization} => Boolean
    #   * {Types::GetAnnotationImportResponse#format_options #format_options} => Types::FormatOptions
    #   * {Types::GetAnnotationImportResponse#annotation_fields #annotation_fields} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_annotation_import_job({
    #     job_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.destination_name #=> String
    #   resp.version_name #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #   resp.completion_time #=> Time
    #   resp.items #=> Array
    #   resp.items[0].source #=> String
    #   resp.items[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #   resp.run_left_normalization #=> Boolean
    #   resp.format_options.tsv_options.read_options.sep #=> String
    #   resp.format_options.tsv_options.read_options.encoding #=> String
    #   resp.format_options.tsv_options.read_options.quote #=> String
    #   resp.format_options.tsv_options.read_options.quote_all #=> Boolean
    #   resp.format_options.tsv_options.read_options.escape #=> String
    #   resp.format_options.tsv_options.read_options.escape_quotes #=> Boolean
    #   resp.format_options.tsv_options.read_options.comment #=> String
    #   resp.format_options.tsv_options.read_options.header #=> Boolean
    #   resp.format_options.tsv_options.read_options.line_sep #=> String
    #   resp.format_options.vcf_options.ignore_qual_field #=> Boolean
    #   resp.format_options.vcf_options.ignore_filter_field #=> Boolean
    #   resp.annotation_fields #=> Hash
    #   resp.annotation_fields["AnnotationFieldMapKeyString"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * annotation_import_job_created
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationImportJob AWS API Documentation
    #
    # @overload get_annotation_import_job(params = {})
    # @param [Hash] params ({})
    def get_annotation_import_job(params = {}, options = {})
      req = build_request(:get_annotation_import_job, params)
      req.send_request(options)
    end

    # Gets information about an annotation store.
    #
    # @option params [required, String] :name
    #   The store's name.
    #
    # @return [Types::GetAnnotationStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnnotationStoreResponse#id #id} => String
    #   * {Types::GetAnnotationStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::GetAnnotationStoreResponse#status #status} => String
    #   * {Types::GetAnnotationStoreResponse#store_arn #store_arn} => String
    #   * {Types::GetAnnotationStoreResponse#name #name} => String
    #   * {Types::GetAnnotationStoreResponse#description #description} => String
    #   * {Types::GetAnnotationStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::GetAnnotationStoreResponse#creation_time #creation_time} => Time
    #   * {Types::GetAnnotationStoreResponse#update_time #update_time} => Time
    #   * {Types::GetAnnotationStoreResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetAnnotationStoreResponse#store_options #store_options} => Types::StoreOptions
    #   * {Types::GetAnnotationStoreResponse#store_format #store_format} => String
    #   * {Types::GetAnnotationStoreResponse#status_message #status_message} => String
    #   * {Types::GetAnnotationStoreResponse#store_size_bytes #store_size_bytes} => Integer
    #   * {Types::GetAnnotationStoreResponse#num_versions #num_versions} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_annotation_store({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.store_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.sse_config.key_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.store_options.tsv_store_options.annotation_type #=> String, one of "GENERIC", "CHR_POS", "CHR_POS_REF_ALT", "CHR_START_END_ONE_BASE", "CHR_START_END_REF_ALT_ONE_BASE", "CHR_START_END_ZERO_BASE", "CHR_START_END_REF_ALT_ZERO_BASE"
    #   resp.store_options.tsv_store_options.format_to_header #=> Hash
    #   resp.store_options.tsv_store_options.format_to_header["FormatToHeaderKey"] #=> String
    #   resp.store_options.tsv_store_options.schema #=> Array
    #   resp.store_options.tsv_store_options.schema[0] #=> Hash
    #   resp.store_options.tsv_store_options.schema[0]["SchemaItemKeyString"] #=> String, one of "LONG", "INT", "STRING", "FLOAT", "DOUBLE", "BOOLEAN"
    #   resp.store_format #=> String, one of "GFF", "TSV", "VCF"
    #   resp.status_message #=> String
    #   resp.store_size_bytes #=> Integer
    #   resp.num_versions #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * annotation_store_created
    #   * annotation_store_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationStore AWS API Documentation
    #
    # @overload get_annotation_store(params = {})
    # @param [Hash] params ({})
    def get_annotation_store(params = {}, options = {})
      req = build_request(:get_annotation_store, params)
      req.send_request(options)
    end

    # Retrieves the metadata for an annotation store version.
    #
    # @option params [required, String] :name
    #   The name given to an annotation store version to distinguish it from
    #   others.
    #
    # @option params [required, String] :version_name
    #   The name given to an annotation store version to distinguish it from
    #   others.
    #
    # @return [Types::GetAnnotationStoreVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAnnotationStoreVersionResponse#store_id #store_id} => String
    #   * {Types::GetAnnotationStoreVersionResponse#id #id} => String
    #   * {Types::GetAnnotationStoreVersionResponse#status #status} => String
    #   * {Types::GetAnnotationStoreVersionResponse#version_arn #version_arn} => String
    #   * {Types::GetAnnotationStoreVersionResponse#name #name} => String
    #   * {Types::GetAnnotationStoreVersionResponse#version_name #version_name} => String
    #   * {Types::GetAnnotationStoreVersionResponse#description #description} => String
    #   * {Types::GetAnnotationStoreVersionResponse#creation_time #creation_time} => Time
    #   * {Types::GetAnnotationStoreVersionResponse#update_time #update_time} => Time
    #   * {Types::GetAnnotationStoreVersionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetAnnotationStoreVersionResponse#version_options #version_options} => Types::VersionOptions
    #   * {Types::GetAnnotationStoreVersionResponse#status_message #status_message} => String
    #   * {Types::GetAnnotationStoreVersionResponse#version_size_bytes #version_size_bytes} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_annotation_store_version({
    #     name: "String", # required
    #     version_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.store_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.version_arn #=> String
    #   resp.name #=> String
    #   resp.version_name #=> String
    #   resp.description #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.version_options.tsv_version_options.annotation_type #=> String, one of "GENERIC", "CHR_POS", "CHR_POS_REF_ALT", "CHR_START_END_ONE_BASE", "CHR_START_END_REF_ALT_ONE_BASE", "CHR_START_END_ZERO_BASE", "CHR_START_END_REF_ALT_ZERO_BASE"
    #   resp.version_options.tsv_version_options.format_to_header #=> Hash
    #   resp.version_options.tsv_version_options.format_to_header["FormatToHeaderKey"] #=> String
    #   resp.version_options.tsv_version_options.schema #=> Array
    #   resp.version_options.tsv_version_options.schema[0] #=> Hash
    #   resp.version_options.tsv_version_options.schema[0]["SchemaItemKeyString"] #=> String, one of "LONG", "INT", "STRING", "FLOAT", "DOUBLE", "BOOLEAN"
    #   resp.status_message #=> String
    #   resp.version_size_bytes #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * annotation_store_version_created
    #   * annotation_store_version_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetAnnotationStoreVersion AWS API Documentation
    #
    # @overload get_annotation_store_version(params = {})
    # @param [Hash] params ({})
    def get_annotation_store_version(params = {}, options = {})
      req = build_request(:get_annotation_store_version, params)
      req.send_request(options)
    end

    # Gets a file from a read set.
    #
    # @option params [required, String] :id
    #   The read set's ID.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @option params [String] :file
    #   The file to retrieve.
    #
    # @option params [required, Integer] :part_number
    #   The part number to retrieve.
    #
    # @return [Types::GetReadSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetResponse#payload #payload} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set({
    #     id: "ReadSetId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #     file: "SOURCE1", # accepts SOURCE1, SOURCE2, INDEX
    #     part_number: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.payload #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSet AWS API Documentation
    #
    # @overload get_read_set(params = {})
    # @param [Hash] params ({})
    def get_read_set(params = {}, options = {}, &block)
      req = build_request(:get_read_set, params)
      req.send_request(options, &block)
    end

    # Gets information about a read set activation job.
    #
    # @option params [required, String] :id
    #   The job's ID.
    #
    # @option params [required, String] :sequence_store_id
    #   The job's sequence store ID.
    #
    # @return [Types::GetReadSetActivationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetActivationJobResponse#id #id} => String
    #   * {Types::GetReadSetActivationJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::GetReadSetActivationJobResponse#status #status} => String
    #   * {Types::GetReadSetActivationJobResponse#status_message #status_message} => String
    #   * {Types::GetReadSetActivationJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetReadSetActivationJobResponse#completion_time #completion_time} => Time
    #   * {Types::GetReadSetActivationJobResponse#sources #sources} => Array&lt;Types::ActivateReadSetSourceItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set_activation_job({
    #     id: "ActivationJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #   resp.creation_time #=> Time
    #   resp.completion_time #=> Time
    #   resp.sources #=> Array
    #   resp.sources[0].read_set_id #=> String
    #   resp.sources[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FINISHED", "FAILED"
    #   resp.sources[0].status_message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * read_set_activation_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetActivationJob AWS API Documentation
    #
    # @overload get_read_set_activation_job(params = {})
    # @param [Hash] params ({})
    def get_read_set_activation_job(params = {}, options = {})
      req = build_request(:get_read_set_activation_job, params)
      req.send_request(options)
    end

    # Gets information about a read set export job.
    #
    # @option params [required, String] :sequence_store_id
    #   The job's sequence store ID.
    #
    # @option params [required, String] :id
    #   The job's ID.
    #
    # @return [Types::GetReadSetExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetExportJobResponse#id #id} => String
    #   * {Types::GetReadSetExportJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::GetReadSetExportJobResponse#destination #destination} => String
    #   * {Types::GetReadSetExportJobResponse#status #status} => String
    #   * {Types::GetReadSetExportJobResponse#status_message #status_message} => String
    #   * {Types::GetReadSetExportJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetReadSetExportJobResponse#completion_time #completion_time} => Time
    #   * {Types::GetReadSetExportJobResponse#read_sets #read_sets} => Array&lt;Types::ExportReadSetDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set_export_job({
    #     sequence_store_id: "SequenceStoreId", # required
    #     id: "ExportJobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.destination #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #   resp.creation_time #=> Time
    #   resp.completion_time #=> Time
    #   resp.read_sets #=> Array
    #   resp.read_sets[0].id #=> String
    #   resp.read_sets[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FINISHED", "FAILED"
    #   resp.read_sets[0].status_message #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * read_set_export_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetExportJob AWS API Documentation
    #
    # @overload get_read_set_export_job(params = {})
    # @param [Hash] params ({})
    def get_read_set_export_job(params = {}, options = {})
      req = build_request(:get_read_set_export_job, params)
      req.send_request(options)
    end

    # Gets information about a read set import job.
    #
    # @option params [required, String] :id
    #   The job's ID.
    #
    # @option params [required, String] :sequence_store_id
    #   The job's sequence store ID.
    #
    # @return [Types::GetReadSetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetImportJobResponse#id #id} => String
    #   * {Types::GetReadSetImportJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::GetReadSetImportJobResponse#role_arn #role_arn} => String
    #   * {Types::GetReadSetImportJobResponse#status #status} => String
    #   * {Types::GetReadSetImportJobResponse#status_message #status_message} => String
    #   * {Types::GetReadSetImportJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetReadSetImportJobResponse#completion_time #completion_time} => Time
    #   * {Types::GetReadSetImportJobResponse#sources #sources} => Array&lt;Types::ImportReadSetSourceItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set_import_job({
    #     id: "ImportJobId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #   resp.creation_time #=> Time
    #   resp.completion_time #=> Time
    #   resp.sources #=> Array
    #   resp.sources[0].source_files.source1 #=> String
    #   resp.sources[0].source_files.source2 #=> String
    #   resp.sources[0].source_file_type #=> String, one of "FASTQ", "BAM", "CRAM", "UBAM"
    #   resp.sources[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FINISHED", "FAILED"
    #   resp.sources[0].status_message #=> String
    #   resp.sources[0].subject_id #=> String
    #   resp.sources[0].sample_id #=> String
    #   resp.sources[0].generated_from #=> String
    #   resp.sources[0].reference_arn #=> String
    #   resp.sources[0].name #=> String
    #   resp.sources[0].description #=> String
    #   resp.sources[0].tags #=> Hash
    #   resp.sources[0].tags["TagKey"] #=> String
    #   resp.sources[0].read_set_id #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * read_set_import_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetImportJob AWS API Documentation
    #
    # @overload get_read_set_import_job(params = {})
    # @param [Hash] params ({})
    def get_read_set_import_job(params = {}, options = {})
      req = build_request(:get_read_set_import_job, params)
      req.send_request(options)
    end

    # Gets details about a read set.
    #
    # @option params [required, String] :id
    #   The read set's ID.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @return [Types::GetReadSetMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReadSetMetadataResponse#id #id} => String
    #   * {Types::GetReadSetMetadataResponse#arn #arn} => String
    #   * {Types::GetReadSetMetadataResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::GetReadSetMetadataResponse#subject_id #subject_id} => String
    #   * {Types::GetReadSetMetadataResponse#sample_id #sample_id} => String
    #   * {Types::GetReadSetMetadataResponse#status #status} => String
    #   * {Types::GetReadSetMetadataResponse#name #name} => String
    #   * {Types::GetReadSetMetadataResponse#description #description} => String
    #   * {Types::GetReadSetMetadataResponse#file_type #file_type} => String
    #   * {Types::GetReadSetMetadataResponse#creation_time #creation_time} => Time
    #   * {Types::GetReadSetMetadataResponse#sequence_information #sequence_information} => Types::SequenceInformation
    #   * {Types::GetReadSetMetadataResponse#reference_arn #reference_arn} => String
    #   * {Types::GetReadSetMetadataResponse#files #files} => Types::ReadSetFiles
    #   * {Types::GetReadSetMetadataResponse#status_message #status_message} => String
    #   * {Types::GetReadSetMetadataResponse#creation_type #creation_type} => String
    #   * {Types::GetReadSetMetadataResponse#etag #etag} => Types::ETag
    #   * {Types::GetReadSetMetadataResponse#creation_job_id #creation_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_read_set_metadata({
    #     id: "ReadSetId", # required
    #     sequence_store_id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.sequence_store_id #=> String
    #   resp.subject_id #=> String
    #   resp.sample_id #=> String
    #   resp.status #=> String, one of "ARCHIVED", "ACTIVATING", "ACTIVE", "DELETING", "DELETED", "PROCESSING_UPLOAD", "UPLOAD_FAILED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.file_type #=> String, one of "FASTQ", "BAM", "CRAM", "UBAM"
    #   resp.creation_time #=> Time
    #   resp.sequence_information.total_read_count #=> Integer
    #   resp.sequence_information.total_base_count #=> Integer
    #   resp.sequence_information.generated_from #=> String
    #   resp.sequence_information.alignment #=> String
    #   resp.reference_arn #=> String
    #   resp.files.source1.total_parts #=> Integer
    #   resp.files.source1.part_size #=> Integer
    #   resp.files.source1.content_length #=> Integer
    #   resp.files.source1.s3_access.s3_uri #=> String
    #   resp.files.source2.total_parts #=> Integer
    #   resp.files.source2.part_size #=> Integer
    #   resp.files.source2.content_length #=> Integer
    #   resp.files.source2.s3_access.s3_uri #=> String
    #   resp.files.index.total_parts #=> Integer
    #   resp.files.index.part_size #=> Integer
    #   resp.files.index.content_length #=> Integer
    #   resp.files.index.s3_access.s3_uri #=> String
    #   resp.status_message #=> String
    #   resp.creation_type #=> String, one of "IMPORT", "UPLOAD"
    #   resp.etag.algorithm #=> String, one of "FASTQ_MD5up", "BAM_MD5up", "CRAM_MD5up", "FASTQ_SHA256up", "BAM_SHA256up", "CRAM_SHA256up", "FASTQ_SHA512up", "BAM_SHA512up", "CRAM_SHA512up"
    #   resp.etag.source1 #=> String
    #   resp.etag.source2 #=> String
    #   resp.creation_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReadSetMetadata AWS API Documentation
    #
    # @overload get_read_set_metadata(params = {})
    # @param [Hash] params ({})
    def get_read_set_metadata(params = {}, options = {})
      req = build_request(:get_read_set_metadata, params)
      req.send_request(options)
    end

    # Gets a reference file.
    #
    # @option params [required, String] :id
    #   The reference's ID.
    #
    # @option params [required, String] :reference_store_id
    #   The reference's store ID.
    #
    # @option params [String] :range
    #   The range to retrieve.
    #
    # @option params [required, Integer] :part_number
    #   The part number to retrieve.
    #
    # @option params [String] :file
    #   The file to retrieve.
    #
    # @return [Types::GetReferenceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReferenceResponse#payload #payload} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reference({
    #     id: "ReferenceId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #     range: "Range",
    #     part_number: 1, # required
    #     file: "SOURCE", # accepts SOURCE, INDEX
    #   })
    #
    # @example Response structure
    #
    #   resp.payload #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReference AWS API Documentation
    #
    # @overload get_reference(params = {})
    # @param [Hash] params ({})
    def get_reference(params = {}, options = {}, &block)
      req = build_request(:get_reference, params)
      req.send_request(options, &block)
    end

    # Gets information about a reference import job.
    #
    # @option params [required, String] :id
    #   The job's ID.
    #
    # @option params [required, String] :reference_store_id
    #   The job's reference store ID.
    #
    # @return [Types::GetReferenceImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReferenceImportJobResponse#id #id} => String
    #   * {Types::GetReferenceImportJobResponse#reference_store_id #reference_store_id} => String
    #   * {Types::GetReferenceImportJobResponse#role_arn #role_arn} => String
    #   * {Types::GetReferenceImportJobResponse#status #status} => String
    #   * {Types::GetReferenceImportJobResponse#status_message #status_message} => String
    #   * {Types::GetReferenceImportJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetReferenceImportJobResponse#completion_time #completion_time} => Time
    #   * {Types::GetReferenceImportJobResponse#sources #sources} => Array&lt;Types::ImportReferenceSourceItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reference_import_job({
    #     id: "ImportJobId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.reference_store_id #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #   resp.creation_time #=> Time
    #   resp.completion_time #=> Time
    #   resp.sources #=> Array
    #   resp.sources[0].source_file #=> String
    #   resp.sources[0].status #=> String, one of "NOT_STARTED", "IN_PROGRESS", "FINISHED", "FAILED"
    #   resp.sources[0].status_message #=> String
    #   resp.sources[0].name #=> String
    #   resp.sources[0].description #=> String
    #   resp.sources[0].tags #=> Hash
    #   resp.sources[0].tags["TagKey"] #=> String
    #   resp.sources[0].reference_id #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * reference_import_job_completed
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceImportJob AWS API Documentation
    #
    # @overload get_reference_import_job(params = {})
    # @param [Hash] params ({})
    def get_reference_import_job(params = {}, options = {})
      req = build_request(:get_reference_import_job, params)
      req.send_request(options)
    end

    # Gets information about a genome reference's metadata.
    #
    # @option params [required, String] :id
    #   The reference's ID.
    #
    # @option params [required, String] :reference_store_id
    #   The reference's reference store ID.
    #
    # @return [Types::GetReferenceMetadataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReferenceMetadataResponse#id #id} => String
    #   * {Types::GetReferenceMetadataResponse#arn #arn} => String
    #   * {Types::GetReferenceMetadataResponse#reference_store_id #reference_store_id} => String
    #   * {Types::GetReferenceMetadataResponse#md5 #md5} => String
    #   * {Types::GetReferenceMetadataResponse#status #status} => String
    #   * {Types::GetReferenceMetadataResponse#name #name} => String
    #   * {Types::GetReferenceMetadataResponse#description #description} => String
    #   * {Types::GetReferenceMetadataResponse#creation_time #creation_time} => Time
    #   * {Types::GetReferenceMetadataResponse#update_time #update_time} => Time
    #   * {Types::GetReferenceMetadataResponse#files #files} => Types::ReferenceFiles
    #   * {Types::GetReferenceMetadataResponse#creation_type #creation_type} => String
    #   * {Types::GetReferenceMetadataResponse#creation_job_id #creation_job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reference_metadata({
    #     id: "ReferenceId", # required
    #     reference_store_id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.reference_store_id #=> String
    #   resp.md5 #=> String
    #   resp.status #=> String, one of "ACTIVE", "DELETING", "DELETED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #   resp.files.source.total_parts #=> Integer
    #   resp.files.source.part_size #=> Integer
    #   resp.files.source.content_length #=> Integer
    #   resp.files.source.s3_access.s3_uri #=> String
    #   resp.files.index.total_parts #=> Integer
    #   resp.files.index.part_size #=> Integer
    #   resp.files.index.content_length #=> Integer
    #   resp.files.index.s3_access.s3_uri #=> String
    #   resp.creation_type #=> String, one of "IMPORT"
    #   resp.creation_job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceMetadata AWS API Documentation
    #
    # @overload get_reference_metadata(params = {})
    # @param [Hash] params ({})
    def get_reference_metadata(params = {}, options = {})
      req = build_request(:get_reference_metadata, params)
      req.send_request(options)
    end

    # Gets information about a reference store.
    #
    # @option params [required, String] :id
    #   The store's ID.
    #
    # @return [Types::GetReferenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetReferenceStoreResponse#id #id} => String
    #   * {Types::GetReferenceStoreResponse#arn #arn} => String
    #   * {Types::GetReferenceStoreResponse#name #name} => String
    #   * {Types::GetReferenceStoreResponse#description #description} => String
    #   * {Types::GetReferenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::GetReferenceStoreResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_reference_store({
    #     id: "ReferenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.sse_config.key_arn #=> String
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetReferenceStore AWS API Documentation
    #
    # @overload get_reference_store(params = {})
    # @param [Hash] params ({})
    def get_reference_store(params = {}, options = {})
      req = build_request(:get_reference_store, params)
      req.send_request(options)
    end

    # Gets detailed information about a specific run using its ID.
    #
    # Amazon Web Services HealthOmics stores a configurable number of runs,
    # as determined by service limits, that are available to the console and
    # API. If `GetRun` does not return the requested run, you can find all
    # run logs in the CloudWatch logs. For more information about viewing
    # the run logs, see [CloudWatch logs][1] in the *Amazon Web Services
    # HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/monitoring-cloudwatch-logs.html
    #
    # @option params [required, String] :id
    #   The run's ID.
    #
    # @option params [Array<String>] :export
    #   The run's export format.
    #
    # @return [Types::GetRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRunResponse#arn #arn} => String
    #   * {Types::GetRunResponse#id #id} => String
    #   * {Types::GetRunResponse#cache_id #cache_id} => String
    #   * {Types::GetRunResponse#cache_behavior #cache_behavior} => String
    #   * {Types::GetRunResponse#engine_version #engine_version} => String
    #   * {Types::GetRunResponse#status #status} => String
    #   * {Types::GetRunResponse#workflow_id #workflow_id} => String
    #   * {Types::GetRunResponse#workflow_type #workflow_type} => String
    #   * {Types::GetRunResponse#run_id #run_id} => String
    #   * {Types::GetRunResponse#role_arn #role_arn} => String
    #   * {Types::GetRunResponse#name #name} => String
    #   * {Types::GetRunResponse#run_group_id #run_group_id} => String
    #   * {Types::GetRunResponse#priority #priority} => Integer
    #   * {Types::GetRunResponse#definition #definition} => String
    #   * {Types::GetRunResponse#digest #digest} => String
    #   * {Types::GetRunResponse#parameters #parameters} => Hash,Array,String,Numeric,Boolean
    #   * {Types::GetRunResponse#storage_capacity #storage_capacity} => Integer
    #   * {Types::GetRunResponse#output_uri #output_uri} => String
    #   * {Types::GetRunResponse#log_level #log_level} => String
    #   * {Types::GetRunResponse#resource_digests #resource_digests} => Hash&lt;String,String&gt;
    #   * {Types::GetRunResponse#started_by #started_by} => String
    #   * {Types::GetRunResponse#creation_time #creation_time} => Time
    #   * {Types::GetRunResponse#start_time #start_time} => Time
    #   * {Types::GetRunResponse#stop_time #stop_time} => Time
    #   * {Types::GetRunResponse#status_message #status_message} => String
    #   * {Types::GetRunResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetRunResponse#accelerators #accelerators} => String
    #   * {Types::GetRunResponse#retention_mode #retention_mode} => String
    #   * {Types::GetRunResponse#failure_reason #failure_reason} => String
    #   * {Types::GetRunResponse#log_location #log_location} => Types::RunLogLocation
    #   * {Types::GetRunResponse#uuid #uuid} => String
    #   * {Types::GetRunResponse#run_output_uri #run_output_uri} => String
    #   * {Types::GetRunResponse#storage_type #storage_type} => String
    #   * {Types::GetRunResponse#workflow_owner_id #workflow_owner_id} => String
    #   * {Types::GetRunResponse#workflow_version_name #workflow_version_name} => String
    #   * {Types::GetRunResponse#workflow_uuid #workflow_uuid} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run({
    #     id: "RunId", # required
    #     export: ["DEFINITION"], # accepts DEFINITION
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.cache_id #=> String
    #   resp.cache_behavior #=> String, one of "CACHE_ON_FAILURE", "CACHE_ALWAYS"
    #   resp.engine_version #=> String
    #   resp.status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "DELETED", "CANCELLED", "FAILED"
    #   resp.workflow_id #=> String
    #   resp.workflow_type #=> String, one of "PRIVATE", "READY2RUN"
    #   resp.run_id #=> String
    #   resp.role_arn #=> String
    #   resp.name #=> String
    #   resp.run_group_id #=> String
    #   resp.priority #=> Integer
    #   resp.definition #=> String
    #   resp.digest #=> String
    #   resp.storage_capacity #=> Integer
    #   resp.output_uri #=> String
    #   resp.log_level #=> String, one of "OFF", "FATAL", "ERROR", "ALL"
    #   resp.resource_digests #=> Hash
    #   resp.resource_digests["RunResourceDigestKey"] #=> String
    #   resp.started_by #=> String
    #   resp.creation_time #=> Time
    #   resp.start_time #=> Time
    #   resp.stop_time #=> Time
    #   resp.status_message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.accelerators #=> String, one of "GPU"
    #   resp.retention_mode #=> String, one of "RETAIN", "REMOVE"
    #   resp.failure_reason #=> String
    #   resp.log_location.engine_log_stream #=> String
    #   resp.log_location.run_log_stream #=> String
    #   resp.uuid #=> String
    #   resp.run_output_uri #=> String
    #   resp.storage_type #=> String, one of "STATIC", "DYNAMIC"
    #   resp.workflow_owner_id #=> String
    #   resp.workflow_version_name #=> String
    #   resp.workflow_uuid #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * run_completed
    #   * run_running
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRun AWS API Documentation
    #
    # @overload get_run(params = {})
    # @param [Hash] params ({})
    def get_run(params = {}, options = {})
      req = build_request(:get_run, params)
      req.send_request(options)
    end

    # Retrieves detailed information about the specified run cache using its
    # ID.
    #
    # For more information, see [Call caching for Amazon Web Services
    # HealthOmics runs][1] in the *Amazon Web Services HealthOmics User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-call-caching.html
    #
    # @option params [required, String] :id
    #   The identifier of the run cache to retrieve.
    #
    # @return [Types::GetRunCacheResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRunCacheResponse#arn #arn} => String
    #   * {Types::GetRunCacheResponse#cache_behavior #cache_behavior} => String
    #   * {Types::GetRunCacheResponse#cache_bucket_owner_id #cache_bucket_owner_id} => String
    #   * {Types::GetRunCacheResponse#cache_s3_uri #cache_s3_uri} => String
    #   * {Types::GetRunCacheResponse#creation_time #creation_time} => Time
    #   * {Types::GetRunCacheResponse#description #description} => String
    #   * {Types::GetRunCacheResponse#id #id} => String
    #   * {Types::GetRunCacheResponse#name #name} => String
    #   * {Types::GetRunCacheResponse#status #status} => String
    #   * {Types::GetRunCacheResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run_cache({
    #     id: "RunCacheId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.cache_behavior #=> String, one of "CACHE_ON_FAILURE", "CACHE_ALWAYS"
    #   resp.cache_bucket_owner_id #=> String
    #   resp.cache_s3_uri #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE", "DELETED", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunCache AWS API Documentation
    #
    # @overload get_run_cache(params = {})
    # @param [Hash] params ({})
    def get_run_cache(params = {}, options = {})
      req = build_request(:get_run_cache, params)
      req.send_request(options)
    end

    # Gets information about a run group and returns its metadata.
    #
    # @option params [required, String] :id
    #   The group's ID.
    #
    # @return [Types::GetRunGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRunGroupResponse#arn #arn} => String
    #   * {Types::GetRunGroupResponse#id #id} => String
    #   * {Types::GetRunGroupResponse#name #name} => String
    #   * {Types::GetRunGroupResponse#max_cpus #max_cpus} => Integer
    #   * {Types::GetRunGroupResponse#max_runs #max_runs} => Integer
    #   * {Types::GetRunGroupResponse#max_duration #max_duration} => Integer
    #   * {Types::GetRunGroupResponse#creation_time #creation_time} => Time
    #   * {Types::GetRunGroupResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetRunGroupResponse#max_gpus #max_gpus} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run_group({
    #     id: "RunGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.max_cpus #=> Integer
    #   resp.max_runs #=> Integer
    #   resp.max_duration #=> Integer
    #   resp.creation_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.max_gpus #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunGroup AWS API Documentation
    #
    # @overload get_run_group(params = {})
    # @param [Hash] params ({})
    def get_run_group(params = {}, options = {})
      req = build_request(:get_run_group, params)
      req.send_request(options)
    end

    # Gets detailed information about a run task using its ID.
    #
    # @option params [required, String] :id
    #   The workflow run ID.
    #
    # @option params [required, String] :task_id
    #   The task's ID.
    #
    # @return [Types::GetRunTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRunTaskResponse#task_id #task_id} => String
    #   * {Types::GetRunTaskResponse#status #status} => String
    #   * {Types::GetRunTaskResponse#name #name} => String
    #   * {Types::GetRunTaskResponse#cpus #cpus} => Integer
    #   * {Types::GetRunTaskResponse#cache_hit #cache_hit} => Boolean
    #   * {Types::GetRunTaskResponse#cache_s3_uri #cache_s3_uri} => String
    #   * {Types::GetRunTaskResponse#memory #memory} => Integer
    #   * {Types::GetRunTaskResponse#creation_time #creation_time} => Time
    #   * {Types::GetRunTaskResponse#start_time #start_time} => Time
    #   * {Types::GetRunTaskResponse#stop_time #stop_time} => Time
    #   * {Types::GetRunTaskResponse#status_message #status_message} => String
    #   * {Types::GetRunTaskResponse#log_stream #log_stream} => String
    #   * {Types::GetRunTaskResponse#gpus #gpus} => Integer
    #   * {Types::GetRunTaskResponse#instance_type #instance_type} => String
    #   * {Types::GetRunTaskResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_run_task({
    #     id: "RunId", # required
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #   resp.status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "CANCELLED", "FAILED"
    #   resp.name #=> String
    #   resp.cpus #=> Integer
    #   resp.cache_hit #=> Boolean
    #   resp.cache_s3_uri #=> String
    #   resp.memory #=> Integer
    #   resp.creation_time #=> Time
    #   resp.start_time #=> Time
    #   resp.stop_time #=> Time
    #   resp.status_message #=> String
    #   resp.log_stream #=> String
    #   resp.gpus #=> Integer
    #   resp.instance_type #=> String
    #   resp.failure_reason #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * task_completed
    #   * task_running
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetRunTask AWS API Documentation
    #
    # @overload get_run_task(params = {})
    # @param [Hash] params ({})
    def get_run_task(params = {}, options = {})
      req = build_request(:get_run_task, params)
      req.send_request(options)
    end

    # Retrieves details about an access policy on a given store.
    #
    # @option params [required, String] :s3_access_point_arn
    #   The S3 access point ARN that has the access policy.
    #
    # @return [Types::GetS3AccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetS3AccessPolicyResponse#s3_access_point_arn #s3_access_point_arn} => String
    #   * {Types::GetS3AccessPolicyResponse#store_id #store_id} => String
    #   * {Types::GetS3AccessPolicyResponse#store_type #store_type} => String
    #   * {Types::GetS3AccessPolicyResponse#update_time #update_time} => Time
    #   * {Types::GetS3AccessPolicyResponse#s3_access_policy #s3_access_policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_s3_access_policy({
    #     s3_access_point_arn: "S3AccessPointArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.s3_access_point_arn #=> String
    #   resp.store_id #=> String
    #   resp.store_type #=> String, one of "SEQUENCE_STORE", "REFERENCE_STORE"
    #   resp.update_time #=> Time
    #   resp.s3_access_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetS3AccessPolicy AWS API Documentation
    #
    # @overload get_s3_access_policy(params = {})
    # @param [Hash] params ({})
    def get_s3_access_policy(params = {}, options = {})
      req = build_request(:get_s3_access_policy, params)
      req.send_request(options)
    end

    # Gets information about a sequence store.
    #
    # @option params [required, String] :id
    #   The store's ID.
    #
    # @return [Types::GetSequenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSequenceStoreResponse#id #id} => String
    #   * {Types::GetSequenceStoreResponse#arn #arn} => String
    #   * {Types::GetSequenceStoreResponse#name #name} => String
    #   * {Types::GetSequenceStoreResponse#description #description} => String
    #   * {Types::GetSequenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::GetSequenceStoreResponse#creation_time #creation_time} => Time
    #   * {Types::GetSequenceStoreResponse#fallback_location #fallback_location} => String
    #   * {Types::GetSequenceStoreResponse#s3_access #s3_access} => Types::SequenceStoreS3Access
    #   * {Types::GetSequenceStoreResponse#e_tag_algorithm_family #e_tag_algorithm_family} => String
    #   * {Types::GetSequenceStoreResponse#status #status} => String
    #   * {Types::GetSequenceStoreResponse#status_message #status_message} => String
    #   * {Types::GetSequenceStoreResponse#propagated_set_level_tags #propagated_set_level_tags} => Array&lt;String&gt;
    #   * {Types::GetSequenceStoreResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sequence_store({
    #     id: "SequenceStoreId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.sse_config.key_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.fallback_location #=> String
    #   resp.s3_access.s3_uri #=> String
    #   resp.s3_access.s3_access_point_arn #=> String
    #   resp.s3_access.access_log_location #=> String
    #   resp.e_tag_algorithm_family #=> String, one of "MD5up", "SHA256up", "SHA512up"
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.status_message #=> String
    #   resp.propagated_set_level_tags #=> Array
    #   resp.propagated_set_level_tags[0] #=> String
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetSequenceStore AWS API Documentation
    #
    # @overload get_sequence_store(params = {})
    # @param [Hash] params ({})
    def get_sequence_store(params = {}, options = {})
      req = build_request(:get_sequence_store, params)
      req.send_request(options)
    end

    # Retrieves the metadata for the specified resource share.
    #
    # @option params [required, String] :share_id
    #   The ID of the share.
    #
    # @return [Types::GetShareResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetShareResponse#share #share} => Types::ShareDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_share({
    #     share_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.share.share_id #=> String
    #   resp.share.resource_arn #=> String
    #   resp.share.resource_id #=> String
    #   resp.share.principal_subscriber #=> String
    #   resp.share.owner_id #=> String
    #   resp.share.status #=> String, one of "PENDING", "ACTIVATING", "ACTIVE", "DELETING", "DELETED", "FAILED"
    #   resp.share.status_message #=> String
    #   resp.share.share_name #=> String
    #   resp.share.creation_time #=> Time
    #   resp.share.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetShare AWS API Documentation
    #
    # @overload get_share(params = {})
    # @param [Hash] params ({})
    def get_share(params = {}, options = {})
      req = build_request(:get_share, params)
      req.send_request(options)
    end

    # Gets information about a variant import job.
    #
    # @option params [required, String] :job_id
    #   The job's ID.
    #
    # @return [Types::GetVariantImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVariantImportResponse#id #id} => String
    #   * {Types::GetVariantImportResponse#destination_name #destination_name} => String
    #   * {Types::GetVariantImportResponse#role_arn #role_arn} => String
    #   * {Types::GetVariantImportResponse#status #status} => String
    #   * {Types::GetVariantImportResponse#status_message #status_message} => String
    #   * {Types::GetVariantImportResponse#creation_time #creation_time} => Time
    #   * {Types::GetVariantImportResponse#update_time #update_time} => Time
    #   * {Types::GetVariantImportResponse#completion_time #completion_time} => Time
    #   * {Types::GetVariantImportResponse#items #items} => Array&lt;Types::VariantImportItemDetail&gt;
    #   * {Types::GetVariantImportResponse#run_left_normalization #run_left_normalization} => Boolean
    #   * {Types::GetVariantImportResponse#annotation_fields #annotation_fields} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_variant_import_job({
    #     job_id: "ResourceId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.destination_name #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #   resp.status_message #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #   resp.completion_time #=> Time
    #   resp.items #=> Array
    #   resp.items[0].source #=> String
    #   resp.items[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #   resp.items[0].status_message #=> String
    #   resp.run_left_normalization #=> Boolean
    #   resp.annotation_fields #=> Hash
    #   resp.annotation_fields["AnnotationFieldMapKeyString"] #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * variant_import_job_created
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetVariantImportJob AWS API Documentation
    #
    # @overload get_variant_import_job(params = {})
    # @param [Hash] params ({})
    def get_variant_import_job(params = {}, options = {})
      req = build_request(:get_variant_import_job, params)
      req.send_request(options)
    end

    # Gets information about a variant store.
    #
    # @option params [required, String] :name
    #   The store's name.
    #
    # @return [Types::GetVariantStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVariantStoreResponse#id #id} => String
    #   * {Types::GetVariantStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::GetVariantStoreResponse#status #status} => String
    #   * {Types::GetVariantStoreResponse#store_arn #store_arn} => String
    #   * {Types::GetVariantStoreResponse#name #name} => String
    #   * {Types::GetVariantStoreResponse#description #description} => String
    #   * {Types::GetVariantStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::GetVariantStoreResponse#creation_time #creation_time} => Time
    #   * {Types::GetVariantStoreResponse#update_time #update_time} => Time
    #   * {Types::GetVariantStoreResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetVariantStoreResponse#status_message #status_message} => String
    #   * {Types::GetVariantStoreResponse#store_size_bytes #store_size_bytes} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_variant_store({
    #     name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.store_arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.sse_config.key_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.status_message #=> String
    #   resp.store_size_bytes #=> Integer
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * variant_store_created
    #   * variant_store_deleted
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetVariantStore AWS API Documentation
    #
    # @overload get_variant_store(params = {})
    # @param [Hash] params ({})
    def get_variant_store(params = {}, options = {})
      req = build_request(:get_variant_store, params)
      req.send_request(options)
    end

    # Gets all information about a workflow using its ID.
    #
    # If a workflow is shared with you, you cannot export the workflow.
    #
    # For more information about your workflow status, see [Verify the
    # workflow status][1] in the *Amazon Web Services HealthOmics User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/using-get-workflow.html
    #
    # @option params [required, String] :id
    #   The workflow's ID.
    #
    # @option params [String] :type
    #   The workflow's type.
    #
    # @option params [Array<String>] :export
    #   The export format for the workflow.
    #
    # @option params [String] :workflow_owner_id
    #   The ID of the workflow owner.
    #
    # @return [Types::GetWorkflowResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowResponse#arn #arn} => String
    #   * {Types::GetWorkflowResponse#id #id} => String
    #   * {Types::GetWorkflowResponse#status #status} => String
    #   * {Types::GetWorkflowResponse#type #type} => String
    #   * {Types::GetWorkflowResponse#name #name} => String
    #   * {Types::GetWorkflowResponse#description #description} => String
    #   * {Types::GetWorkflowResponse#engine #engine} => String
    #   * {Types::GetWorkflowResponse#definition #definition} => String
    #   * {Types::GetWorkflowResponse#main #main} => String
    #   * {Types::GetWorkflowResponse#digest #digest} => String
    #   * {Types::GetWorkflowResponse#parameter_template #parameter_template} => Hash&lt;String,Types::WorkflowParameter&gt;
    #   * {Types::GetWorkflowResponse#storage_capacity #storage_capacity} => Integer
    #   * {Types::GetWorkflowResponse#creation_time #creation_time} => Time
    #   * {Types::GetWorkflowResponse#status_message #status_message} => String
    #   * {Types::GetWorkflowResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetWorkflowResponse#metadata #metadata} => Hash&lt;String,String&gt;
    #   * {Types::GetWorkflowResponse#accelerators #accelerators} => String
    #   * {Types::GetWorkflowResponse#storage_type #storage_type} => String
    #   * {Types::GetWorkflowResponse#uuid #uuid} => String
    #   * {Types::GetWorkflowResponse#readme #readme} => String
    #   * {Types::GetWorkflowResponse#definition_repository_details #definition_repository_details} => Types::DefinitionRepositoryDetails
    #   * {Types::GetWorkflowResponse#readme_path #readme_path} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow({
    #     id: "WorkflowId", # required
    #     type: "PRIVATE", # accepts PRIVATE, READY2RUN
    #     export: ["DEFINITION"], # accepts DEFINITION, README
    #     workflow_owner_id: "WorkflowOwnerId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED", "INACTIVE"
    #   resp.type #=> String, one of "PRIVATE", "READY2RUN"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.engine #=> String, one of "WDL", "NEXTFLOW", "CWL"
    #   resp.definition #=> String
    #   resp.main #=> String
    #   resp.digest #=> String
    #   resp.parameter_template #=> Hash
    #   resp.parameter_template["WorkflowParameterName"].description #=> String
    #   resp.parameter_template["WorkflowParameterName"].optional #=> Boolean
    #   resp.storage_capacity #=> Integer
    #   resp.creation_time #=> Time
    #   resp.status_message #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.metadata #=> Hash
    #   resp.metadata["WorkflowMetadataKey"] #=> String
    #   resp.accelerators #=> String, one of "GPU"
    #   resp.storage_type #=> String, one of "STATIC", "DYNAMIC"
    #   resp.uuid #=> String
    #   resp.readme #=> String
    #   resp.definition_repository_details.connection_arn #=> String
    #   resp.definition_repository_details.full_repository_id #=> String
    #   resp.definition_repository_details.source_reference.type #=> String, one of "BRANCH", "TAG", "COMMIT"
    #   resp.definition_repository_details.source_reference.value #=> String
    #   resp.definition_repository_details.provider_type #=> String
    #   resp.definition_repository_details.provider_endpoint #=> String
    #   resp.readme_path #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * workflow_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetWorkflow AWS API Documentation
    #
    # @overload get_workflow(params = {})
    # @param [Hash] params ({})
    def get_workflow(params = {}, options = {})
      req = build_request(:get_workflow, params)
      req.send_request(options)
    end

    # Gets information about a workflow version. For more information, see
    # [Workflow versioning in Amazon Web Services HealthOmics][1] in the
    # *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html
    #
    # @option params [required, String] :workflow_id
    #   The workflow's ID.
    #
    # @option params [required, String] :version_name
    #   The workflow version name.
    #
    # @option params [String] :type
    #   The workflow's type.
    #
    # @option params [Array<String>] :export
    #   The export format for the workflow.
    #
    # @option params [String] :workflow_owner_id
    #   Amazon Web Services Id of the owner of the workflow.
    #
    # @return [Types::GetWorkflowVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWorkflowVersionResponse#arn #arn} => String
    #   * {Types::GetWorkflowVersionResponse#workflow_id #workflow_id} => String
    #   * {Types::GetWorkflowVersionResponse#version_name #version_name} => String
    #   * {Types::GetWorkflowVersionResponse#accelerators #accelerators} => String
    #   * {Types::GetWorkflowVersionResponse#creation_time #creation_time} => Time
    #   * {Types::GetWorkflowVersionResponse#description #description} => String
    #   * {Types::GetWorkflowVersionResponse#definition #definition} => String
    #   * {Types::GetWorkflowVersionResponse#digest #digest} => String
    #   * {Types::GetWorkflowVersionResponse#engine #engine} => String
    #   * {Types::GetWorkflowVersionResponse#main #main} => String
    #   * {Types::GetWorkflowVersionResponse#metadata #metadata} => Hash&lt;String,String&gt;
    #   * {Types::GetWorkflowVersionResponse#parameter_template #parameter_template} => Hash&lt;String,Types::WorkflowParameter&gt;
    #   * {Types::GetWorkflowVersionResponse#status #status} => String
    #   * {Types::GetWorkflowVersionResponse#status_message #status_message} => String
    #   * {Types::GetWorkflowVersionResponse#storage_type #storage_type} => String
    #   * {Types::GetWorkflowVersionResponse#storage_capacity #storage_capacity} => Integer
    #   * {Types::GetWorkflowVersionResponse#type #type} => String
    #   * {Types::GetWorkflowVersionResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetWorkflowVersionResponse#uuid #uuid} => String
    #   * {Types::GetWorkflowVersionResponse#workflow_bucket_owner_id #workflow_bucket_owner_id} => String
    #   * {Types::GetWorkflowVersionResponse#readme #readme} => String
    #   * {Types::GetWorkflowVersionResponse#definition_repository_details #definition_repository_details} => Types::DefinitionRepositoryDetails
    #   * {Types::GetWorkflowVersionResponse#readme_path #readme_path} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workflow_version({
    #     workflow_id: "WorkflowId", # required
    #     version_name: "WorkflowVersionName", # required
    #     type: "PRIVATE", # accepts PRIVATE, READY2RUN
    #     export: ["DEFINITION"], # accepts DEFINITION, README
    #     workflow_owner_id: "WorkflowOwnerId",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.workflow_id #=> String
    #   resp.version_name #=> String
    #   resp.accelerators #=> String, one of "GPU"
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.definition #=> String
    #   resp.digest #=> String
    #   resp.engine #=> String, one of "WDL", "NEXTFLOW", "CWL"
    #   resp.main #=> String
    #   resp.metadata #=> Hash
    #   resp.metadata["WorkflowMetadataKey"] #=> String
    #   resp.parameter_template #=> Hash
    #   resp.parameter_template["WorkflowParameterName"].description #=> String
    #   resp.parameter_template["WorkflowParameterName"].optional #=> Boolean
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED", "INACTIVE"
    #   resp.status_message #=> String
    #   resp.storage_type #=> String, one of "STATIC", "DYNAMIC"
    #   resp.storage_capacity #=> Integer
    #   resp.type #=> String, one of "PRIVATE", "READY2RUN"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.uuid #=> String
    #   resp.workflow_bucket_owner_id #=> String
    #   resp.readme #=> String
    #   resp.definition_repository_details.connection_arn #=> String
    #   resp.definition_repository_details.full_repository_id #=> String
    #   resp.definition_repository_details.source_reference.type #=> String, one of "BRANCH", "TAG", "COMMIT"
    #   resp.definition_repository_details.source_reference.value #=> String
    #   resp.definition_repository_details.provider_type #=> String
    #   resp.definition_repository_details.provider_endpoint #=> String
    #   resp.readme_path #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * workflow_version_active
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/GetWorkflowVersion AWS API Documentation
    #
    # @overload get_workflow_version(params = {})
    # @param [Hash] params ({})
    def get_workflow_version(params = {}, options = {})
      req = build_request(:get_workflow_version, params)
      req.send_request(options)
    end

    # Retrieves a list of annotation import jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in one page of results.
    #
    # @option params [Array<String>] :ids
    #   IDs of annotation import jobs to retrieve.
    #
    # @option params [String] :next_token
    #   Specifies the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ListAnnotationImportJobsFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListAnnotationImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnnotationImportJobsResponse#annotation_import_jobs #annotation_import_jobs} => Array&lt;Types::AnnotationImportJobItem&gt;
    #   * {Types::ListAnnotationImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_annotation_import_jobs({
    #     max_results: 1,
    #     ids: ["ResourceIdentifier"],
    #     next_token: "ListAnnotationImportJobsRequestNextTokenString",
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLED, COMPLETED, FAILED, COMPLETED_WITH_FAILURES
    #       store_name: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.annotation_import_jobs #=> Array
    #   resp.annotation_import_jobs[0].id #=> String
    #   resp.annotation_import_jobs[0].destination_name #=> String
    #   resp.annotation_import_jobs[0].version_name #=> String
    #   resp.annotation_import_jobs[0].role_arn #=> String
    #   resp.annotation_import_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #   resp.annotation_import_jobs[0].creation_time #=> Time
    #   resp.annotation_import_jobs[0].update_time #=> Time
    #   resp.annotation_import_jobs[0].completion_time #=> Time
    #   resp.annotation_import_jobs[0].run_left_normalization #=> Boolean
    #   resp.annotation_import_jobs[0].annotation_fields #=> Hash
    #   resp.annotation_import_jobs[0].annotation_fields["AnnotationFieldMapKeyString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationImportJobs AWS API Documentation
    #
    # @overload list_annotation_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_annotation_import_jobs(params = {}, options = {})
      req = build_request(:list_annotation_import_jobs, params)
      req.send_request(options)
    end

    # Lists the versions of an annotation store.
    #
    # @option params [required, String] :name
    #   The name of an annotation store.
    #
    # @option params [Integer] :max_results
    #   The maximum number of annotation store versions to return in one page
    #   of results.
    #
    # @option params [String] :next_token
    #   Specifies the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ListAnnotationStoreVersionsFilter] :filter
    #   A filter to apply to the list of annotation store versions.
    #
    # @return [Types::ListAnnotationStoreVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnnotationStoreVersionsResponse#annotation_store_versions #annotation_store_versions} => Array&lt;Types::AnnotationStoreVersionItem&gt;
    #   * {Types::ListAnnotationStoreVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_annotation_store_versions({
    #     name: "String", # required
    #     max_results: 1,
    #     next_token: "ListAnnotationStoreVersionsRequestNextTokenString",
    #     filter: {
    #       status: "CREATING", # accepts CREATING, UPDATING, DELETING, ACTIVE, FAILED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.annotation_store_versions #=> Array
    #   resp.annotation_store_versions[0].store_id #=> String
    #   resp.annotation_store_versions[0].id #=> String
    #   resp.annotation_store_versions[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.annotation_store_versions[0].version_arn #=> String
    #   resp.annotation_store_versions[0].name #=> String
    #   resp.annotation_store_versions[0].version_name #=> String
    #   resp.annotation_store_versions[0].description #=> String
    #   resp.annotation_store_versions[0].creation_time #=> Time
    #   resp.annotation_store_versions[0].update_time #=> Time
    #   resp.annotation_store_versions[0].status_message #=> String
    #   resp.annotation_store_versions[0].version_size_bytes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStoreVersions AWS API Documentation
    #
    # @overload list_annotation_store_versions(params = {})
    # @param [Hash] params ({})
    def list_annotation_store_versions(params = {}, options = {})
      req = build_request(:list_annotation_store_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of annotation stores.
    #
    # @option params [Array<String>] :ids
    #   IDs of stores to list.
    #
    # @option params [Integer] :max_results
    #   The maximum number of stores to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ListAnnotationStoresFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListAnnotationStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAnnotationStoresResponse#annotation_stores #annotation_stores} => Array&lt;Types::AnnotationStoreItem&gt;
    #   * {Types::ListAnnotationStoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_annotation_stores({
    #     ids: ["ResourceIdentifier"],
    #     max_results: 1,
    #     next_token: "ListAnnotationStoresRequestNextTokenString",
    #     filter: {
    #       status: "CREATING", # accepts CREATING, UPDATING, DELETING, ACTIVE, FAILED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.annotation_stores #=> Array
    #   resp.annotation_stores[0].id #=> String
    #   resp.annotation_stores[0].reference.reference_arn #=> String
    #   resp.annotation_stores[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.annotation_stores[0].store_arn #=> String
    #   resp.annotation_stores[0].name #=> String
    #   resp.annotation_stores[0].store_format #=> String, one of "GFF", "TSV", "VCF"
    #   resp.annotation_stores[0].description #=> String
    #   resp.annotation_stores[0].sse_config.type #=> String, one of "KMS"
    #   resp.annotation_stores[0].sse_config.key_arn #=> String
    #   resp.annotation_stores[0].creation_time #=> Time
    #   resp.annotation_stores[0].update_time #=> Time
    #   resp.annotation_stores[0].status_message #=> String
    #   resp.annotation_stores[0].store_size_bytes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListAnnotationStores AWS API Documentation
    #
    # @overload list_annotation_stores(params = {})
    # @param [Hash] params ({})
    def list_annotation_stores(params = {}, options = {})
      req = build_request(:list_annotation_stores, params)
      req.send_request(options)
    end

    # Lists multipart read set uploads and for in progress uploads. Once the
    # upload is completed, a read set is created and the upload will no
    # longer be returned in the response.
    #
    # @option params [required, String] :sequence_store_id
    #   The Sequence Store ID used for the multipart uploads.
    #
    # @option params [Integer] :max_results
    #   The maximum number of multipart uploads returned in a page.
    #
    # @option params [String] :next_token
    #   Next token returned in the response of a previous
    #   ListMultipartReadSetUploads call. Used to get the next page of
    #   results.
    #
    # @return [Types::ListMultipartReadSetUploadsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMultipartReadSetUploadsResponse#next_token #next_token} => String
    #   * {Types::ListMultipartReadSetUploadsResponse#uploads #uploads} => Array&lt;Types::MultipartReadSetUploadListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multipart_read_set_uploads({
    #     sequence_store_id: "SequenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.uploads #=> Array
    #   resp.uploads[0].sequence_store_id #=> String
    #   resp.uploads[0].upload_id #=> String
    #   resp.uploads[0].source_file_type #=> String, one of "FASTQ", "BAM", "CRAM", "UBAM"
    #   resp.uploads[0].subject_id #=> String
    #   resp.uploads[0].sample_id #=> String
    #   resp.uploads[0].generated_from #=> String
    #   resp.uploads[0].reference_arn #=> String
    #   resp.uploads[0].name #=> String
    #   resp.uploads[0].description #=> String
    #   resp.uploads[0].tags #=> Hash
    #   resp.uploads[0].tags["TagKey"] #=> String
    #   resp.uploads[0].creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListMultipartReadSetUploads AWS API Documentation
    #
    # @overload list_multipart_read_set_uploads(params = {})
    # @param [Hash] params ({})
    def list_multipart_read_set_uploads(params = {}, options = {})
      req = build_request(:list_multipart_read_set_uploads, params)
      req.send_request(options)
    end

    # Retrieves a list of read set activation jobs.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of read set activation jobs to return in one page
    #   of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ActivateReadSetFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListReadSetActivationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetActivationJobsResponse#next_token #next_token} => String
    #   * {Types::ListReadSetActivationJobsResponse#activation_jobs #activation_jobs} => Array&lt;Types::ActivateReadSetJobItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_set_activation_jobs({
    #     sequence_store_id: "SequenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES
    #       created_after: Time.now,
    #       created_before: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.activation_jobs #=> Array
    #   resp.activation_jobs[0].id #=> String
    #   resp.activation_jobs[0].sequence_store_id #=> String
    #   resp.activation_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.activation_jobs[0].creation_time #=> Time
    #   resp.activation_jobs[0].completion_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetActivationJobs AWS API Documentation
    #
    # @overload list_read_set_activation_jobs(params = {})
    # @param [Hash] params ({})
    def list_read_set_activation_jobs(params = {}, options = {})
      req = build_request(:list_read_set_activation_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of read set export jobs.
    #
    # @option params [required, String] :sequence_store_id
    #   The jobs' sequence store ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ExportReadSetFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListReadSetExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetExportJobsResponse#next_token #next_token} => String
    #   * {Types::ListReadSetExportJobsResponse#export_jobs #export_jobs} => Array&lt;Types::ExportReadSetJobDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_set_export_jobs({
    #     sequence_store_id: "SequenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES
    #       created_after: Time.now,
    #       created_before: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.export_jobs #=> Array
    #   resp.export_jobs[0].id #=> String
    #   resp.export_jobs[0].sequence_store_id #=> String
    #   resp.export_jobs[0].destination #=> String
    #   resp.export_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.export_jobs[0].creation_time #=> Time
    #   resp.export_jobs[0].completion_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetExportJobs AWS API Documentation
    #
    # @overload list_read_set_export_jobs(params = {})
    # @param [Hash] params ({})
    def list_read_set_export_jobs(params = {}, options = {})
      req = build_request(:list_read_set_export_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of read set import jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [required, String] :sequence_store_id
    #   The jobs' sequence store ID.
    #
    # @option params [Types::ImportReadSetFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListReadSetImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetImportJobsResponse#next_token #next_token} => String
    #   * {Types::ListReadSetImportJobsResponse#import_jobs #import_jobs} => Array&lt;Types::ImportReadSetJobItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_set_import_jobs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sequence_store_id: "SequenceStoreId", # required
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES
    #       created_after: Time.now,
    #       created_before: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.import_jobs #=> Array
    #   resp.import_jobs[0].id #=> String
    #   resp.import_jobs[0].sequence_store_id #=> String
    #   resp.import_jobs[0].role_arn #=> String
    #   resp.import_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.import_jobs[0].creation_time #=> Time
    #   resp.import_jobs[0].completion_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetImportJobs AWS API Documentation
    #
    # @overload list_read_set_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_read_set_import_jobs(params = {}, options = {})
      req = build_request(:list_read_set_import_jobs, params)
      req.send_request(options)
    end

    # This operation will list all parts in a requested multipart upload for
    # a sequence store.
    #
    # @option params [required, String] :sequence_store_id
    #   The Sequence Store ID used for the multipart uploads.
    #
    # @option params [required, String] :upload_id
    #   The ID for the initiated multipart upload.
    #
    # @option params [required, String] :part_source
    #   The source file for the upload part.
    #
    # @option params [Integer] :max_results
    #   The maximum number of read set upload parts returned in a page.
    #
    # @option params [String] :next_token
    #   Next token returned in the response of a previous
    #   ListReadSetUploadPartsRequest call. Used to get the next page of
    #   results.
    #
    # @option params [Types::ReadSetUploadPartListFilter] :filter
    #   Attributes used to filter for a specific subset of read set part
    #   uploads.
    #
    # @return [Types::ListReadSetUploadPartsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetUploadPartsResponse#next_token #next_token} => String
    #   * {Types::ListReadSetUploadPartsResponse#parts #parts} => Array&lt;Types::ReadSetUploadPartListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_set_upload_parts({
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #     part_source: "SOURCE1", # required, accepts SOURCE1, SOURCE2
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       created_after: Time.now,
    #       created_before: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.parts #=> Array
    #   resp.parts[0].part_number #=> Integer
    #   resp.parts[0].part_size #=> Integer
    #   resp.parts[0].part_source #=> String, one of "SOURCE1", "SOURCE2"
    #   resp.parts[0].checksum #=> String
    #   resp.parts[0].creation_time #=> Time
    #   resp.parts[0].last_updated_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSetUploadParts AWS API Documentation
    #
    # @overload list_read_set_upload_parts(params = {})
    # @param [Hash] params ({})
    def list_read_set_upload_parts(params = {}, options = {})
      req = build_request(:list_read_set_upload_parts, params)
      req.send_request(options)
    end

    # Retrieves a list of read sets.
    #
    # @option params [required, String] :sequence_store_id
    #   The jobs' sequence store ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of read sets to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ReadSetFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListReadSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReadSetsResponse#next_token #next_token} => String
    #   * {Types::ListReadSetsResponse#read_sets #read_sets} => Array&lt;Types::ReadSetListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_read_sets({
    #     sequence_store_id: "SequenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       name: "ReadSetName",
    #       status: "ARCHIVED", # accepts ARCHIVED, ACTIVATING, ACTIVE, DELETING, DELETED, PROCESSING_UPLOAD, UPLOAD_FAILED
    #       reference_arn: "ReferenceArnFilter",
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       sample_id: "SampleId",
    #       subject_id: "SubjectId",
    #       generated_from: "GeneratedFrom",
    #       creation_type: "IMPORT", # accepts IMPORT, UPLOAD
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.read_sets #=> Array
    #   resp.read_sets[0].id #=> String
    #   resp.read_sets[0].arn #=> String
    #   resp.read_sets[0].sequence_store_id #=> String
    #   resp.read_sets[0].subject_id #=> String
    #   resp.read_sets[0].sample_id #=> String
    #   resp.read_sets[0].status #=> String, one of "ARCHIVED", "ACTIVATING", "ACTIVE", "DELETING", "DELETED", "PROCESSING_UPLOAD", "UPLOAD_FAILED"
    #   resp.read_sets[0].name #=> String
    #   resp.read_sets[0].description #=> String
    #   resp.read_sets[0].reference_arn #=> String
    #   resp.read_sets[0].file_type #=> String, one of "FASTQ", "BAM", "CRAM", "UBAM"
    #   resp.read_sets[0].sequence_information.total_read_count #=> Integer
    #   resp.read_sets[0].sequence_information.total_base_count #=> Integer
    #   resp.read_sets[0].sequence_information.generated_from #=> String
    #   resp.read_sets[0].sequence_information.alignment #=> String
    #   resp.read_sets[0].creation_time #=> Time
    #   resp.read_sets[0].status_message #=> String
    #   resp.read_sets[0].creation_type #=> String, one of "IMPORT", "UPLOAD"
    #   resp.read_sets[0].etag.algorithm #=> String, one of "FASTQ_MD5up", "BAM_MD5up", "CRAM_MD5up", "FASTQ_SHA256up", "BAM_SHA256up", "CRAM_SHA256up", "FASTQ_SHA512up", "BAM_SHA512up", "CRAM_SHA512up"
    #   resp.read_sets[0].etag.source1 #=> String
    #   resp.read_sets[0].etag.source2 #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReadSets AWS API Documentation
    #
    # @overload list_read_sets(params = {})
    # @param [Hash] params ({})
    def list_read_sets(params = {}, options = {})
      req = build_request(:list_read_sets, params)
      req.send_request(options)
    end

    # Retrieves a list of reference import jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [required, String] :reference_store_id
    #   The job's reference store ID.
    #
    # @option params [Types::ImportReferenceFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListReferenceImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReferenceImportJobsResponse#next_token #next_token} => String
    #   * {Types::ListReferenceImportJobsResponse#import_jobs #import_jobs} => Array&lt;Types::ImportReferenceJobItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reference_import_jobs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     reference_store_id: "ReferenceStoreId", # required
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLING, CANCELLED, FAILED, COMPLETED, COMPLETED_WITH_FAILURES
    #       created_after: Time.now,
    #       created_before: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.import_jobs #=> Array
    #   resp.import_jobs[0].id #=> String
    #   resp.import_jobs[0].reference_store_id #=> String
    #   resp.import_jobs[0].role_arn #=> String
    #   resp.import_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.import_jobs[0].creation_time #=> Time
    #   resp.import_jobs[0].completion_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferenceImportJobs AWS API Documentation
    #
    # @overload list_reference_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_reference_import_jobs(params = {}, options = {})
      req = build_request(:list_reference_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of reference stores.
    #
    # @option params [Integer] :max_results
    #   The maximum number of stores to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ReferenceStoreFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListReferenceStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReferenceStoresResponse#next_token #next_token} => String
    #   * {Types::ListReferenceStoresResponse#reference_stores #reference_stores} => Array&lt;Types::ReferenceStoreDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reference_stores({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       name: "ReferenceStoreName",
    #       created_after: Time.now,
    #       created_before: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.reference_stores #=> Array
    #   resp.reference_stores[0].arn #=> String
    #   resp.reference_stores[0].id #=> String
    #   resp.reference_stores[0].name #=> String
    #   resp.reference_stores[0].description #=> String
    #   resp.reference_stores[0].sse_config.type #=> String, one of "KMS"
    #   resp.reference_stores[0].sse_config.key_arn #=> String
    #   resp.reference_stores[0].creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferenceStores AWS API Documentation
    #
    # @overload list_reference_stores(params = {})
    # @param [Hash] params ({})
    def list_reference_stores(params = {}, options = {})
      req = build_request(:list_reference_stores, params)
      req.send_request(options)
    end

    # Retrieves a list of references.
    #
    # @option params [required, String] :reference_store_id
    #   The references' reference store ID.
    #
    # @option params [Integer] :max_results
    #   The maximum number of references to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ReferenceFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListReferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListReferencesResponse#next_token #next_token} => String
    #   * {Types::ListReferencesResponse#references #references} => Array&lt;Types::ReferenceListItem&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_references({
    #     reference_store_id: "ReferenceStoreId", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       name: "ReferenceName",
    #       md5: "Md5",
    #       created_after: Time.now,
    #       created_before: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.references #=> Array
    #   resp.references[0].id #=> String
    #   resp.references[0].arn #=> String
    #   resp.references[0].reference_store_id #=> String
    #   resp.references[0].md5 #=> String
    #   resp.references[0].status #=> String, one of "ACTIVE", "DELETING", "DELETED"
    #   resp.references[0].name #=> String
    #   resp.references[0].description #=> String
    #   resp.references[0].creation_time #=> Time
    #   resp.references[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListReferences AWS API Documentation
    #
    # @overload list_references(params = {})
    # @param [Hash] params ({})
    def list_references(params = {}, options = {})
      req = build_request(:list_references, params)
      req.send_request(options)
    end

    # Retrieves a list of your run caches and the metadata for each cache.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :starting_token
    #   Optional pagination token returned from a prior call to the
    #   `ListRunCaches` API operation.
    #
    # @return [Types::ListRunCachesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRunCachesResponse#items #items} => Array&lt;Types::RunCacheListItem&gt;
    #   * {Types::ListRunCachesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_run_caches({
    #     max_results: 1,
    #     starting_token: "ListToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].cache_behavior #=> String, one of "CACHE_ON_FAILURE", "CACHE_ALWAYS"
    #   resp.items[0].cache_s3_uri #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE", "DELETED", "FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunCaches AWS API Documentation
    #
    # @overload list_run_caches(params = {})
    # @param [Hash] params ({})
    def list_run_caches(params = {}, options = {})
      req = build_request(:list_run_caches, params)
      req.send_request(options)
    end

    # Retrieves a list of all run groups and returns the metadata for each
    # run group.
    #
    # @option params [String] :name
    #   The run groups' name.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of run groups to return in one page of results.
    #
    # @return [Types::ListRunGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRunGroupsResponse#items #items} => Array&lt;Types::RunGroupListItem&gt;
    #   * {Types::ListRunGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_run_groups({
    #     name: "RunGroupName",
    #     starting_token: "RunGroupListToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].max_cpus #=> Integer
    #   resp.items[0].max_runs #=> Integer
    #   resp.items[0].max_duration #=> Integer
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].max_gpus #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunGroups AWS API Documentation
    #
    # @overload list_run_groups(params = {})
    # @param [Hash] params ({})
    def list_run_groups(params = {}, options = {})
      req = build_request(:list_run_groups, params)
      req.send_request(options)
    end

    # Returns a list of tasks and status information within their specified
    # run. Use this operation to monitor runs and to identify which specific
    # tasks have failed.
    #
    # @option params [required, String] :id
    #   The run's ID.
    #
    # @option params [String] :status
    #   Filter the list by status.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of run tasks to return in one page of results.
    #
    # @return [Types::ListRunTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRunTasksResponse#items #items} => Array&lt;Types::TaskListItem&gt;
    #   * {Types::ListRunTasksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_run_tasks({
    #     id: "RunId", # required
    #     status: "PENDING", # accepts PENDING, STARTING, RUNNING, STOPPING, COMPLETED, CANCELLED, FAILED
    #     starting_token: "TaskListToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].task_id #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "CANCELLED", "FAILED"
    #   resp.items[0].name #=> String
    #   resp.items[0].cpus #=> Integer
    #   resp.items[0].cache_hit #=> Boolean
    #   resp.items[0].cache_s3_uri #=> String
    #   resp.items[0].memory #=> Integer
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].stop_time #=> Time
    #   resp.items[0].gpus #=> Integer
    #   resp.items[0].instance_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRunTasks AWS API Documentation
    #
    # @overload list_run_tasks(params = {})
    # @param [Hash] params ({})
    def list_run_tasks(params = {}, options = {})
      req = build_request(:list_run_tasks, params)
      req.send_request(options)
    end

    # Retrieves a list of runs and returns each run's metadata and status.
    #
    # Amazon Web Services HealthOmics stores a configurable number of runs,
    # as determined by service limits, that are available to the console and
    # API. If the `ListRuns` response doesn't include specific runs that
    # you expected, you can find all run logs in the CloudWatch logs. For
    # more information about viewing the run logs, see [CloudWatch logs][1]
    # in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/monitoring-cloudwatch-logs.html
    #
    # @option params [String] :name
    #   Filter the list by run name.
    #
    # @option params [String] :run_group_id
    #   Filter the list by run group ID.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of runs to return in one page of results.
    #
    # @option params [String] :status
    #   The status of a run.
    #
    # @return [Types::ListRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRunsResponse#items #items} => Array&lt;Types::RunListItem&gt;
    #   * {Types::ListRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_runs({
    #     name: "RunName",
    #     run_group_id: "RunGroupId",
    #     starting_token: "RunListToken",
    #     max_results: 1,
    #     status: "PENDING", # accepts PENDING, STARTING, RUNNING, STOPPING, COMPLETED, DELETED, CANCELLED, FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "DELETED", "CANCELLED", "FAILED"
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].priority #=> Integer
    #   resp.items[0].storage_capacity #=> Integer
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].start_time #=> Time
    #   resp.items[0].stop_time #=> Time
    #   resp.items[0].storage_type #=> String, one of "STATIC", "DYNAMIC"
    #   resp.items[0].workflow_version_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListRuns AWS API Documentation
    #
    # @overload list_runs(params = {})
    # @param [Hash] params ({})
    def list_runs(params = {}, options = {})
      req = build_request(:list_runs, params)
      req.send_request(options)
    end

    # Retrieves a list of sequence stores.
    #
    # @option params [Integer] :max_results
    #   The maximum number of stores to return in one page of results.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::SequenceStoreFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListSequenceStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSequenceStoresResponse#next_token #next_token} => String
    #   * {Types::ListSequenceStoresResponse#sequence_stores #sequence_stores} => Array&lt;Types::SequenceStoreDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_sequence_stores({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     filter: {
    #       name: "SequenceStoreName",
    #       created_after: Time.now,
    #       created_before: Time.now,
    #       status: "CREATING", # accepts CREATING, ACTIVE, UPDATING, DELETING, FAILED
    #       updated_after: Time.now,
    #       updated_before: Time.now,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.sequence_stores #=> Array
    #   resp.sequence_stores[0].arn #=> String
    #   resp.sequence_stores[0].id #=> String
    #   resp.sequence_stores[0].name #=> String
    #   resp.sequence_stores[0].description #=> String
    #   resp.sequence_stores[0].sse_config.type #=> String, one of "KMS"
    #   resp.sequence_stores[0].sse_config.key_arn #=> String
    #   resp.sequence_stores[0].creation_time #=> Time
    #   resp.sequence_stores[0].fallback_location #=> String
    #   resp.sequence_stores[0].e_tag_algorithm_family #=> String, one of "MD5up", "SHA256up", "SHA512up"
    #   resp.sequence_stores[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.sequence_stores[0].status_message #=> String
    #   resp.sequence_stores[0].update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListSequenceStores AWS API Documentation
    #
    # @overload list_sequence_stores(params = {})
    # @param [Hash] params ({})
    def list_sequence_stores(params = {}, options = {})
      req = build_request(:list_sequence_stores, params)
      req.send_request(options)
    end

    # Retrieves the resource shares associated with an account. Use the
    # filter parameter to retrieve a specific subset of the shares.
    #
    # @option params [required, String] :resource_owner
    #   The account that owns the resource shares.
    #
    # @option params [Types::Filter] :filter
    #   Attributes that you use to filter for a specific subset of resource
    #   shares.
    #
    # @option params [String] :next_token
    #   Next token returned in the response of a previous
    #   ListReadSetUploadPartsRequest call. Used to get the next page of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of shares to return in one page of results.
    #
    # @return [Types::ListSharesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSharesResponse#shares #shares} => Array&lt;Types::ShareDetails&gt;
    #   * {Types::ListSharesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shares({
    #     resource_owner: "SELF", # required, accepts SELF, OTHER
    #     filter: {
    #       resource_arns: ["String"],
    #       status: ["PENDING"], # accepts PENDING, ACTIVATING, ACTIVE, DELETING, DELETED, FAILED
    #       type: ["VARIANT_STORE"], # accepts VARIANT_STORE, ANNOTATION_STORE, WORKFLOW
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.shares #=> Array
    #   resp.shares[0].share_id #=> String
    #   resp.shares[0].resource_arn #=> String
    #   resp.shares[0].resource_id #=> String
    #   resp.shares[0].principal_subscriber #=> String
    #   resp.shares[0].owner_id #=> String
    #   resp.shares[0].status #=> String, one of "PENDING", "ACTIVATING", "ACTIVE", "DELETING", "DELETED", "FAILED"
    #   resp.shares[0].status_message #=> String
    #   resp.shares[0].share_name #=> String
    #   resp.shares[0].creation_time #=> Time
    #   resp.shares[0].update_time #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListShares AWS API Documentation
    #
    # @overload list_shares(params = {})
    # @param [Hash] params ({})
    def list_shares(params = {}, options = {})
      req = build_request(:list_shares, params)
      req.send_request(options)
    end

    # Retrieves a list of tags for a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's ARN.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TagArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a list of variant import jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of import jobs to return in one page of results.
    #
    # @option params [Array<String>] :ids
    #   A list of job IDs.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ListVariantImportJobsFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListVariantImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVariantImportJobsResponse#variant_import_jobs #variant_import_jobs} => Array&lt;Types::VariantImportJobItem&gt;
    #   * {Types::ListVariantImportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_variant_import_jobs({
    #     max_results: 1,
    #     ids: ["ResourceIdentifier"],
    #     next_token: "ListVariantImportJobsRequestNextTokenString",
    #     filter: {
    #       status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, CANCELLED, COMPLETED, FAILED, COMPLETED_WITH_FAILURES
    #       store_name: "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.variant_import_jobs #=> Array
    #   resp.variant_import_jobs[0].id #=> String
    #   resp.variant_import_jobs[0].destination_name #=> String
    #   resp.variant_import_jobs[0].role_arn #=> String
    #   resp.variant_import_jobs[0].status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLED", "COMPLETED", "FAILED", "COMPLETED_WITH_FAILURES"
    #   resp.variant_import_jobs[0].creation_time #=> Time
    #   resp.variant_import_jobs[0].update_time #=> Time
    #   resp.variant_import_jobs[0].completion_time #=> Time
    #   resp.variant_import_jobs[0].run_left_normalization #=> Boolean
    #   resp.variant_import_jobs[0].annotation_fields #=> Hash
    #   resp.variant_import_jobs[0].annotation_fields["AnnotationFieldMapKeyString"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantImportJobs AWS API Documentation
    #
    # @overload list_variant_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_variant_import_jobs(params = {}, options = {})
      req = build_request(:list_variant_import_jobs, params)
      req.send_request(options)
    end

    # Retrieves a list of variant stores.
    #
    # @option params [Integer] :max_results
    #   The maximum number of stores to return in one page of results.
    #
    # @option params [Array<String>] :ids
    #   A list of store IDs.
    #
    # @option params [String] :next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Types::ListVariantStoresFilter] :filter
    #   A filter to apply to the list.
    #
    # @return [Types::ListVariantStoresResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVariantStoresResponse#variant_stores #variant_stores} => Array&lt;Types::VariantStoreItem&gt;
    #   * {Types::ListVariantStoresResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_variant_stores({
    #     max_results: 1,
    #     ids: ["ResourceIdentifier"],
    #     next_token: "ListVariantStoresRequestNextTokenString",
    #     filter: {
    #       status: "CREATING", # accepts CREATING, UPDATING, DELETING, ACTIVE, FAILED
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.variant_stores #=> Array
    #   resp.variant_stores[0].id #=> String
    #   resp.variant_stores[0].reference.reference_arn #=> String
    #   resp.variant_stores[0].status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.variant_stores[0].store_arn #=> String
    #   resp.variant_stores[0].name #=> String
    #   resp.variant_stores[0].description #=> String
    #   resp.variant_stores[0].sse_config.type #=> String, one of "KMS"
    #   resp.variant_stores[0].sse_config.key_arn #=> String
    #   resp.variant_stores[0].creation_time #=> Time
    #   resp.variant_stores[0].update_time #=> Time
    #   resp.variant_stores[0].status_message #=> String
    #   resp.variant_stores[0].store_size_bytes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListVariantStores AWS API Documentation
    #
    # @overload list_variant_stores(params = {})
    # @param [Hash] params ({})
    def list_variant_stores(params = {}, options = {})
      req = build_request(:list_variant_stores, params)
      req.send_request(options)
    end

    # Lists the workflow versions for the specified workflow. For more
    # information, see [Workflow versioning in Amazon Web Services
    # HealthOmics][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html
    #
    # @option params [required, String] :workflow_id
    #   The workflow's ID.
    #
    # @option params [String] :type
    #   The workflow type.
    #
    # @option params [String] :workflow_owner_id
    #   Amazon Web Services Id of the owner of the workflow.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflows to return in one page of results.
    #
    # @return [Types::ListWorkflowVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowVersionsResponse#items #items} => Array&lt;Types::WorkflowVersionListItem&gt;
    #   * {Types::ListWorkflowVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflow_versions({
    #     workflow_id: "WorkflowId", # required
    #     type: "PRIVATE", # accepts PRIVATE, READY2RUN
    #     workflow_owner_id: "WorkflowOwnerId",
    #     starting_token: "WorkflowVersionListToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].workflow_id #=> String
    #   resp.items[0].version_name #=> String
    #   resp.items[0].description #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED", "INACTIVE"
    #   resp.items[0].type #=> String, one of "PRIVATE", "READY2RUN"
    #   resp.items[0].digest #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].metadata #=> Hash
    #   resp.items[0].metadata["WorkflowMetadataKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListWorkflowVersions AWS API Documentation
    #
    # @overload list_workflow_versions(params = {})
    # @param [Hash] params ({})
    def list_workflow_versions(params = {}, options = {})
      req = build_request(:list_workflow_versions, params)
      req.send_request(options)
    end

    # Retrieves a list of existing workflows. You can filter for specific
    # workflows by their name and type. Using the type parameter, specify
    # `PRIVATE` to retrieve a list of private workflows or specify
    # `READY2RUN` for a list of all Ready2Run workflows. If you do not
    # specify the type of workflow, this operation returns a list of
    # existing workflows.
    #
    # @option params [String] :type
    #   Filter the list by workflow type.
    #
    # @option params [String] :name
    #   Filter the list by workflow name.
    #
    # @option params [String] :starting_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of workflows to return in one page of results.
    #
    # @return [Types::ListWorkflowsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWorkflowsResponse#items #items} => Array&lt;Types::WorkflowListItem&gt;
    #   * {Types::ListWorkflowsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workflows({
    #     type: "PRIVATE", # accepts PRIVATE, READY2RUN
    #     name: "WorkflowName",
    #     starting_token: "WorkflowListToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETED", "FAILED", "INACTIVE"
    #   resp.items[0].type #=> String, one of "PRIVATE", "READY2RUN"
    #   resp.items[0].digest #=> String
    #   resp.items[0].creation_time #=> Time
    #   resp.items[0].metadata #=> Hash
    #   resp.items[0].metadata["WorkflowMetadataKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/ListWorkflows AWS API Documentation
    #
    # @overload list_workflows(params = {})
    # @param [Hash] params ({})
    def list_workflows(params = {}, options = {})
      req = build_request(:list_workflows, params)
      req.send_request(options)
    end

    # Adds an access policy to the specified store.
    #
    # @option params [required, String] :s3_access_point_arn
    #   The S3 access point ARN where you want to put the access policy.
    #
    # @option params [required, String] :s3_access_policy
    #   The resource policy that controls S3 access to the store.
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    # @return [Types::PutS3AccessPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutS3AccessPolicyResponse#s3_access_point_arn #s3_access_point_arn} => String
    #   * {Types::PutS3AccessPolicyResponse#store_id #store_id} => String
    #   * {Types::PutS3AccessPolicyResponse#store_type #store_type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_s3_access_policy({
    #     s3_access_point_arn: "S3AccessPointArn", # required
    #     s3_access_policy: "S3AccessPolicy", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.s3_access_point_arn #=> String
    #   resp.store_id #=> String
    #   resp.store_type #=> String, one of "SEQUENCE_STORE", "REFERENCE_STORE"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/PutS3AccessPolicy AWS API Documentation
    #
    # @overload put_s3_access_policy(params = {})
    # @param [Hash] params ({})
    def put_s3_access_policy(params = {}, options = {})
      req = build_request(:put_s3_access_policy, params)
      req.send_request(options)
    end

    # Starts an annotation import job.
    #
    # @option params [required, String] :destination_name
    #   A destination annotation store for the job.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [required, Array<Types::AnnotationImportItemSource>] :items
    #   Items to import.
    #
    # @option params [String] :version_name
    #   The name of the annotation store version.
    #
    # @option params [Types::FormatOptions] :format_options
    #   Formatting options for the annotation file.
    #
    # @option params [Boolean] :run_left_normalization
    #   The job's left normalization setting.
    #
    # @option params [Hash<String,String>] :annotation_fields
    #   The annotation schema generated by the parsed annotation data.
    #
    # @return [Types::StartAnnotationImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartAnnotationImportResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_annotation_import_job({
    #     destination_name: "StoreName", # required
    #     role_arn: "Arn", # required
    #     items: [ # required
    #       {
    #         source: "S3Uri", # required
    #       },
    #     ],
    #     version_name: "VersionName",
    #     format_options: {
    #       tsv_options: {
    #         read_options: {
    #           sep: "Separator",
    #           encoding: "Encoding",
    #           quote: "Quote",
    #           quote_all: false,
    #           escape: "EscapeChar",
    #           escape_quotes: false,
    #           comment: "CommentChar",
    #           header: false,
    #           line_sep: "LineSep",
    #         },
    #       },
    #       vcf_options: {
    #         ignore_qual_field: false,
    #         ignore_filter_field: false,
    #       },
    #     },
    #     run_left_normalization: false,
    #     annotation_fields: {
    #       "AnnotationFieldMapKeyString" => "AnnotationFieldMapValueString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartAnnotationImportJob AWS API Documentation
    #
    # @overload start_annotation_import_job(params = {})
    # @param [Hash] params ({})
    def start_annotation_import_job(params = {}, options = {})
      req = build_request(:start_annotation_import_job, params)
      req.send_request(options)
    end

    # Activates an archived read set. To reduce storage charges, Amazon
    # Omics archives unused read sets after 30 days.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @option params [String] :client_token
    #   To ensure that jobs don't run multiple times, specify a unique token
    #   for each job.
    #
    # @option params [required, Array<Types::StartReadSetActivationJobSourceItem>] :sources
    #   The job's source files.
    #
    # @return [Types::StartReadSetActivationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReadSetActivationJobResponse#id #id} => String
    #   * {Types::StartReadSetActivationJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::StartReadSetActivationJobResponse#status #status} => String
    #   * {Types::StartReadSetActivationJobResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_read_set_activation_job({
    #     sequence_store_id: "SequenceStoreId", # required
    #     client_token: "ClientToken",
    #     sources: [ # required
    #       {
    #         read_set_id: "ReadSetId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetActivationJob AWS API Documentation
    #
    # @overload start_read_set_activation_job(params = {})
    # @param [Hash] params ({})
    def start_read_set_activation_job(params = {}, options = {})
      req = build_request(:start_read_set_activation_job, params)
      req.send_request(options)
    end

    # Exports a read set to Amazon S3.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @option params [required, String] :destination
    #   A location for exported files in Amazon S3.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [String] :client_token
    #   To ensure that jobs don't run multiple times, specify a unique token
    #   for each job.
    #
    # @option params [required, Array<Types::ExportReadSet>] :sources
    #   The job's source files.
    #
    # @return [Types::StartReadSetExportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReadSetExportJobResponse#id #id} => String
    #   * {Types::StartReadSetExportJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::StartReadSetExportJobResponse#destination #destination} => String
    #   * {Types::StartReadSetExportJobResponse#status #status} => String
    #   * {Types::StartReadSetExportJobResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_read_set_export_job({
    #     sequence_store_id: "SequenceStoreId", # required
    #     destination: "S3Destination", # required
    #     role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     sources: [ # required
    #       {
    #         read_set_id: "ReadSetId", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.destination #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetExportJob AWS API Documentation
    #
    # @overload start_read_set_export_job(params = {})
    # @param [Hash] params ({})
    def start_read_set_export_job(params = {}, options = {})
      req = build_request(:start_read_set_export_job, params)
      req.send_request(options)
    end

    # Starts a read set import job.
    #
    # @option params [required, String] :sequence_store_id
    #   The read set's sequence store ID.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [String] :client_token
    #   To ensure that jobs don't run multiple times, specify a unique token
    #   for each job.
    #
    # @option params [required, Array<Types::StartReadSetImportJobSourceItem>] :sources
    #   The job's source files.
    #
    # @return [Types::StartReadSetImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReadSetImportJobResponse#id #id} => String
    #   * {Types::StartReadSetImportJobResponse#sequence_store_id #sequence_store_id} => String
    #   * {Types::StartReadSetImportJobResponse#role_arn #role_arn} => String
    #   * {Types::StartReadSetImportJobResponse#status #status} => String
    #   * {Types::StartReadSetImportJobResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_read_set_import_job({
    #     sequence_store_id: "SequenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     sources: [ # required
    #       {
    #         source_files: { # required
    #           source1: "S3Uri", # required
    #           source2: "S3Uri",
    #         },
    #         source_file_type: "FASTQ", # required, accepts FASTQ, BAM, CRAM, UBAM
    #         subject_id: "SubjectId", # required
    #         sample_id: "SampleId", # required
    #         generated_from: "GeneratedFrom",
    #         reference_arn: "ReferenceArn",
    #         name: "ReadSetName",
    #         description: "ReadSetDescription",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.sequence_store_id #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReadSetImportJob AWS API Documentation
    #
    # @overload start_read_set_import_job(params = {})
    # @param [Hash] params ({})
    def start_read_set_import_job(params = {}, options = {})
      req = build_request(:start_read_set_import_job, params)
      req.send_request(options)
    end

    # Starts a reference import job.
    #
    # @option params [required, String] :reference_store_id
    #   The job's reference store ID.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [String] :client_token
    #   To ensure that jobs don't run multiple times, specify a unique token
    #   for each job.
    #
    # @option params [required, Array<Types::StartReferenceImportJobSourceItem>] :sources
    #   The job's source files.
    #
    # @return [Types::StartReferenceImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartReferenceImportJobResponse#id #id} => String
    #   * {Types::StartReferenceImportJobResponse#reference_store_id #reference_store_id} => String
    #   * {Types::StartReferenceImportJobResponse#role_arn #role_arn} => String
    #   * {Types::StartReferenceImportJobResponse#status #status} => String
    #   * {Types::StartReferenceImportJobResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_reference_import_job({
    #     reference_store_id: "ReferenceStoreId", # required
    #     role_arn: "RoleArn", # required
    #     client_token: "ClientToken",
    #     sources: [ # required
    #       {
    #         source_file: "S3Uri", # required
    #         name: "ReferenceName", # required
    #         description: "ReferenceDescription",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.reference_store_id #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "SUBMITTED", "IN_PROGRESS", "CANCELLING", "CANCELLED", "FAILED", "COMPLETED", "COMPLETED_WITH_FAILURES"
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartReferenceImportJob AWS API Documentation
    #
    # @overload start_reference_import_job(params = {})
    # @param [Hash] params ({})
    def start_reference_import_job(params = {}, options = {})
      req = build_request(:start_reference_import_job, params)
      req.send_request(options)
    end

    # Starts a new run and returns details about the run, or duplicates an
    # existing run. A run is a single invocation of a workflow. If you
    # provide request IDs, Amazon Web Services HealthOmics identifies
    # duplicate requests and starts the run only once. Monitor the progress
    # of the run by calling the `GetRun` API operation.
    #
    # To start a new run, the following inputs are required:
    #
    # * A service role ARN (`roleArn`).
    #
    # * The run's workflow ID (`workflowId`, not the `uuid` or `runId`).
    #
    # * An Amazon S3 location (`outputUri`) where the run outputs will be
    #   saved.
    #
    # * All required workflow parameters (`parameter`), which can include
    #   optional parameters from the parameter template. The run cannot
    #   include any parameters that are not defined in the parameter
    #   template. To see all possible parameters, use the `GetRun` API
    #   operation.
    #
    # * For runs with a `STATIC` (default) storage type, specify the
    #   required storage capacity (in gibibytes). A storage capacity value
    #   is not required for runs that use `DYNAMIC` storage.
    #
    # `StartRun` can also duplicate an existing run using the run's default
    # values. You can modify these default values and/or add other optional
    # inputs. To duplicate a run, the following inputs are required:
    #
    # * A service role ARN (`roleArn`).
    #
    # * The ID of the run to duplicate (`runId`).
    #
    # * An Amazon S3 location where the run outputs will be saved
    #   (`outputUri`).
    #
    # To learn more about the optional parameters for `StartRun`, see
    # [Starting a run][1] in the *Amazon Web Services HealthOmics User
    # Guide*.
    #
    # Use the `retentionMode` input to control how long the metadata for
    # each run is stored in CloudWatch. There are two retention modes:
    #
    # * Specify `REMOVE` to automatically remove the oldest runs when you
    #   reach the maximum service retention limit for runs. It is
    #   recommended that you use the `REMOVE` mode to initiate major run
    #   requests so that your runs do not fail when you reach the limit.
    #
    # * The `retentionMode` is set to the `RETAIN` mode by default, which
    #   allows you to manually remove runs after reaching the maximum
    #   service retention limit. Under this setting, you cannot create
    #   additional runs until you remove the excess runs.
    #
    # To learn more about the retention modes, see [Run retention mode][2]
    # in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html
    # [2]: https://docs.aws.amazon.com/omics/latest/dev/run-retention.html
    #
    # @option params [String] :workflow_id
    #   The run's workflow ID. The `workflowId` is not the UUID.
    #
    # @option params [String] :workflow_type
    #   The run's workflow type. The `workflowType` must be specified if you
    #   are running a `READY2RUN` workflow. If you are running a `PRIVATE`
    #   workflow (default), you do not need to include the workflow type.
    #
    # @option params [String] :run_id
    #   The ID of a run to duplicate.
    #
    # @option params [required, String] :role_arn
    #   A service role for the run. The `roleArn` requires access to Amazon
    #   Web Services HealthOmics, S3, Cloudwatch logs, and EC2. An example
    #   `roleArn` is
    #   `arn:aws:iam::123456789012:role/omics-service-role-serviceRole-W8O1XMPL7QZ`.
    #   In this example, the AWS account ID is `123456789012` and the role
    #   name is `omics-service-role-serviceRole-W8O1XMPL7QZ`.
    #
    # @option params [String] :name
    #   A name for the run. This is recommended to view and organize runs in
    #   the Amazon Web Services HealthOmics console and CloudWatch logs.
    #
    # @option params [String] :cache_id
    #   Identifier of the cache associated with this run. If you don't
    #   specify a cache ID, no task outputs are cached for this run.
    #
    # @option params [String] :cache_behavior
    #   The cache behavior for the run. You specify this value if you want to
    #   override the default behavior for the cache. You had set the default
    #   value when you created the cache. For more information, see [Run cache
    #   behavior][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html#run-cache-behavior
    #
    # @option params [String] :run_group_id
    #   The run's group ID. Use a run group to cap the compute resources (and
    #   number of concurrent runs) for the runs that you add to the run group.
    #
    # @option params [Integer] :priority
    #   Use the run priority (highest: 1) to establish the order of runs in a
    #   run group when you start a run. If multiple runs share the same
    #   priority, the run that was initiated first will have the higher
    #   priority. Runs that do not belong to a run group can be assigned a
    #   priority. The priorities of these runs are ranked among other runs
    #   that are not in a run group. For more information, see [Run
    #   priority][1] in the *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/creating-run-groups.html#run-priority
    #
    # @option params [Hash,Array,String,Numeric,Boolean] :parameters
    #   Parameters for the run. The run needs all required parameters and can
    #   include optional parameters. The run cannot include any parameters
    #   that are not defined in the parameter template. To retrieve parameters
    #   from the run, use the GetRun API operation.
    #
    #   Document type used to carry open content
    #   (Hash,Array,String,Numeric,Boolean). A document type value is
    #   serialized using the same format as its surroundings and requires no
    #   additional encoding or escaping.
    #
    # @option params [Integer] :storage_capacity
    #   The `STATIC` storage capacity (in gibibytes, GiB) for this run. The
    #   default run storage capacity is 1200 GiB. If your requested storage
    #   capacity is unavailable, the system rounds up the value to the nearest
    #   1200 GiB multiple. If the requested storage capacity is still
    #   unavailable, the system rounds up the value to the nearest 2400 GiB
    #   multiple. This field is not required if the storage type is `DYNAMIC`
    #   (the system ignores any value that you enter).
    #
    # @option params [String] :output_uri
    #   An output S3 URI for the run. The S3 bucket must be in the same region
    #   as the workflow. The role ARN must have permission to write to this S3
    #   bucket.
    #
    # @option params [String] :log_level
    #   A log level for the run.
    #
    # @option params [Hash<String,String>] :tags
    #   Tags for the run. You can add up to 50 tags per run. For more
    #   information, see [Adding a tag][1] in the *Amazon Web Services
    #   HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/add-a-tag.html
    #
    # @option params [required, String] :request_id
    #   An idempotency token used to dedupe retry requests so that duplicate
    #   runs are not created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :retention_mode
    #   The retention mode for the run. The default value is `RETAIN`.
    #
    #   Amazon Web Services HealthOmics stores a fixed number of runs that are
    #   available to the console and API. In the default mode (`RETAIN`), you
    #   need to remove runs manually when the number of run exceeds the
    #   maximum. If you set the retention mode to `REMOVE`, Amazon Web
    #   Services HealthOmics automatically removes runs (that have mode set to
    #   `REMOVE`) when the number of run exceeds the maximum. All run logs are
    #   available in CloudWatch logs, if you need information about a run that
    #   is no longer available to the API.
    #
    #   For more information about retention mode, see [Specifying run
    #   retention mode][1] in the *Amazon Web Services HealthOmics User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html
    #
    # @option params [String] :storage_type
    #   The storage type for the run. If you set the storage type to
    #   `DYNAMIC`, Amazon Web Services HealthOmics dynamically scales the
    #   storage up or down, based on file system utilization. By default, the
    #   run uses `STATIC` storage type, which allocates a fixed amount of
    #   storage. For more information about `DYNAMIC` and `STATIC` storage,
    #   see [Run storage types][1] in the *Amazon Web Services HealthOmics
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflows-run-types.html
    #
    # @option params [String] :workflow_owner_id
    #   The 12-digit account ID of the workflow owner that is used for running
    #   a shared workflow. The workflow owner ID can be retrieved using the
    #   `GetShare` API operation. If you are the workflow owner, you do not
    #   need to include this ID.
    #
    # @option params [String] :workflow_version_name
    #   The name of the workflow version. Use workflow versions to track and
    #   organize changes to the workflow. If your workflow has multiple
    #   versions, the run uses the default version unless you specify a
    #   version name. To learn more, see [Workflow versioning][1] in the
    #   *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html
    #
    # @return [Types::StartRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRunResponse#arn #arn} => String
    #   * {Types::StartRunResponse#id #id} => String
    #   * {Types::StartRunResponse#status #status} => String
    #   * {Types::StartRunResponse#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::StartRunResponse#uuid #uuid} => String
    #   * {Types::StartRunResponse#run_output_uri #run_output_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_run({
    #     workflow_id: "WorkflowId",
    #     workflow_type: "PRIVATE", # accepts PRIVATE, READY2RUN
    #     run_id: "RunId",
    #     role_arn: "RunRoleArn", # required
    #     name: "RunName",
    #     cache_id: "NumericIdInArn",
    #     cache_behavior: "CACHE_ON_FAILURE", # accepts CACHE_ON_FAILURE, CACHE_ALWAYS
    #     run_group_id: "RunGroupId",
    #     priority: 1,
    #     parameters: {
    #     },
    #     storage_capacity: 1,
    #     output_uri: "RunOutputUri",
    #     log_level: "OFF", # accepts OFF, FATAL, ERROR, ALL
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     request_id: "RunRequestId", # required
    #     retention_mode: "RETAIN", # accepts RETAIN, REMOVE
    #     storage_type: "STATIC", # accepts STATIC, DYNAMIC
    #     workflow_owner_id: "WorkflowOwnerId",
    #     workflow_version_name: "WorkflowVersionName",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "PENDING", "STARTING", "RUNNING", "STOPPING", "COMPLETED", "DELETED", "CANCELLED", "FAILED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #   resp.uuid #=> String
    #   resp.run_output_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartRun AWS API Documentation
    #
    # @overload start_run(params = {})
    # @param [Hash] params ({})
    def start_run(params = {}, options = {})
      req = build_request(:start_run, params)
      req.send_request(options)
    end

    # Starts a variant import job.
    #
    # @option params [required, String] :destination_name
    #   The destination variant store for the job.
    #
    # @option params [required, String] :role_arn
    #   A service role for the job.
    #
    # @option params [required, Array<Types::VariantImportItemSource>] :items
    #   Items to import.
    #
    # @option params [Boolean] :run_left_normalization
    #   The job's left normalization setting.
    #
    # @option params [Hash<String,String>] :annotation_fields
    #   The annotation schema generated by the parsed annotation data.
    #
    # @return [Types::StartVariantImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartVariantImportResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_variant_import_job({
    #     destination_name: "StoreName", # required
    #     role_arn: "Arn", # required
    #     items: [ # required
    #       {
    #         source: "S3Uri", # required
    #       },
    #     ],
    #     run_left_normalization: false,
    #     annotation_fields: {
    #       "AnnotationFieldMapKeyString" => "AnnotationFieldMapValueString",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/StartVariantImportJob AWS API Documentation
    #
    # @overload start_variant_import_job(params = {})
    # @param [Hash] params ({})
    def start_variant_import_job(params = {}, options = {})
      req = build_request(:start_variant_import_job, params)
      req.send_request(options)
    end

    # Tags a resource.
    #
    # @option params [required, String] :resource_arn
    #   The resource's ARN.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TagArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/TagResource AWS API Documentation
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
    #   The resource's ARN.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys of tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TagArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates an annotation store.
    #
    # @option params [required, String] :name
    #   A name for the store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @return [Types::UpdateAnnotationStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnnotationStoreResponse#id #id} => String
    #   * {Types::UpdateAnnotationStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::UpdateAnnotationStoreResponse#status #status} => String
    #   * {Types::UpdateAnnotationStoreResponse#name #name} => String
    #   * {Types::UpdateAnnotationStoreResponse#description #description} => String
    #   * {Types::UpdateAnnotationStoreResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateAnnotationStoreResponse#update_time #update_time} => Time
    #   * {Types::UpdateAnnotationStoreResponse#store_options #store_options} => Types::StoreOptions
    #   * {Types::UpdateAnnotationStoreResponse#store_format #store_format} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_annotation_store({
    #     name: "String", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #   resp.store_options.tsv_store_options.annotation_type #=> String, one of "GENERIC", "CHR_POS", "CHR_POS_REF_ALT", "CHR_START_END_ONE_BASE", "CHR_START_END_REF_ALT_ONE_BASE", "CHR_START_END_ZERO_BASE", "CHR_START_END_REF_ALT_ZERO_BASE"
    #   resp.store_options.tsv_store_options.format_to_header #=> Hash
    #   resp.store_options.tsv_store_options.format_to_header["FormatToHeaderKey"] #=> String
    #   resp.store_options.tsv_store_options.schema #=> Array
    #   resp.store_options.tsv_store_options.schema[0] #=> Hash
    #   resp.store_options.tsv_store_options.schema[0]["SchemaItemKeyString"] #=> String, one of "LONG", "INT", "STRING", "FLOAT", "DOUBLE", "BOOLEAN"
    #   resp.store_format #=> String, one of "GFF", "TSV", "VCF"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateAnnotationStore AWS API Documentation
    #
    # @overload update_annotation_store(params = {})
    # @param [Hash] params ({})
    def update_annotation_store(params = {}, options = {})
      req = build_request(:update_annotation_store, params)
      req.send_request(options)
    end

    # Updates the description of an annotation store version.
    #
    # @option params [required, String] :name
    #   The name of an annotation store.
    #
    # @option params [required, String] :version_name
    #   The name of an annotation store version.
    #
    # @option params [String] :description
    #   The description of an annotation store.
    #
    # @return [Types::UpdateAnnotationStoreVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAnnotationStoreVersionResponse#store_id #store_id} => String
    #   * {Types::UpdateAnnotationStoreVersionResponse#id #id} => String
    #   * {Types::UpdateAnnotationStoreVersionResponse#status #status} => String
    #   * {Types::UpdateAnnotationStoreVersionResponse#name #name} => String
    #   * {Types::UpdateAnnotationStoreVersionResponse#version_name #version_name} => String
    #   * {Types::UpdateAnnotationStoreVersionResponse#description #description} => String
    #   * {Types::UpdateAnnotationStoreVersionResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateAnnotationStoreVersionResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_annotation_store_version({
    #     name: "String", # required
    #     version_name: "String", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.store_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.name #=> String
    #   resp.version_name #=> String
    #   resp.description #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateAnnotationStoreVersion AWS API Documentation
    #
    # @overload update_annotation_store_version(params = {})
    # @param [Hash] params ({})
    def update_annotation_store_version(params = {}, options = {})
      req = build_request(:update_annotation_store_version, params)
      req.send_request(options)
    end

    # Updates a run cache using its ID and returns a response with no body
    # if the operation is successful. You can update the run cache
    # description, name, or the default run cache behavior with
    # `CACHE_ON_FAILURE` or `CACHE_ALWAYS`. To confirm that your run cache
    # settings have been properly updated, use the `GetRunCache` API
    # operation.
    #
    # For more information, see [How call caching works][1] in the *Amazon
    # Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html
    #
    # @option params [String] :cache_behavior
    #   Update the default run cache behavior.
    #
    # @option params [String] :description
    #   Update the run cache description.
    #
    # @option params [required, String] :id
    #   The identifier of the run cache you want to update.
    #
    # @option params [String] :name
    #   Update the name of the run cache.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_run_cache({
    #     cache_behavior: "CACHE_ON_FAILURE", # accepts CACHE_ON_FAILURE, CACHE_ALWAYS
    #     description: "UserCustomDescription",
    #     id: "RunCacheId", # required
    #     name: "UserCustomName",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateRunCache AWS API Documentation
    #
    # @overload update_run_cache(params = {})
    # @param [Hash] params ({})
    def update_run_cache(params = {}, options = {})
      req = build_request(:update_run_cache, params)
      req.send_request(options)
    end

    # Updates the settings of a run group and returns a response with no
    # body if the operation is successful.
    #
    # You can update the following settings with `UpdateRunGroup`:
    #
    # * Maximum number of CPUs
    #
    # * Run time (measured in minutes)
    #
    # * Number of GPUs
    #
    # * Number of concurrent runs
    #
    # * Group name
    #
    # To confirm that the settings have been successfully updated, use the
    # `ListRunGroups` or `GetRunGroup` API operations to verify that the
    # desired changes have been made.
    #
    # @option params [required, String] :id
    #   The group's ID.
    #
    # @option params [String] :name
    #   A name for the group.
    #
    # @option params [Integer] :max_cpus
    #   The maximum number of CPUs to use.
    #
    # @option params [Integer] :max_runs
    #   The maximum number of concurrent runs for the group.
    #
    # @option params [Integer] :max_duration
    #   A maximum run time for the group in minutes.
    #
    # @option params [Integer] :max_gpus
    #   The maximum GPUs that can be used by a run group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_run_group({
    #     id: "RunGroupId", # required
    #     name: "RunGroupName",
    #     max_cpus: 1,
    #     max_runs: 1,
    #     max_duration: 1,
    #     max_gpus: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateRunGroup AWS API Documentation
    #
    # @overload update_run_group(params = {})
    # @param [Hash] params ({})
    def update_run_group(params = {}, options = {})
      req = build_request(:update_run_group, params)
      req.send_request(options)
    end

    # Update one or more parameters for the sequence store.
    #
    # @option params [required, String] :id
    #   The ID of the sequence store.
    #
    # @option params [String] :name
    #   A name for the sequence store.
    #
    # @option params [String] :description
    #   A description for the sequence store.
    #
    # @option params [String] :client_token
    #   To ensure that requests don't run multiple times, specify a unique
    #   token for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :fallback_location
    #   The S3 URI of a bucket and folder to store Read Sets that fail to
    #   upload.
    #
    # @option params [Array<String>] :propagated_set_level_tags
    #   The tags keys to propagate to the S3 objects associated with read sets
    #   in the sequence store.
    #
    # @option params [Types::S3AccessConfig] :s3_access_config
    #   S3 access configuration parameters.
    #
    # @return [Types::UpdateSequenceStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSequenceStoreResponse#id #id} => String
    #   * {Types::UpdateSequenceStoreResponse#arn #arn} => String
    #   * {Types::UpdateSequenceStoreResponse#name #name} => String
    #   * {Types::UpdateSequenceStoreResponse#description #description} => String
    #   * {Types::UpdateSequenceStoreResponse#sse_config #sse_config} => Types::SseConfig
    #   * {Types::UpdateSequenceStoreResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateSequenceStoreResponse#update_time #update_time} => Time
    #   * {Types::UpdateSequenceStoreResponse#propagated_set_level_tags #propagated_set_level_tags} => Array&lt;String&gt;
    #   * {Types::UpdateSequenceStoreResponse#status #status} => String
    #   * {Types::UpdateSequenceStoreResponse#status_message #status_message} => String
    #   * {Types::UpdateSequenceStoreResponse#fallback_location #fallback_location} => String
    #   * {Types::UpdateSequenceStoreResponse#s3_access #s3_access} => Types::SequenceStoreS3Access
    #   * {Types::UpdateSequenceStoreResponse#e_tag_algorithm_family #e_tag_algorithm_family} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_sequence_store({
    #     id: "SequenceStoreId", # required
    #     name: "SequenceStoreName",
    #     description: "SequenceStoreDescription",
    #     client_token: "ClientToken",
    #     fallback_location: "FallbackLocation",
    #     propagated_set_level_tags: ["TagKey"],
    #     s3_access_config: {
    #       access_log_location: "AccessLogLocation",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.sse_config.type #=> String, one of "KMS"
    #   resp.sse_config.key_arn #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #   resp.propagated_set_level_tags #=> Array
    #   resp.propagated_set_level_tags[0] #=> String
    #   resp.status #=> String, one of "CREATING", "ACTIVE", "UPDATING", "DELETING", "FAILED"
    #   resp.status_message #=> String
    #   resp.fallback_location #=> String
    #   resp.s3_access.s3_uri #=> String
    #   resp.s3_access.s3_access_point_arn #=> String
    #   resp.s3_access.access_log_location #=> String
    #   resp.e_tag_algorithm_family #=> String, one of "MD5up", "SHA256up", "SHA512up"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateSequenceStore AWS API Documentation
    #
    # @overload update_sequence_store(params = {})
    # @param [Hash] params ({})
    def update_sequence_store(params = {}, options = {})
      req = build_request(:update_sequence_store, params)
      req.send_request(options)
    end

    # Updates a variant store.
    #
    # @option params [required, String] :name
    #   A name for the store.
    #
    # @option params [String] :description
    #   A description for the store.
    #
    # @return [Types::UpdateVariantStoreResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVariantStoreResponse#id #id} => String
    #   * {Types::UpdateVariantStoreResponse#reference #reference} => Types::ReferenceItem
    #   * {Types::UpdateVariantStoreResponse#status #status} => String
    #   * {Types::UpdateVariantStoreResponse#name #name} => String
    #   * {Types::UpdateVariantStoreResponse#description #description} => String
    #   * {Types::UpdateVariantStoreResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateVariantStoreResponse#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_variant_store({
    #     name: "String", # required
    #     description: "Description",
    #   })
    #
    # @example Response structure
    #
    #   resp.id #=> String
    #   resp.reference.reference_arn #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "DELETING", "ACTIVE", "FAILED"
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.creation_time #=> Time
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateVariantStore AWS API Documentation
    #
    # @overload update_variant_store(params = {})
    # @param [Hash] params ({})
    def update_variant_store(params = {}, options = {})
      req = build_request(:update_variant_store, params)
      req.send_request(options)
    end

    # Updates information about a workflow.
    #
    # You can update the following workflow information:
    #
    # * Name
    #
    # * Description
    #
    # * Default storage type
    #
    # * Default storage capacity (with workflow ID)
    #
    # This operation returns a response with no body if the operation is
    # successful. You can check the workflow updates by calling the
    # `GetWorkflow` API operation.
    #
    # For more information, see [Update a private workflow][1] in the
    # *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/update-private-workflow.html
    #
    # @option params [required, String] :id
    #   The workflow's ID.
    #
    # @option params [String] :name
    #   A name for the workflow.
    #
    # @option params [String] :description
    #   A description for the workflow.
    #
    # @option params [String] :storage_type
    #   The default storage type for runs that use this workflow. STATIC
    #   storage allocates a fixed amount of storage. DYNAMIC storage
    #   dynamically scales the storage up or down, based on file system
    #   utilization. For more information about static and dynamic storage,
    #   see [Running workflows][1] in the *Amazon Web Services HealthOmics
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html
    #
    # @option params [Integer] :storage_capacity
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow or workflow version.
    #
    # @option params [String] :readme_markdown
    #   The markdown content for the workflow's README file. This provides
    #   documentation and usage information for users of the workflow.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow({
    #     id: "WorkflowId", # required
    #     name: "WorkflowName",
    #     description: "WorkflowDescription",
    #     storage_type: "STATIC", # accepts STATIC, DYNAMIC
    #     storage_capacity: 1,
    #     readme_markdown: "ReadmeMarkdown",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateWorkflow AWS API Documentation
    #
    # @overload update_workflow(params = {})
    # @param [Hash] params ({})
    def update_workflow(params = {}, options = {})
      req = build_request(:update_workflow, params)
      req.send_request(options)
    end

    # Updates information about the workflow version. For more information,
    # see [Workflow versioning in Amazon Web Services HealthOmics][1] in the
    # *Amazon Web Services HealthOmics User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html
    #
    # @option params [required, String] :workflow_id
    #   The workflow's ID.
    #
    # @option params [required, String] :version_name
    #   The name of the workflow version.
    #
    # @option params [String] :description
    #   Description of the workflow version.
    #
    # @option params [String] :storage_type
    #   The default storage type for runs that use this workflow. STATIC
    #   storage allocates a fixed amount of storage. DYNAMIC storage
    #   dynamically scales the storage up or down, based on file system
    #   utilization. For more information about static and dynamic storage,
    #   see [Running workflows][1] in the *Amazon Web Services HealthOmics
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html
    #
    # @option params [Integer] :storage_capacity
    #   The default static storage capacity (in gibibytes) for runs that use
    #   this workflow or workflow version.
    #
    # @option params [String] :readme_markdown
    #   The markdown content for the workflow version's README file. This
    #   provides documentation and usage information for users of this
    #   specific workflow version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workflow_version({
    #     workflow_id: "WorkflowId", # required
    #     version_name: "WorkflowVersionName", # required
    #     description: "WorkflowVersionDescription",
    #     storage_type: "STATIC", # accepts STATIC, DYNAMIC
    #     storage_capacity: 1,
    #     readme_markdown: "ReadmeMarkdown",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UpdateWorkflowVersion AWS API Documentation
    #
    # @overload update_workflow_version(params = {})
    # @param [Hash] params ({})
    def update_workflow_version(params = {}, options = {})
      req = build_request(:update_workflow_version, params)
      req.send_request(options)
    end

    # This operation uploads a specific part of a read set. If you upload a
    # new part using a previously used part number, the previously uploaded
    # part will be overwritten.
    #
    # @option params [required, String] :sequence_store_id
    #   The Sequence Store ID used for the multipart upload.
    #
    # @option params [required, String] :upload_id
    #   The ID for the initiated multipart upload.
    #
    # @option params [required, String] :part_source
    #   The source file for an upload part.
    #
    # @option params [required, Integer] :part_number
    #   The number of the part being uploaded.
    #
    # @option params [required, String, IO] :payload
    #   The read set data to upload for a part.
    #
    # @return [Types::UploadReadSetPartResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadReadSetPartResponse#checksum #checksum} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_read_set_part({
    #     sequence_store_id: "SequenceStoreId", # required
    #     upload_id: "UploadId", # required
    #     part_source: "SOURCE1", # required, accepts SOURCE1, SOURCE2
    #     part_number: 1, # required
    #     payload: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.checksum #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/omics-2022-11-28/UploadReadSetPart AWS API Documentation
    #
    # @overload upload_read_set_part(params = {})
    # @param [Hash] params ({})
    def upload_read_set_part(params = {}, options = {})
      req = build_request(:upload_read_set_part, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Omics')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-omics'
      context[:gem_version] = '1.51.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                       | params                                | :delay   | :max_attempts |
    # | --------------------------------- | ------------------------------------- | -------- | ------------- |
    # | annotation_import_job_created     | {Client#get_annotation_import_job}    | 30       | 20            |
    # | annotation_store_created          | {Client#get_annotation_store}         | 30       | 20            |
    # | annotation_store_deleted          | {Client#get_annotation_store}         | 30       | 20            |
    # | annotation_store_version_created  | {Client#get_annotation_store_version} | 30       | 20            |
    # | annotation_store_version_deleted  | {Client#get_annotation_store_version} | 30       | 20            |
    # | read_set_activation_job_completed | {Client#get_read_set_activation_job}  | 30       | 20            |
    # | read_set_export_job_completed     | {Client#get_read_set_export_job}      | 30       | 20            |
    # | read_set_import_job_completed     | {Client#get_read_set_import_job}      | 30       | 20            |
    # | reference_import_job_completed    | {Client#get_reference_import_job}     | 30       | 20            |
    # | run_completed                     | {Client#get_run}                      | 30       | 20            |
    # | run_running                       | {Client#get_run}                      | 30       | 20            |
    # | task_completed                    | {Client#get_run_task}                 | 30       | 20            |
    # | task_running                      | {Client#get_run_task}                 | 30       | 20            |
    # | variant_import_job_created        | {Client#get_variant_import_job}       | 30       | 20            |
    # | variant_store_created             | {Client#get_variant_store}            | 30       | 20            |
    # | variant_store_deleted             | {Client#get_variant_store}            | 30       | 20            |
    # | workflow_active                   | {Client#get_workflow}                 | 3        | 10            |
    # | workflow_version_active           | {Client#get_workflow_version}         | 3        | 10            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        annotation_import_job_created: Waiters::AnnotationImportJobCreated,
        annotation_store_created: Waiters::AnnotationStoreCreated,
        annotation_store_deleted: Waiters::AnnotationStoreDeleted,
        annotation_store_version_created: Waiters::AnnotationStoreVersionCreated,
        annotation_store_version_deleted: Waiters::AnnotationStoreVersionDeleted,
        read_set_activation_job_completed: Waiters::ReadSetActivationJobCompleted,
        read_set_export_job_completed: Waiters::ReadSetExportJobCompleted,
        read_set_import_job_completed: Waiters::ReadSetImportJobCompleted,
        reference_import_job_completed: Waiters::ReferenceImportJobCompleted,
        run_completed: Waiters::RunCompleted,
        run_running: Waiters::RunRunning,
        task_completed: Waiters::TaskCompleted,
        task_running: Waiters::TaskRunning,
        variant_import_job_created: Waiters::VariantImportJobCreated,
        variant_store_created: Waiters::VariantStoreCreated,
        variant_store_deleted: Waiters::VariantStoreDeleted,
        workflow_active: Waiters::WorkflowActive,
        workflow_version_active: Waiters::WorkflowVersionActive
      }
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
