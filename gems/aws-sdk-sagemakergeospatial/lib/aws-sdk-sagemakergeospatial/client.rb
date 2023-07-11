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

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakergeospatial)

module Aws::SageMakerGeospatial
  # An API client for SageMakerGeospatial.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::SageMakerGeospatial::Client.new(
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

    @identifier = :sagemakergeospatial

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
    add_plugin(Aws::SageMakerGeospatial::Plugins::Endpoints)

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
    #   @option options [Aws::SageMakerGeospatial::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::SageMakerGeospatial::EndpointParameters`
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

    # Use this operation to delete an Earth Observation job.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Earth Observation job being
    #   deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_earth_observation_job({
    #     arn: "EarthObservationJobArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/DeleteEarthObservationJob AWS API Documentation
    #
    # @overload delete_earth_observation_job(params = {})
    # @param [Hash] params ({})
    def delete_earth_observation_job(params = {}, options = {})
      req = build_request(:delete_earth_observation_job, params)
      req.send_request(options)
    end

    # Use this operation to delete a Vector Enrichment job.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job being
    #   deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vector_enrichment_job({
    #     arn: "VectorEnrichmentJobArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/DeleteVectorEnrichmentJob AWS API Documentation
    #
    # @overload delete_vector_enrichment_job(params = {})
    # @param [Hash] params ({})
    def delete_vector_enrichment_job(params = {}, options = {})
      req = build_request(:delete_vector_enrichment_job, params)
      req.send_request(options)
    end

    # Use this operation to export results of an Earth Observation job and
    # optionally source images used as input to the EOJ to an Amazon S3
    # location.
    #
    # @option params [required, String] :arn
    #   The input Amazon Resource Name (ARN) of the Earth Observation job
    #   being exported.
    #
    # @option params [String] :client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified for
    #   the job.
    #
    # @option params [Boolean] :export_source_images
    #   The source images provided to the Earth Observation job being
    #   exported.
    #
    # @option params [required, Types::OutputConfigInput] :output_config
    #   An object containing information about the output file.
    #
    # @return [Types::ExportEarthObservationJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportEarthObservationJobOutput#arn #arn} => String
    #   * {Types::ExportEarthObservationJobOutput#creation_time #creation_time} => Time
    #   * {Types::ExportEarthObservationJobOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::ExportEarthObservationJobOutput#export_source_images #export_source_images} => Boolean
    #   * {Types::ExportEarthObservationJobOutput#export_status #export_status} => String
    #   * {Types::ExportEarthObservationJobOutput#output_config #output_config} => Types::OutputConfigInput
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_earth_observation_job({
    #     arn: "EarthObservationJobArn", # required
    #     client_token: "ExportEarthObservationJobInputClientTokenString",
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     export_source_images: false,
    #     output_config: { # required
    #       s3_data: { # required
    #         kms_key_id: "KmsKey",
    #         s3_uri: "S3Uri", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.execution_role_arn #=> String
    #   resp.export_source_images #=> Boolean
    #   resp.export_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.output_config.s3_data.kms_key_id #=> String
    #   resp.output_config.s3_data.s3_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportEarthObservationJob AWS API Documentation
    #
    # @overload export_earth_observation_job(params = {})
    # @param [Hash] params ({})
    def export_earth_observation_job(params = {}, options = {})
      req = build_request(:export_earth_observation_job, params)
      req.send_request(options)
    end

    # Use this operation to copy results of a Vector Enrichment job to an
    # Amazon S3 location.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job.
    #
    # @option params [String] :client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM rolewith permission to
    #   upload to the location in OutputConfig.
    #
    # @option params [required, Types::ExportVectorEnrichmentJobOutputConfig] :output_config
    #   Output location information for exporting Vector Enrichment Job
    #   results.
    #
    # @return [Types::ExportVectorEnrichmentJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportVectorEnrichmentJobOutput#arn #arn} => String
    #   * {Types::ExportVectorEnrichmentJobOutput#creation_time #creation_time} => Time
    #   * {Types::ExportVectorEnrichmentJobOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::ExportVectorEnrichmentJobOutput#export_status #export_status} => String
    #   * {Types::ExportVectorEnrichmentJobOutput#output_config #output_config} => Types::ExportVectorEnrichmentJobOutputConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_vector_enrichment_job({
    #     arn: "VectorEnrichmentJobArn", # required
    #     client_token: "ExportVectorEnrichmentJobInputClientTokenString",
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     output_config: { # required
    #       s3_data: { # required
    #         kms_key_id: "KmsKey",
    #         s3_uri: "S3Uri", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.execution_role_arn #=> String
    #   resp.export_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.output_config.s3_data.kms_key_id #=> String
    #   resp.output_config.s3_data.s3_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ExportVectorEnrichmentJob AWS API Documentation
    #
    # @overload export_vector_enrichment_job(params = {})
    # @param [Hash] params ({})
    def export_vector_enrichment_job(params = {}, options = {})
      req = build_request(:export_vector_enrichment_job, params)
      req.send_request(options)
    end

    # Get the details for a previously initiated Earth Observation job.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Earth Observation job.
    #
    # @return [Types::GetEarthObservationJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEarthObservationJobOutput#arn #arn} => String
    #   * {Types::GetEarthObservationJobOutput#creation_time #creation_time} => Time
    #   * {Types::GetEarthObservationJobOutput#duration_in_seconds #duration_in_seconds} => Integer
    #   * {Types::GetEarthObservationJobOutput#error_details #error_details} => Types::EarthObservationJobErrorDetails
    #   * {Types::GetEarthObservationJobOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::GetEarthObservationJobOutput#export_error_details #export_error_details} => Types::ExportErrorDetails
    #   * {Types::GetEarthObservationJobOutput#export_status #export_status} => String
    #   * {Types::GetEarthObservationJobOutput#input_config #input_config} => Types::InputConfigOutput
    #   * {Types::GetEarthObservationJobOutput#job_config #job_config} => Types::JobConfigInput
    #   * {Types::GetEarthObservationJobOutput#kms_key_id #kms_key_id} => String
    #   * {Types::GetEarthObservationJobOutput#name #name} => String
    #   * {Types::GetEarthObservationJobOutput#output_bands #output_bands} => Array&lt;Types::OutputBand&gt;
    #   * {Types::GetEarthObservationJobOutput#status #status} => String
    #   * {Types::GetEarthObservationJobOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_earth_observation_job({
    #     arn: "EarthObservationJobArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.duration_in_seconds #=> Integer
    #   resp.error_details.message #=> String
    #   resp.error_details.type #=> String, one of "CLIENT_ERROR", "SERVER_ERROR"
    #   resp.execution_role_arn #=> String
    #   resp.export_error_details.export_results.message #=> String
    #   resp.export_error_details.export_results.type #=> String, one of "CLIENT_ERROR", "SERVER_ERROR"
    #   resp.export_error_details.export_source_images.message #=> String
    #   resp.export_error_details.export_source_images.type #=> String, one of "CLIENT_ERROR", "SERVER_ERROR"
    #   resp.export_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.input_config.previous_earth_observation_job_arn #=> String
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates[0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates[0][0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates[0][0][0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates[0][0][0][0] #=> Float
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.polygon_geometry.coordinates #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.polygon_geometry.coordinates[0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.polygon_geometry.coordinates[0][0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.polygon_geometry.coordinates[0][0][0] #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.logical_operator #=> String, one of "AND"
    #   resp.input_config.raster_data_collection_query.property_filters.properties #=> Array
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.eo_cloud_cover.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.eo_cloud_cover.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.landsat_cloud_cover_land.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.landsat_cloud_cover_land.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.platform.comparison_operator #=> String, one of "EQUALS", "NOT_EQUALS", "STARTS_WITH"
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.platform.value #=> String
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_off_nadir.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_off_nadir.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_sun_azimuth.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_sun_azimuth.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_sun_elevation.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_sun_elevation.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.raster_data_collection_arn #=> String
    #   resp.input_config.raster_data_collection_query.raster_data_collection_name #=> String
    #   resp.input_config.raster_data_collection_query.time_range_filter.end_time #=> Time
    #   resp.input_config.raster_data_collection_query.time_range_filter.start_time #=> Time
    #   resp.job_config.band_math_config.custom_indices.operations #=> Array
    #   resp.job_config.band_math_config.custom_indices.operations[0].equation #=> String
    #   resp.job_config.band_math_config.custom_indices.operations[0].name #=> String
    #   resp.job_config.band_math_config.custom_indices.operations[0].output_type #=> String, one of "INT32", "FLOAT32", "INT16", "FLOAT64", "UINT16"
    #   resp.job_config.band_math_config.predefined_indices #=> Array
    #   resp.job_config.band_math_config.predefined_indices[0] #=> String
    #   resp.job_config.cloud_removal_config.algorithm_name #=> String, one of "INTERPOLATION"
    #   resp.job_config.cloud_removal_config.interpolation_value #=> String
    #   resp.job_config.cloud_removal_config.target_bands #=> Array
    #   resp.job_config.cloud_removal_config.target_bands[0] #=> String
    #   resp.job_config.geo_mosaic_config.algorithm_name #=> String, one of "NEAR", "BILINEAR", "CUBIC", "CUBICSPLINE", "LANCZOS", "AVERAGE", "RMS", "MODE", "MAX", "MIN", "MED", "Q1", "Q3", "SUM"
    #   resp.job_config.geo_mosaic_config.target_bands #=> Array
    #   resp.job_config.geo_mosaic_config.target_bands[0] #=> String
    #   resp.job_config.resampling_config.algorithm_name #=> String, one of "NEAR", "BILINEAR", "CUBIC", "CUBICSPLINE", "LANCZOS", "AVERAGE", "RMS", "MODE", "MAX", "MIN", "MED", "Q1", "Q3", "SUM"
    #   resp.job_config.resampling_config.output_resolution.user_defined.unit #=> String, one of "METERS"
    #   resp.job_config.resampling_config.output_resolution.user_defined.value #=> Float
    #   resp.job_config.resampling_config.target_bands #=> Array
    #   resp.job_config.resampling_config.target_bands[0] #=> String
    #   resp.job_config.stack_config.output_resolution.predefined #=> String, one of "HIGHEST", "LOWEST", "AVERAGE"
    #   resp.job_config.stack_config.output_resolution.user_defined.unit #=> String, one of "METERS"
    #   resp.job_config.stack_config.output_resolution.user_defined.value #=> Float
    #   resp.job_config.stack_config.target_bands #=> Array
    #   resp.job_config.stack_config.target_bands[0] #=> String
    #   resp.job_config.temporal_statistics_config.group_by #=> String, one of "ALL", "YEARLY"
    #   resp.job_config.temporal_statistics_config.statistics #=> Array
    #   resp.job_config.temporal_statistics_config.statistics[0] #=> String, one of "MEAN", "MEDIAN", "STANDARD_DEVIATION"
    #   resp.job_config.temporal_statistics_config.target_bands #=> Array
    #   resp.job_config.temporal_statistics_config.target_bands[0] #=> String
    #   resp.job_config.zonal_statistics_config.statistics #=> Array
    #   resp.job_config.zonal_statistics_config.statistics[0] #=> String, one of "MEAN", "MEDIAN", "STANDARD_DEVIATION", "MAX", "MIN", "SUM"
    #   resp.job_config.zonal_statistics_config.target_bands #=> Array
    #   resp.job_config.zonal_statistics_config.target_bands[0] #=> String
    #   resp.job_config.zonal_statistics_config.zone_s3_path #=> String
    #   resp.job_config.zonal_statistics_config.zone_s3_path_kms_key_id #=> String
    #   resp.kms_key_id #=> String
    #   resp.name #=> String
    #   resp.output_bands #=> Array
    #   resp.output_bands[0].band_name #=> String
    #   resp.output_bands[0].output_data_type #=> String, one of "INT32", "FLOAT32", "INT16", "FLOAT64", "UINT16"
    #   resp.status #=> String, one of "INITIALIZING", "IN_PROGRESS", "STOPPING", "COMPLETED", "STOPPED", "FAILED", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetEarthObservationJob AWS API Documentation
    #
    # @overload get_earth_observation_job(params = {})
    # @param [Hash] params ({})
    def get_earth_observation_job(params = {}, options = {})
      req = build_request(:get_earth_observation_job, params)
      req.send_request(options)
    end

    # Use this operation to get details of a specific raster data
    # collection.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the raster data collection.
    #
    # @return [Types::GetRasterDataCollectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRasterDataCollectionOutput#arn #arn} => String
    #   * {Types::GetRasterDataCollectionOutput#description #description} => String
    #   * {Types::GetRasterDataCollectionOutput#description_page_url #description_page_url} => String
    #   * {Types::GetRasterDataCollectionOutput#image_source_bands #image_source_bands} => Array&lt;String&gt;
    #   * {Types::GetRasterDataCollectionOutput#name #name} => String
    #   * {Types::GetRasterDataCollectionOutput#supported_filters #supported_filters} => Array&lt;Types::Filter&gt;
    #   * {Types::GetRasterDataCollectionOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetRasterDataCollectionOutput#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_raster_data_collection({
    #     arn: "DataCollectionArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.description #=> String
    #   resp.description_page_url #=> String
    #   resp.image_source_bands #=> Array
    #   resp.image_source_bands[0] #=> String
    #   resp.name #=> String
    #   resp.supported_filters #=> Array
    #   resp.supported_filters[0].maximum #=> Float
    #   resp.supported_filters[0].minimum #=> Float
    #   resp.supported_filters[0].name #=> String
    #   resp.supported_filters[0].type #=> String
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.type #=> String, one of "PUBLIC", "PREMIUM", "USER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetRasterDataCollection AWS API Documentation
    #
    # @overload get_raster_data_collection(params = {})
    # @param [Hash] params ({})
    def get_raster_data_collection(params = {}, options = {})
      req = build_request(:get_raster_data_collection, params)
      req.send_request(options)
    end

    # Gets a web mercator tile for the given Earth Observation job.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the tile operation.
    #
    # @option params [String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specify.
    #
    # @option params [required, Array<String>] :image_assets
    #   The particular assets or bands to tile.
    #
    # @option params [Boolean] :image_mask
    #   Determines whether or not to return a valid data mask.
    #
    # @option params [String] :output_data_type
    #   The output data type of the tile operation.
    #
    # @option params [String] :output_format
    #   The data format of the output tile. The formats include .npy, .png and
    #   .jpg.
    #
    # @option params [String] :property_filters
    #   Property filters for the imagery to tile.
    #
    # @option params [required, String] :target
    #   Determines what part of the Earth Observation job to tile. 'INPUT'
    #   or 'OUTPUT' are the valid options.
    #
    # @option params [String] :time_range_filter
    #   Time range filter applied to imagery to find the images to tile.
    #
    # @option params [required, Integer] :x
    #   The x coordinate of the tile input.
    #
    # @option params [required, Integer] :y
    #   The y coordinate of the tile input.
    #
    # @option params [required, Integer] :z
    #   The z coordinate of the tile input.
    #
    # @return [Types::GetTileOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTileOutput#binary_file #binary_file} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tile({
    #     arn: "EarthObservationJobArn", # required
    #     execution_role_arn: "ExecutionRoleArn",
    #     image_assets: ["String"], # required
    #     image_mask: false,
    #     output_data_type: "INT32", # accepts INT32, FLOAT32, INT16, FLOAT64, UINT16
    #     output_format: "String",
    #     property_filters: "String",
    #     target: "INPUT", # required, accepts INPUT, OUTPUT
    #     time_range_filter: "String",
    #     x: 1, # required
    #     y: 1, # required
    #     z: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.binary_file #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetTile AWS API Documentation
    #
    # @overload get_tile(params = {})
    # @param [Hash] params ({})
    def get_tile(params = {}, options = {}, &block)
      req = build_request(:get_tile, params)
      req.send_request(options, &block)
    end

    # Retrieves details of a Vector Enrichment Job for a given job Amazon
    # Resource Name (ARN).
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job.
    #
    # @return [Types::GetVectorEnrichmentJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVectorEnrichmentJobOutput#arn #arn} => String
    #   * {Types::GetVectorEnrichmentJobOutput#creation_time #creation_time} => Time
    #   * {Types::GetVectorEnrichmentJobOutput#duration_in_seconds #duration_in_seconds} => Integer
    #   * {Types::GetVectorEnrichmentJobOutput#error_details #error_details} => Types::VectorEnrichmentJobErrorDetails
    #   * {Types::GetVectorEnrichmentJobOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::GetVectorEnrichmentJobOutput#export_error_details #export_error_details} => Types::VectorEnrichmentJobExportErrorDetails
    #   * {Types::GetVectorEnrichmentJobOutput#export_status #export_status} => String
    #   * {Types::GetVectorEnrichmentJobOutput#input_config #input_config} => Types::VectorEnrichmentJobInputConfig
    #   * {Types::GetVectorEnrichmentJobOutput#job_config #job_config} => Types::VectorEnrichmentJobConfig
    #   * {Types::GetVectorEnrichmentJobOutput#kms_key_id #kms_key_id} => String
    #   * {Types::GetVectorEnrichmentJobOutput#name #name} => String
    #   * {Types::GetVectorEnrichmentJobOutput#status #status} => String
    #   * {Types::GetVectorEnrichmentJobOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::GetVectorEnrichmentJobOutput#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vector_enrichment_job({
    #     arn: "VectorEnrichmentJobArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.duration_in_seconds #=> Integer
    #   resp.error_details.error_message #=> String
    #   resp.error_details.error_type #=> String, one of "CLIENT_ERROR", "SERVER_ERROR"
    #   resp.execution_role_arn #=> String
    #   resp.export_error_details.message #=> String
    #   resp.export_error_details.type #=> String, one of "CLIENT_ERROR", "SERVER_ERROR"
    #   resp.export_status #=> String, one of "IN_PROGRESS", "SUCCEEDED", "FAILED"
    #   resp.input_config.data_source_config.s3_data.kms_key_id #=> String
    #   resp.input_config.data_source_config.s3_data.s3_uri #=> String
    #   resp.input_config.document_type #=> String, one of "CSV"
    #   resp.job_config.map_matching_config.id_attribute_name #=> String
    #   resp.job_config.map_matching_config.timestamp_attribute_name #=> String
    #   resp.job_config.map_matching_config.x_attribute_name #=> String
    #   resp.job_config.map_matching_config.y_attribute_name #=> String
    #   resp.job_config.reverse_geocoding_config.x_attribute_name #=> String
    #   resp.job_config.reverse_geocoding_config.y_attribute_name #=> String
    #   resp.kms_key_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "INITIALIZING", "IN_PROGRESS", "STOPPING", "STOPPED", "COMPLETED", "FAILED", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.type #=> String, one of "REVERSE_GEOCODING", "MAP_MATCHING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/GetVectorEnrichmentJob AWS API Documentation
    #
    # @overload get_vector_enrichment_job(params = {})
    # @param [Hash] params ({})
    def get_vector_enrichment_job(params = {}, options = {})
      req = build_request(:get_vector_enrichment_job, params)
      req.send_request(options)
    end

    # Use this operation to get a list of the Earth Observation jobs
    # associated with the calling Amazon Web Services account.
    #
    # @option params [Integer] :max_results
    #   The total number of items to return.
    #
    # @option params [String] :next_token
    #   If the previous response was truncated, you receive this token. Use it
    #   in your next request to receive the next set of results.
    #
    # @option params [String] :sort_by
    #   The parameter by which to sort the results.
    #
    # @option params [String] :sort_order
    #   An optional value that specifies whether you want the results sorted
    #   in `Ascending` or `Descending` order.
    #
    # @option params [String] :status_equals
    #   A filter that retrieves only jobs with a specific status.
    #
    # @return [Types::ListEarthObservationJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEarthObservationJobOutput#earth_observation_job_summaries #earth_observation_job_summaries} => Array&lt;Types::ListEarthObservationJobOutputConfig&gt;
    #   * {Types::ListEarthObservationJobOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_earth_observation_jobs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_by: "String",
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     status_equals: "INITIALIZING", # accepts INITIALIZING, IN_PROGRESS, STOPPING, COMPLETED, STOPPED, FAILED, DELETING, DELETED
    #   })
    #
    # @example Response structure
    #
    #   resp.earth_observation_job_summaries #=> Array
    #   resp.earth_observation_job_summaries[0].arn #=> String
    #   resp.earth_observation_job_summaries[0].creation_time #=> Time
    #   resp.earth_observation_job_summaries[0].duration_in_seconds #=> Integer
    #   resp.earth_observation_job_summaries[0].name #=> String
    #   resp.earth_observation_job_summaries[0].operation_type #=> String
    #   resp.earth_observation_job_summaries[0].status #=> String, one of "INITIALIZING", "IN_PROGRESS", "STOPPING", "COMPLETED", "STOPPED", "FAILED", "DELETING", "DELETED"
    #   resp.earth_observation_job_summaries[0].tags #=> Hash
    #   resp.earth_observation_job_summaries[0].tags["String"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListEarthObservationJobs AWS API Documentation
    #
    # @overload list_earth_observation_jobs(params = {})
    # @param [Hash] params ({})
    def list_earth_observation_jobs(params = {}, options = {})
      req = build_request(:list_earth_observation_jobs, params)
      req.send_request(options)
    end

    # Use this operation to get raster data collections.
    #
    # @option params [Integer] :max_results
    #   The total number of items to return.
    #
    # @option params [String] :next_token
    #   If the previous response was truncated, you receive this token. Use it
    #   in your next request to receive the next set of results.
    #
    # @return [Types::ListRasterDataCollectionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRasterDataCollectionsOutput#next_token #next_token} => String
    #   * {Types::ListRasterDataCollectionsOutput#raster_data_collection_summaries #raster_data_collection_summaries} => Array&lt;Types::RasterDataCollectionMetadata&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_raster_data_collections({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.raster_data_collection_summaries #=> Array
    #   resp.raster_data_collection_summaries[0].arn #=> String
    #   resp.raster_data_collection_summaries[0].description #=> String
    #   resp.raster_data_collection_summaries[0].description_page_url #=> String
    #   resp.raster_data_collection_summaries[0].name #=> String
    #   resp.raster_data_collection_summaries[0].supported_filters #=> Array
    #   resp.raster_data_collection_summaries[0].supported_filters[0].maximum #=> Float
    #   resp.raster_data_collection_summaries[0].supported_filters[0].minimum #=> Float
    #   resp.raster_data_collection_summaries[0].supported_filters[0].name #=> String
    #   resp.raster_data_collection_summaries[0].supported_filters[0].type #=> String
    #   resp.raster_data_collection_summaries[0].tags #=> Hash
    #   resp.raster_data_collection_summaries[0].tags["String"] #=> String
    #   resp.raster_data_collection_summaries[0].type #=> String, one of "PUBLIC", "PREMIUM", "USER"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListRasterDataCollections AWS API Documentation
    #
    # @overload list_raster_data_collections(params = {})
    # @param [Hash] params ({})
    def list_raster_data_collections(params = {}, options = {})
      req = build_request(:list_raster_data_collections, params)
      req.send_request(options)
    end

    # Lists the tags attached to the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to tag.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "Arn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a list of vector enrichment jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of items to return.
    #
    # @option params [String] :next_token
    #   If the previous response was truncated, you receive this token. Use it
    #   in your next request to receive the next set of results.
    #
    # @option params [String] :sort_by
    #   The parameter by which to sort the results.
    #
    # @option params [String] :sort_order
    #   An optional value that specifies whether you want the results sorted
    #   in `Ascending` or `Descending` order.
    #
    # @option params [String] :status_equals
    #   A filter that retrieves only jobs with a specific status.
    #
    # @return [Types::ListVectorEnrichmentJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVectorEnrichmentJobOutput#next_token #next_token} => String
    #   * {Types::ListVectorEnrichmentJobOutput#vector_enrichment_job_summaries #vector_enrichment_job_summaries} => Array&lt;Types::ListVectorEnrichmentJobOutputConfig&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vector_enrichment_jobs({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     sort_by: "String",
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     status_equals: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.vector_enrichment_job_summaries #=> Array
    #   resp.vector_enrichment_job_summaries[0].arn #=> String
    #   resp.vector_enrichment_job_summaries[0].creation_time #=> Time
    #   resp.vector_enrichment_job_summaries[0].duration_in_seconds #=> Integer
    #   resp.vector_enrichment_job_summaries[0].name #=> String
    #   resp.vector_enrichment_job_summaries[0].status #=> String, one of "INITIALIZING", "IN_PROGRESS", "STOPPING", "STOPPED", "COMPLETED", "FAILED", "DELETING", "DELETED"
    #   resp.vector_enrichment_job_summaries[0].tags #=> Hash
    #   resp.vector_enrichment_job_summaries[0].tags["String"] #=> String
    #   resp.vector_enrichment_job_summaries[0].type #=> String, one of "REVERSE_GEOCODING", "MAP_MATCHING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/ListVectorEnrichmentJobs AWS API Documentation
    #
    # @overload list_vector_enrichment_jobs(params = {})
    # @param [Hash] params ({})
    def list_vector_enrichment_jobs(params = {}, options = {})
      req = build_request(:list_vector_enrichment_jobs, params)
      req.send_request(options)
    end

    # Allows you run image query on a specific raster data collection to get
    # a list of the satellite imagery matching the selected filters.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the raster data collection.
    #
    # @option params [String] :next_token
    #   If the previous response was truncated, you receive this token. Use it
    #   in your next request to receive the next set of results.
    #
    # @option params [required, Types::RasterDataCollectionQueryWithBandFilterInput] :raster_data_collection_query
    #   RasterDataCollectionQuery consisting of [AreaOfInterest(AOI)][1],
    #   [PropertyFilters][2] and [TimeRangeFilterInput][3] used in
    #   [SearchRasterDataCollection][4].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_AreaOfInterest.html
    #   [2]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_PropertyFilter.html
    #   [3]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_TimeRangeFilterInput.html
    #   [4]: https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_geospatial_SearchRasterDataCollection.html
    #
    # @return [Types::SearchRasterDataCollectionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchRasterDataCollectionOutput#approximate_result_count #approximate_result_count} => Integer
    #   * {Types::SearchRasterDataCollectionOutput#items #items} => Array&lt;Types::ItemSource&gt;
    #   * {Types::SearchRasterDataCollectionOutput#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_raster_data_collection({
    #     arn: "DataCollectionArn", # required
    #     next_token: "NextToken",
    #     raster_data_collection_query: { # required
    #       area_of_interest: {
    #         area_of_interest_geometry: {
    #           multi_polygon_geometry: {
    #             coordinates: [ # required
    #               [
    #                 [
    #                   [1.0],
    #                 ],
    #               ],
    #             ],
    #           },
    #           polygon_geometry: {
    #             coordinates: [ # required
    #               [
    #                 [1.0],
    #               ],
    #             ],
    #           },
    #         },
    #       },
    #       band_filter: ["String"],
    #       property_filters: {
    #         logical_operator: "AND", # accepts AND
    #         properties: [
    #           {
    #             property: { # required
    #               eo_cloud_cover: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #               landsat_cloud_cover_land: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #               platform: {
    #                 comparison_operator: "EQUALS", # accepts EQUALS, NOT_EQUALS, STARTS_WITH
    #                 value: "String", # required
    #               },
    #               view_off_nadir: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #               view_sun_azimuth: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #               view_sun_elevation: {
    #                 lower_bound: 1.0, # required
    #                 upper_bound: 1.0, # required
    #               },
    #             },
    #           },
    #         ],
    #       },
    #       time_range_filter: { # required
    #         end_time: Time.now, # required
    #         start_time: Time.now, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.approximate_result_count #=> Integer
    #   resp.items #=> Array
    #   resp.items[0].assets #=> Hash
    #   resp.items[0].assets["String"].href #=> String
    #   resp.items[0].date_time #=> Time
    #   resp.items[0].geometry.coordinates #=> Array
    #   resp.items[0].geometry.coordinates[0] #=> Array
    #   resp.items[0].geometry.coordinates[0][0] #=> Array
    #   resp.items[0].geometry.coordinates[0][0][0] #=> Float
    #   resp.items[0].geometry.type #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].properties.eo_cloud_cover #=> Float
    #   resp.items[0].properties.landsat_cloud_cover_land #=> Float
    #   resp.items[0].properties.platform #=> String
    #   resp.items[0].properties.view_off_nadir #=> Float
    #   resp.items[0].properties.view_sun_azimuth #=> Float
    #   resp.items[0].properties.view_sun_elevation #=> Float
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/SearchRasterDataCollection AWS API Documentation
    #
    # @overload search_raster_data_collection(params = {})
    # @param [Hash] params ({})
    def search_raster_data_collection(params = {}, options = {})
      req = build_request(:search_raster_data_collection, params)
      req.send_request(options)
    end

    # Use this operation to create an Earth observation job.
    #
    # @option params [String] :client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified for
    #   the job.
    #
    # @option params [required, Types::InputConfigInput] :input_config
    #   Input configuration information for the Earth Observation job.
    #
    # @option params [required, Types::JobConfigInput] :job_config
    #   An object containing information about the job configuration.
    #
    # @option params [String] :kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #
    # @option params [required, String] :name
    #   The name of the Earth Observation job.
    #
    # @option params [Hash<String,String>] :tags
    #   Each tag consists of a key and a value.
    #
    # @return [Types::StartEarthObservationJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEarthObservationJobOutput#arn #arn} => String
    #   * {Types::StartEarthObservationJobOutput#creation_time #creation_time} => Time
    #   * {Types::StartEarthObservationJobOutput#duration_in_seconds #duration_in_seconds} => Integer
    #   * {Types::StartEarthObservationJobOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::StartEarthObservationJobOutput#input_config #input_config} => Types::InputConfigOutput
    #   * {Types::StartEarthObservationJobOutput#job_config #job_config} => Types::JobConfigInput
    #   * {Types::StartEarthObservationJobOutput#kms_key_id #kms_key_id} => String
    #   * {Types::StartEarthObservationJobOutput#name #name} => String
    #   * {Types::StartEarthObservationJobOutput#status #status} => String
    #   * {Types::StartEarthObservationJobOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_earth_observation_job({
    #     client_token: "StartEarthObservationJobInputClientTokenString",
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     input_config: { # required
    #       previous_earth_observation_job_arn: "EarthObservationJobArn",
    #       raster_data_collection_query: {
    #         area_of_interest: {
    #           area_of_interest_geometry: {
    #             multi_polygon_geometry: {
    #               coordinates: [ # required
    #                 [
    #                   [
    #                     [1.0],
    #                   ],
    #                 ],
    #               ],
    #             },
    #             polygon_geometry: {
    #               coordinates: [ # required
    #                 [
    #                   [1.0],
    #                 ],
    #               ],
    #             },
    #           },
    #         },
    #         property_filters: {
    #           logical_operator: "AND", # accepts AND
    #           properties: [
    #             {
    #               property: { # required
    #                 eo_cloud_cover: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 landsat_cloud_cover_land: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 platform: {
    #                   comparison_operator: "EQUALS", # accepts EQUALS, NOT_EQUALS, STARTS_WITH
    #                   value: "String", # required
    #                 },
    #                 view_off_nadir: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_sun_azimuth: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #                 view_sun_elevation: {
    #                   lower_bound: 1.0, # required
    #                   upper_bound: 1.0, # required
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         raster_data_collection_arn: "DataCollectionArn", # required
    #         time_range_filter: { # required
    #           end_time: Time.now, # required
    #           start_time: Time.now, # required
    #         },
    #       },
    #     },
    #     job_config: { # required
    #       band_math_config: {
    #         custom_indices: {
    #           operations: [
    #             {
    #               equation: "String", # required
    #               name: "String", # required
    #               output_type: "INT32", # accepts INT32, FLOAT32, INT16, FLOAT64, UINT16
    #             },
    #           ],
    #         },
    #         predefined_indices: ["String"],
    #       },
    #       cloud_masking_config: {
    #       },
    #       cloud_removal_config: {
    #         algorithm_name: "INTERPOLATION", # accepts INTERPOLATION
    #         interpolation_value: "String",
    #         target_bands: ["String"],
    #       },
    #       geo_mosaic_config: {
    #         algorithm_name: "NEAR", # accepts NEAR, BILINEAR, CUBIC, CUBICSPLINE, LANCZOS, AVERAGE, RMS, MODE, MAX, MIN, MED, Q1, Q3, SUM
    #         target_bands: ["String"],
    #       },
    #       land_cover_segmentation_config: {
    #       },
    #       resampling_config: {
    #         algorithm_name: "NEAR", # accepts NEAR, BILINEAR, CUBIC, CUBICSPLINE, LANCZOS, AVERAGE, RMS, MODE, MAX, MIN, MED, Q1, Q3, SUM
    #         output_resolution: { # required
    #           user_defined: { # required
    #             unit: "METERS", # required, accepts METERS
    #             value: 1.0, # required
    #           },
    #         },
    #         target_bands: ["String"],
    #       },
    #       stack_config: {
    #         output_resolution: {
    #           predefined: "HIGHEST", # accepts HIGHEST, LOWEST, AVERAGE
    #           user_defined: {
    #             unit: "METERS", # required, accepts METERS
    #             value: 1.0, # required
    #           },
    #         },
    #         target_bands: ["String"],
    #       },
    #       temporal_statistics_config: {
    #         group_by: "ALL", # accepts ALL, YEARLY
    #         statistics: ["MEAN"], # required, accepts MEAN, MEDIAN, STANDARD_DEVIATION
    #         target_bands: ["String"],
    #       },
    #       zonal_statistics_config: {
    #         statistics: ["MEAN"], # required, accepts MEAN, MEDIAN, STANDARD_DEVIATION, MAX, MIN, SUM
    #         target_bands: ["String"],
    #         zone_s3_path: "S3Uri", # required
    #         zone_s3_path_kms_key_id: "KmsKey",
    #       },
    #     },
    #     kms_key_id: "KmsKey",
    #     name: "StartEarthObservationJobInputNameString", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.duration_in_seconds #=> Integer
    #   resp.execution_role_arn #=> String
    #   resp.input_config.previous_earth_observation_job_arn #=> String
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates[0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates[0][0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates[0][0][0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.multi_polygon_geometry.coordinates[0][0][0][0] #=> Float
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.polygon_geometry.coordinates #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.polygon_geometry.coordinates[0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.polygon_geometry.coordinates[0][0] #=> Array
    #   resp.input_config.raster_data_collection_query.area_of_interest.area_of_interest_geometry.polygon_geometry.coordinates[0][0][0] #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.logical_operator #=> String, one of "AND"
    #   resp.input_config.raster_data_collection_query.property_filters.properties #=> Array
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.eo_cloud_cover.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.eo_cloud_cover.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.landsat_cloud_cover_land.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.landsat_cloud_cover_land.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.platform.comparison_operator #=> String, one of "EQUALS", "NOT_EQUALS", "STARTS_WITH"
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.platform.value #=> String
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_off_nadir.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_off_nadir.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_sun_azimuth.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_sun_azimuth.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_sun_elevation.lower_bound #=> Float
    #   resp.input_config.raster_data_collection_query.property_filters.properties[0].property.view_sun_elevation.upper_bound #=> Float
    #   resp.input_config.raster_data_collection_query.raster_data_collection_arn #=> String
    #   resp.input_config.raster_data_collection_query.raster_data_collection_name #=> String
    #   resp.input_config.raster_data_collection_query.time_range_filter.end_time #=> Time
    #   resp.input_config.raster_data_collection_query.time_range_filter.start_time #=> Time
    #   resp.job_config.band_math_config.custom_indices.operations #=> Array
    #   resp.job_config.band_math_config.custom_indices.operations[0].equation #=> String
    #   resp.job_config.band_math_config.custom_indices.operations[0].name #=> String
    #   resp.job_config.band_math_config.custom_indices.operations[0].output_type #=> String, one of "INT32", "FLOAT32", "INT16", "FLOAT64", "UINT16"
    #   resp.job_config.band_math_config.predefined_indices #=> Array
    #   resp.job_config.band_math_config.predefined_indices[0] #=> String
    #   resp.job_config.cloud_removal_config.algorithm_name #=> String, one of "INTERPOLATION"
    #   resp.job_config.cloud_removal_config.interpolation_value #=> String
    #   resp.job_config.cloud_removal_config.target_bands #=> Array
    #   resp.job_config.cloud_removal_config.target_bands[0] #=> String
    #   resp.job_config.geo_mosaic_config.algorithm_name #=> String, one of "NEAR", "BILINEAR", "CUBIC", "CUBICSPLINE", "LANCZOS", "AVERAGE", "RMS", "MODE", "MAX", "MIN", "MED", "Q1", "Q3", "SUM"
    #   resp.job_config.geo_mosaic_config.target_bands #=> Array
    #   resp.job_config.geo_mosaic_config.target_bands[0] #=> String
    #   resp.job_config.resampling_config.algorithm_name #=> String, one of "NEAR", "BILINEAR", "CUBIC", "CUBICSPLINE", "LANCZOS", "AVERAGE", "RMS", "MODE", "MAX", "MIN", "MED", "Q1", "Q3", "SUM"
    #   resp.job_config.resampling_config.output_resolution.user_defined.unit #=> String, one of "METERS"
    #   resp.job_config.resampling_config.output_resolution.user_defined.value #=> Float
    #   resp.job_config.resampling_config.target_bands #=> Array
    #   resp.job_config.resampling_config.target_bands[0] #=> String
    #   resp.job_config.stack_config.output_resolution.predefined #=> String, one of "HIGHEST", "LOWEST", "AVERAGE"
    #   resp.job_config.stack_config.output_resolution.user_defined.unit #=> String, one of "METERS"
    #   resp.job_config.stack_config.output_resolution.user_defined.value #=> Float
    #   resp.job_config.stack_config.target_bands #=> Array
    #   resp.job_config.stack_config.target_bands[0] #=> String
    #   resp.job_config.temporal_statistics_config.group_by #=> String, one of "ALL", "YEARLY"
    #   resp.job_config.temporal_statistics_config.statistics #=> Array
    #   resp.job_config.temporal_statistics_config.statistics[0] #=> String, one of "MEAN", "MEDIAN", "STANDARD_DEVIATION"
    #   resp.job_config.temporal_statistics_config.target_bands #=> Array
    #   resp.job_config.temporal_statistics_config.target_bands[0] #=> String
    #   resp.job_config.zonal_statistics_config.statistics #=> Array
    #   resp.job_config.zonal_statistics_config.statistics[0] #=> String, one of "MEAN", "MEDIAN", "STANDARD_DEVIATION", "MAX", "MIN", "SUM"
    #   resp.job_config.zonal_statistics_config.target_bands #=> Array
    #   resp.job_config.zonal_statistics_config.target_bands[0] #=> String
    #   resp.job_config.zonal_statistics_config.zone_s3_path #=> String
    #   resp.job_config.zonal_statistics_config.zone_s3_path_kms_key_id #=> String
    #   resp.kms_key_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "INITIALIZING", "IN_PROGRESS", "STOPPING", "COMPLETED", "STOPPED", "FAILED", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StartEarthObservationJob AWS API Documentation
    #
    # @overload start_earth_observation_job(params = {})
    # @param [Hash] params ({})
    def start_earth_observation_job(params = {}, options = {})
      req = build_request(:start_earth_observation_job, params)
      req.send_request(options)
    end

    # Creates a Vector Enrichment job for the supplied job type. Currently,
    # there are two supported job types: reverse geocoding and map matching.
    #
    # @option params [String] :client_token
    #   A unique token that guarantees that the call to this API is
    #   idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :execution_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that you specified for
    #   the job.
    #
    # @option params [required, Types::VectorEnrichmentJobInputConfig] :input_config
    #   Input configuration information for the Vector Enrichment job.
    #
    # @option params [required, Types::VectorEnrichmentJobConfig] :job_config
    #   An object containing information about the job configuration.
    #
    # @option params [String] :kms_key_id
    #   The Key Management Service key ID for server-side encryption.
    #
    # @option params [required, String] :name
    #   The name of the Vector Enrichment job.
    #
    # @option params [Hash<String,String>] :tags
    #   Each tag consists of a key and a value.
    #
    # @return [Types::StartVectorEnrichmentJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartVectorEnrichmentJobOutput#arn #arn} => String
    #   * {Types::StartVectorEnrichmentJobOutput#creation_time #creation_time} => Time
    #   * {Types::StartVectorEnrichmentJobOutput#duration_in_seconds #duration_in_seconds} => Integer
    #   * {Types::StartVectorEnrichmentJobOutput#execution_role_arn #execution_role_arn} => String
    #   * {Types::StartVectorEnrichmentJobOutput#input_config #input_config} => Types::VectorEnrichmentJobInputConfig
    #   * {Types::StartVectorEnrichmentJobOutput#job_config #job_config} => Types::VectorEnrichmentJobConfig
    #   * {Types::StartVectorEnrichmentJobOutput#kms_key_id #kms_key_id} => String
    #   * {Types::StartVectorEnrichmentJobOutput#name #name} => String
    #   * {Types::StartVectorEnrichmentJobOutput#status #status} => String
    #   * {Types::StartVectorEnrichmentJobOutput#tags #tags} => Hash&lt;String,String&gt;
    #   * {Types::StartVectorEnrichmentJobOutput#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_vector_enrichment_job({
    #     client_token: "StartVectorEnrichmentJobInputClientTokenString",
    #     execution_role_arn: "ExecutionRoleArn", # required
    #     input_config: { # required
    #       data_source_config: { # required
    #         s3_data: {
    #           kms_key_id: "KmsKey",
    #           s3_uri: "S3Uri", # required
    #         },
    #       },
    #       document_type: "CSV", # required, accepts CSV
    #     },
    #     job_config: { # required
    #       map_matching_config: {
    #         id_attribute_name: "String", # required
    #         timestamp_attribute_name: "String", # required
    #         x_attribute_name: "String", # required
    #         y_attribute_name: "String", # required
    #       },
    #       reverse_geocoding_config: {
    #         x_attribute_name: "String", # required
    #         y_attribute_name: "String", # required
    #       },
    #     },
    #     kms_key_id: "KmsKey",
    #     name: "StartVectorEnrichmentJobInputNameString", # required
    #     tags: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.creation_time #=> Time
    #   resp.duration_in_seconds #=> Integer
    #   resp.execution_role_arn #=> String
    #   resp.input_config.data_source_config.s3_data.kms_key_id #=> String
    #   resp.input_config.data_source_config.s3_data.s3_uri #=> String
    #   resp.input_config.document_type #=> String, one of "CSV"
    #   resp.job_config.map_matching_config.id_attribute_name #=> String
    #   resp.job_config.map_matching_config.timestamp_attribute_name #=> String
    #   resp.job_config.map_matching_config.x_attribute_name #=> String
    #   resp.job_config.map_matching_config.y_attribute_name #=> String
    #   resp.job_config.reverse_geocoding_config.x_attribute_name #=> String
    #   resp.job_config.reverse_geocoding_config.y_attribute_name #=> String
    #   resp.kms_key_id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "INITIALIZING", "IN_PROGRESS", "STOPPING", "STOPPED", "COMPLETED", "FAILED", "DELETING", "DELETED"
    #   resp.tags #=> Hash
    #   resp.tags["String"] #=> String
    #   resp.type #=> String, one of "REVERSE_GEOCODING", "MAP_MATCHING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StartVectorEnrichmentJob AWS API Documentation
    #
    # @overload start_vector_enrichment_job(params = {})
    # @param [Hash] params ({})
    def start_vector_enrichment_job(params = {}, options = {})
      req = build_request(:start_vector_enrichment_job, params)
      req.send_request(options)
    end

    # Use this operation to stop an existing earth observation job.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Earth Observation job being
    #   stopped.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_earth_observation_job({
    #     arn: "EarthObservationJobArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StopEarthObservationJob AWS API Documentation
    #
    # @overload stop_earth_observation_job(params = {})
    # @param [Hash] params ({})
    def stop_earth_observation_job(params = {}, options = {})
      req = build_request(:stop_earth_observation_job, params)
      req.send_request(options)
    end

    # Stops the Vector Enrichment job for a given job ARN.
    #
    # @option params [required, String] :arn
    #   The Amazon Resource Name (ARN) of the Vector Enrichment job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_vector_enrichment_job({
    #     arn: "VectorEnrichmentJobArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/StopVectorEnrichmentJob AWS API Documentation
    #
    # @overload stop_vector_enrichment_job(params = {})
    # @param [Hash] params ({})
    def stop_vector_enrichment_job(params = {}, options = {})
      req = build_request(:stop_vector_enrichment_job, params)
      req.send_request(options)
    end

    # The resource you want to tag.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to tag.
    #
    # @option params [required, Hash<String,String>] :tags
    #   Each tag consists of a key and a value.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "String" => "String",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # The resource you want to untag.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Keys of the tags you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-geospatial-2020-05-27/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-sagemakergeospatial'
      context[:gem_version] = '1.8.0'
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
