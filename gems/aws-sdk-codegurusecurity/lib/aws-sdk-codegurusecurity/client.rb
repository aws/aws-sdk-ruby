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

Aws::Plugins::GlobalConfiguration.add_identifier(:codegurusecurity)

module Aws::CodeGuruSecurity
  # An API client for CodeGuruSecurity.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::CodeGuruSecurity::Client.new(
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

    @identifier = :codegurusecurity

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
    add_plugin(Aws::CodeGuruSecurity::Plugins::Endpoints)

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
    #   @option options [Aws::CodeGuruSecurity::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::CodeGuruSecurity::EndpointParameters`
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

    # Returns a list of all requested findings.
    #
    # @option params [required, Array<Types::FindingIdentifier>] :finding_identifiers
    #   A list of finding identifiers. Each identifier consists of a
    #   `scanName` and a `findingId`. You retrieve the `findingId` when you
    #   call `GetFindings`.
    #
    # @return [Types::BatchGetFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchGetFindingsResponse#failed_findings #failed_findings} => Array&lt;Types::BatchGetFindingsError&gt;
    #   * {Types::BatchGetFindingsResponse#findings #findings} => Array&lt;Types::Finding&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_findings({
    #     finding_identifiers: [ # required
    #       {
    #         finding_id: "String", # required
    #         scan_name: "String", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_findings #=> Array
    #   resp.failed_findings[0].error_code #=> String, one of "DUPLICATE_IDENTIFIER", "ITEM_DOES_NOT_EXIST", "INTERNAL_ERROR", "INVALID_FINDING_ID", "INVALID_SCAN_NAME"
    #   resp.failed_findings[0].finding_id #=> String
    #   resp.failed_findings[0].message #=> String
    #   resp.failed_findings[0].scan_name #=> String
    #   resp.findings #=> Array
    #   resp.findings[0].created_at #=> Time
    #   resp.findings[0].description #=> String
    #   resp.findings[0].detector_id #=> String
    #   resp.findings[0].detector_name #=> String
    #   resp.findings[0].detector_tags #=> Array
    #   resp.findings[0].detector_tags[0] #=> String
    #   resp.findings[0].generator_id #=> String
    #   resp.findings[0].id #=> String
    #   resp.findings[0].remediation.recommendation.text #=> String
    #   resp.findings[0].remediation.recommendation.url #=> String
    #   resp.findings[0].remediation.suggested_fixes #=> Array
    #   resp.findings[0].remediation.suggested_fixes[0].code #=> String
    #   resp.findings[0].remediation.suggested_fixes[0].description #=> String
    #   resp.findings[0].resource.id #=> String
    #   resp.findings[0].resource.sub_resource_id #=> String
    #   resp.findings[0].rule_id #=> String
    #   resp.findings[0].severity #=> String, one of "Critical", "High", "Medium", "Low", "Info"
    #   resp.findings[0].status #=> String, one of "Closed", "Open", "All"
    #   resp.findings[0].title #=> String
    #   resp.findings[0].type #=> String
    #   resp.findings[0].updated_at #=> Time
    #   resp.findings[0].vulnerability.file_path.code_snippet #=> Array
    #   resp.findings[0].vulnerability.file_path.code_snippet[0].content #=> String
    #   resp.findings[0].vulnerability.file_path.code_snippet[0].number #=> Integer
    #   resp.findings[0].vulnerability.file_path.end_line #=> Integer
    #   resp.findings[0].vulnerability.file_path.name #=> String
    #   resp.findings[0].vulnerability.file_path.path #=> String
    #   resp.findings[0].vulnerability.file_path.start_line #=> Integer
    #   resp.findings[0].vulnerability.id #=> String
    #   resp.findings[0].vulnerability.item_count #=> Integer
    #   resp.findings[0].vulnerability.reference_urls #=> Array
    #   resp.findings[0].vulnerability.reference_urls[0] #=> String
    #   resp.findings[0].vulnerability.related_vulnerabilities #=> Array
    #   resp.findings[0].vulnerability.related_vulnerabilities[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/BatchGetFindings AWS API Documentation
    #
    # @overload batch_get_findings(params = {})
    # @param [Hash] params ({})
    def batch_get_findings(params = {}, options = {})
      req = build_request(:batch_get_findings, params)
      req.send_request(options)
    end

    # Use to create a scan using code uploaded to an S3 bucket.
    #
    # @option params [String] :analysis_type
    #   The type of analysis you want CodeGuru Security to perform in the
    #   scan, either `Security` or `All`. The `Secuirty` type only generates
    #   findings related to security. The `All` type generates both security
    #   findings and quality findings. Defaults to `Security` type if missing.
    #
    # @option params [String] :client_token
    #   The idempotency token for the request. Amazon CodeGuru Security uses
    #   this value to prevent the accidental creation of duplicate scans if
    #   there are failures and retries.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::ResourceId] :resource_id
    #   The identifier for an input resource used to create a scan.
    #
    # @option params [required, String] :scan_name
    #   The unique name that CodeGuru Security uses to track revisions across
    #   multiple scans of the same resource. Only allowed for a `STANDARD`
    #   scan type. If not specified, it will be auto generated.
    #
    # @option params [String] :scan_type
    #   The type of scan, either `Standard` or `Express`. Defaults to
    #   `Standard` type if missing.
    #
    #   `Express` scans run on limited resources and use a limited set of
    #   detectors to analyze your code in near-real time. `Standard` scans
    #   have standard resource limits and use the full set of detectors to
    #   analyze your code.
    #
    # @option params [Hash<String,String>] :tags
    #   An array of key-value pairs used to tag a scan. A tag is a custom
    #   attribute label with two parts:
    #
    #   * A tag key. For example, `CostCenter`, `Environment`, or `Secret`.
    #     Tag keys are case sensitive.
    #
    #   * An optional tag value field. For example, `111122223333`,
    #     `Production`, or a team name. Omitting the tag value is the same as
    #     using an empty string. Tag values are case sensitive.
    #
    # @return [Types::CreateScanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateScanResponse#resource_id #resource_id} => Types::ResourceId
    #   * {Types::CreateScanResponse#run_id #run_id} => String
    #   * {Types::CreateScanResponse#scan_name #scan_name} => String
    #   * {Types::CreateScanResponse#scan_name_arn #scan_name_arn} => String
    #   * {Types::CreateScanResponse#scan_state #scan_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scan({
    #     analysis_type: "Security", # accepts Security, All
    #     client_token: "ClientToken",
    #     resource_id: { # required
    #       code_artifact_id: "Uuid",
    #     },
    #     scan_name: "ScanName", # required
    #     scan_type: "Standard", # accepts Standard, Express
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_id.code_artifact_id #=> String
    #   resp.run_id #=> String
    #   resp.scan_name #=> String
    #   resp.scan_name_arn #=> String
    #   resp.scan_state #=> String, one of "InProgress", "Successful", "Failed"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/CreateScan AWS API Documentation
    #
    # @overload create_scan(params = {})
    # @param [Hash] params ({})
    def create_scan(params = {}, options = {})
      req = build_request(:create_scan, params)
      req.send_request(options)
    end

    # Generates a pre-signed URL and request headers used to upload a code
    # resource.
    #
    # You can upload your code resource to the URL and add the request
    # headers using any HTTP client.
    #
    # @option params [required, String] :scan_name
    #   The name of the scan that will use the uploaded resource. CodeGuru
    #   Security uses the unique scan name to track revisions across multiple
    #   scans of the same resource. Use this `scanName` when you call
    #   `CreateScan` on the code resource you upload to this URL.
    #
    # @return [Types::CreateUploadUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUploadUrlResponse#code_artifact_id #code_artifact_id} => String
    #   * {Types::CreateUploadUrlResponse#request_headers #request_headers} => Hash&lt;String,String&gt;
    #   * {Types::CreateUploadUrlResponse#s3_url #s3_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_upload_url({
    #     scan_name: "ScanName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.code_artifact_id #=> String
    #   resp.request_headers #=> Hash
    #   resp.request_headers["HeaderKey"] #=> String
    #   resp.s3_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/CreateUploadUrl AWS API Documentation
    #
    # @overload create_upload_url(params = {})
    # @param [Hash] params ({})
    def create_upload_url(params = {}, options = {})
      req = build_request(:create_upload_url, params)
      req.send_request(options)
    end

    # Use to get account level configuration.
    #
    # @return [Types::GetAccountConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccountConfigurationResponse#encryption_config #encryption_config} => Types::EncryptionConfig
    #
    # @example Response structure
    #
    #   resp.encryption_config.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetAccountConfiguration AWS API Documentation
    #
    # @overload get_account_configuration(params = {})
    # @param [Hash] params ({})
    def get_account_configuration(params = {}, options = {})
      req = build_request(:get_account_configuration, params)
      req.send_request(options)
    end

    # Returns a list of all findings generated by a particular scan.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. Use this
    #   parameter when paginating results. If additional results exist beyond
    #   the number you specify, the `nextToken` element is returned in the
    #   response. Use `nextToken` in a subsequent request to retrieve
    #   additional results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the `nextToken` value returned from
    #   the previous request to continue listing results after the first page.
    #
    # @option params [required, String] :scan_name
    #   The name of the scan you want to retrieve findings from.
    #
    # @option params [String] :status
    #   The status of the findings you want to get. Pass either `Open`,
    #   `Closed`, or `All`.
    #
    # @return [Types::GetFindingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFindingsResponse#findings #findings} => Array&lt;Types::Finding&gt;
    #   * {Types::GetFindingsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_findings({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     scan_name: "ScanName", # required
    #     status: "Closed", # accepts Closed, Open, All
    #   })
    #
    # @example Response structure
    #
    #   resp.findings #=> Array
    #   resp.findings[0].created_at #=> Time
    #   resp.findings[0].description #=> String
    #   resp.findings[0].detector_id #=> String
    #   resp.findings[0].detector_name #=> String
    #   resp.findings[0].detector_tags #=> Array
    #   resp.findings[0].detector_tags[0] #=> String
    #   resp.findings[0].generator_id #=> String
    #   resp.findings[0].id #=> String
    #   resp.findings[0].remediation.recommendation.text #=> String
    #   resp.findings[0].remediation.recommendation.url #=> String
    #   resp.findings[0].remediation.suggested_fixes #=> Array
    #   resp.findings[0].remediation.suggested_fixes[0].code #=> String
    #   resp.findings[0].remediation.suggested_fixes[0].description #=> String
    #   resp.findings[0].resource.id #=> String
    #   resp.findings[0].resource.sub_resource_id #=> String
    #   resp.findings[0].rule_id #=> String
    #   resp.findings[0].severity #=> String, one of "Critical", "High", "Medium", "Low", "Info"
    #   resp.findings[0].status #=> String, one of "Closed", "Open", "All"
    #   resp.findings[0].title #=> String
    #   resp.findings[0].type #=> String
    #   resp.findings[0].updated_at #=> Time
    #   resp.findings[0].vulnerability.file_path.code_snippet #=> Array
    #   resp.findings[0].vulnerability.file_path.code_snippet[0].content #=> String
    #   resp.findings[0].vulnerability.file_path.code_snippet[0].number #=> Integer
    #   resp.findings[0].vulnerability.file_path.end_line #=> Integer
    #   resp.findings[0].vulnerability.file_path.name #=> String
    #   resp.findings[0].vulnerability.file_path.path #=> String
    #   resp.findings[0].vulnerability.file_path.start_line #=> Integer
    #   resp.findings[0].vulnerability.id #=> String
    #   resp.findings[0].vulnerability.item_count #=> Integer
    #   resp.findings[0].vulnerability.reference_urls #=> Array
    #   resp.findings[0].vulnerability.reference_urls[0] #=> String
    #   resp.findings[0].vulnerability.related_vulnerabilities #=> Array
    #   resp.findings[0].vulnerability.related_vulnerabilities[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetFindings AWS API Documentation
    #
    # @overload get_findings(params = {})
    # @param [Hash] params ({})
    def get_findings(params = {}, options = {})
      req = build_request(:get_findings, params)
      req.send_request(options)
    end

    # Returns top level metrics about an account from a specified date,
    # including number of open findings, the categories with most findings,
    # the scans with most open findings, and scans with most open critical
    # findings.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :date
    #   The date you want to retrieve summary metrics from, rounded to the
    #   nearest day. The date must be within the past two years since metrics
    #   data is only stored for two years. If a date outside of this range is
    #   passed, the response will be empty.
    #
    # @return [Types::GetMetricsSummaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMetricsSummaryResponse#metrics_summary #metrics_summary} => Types::MetricsSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_metrics_summary({
    #     date: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metrics_summary.categories_with_most_findings #=> Array
    #   resp.metrics_summary.categories_with_most_findings[0].category_name #=> String
    #   resp.metrics_summary.categories_with_most_findings[0].finding_number #=> Integer
    #   resp.metrics_summary.date #=> Time
    #   resp.metrics_summary.open_findings.critical #=> Float
    #   resp.metrics_summary.open_findings.high #=> Float
    #   resp.metrics_summary.open_findings.info #=> Float
    #   resp.metrics_summary.open_findings.low #=> Float
    #   resp.metrics_summary.open_findings.medium #=> Float
    #   resp.metrics_summary.scans_with_most_open_critical_findings #=> Array
    #   resp.metrics_summary.scans_with_most_open_critical_findings[0].finding_number #=> Integer
    #   resp.metrics_summary.scans_with_most_open_critical_findings[0].scan_name #=> String
    #   resp.metrics_summary.scans_with_most_open_findings #=> Array
    #   resp.metrics_summary.scans_with_most_open_findings[0].finding_number #=> Integer
    #   resp.metrics_summary.scans_with_most_open_findings[0].scan_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetMetricsSummary AWS API Documentation
    #
    # @overload get_metrics_summary(params = {})
    # @param [Hash] params ({})
    def get_metrics_summary(params = {}, options = {})
      req = build_request(:get_metrics_summary, params)
      req.send_request(options)
    end

    # Returns details about a scan, including whether or not a scan has
    # completed.
    #
    # @option params [String] :run_id
    #   UUID that identifies the individual scan run you want to view details
    #   about. You retrieve this when you call the `CreateScan` operation.
    #   Defaults to the latest scan run if missing.
    #
    # @option params [required, String] :scan_name
    #   The name of the scan you want to view details about.
    #
    # @return [Types::GetScanResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetScanResponse#analysis_type #analysis_type} => String
    #   * {Types::GetScanResponse#created_at #created_at} => Time
    #   * {Types::GetScanResponse#number_of_revisions #number_of_revisions} => Integer
    #   * {Types::GetScanResponse#run_id #run_id} => String
    #   * {Types::GetScanResponse#scan_name #scan_name} => String
    #   * {Types::GetScanResponse#scan_name_arn #scan_name_arn} => String
    #   * {Types::GetScanResponse#scan_state #scan_state} => String
    #   * {Types::GetScanResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_scan({
    #     run_id: "Uuid",
    #     scan_name: "ScanName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.analysis_type #=> String, one of "Security", "All"
    #   resp.created_at #=> Time
    #   resp.number_of_revisions #=> Integer
    #   resp.run_id #=> String
    #   resp.scan_name #=> String
    #   resp.scan_name_arn #=> String
    #   resp.scan_state #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/GetScan AWS API Documentation
    #
    # @overload get_scan(params = {})
    # @param [Hash] params ({})
    def get_scan(params = {}, options = {})
      req = build_request(:get_scan, params)
      req.send_request(options)
    end

    # Returns metrics about all findings in an account within a specified
    # time range.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_date
    #   The end date of the interval which you want to retrieve metrics from.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. Use this
    #   parameter when paginating results. If additional results exist beyond
    #   the number you specify, the `nextToken` element is returned in the
    #   response. Use `nextToken` in a subsequent request to retrieve
    #   additional results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the `nextToken` value returned from
    #   the previous request to continue listing results after the first page.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_date
    #   The start date of the interval which you want to retrieve metrics
    #   from.
    #
    # @return [Types::ListFindingsMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFindingsMetricsResponse#findings_metrics #findings_metrics} => Array&lt;Types::AccountFindingsMetric&gt;
    #   * {Types::ListFindingsMetricsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_findings_metrics({
    #     end_date: Time.now, # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     start_date: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.findings_metrics #=> Array
    #   resp.findings_metrics[0].closed_findings.critical #=> Float
    #   resp.findings_metrics[0].closed_findings.high #=> Float
    #   resp.findings_metrics[0].closed_findings.info #=> Float
    #   resp.findings_metrics[0].closed_findings.low #=> Float
    #   resp.findings_metrics[0].closed_findings.medium #=> Float
    #   resp.findings_metrics[0].date #=> Time
    #   resp.findings_metrics[0].mean_time_to_close.critical #=> Float
    #   resp.findings_metrics[0].mean_time_to_close.high #=> Float
    #   resp.findings_metrics[0].mean_time_to_close.info #=> Float
    #   resp.findings_metrics[0].mean_time_to_close.low #=> Float
    #   resp.findings_metrics[0].mean_time_to_close.medium #=> Float
    #   resp.findings_metrics[0].new_findings.critical #=> Float
    #   resp.findings_metrics[0].new_findings.high #=> Float
    #   resp.findings_metrics[0].new_findings.info #=> Float
    #   resp.findings_metrics[0].new_findings.low #=> Float
    #   resp.findings_metrics[0].new_findings.medium #=> Float
    #   resp.findings_metrics[0].open_findings.critical #=> Float
    #   resp.findings_metrics[0].open_findings.high #=> Float
    #   resp.findings_metrics[0].open_findings.info #=> Float
    #   resp.findings_metrics[0].open_findings.low #=> Float
    #   resp.findings_metrics[0].open_findings.medium #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListFindingsMetrics AWS API Documentation
    #
    # @overload list_findings_metrics(params = {})
    # @param [Hash] params ({})
    def list_findings_metrics(params = {}, options = {})
      req = build_request(:list_findings_metrics, params)
      req.send_request(options)
    end

    # Returns a list of all the scans in an account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. Use this
    #   parameter when paginating results. If additional results exist beyond
    #   the number you specify, the `nextToken` element is returned in the
    #   response. Use `nextToken` in a subsequent request to retrieve
    #   additional results.
    #
    # @option params [String] :next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the `nextToken` value returned from
    #   the previous request to continue listing results after the first page.
    #
    # @return [Types::ListScansResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListScansResponse#next_token #next_token} => String
    #   * {Types::ListScansResponse#summaries #summaries} => Array&lt;Types::ScanSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scans({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.summaries #=> Array
    #   resp.summaries[0].created_at #=> Time
    #   resp.summaries[0].run_id #=> String
    #   resp.summaries[0].scan_name #=> String
    #   resp.summaries[0].scan_name_arn #=> String
    #   resp.summaries[0].scan_state #=> String, one of "InProgress", "Successful", "Failed"
    #   resp.summaries[0].updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListScans AWS API Documentation
    #
    # @overload list_scans(params = {})
    # @param [Hash] params ({})
    def list_scans(params = {}, options = {})
      req = build_request(:list_scans, params)
      req.send_request(options)
    end

    # Returns a list of all tags associated with a scan.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the `ScanName` object. You can retrieve this ARN by calling
    #   `ListScans` or `GetScan`.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ScanNameArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Use to add one or more tags to an existing scan.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the `ScanName` object. You can retrieve this ARN by calling
    #   `ListScans` or `GetScan`.
    #
    # @option params [required, Hash<String,String>] :tags
    #   An array of key-value pairs used to tag an existing scan. A tag is a
    #   custom attribute label with two parts:
    #
    #   * A tag key. For example, `CostCenter`, `Environment`, or `Secret`.
    #     Tag keys are case sensitive.
    #
    #   * An optional tag value field. For example, `111122223333`,
    #     `Production`, or a team name. Omitting the tag value is the same as
    #     using an empty string. Tag values are case sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ScanNameArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Use to remove one or more tags from an existing scan.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the `ScanName` object. You can retrieve this ARN by calling
    #   `ListScans` or `GetScan`.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of keys for each tag you want to remove from a scan.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ScanNameArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Use to update account-level configuration with an encryption key.
    #
    # @option params [required, Types::EncryptionConfig] :encryption_config
    #   The KMS key ARN you want to use for encryption. Defaults to
    #   service-side encryption if missing.
    #
    # @return [Types::UpdateAccountConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccountConfigurationResponse#encryption_config #encryption_config} => Types::EncryptionConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_configuration({
    #     encryption_config: { # required
    #       kms_key_arn: "KmsKeyArn",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.encryption_config.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeguru-security-2018-05-10/UpdateAccountConfiguration AWS API Documentation
    #
    # @overload update_account_configuration(params = {})
    # @param [Hash] params ({})
    def update_account_configuration(params = {}, options = {})
      req = build_request(:update_account_configuration, params)
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
      context[:gem_name] = 'aws-sdk-codegurusecurity'
      context[:gem_version] = '1.4.0'
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
