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
require 'aws-sdk-core/plugins/protocols/json_rpc'

module Aws::Textract
  # An API client for Textract.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Textract::Client.new(
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

    @identifier = :textract

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
    add_plugin(Aws::Textract::Plugins::Endpoints)

    # @overload initialize(options)
    #   @param [Hash] options
    #
    #   @option options [Array<Seahorse::Client::Plugin>] :plugins ([]])
    #     A list of plugins to apply to the client. Each plugin is either a
    #     class name or an instance of a plugin class.
    #
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials used for authentication. This can be any class that includes and implements
    #     `Aws::CredentialProvider`, or instance of any one of the following classes:
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
    #     When `:credentials` are not configured directly, the following locations will be searched for credentials:
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
    #     * EC2/ECS IMDS instance profile - When used by default, the timeouts are very aggressive.
    #       Construct and pass an instance of `Aws::InstanceProfileCredentials` or `Aws::ECSCredentials` to
    #       enable retries and extended timeouts. Instance profile credential fetching can be disabled by
    #       setting `ENV['AWS_EC2_METADATA_DISABLED']` to `true`.
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
    #     Your Bearer token used for authentication. This can be any class that includes and implements
    #     `Aws::TokenProvider`, or instance of any one of the following classes:
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
    #   @option options [Aws::Textract::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Textract::EndpointParameters`.
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

    # Analyzes an input document for relationships between detected items.
    #
    # The types of information returned are as follows:
    #
    # * Form data (key-value pairs). The related information is returned in
    #   two Block objects, each of type `KEY_VALUE_SET`: a KEY `Block`
    #   object and a VALUE `Block` object. For example, *Name: Ana Silva
    #   Carolina* contains a key and value. *Name:* is the key. *Ana Silva
    #   Carolina* is the value.
    #
    # * Table and table cell data. A TABLE `Block` object contains
    #   information about a detected table. A CELL `Block` object is
    #   returned for each cell in a table.
    #
    # * Lines and words of text. A LINE `Block` object contains one or more
    #   WORD `Block` objects. All lines and words that are detected in the
    #   document are returned (including text that doesn't have a
    #   relationship with the value of `FeatureTypes`).
    #
    # * Signatures. A SIGNATURE `Block` object contains the location
    #   information of a signature in a document. If used in conjunction
    #   with forms or tables, a signature can be given a Key-Value pairing
    #   or be detected in the cell of a table.
    #
    # * Query. A QUERY Block object contains the query text, alias and link
    #   to the associated Query results block object.
    #
    # * Query Result. A QUERY\_RESULT Block object contains the answer to
    #   the query and an ID that connects it to the query asked. This Block
    #   also contains a confidence score.
    #
    # Selection elements such as check boxes and option buttons (radio
    # buttons) can be detected in form data and in tables. A
    # SELECTION\_ELEMENT `Block` object contains information about a
    # selection element, including the selection status.
    #
    # You can choose which type of analysis to perform by specifying the
    # `FeatureTypes` list.
    #
    # The output is returned in a list of `Block` objects.
    #
    # `AnalyzeDocument` is a synchronous operation. To analyze documents
    # asynchronously, use StartDocumentAnalysis.
    #
    # For more information, see [Document Text Analysis][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html
    #
    # @option params [required, Types::Document] :document
    #   The input document as base64-encoded bytes or an Amazon S3 object. If
    #   you use the AWS CLI to call Amazon Textract operations, you can't
    #   pass image bytes. The document must be an image in JPEG, PNG, PDF, or
    #   TIFF format.
    #
    #   If you're using an AWS SDK to call Amazon Textract, you might not
    #   need to base64-encode image bytes that are passed using the `Bytes`
    #   field.
    #
    # @option params [required, Array<String>] :feature_types
    #   A list of the types of analysis to perform. Add TABLES to the list to
    #   return information about the tables that are detected in the input
    #   document. Add FORMS to return detected form data. Add SIGNATURES to
    #   return the locations of detected signatures. Add LAYOUT to the list to
    #   return information about the layout of the document. All lines and
    #   words detected in the document are included in the response (including
    #   text that isn't related to the value of `FeatureTypes`).
    #
    # @option params [Types::HumanLoopConfig] :human_loop_config
    #   Sets the configuration for the human in the loop workflow for
    #   analyzing documents.
    #
    # @option params [Types::QueriesConfig] :queries_config
    #   Contains Queries and the alias for those Queries, as determined by the
    #   input.
    #
    # @option params [Types::AdaptersConfig] :adapters_config
    #   Specifies the adapter to be used when analyzing a document.
    #
    # @return [Types::AnalyzeDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AnalyzeDocumentResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::AnalyzeDocumentResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::AnalyzeDocumentResponse#human_loop_activation_output #human_loop_activation_output} => Types::HumanLoopActivationOutput
    #   * {Types::AnalyzeDocumentResponse#analyze_document_model_version #analyze_document_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.analyze_document({
    #     document: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     feature_types: ["TABLES"], # required, accepts TABLES, FORMS, QUERIES, SIGNATURES, LAYOUT
    #     human_loop_config: {
    #       human_loop_name: "HumanLoopName", # required
    #       flow_definition_arn: "FlowDefinitionArn", # required
    #       data_attributes: {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #       },
    #     },
    #     queries_config: {
    #       queries: [ # required
    #         {
    #           text: "QueryInput", # required
    #           alias: "QueryInput",
    #           pages: ["QueryPage"],
    #         },
    #       ],
    #     },
    #     adapters_config: {
    #       adapters: [ # required
    #         {
    #           adapter_id: "AdapterId", # required
    #           pages: ["AdapterPage"],
    #           version: "AdapterVersion", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.blocks[0].confidence #=> Float
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.blocks[0].row_index #=> Integer
    #   resp.blocks[0].column_index #=> Integer
    #   resp.blocks[0].row_span #=> Integer
    #   resp.blocks[0].column_span #=> Integer
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].geometry.rotation_angle #=> Float
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].entity_types #=> Array
    #   resp.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.blocks[0].page #=> Integer
    #   resp.blocks[0].query.text #=> String
    #   resp.blocks[0].query.alias #=> String
    #   resp.blocks[0].query.pages #=> Array
    #   resp.blocks[0].query.pages[0] #=> String
    #   resp.human_loop_activation_output.human_loop_arn #=> String
    #   resp.human_loop_activation_output.human_loop_activation_reasons #=> Array
    #   resp.human_loop_activation_output.human_loop_activation_reasons[0] #=> String
    #   resp.human_loop_activation_output.human_loop_activation_conditions_evaluation_results #=> String
    #   resp.analyze_document_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeDocument AWS API Documentation
    #
    # @overload analyze_document(params = {})
    # @param [Hash] params ({})
    def analyze_document(params = {}, options = {})
      req = build_request(:analyze_document, params)
      req.send_request(options)
    end

    # `AnalyzeExpense` synchronously analyzes an input document for
    # financially related relationships between text.
    #
    # Information is returned as `ExpenseDocuments` and seperated as
    # follows:
    #
    # * `LineItemGroups`- A data set containing `LineItems` which store
    #   information about the lines of text, such as an item purchased and
    #   its price on a receipt.
    #
    # * `SummaryFields`- Contains all other information a receipt, such as
    #   header information or the vendors name.
    #
    # @option params [required, Types::Document] :document
    #   The input document, either as bytes or as an S3 object.
    #
    #   You pass image bytes to an Amazon Textract API operation by using the
    #   `Bytes` property. For example, you would use the `Bytes` property to
    #   pass a document loaded from a local file system. Image bytes passed by
    #   using the `Bytes` property must be base64 encoded. Your code might not
    #   need to encode document file bytes if you're using an AWS SDK to call
    #   Amazon Textract API operations.
    #
    #   You pass images stored in an S3 bucket to an Amazon Textract API
    #   operation by using the `S3Object` property. Documents stored in an S3
    #   bucket don't need to be base64 encoded.
    #
    #   The AWS Region for the S3 bucket that contains the S3 object must
    #   match the AWS Region that you use for Amazon Textract operations.
    #
    #   If you use the AWS CLI to call Amazon Textract operations, passing
    #   image bytes using the Bytes property isn't supported. You must first
    #   upload the document to an Amazon S3 bucket, and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Textract to process an S3 object, the user must have
    #   permission to access the S3 object.
    #
    # @return [Types::AnalyzeExpenseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AnalyzeExpenseResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::AnalyzeExpenseResponse#expense_documents #expense_documents} => Array&lt;Types::ExpenseDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.analyze_expense({
    #     document: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.expense_documents #=> Array
    #   resp.expense_documents[0].expense_index #=> Integer
    #   resp.expense_documents[0].summary_fields #=> Array
    #   resp.expense_documents[0].summary_fields[0].type.text #=> String
    #   resp.expense_documents[0].summary_fields[0].type.confidence #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.text #=> String
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.polygon #=> Array
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.confidence #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.text #=> String
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.polygon #=> Array
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.confidence #=> Float
    #   resp.expense_documents[0].summary_fields[0].page_number #=> Integer
    #   resp.expense_documents[0].summary_fields[0].currency.code #=> String
    #   resp.expense_documents[0].summary_fields[0].currency.confidence #=> Float
    #   resp.expense_documents[0].summary_fields[0].group_properties #=> Array
    #   resp.expense_documents[0].summary_fields[0].group_properties[0].types #=> Array
    #   resp.expense_documents[0].summary_fields[0].group_properties[0].types[0] #=> String
    #   resp.expense_documents[0].summary_fields[0].group_properties[0].id #=> String
    #   resp.expense_documents[0].line_item_groups #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_item_group_index #=> Integer
    #   resp.expense_documents[0].line_item_groups[0].line_items #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].type.text #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].type.confidence #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.text #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.confidence #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.text #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.confidence #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].page_number #=> Integer
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].currency.code #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].currency.confidence #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].types #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].types[0] #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].id #=> String
    #   resp.expense_documents[0].blocks #=> Array
    #   resp.expense_documents[0].blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.expense_documents[0].blocks[0].confidence #=> Float
    #   resp.expense_documents[0].blocks[0].text #=> String
    #   resp.expense_documents[0].blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.expense_documents[0].blocks[0].row_index #=> Integer
    #   resp.expense_documents[0].blocks[0].column_index #=> Integer
    #   resp.expense_documents[0].blocks[0].row_span #=> Integer
    #   resp.expense_documents[0].blocks[0].column_span #=> Integer
    #   resp.expense_documents[0].blocks[0].geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.polygon #=> Array
    #   resp.expense_documents[0].blocks[0].geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].blocks[0].id #=> String
    #   resp.expense_documents[0].blocks[0].relationships #=> Array
    #   resp.expense_documents[0].blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.expense_documents[0].blocks[0].relationships[0].ids #=> Array
    #   resp.expense_documents[0].blocks[0].relationships[0].ids[0] #=> String
    #   resp.expense_documents[0].blocks[0].entity_types #=> Array
    #   resp.expense_documents[0].blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.expense_documents[0].blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.expense_documents[0].blocks[0].page #=> Integer
    #   resp.expense_documents[0].blocks[0].query.text #=> String
    #   resp.expense_documents[0].blocks[0].query.alias #=> String
    #   resp.expense_documents[0].blocks[0].query.pages #=> Array
    #   resp.expense_documents[0].blocks[0].query.pages[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeExpense AWS API Documentation
    #
    # @overload analyze_expense(params = {})
    # @param [Hash] params ({})
    def analyze_expense(params = {}, options = {})
      req = build_request(:analyze_expense, params)
      req.send_request(options)
    end

    # Analyzes identity documents for relevant information. This information
    # is extracted and returned as `IdentityDocumentFields`, which records
    # both the normalized field and value of the extracted text. Unlike
    # other Amazon Textract operations, `AnalyzeID` doesn't return any
    # Geometry data.
    #
    # @option params [required, Array<Types::Document>] :document_pages
    #   The document being passed to AnalyzeID.
    #
    # @return [Types::AnalyzeIDResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AnalyzeIDResponse#identity_documents #identity_documents} => Array&lt;Types::IdentityDocument&gt;
    #   * {Types::AnalyzeIDResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::AnalyzeIDResponse#analyze_id_model_version #analyze_id_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.analyze_id({
    #     document_pages: [ # required
    #       {
    #         bytes: "data",
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion",
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_documents #=> Array
    #   resp.identity_documents[0].document_index #=> Integer
    #   resp.identity_documents[0].identity_document_fields #=> Array
    #   resp.identity_documents[0].identity_document_fields[0].type.text #=> String
    #   resp.identity_documents[0].identity_document_fields[0].type.normalized_value.value #=> String
    #   resp.identity_documents[0].identity_document_fields[0].type.normalized_value.value_type #=> String, one of "DATE"
    #   resp.identity_documents[0].identity_document_fields[0].type.confidence #=> Float
    #   resp.identity_documents[0].identity_document_fields[0].value_detection.text #=> String
    #   resp.identity_documents[0].identity_document_fields[0].value_detection.normalized_value.value #=> String
    #   resp.identity_documents[0].identity_document_fields[0].value_detection.normalized_value.value_type #=> String, one of "DATE"
    #   resp.identity_documents[0].identity_document_fields[0].value_detection.confidence #=> Float
    #   resp.identity_documents[0].blocks #=> Array
    #   resp.identity_documents[0].blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.identity_documents[0].blocks[0].confidence #=> Float
    #   resp.identity_documents[0].blocks[0].text #=> String
    #   resp.identity_documents[0].blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.identity_documents[0].blocks[0].row_index #=> Integer
    #   resp.identity_documents[0].blocks[0].column_index #=> Integer
    #   resp.identity_documents[0].blocks[0].row_span #=> Integer
    #   resp.identity_documents[0].blocks[0].column_span #=> Integer
    #   resp.identity_documents[0].blocks[0].geometry.bounding_box.width #=> Float
    #   resp.identity_documents[0].blocks[0].geometry.bounding_box.height #=> Float
    #   resp.identity_documents[0].blocks[0].geometry.bounding_box.left #=> Float
    #   resp.identity_documents[0].blocks[0].geometry.bounding_box.top #=> Float
    #   resp.identity_documents[0].blocks[0].geometry.polygon #=> Array
    #   resp.identity_documents[0].blocks[0].geometry.polygon[0].x #=> Float
    #   resp.identity_documents[0].blocks[0].geometry.polygon[0].y #=> Float
    #   resp.identity_documents[0].blocks[0].geometry.rotation_angle #=> Float
    #   resp.identity_documents[0].blocks[0].id #=> String
    #   resp.identity_documents[0].blocks[0].relationships #=> Array
    #   resp.identity_documents[0].blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.identity_documents[0].blocks[0].relationships[0].ids #=> Array
    #   resp.identity_documents[0].blocks[0].relationships[0].ids[0] #=> String
    #   resp.identity_documents[0].blocks[0].entity_types #=> Array
    #   resp.identity_documents[0].blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.identity_documents[0].blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.identity_documents[0].blocks[0].page #=> Integer
    #   resp.identity_documents[0].blocks[0].query.text #=> String
    #   resp.identity_documents[0].blocks[0].query.alias #=> String
    #   resp.identity_documents[0].blocks[0].query.pages #=> Array
    #   resp.identity_documents[0].blocks[0].query.pages[0] #=> String
    #   resp.document_metadata.pages #=> Integer
    #   resp.analyze_id_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeID AWS API Documentation
    #
    # @overload analyze_id(params = {})
    # @param [Hash] params ({})
    def analyze_id(params = {}, options = {})
      req = build_request(:analyze_id, params)
      req.send_request(options)
    end

    # Creates an adapter, which can be fine-tuned for enhanced performance
    # on user provided documents. Takes an AdapterName and FeatureType.
    # Currently the only supported feature type is `QUERIES`. You can also
    # provide a Description, Tags, and a ClientRequestToken. You can choose
    # whether or not the adapter should be AutoUpdated with the AutoUpdate
    # argument. By default, AutoUpdate is set to DISABLED.
    #
    # @option params [required, String] :adapter_name
    #   The name to be assigned to the adapter being created.
    #
    # @option params [String] :client_request_token
    #   Idempotent token is used to recognize the request. If the same token
    #   is used with multiple CreateAdapter requests, the same session is
    #   returned. This token is employed to avoid unintentionally creating the
    #   same session multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :description
    #   The description to be assigned to the adapter being created.
    #
    # @option params [required, Array<String>] :feature_types
    #   The type of feature that the adapter is being trained on. Currrenly,
    #   supported feature types are: `QUERIES`
    #
    # @option params [String] :auto_update
    #   Controls whether or not the adapter should automatically update.
    #
    # @option params [Hash<String,String>] :tags
    #   A list of tags to be added to the adapter.
    #
    # @return [Types::CreateAdapterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAdapterResponse#adapter_id #adapter_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_adapter({
    #     adapter_name: "AdapterName", # required
    #     client_request_token: "ClientRequestToken",
    #     description: "AdapterDescription",
    #     feature_types: ["TABLES"], # required, accepts TABLES, FORMS, QUERIES, SIGNATURES, LAYOUT
    #     auto_update: "ENABLED", # accepts ENABLED, DISABLED
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.adapter_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateAdapter AWS API Documentation
    #
    # @overload create_adapter(params = {})
    # @param [Hash] params ({})
    def create_adapter(params = {}, options = {})
      req = build_request(:create_adapter, params)
      req.send_request(options)
    end

    # Creates a new version of an adapter. Operates on a provided AdapterId
    # and a specified dataset provided via the DatasetConfig argument.
    # Requires that you specify an Amazon S3 bucket with the OutputConfig
    # argument. You can provide an optional KMSKeyId, an optional
    # ClientRequestToken, and optional tags.
    #
    # @option params [required, String] :adapter_id
    #   A string containing a unique ID for the adapter that will receive a
    #   new version.
    #
    # @option params [String] :client_request_token
    #   Idempotent token is used to recognize the request. If the same token
    #   is used with multiple CreateAdapterVersion requests, the same session
    #   is returned. This token is employed to avoid unintentionally creating
    #   the same session multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::AdapterVersionDatasetConfig] :dataset_config
    #   Specifies a dataset used to train a new adapter version. Takes a
    #   ManifestS3Object as the value.
    #
    # @option params [String] :kms_key_id
    #   The identifier for your AWS Key Management Service key (AWS KMS key).
    #   Used to encrypt your documents.
    #
    # @option params [required, Types::OutputConfig] :output_config
    #   Sets whether or not your output will go to a user created bucket. Used
    #   to set the name of the bucket, and the prefix on the output file.
    #
    #   `OutputConfig` is an optional parameter which lets you adjust where
    #   your output will be placed. By default, Amazon Textract will store the
    #   results internally and can only be accessed by the Get API operations.
    #   With `OutputConfig` enabled, you can set the name of the bucket the
    #   output will be sent to the file prefix of the results where you can
    #   download your results. Additionally, you can set the `KMSKeyID`
    #   parameter to a customer master key (CMK) to encrypt your output.
    #   Without this parameter set Amazon Textract will encrypt server-side
    #   using the AWS managed CMK for Amazon S3.
    #
    #   Decryption of Customer Content is necessary for processing of the
    #   documents by Amazon Textract. If your account is opted out under an AI
    #   services opt out policy then all unencrypted Customer Content is
    #   immediately and permanently deleted after the Customer Content has
    #   been processed by the service. No copy of of the output is retained by
    #   Amazon Textract. For information about how to opt out, see [ Managing
    #   AI services opt-out policy. ][1]
    #
    #   For more information on data privacy, see the [Data Privacy FAQ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://aws.amazon.com/compliance/data-privacy-faq/
    #
    # @option params [Hash<String,String>] :tags
    #   A set of tags (key-value pairs) that you want to attach to the adapter
    #   version.
    #
    # @return [Types::CreateAdapterVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAdapterVersionResponse#adapter_id #adapter_id} => String
    #   * {Types::CreateAdapterVersionResponse#adapter_version #adapter_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_adapter_version({
    #     adapter_id: "AdapterId", # required
    #     client_request_token: "ClientRequestToken",
    #     dataset_config: { # required
    #       manifest_s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     kms_key_id: "KMSKeyId",
    #     output_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName",
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.adapter_id #=> String
    #   resp.adapter_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateAdapterVersion AWS API Documentation
    #
    # @overload create_adapter_version(params = {})
    # @param [Hash] params ({})
    def create_adapter_version(params = {}, options = {})
      req = build_request(:create_adapter_version, params)
      req.send_request(options)
    end

    # Deletes an Amazon Textract adapter. Takes an AdapterId and deletes the
    # adapter specified by the ID.
    #
    # @option params [required, String] :adapter_id
    #   A string containing a unique ID for the adapter to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_adapter({
    #     adapter_id: "AdapterId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteAdapter AWS API Documentation
    #
    # @overload delete_adapter(params = {})
    # @param [Hash] params ({})
    def delete_adapter(params = {}, options = {})
      req = build_request(:delete_adapter, params)
      req.send_request(options)
    end

    # Deletes an Amazon Textract adapter version. Requires that you specify
    # both an AdapterId and a AdapterVersion. Deletes the adapter version
    # specified by the AdapterId and the AdapterVersion.
    #
    # @option params [required, String] :adapter_id
    #   A string containing a unique ID for the adapter version that will be
    #   deleted.
    #
    # @option params [required, String] :adapter_version
    #   Specifies the adapter version to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_adapter_version({
    #     adapter_id: "AdapterId", # required
    #     adapter_version: "AdapterVersion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteAdapterVersion AWS API Documentation
    #
    # @overload delete_adapter_version(params = {})
    # @param [Hash] params ({})
    def delete_adapter_version(params = {}, options = {})
      req = build_request(:delete_adapter_version, params)
      req.send_request(options)
    end

    # Detects text in the input document. Amazon Textract can detect lines
    # of text and the words that make up a line of text. The input document
    # must be in one of the following image formats: JPEG, PNG, PDF, or
    # TIFF. `DetectDocumentText` returns the detected text in an array of
    # Block objects.
    #
    # Each document page has as an associated `Block` of type PAGE. Each
    # PAGE `Block` object is the parent of LINE `Block` objects that
    # represent the lines of detected text on a page. A LINE `Block` object
    # is a parent for each word that makes up the line. Words are
    # represented by `Block` objects of type WORD.
    #
    # `DetectDocumentText` is a synchronous operation. To analyze documents
    # asynchronously, use StartDocumentTextDetection.
    #
    # For more information, see [Document Text Detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html
    #
    # @option params [required, Types::Document] :document
    #   The input document as base64-encoded bytes or an Amazon S3 object. If
    #   you use the AWS CLI to call Amazon Textract operations, you can't
    #   pass image bytes. The document must be an image in JPEG or PNG format.
    #
    #   If you're using an AWS SDK to call Amazon Textract, you might not
    #   need to base64-encode image bytes that are passed using the `Bytes`
    #   field.
    #
    # @return [Types::DetectDocumentTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectDocumentTextResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::DetectDocumentTextResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::DetectDocumentTextResponse#detect_document_text_model_version #detect_document_text_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_document_text({
    #     document: { # required
    #       bytes: "data",
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.blocks[0].confidence #=> Float
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.blocks[0].row_index #=> Integer
    #   resp.blocks[0].column_index #=> Integer
    #   resp.blocks[0].row_span #=> Integer
    #   resp.blocks[0].column_span #=> Integer
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].geometry.rotation_angle #=> Float
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].entity_types #=> Array
    #   resp.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.blocks[0].page #=> Integer
    #   resp.blocks[0].query.text #=> String
    #   resp.blocks[0].query.alias #=> String
    #   resp.blocks[0].query.pages #=> Array
    #   resp.blocks[0].query.pages[0] #=> String
    #   resp.detect_document_text_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DetectDocumentText AWS API Documentation
    #
    # @overload detect_document_text(params = {})
    # @param [Hash] params ({})
    def detect_document_text(params = {}, options = {})
      req = build_request(:detect_document_text, params)
      req.send_request(options)
    end

    # Gets configuration information for an adapter specified by an
    # AdapterId, returning information on AdapterName, Description,
    # CreationTime, AutoUpdate status, and FeatureTypes.
    #
    # @option params [required, String] :adapter_id
    #   A string containing a unique ID for the adapter.
    #
    # @return [Types::GetAdapterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAdapterResponse#adapter_id #adapter_id} => String
    #   * {Types::GetAdapterResponse#adapter_name #adapter_name} => String
    #   * {Types::GetAdapterResponse#creation_time #creation_time} => Time
    #   * {Types::GetAdapterResponse#description #description} => String
    #   * {Types::GetAdapterResponse#feature_types #feature_types} => Array&lt;String&gt;
    #   * {Types::GetAdapterResponse#auto_update #auto_update} => String
    #   * {Types::GetAdapterResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_adapter({
    #     adapter_id: "AdapterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.adapter_id #=> String
    #   resp.adapter_name #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.feature_types #=> Array
    #   resp.feature_types[0] #=> String, one of "TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"
    #   resp.auto_update #=> String, one of "ENABLED", "DISABLED"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetAdapter AWS API Documentation
    #
    # @overload get_adapter(params = {})
    # @param [Hash] params ({})
    def get_adapter(params = {}, options = {})
      req = build_request(:get_adapter, params)
      req.send_request(options)
    end

    # Gets configuration information for the specified adapter version,
    # including: AdapterId, AdapterVersion, FeatureTypes, Status,
    # StatusMessage, DatasetConfig, KMSKeyId, OutputConfig, Tags and
    # EvaluationMetrics.
    #
    # @option params [required, String] :adapter_id
    #   A string specifying a unique ID for the adapter version you want to
    #   retrieve information for.
    #
    # @option params [required, String] :adapter_version
    #   A string specifying the adapter version you want to retrieve
    #   information for.
    #
    # @return [Types::GetAdapterVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAdapterVersionResponse#adapter_id #adapter_id} => String
    #   * {Types::GetAdapterVersionResponse#adapter_version #adapter_version} => String
    #   * {Types::GetAdapterVersionResponse#creation_time #creation_time} => Time
    #   * {Types::GetAdapterVersionResponse#feature_types #feature_types} => Array&lt;String&gt;
    #   * {Types::GetAdapterVersionResponse#status #status} => String
    #   * {Types::GetAdapterVersionResponse#status_message #status_message} => String
    #   * {Types::GetAdapterVersionResponse#dataset_config #dataset_config} => Types::AdapterVersionDatasetConfig
    #   * {Types::GetAdapterVersionResponse#kms_key_id #kms_key_id} => String
    #   * {Types::GetAdapterVersionResponse#output_config #output_config} => Types::OutputConfig
    #   * {Types::GetAdapterVersionResponse#evaluation_metrics #evaluation_metrics} => Array&lt;Types::AdapterVersionEvaluationMetric&gt;
    #   * {Types::GetAdapterVersionResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_adapter_version({
    #     adapter_id: "AdapterId", # required
    #     adapter_version: "AdapterVersion", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.adapter_id #=> String
    #   resp.adapter_version #=> String
    #   resp.creation_time #=> Time
    #   resp.feature_types #=> Array
    #   resp.feature_types[0] #=> String, one of "TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"
    #   resp.status #=> String, one of "ACTIVE", "AT_RISK", "DEPRECATED", "CREATION_ERROR", "CREATION_IN_PROGRESS"
    #   resp.status_message #=> String
    #   resp.dataset_config.manifest_s3_object.bucket #=> String
    #   resp.dataset_config.manifest_s3_object.name #=> String
    #   resp.dataset_config.manifest_s3_object.version #=> String
    #   resp.kms_key_id #=> String
    #   resp.output_config.s3_bucket #=> String
    #   resp.output_config.s3_prefix #=> String
    #   resp.evaluation_metrics #=> Array
    #   resp.evaluation_metrics[0].baseline.f1_score #=> Float
    #   resp.evaluation_metrics[0].baseline.precision #=> Float
    #   resp.evaluation_metrics[0].baseline.recall #=> Float
    #   resp.evaluation_metrics[0].adapter_version.f1_score #=> Float
    #   resp.evaluation_metrics[0].adapter_version.precision #=> Float
    #   resp.evaluation_metrics[0].adapter_version.recall #=> Float
    #   resp.evaluation_metrics[0].feature_type #=> String, one of "TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetAdapterVersion AWS API Documentation
    #
    # @overload get_adapter_version(params = {})
    # @param [Hash] params ({})
    def get_adapter_version(params = {}, options = {})
      req = build_request(:get_adapter_version, params)
      req.send_request(options)
    end

    # Gets the results for an Amazon Textract asynchronous operation that
    # analyzes text in a document.
    #
    # You start asynchronous text analysis by calling StartDocumentAnalysis,
    # which returns a job identifier (`JobId`). When the text analysis
    # operation finishes, Amazon Textract publishes a completion status to
    # the Amazon Simple Notification Service (Amazon SNS) topic that's
    # registered in the initial call to `StartDocumentAnalysis`. To get the
    # results of the text-detection operation, first check that the status
    # value published to the Amazon SNS topic is `SUCCEEDED`. If so, call
    # `GetDocumentAnalysis`, and pass the job identifier (`JobId`) from the
    # initial call to `StartDocumentAnalysis`.
    #
    # `GetDocumentAnalysis` returns an array of Block objects. The following
    # types of information are returned:
    #
    # * Form data (key-value pairs). The related information is returned in
    #   two Block objects, each of type `KEY_VALUE_SET`: a KEY `Block`
    #   object and a VALUE `Block` object. For example, *Name: Ana Silva
    #   Carolina* contains a key and value. *Name:* is the key. *Ana Silva
    #   Carolina* is the value.
    #
    # * Table and table cell data. A TABLE `Block` object contains
    #   information about a detected table. A CELL `Block` object is
    #   returned for each cell in a table.
    #
    # * Lines and words of text. A LINE `Block` object contains one or more
    #   WORD `Block` objects. All lines and words that are detected in the
    #   document are returned (including text that doesn't have a
    #   relationship with the value of the `StartDocumentAnalysis`
    #   `FeatureTypes` input parameter).
    #
    # * Query. A QUERY Block object contains the query text, alias and link
    #   to the associated Query results block object.
    #
    # * Query Results. A QUERY\_RESULT Block object contains the answer to
    #   the query and an ID that connects it to the query asked. This Block
    #   also contains a confidence score.
    #
    # <note markdown="1"> While processing a document with queries, look out for
    # `INVALID_REQUEST_PARAMETERS` output. This indicates that either the
    # per page query limit has been exceeded or that the operation is trying
    # to query a page in the document which doesn’t exist.
    #
    #  </note>
    #
    # Selection elements such as check boxes and option buttons (radio
    # buttons) can be detected in form data and in tables. A
    # SELECTION\_ELEMENT `Block` object contains information about a
    # selection element, including the selection status.
    #
    # Use the `MaxResults` parameter to limit the number of blocks that are
    # returned. If there are more results than specified in `MaxResults`,
    # the value of `NextToken` in the operation response contains a
    # pagination token for getting the next set of results. To get the next
    # page of results, call `GetDocumentAnalysis`, and populate the
    # `NextToken` request parameter with the token value that's returned
    # from the previous call to `GetDocumentAnalysis`.
    #
    # For more information, see [Document Text Analysis][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html
    #
    # @option params [required, String] :job_id
    #   A unique identifier for the text-detection job. The `JobId` is
    #   returned from `StartDocumentAnalysis`. A `JobId` value is only valid
    #   for 7 days.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value that you can specify is 1,000. If you specify a value
    #   greater than 1,000, a maximum of 1,000 results is returned. The
    #   default value is 1,000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more blocks
    #   to retrieve), Amazon Textract returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of blocks.
    #
    # @return [Types::GetDocumentAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentAnalysisResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::GetDocumentAnalysisResponse#job_status #job_status} => String
    #   * {Types::GetDocumentAnalysisResponse#next_token #next_token} => String
    #   * {Types::GetDocumentAnalysisResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::GetDocumentAnalysisResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #   * {Types::GetDocumentAnalysisResponse#status_message #status_message} => String
    #   * {Types::GetDocumentAnalysisResponse#analyze_document_model_version #analyze_document_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_analysis({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"
    #   resp.next_token #=> String
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.blocks[0].confidence #=> Float
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.blocks[0].row_index #=> Integer
    #   resp.blocks[0].column_index #=> Integer
    #   resp.blocks[0].row_span #=> Integer
    #   resp.blocks[0].column_span #=> Integer
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].geometry.rotation_angle #=> Float
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].entity_types #=> Array
    #   resp.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.blocks[0].page #=> Integer
    #   resp.blocks[0].query.text #=> String
    #   resp.blocks[0].query.alias #=> String
    #   resp.blocks[0].query.pages #=> Array
    #   resp.blocks[0].query.pages[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].error_code #=> String
    #   resp.warnings[0].pages #=> Array
    #   resp.warnings[0].pages[0] #=> Integer
    #   resp.status_message #=> String
    #   resp.analyze_document_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentAnalysis AWS API Documentation
    #
    # @overload get_document_analysis(params = {})
    # @param [Hash] params ({})
    def get_document_analysis(params = {}, options = {})
      req = build_request(:get_document_analysis, params)
      req.send_request(options)
    end

    # Gets the results for an Amazon Textract asynchronous operation that
    # detects text in a document. Amazon Textract can detect lines of text
    # and the words that make up a line of text.
    #
    # You start asynchronous text detection by calling
    # StartDocumentTextDetection, which returns a job identifier (`JobId`).
    # When the text detection operation finishes, Amazon Textract publishes
    # a completion status to the Amazon Simple Notification Service (Amazon
    # SNS) topic that's registered in the initial call to
    # `StartDocumentTextDetection`. To get the results of the text-detection
    # operation, first check that the status value published to the Amazon
    # SNS topic is `SUCCEEDED`. If so, call `GetDocumentTextDetection`, and
    # pass the job identifier (`JobId`) from the initial call to
    # `StartDocumentTextDetection`.
    #
    # `GetDocumentTextDetection` returns an array of Block objects.
    #
    # Each document page has as an associated `Block` of type PAGE. Each
    # PAGE `Block` object is the parent of LINE `Block` objects that
    # represent the lines of detected text on a page. A LINE `Block` object
    # is a parent for each word that makes up the line. Words are
    # represented by `Block` objects of type WORD.
    #
    # Use the MaxResults parameter to limit the number of blocks that are
    # returned. If there are more results than specified in `MaxResults`,
    # the value of `NextToken` in the operation response contains a
    # pagination token for getting the next set of results. To get the next
    # page of results, call `GetDocumentTextDetection`, and populate the
    # `NextToken` request parameter with the token value that's returned
    # from the previous call to `GetDocumentTextDetection`.
    #
    # For more information, see [Document Text Detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html
    #
    # @option params [required, String] :job_id
    #   A unique identifier for the text detection job. The `JobId` is
    #   returned from `StartDocumentTextDetection`. A `JobId` value is only
    #   valid for 7 days.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 1,000. If you specify a value greater
    #   than 1,000, a maximum of 1,000 results is returned. The default value
    #   is 1,000.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more blocks
    #   to retrieve), Amazon Textract returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of blocks.
    #
    # @return [Types::GetDocumentTextDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentTextDetectionResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::GetDocumentTextDetectionResponse#job_status #job_status} => String
    #   * {Types::GetDocumentTextDetectionResponse#next_token #next_token} => String
    #   * {Types::GetDocumentTextDetectionResponse#blocks #blocks} => Array&lt;Types::Block&gt;
    #   * {Types::GetDocumentTextDetectionResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #   * {Types::GetDocumentTextDetectionResponse#status_message #status_message} => String
    #   * {Types::GetDocumentTextDetectionResponse#detect_document_text_model_version #detect_document_text_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_text_detection({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"
    #   resp.next_token #=> String
    #   resp.blocks #=> Array
    #   resp.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.blocks[0].confidence #=> Float
    #   resp.blocks[0].text #=> String
    #   resp.blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.blocks[0].row_index #=> Integer
    #   resp.blocks[0].column_index #=> Integer
    #   resp.blocks[0].row_span #=> Integer
    #   resp.blocks[0].column_span #=> Integer
    #   resp.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.blocks[0].geometry.polygon #=> Array
    #   resp.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.blocks[0].geometry.rotation_angle #=> Float
    #   resp.blocks[0].id #=> String
    #   resp.blocks[0].relationships #=> Array
    #   resp.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.blocks[0].relationships[0].ids #=> Array
    #   resp.blocks[0].relationships[0].ids[0] #=> String
    #   resp.blocks[0].entity_types #=> Array
    #   resp.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.blocks[0].page #=> Integer
    #   resp.blocks[0].query.text #=> String
    #   resp.blocks[0].query.alias #=> String
    #   resp.blocks[0].query.pages #=> Array
    #   resp.blocks[0].query.pages[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].error_code #=> String
    #   resp.warnings[0].pages #=> Array
    #   resp.warnings[0].pages[0] #=> Integer
    #   resp.status_message #=> String
    #   resp.detect_document_text_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentTextDetection AWS API Documentation
    #
    # @overload get_document_text_detection(params = {})
    # @param [Hash] params ({})
    def get_document_text_detection(params = {}, options = {})
      req = build_request(:get_document_text_detection, params)
      req.send_request(options)
    end

    # Gets the results for an Amazon Textract asynchronous operation that
    # analyzes invoices and receipts. Amazon Textract finds contact
    # information, items purchased, and vendor name, from input invoices and
    # receipts.
    #
    # You start asynchronous invoice/receipt analysis by calling
    # StartExpenseAnalysis, which returns a job identifier (`JobId`). Upon
    # completion of the invoice/receipt analysis, Amazon Textract publishes
    # the completion status to the Amazon Simple Notification Service
    # (Amazon SNS) topic. This topic must be registered in the initial call
    # to `StartExpenseAnalysis`. To get the results of the invoice/receipt
    # analysis operation, first ensure that the status value published to
    # the Amazon SNS topic is `SUCCEEDED`. If so, call `GetExpenseAnalysis`,
    # and pass the job identifier (`JobId`) from the initial call to
    # `StartExpenseAnalysis`.
    #
    # Use the MaxResults parameter to limit the number of blocks that are
    # returned. If there are more results than specified in `MaxResults`,
    # the value of `NextToken` in the operation response contains a
    # pagination token for getting the next set of results. To get the next
    # page of results, call `GetExpenseAnalysis`, and populate the
    # `NextToken` request parameter with the token value that's returned
    # from the previous call to `GetExpenseAnalysis`.
    #
    # For more information, see [Analyzing Invoices and Receipts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html
    #
    # @option params [required, String] :job_id
    #   A unique identifier for the text detection job. The `JobId` is
    #   returned from `StartExpenseAnalysis`. A `JobId` value is only valid
    #   for 7 days.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 20. If you specify a value greater
    #   than 20, a maximum of 20 results is returned. The default value is 20.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete (because there are more blocks
    #   to retrieve), Amazon Textract returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of blocks.
    #
    # @return [Types::GetExpenseAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExpenseAnalysisResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::GetExpenseAnalysisResponse#job_status #job_status} => String
    #   * {Types::GetExpenseAnalysisResponse#next_token #next_token} => String
    #   * {Types::GetExpenseAnalysisResponse#expense_documents #expense_documents} => Array&lt;Types::ExpenseDocument&gt;
    #   * {Types::GetExpenseAnalysisResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #   * {Types::GetExpenseAnalysisResponse#status_message #status_message} => String
    #   * {Types::GetExpenseAnalysisResponse#analyze_expense_model_version #analyze_expense_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_expense_analysis({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"
    #   resp.next_token #=> String
    #   resp.expense_documents #=> Array
    #   resp.expense_documents[0].expense_index #=> Integer
    #   resp.expense_documents[0].summary_fields #=> Array
    #   resp.expense_documents[0].summary_fields[0].type.text #=> String
    #   resp.expense_documents[0].summary_fields[0].type.confidence #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.text #=> String
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.polygon #=> Array
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].summary_fields[0].label_detection.confidence #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.text #=> String
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.polygon #=> Array
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].summary_fields[0].value_detection.confidence #=> Float
    #   resp.expense_documents[0].summary_fields[0].page_number #=> Integer
    #   resp.expense_documents[0].summary_fields[0].currency.code #=> String
    #   resp.expense_documents[0].summary_fields[0].currency.confidence #=> Float
    #   resp.expense_documents[0].summary_fields[0].group_properties #=> Array
    #   resp.expense_documents[0].summary_fields[0].group_properties[0].types #=> Array
    #   resp.expense_documents[0].summary_fields[0].group_properties[0].types[0] #=> String
    #   resp.expense_documents[0].summary_fields[0].group_properties[0].id #=> String
    #   resp.expense_documents[0].line_item_groups #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_item_group_index #=> Integer
    #   resp.expense_documents[0].line_item_groups[0].line_items #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].type.text #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].type.confidence #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.text #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.confidence #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.text #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.confidence #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].page_number #=> Integer
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].currency.code #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].currency.confidence #=> Float
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].types #=> Array
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].types[0] #=> String
    #   resp.expense_documents[0].line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].id #=> String
    #   resp.expense_documents[0].blocks #=> Array
    #   resp.expense_documents[0].blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.expense_documents[0].blocks[0].confidence #=> Float
    #   resp.expense_documents[0].blocks[0].text #=> String
    #   resp.expense_documents[0].blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.expense_documents[0].blocks[0].row_index #=> Integer
    #   resp.expense_documents[0].blocks[0].column_index #=> Integer
    #   resp.expense_documents[0].blocks[0].row_span #=> Integer
    #   resp.expense_documents[0].blocks[0].column_span #=> Integer
    #   resp.expense_documents[0].blocks[0].geometry.bounding_box.width #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.bounding_box.height #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.bounding_box.left #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.bounding_box.top #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.polygon #=> Array
    #   resp.expense_documents[0].blocks[0].geometry.polygon[0].x #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.polygon[0].y #=> Float
    #   resp.expense_documents[0].blocks[0].geometry.rotation_angle #=> Float
    #   resp.expense_documents[0].blocks[0].id #=> String
    #   resp.expense_documents[0].blocks[0].relationships #=> Array
    #   resp.expense_documents[0].blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.expense_documents[0].blocks[0].relationships[0].ids #=> Array
    #   resp.expense_documents[0].blocks[0].relationships[0].ids[0] #=> String
    #   resp.expense_documents[0].blocks[0].entity_types #=> Array
    #   resp.expense_documents[0].blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.expense_documents[0].blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.expense_documents[0].blocks[0].page #=> Integer
    #   resp.expense_documents[0].blocks[0].query.text #=> String
    #   resp.expense_documents[0].blocks[0].query.alias #=> String
    #   resp.expense_documents[0].blocks[0].query.pages #=> Array
    #   resp.expense_documents[0].blocks[0].query.pages[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].error_code #=> String
    #   resp.warnings[0].pages #=> Array
    #   resp.warnings[0].pages[0] #=> Integer
    #   resp.status_message #=> String
    #   resp.analyze_expense_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetExpenseAnalysis AWS API Documentation
    #
    # @overload get_expense_analysis(params = {})
    # @param [Hash] params ({})
    def get_expense_analysis(params = {}, options = {})
      req = build_request(:get_expense_analysis, params)
      req.send_request(options)
    end

    # Gets the results for an Amazon Textract asynchronous operation that
    # analyzes text in a lending document.
    #
    # You start asynchronous text analysis by calling
    # `StartLendingAnalysis`, which returns a job identifier (`JobId`). When
    # the text analysis operation finishes, Amazon Textract publishes a
    # completion status to the Amazon Simple Notification Service (Amazon
    # SNS) topic that's registered in the initial call to
    # `StartLendingAnalysis`.
    #
    # To get the results of the text analysis operation, first check that
    # the status value published to the Amazon SNS topic is SUCCEEDED. If
    # so, call GetLendingAnalysis, and pass the job identifier (`JobId`)
    # from the initial call to `StartLendingAnalysis`.
    #
    # @option params [required, String] :job_id
    #   A unique identifier for the lending or text-detection job. The `JobId`
    #   is returned from `StartLendingAnalysis`. A `JobId` value is only valid
    #   for 7 days.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value that you can specify is 30. If you specify a value
    #   greater than 30, a maximum of 30 results is returned. The default
    #   value is 30.
    #
    # @option params [String] :next_token
    #   If the previous response was incomplete, Amazon Textract returns a
    #   pagination token in the response. You can use this pagination token to
    #   retrieve the next set of lending results.
    #
    # @return [Types::GetLendingAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLendingAnalysisResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::GetLendingAnalysisResponse#job_status #job_status} => String
    #   * {Types::GetLendingAnalysisResponse#next_token #next_token} => String
    #   * {Types::GetLendingAnalysisResponse#results #results} => Array&lt;Types::LendingResult&gt;
    #   * {Types::GetLendingAnalysisResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #   * {Types::GetLendingAnalysisResponse#status_message #status_message} => String
    #   * {Types::GetLendingAnalysisResponse#analyze_lending_model_version #analyze_lending_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lending_analysis({
    #     job_id: "JobId", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"
    #   resp.next_token #=> String
    #   resp.results #=> Array
    #   resp.results[0].page #=> Integer
    #   resp.results[0].page_classification.page_type #=> Array
    #   resp.results[0].page_classification.page_type[0].value #=> String
    #   resp.results[0].page_classification.page_type[0].confidence #=> Float
    #   resp.results[0].page_classification.page_number #=> Array
    #   resp.results[0].page_classification.page_number[0].value #=> String
    #   resp.results[0].page_classification.page_number[0].confidence #=> Float
    #   resp.results[0].extractions #=> Array
    #   resp.results[0].extractions[0].lending_document.lending_fields #=> Array
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].type #=> String
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.text #=> String
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.geometry.polygon #=> Array
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].key_detection.confidence #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections #=> Array
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].text #=> String
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].geometry.polygon #=> Array
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].lending_document.lending_fields[0].value_detections[0].confidence #=> Float
    #   resp.results[0].extractions[0].lending_document.signature_detections #=> Array
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].confidence #=> Float
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].geometry.polygon #=> Array
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].lending_document.signature_detections[0].geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].expense_document.expense_index #=> Integer
    #   resp.results[0].extractions[0].expense_document.summary_fields #=> Array
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].type.text #=> String
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].type.confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.text #=> String
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.geometry.polygon #=> Array
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].label_detection.confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.text #=> String
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.geometry.polygon #=> Array
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].value_detection.confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].page_number #=> Integer
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].currency.code #=> String
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].currency.confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].group_properties #=> Array
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].group_properties[0].types #=> Array
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].group_properties[0].types[0] #=> String
    #   resp.results[0].extractions[0].expense_document.summary_fields[0].group_properties[0].id #=> String
    #   resp.results[0].extractions[0].expense_document.line_item_groups #=> Array
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_item_group_index #=> Integer
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items #=> Array
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields #=> Array
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].type.text #=> String
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].type.confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.text #=> String
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon #=> Array
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].label_detection.confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.text #=> String
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon #=> Array
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].value_detection.confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].page_number #=> Integer
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].currency.code #=> String
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].currency.confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties #=> Array
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].types #=> Array
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].types[0] #=> String
    #   resp.results[0].extractions[0].expense_document.line_item_groups[0].line_items[0].line_item_expense_fields[0].group_properties[0].id #=> String
    #   resp.results[0].extractions[0].expense_document.blocks #=> Array
    #   resp.results[0].extractions[0].expense_document.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.results[0].extractions[0].expense_document.blocks[0].confidence #=> Float
    #   resp.results[0].extractions[0].expense_document.blocks[0].text #=> String
    #   resp.results[0].extractions[0].expense_document.blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.results[0].extractions[0].expense_document.blocks[0].row_index #=> Integer
    #   resp.results[0].extractions[0].expense_document.blocks[0].column_index #=> Integer
    #   resp.results[0].extractions[0].expense_document.blocks[0].row_span #=> Integer
    #   resp.results[0].extractions[0].expense_document.blocks[0].column_span #=> Integer
    #   resp.results[0].extractions[0].expense_document.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].expense_document.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].expense_document.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].expense_document.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].expense_document.blocks[0].geometry.polygon #=> Array
    #   resp.results[0].extractions[0].expense_document.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].expense_document.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].expense_document.blocks[0].geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].expense_document.blocks[0].id #=> String
    #   resp.results[0].extractions[0].expense_document.blocks[0].relationships #=> Array
    #   resp.results[0].extractions[0].expense_document.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.results[0].extractions[0].expense_document.blocks[0].relationships[0].ids #=> Array
    #   resp.results[0].extractions[0].expense_document.blocks[0].relationships[0].ids[0] #=> String
    #   resp.results[0].extractions[0].expense_document.blocks[0].entity_types #=> Array
    #   resp.results[0].extractions[0].expense_document.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.results[0].extractions[0].expense_document.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.results[0].extractions[0].expense_document.blocks[0].page #=> Integer
    #   resp.results[0].extractions[0].expense_document.blocks[0].query.text #=> String
    #   resp.results[0].extractions[0].expense_document.blocks[0].query.alias #=> String
    #   resp.results[0].extractions[0].expense_document.blocks[0].query.pages #=> Array
    #   resp.results[0].extractions[0].expense_document.blocks[0].query.pages[0] #=> String
    #   resp.results[0].extractions[0].identity_document.document_index #=> Integer
    #   resp.results[0].extractions[0].identity_document.identity_document_fields #=> Array
    #   resp.results[0].extractions[0].identity_document.identity_document_fields[0].type.text #=> String
    #   resp.results[0].extractions[0].identity_document.identity_document_fields[0].type.normalized_value.value #=> String
    #   resp.results[0].extractions[0].identity_document.identity_document_fields[0].type.normalized_value.value_type #=> String, one of "DATE"
    #   resp.results[0].extractions[0].identity_document.identity_document_fields[0].type.confidence #=> Float
    #   resp.results[0].extractions[0].identity_document.identity_document_fields[0].value_detection.text #=> String
    #   resp.results[0].extractions[0].identity_document.identity_document_fields[0].value_detection.normalized_value.value #=> String
    #   resp.results[0].extractions[0].identity_document.identity_document_fields[0].value_detection.normalized_value.value_type #=> String, one of "DATE"
    #   resp.results[0].extractions[0].identity_document.identity_document_fields[0].value_detection.confidence #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks #=> Array
    #   resp.results[0].extractions[0].identity_document.blocks[0].block_type #=> String, one of "KEY_VALUE_SET", "PAGE", "LINE", "WORD", "TABLE", "CELL", "SELECTION_ELEMENT", "MERGED_CELL", "TITLE", "QUERY", "QUERY_RESULT", "SIGNATURE", "TABLE_TITLE", "TABLE_FOOTER", "LAYOUT_TEXT", "LAYOUT_TITLE", "LAYOUT_HEADER", "LAYOUT_FOOTER", "LAYOUT_SECTION_HEADER", "LAYOUT_PAGE_NUMBER", "LAYOUT_LIST", "LAYOUT_FIGURE", "LAYOUT_TABLE", "LAYOUT_KEY_VALUE"
    #   resp.results[0].extractions[0].identity_document.blocks[0].confidence #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks[0].text #=> String
    #   resp.results[0].extractions[0].identity_document.blocks[0].text_type #=> String, one of "HANDWRITING", "PRINTED"
    #   resp.results[0].extractions[0].identity_document.blocks[0].row_index #=> Integer
    #   resp.results[0].extractions[0].identity_document.blocks[0].column_index #=> Integer
    #   resp.results[0].extractions[0].identity_document.blocks[0].row_span #=> Integer
    #   resp.results[0].extractions[0].identity_document.blocks[0].column_span #=> Integer
    #   resp.results[0].extractions[0].identity_document.blocks[0].geometry.bounding_box.width #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks[0].geometry.bounding_box.height #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks[0].geometry.bounding_box.left #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks[0].geometry.bounding_box.top #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks[0].geometry.polygon #=> Array
    #   resp.results[0].extractions[0].identity_document.blocks[0].geometry.polygon[0].x #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks[0].geometry.polygon[0].y #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks[0].geometry.rotation_angle #=> Float
    #   resp.results[0].extractions[0].identity_document.blocks[0].id #=> String
    #   resp.results[0].extractions[0].identity_document.blocks[0].relationships #=> Array
    #   resp.results[0].extractions[0].identity_document.blocks[0].relationships[0].type #=> String, one of "VALUE", "CHILD", "COMPLEX_FEATURES", "MERGED_CELL", "TITLE", "ANSWER", "TABLE", "TABLE_TITLE", "TABLE_FOOTER"
    #   resp.results[0].extractions[0].identity_document.blocks[0].relationships[0].ids #=> Array
    #   resp.results[0].extractions[0].identity_document.blocks[0].relationships[0].ids[0] #=> String
    #   resp.results[0].extractions[0].identity_document.blocks[0].entity_types #=> Array
    #   resp.results[0].extractions[0].identity_document.blocks[0].entity_types[0] #=> String, one of "KEY", "VALUE", "COLUMN_HEADER", "TABLE_TITLE", "TABLE_FOOTER", "TABLE_SECTION_TITLE", "TABLE_SUMMARY", "STRUCTURED_TABLE", "SEMI_STRUCTURED_TABLE"
    #   resp.results[0].extractions[0].identity_document.blocks[0].selection_status #=> String, one of "SELECTED", "NOT_SELECTED"
    #   resp.results[0].extractions[0].identity_document.blocks[0].page #=> Integer
    #   resp.results[0].extractions[0].identity_document.blocks[0].query.text #=> String
    #   resp.results[0].extractions[0].identity_document.blocks[0].query.alias #=> String
    #   resp.results[0].extractions[0].identity_document.blocks[0].query.pages #=> Array
    #   resp.results[0].extractions[0].identity_document.blocks[0].query.pages[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].error_code #=> String
    #   resp.warnings[0].pages #=> Array
    #   resp.warnings[0].pages[0] #=> Integer
    #   resp.status_message #=> String
    #   resp.analyze_lending_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetLendingAnalysis AWS API Documentation
    #
    # @overload get_lending_analysis(params = {})
    # @param [Hash] params ({})
    def get_lending_analysis(params = {}, options = {})
      req = build_request(:get_lending_analysis, params)
      req.send_request(options)
    end

    # Gets summarized results for the `StartLendingAnalysis` operation,
    # which analyzes text in a lending document. The returned summary
    # consists of information about documents grouped together by a common
    # document type. Information like detected signatures, page numbers, and
    # split documents is returned with respect to the type of grouped
    # document.
    #
    # You start asynchronous text analysis by calling
    # `StartLendingAnalysis`, which returns a job identifier (`JobId`). When
    # the text analysis operation finishes, Amazon Textract publishes a
    # completion status to the Amazon Simple Notification Service (Amazon
    # SNS) topic that's registered in the initial call to
    # `StartLendingAnalysis`.
    #
    # To get the results of the text analysis operation, first check that
    # the status value published to the Amazon SNS topic is SUCCEEDED. If
    # so, call `GetLendingAnalysisSummary`, and pass the job identifier
    # (`JobId`) from the initial call to `StartLendingAnalysis`.
    #
    # @option params [required, String] :job_id
    #   A unique identifier for the lending or text-detection job. The `JobId`
    #   is returned from StartLendingAnalysis. A `JobId` value is only valid
    #   for 7 days.
    #
    # @return [Types::GetLendingAnalysisSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLendingAnalysisSummaryResponse#document_metadata #document_metadata} => Types::DocumentMetadata
    #   * {Types::GetLendingAnalysisSummaryResponse#job_status #job_status} => String
    #   * {Types::GetLendingAnalysisSummaryResponse#summary #summary} => Types::LendingSummary
    #   * {Types::GetLendingAnalysisSummaryResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #   * {Types::GetLendingAnalysisSummaryResponse#status_message #status_message} => String
    #   * {Types::GetLendingAnalysisSummaryResponse#analyze_lending_model_version #analyze_lending_model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lending_analysis_summary({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document_metadata.pages #=> Integer
    #   resp.job_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED", "PARTIAL_SUCCESS"
    #   resp.summary.document_groups #=> Array
    #   resp.summary.document_groups[0].type #=> String
    #   resp.summary.document_groups[0].split_documents #=> Array
    #   resp.summary.document_groups[0].split_documents[0].index #=> Integer
    #   resp.summary.document_groups[0].split_documents[0].pages #=> Array
    #   resp.summary.document_groups[0].split_documents[0].pages[0] #=> Integer
    #   resp.summary.document_groups[0].detected_signatures #=> Array
    #   resp.summary.document_groups[0].detected_signatures[0].page #=> Integer
    #   resp.summary.document_groups[0].undetected_signatures #=> Array
    #   resp.summary.document_groups[0].undetected_signatures[0].page #=> Integer
    #   resp.summary.undetected_document_types #=> Array
    #   resp.summary.undetected_document_types[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].error_code #=> String
    #   resp.warnings[0].pages #=> Array
    #   resp.warnings[0].pages[0] #=> Integer
    #   resp.status_message #=> String
    #   resp.analyze_lending_model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetLendingAnalysisSummary AWS API Documentation
    #
    # @overload get_lending_analysis_summary(params = {})
    # @param [Hash] params ({})
    def get_lending_analysis_summary(params = {}, options = {})
      req = build_request(:get_lending_analysis_summary, params)
      req.send_request(options)
    end

    # List all version of an adapter that meet the specified filtration
    # criteria.
    #
    # @option params [String] :adapter_id
    #   A string containing a unique ID for the adapter to match for when
    #   listing adapter versions.
    #
    # @option params [Time,DateTime,Date,Integer,String] :after_creation_time
    #   Specifies the lower bound for the ListAdapterVersions operation.
    #   Ensures ListAdapterVersions returns only adapter versions created
    #   after the specified creation time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :before_creation_time
    #   Specifies the upper bound for the ListAdapterVersions operation.
    #   Ensures ListAdapterVersions returns only adapter versions created
    #   after the specified creation time.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return when listing adapter versions.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return when listing adapter
    #   versions.
    #
    # @return [Types::ListAdapterVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAdapterVersionsResponse#adapter_versions #adapter_versions} => Array&lt;Types::AdapterVersionOverview&gt;
    #   * {Types::ListAdapterVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_adapter_versions({
    #     adapter_id: "AdapterId",
    #     after_creation_time: Time.now,
    #     before_creation_time: Time.now,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.adapter_versions #=> Array
    #   resp.adapter_versions[0].adapter_id #=> String
    #   resp.adapter_versions[0].adapter_version #=> String
    #   resp.adapter_versions[0].creation_time #=> Time
    #   resp.adapter_versions[0].feature_types #=> Array
    #   resp.adapter_versions[0].feature_types[0] #=> String, one of "TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"
    #   resp.adapter_versions[0].status #=> String, one of "ACTIVE", "AT_RISK", "DEPRECATED", "CREATION_ERROR", "CREATION_IN_PROGRESS"
    #   resp.adapter_versions[0].status_message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListAdapterVersions AWS API Documentation
    #
    # @overload list_adapter_versions(params = {})
    # @param [Hash] params ({})
    def list_adapter_versions(params = {}, options = {})
      req = build_request(:list_adapter_versions, params)
      req.send_request(options)
    end

    # Lists all adapters that match the specified filtration criteria.
    #
    # @option params [Time,DateTime,Date,Integer,String] :after_creation_time
    #   Specifies the lower bound for the ListAdapters operation. Ensures
    #   ListAdapters returns only adapters created after the specified
    #   creation time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :before_creation_time
    #   Specifies the upper bound for the ListAdapters operation. Ensures
    #   ListAdapters returns only adapters created before the specified
    #   creation time.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return when listing adapters.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return when listing adapters.
    #
    # @return [Types::ListAdaptersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAdaptersResponse#adapters #adapters} => Array&lt;Types::AdapterOverview&gt;
    #   * {Types::ListAdaptersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_adapters({
    #     after_creation_time: Time.now,
    #     before_creation_time: Time.now,
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.adapters #=> Array
    #   resp.adapters[0].adapter_id #=> String
    #   resp.adapters[0].adapter_name #=> String
    #   resp.adapters[0].creation_time #=> Time
    #   resp.adapters[0].feature_types #=> Array
    #   resp.adapters[0].feature_types[0] #=> String, one of "TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListAdapters AWS API Documentation
    #
    # @overload list_adapters(params = {})
    # @param [Hash] params ({})
    def list_adapters(params = {}, options = {})
      req = build_request(:list_adapters, params)
      req.send_request(options)
    end

    # Lists all tags for an Amazon Textract resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that specifies the resource to list
    #   tags for.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "AmazonResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Starts the asynchronous analysis of an input document for
    # relationships between detected items such as key-value pairs, tables,
    # and selection elements.
    #
    # `StartDocumentAnalysis` can analyze text in documents that are in
    # JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon
    # S3 bucket. Use DocumentLocation to specify the bucket name and file
    # name of the document.
    #
    # `StartDocumentAnalysis` returns a job identifier (`JobId`) that you
    # use to get the results of the operation. When text analysis is
    # finished, Amazon Textract publishes a completion status to the Amazon
    # Simple Notification Service (Amazon SNS) topic that you specify in
    # `NotificationChannel`. To get the results of the text analysis
    # operation, first check that the status value published to the Amazon
    # SNS topic is `SUCCEEDED`. If so, call GetDocumentAnalysis, and pass
    # the job identifier (`JobId`) from the initial call to
    # `StartDocumentAnalysis`.
    #
    # For more information, see [Document Text Analysis][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html
    #
    # @option params [required, Types::DocumentLocation] :document_location
    #   The location of the document to be processed.
    #
    # @option params [required, Array<String>] :feature_types
    #   A list of the types of analysis to perform. Add TABLES to the list to
    #   return information about the tables that are detected in the input
    #   document. Add FORMS to return detected form data. To perform both
    #   types of analysis, add TABLES and FORMS to `FeatureTypes`. All lines
    #   and words detected in the document are included in the response
    #   (including text that isn't related to the value of `FeatureTypes`).
    #
    # @option params [String] :client_request_token
    #   The idempotent token that you use to identify the start request. If
    #   you use the same token with multiple `StartDocumentAnalysis` requests,
    #   the same `JobId` is returned. Use `ClientRequestToken` to prevent the
    #   same job from being accidentally started more than once. For more
    #   information, see [Calling Amazon Textract Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-async.html
    #
    # @option params [String] :job_tag
    #   An identifier that you specify that's included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Textract to publish the
    #   completion status of the operation to.
    #
    # @option params [Types::OutputConfig] :output_config
    #   Sets if the output will go to a customer defined bucket. By default,
    #   Amazon Textract will save the results internally to be accessed by the
    #   GetDocumentAnalysis operation.
    #
    # @option params [String] :kms_key_id
    #   The KMS key used to encrypt the inference results. This can be in
    #   either Key ID or Key Alias format. When a KMS key is provided, the KMS
    #   key will be used for server-side encryption of the objects in the
    #   customer bucket. When this parameter is not enabled, the result will
    #   be encrypted server side,using SSE-S3.
    #
    # @option params [Types::QueriesConfig] :queries_config
    #
    # @option params [Types::AdaptersConfig] :adapters_config
    #   Specifies the adapter to be used when analyzing a document.
    #
    # @return [Types::StartDocumentAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDocumentAnalysisResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_analysis({
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     feature_types: ["TABLES"], # required, accepts TABLES, FORMS, QUERIES, SIGNATURES, LAYOUT
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName",
    #     },
    #     kms_key_id: "KMSKeyId",
    #     queries_config: {
    #       queries: [ # required
    #         {
    #           text: "QueryInput", # required
    #           alias: "QueryInput",
    #           pages: ["QueryPage"],
    #         },
    #       ],
    #     },
    #     adapters_config: {
    #       adapters: [ # required
    #         {
    #           adapter_id: "AdapterId", # required
    #           pages: ["AdapterPage"],
    #           version: "AdapterVersion", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentAnalysis AWS API Documentation
    #
    # @overload start_document_analysis(params = {})
    # @param [Hash] params ({})
    def start_document_analysis(params = {}, options = {})
      req = build_request(:start_document_analysis, params)
      req.send_request(options)
    end

    # Starts the asynchronous detection of text in a document. Amazon
    # Textract can detect lines of text and the words that make up a line of
    # text.
    #
    # `StartDocumentTextDetection` can analyze text in documents that are in
    # JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon
    # S3 bucket. Use DocumentLocation to specify the bucket name and file
    # name of the document.
    #
    # `StartDocumentTextDetection` returns a job identifier (`JobId`) that
    # you use to get the results of the operation. When text detection is
    # finished, Amazon Textract publishes a completion status to the Amazon
    # Simple Notification Service (Amazon SNS) topic that you specify in
    # `NotificationChannel`. To get the results of the text detection
    # operation, first check that the status value published to the Amazon
    # SNS topic is `SUCCEEDED`. If so, call GetDocumentTextDetection, and
    # pass the job identifier (`JobId`) from the initial call to
    # `StartDocumentTextDetection`.
    #
    # For more information, see [Document Text Detection][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html
    #
    # @option params [required, Types::DocumentLocation] :document_location
    #   The location of the document to be processed.
    #
    # @option params [String] :client_request_token
    #   The idempotent token that's used to identify the start request. If
    #   you use the same token with multiple `StartDocumentTextDetection`
    #   requests, the same `JobId` is returned. Use `ClientRequestToken` to
    #   prevent the same job from being accidentally started more than once.
    #   For more information, see [Calling Amazon Textract Asynchronous
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-async.html
    #
    # @option params [String] :job_tag
    #   An identifier that you specify that's included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Textract to publish the
    #   completion status of the operation to.
    #
    # @option params [Types::OutputConfig] :output_config
    #   Sets if the output will go to a customer defined bucket. By default
    #   Amazon Textract will save the results internally to be accessed with
    #   the GetDocumentTextDetection operation.
    #
    # @option params [String] :kms_key_id
    #   The KMS key used to encrypt the inference results. This can be in
    #   either Key ID or Key Alias format. When a KMS key is provided, the KMS
    #   key will be used for server-side encryption of the objects in the
    #   customer bucket. When this parameter is not enabled, the result will
    #   be encrypted server side,using SSE-S3.
    #
    # @return [Types::StartDocumentTextDetectionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartDocumentTextDetectionResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_document_text_detection({
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName",
    #     },
    #     kms_key_id: "KMSKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentTextDetection AWS API Documentation
    #
    # @overload start_document_text_detection(params = {})
    # @param [Hash] params ({})
    def start_document_text_detection(params = {}, options = {})
      req = build_request(:start_document_text_detection, params)
      req.send_request(options)
    end

    # Starts the asynchronous analysis of invoices or receipts for data like
    # contact information, items purchased, and vendor names.
    #
    # `StartExpenseAnalysis` can analyze text in documents that are in JPEG,
    # PNG, and PDF format. The documents must be stored in an Amazon S3
    # bucket. Use the DocumentLocation parameter to specify the name of your
    # S3 bucket and the name of the document in that bucket.
    #
    # `StartExpenseAnalysis` returns a job identifier (`JobId`) that you
    # will provide to `GetExpenseAnalysis` to retrieve the results of the
    # operation. When the analysis of the input invoices/receipts is
    # finished, Amazon Textract publishes a completion status to the Amazon
    # Simple Notification Service (Amazon SNS) topic that you provide to the
    # `NotificationChannel`. To obtain the results of the invoice and
    # receipt analysis operation, ensure that the status value published to
    # the Amazon SNS topic is `SUCCEEDED`. If so, call GetExpenseAnalysis,
    # and pass the job identifier (`JobId`) that was returned by your call
    # to `StartExpenseAnalysis`.
    #
    # For more information, see [Analyzing Invoices and Receipts][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html
    #
    # @option params [required, Types::DocumentLocation] :document_location
    #   The location of the document to be processed.
    #
    # @option params [String] :client_request_token
    #   The idempotent token that's used to identify the start request. If
    #   you use the same token with multiple `StartDocumentTextDetection`
    #   requests, the same `JobId` is returned. Use `ClientRequestToken` to
    #   prevent the same job from being accidentally started more than once.
    #   For more information, see [Calling Amazon Textract Asynchronous
    #   Operations][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-async.html
    #
    # @option params [String] :job_tag
    #   An identifier you specify that's included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Textract to publish the
    #   completion status of the operation to.
    #
    # @option params [Types::OutputConfig] :output_config
    #   Sets if the output will go to a customer defined bucket. By default,
    #   Amazon Textract will save the results internally to be accessed by the
    #   `GetExpenseAnalysis` operation.
    #
    # @option params [String] :kms_key_id
    #   The KMS key used to encrypt the inference results. This can be in
    #   either Key ID or Key Alias format. When a KMS key is provided, the KMS
    #   key will be used for server-side encryption of the objects in the
    #   customer bucket. When this parameter is not enabled, the result will
    #   be encrypted server side,using SSE-S3.
    #
    # @return [Types::StartExpenseAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartExpenseAnalysisResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_expense_analysis({
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName",
    #     },
    #     kms_key_id: "KMSKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartExpenseAnalysis AWS API Documentation
    #
    # @overload start_expense_analysis(params = {})
    # @param [Hash] params ({})
    def start_expense_analysis(params = {}, options = {})
      req = build_request(:start_expense_analysis, params)
      req.send_request(options)
    end

    # Starts the classification and analysis of an input document.
    # `StartLendingAnalysis` initiates the classification and analysis of a
    # packet of lending documents. `StartLendingAnalysis` operates on a
    # document file located in an Amazon S3 bucket.
    #
    # `StartLendingAnalysis` can analyze text in documents that are in one
    # of the following formats: JPEG, PNG, TIFF, PDF. Use `DocumentLocation`
    # to specify the bucket name and the file name of the document.
    #
    # `StartLendingAnalysis` returns a job identifier (`JobId`) that you use
    # to get the results of the operation. When the text analysis is
    # finished, Amazon Textract publishes a completion status to the Amazon
    # Simple Notification Service (Amazon SNS) topic that you specify in
    # `NotificationChannel`. To get the results of the text analysis
    # operation, first check that the status value published to the Amazon
    # SNS topic is SUCCEEDED. If the status is SUCCEEDED you can call either
    # `GetLendingAnalysis` or `GetLendingAnalysisSummary` and provide the
    # `JobId` to obtain the results of the analysis.
    #
    # If using `OutputConfig` to specify an Amazon S3 bucket, the output
    # will be contained within the specified prefix in a directory labeled
    # with the job-id. In the directory there are 3 sub-directories:
    #
    # * detailedResponse (contains the GetLendingAnalysis response)
    #
    # * summaryResponse (for the GetLendingAnalysisSummary response)
    #
    # * splitDocuments (documents split across logical boundaries)
    #
    # @option params [required, Types::DocumentLocation] :document_location
    #   The Amazon S3 bucket that contains the document to be processed. It's
    #   used by asynchronous operations.
    #
    #   The input document can be an image file in JPEG or PNG format. It can
    #   also be a file in PDF format.
    #
    # @option params [String] :client_request_token
    #   The idempotent token that you use to identify the start request. If
    #   you use the same token with multiple `StartLendingAnalysis` requests,
    #   the same `JobId` is returned. Use `ClientRequestToken` to prevent the
    #   same job from being accidentally started more than once. For more
    #   information, see [Calling Amazon Textract Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-sync.html
    #
    # @option params [String] :job_tag
    #   An identifier that you specify to be included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #
    # @option params [Types::NotificationChannel] :notification_channel
    #   The Amazon Simple Notification Service (Amazon SNS) topic to which
    #   Amazon Textract publishes the completion status of an asynchronous
    #   document operation.
    #
    # @option params [Types::OutputConfig] :output_config
    #   Sets whether or not your output will go to a user created bucket. Used
    #   to set the name of the bucket, and the prefix on the output file.
    #
    #   `OutputConfig` is an optional parameter which lets you adjust where
    #   your output will be placed. By default, Amazon Textract will store the
    #   results internally and can only be accessed by the Get API operations.
    #   With `OutputConfig` enabled, you can set the name of the bucket the
    #   output will be sent to the file prefix of the results where you can
    #   download your results. Additionally, you can set the `KMSKeyID`
    #   parameter to a customer master key (CMK) to encrypt your output.
    #   Without this parameter set Amazon Textract will encrypt server-side
    #   using the AWS managed CMK for Amazon S3.
    #
    #   Decryption of Customer Content is necessary for processing of the
    #   documents by Amazon Textract. If your account is opted out under an AI
    #   services opt out policy then all unencrypted Customer Content is
    #   immediately and permanently deleted after the Customer Content has
    #   been processed by the service. No copy of of the output is retained by
    #   Amazon Textract. For information about how to opt out, see [ Managing
    #   AI services opt-out policy. ][1]
    #
    #   For more information on data privacy, see the [Data Privacy FAQ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://aws.amazon.com/compliance/data-privacy-faq/
    #
    # @option params [String] :kms_key_id
    #   The KMS key used to encrypt the inference results. This can be in
    #   either Key ID or Key Alias format. When a KMS key is provided, the KMS
    #   key will be used for server-side encryption of the objects in the
    #   customer bucket. When this parameter is not enabled, the result will
    #   be encrypted server side, using SSE-S3.
    #
    # @return [Types::StartLendingAnalysisResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartLendingAnalysisResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_lending_analysis({
    #     document_location: { # required
    #       s3_object: {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       },
    #     },
    #     client_request_token: "ClientRequestToken",
    #     job_tag: "JobTag",
    #     notification_channel: {
    #       sns_topic_arn: "SNSTopicArn", # required
    #       role_arn: "RoleArn", # required
    #     },
    #     output_config: {
    #       s3_bucket: "S3Bucket", # required
    #       s3_prefix: "S3ObjectName",
    #     },
    #     kms_key_id: "KMSKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartLendingAnalysis AWS API Documentation
    #
    # @overload start_lending_analysis(params = {})
    # @param [Hash] params ({})
    def start_lending_analysis(params = {}, options = {})
      req = build_request(:start_lending_analysis, params)
      req.send_request(options)
    end

    # Adds one or more tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that specifies the resource to be
    #   tagged.
    #
    # @option params [required, Hash<String,String>] :tags
    #   A set of tags (key-value pairs) that you want to assign to the
    #   resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "AmazonResourceName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes any tags with the specified keys from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) that specifies the resource to be
    #   untagged.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Specifies the tags to be removed from the resource specified by the
    #   ResourceARN.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Update the configuration for an adapter. FeatureTypes configurations
    # cannot be updated. At least one new parameter must be specified as an
    # argument.
    #
    # @option params [required, String] :adapter_id
    #   A string containing a unique ID for the adapter that will be updated.
    #
    # @option params [String] :description
    #   The new description to be applied to the adapter.
    #
    # @option params [String] :adapter_name
    #   The new name to be applied to the adapter.
    #
    # @option params [String] :auto_update
    #   The new auto-update status to be applied to the adapter.
    #
    # @return [Types::UpdateAdapterResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAdapterResponse#adapter_id #adapter_id} => String
    #   * {Types::UpdateAdapterResponse#adapter_name #adapter_name} => String
    #   * {Types::UpdateAdapterResponse#creation_time #creation_time} => Time
    #   * {Types::UpdateAdapterResponse#description #description} => String
    #   * {Types::UpdateAdapterResponse#feature_types #feature_types} => Array&lt;String&gt;
    #   * {Types::UpdateAdapterResponse#auto_update #auto_update} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_adapter({
    #     adapter_id: "AdapterId", # required
    #     description: "AdapterDescription",
    #     adapter_name: "AdapterName",
    #     auto_update: "ENABLED", # accepts ENABLED, DISABLED
    #   })
    #
    # @example Response structure
    #
    #   resp.adapter_id #=> String
    #   resp.adapter_name #=> String
    #   resp.creation_time #=> Time
    #   resp.description #=> String
    #   resp.feature_types #=> Array
    #   resp.feature_types[0] #=> String, one of "TABLES", "FORMS", "QUERIES", "SIGNATURES", "LAYOUT"
    #   resp.auto_update #=> String, one of "ENABLED", "DISABLED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UpdateAdapter AWS API Documentation
    #
    # @overload update_adapter(params = {})
    # @param [Hash] params ({})
    def update_adapter(params = {}, options = {})
      req = build_request(:update_adapter, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Textract')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-textract'
      context[:gem_version] = '1.83.0'
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
