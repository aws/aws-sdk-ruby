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

module Aws::Bedrock
  # An API client for Bedrock.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Bedrock::Client.new(
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

    @identifier = :bedrock

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
    add_plugin(Aws::Bedrock::Plugins::Endpoints)

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
    #   @option options [Aws::Bedrock::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to
    #     `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to
    #     `Aws::Bedrock::EndpointParameters`.
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

    # Creates a batch deletion job. A model evaluation job can only be
    # deleted if it has following status `FAILED`, `COMPLETED`, and
    # `STOPPED`. You can request up to 25 model evaluation jobs be deleted
    # in a single request.
    #
    # @option params [required, Array<String>] :job_identifiers
    #   An array of model evaluation job ARNs to be deleted.
    #
    # @return [Types::BatchDeleteEvaluationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteEvaluationJobResponse#errors #errors} => Array&lt;Types::BatchDeleteEvaluationJobError&gt;
    #   * {Types::BatchDeleteEvaluationJobResponse#evaluation_jobs #evaluation_jobs} => Array&lt;Types::BatchDeleteEvaluationJobItem&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_evaluation_job({
    #     job_identifiers: ["EvaluationJobIdentifier"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.errors #=> Array
    #   resp.errors[0].job_identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #   resp.evaluation_jobs #=> Array
    #   resp.evaluation_jobs[0].job_identifier #=> String
    #   resp.evaluation_jobs[0].job_status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped", "Deleting"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/BatchDeleteEvaluationJob AWS API Documentation
    #
    # @overload batch_delete_evaluation_job(params = {})
    # @param [Hash] params ({})
    def batch_delete_evaluation_job(params = {}, options = {})
      req = build_request(:batch_delete_evaluation_job, params)
      req.send_request(options)
    end

    # API operation for creating and managing Amazon Bedrock automatic model
    # evaluation jobs and model evaluation jobs that use human workers. To
    # learn more about the requirements for creating a model evaluation job
    # see, [Model evaluation][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation.html
    #
    # @option params [required, String] :job_name
    #   The name of the model evaluation job. Model evaluation job names must
    #   unique with your AWS account, and your account's AWS region.
    #
    # @option params [String] :job_description
    #   A description of the model evaluation job.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM service role that Amazon
    #   Bedrock can assume to perform tasks on your behalf. The service role
    #   must have Amazon Bedrock as the service principal, and provide access
    #   to any Amazon S3 buckets specified in the `EvaluationConfig` object.
    #   To pass this role to Amazon Bedrock, the caller of this API must have
    #   the `iam:PassRole` permission. To learn more about the required
    #   permissions, see [Required permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html
    #
    # @option params [String] :customer_encryption_key_id
    #   Specify your customer managed key ARN that will be used to encrypt
    #   your model evaluation job.
    #
    # @option params [Array<Types::Tag>] :job_tags
    #   Tags to attach to the model evaluation job.
    #
    # @option params [required, Types::EvaluationConfig] :evaluation_config
    #   Specifies whether the model evaluation job is automatic or uses human
    #   worker.
    #
    # @option params [required, Types::EvaluationInferenceConfig] :inference_config
    #   Specify the models you want to use in your model evaluation job.
    #   Automatic model evaluation jobs support a single model or [inference
    #   profile][1], and model evaluation job that use human workers support
    #   two models or inference profiles.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/cross-region-inference.html
    #
    # @option params [required, Types::EvaluationOutputDataConfig] :output_data_config
    #   An object that defines where the results of model evaluation job will
    #   be saved in Amazon S3.
    #
    # @return [Types::CreateEvaluationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEvaluationJobResponse#job_arn #job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_evaluation_job({
    #     job_name: "EvaluationJobName", # required
    #     job_description: "EvaluationJobDescription",
    #     client_request_token: "IdempotencyToken",
    #     role_arn: "RoleArn", # required
    #     customer_encryption_key_id: "KmsKeyId",
    #     job_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     evaluation_config: { # required
    #       automated: {
    #         dataset_metric_configs: [ # required
    #           {
    #             task_type: "Summarization", # required, accepts Summarization, Classification, QuestionAndAnswer, Generation, Custom
    #             dataset: { # required
    #               name: "EvaluationDatasetName", # required
    #               dataset_location: {
    #                 s3_uri: "S3Uri",
    #               },
    #             },
    #             metric_names: ["EvaluationMetricName"], # required
    #           },
    #         ],
    #       },
    #       human: {
    #         human_workflow_config: {
    #           flow_definition_arn: "SageMakerFlowDefinitionArn", # required
    #           instructions: "HumanTaskInstructions",
    #         },
    #         custom_metrics: [
    #           {
    #             name: "EvaluationMetricName", # required
    #             description: "EvaluationMetricDescription",
    #             rating_method: "EvaluationRatingMethod", # required
    #           },
    #         ],
    #         dataset_metric_configs: [ # required
    #           {
    #             task_type: "Summarization", # required, accepts Summarization, Classification, QuestionAndAnswer, Generation, Custom
    #             dataset: { # required
    #               name: "EvaluationDatasetName", # required
    #               dataset_location: {
    #                 s3_uri: "S3Uri",
    #               },
    #             },
    #             metric_names: ["EvaluationMetricName"], # required
    #           },
    #         ],
    #       },
    #     },
    #     inference_config: { # required
    #       models: [
    #         {
    #           bedrock_model: {
    #             model_identifier: "EvaluationModelIdentifier", # required
    #             inference_params: "EvaluationModelInferenceParams", # required
    #           },
    #         },
    #       ],
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateEvaluationJob AWS API Documentation
    #
    # @overload create_evaluation_job(params = {})
    # @param [Hash] params ({})
    def create_evaluation_job(params = {}, options = {})
      req = build_request(:create_evaluation_job, params)
      req.send_request(options)
    end

    # Creates a guardrail to block topics and to implement safeguards for
    # your generative AI applications.
    #
    # You can configure the following policies in a guardrail to avoid
    # undesirable and harmful content, filter out denied topics and words,
    # and remove sensitive information for privacy protection.
    #
    # * **Content filters** - Adjust filter strengths to block input prompts
    #   or model responses containing harmful content.
    #
    # * **Denied topics** - Define a set of topics that are undesirable in
    #   the context of your application. These topics will be blocked if
    #   detected in user queries or model responses.
    #
    # * **Word filters** - Configure filters to block undesirable words,
    #   phrases, and profanity. Such words can include offensive terms,
    #   competitor names etc.
    #
    # * **Sensitive information filters** - Block or mask sensitive
    #   information such as personally identifiable information (PII) or
    #   custom regex in user inputs and model responses.
    #
    # In addition to the above policies, you can also configure the messages
    # to be returned to the user if a user input or model response is in
    # violation of the policies defined in the guardrail.
    #
    # For more information, see [Guardrails for Amazon Bedrock][1] in the
    # *Amazon Bedrock User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html
    #
    # @option params [required, String] :name
    #   The name to give the guardrail.
    #
    # @option params [String] :description
    #   A description of the guardrail.
    #
    # @option params [Types::GuardrailTopicPolicyConfig] :topic_policy_config
    #   The topic policies to configure for the guardrail.
    #
    # @option params [Types::GuardrailContentPolicyConfig] :content_policy_config
    #   The content filter policies to configure for the guardrail.
    #
    # @option params [Types::GuardrailWordPolicyConfig] :word_policy_config
    #   The word policy you configure for the guardrail.
    #
    # @option params [Types::GuardrailSensitiveInformationPolicyConfig] :sensitive_information_policy_config
    #   The sensitive information policy to configure for the guardrail.
    #
    # @option params [Types::GuardrailContextualGroundingPolicyConfig] :contextual_grounding_policy_config
    #   The contextual grounding policy configuration used to create a
    #   guardrail.
    #
    # @option params [required, String] :blocked_input_messaging
    #   The message to return when the guardrail blocks a prompt.
    #
    # @option params [required, String] :blocked_outputs_messaging
    #   The message to return when the guardrail blocks a model response.
    #
    # @option params [String] :kms_key_id
    #   The ARN of the KMS key that you use to encrypt the guardrail.
    #
    # @option params [Array<Types::Tag>] :tags
    #   The tags that you want to attach to the guardrail.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than once. If this token matches a previous request,
    #   Amazon Bedrock ignores the request, but does not return an error. For
    #   more information, see [Ensuring idempotency][1] in the *Amazon S3 User
    #   Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateGuardrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGuardrailResponse#guardrail_id #guardrail_id} => String
    #   * {Types::CreateGuardrailResponse#guardrail_arn #guardrail_arn} => String
    #   * {Types::CreateGuardrailResponse#version #version} => String
    #   * {Types::CreateGuardrailResponse#created_at #created_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_guardrail({
    #     name: "GuardrailName", # required
    #     description: "GuardrailDescription",
    #     topic_policy_config: {
    #       topics_config: [ # required
    #         {
    #           name: "GuardrailTopicName", # required
    #           definition: "GuardrailTopicDefinition", # required
    #           examples: ["GuardrailTopicExample"],
    #           type: "DENY", # required, accepts DENY
    #         },
    #       ],
    #     },
    #     content_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "SEXUAL", # required, accepts SEXUAL, VIOLENCE, HATE, INSULTS, MISCONDUCT, PROMPT_ATTACK
    #           input_strength: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH
    #           output_strength: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH
    #         },
    #       ],
    #     },
    #     word_policy_config: {
    #       words_config: [
    #         {
    #           text: "GuardrailWordConfigTextString", # required
    #         },
    #       ],
    #       managed_word_lists_config: [
    #         {
    #           type: "PROFANITY", # required, accepts PROFANITY
    #         },
    #       ],
    #     },
    #     sensitive_information_policy_config: {
    #       pii_entities_config: [
    #         {
    #           type: "ADDRESS", # required, accepts ADDRESS, AGE, AWS_ACCESS_KEY, AWS_SECRET_KEY, CA_HEALTH_NUMBER, CA_SOCIAL_INSURANCE_NUMBER, CREDIT_DEBIT_CARD_CVV, CREDIT_DEBIT_CARD_EXPIRY, CREDIT_DEBIT_CARD_NUMBER, DRIVER_ID, EMAIL, INTERNATIONAL_BANK_ACCOUNT_NUMBER, IP_ADDRESS, LICENSE_PLATE, MAC_ADDRESS, NAME, PASSWORD, PHONE, PIN, SWIFT_CODE, UK_NATIONAL_HEALTH_SERVICE_NUMBER, UK_NATIONAL_INSURANCE_NUMBER, UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER, URL, USERNAME, US_BANK_ACCOUNT_NUMBER, US_BANK_ROUTING_NUMBER, US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER, US_PASSPORT_NUMBER, US_SOCIAL_SECURITY_NUMBER, VEHICLE_IDENTIFICATION_NUMBER
    #           action: "BLOCK", # required, accepts BLOCK, ANONYMIZE
    #         },
    #       ],
    #       regexes_config: [
    #         {
    #           name: "GuardrailRegexConfigNameString", # required
    #           description: "GuardrailRegexConfigDescriptionString",
    #           pattern: "GuardrailRegexConfigPatternString", # required
    #           action: "BLOCK", # required, accepts BLOCK, ANONYMIZE
    #         },
    #       ],
    #     },
    #     contextual_grounding_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "GROUNDING", # required, accepts GROUNDING, RELEVANCE
    #           threshold: 1.0, # required
    #         },
    #       ],
    #     },
    #     blocked_input_messaging: "GuardrailBlockedMessaging", # required
    #     blocked_outputs_messaging: "GuardrailBlockedMessaging", # required
    #     kms_key_id: "KmsKeyId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.guardrail_id #=> String
    #   resp.guardrail_arn #=> String
    #   resp.version #=> String
    #   resp.created_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateGuardrail AWS API Documentation
    #
    # @overload create_guardrail(params = {})
    # @param [Hash] params ({})
    def create_guardrail(params = {}, options = {})
      req = build_request(:create_guardrail, params)
      req.send_request(options)
    end

    # Creates a version of the guardrail. Use this API to create a snapshot
    # of the guardrail when you are satisfied with a configuration, or to
    # compare the configuration with another version.
    #
    # @option params [required, String] :guardrail_identifier
    #   The unique identifier of the guardrail. This can be an ID or the ARN.
    #
    # @option params [String] :description
    #   A description of the guardrail version.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than once. If this token matches a previous request,
    #   Amazon Bedrock ignores the request, but does not return an error. For
    #   more information, see [Ensuring idempotency][1] in the *Amazon S3 User
    #   Guide*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateGuardrailVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGuardrailVersionResponse#guardrail_id #guardrail_id} => String
    #   * {Types::CreateGuardrailVersionResponse#version #version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_guardrail_version({
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     description: "GuardrailDescription",
    #     client_request_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.guardrail_id #=> String
    #   resp.version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateGuardrailVersion AWS API Documentation
    #
    # @overload create_guardrail_version(params = {})
    # @param [Hash] params ({})
    def create_guardrail_version(params = {}, options = {})
      req = build_request(:create_guardrail_version, params)
      req.send_request(options)
    end

    # Copies a model to another region so that it can be used there. For
    # more information, see [Copy models to be used in other regions][1] in
    # the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :source_model_arn
    #   The Amazon Resource Name (ARN) of the model to be copied.
    #
    # @option params [required, String] :target_model_name
    #   A name for the copied model.
    #
    # @option params [String] :model_kms_key_id
    #   The ARN of the KMS key that you use to encrypt the model copy.
    #
    # @option params [Array<Types::Tag>] :target_model_tags
    #   Tags to associate with the target model. For more information, see
    #   [Tag resources][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @return [Types::CreateModelCopyJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelCopyJobResponse#job_arn #job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_copy_job({
    #     source_model_arn: "ModelArn", # required
    #     target_model_name: "CustomModelName", # required
    #     model_kms_key_id: "KmsKeyId",
    #     target_model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "IdempotencyToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateModelCopyJob AWS API Documentation
    #
    # @overload create_model_copy_job(params = {})
    # @param [Hash] params ({})
    def create_model_copy_job(params = {}, options = {})
      req = build_request(:create_model_copy_job, params)
      req.send_request(options)
    end

    # Creates a fine-tuning job to customize a base model.
    #
    # You specify the base foundation model and the location of the training
    # data. After the model-customization job completes successfully, your
    # custom model resource will be ready to use. Amazon Bedrock returns
    # validation loss metrics and output generations after the job
    # completes.
    #
    # For information on the format of training and validation data, see
    # [Prepare the datasets][1].
    #
    # Model-customization jobs are asynchronous and the completion time
    # depends on the base model and the training/validation data size. To
    # monitor a job, use the `GetModelCustomizationJob` operation to
    # retrieve the job status.
    #
    # For more information, see [Custom models][2] in the [Amazon Bedrock
    # User Guide][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-prepare.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :job_name
    #   A name for the fine-tuning job.
    #
    # @option params [required, String] :custom_model_name
    #   A name for the resulting custom model.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of an IAM service role that Amazon
    #   Bedrock can assume to perform tasks on your behalf. For example,
    #   during model training, Amazon Bedrock needs your permission to read
    #   input data from an S3 bucket, write model artifacts to an S3 bucket.
    #   To pass this role to Amazon Bedrock, the caller of this API must have
    #   the `iam:PassRole` permission.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :base_model_identifier
    #   Name of the base model.
    #
    # @option params [String] :customization_type
    #   The customization type.
    #
    # @option params [String] :custom_model_kms_key_id
    #   The custom model is encrypted at rest using this key.
    #
    # @option params [Array<Types::Tag>] :job_tags
    #   Tags to attach to the job.
    #
    # @option params [Array<Types::Tag>] :custom_model_tags
    #   Tags to attach to the resulting custom model.
    #
    # @option params [required, Types::TrainingDataConfig] :training_data_config
    #   Information about the training dataset.
    #
    # @option params [Types::ValidationDataConfig] :validation_data_config
    #   Information about the validation dataset.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   S3 location for the output data.
    #
    # @option params [required, Hash<String,String>] :hyper_parameters
    #   Parameters related to tuning the model. For details on the format for
    #   different models, see [Custom model hyperparameters][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The configuration of the Virtual Private Cloud (VPC) that contains the
    #   resources that you're using for this job. For more information, see
    #   [Protect your model customization jobs using a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/vpc-model-customization.html
    #
    # @return [Types::CreateModelCustomizationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelCustomizationJobResponse#job_arn #job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_customization_job({
    #     job_name: "JobName", # required
    #     custom_model_name: "CustomModelName", # required
    #     role_arn: "RoleArn", # required
    #     client_request_token: "IdempotencyToken",
    #     base_model_identifier: "BaseModelIdentifier", # required
    #     customization_type: "FINE_TUNING", # accepts FINE_TUNING, CONTINUED_PRE_TRAINING
    #     custom_model_kms_key_id: "KmsKeyId",
    #     job_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     custom_model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     training_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     validation_data_config: {
    #       validators: [ # required
    #         {
    #           s3_uri: "S3Uri", # required
    #         },
    #       ],
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #     },
    #     hyper_parameters: { # required
    #       "String" => "String",
    #     },
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateModelCustomizationJob AWS API Documentation
    #
    # @overload create_model_customization_job(params = {})
    # @param [Hash] params ({})
    def create_model_customization_job(params = {}, options = {})
      req = build_request(:create_model_customization_job, params)
      req.send_request(options)
    end

    # Creates a model import job to import model that you have customized in
    # other environments, such as Amazon SageMaker. For more information,
    # see [Import a customized model][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    #
    # @option params [required, String] :job_name
    #   The name of the import job.
    #
    # @option params [required, String] :imported_model_name
    #   The name of the imported model.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the model import job.
    #
    # @option params [required, Types::ModelDataSource] :model_data_source
    #   The data source for the imported model.
    #
    # @option params [Array<Types::Tag>] :job_tags
    #   Tags to attach to this import job.
    #
    # @option params [Array<Types::Tag>] :imported_model_tags
    #   Tags to attach to the imported model.
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   VPC configuration parameters for the private Virtual Private Cloud
    #   (VPC) that contains the resources you are using for the import job.
    #
    # @option params [String] :imported_model_kms_key_id
    #   The imported model is encrypted at rest using this key.
    #
    # @return [Types::CreateModelImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelImportJobResponse#job_arn #job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_import_job({
    #     job_name: "JobName", # required
    #     imported_model_name: "ImportedModelName", # required
    #     role_arn: "RoleArn", # required
    #     model_data_source: { # required
    #       s3_data_source: {
    #         s3_uri: "S3Uri", # required
    #       },
    #     },
    #     job_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     imported_model_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     client_request_token: "IdempotencyToken",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     imported_model_kms_key_id: "KmsKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateModelImportJob AWS API Documentation
    #
    # @overload create_model_import_job(params = {})
    # @param [Hash] params ({})
    def create_model_import_job(params = {}, options = {})
      req = build_request(:create_model_import_job, params)
      req.send_request(options)
    end

    # Creates a batch inference job to invoke a model on multiple prompts.
    # Format your data according to [Format your inference data][1] and
    # upload it to an Amazon S3 bucket. For more information, see [Process
    # multiple prompts with batch inference][2].
    #
    # The response returns a `jobArn` that you can use to stop or get
    # details about the job.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-data
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference.html
    #
    # @option params [required, String] :job_name
    #   A name to give the batch inference job.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) of the service role with permissions to
    #   carry out and manage batch inference. You can use the console to
    #   create a default service role or follow the steps at [Create a service
    #   role for batch inference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, String] :model_id
    #   The unique identifier of the foundation model to use for the batch
    #   inference job.
    #
    # @option params [required, Types::ModelInvocationJobInputDataConfig] :input_data_config
    #   Details about the location of the input to the batch inference job.
    #
    # @option params [required, Types::ModelInvocationJobOutputDataConfig] :output_data_config
    #   Details about the location of the output of the batch inference job.
    #
    # @option params [Types::VpcConfig] :vpc_config
    #   The configuration of the Virtual Private Cloud (VPC) for the data in
    #   the batch inference job. For more information, see [Protect batch
    #   inference jobs using a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-vpc
    #
    # @option params [Integer] :timeout_duration_in_hours
    #   The number of hours after which to force the batch inference job to
    #   time out.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Any tags to associate with the batch inference job. For more
    #   information, see [Tagging Amazon Bedrock resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    #
    # @return [Types::CreateModelInvocationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateModelInvocationJobResponse#job_arn #job_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_model_invocation_job({
    #     job_name: "ModelInvocationJobName", # required
    #     role_arn: "RoleArn", # required
    #     client_request_token: "ModelInvocationIdempotencyToken",
    #     model_id: "ModelId", # required
    #     input_data_config: { # required
    #       s3_input_data_config: {
    #         s3_input_format: "JSONL", # accepts JSONL
    #         s3_uri: "S3Uri", # required
    #         s3_bucket_owner: "AccountId",
    #       },
    #     },
    #     output_data_config: { # required
    #       s3_output_data_config: {
    #         s3_uri: "S3Uri", # required
    #         s3_encryption_key_id: "KmsKeyId",
    #         s3_bucket_owner: "AccountId",
    #       },
    #     },
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"], # required
    #     },
    #     timeout_duration_in_hours: 1,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateModelInvocationJob AWS API Documentation
    #
    # @overload create_model_invocation_job(params = {})
    # @param [Hash] params ({})
    def create_model_invocation_job(params = {}, options = {})
      req = build_request(:create_model_invocation_job, params)
      req.send_request(options)
    end

    # Creates dedicated throughput for a base or custom model with the model
    # units and for the duration that you specify. For pricing details, see
    # [Amazon Bedrock Pricing][1]. For more information, see [Provisioned
    # Throughput][2] in the [Amazon Bedrock User Guide][3].
    #
    #
    #
    # [1]: http://aws.amazon.com/bedrock/pricing/
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [String] :client_request_token
    #   A unique, case-sensitive identifier to ensure that the API request
    #   completes no more than one time. If this token matches a previous
    #   request, Amazon Bedrock ignores the request, but does not return an
    #   error. For more information, see [Ensuring idempotency][1] in the
    #   Amazon S3 User Guide.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #
    # @option params [required, Integer] :model_units
    #   Number of model units to allocate. A model unit delivers a specific
    #   throughput level for the specified model. The throughput level of a
    #   model unit specifies the total number of input and output tokens that
    #   it can process and generate within a span of one minute. By default,
    #   your account has no model units for purchasing Provisioned Throughputs
    #   with commitment. You must first visit the [Amazon Web Services support
    #   center][1] to request MUs.
    #
    #   For model unit quotas, see [Provisioned Throughput quotas][2] in the
    #   [Amazon Bedrock User Guide][3].
    #
    #   For more information about what an MU specifies, contact your Amazon
    #   Web Services account manager.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/quotas.html#prov-thru-quotas
    #   [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :provisioned_model_name
    #   The name for this Provisioned Throughput.
    #
    # @option params [required, String] :model_id
    #   The Amazon Resource Name (ARN) or name of the model to associate with
    #   this Provisioned Throughput. For a list of models for which you can
    #   purchase Provisioned Throughput, see [Amazon Bedrock model IDs for
    #   purchasing Provisioned Throughput][1] in the [Amazon Bedrock User
    #   Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-ids.html#prov-throughput-models
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [String] :commitment_duration
    #   The commitment duration requested for the Provisioned Throughput.
    #   Billing occurs hourly and is discounted for longer commitment terms.
    #   To request a no-commit Provisioned Throughput, omit this field.
    #
    #   Custom models support all levels of commitment. To see which base
    #   models support no commitment, see [Supported regions and models for
    #   Provisioned Throughput][1] in the [Amazon Bedrock User Guide][2]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/pt-supported.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with this Provisioned Throughput.
    #
    # @return [Types::CreateProvisionedModelThroughputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisionedModelThroughputResponse#provisioned_model_arn #provisioned_model_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioned_model_throughput({
    #     client_request_token: "IdempotencyToken",
    #     model_units: 1, # required
    #     provisioned_model_name: "ProvisionedModelName", # required
    #     model_id: "ModelIdentifier", # required
    #     commitment_duration: "OneMonth", # accepts OneMonth, SixMonths
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_model_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/CreateProvisionedModelThroughput AWS API Documentation
    #
    # @overload create_provisioned_model_throughput(params = {})
    # @param [Hash] params ({})
    def create_provisioned_model_throughput(params = {}, options = {})
      req = build_request(:create_provisioned_model_throughput, params)
      req.send_request(options)
    end

    # Deletes a custom model that you created earlier. For more information,
    # see [Custom models][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :model_identifier
    #   Name of the model to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_model({
    #     model_identifier: "ModelIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteCustomModel AWS API Documentation
    #
    # @overload delete_custom_model(params = {})
    # @param [Hash] params ({})
    def delete_custom_model(params = {}, options = {})
      req = build_request(:delete_custom_model, params)
      req.send_request(options)
    end

    # Deletes a guardrail.
    #
    # * To delete a guardrail, only specify the ARN of the guardrail in the
    #   `guardrailIdentifier` field. If you delete a guardrail, all of its
    #   versions will be deleted.
    #
    # * To delete a version of a guardrail, specify the ARN of the guardrail
    #   in the `guardrailIdentifier` field and the version in the
    #   `guardrailVersion` field.
    #
    # @option params [required, String] :guardrail_identifier
    #   The unique identifier of the guardrail. This can be an ID or the ARN.
    #
    # @option params [String] :guardrail_version
    #   The version of the guardrail.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_guardrail({
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     guardrail_version: "GuardrailNumericalVersion",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteGuardrail AWS API Documentation
    #
    # @overload delete_guardrail(params = {})
    # @param [Hash] params ({})
    def delete_guardrail(params = {}, options = {})
      req = build_request(:delete_guardrail, params)
      req.send_request(options)
    end

    # Deletes a custom model that you imported earlier. For more
    # information, see [Import a customized model][1] in the [Amazon Bedrock
    # User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :model_identifier
    #   Name of the imported model to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_imported_model({
    #     model_identifier: "ImportedModelIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteImportedModel AWS API Documentation
    #
    # @overload delete_imported_model(params = {})
    # @param [Hash] params ({})
    def delete_imported_model(params = {}, options = {})
      req = build_request(:delete_imported_model, params)
      req.send_request(options)
    end

    # Delete the invocation logging.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteModelInvocationLoggingConfiguration AWS API Documentation
    #
    # @overload delete_model_invocation_logging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_model_invocation_logging_configuration(params = {}, options = {})
      req = build_request(:delete_model_invocation_logging_configuration, params)
      req.send_request(options)
    end

    # Deletes a Provisioned Throughput. You can't delete a Provisioned
    # Throughput before the commitment term is over. For more information,
    # see [Provisioned Throughput][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :provisioned_model_id
    #   The Amazon Resource Name (ARN) or name of the Provisioned Throughput.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioned_model_throughput({
    #     provisioned_model_id: "ProvisionedModelId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/DeleteProvisionedModelThroughput AWS API Documentation
    #
    # @overload delete_provisioned_model_throughput(params = {})
    # @param [Hash] params ({})
    def delete_provisioned_model_throughput(params = {}, options = {})
      req = build_request(:delete_provisioned_model_throughput, params)
      req.send_request(options)
    end

    # Get the properties associated with a Amazon Bedrock custom model that
    # you have created.For more information, see [Custom models][1] in the
    # [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :model_identifier
    #   Name or Amazon Resource Name (ARN) of the custom model.
    #
    # @return [Types::GetCustomModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCustomModelResponse#model_arn #model_arn} => String
    #   * {Types::GetCustomModelResponse#model_name #model_name} => String
    #   * {Types::GetCustomModelResponse#job_name #job_name} => String
    #   * {Types::GetCustomModelResponse#job_arn #job_arn} => String
    #   * {Types::GetCustomModelResponse#base_model_arn #base_model_arn} => String
    #   * {Types::GetCustomModelResponse#customization_type #customization_type} => String
    #   * {Types::GetCustomModelResponse#model_kms_key_arn #model_kms_key_arn} => String
    #   * {Types::GetCustomModelResponse#hyper_parameters #hyper_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetCustomModelResponse#training_data_config #training_data_config} => Types::TrainingDataConfig
    #   * {Types::GetCustomModelResponse#validation_data_config #validation_data_config} => Types::ValidationDataConfig
    #   * {Types::GetCustomModelResponse#output_data_config #output_data_config} => Types::OutputDataConfig
    #   * {Types::GetCustomModelResponse#training_metrics #training_metrics} => Types::TrainingMetrics
    #   * {Types::GetCustomModelResponse#validation_metrics #validation_metrics} => Array&lt;Types::ValidatorMetric&gt;
    #   * {Types::GetCustomModelResponse#creation_time #creation_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_custom_model({
    #     model_identifier: "ModelIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #   resp.model_name #=> String
    #   resp.job_name #=> String
    #   resp.job_arn #=> String
    #   resp.base_model_arn #=> String
    #   resp.customization_type #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.model_kms_key_arn #=> String
    #   resp.hyper_parameters #=> Hash
    #   resp.hyper_parameters["String"] #=> String
    #   resp.training_data_config.s3_uri #=> String
    #   resp.validation_data_config.validators #=> Array
    #   resp.validation_data_config.validators[0].s3_uri #=> String
    #   resp.output_data_config.s3_uri #=> String
    #   resp.training_metrics.training_loss #=> Float
    #   resp.validation_metrics #=> Array
    #   resp.validation_metrics[0].validation_loss #=> Float
    #   resp.creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetCustomModel AWS API Documentation
    #
    # @overload get_custom_model(params = {})
    # @param [Hash] params ({})
    def get_custom_model(params = {}, options = {})
      req = build_request(:get_custom_model, params)
      req.send_request(options)
    end

    # Retrieves the properties associated with a model evaluation job,
    # including the status of the job. For more information, see [Model
    # evaluation][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation.html
    #
    # @option params [required, String] :job_identifier
    #   The Amazon Resource Name (ARN) of the model evaluation job.
    #
    # @return [Types::GetEvaluationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEvaluationJobResponse#job_name #job_name} => String
    #   * {Types::GetEvaluationJobResponse#status #status} => String
    #   * {Types::GetEvaluationJobResponse#job_arn #job_arn} => String
    #   * {Types::GetEvaluationJobResponse#job_description #job_description} => String
    #   * {Types::GetEvaluationJobResponse#role_arn #role_arn} => String
    #   * {Types::GetEvaluationJobResponse#customer_encryption_key_id #customer_encryption_key_id} => String
    #   * {Types::GetEvaluationJobResponse#job_type #job_type} => String
    #   * {Types::GetEvaluationJobResponse#evaluation_config #evaluation_config} => Types::EvaluationConfig
    #   * {Types::GetEvaluationJobResponse#inference_config #inference_config} => Types::EvaluationInferenceConfig
    #   * {Types::GetEvaluationJobResponse#output_data_config #output_data_config} => Types::EvaluationOutputDataConfig
    #   * {Types::GetEvaluationJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetEvaluationJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetEvaluationJobResponse#failure_messages #failure_messages} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_evaluation_job({
    #     job_identifier: "EvaluationJobIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_name #=> String
    #   resp.status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped", "Deleting"
    #   resp.job_arn #=> String
    #   resp.job_description #=> String
    #   resp.role_arn #=> String
    #   resp.customer_encryption_key_id #=> String
    #   resp.job_type #=> String, one of "Human", "Automated"
    #   resp.evaluation_config.automated.dataset_metric_configs #=> Array
    #   resp.evaluation_config.automated.dataset_metric_configs[0].task_type #=> String, one of "Summarization", "Classification", "QuestionAndAnswer", "Generation", "Custom"
    #   resp.evaluation_config.automated.dataset_metric_configs[0].dataset.name #=> String
    #   resp.evaluation_config.automated.dataset_metric_configs[0].dataset.dataset_location.s3_uri #=> String
    #   resp.evaluation_config.automated.dataset_metric_configs[0].metric_names #=> Array
    #   resp.evaluation_config.automated.dataset_metric_configs[0].metric_names[0] #=> String
    #   resp.evaluation_config.human.human_workflow_config.flow_definition_arn #=> String
    #   resp.evaluation_config.human.human_workflow_config.instructions #=> String
    #   resp.evaluation_config.human.custom_metrics #=> Array
    #   resp.evaluation_config.human.custom_metrics[0].name #=> String
    #   resp.evaluation_config.human.custom_metrics[0].description #=> String
    #   resp.evaluation_config.human.custom_metrics[0].rating_method #=> String
    #   resp.evaluation_config.human.dataset_metric_configs #=> Array
    #   resp.evaluation_config.human.dataset_metric_configs[0].task_type #=> String, one of "Summarization", "Classification", "QuestionAndAnswer", "Generation", "Custom"
    #   resp.evaluation_config.human.dataset_metric_configs[0].dataset.name #=> String
    #   resp.evaluation_config.human.dataset_metric_configs[0].dataset.dataset_location.s3_uri #=> String
    #   resp.evaluation_config.human.dataset_metric_configs[0].metric_names #=> Array
    #   resp.evaluation_config.human.dataset_metric_configs[0].metric_names[0] #=> String
    #   resp.inference_config.models #=> Array
    #   resp.inference_config.models[0].bedrock_model.model_identifier #=> String
    #   resp.inference_config.models[0].bedrock_model.inference_params #=> String
    #   resp.output_data_config.s3_uri #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.failure_messages #=> Array
    #   resp.failure_messages[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetEvaluationJob AWS API Documentation
    #
    # @overload get_evaluation_job(params = {})
    # @param [Hash] params ({})
    def get_evaluation_job(params = {}, options = {})
      req = build_request(:get_evaluation_job, params)
      req.send_request(options)
    end

    # Get details about a Amazon Bedrock foundation model.
    #
    # @option params [required, String] :model_identifier
    #   The model identifier.
    #
    # @return [Types::GetFoundationModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFoundationModelResponse#model_details #model_details} => Types::FoundationModelDetails
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_foundation_model({
    #     model_identifier: "ModelIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_details.model_arn #=> String
    #   resp.model_details.model_id #=> String
    #   resp.model_details.model_name #=> String
    #   resp.model_details.provider_name #=> String
    #   resp.model_details.input_modalities #=> Array
    #   resp.model_details.input_modalities[0] #=> String, one of "TEXT", "IMAGE", "EMBEDDING"
    #   resp.model_details.output_modalities #=> Array
    #   resp.model_details.output_modalities[0] #=> String, one of "TEXT", "IMAGE", "EMBEDDING"
    #   resp.model_details.response_streaming_supported #=> Boolean
    #   resp.model_details.customizations_supported #=> Array
    #   resp.model_details.customizations_supported[0] #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.model_details.inference_types_supported #=> Array
    #   resp.model_details.inference_types_supported[0] #=> String, one of "ON_DEMAND", "PROVISIONED"
    #   resp.model_details.model_lifecycle.status #=> String, one of "ACTIVE", "LEGACY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetFoundationModel AWS API Documentation
    #
    # @overload get_foundation_model(params = {})
    # @param [Hash] params ({})
    def get_foundation_model(params = {}, options = {})
      req = build_request(:get_foundation_model, params)
      req.send_request(options)
    end

    # Gets details about a guardrail. If you don't specify a version, the
    # response returns details for the `DRAFT` version.
    #
    # @option params [required, String] :guardrail_identifier
    #   The unique identifier of the guardrail for which to get details. This
    #   can be an ID or the ARN.
    #
    # @option params [String] :guardrail_version
    #   The version of the guardrail for which to get details. If you don't
    #   specify a version, the response returns details for the `DRAFT`
    #   version.
    #
    # @return [Types::GetGuardrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGuardrailResponse#name #name} => String
    #   * {Types::GetGuardrailResponse#description #description} => String
    #   * {Types::GetGuardrailResponse#guardrail_id #guardrail_id} => String
    #   * {Types::GetGuardrailResponse#guardrail_arn #guardrail_arn} => String
    #   * {Types::GetGuardrailResponse#version #version} => String
    #   * {Types::GetGuardrailResponse#status #status} => String
    #   * {Types::GetGuardrailResponse#topic_policy #topic_policy} => Types::GuardrailTopicPolicy
    #   * {Types::GetGuardrailResponse#content_policy #content_policy} => Types::GuardrailContentPolicy
    #   * {Types::GetGuardrailResponse#word_policy #word_policy} => Types::GuardrailWordPolicy
    #   * {Types::GetGuardrailResponse#sensitive_information_policy #sensitive_information_policy} => Types::GuardrailSensitiveInformationPolicy
    #   * {Types::GetGuardrailResponse#contextual_grounding_policy #contextual_grounding_policy} => Types::GuardrailContextualGroundingPolicy
    #   * {Types::GetGuardrailResponse#created_at #created_at} => Time
    #   * {Types::GetGuardrailResponse#updated_at #updated_at} => Time
    #   * {Types::GetGuardrailResponse#status_reasons #status_reasons} => Array&lt;String&gt;
    #   * {Types::GetGuardrailResponse#failure_recommendations #failure_recommendations} => Array&lt;String&gt;
    #   * {Types::GetGuardrailResponse#blocked_input_messaging #blocked_input_messaging} => String
    #   * {Types::GetGuardrailResponse#blocked_outputs_messaging #blocked_outputs_messaging} => String
    #   * {Types::GetGuardrailResponse#kms_key_arn #kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_guardrail({
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     guardrail_version: "GuardrailVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.guardrail_id #=> String
    #   resp.guardrail_arn #=> String
    #   resp.version #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "VERSIONING", "READY", "FAILED", "DELETING"
    #   resp.topic_policy.topics #=> Array
    #   resp.topic_policy.topics[0].name #=> String
    #   resp.topic_policy.topics[0].definition #=> String
    #   resp.topic_policy.topics[0].examples #=> Array
    #   resp.topic_policy.topics[0].examples[0] #=> String
    #   resp.topic_policy.topics[0].type #=> String, one of "DENY"
    #   resp.content_policy.filters #=> Array
    #   resp.content_policy.filters[0].type #=> String, one of "SEXUAL", "VIOLENCE", "HATE", "INSULTS", "MISCONDUCT", "PROMPT_ATTACK"
    #   resp.content_policy.filters[0].input_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.content_policy.filters[0].output_strength #=> String, one of "NONE", "LOW", "MEDIUM", "HIGH"
    #   resp.word_policy.words #=> Array
    #   resp.word_policy.words[0].text #=> String
    #   resp.word_policy.managed_word_lists #=> Array
    #   resp.word_policy.managed_word_lists[0].type #=> String, one of "PROFANITY"
    #   resp.sensitive_information_policy.pii_entities #=> Array
    #   resp.sensitive_information_policy.pii_entities[0].type #=> String, one of "ADDRESS", "AGE", "AWS_ACCESS_KEY", "AWS_SECRET_KEY", "CA_HEALTH_NUMBER", "CA_SOCIAL_INSURANCE_NUMBER", "CREDIT_DEBIT_CARD_CVV", "CREDIT_DEBIT_CARD_EXPIRY", "CREDIT_DEBIT_CARD_NUMBER", "DRIVER_ID", "EMAIL", "INTERNATIONAL_BANK_ACCOUNT_NUMBER", "IP_ADDRESS", "LICENSE_PLATE", "MAC_ADDRESS", "NAME", "PASSWORD", "PHONE", "PIN", "SWIFT_CODE", "UK_NATIONAL_HEALTH_SERVICE_NUMBER", "UK_NATIONAL_INSURANCE_NUMBER", "UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER", "URL", "USERNAME", "US_BANK_ACCOUNT_NUMBER", "US_BANK_ROUTING_NUMBER", "US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER", "US_PASSPORT_NUMBER", "US_SOCIAL_SECURITY_NUMBER", "VEHICLE_IDENTIFICATION_NUMBER"
    #   resp.sensitive_information_policy.pii_entities[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.sensitive_information_policy.regexes #=> Array
    #   resp.sensitive_information_policy.regexes[0].name #=> String
    #   resp.sensitive_information_policy.regexes[0].description #=> String
    #   resp.sensitive_information_policy.regexes[0].pattern #=> String
    #   resp.sensitive_information_policy.regexes[0].action #=> String, one of "BLOCK", "ANONYMIZE"
    #   resp.contextual_grounding_policy.filters #=> Array
    #   resp.contextual_grounding_policy.filters[0].type #=> String, one of "GROUNDING", "RELEVANCE"
    #   resp.contextual_grounding_policy.filters[0].threshold #=> Float
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.status_reasons #=> Array
    #   resp.status_reasons[0] #=> String
    #   resp.failure_recommendations #=> Array
    #   resp.failure_recommendations[0] #=> String
    #   resp.blocked_input_messaging #=> String
    #   resp.blocked_outputs_messaging #=> String
    #   resp.kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetGuardrail AWS API Documentation
    #
    # @overload get_guardrail(params = {})
    # @param [Hash] params ({})
    def get_guardrail(params = {}, options = {})
      req = build_request(:get_guardrail, params)
      req.send_request(options)
    end

    # Gets properties associated with a customized model you imported.
    #
    # @option params [required, String] :model_identifier
    #   Name or Amazon Resource Name (ARN) of the imported model.
    #
    # @return [Types::GetImportedModelResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportedModelResponse#model_arn #model_arn} => String
    #   * {Types::GetImportedModelResponse#model_name #model_name} => String
    #   * {Types::GetImportedModelResponse#job_name #job_name} => String
    #   * {Types::GetImportedModelResponse#job_arn #job_arn} => String
    #   * {Types::GetImportedModelResponse#model_data_source #model_data_source} => Types::ModelDataSource
    #   * {Types::GetImportedModelResponse#creation_time #creation_time} => Time
    #   * {Types::GetImportedModelResponse#model_architecture #model_architecture} => String
    #   * {Types::GetImportedModelResponse#model_kms_key_arn #model_kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_imported_model({
    #     model_identifier: "ImportedModelIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_arn #=> String
    #   resp.model_name #=> String
    #   resp.job_name #=> String
    #   resp.job_arn #=> String
    #   resp.model_data_source.s3_data_source.s3_uri #=> String
    #   resp.creation_time #=> Time
    #   resp.model_architecture #=> String
    #   resp.model_kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetImportedModel AWS API Documentation
    #
    # @overload get_imported_model(params = {})
    # @param [Hash] params ({})
    def get_imported_model(params = {}, options = {})
      req = build_request(:get_imported_model, params)
      req.send_request(options)
    end

    # Gets information about an inference profile. For more information, see
    # the Amazon Bedrock User Guide.
    #
    # @option params [required, String] :inference_profile_identifier
    #   The unique identifier of the inference profile.
    #
    # @return [Types::GetInferenceProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetInferenceProfileResponse#inference_profile_name #inference_profile_name} => String
    #   * {Types::GetInferenceProfileResponse#models #models} => Array&lt;Types::InferenceProfileModel&gt;
    #   * {Types::GetInferenceProfileResponse#description #description} => String
    #   * {Types::GetInferenceProfileResponse#created_at #created_at} => Time
    #   * {Types::GetInferenceProfileResponse#updated_at #updated_at} => Time
    #   * {Types::GetInferenceProfileResponse#inference_profile_arn #inference_profile_arn} => String
    #   * {Types::GetInferenceProfileResponse#inference_profile_id #inference_profile_id} => String
    #   * {Types::GetInferenceProfileResponse#status #status} => String
    #   * {Types::GetInferenceProfileResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inference_profile({
    #     inference_profile_identifier: "InferenceProfileIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.inference_profile_name #=> String
    #   resp.models #=> Array
    #   resp.models[0].model_arn #=> String
    #   resp.description #=> String
    #   resp.created_at #=> Time
    #   resp.updated_at #=> Time
    #   resp.inference_profile_arn #=> String
    #   resp.inference_profile_id #=> String
    #   resp.status #=> String, one of "ACTIVE"
    #   resp.type #=> String, one of "SYSTEM_DEFINED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetInferenceProfile AWS API Documentation
    #
    # @overload get_inference_profile(params = {})
    # @param [Hash] params ({})
    def get_inference_profile(params = {}, options = {})
      req = build_request(:get_inference_profile, params)
      req.send_request(options)
    end

    # Retrieves information about a model copy job. For more information,
    # see [Copy models to be used in other regions][1] in the [Amazon
    # Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :job_arn
    #   The Amazon Resource Name (ARN) of the model copy job.
    #
    # @return [Types::GetModelCopyJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelCopyJobResponse#job_arn #job_arn} => String
    #   * {Types::GetModelCopyJobResponse#status #status} => String
    #   * {Types::GetModelCopyJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetModelCopyJobResponse#target_model_arn #target_model_arn} => String
    #   * {Types::GetModelCopyJobResponse#target_model_name #target_model_name} => String
    #   * {Types::GetModelCopyJobResponse#source_account_id #source_account_id} => String
    #   * {Types::GetModelCopyJobResponse#source_model_arn #source_model_arn} => String
    #   * {Types::GetModelCopyJobResponse#target_model_kms_key_arn #target_model_kms_key_arn} => String
    #   * {Types::GetModelCopyJobResponse#target_model_tags #target_model_tags} => Array&lt;Types::Tag&gt;
    #   * {Types::GetModelCopyJobResponse#failure_message #failure_message} => String
    #   * {Types::GetModelCopyJobResponse#source_model_name #source_model_name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_copy_job({
    #     job_arn: "ModelCopyJobArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.status #=> String, one of "InProgress", "Completed", "Failed"
    #   resp.creation_time #=> Time
    #   resp.target_model_arn #=> String
    #   resp.target_model_name #=> String
    #   resp.source_account_id #=> String
    #   resp.source_model_arn #=> String
    #   resp.target_model_kms_key_arn #=> String
    #   resp.target_model_tags #=> Array
    #   resp.target_model_tags[0].key #=> String
    #   resp.target_model_tags[0].value #=> String
    #   resp.failure_message #=> String
    #   resp.source_model_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelCopyJob AWS API Documentation
    #
    # @overload get_model_copy_job(params = {})
    # @param [Hash] params ({})
    def get_model_copy_job(params = {}, options = {})
      req = build_request(:get_model_copy_job, params)
      req.send_request(options)
    end

    # Retrieves the properties associated with a model-customization job,
    # including the status of the job. For more information, see [Custom
    # models][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :job_identifier
    #   Identifier for the customization job.
    #
    # @return [Types::GetModelCustomizationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelCustomizationJobResponse#job_arn #job_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#job_name #job_name} => String
    #   * {Types::GetModelCustomizationJobResponse#output_model_name #output_model_name} => String
    #   * {Types::GetModelCustomizationJobResponse#output_model_arn #output_model_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#client_request_token #client_request_token} => String
    #   * {Types::GetModelCustomizationJobResponse#role_arn #role_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#status #status} => String
    #   * {Types::GetModelCustomizationJobResponse#failure_message #failure_message} => String
    #   * {Types::GetModelCustomizationJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetModelCustomizationJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetModelCustomizationJobResponse#end_time #end_time} => Time
    #   * {Types::GetModelCustomizationJobResponse#base_model_arn #base_model_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#hyper_parameters #hyper_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetModelCustomizationJobResponse#training_data_config #training_data_config} => Types::TrainingDataConfig
    #   * {Types::GetModelCustomizationJobResponse#validation_data_config #validation_data_config} => Types::ValidationDataConfig
    #   * {Types::GetModelCustomizationJobResponse#output_data_config #output_data_config} => Types::OutputDataConfig
    #   * {Types::GetModelCustomizationJobResponse#customization_type #customization_type} => String
    #   * {Types::GetModelCustomizationJobResponse#output_model_kms_key_arn #output_model_kms_key_arn} => String
    #   * {Types::GetModelCustomizationJobResponse#training_metrics #training_metrics} => Types::TrainingMetrics
    #   * {Types::GetModelCustomizationJobResponse#validation_metrics #validation_metrics} => Array&lt;Types::ValidatorMetric&gt;
    #   * {Types::GetModelCustomizationJobResponse#vpc_config #vpc_config} => Types::VpcConfig
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_customization_job({
    #     job_identifier: "ModelCustomizationJobIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_name #=> String
    #   resp.output_model_name #=> String
    #   resp.output_model_arn #=> String
    #   resp.client_request_token #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.failure_message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.end_time #=> Time
    #   resp.base_model_arn #=> String
    #   resp.hyper_parameters #=> Hash
    #   resp.hyper_parameters["String"] #=> String
    #   resp.training_data_config.s3_uri #=> String
    #   resp.validation_data_config.validators #=> Array
    #   resp.validation_data_config.validators[0].s3_uri #=> String
    #   resp.output_data_config.s3_uri #=> String
    #   resp.customization_type #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.output_model_kms_key_arn #=> String
    #   resp.training_metrics.training_loss #=> Float
    #   resp.validation_metrics #=> Array
    #   resp.validation_metrics[0].validation_loss #=> Float
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelCustomizationJob AWS API Documentation
    #
    # @overload get_model_customization_job(params = {})
    # @param [Hash] params ({})
    def get_model_customization_job(params = {}, options = {})
      req = build_request(:get_model_customization_job, params)
      req.send_request(options)
    end

    # Retrieves the properties associated with import model job, including
    # the status of the job. For more information, see [Import a customized
    # model][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :job_identifier
    #   The identifier of the import job.
    #
    # @return [Types::GetModelImportJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelImportJobResponse#job_arn #job_arn} => String
    #   * {Types::GetModelImportJobResponse#job_name #job_name} => String
    #   * {Types::GetModelImportJobResponse#imported_model_name #imported_model_name} => String
    #   * {Types::GetModelImportJobResponse#imported_model_arn #imported_model_arn} => String
    #   * {Types::GetModelImportJobResponse#role_arn #role_arn} => String
    #   * {Types::GetModelImportJobResponse#model_data_source #model_data_source} => Types::ModelDataSource
    #   * {Types::GetModelImportJobResponse#status #status} => String
    #   * {Types::GetModelImportJobResponse#failure_message #failure_message} => String
    #   * {Types::GetModelImportJobResponse#creation_time #creation_time} => Time
    #   * {Types::GetModelImportJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetModelImportJobResponse#end_time #end_time} => Time
    #   * {Types::GetModelImportJobResponse#vpc_config #vpc_config} => Types::VpcConfig
    #   * {Types::GetModelImportJobResponse#imported_model_kms_key_arn #imported_model_kms_key_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_import_job({
    #     job_identifier: "ModelImportJobIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_name #=> String
    #   resp.imported_model_name #=> String
    #   resp.imported_model_arn #=> String
    #   resp.role_arn #=> String
    #   resp.model_data_source.s3_data_source.s3_uri #=> String
    #   resp.status #=> String, one of "InProgress", "Completed", "Failed"
    #   resp.failure_message #=> String
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.end_time #=> Time
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.imported_model_kms_key_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelImportJob AWS API Documentation
    #
    # @overload get_model_import_job(params = {})
    # @param [Hash] params ({})
    def get_model_import_job(params = {}, options = {})
      req = build_request(:get_model_import_job, params)
      req.send_request(options)
    end

    # Gets details about a batch inference job. For more information, see
    # [View details about a batch inference job][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-manage.html#batch-inference-view
    #
    # @option params [required, String] :job_identifier
    #   The Amazon Resource Name (ARN) of the batch inference job.
    #
    # @return [Types::GetModelInvocationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelInvocationJobResponse#job_arn #job_arn} => String
    #   * {Types::GetModelInvocationJobResponse#job_name #job_name} => String
    #   * {Types::GetModelInvocationJobResponse#model_id #model_id} => String
    #   * {Types::GetModelInvocationJobResponse#client_request_token #client_request_token} => String
    #   * {Types::GetModelInvocationJobResponse#role_arn #role_arn} => String
    #   * {Types::GetModelInvocationJobResponse#status #status} => String
    #   * {Types::GetModelInvocationJobResponse#message #message} => String
    #   * {Types::GetModelInvocationJobResponse#submit_time #submit_time} => Time
    #   * {Types::GetModelInvocationJobResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetModelInvocationJobResponse#end_time #end_time} => Time
    #   * {Types::GetModelInvocationJobResponse#input_data_config #input_data_config} => Types::ModelInvocationJobInputDataConfig
    #   * {Types::GetModelInvocationJobResponse#output_data_config #output_data_config} => Types::ModelInvocationJobOutputDataConfig
    #   * {Types::GetModelInvocationJobResponse#vpc_config #vpc_config} => Types::VpcConfig
    #   * {Types::GetModelInvocationJobResponse#timeout_duration_in_hours #timeout_duration_in_hours} => Integer
    #   * {Types::GetModelInvocationJobResponse#job_expiration_time #job_expiration_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_model_invocation_job({
    #     job_identifier: "ModelInvocationJobIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_name #=> String
    #   resp.model_id #=> String
    #   resp.client_request_token #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "Submitted", "InProgress", "Completed", "Failed", "Stopping", "Stopped", "PartiallyCompleted", "Expired", "Validating", "Scheduled"
    #   resp.message #=> String
    #   resp.submit_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.end_time #=> Time
    #   resp.input_data_config.s3_input_data_config.s3_input_format #=> String, one of "JSONL"
    #   resp.input_data_config.s3_input_data_config.s3_uri #=> String
    #   resp.input_data_config.s3_input_data_config.s3_bucket_owner #=> String
    #   resp.output_data_config.s3_output_data_config.s3_uri #=> String
    #   resp.output_data_config.s3_output_data_config.s3_encryption_key_id #=> String
    #   resp.output_data_config.s3_output_data_config.s3_bucket_owner #=> String
    #   resp.vpc_config.subnet_ids #=> Array
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.timeout_duration_in_hours #=> Integer
    #   resp.job_expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelInvocationJob AWS API Documentation
    #
    # @overload get_model_invocation_job(params = {})
    # @param [Hash] params ({})
    def get_model_invocation_job(params = {}, options = {})
      req = build_request(:get_model_invocation_job, params)
      req.send_request(options)
    end

    # Get the current configuration values for model invocation logging.
    #
    # @return [Types::GetModelInvocationLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetModelInvocationLoggingConfigurationResponse#logging_config #logging_config} => Types::LoggingConfig
    #
    # @example Response structure
    #
    #   resp.logging_config.cloud_watch_config.log_group_name #=> String
    #   resp.logging_config.cloud_watch_config.role_arn #=> String
    #   resp.logging_config.cloud_watch_config.large_data_delivery_s3_config.bucket_name #=> String
    #   resp.logging_config.cloud_watch_config.large_data_delivery_s3_config.key_prefix #=> String
    #   resp.logging_config.s3_config.bucket_name #=> String
    #   resp.logging_config.s3_config.key_prefix #=> String
    #   resp.logging_config.text_data_delivery_enabled #=> Boolean
    #   resp.logging_config.image_data_delivery_enabled #=> Boolean
    #   resp.logging_config.embedding_data_delivery_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetModelInvocationLoggingConfiguration AWS API Documentation
    #
    # @overload get_model_invocation_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_model_invocation_logging_configuration(params = {}, options = {})
      req = build_request(:get_model_invocation_logging_configuration, params)
      req.send_request(options)
    end

    # Returns details for a Provisioned Throughput. For more information,
    # see [Provisioned Throughput][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :provisioned_model_id
    #   The Amazon Resource Name (ARN) or name of the Provisioned Throughput.
    #
    # @return [Types::GetProvisionedModelThroughputResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetProvisionedModelThroughputResponse#model_units #model_units} => Integer
    #   * {Types::GetProvisionedModelThroughputResponse#desired_model_units #desired_model_units} => Integer
    #   * {Types::GetProvisionedModelThroughputResponse#provisioned_model_name #provisioned_model_name} => String
    #   * {Types::GetProvisionedModelThroughputResponse#provisioned_model_arn #provisioned_model_arn} => String
    #   * {Types::GetProvisionedModelThroughputResponse#model_arn #model_arn} => String
    #   * {Types::GetProvisionedModelThroughputResponse#desired_model_arn #desired_model_arn} => String
    #   * {Types::GetProvisionedModelThroughputResponse#foundation_model_arn #foundation_model_arn} => String
    #   * {Types::GetProvisionedModelThroughputResponse#status #status} => String
    #   * {Types::GetProvisionedModelThroughputResponse#creation_time #creation_time} => Time
    #   * {Types::GetProvisionedModelThroughputResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetProvisionedModelThroughputResponse#failure_message #failure_message} => String
    #   * {Types::GetProvisionedModelThroughputResponse#commitment_duration #commitment_duration} => String
    #   * {Types::GetProvisionedModelThroughputResponse#commitment_expiration_time #commitment_expiration_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_provisioned_model_throughput({
    #     provisioned_model_id: "ProvisionedModelId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.model_units #=> Integer
    #   resp.desired_model_units #=> Integer
    #   resp.provisioned_model_name #=> String
    #   resp.provisioned_model_arn #=> String
    #   resp.model_arn #=> String
    #   resp.desired_model_arn #=> String
    #   resp.foundation_model_arn #=> String
    #   resp.status #=> String, one of "Creating", "InService", "Updating", "Failed"
    #   resp.creation_time #=> Time
    #   resp.last_modified_time #=> Time
    #   resp.failure_message #=> String
    #   resp.commitment_duration #=> String, one of "OneMonth", "SixMonths"
    #   resp.commitment_expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/GetProvisionedModelThroughput AWS API Documentation
    #
    # @overload get_provisioned_model_throughput(params = {})
    # @param [Hash] params ({})
    def get_provisioned_model_throughput(params = {}, options = {})
      req = build_request(:get_provisioned_model_throughput, params)
      req.send_request(options)
    end

    # Returns a list of the custom models that you have created with the
    # `CreateModelCustomizationJob` operation.
    #
    # For more information, see [Custom models][1] in the [Amazon Bedrock
    # User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Return custom models created before the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Return custom models created after the specified time.
    #
    # @option params [String] :name_contains
    #   Return custom models only if the job name contains these characters.
    #
    # @option params [String] :base_model_arn_equals
    #   Return custom models only if the base model Amazon Resource Name (ARN)
    #   matches this parameter.
    #
    # @option params [String] :foundation_model_arn_equals
    #   Return custom models only if the foundation model Amazon Resource Name
    #   (ARN) matches this parameter.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [String] :sort_by
    #   The field to sort by in the returned list of models.
    #
    # @option params [String] :sort_order
    #   The sort order of the results.
    #
    # @option params [Boolean] :is_owned
    #   Return custom models depending on if the current account owns them
    #   (`true`) or if they were shared with the current account (`false`).
    #
    # @return [Types::ListCustomModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCustomModelsResponse#next_token #next_token} => String
    #   * {Types::ListCustomModelsResponse#model_summaries #model_summaries} => Array&lt;Types::CustomModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_custom_models({
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     name_contains: "CustomModelName",
    #     base_model_arn_equals: "ModelArn",
    #     foundation_model_arn_equals: "FoundationModelArn",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #     is_owned: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.model_summaries #=> Array
    #   resp.model_summaries[0].model_arn #=> String
    #   resp.model_summaries[0].model_name #=> String
    #   resp.model_summaries[0].creation_time #=> Time
    #   resp.model_summaries[0].base_model_arn #=> String
    #   resp.model_summaries[0].base_model_name #=> String
    #   resp.model_summaries[0].customization_type #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.model_summaries[0].owner_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListCustomModels AWS API Documentation
    #
    # @overload list_custom_models(params = {})
    # @param [Hash] params ({})
    def list_custom_models(params = {}, options = {})
      req = build_request(:list_custom_models, params)
      req.send_request(options)
    end

    # Lists model evaluation jobs.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that includes model evaluation jobs created after the time
    #   specified.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that includes model evaluation jobs created prior to the time
    #   specified.
    #
    # @option params [String] :status_equals
    #   Only return jobs where the status condition is met.
    #
    # @option params [String] :name_contains
    #   Query parameter string for model evaluation job names.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   Continuation token from the previous response, for Amazon Bedrock to
    #   list the next set of results.
    #
    # @option params [String] :sort_by
    #   Allows you to sort model evaluation jobs by when they were created.
    #
    # @option params [String] :sort_order
    #   How you want the order of jobs sorted.
    #
    # @return [Types::ListEvaluationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEvaluationJobsResponse#next_token #next_token} => String
    #   * {Types::ListEvaluationJobsResponse#job_summaries #job_summaries} => Array&lt;Types::EvaluationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_evaluation_jobs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped, Deleting
    #     name_contains: "EvaluationJobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.job_summaries #=> Array
    #   resp.job_summaries[0].job_arn #=> String
    #   resp.job_summaries[0].job_name #=> String
    #   resp.job_summaries[0].status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped", "Deleting"
    #   resp.job_summaries[0].creation_time #=> Time
    #   resp.job_summaries[0].job_type #=> String, one of "Human", "Automated"
    #   resp.job_summaries[0].evaluation_task_types #=> Array
    #   resp.job_summaries[0].evaluation_task_types[0] #=> String, one of "Summarization", "Classification", "QuestionAndAnswer", "Generation", "Custom"
    #   resp.job_summaries[0].model_identifiers #=> Array
    #   resp.job_summaries[0].model_identifiers[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListEvaluationJobs AWS API Documentation
    #
    # @overload list_evaluation_jobs(params = {})
    # @param [Hash] params ({})
    def list_evaluation_jobs(params = {}, options = {})
      req = build_request(:list_evaluation_jobs, params)
      req.send_request(options)
    end

    # Lists Amazon Bedrock foundation models that you can use. You can
    # filter the results with the request parameters. For more information,
    # see [Foundation models][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [String] :by_provider
    #   Return models belonging to the model provider that you specify.
    #
    # @option params [String] :by_customization_type
    #   Return models that support the customization type that you specify.
    #   For more information, see [Custom models][1] in the [Amazon Bedrock
    #   User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [String] :by_output_modality
    #   Return models that support the output modality that you specify.
    #
    # @option params [String] :by_inference_type
    #   Return models that support the inference type that you specify. For
    #   more information, see [Provisioned Throughput][1] in the [Amazon
    #   Bedrock User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
    #   [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @return [Types::ListFoundationModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFoundationModelsResponse#model_summaries #model_summaries} => Array&lt;Types::FoundationModelSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_foundation_models({
    #     by_provider: "Provider",
    #     by_customization_type: "FINE_TUNING", # accepts FINE_TUNING, CONTINUED_PRE_TRAINING
    #     by_output_modality: "TEXT", # accepts TEXT, IMAGE, EMBEDDING
    #     by_inference_type: "ON_DEMAND", # accepts ON_DEMAND, PROVISIONED
    #   })
    #
    # @example Response structure
    #
    #   resp.model_summaries #=> Array
    #   resp.model_summaries[0].model_arn #=> String
    #   resp.model_summaries[0].model_id #=> String
    #   resp.model_summaries[0].model_name #=> String
    #   resp.model_summaries[0].provider_name #=> String
    #   resp.model_summaries[0].input_modalities #=> Array
    #   resp.model_summaries[0].input_modalities[0] #=> String, one of "TEXT", "IMAGE", "EMBEDDING"
    #   resp.model_summaries[0].output_modalities #=> Array
    #   resp.model_summaries[0].output_modalities[0] #=> String, one of "TEXT", "IMAGE", "EMBEDDING"
    #   resp.model_summaries[0].response_streaming_supported #=> Boolean
    #   resp.model_summaries[0].customizations_supported #=> Array
    #   resp.model_summaries[0].customizations_supported[0] #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #   resp.model_summaries[0].inference_types_supported #=> Array
    #   resp.model_summaries[0].inference_types_supported[0] #=> String, one of "ON_DEMAND", "PROVISIONED"
    #   resp.model_summaries[0].model_lifecycle.status #=> String, one of "ACTIVE", "LEGACY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListFoundationModels AWS API Documentation
    #
    # @overload list_foundation_models(params = {})
    # @param [Hash] params ({})
    def list_foundation_models(params = {}, options = {})
      req = build_request(:list_foundation_models, params)
      req.send_request(options)
    end

    # Lists details about all the guardrails in an account. To list the
    # `DRAFT` version of all your guardrails, don't specify the
    # `guardrailIdentifier` field. To list all versions of a guardrail,
    # specify the ARN of the guardrail in the `guardrailIdentifier` field.
    #
    # You can set the maximum number of results to return in a response in
    # the `maxResults` field. If there are more results than the number you
    # set, the response returns a `nextToken` that you can send in another
    # `ListGuardrails` request to see the next batch of results.
    #
    # @option params [String] :guardrail_identifier
    #   The unique identifier of the guardrail. This can be an ID or the ARN.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response.
    #
    # @option params [String] :next_token
    #   If there are more results than were returned in the response, the
    #   response returns a `nextToken` that you can send in another
    #   `ListGuardrails` request to see the next batch of results.
    #
    # @return [Types::ListGuardrailsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGuardrailsResponse#guardrails #guardrails} => Array&lt;Types::GuardrailSummary&gt;
    #   * {Types::ListGuardrailsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_guardrails({
    #     guardrail_identifier: "GuardrailIdentifier",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.guardrails #=> Array
    #   resp.guardrails[0].id #=> String
    #   resp.guardrails[0].arn #=> String
    #   resp.guardrails[0].status #=> String, one of "CREATING", "UPDATING", "VERSIONING", "READY", "FAILED", "DELETING"
    #   resp.guardrails[0].name #=> String
    #   resp.guardrails[0].description #=> String
    #   resp.guardrails[0].version #=> String
    #   resp.guardrails[0].created_at #=> Time
    #   resp.guardrails[0].updated_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListGuardrails AWS API Documentation
    #
    # @overload list_guardrails(params = {})
    # @param [Hash] params ({})
    def list_guardrails(params = {}, options = {})
      req = build_request(:list_guardrails, params)
      req.send_request(options)
    end

    # Returns a list of models you've imported. You can filter the results
    # to return based on one or more criteria. For more information, see
    # [Import a customized model][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Return imported models that created before the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Return imported models that were created after the specified time.
    #
    # @option params [String] :name_contains
    #   Return imported models only if the model name contains these
    #   characters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [String] :sort_by
    #   The field to sort by in the returned list of imported models.
    #
    # @option params [String] :sort_order
    #   Specifies whetehr to sort the results in ascending or descending
    #   order.
    #
    # @return [Types::ListImportedModelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListImportedModelsResponse#next_token #next_token} => String
    #   * {Types::ListImportedModelsResponse#model_summaries #model_summaries} => Array&lt;Types::ImportedModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imported_models({
    #     creation_time_before: Time.now,
    #     creation_time_after: Time.now,
    #     name_contains: "ImportedModelName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.model_summaries #=> Array
    #   resp.model_summaries[0].model_arn #=> String
    #   resp.model_summaries[0].model_name #=> String
    #   resp.model_summaries[0].creation_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListImportedModels AWS API Documentation
    #
    # @overload list_imported_models(params = {})
    # @param [Hash] params ({})
    def list_imported_models(params = {}, options = {})
      req = build_request(:list_imported_models, params)
      req.send_request(options)
    end

    # Returns a list of inference profiles that you can use.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @return [Types::ListInferenceProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListInferenceProfilesResponse#inference_profile_summaries #inference_profile_summaries} => Array&lt;Types::InferenceProfileSummary&gt;
    #   * {Types::ListInferenceProfilesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_inference_profiles({
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.inference_profile_summaries #=> Array
    #   resp.inference_profile_summaries[0].inference_profile_name #=> String
    #   resp.inference_profile_summaries[0].models #=> Array
    #   resp.inference_profile_summaries[0].models[0].model_arn #=> String
    #   resp.inference_profile_summaries[0].description #=> String
    #   resp.inference_profile_summaries[0].created_at #=> Time
    #   resp.inference_profile_summaries[0].updated_at #=> Time
    #   resp.inference_profile_summaries[0].inference_profile_arn #=> String
    #   resp.inference_profile_summaries[0].inference_profile_id #=> String
    #   resp.inference_profile_summaries[0].status #=> String, one of "ACTIVE"
    #   resp.inference_profile_summaries[0].type #=> String, one of "SYSTEM_DEFINED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListInferenceProfiles AWS API Documentation
    #
    # @overload list_inference_profiles(params = {})
    # @param [Hash] params ({})
    def list_inference_profiles(params = {}, options = {})
      req = build_request(:list_inference_profiles, params)
      req.send_request(options)
    end

    # Returns a list of model copy jobs that you have submitted. You can
    # filter the jobs to return based on one or more criteria. For more
    # information, see [Copy models to be used in other regions][1] in the
    # [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/copy-model.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Filters for model copy jobs created after the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Filters for model copy jobs created before the specified time.
    #
    # @option params [String] :status_equals
    #   Filters for model copy jobs whose status matches the value that you
    #   specify.
    #
    # @option params [String] :source_account_equals
    #   Filters for model copy jobs in which the account that the source model
    #   belongs to is equal to the value that you specify.
    #
    # @option params [String] :source_model_arn_equals
    #   Filters for model copy jobs in which the Amazon Resource Name (ARN) of
    #   the source model to is equal to the value that you specify.
    #
    # @option params [String] :target_model_name_contains
    #   Filters for model copy jobs in which the name of the copied model
    #   contains the string that you specify.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [String] :sort_by
    #   The field to sort by in the returned list of model copy jobs.
    #
    # @option params [String] :sort_order
    #   Specifies whether to sort the results in ascending or descending
    #   order.
    #
    # @return [Types::ListModelCopyJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelCopyJobsResponse#next_token #next_token} => String
    #   * {Types::ListModelCopyJobsResponse#model_copy_job_summaries #model_copy_job_summaries} => Array&lt;Types::ModelCopyJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_copy_jobs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed
    #     source_account_equals: "AccountId",
    #     source_model_arn_equals: "ModelArn",
    #     target_model_name_contains: "CustomModelName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.model_copy_job_summaries #=> Array
    #   resp.model_copy_job_summaries[0].job_arn #=> String
    #   resp.model_copy_job_summaries[0].status #=> String, one of "InProgress", "Completed", "Failed"
    #   resp.model_copy_job_summaries[0].creation_time #=> Time
    #   resp.model_copy_job_summaries[0].target_model_arn #=> String
    #   resp.model_copy_job_summaries[0].target_model_name #=> String
    #   resp.model_copy_job_summaries[0].source_account_id #=> String
    #   resp.model_copy_job_summaries[0].source_model_arn #=> String
    #   resp.model_copy_job_summaries[0].target_model_kms_key_arn #=> String
    #   resp.model_copy_job_summaries[0].target_model_tags #=> Array
    #   resp.model_copy_job_summaries[0].target_model_tags[0].key #=> String
    #   resp.model_copy_job_summaries[0].target_model_tags[0].value #=> String
    #   resp.model_copy_job_summaries[0].failure_message #=> String
    #   resp.model_copy_job_summaries[0].source_model_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListModelCopyJobs AWS API Documentation
    #
    # @overload list_model_copy_jobs(params = {})
    # @param [Hash] params ({})
    def list_model_copy_jobs(params = {}, options = {})
      req = build_request(:list_model_copy_jobs, params)
      req.send_request(options)
    end

    # Returns a list of model customization jobs that you have submitted.
    # You can filter the jobs to return based on one or more criteria.
    #
    # For more information, see [Custom models][1] in the [Amazon Bedrock
    # User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Return customization jobs created after the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Return customization jobs created before the specified time.
    #
    # @option params [String] :status_equals
    #   Return customization jobs with the specified status.
    #
    # @option params [String] :name_contains
    #   Return customization jobs only if the job name contains these
    #   characters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [String] :sort_by
    #   The field to sort by in the returned list of jobs.
    #
    # @option params [String] :sort_order
    #   The sort order of the results.
    #
    # @return [Types::ListModelCustomizationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelCustomizationJobsResponse#next_token #next_token} => String
    #   * {Types::ListModelCustomizationJobsResponse#model_customization_job_summaries #model_customization_job_summaries} => Array&lt;Types::ModelCustomizationJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_customization_jobs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed, Stopping, Stopped
    #     name_contains: "JobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.model_customization_job_summaries #=> Array
    #   resp.model_customization_job_summaries[0].job_arn #=> String
    #   resp.model_customization_job_summaries[0].base_model_arn #=> String
    #   resp.model_customization_job_summaries[0].job_name #=> String
    #   resp.model_customization_job_summaries[0].status #=> String, one of "InProgress", "Completed", "Failed", "Stopping", "Stopped"
    #   resp.model_customization_job_summaries[0].last_modified_time #=> Time
    #   resp.model_customization_job_summaries[0].creation_time #=> Time
    #   resp.model_customization_job_summaries[0].end_time #=> Time
    #   resp.model_customization_job_summaries[0].custom_model_arn #=> String
    #   resp.model_customization_job_summaries[0].custom_model_name #=> String
    #   resp.model_customization_job_summaries[0].customization_type #=> String, one of "FINE_TUNING", "CONTINUED_PRE_TRAINING"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListModelCustomizationJobs AWS API Documentation
    #
    # @overload list_model_customization_jobs(params = {})
    # @param [Hash] params ({})
    def list_model_customization_jobs(params = {}, options = {})
      req = build_request(:list_model_customization_jobs, params)
      req.send_request(options)
    end

    # Returns a list of import jobs you've submitted. You can filter the
    # results to return based on one or more criteria. For more information,
    # see [Import a customized model][1] in the [Amazon Bedrock User
    # Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/model-customization-import-model.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   Return import jobs that were created after the specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   Return import jobs that were created before the specified time.
    #
    # @option params [String] :status_equals
    #   Return imported jobs with the specified status.
    #
    # @option params [String] :name_contains
    #   Return imported jobs only if the job name contains these characters.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in the response. If the total
    #   number of results is greater than this value, use the token returned
    #   in the response in the `nextToken` field when making another request
    #   to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If the total number of results is greater than the `maxResults` value
    #   provided in the request, enter the token returned in the `nextToken`
    #   field in the response in this field to return the next batch of
    #   results.
    #
    # @option params [String] :sort_by
    #   The field to sort by in the returned list of imported jobs.
    #
    # @option params [String] :sort_order
    #   Specifies whether to sort the results in ascending or descending
    #   order.
    #
    # @return [Types::ListModelImportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelImportJobsResponse#next_token #next_token} => String
    #   * {Types::ListModelImportJobsResponse#model_import_job_summaries #model_import_job_summaries} => Array&lt;Types::ModelImportJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_import_jobs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "InProgress", # accepts InProgress, Completed, Failed
    #     name_contains: "JobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.model_import_job_summaries #=> Array
    #   resp.model_import_job_summaries[0].job_arn #=> String
    #   resp.model_import_job_summaries[0].job_name #=> String
    #   resp.model_import_job_summaries[0].status #=> String, one of "InProgress", "Completed", "Failed"
    #   resp.model_import_job_summaries[0].last_modified_time #=> Time
    #   resp.model_import_job_summaries[0].creation_time #=> Time
    #   resp.model_import_job_summaries[0].end_time #=> Time
    #   resp.model_import_job_summaries[0].imported_model_arn #=> String
    #   resp.model_import_job_summaries[0].imported_model_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListModelImportJobs AWS API Documentation
    #
    # @overload list_model_import_jobs(params = {})
    # @param [Hash] params ({})
    def list_model_import_jobs(params = {}, options = {})
      req = build_request(:list_model_import_jobs, params)
      req.send_request(options)
    end

    # Lists all batch inference jobs in the account. For more information,
    # see [View details about a batch inference job][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-manage.html#batch-inference-view
    #
    # @option params [Time,DateTime,Date,Integer,String] :submit_time_after
    #   Specify a time to filter for batch inference jobs that were submitted
    #   after the time you specify.
    #
    # @option params [Time,DateTime,Date,Integer,String] :submit_time_before
    #   Specify a time to filter for batch inference jobs that were submitted
    #   before the time you specify.
    #
    # @option params [String] :status_equals
    #   Specify a status to filter for batch inference jobs whose statuses
    #   match the string you specify.
    #
    # @option params [String] :name_contains
    #   Specify a string to filter for batch inference jobs whose names
    #   contain the string.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return. If there are more results
    #   than the number that you specify, a `nextToken` value is returned. Use
    #   the `nextToken` in a request to return the next batch of results.
    #
    # @option params [String] :next_token
    #   If there were more results than the value you specified in the
    #   `maxResults` field in a previous `ListModelInvocationJobs` request,
    #   the response would have returned a `nextToken` value. To see the next
    #   batch of results, send the `nextToken` value in another request.
    #
    # @option params [String] :sort_by
    #   An attribute by which to sort the results.
    #
    # @option params [String] :sort_order
    #   Specifies whether to sort the results by ascending or descending
    #   order.
    #
    # @return [Types::ListModelInvocationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListModelInvocationJobsResponse#next_token #next_token} => String
    #   * {Types::ListModelInvocationJobsResponse#invocation_job_summaries #invocation_job_summaries} => Array&lt;Types::ModelInvocationJobSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_model_invocation_jobs({
    #     submit_time_after: Time.now,
    #     submit_time_before: Time.now,
    #     status_equals: "Submitted", # accepts Submitted, InProgress, Completed, Failed, Stopping, Stopped, PartiallyCompleted, Expired, Validating, Scheduled
    #     name_contains: "ModelInvocationJobName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.invocation_job_summaries #=> Array
    #   resp.invocation_job_summaries[0].job_arn #=> String
    #   resp.invocation_job_summaries[0].job_name #=> String
    #   resp.invocation_job_summaries[0].model_id #=> String
    #   resp.invocation_job_summaries[0].client_request_token #=> String
    #   resp.invocation_job_summaries[0].role_arn #=> String
    #   resp.invocation_job_summaries[0].status #=> String, one of "Submitted", "InProgress", "Completed", "Failed", "Stopping", "Stopped", "PartiallyCompleted", "Expired", "Validating", "Scheduled"
    #   resp.invocation_job_summaries[0].message #=> String
    #   resp.invocation_job_summaries[0].submit_time #=> Time
    #   resp.invocation_job_summaries[0].last_modified_time #=> Time
    #   resp.invocation_job_summaries[0].end_time #=> Time
    #   resp.invocation_job_summaries[0].input_data_config.s3_input_data_config.s3_input_format #=> String, one of "JSONL"
    #   resp.invocation_job_summaries[0].input_data_config.s3_input_data_config.s3_uri #=> String
    #   resp.invocation_job_summaries[0].input_data_config.s3_input_data_config.s3_bucket_owner #=> String
    #   resp.invocation_job_summaries[0].output_data_config.s3_output_data_config.s3_uri #=> String
    #   resp.invocation_job_summaries[0].output_data_config.s3_output_data_config.s3_encryption_key_id #=> String
    #   resp.invocation_job_summaries[0].output_data_config.s3_output_data_config.s3_bucket_owner #=> String
    #   resp.invocation_job_summaries[0].vpc_config.subnet_ids #=> Array
    #   resp.invocation_job_summaries[0].vpc_config.subnet_ids[0] #=> String
    #   resp.invocation_job_summaries[0].vpc_config.security_group_ids #=> Array
    #   resp.invocation_job_summaries[0].vpc_config.security_group_ids[0] #=> String
    #   resp.invocation_job_summaries[0].timeout_duration_in_hours #=> Integer
    #   resp.invocation_job_summaries[0].job_expiration_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListModelInvocationJobs AWS API Documentation
    #
    # @overload list_model_invocation_jobs(params = {})
    # @param [Hash] params ({})
    def list_model_invocation_jobs(params = {}, options = {})
      req = build_request(:list_model_invocation_jobs, params)
      req.send_request(options)
    end

    # Lists the Provisioned Throughputs in the account. For more
    # information, see [Provisioned Throughput][1] in the [Amazon Bedrock
    # User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_after
    #   A filter that returns Provisioned Throughputs created after the
    #   specified time.
    #
    # @option params [Time,DateTime,Date,Integer,String] :creation_time_before
    #   A filter that returns Provisioned Throughputs created before the
    #   specified time.
    #
    # @option params [String] :status_equals
    #   A filter that returns Provisioned Throughputs if their statuses
    #   matches the value that you specify.
    #
    # @option params [String] :model_arn_equals
    #   A filter that returns Provisioned Throughputs whose model Amazon
    #   Resource Name (ARN) is equal to the value that you specify.
    #
    # @option params [String] :name_contains
    #   A filter that returns Provisioned Throughputs if their name contains
    #   the expression that you specify.
    #
    # @option params [Integer] :max_results
    #   THe maximum number of results to return in the response. If there are
    #   more results than the number you specified, the response returns a
    #   `nextToken` value. To see the next batch of results, send the
    #   `nextToken` value in another list request.
    #
    # @option params [String] :next_token
    #   If there are more results than the number you specified in the
    #   `maxResults` field, the response returns a `nextToken` value. To see
    #   the next batch of results, specify the `nextToken` value in this
    #   field.
    #
    # @option params [String] :sort_by
    #   The field by which to sort the returned list of Provisioned
    #   Throughputs.
    #
    # @option params [String] :sort_order
    #   The sort order of the results.
    #
    # @return [Types::ListProvisionedModelThroughputsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisionedModelThroughputsResponse#next_token #next_token} => String
    #   * {Types::ListProvisionedModelThroughputsResponse#provisioned_model_summaries #provisioned_model_summaries} => Array&lt;Types::ProvisionedModelSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_model_throughputs({
    #     creation_time_after: Time.now,
    #     creation_time_before: Time.now,
    #     status_equals: "Creating", # accepts Creating, InService, Updating, Failed
    #     model_arn_equals: "ModelArn",
    #     name_contains: "ProvisionedModelName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     sort_by: "CreationTime", # accepts CreationTime
    #     sort_order: "Ascending", # accepts Ascending, Descending
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.provisioned_model_summaries #=> Array
    #   resp.provisioned_model_summaries[0].provisioned_model_name #=> String
    #   resp.provisioned_model_summaries[0].provisioned_model_arn #=> String
    #   resp.provisioned_model_summaries[0].model_arn #=> String
    #   resp.provisioned_model_summaries[0].desired_model_arn #=> String
    #   resp.provisioned_model_summaries[0].foundation_model_arn #=> String
    #   resp.provisioned_model_summaries[0].model_units #=> Integer
    #   resp.provisioned_model_summaries[0].desired_model_units #=> Integer
    #   resp.provisioned_model_summaries[0].status #=> String, one of "Creating", "InService", "Updating", "Failed"
    #   resp.provisioned_model_summaries[0].commitment_duration #=> String, one of "OneMonth", "SixMonths"
    #   resp.provisioned_model_summaries[0].commitment_expiration_time #=> Time
    #   resp.provisioned_model_summaries[0].creation_time #=> Time
    #   resp.provisioned_model_summaries[0].last_modified_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListProvisionedModelThroughputs AWS API Documentation
    #
    # @overload list_provisioned_model_throughputs(params = {})
    # @param [Hash] params ({})
    def list_provisioned_model_throughputs(params = {}, options = {})
      req = build_request(:list_provisioned_model_throughputs, params)
      req.send_request(options)
    end

    # List the tags associated with the specified resource.
    #
    # For more information, see [Tagging resources][1] in the [Amazon
    # Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Set the configuration values for model invocation logging.
    #
    # @option params [required, Types::LoggingConfig] :logging_config
    #   The logging configuration values to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_model_invocation_logging_configuration({
    #     logging_config: { # required
    #       cloud_watch_config: {
    #         log_group_name: "LogGroupName", # required
    #         role_arn: "RoleArn", # required
    #         large_data_delivery_s3_config: {
    #           bucket_name: "BucketName", # required
    #           key_prefix: "KeyPrefix",
    #         },
    #       },
    #       s3_config: {
    #         bucket_name: "BucketName", # required
    #         key_prefix: "KeyPrefix",
    #       },
    #       text_data_delivery_enabled: false,
    #       image_data_delivery_enabled: false,
    #       embedding_data_delivery_enabled: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/PutModelInvocationLoggingConfiguration AWS API Documentation
    #
    # @overload put_model_invocation_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_model_invocation_logging_configuration(params = {}, options = {})
      req = build_request(:put_model_invocation_logging_configuration, params)
      req.send_request(options)
    end

    # Stops an in progress model evaluation job.
    #
    # @option params [required, String] :job_identifier
    #   The ARN of the model evaluation job you want to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_evaluation_job({
    #     job_identifier: "EvaluationJobIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/StopEvaluationJob AWS API Documentation
    #
    # @overload stop_evaluation_job(params = {})
    # @param [Hash] params ({})
    def stop_evaluation_job(params = {}, options = {})
      req = build_request(:stop_evaluation_job, params)
      req.send_request(options)
    end

    # Stops an active model customization job. For more information, see
    # [Custom models][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :job_identifier
    #   Job identifier of the job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_model_customization_job({
    #     job_identifier: "ModelCustomizationJobIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/StopModelCustomizationJob AWS API Documentation
    #
    # @overload stop_model_customization_job(params = {})
    # @param [Hash] params ({})
    def stop_model_customization_job(params = {}, options = {})
      req = build_request(:stop_model_customization_job, params)
      req.send_request(options)
    end

    # Stops a batch inference job. You're only charged for tokens that were
    # already processed. For more information, see [Stop a batch inference
    # job][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/batch-inference-manage.html#batch-inference-stop
    #
    # @option params [required, String] :job_identifier
    #   The Amazon Resource Name (ARN) of the batch inference job to stop.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_model_invocation_job({
    #     job_identifier: "ModelInvocationJobIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/StopModelInvocationJob AWS API Documentation
    #
    # @overload stop_model_invocation_job(params = {})
    # @param [Hash] params ({})
    def stop_model_invocation_job(params = {}, options = {})
      req = build_request(:stop_model_invocation_job, params)
      req.send_request(options)
    end

    # Associate tags with a resource. For more information, see [Tagging
    # resources][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Tags to associate with the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Remove one or more tags from a resource. For more information, see
    # [Tagging resources][1] in the [Amazon Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to untag.
    #
    # @option params [required, Array<String>] :tag_keys
    #   Tag keys of the tags to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "TaggableResourcesArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a guardrail with the values you specify.
    #
    # * Specify a `name` and optional `description`.
    #
    # * Specify messages for when the guardrail successfully blocks a prompt
    #   or a model response in the `blockedInputMessaging` and
    #   `blockedOutputsMessaging` fields.
    #
    # * Specify topics for the guardrail to deny in the `topicPolicyConfig`
    #   object. Each [GuardrailTopicConfig][1] object in the `topicsConfig`
    #   list pertains to one topic.
    #
    #   * Give a `name` and `description` so that the guardrail can properly
    #     identify the topic.
    #
    #   * Specify `DENY` in the `type` field.
    #
    #   * (Optional) Provide up to five prompts that you would categorize as
    #     belonging to the topic in the `examples` list.
    #
    # * Specify filter strengths for the harmful categories defined in
    #   Amazon Bedrock in the `contentPolicyConfig` object. Each
    #   [GuardrailContentFilterConfig][2] object in the `filtersConfig` list
    #   pertains to a harmful category. For more information, see [Content
    #   filters][3]. For more information about the fields in a content
    #   filter, see [GuardrailContentFilterConfig][2].
    #
    #   * Specify the category in the `type` field.
    #
    #   * Specify the strength of the filter for prompts in the
    #     `inputStrength` field and for model responses in the `strength`
    #     field of the [GuardrailContentFilterConfig][2].
    #
    # * (Optional) For security, include the ARN of a KMS key in the
    #   `kmsKeyId` field.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailTopicConfig.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/APIReference/API_GuardrailContentFilterConfig.html
    # [3]: https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails-content-filters
    #
    # @option params [required, String] :guardrail_identifier
    #   The unique identifier of the guardrail. This can be an ID or the ARN.
    #
    # @option params [required, String] :name
    #   A name for the guardrail.
    #
    # @option params [String] :description
    #   A description of the guardrail.
    #
    # @option params [Types::GuardrailTopicPolicyConfig] :topic_policy_config
    #   The topic policy to configure for the guardrail.
    #
    # @option params [Types::GuardrailContentPolicyConfig] :content_policy_config
    #   The content policy to configure for the guardrail.
    #
    # @option params [Types::GuardrailWordPolicyConfig] :word_policy_config
    #   The word policy to configure for the guardrail.
    #
    # @option params [Types::GuardrailSensitiveInformationPolicyConfig] :sensitive_information_policy_config
    #   The sensitive information policy to configure for the guardrail.
    #
    # @option params [Types::GuardrailContextualGroundingPolicyConfig] :contextual_grounding_policy_config
    #   The contextual grounding policy configuration used to update a
    #   guardrail.
    #
    # @option params [required, String] :blocked_input_messaging
    #   The message to return when the guardrail blocks a prompt.
    #
    # @option params [required, String] :blocked_outputs_messaging
    #   The message to return when the guardrail blocks a model response.
    #
    # @option params [String] :kms_key_id
    #   The ARN of the KMS key with which to encrypt the guardrail.
    #
    # @return [Types::UpdateGuardrailResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGuardrailResponse#guardrail_id #guardrail_id} => String
    #   * {Types::UpdateGuardrailResponse#guardrail_arn #guardrail_arn} => String
    #   * {Types::UpdateGuardrailResponse#version #version} => String
    #   * {Types::UpdateGuardrailResponse#updated_at #updated_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_guardrail({
    #     guardrail_identifier: "GuardrailIdentifier", # required
    #     name: "GuardrailName", # required
    #     description: "GuardrailDescription",
    #     topic_policy_config: {
    #       topics_config: [ # required
    #         {
    #           name: "GuardrailTopicName", # required
    #           definition: "GuardrailTopicDefinition", # required
    #           examples: ["GuardrailTopicExample"],
    #           type: "DENY", # required, accepts DENY
    #         },
    #       ],
    #     },
    #     content_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "SEXUAL", # required, accepts SEXUAL, VIOLENCE, HATE, INSULTS, MISCONDUCT, PROMPT_ATTACK
    #           input_strength: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH
    #           output_strength: "NONE", # required, accepts NONE, LOW, MEDIUM, HIGH
    #         },
    #       ],
    #     },
    #     word_policy_config: {
    #       words_config: [
    #         {
    #           text: "GuardrailWordConfigTextString", # required
    #         },
    #       ],
    #       managed_word_lists_config: [
    #         {
    #           type: "PROFANITY", # required, accepts PROFANITY
    #         },
    #       ],
    #     },
    #     sensitive_information_policy_config: {
    #       pii_entities_config: [
    #         {
    #           type: "ADDRESS", # required, accepts ADDRESS, AGE, AWS_ACCESS_KEY, AWS_SECRET_KEY, CA_HEALTH_NUMBER, CA_SOCIAL_INSURANCE_NUMBER, CREDIT_DEBIT_CARD_CVV, CREDIT_DEBIT_CARD_EXPIRY, CREDIT_DEBIT_CARD_NUMBER, DRIVER_ID, EMAIL, INTERNATIONAL_BANK_ACCOUNT_NUMBER, IP_ADDRESS, LICENSE_PLATE, MAC_ADDRESS, NAME, PASSWORD, PHONE, PIN, SWIFT_CODE, UK_NATIONAL_HEALTH_SERVICE_NUMBER, UK_NATIONAL_INSURANCE_NUMBER, UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER, URL, USERNAME, US_BANK_ACCOUNT_NUMBER, US_BANK_ROUTING_NUMBER, US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER, US_PASSPORT_NUMBER, US_SOCIAL_SECURITY_NUMBER, VEHICLE_IDENTIFICATION_NUMBER
    #           action: "BLOCK", # required, accepts BLOCK, ANONYMIZE
    #         },
    #       ],
    #       regexes_config: [
    #         {
    #           name: "GuardrailRegexConfigNameString", # required
    #           description: "GuardrailRegexConfigDescriptionString",
    #           pattern: "GuardrailRegexConfigPatternString", # required
    #           action: "BLOCK", # required, accepts BLOCK, ANONYMIZE
    #         },
    #       ],
    #     },
    #     contextual_grounding_policy_config: {
    #       filters_config: [ # required
    #         {
    #           type: "GROUNDING", # required, accepts GROUNDING, RELEVANCE
    #           threshold: 1.0, # required
    #         },
    #       ],
    #     },
    #     blocked_input_messaging: "GuardrailBlockedMessaging", # required
    #     blocked_outputs_messaging: "GuardrailBlockedMessaging", # required
    #     kms_key_id: "KmsKeyId",
    #   })
    #
    # @example Response structure
    #
    #   resp.guardrail_id #=> String
    #   resp.guardrail_arn #=> String
    #   resp.version #=> String
    #   resp.updated_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UpdateGuardrail AWS API Documentation
    #
    # @overload update_guardrail(params = {})
    # @param [Hash] params ({})
    def update_guardrail(params = {}, options = {})
      req = build_request(:update_guardrail, params)
      req.send_request(options)
    end

    # Updates the name or associated model for a Provisioned Throughput. For
    # more information, see [Provisioned Throughput][1] in the [Amazon
    # Bedrock User Guide][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html
    # [2]: https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
    #
    # @option params [required, String] :provisioned_model_id
    #   The Amazon Resource Name (ARN) or name of the Provisioned Throughput
    #   to update.
    #
    # @option params [String] :desired_provisioned_model_name
    #   The new name for this Provisioned Throughput.
    #
    # @option params [String] :desired_model_id
    #   The Amazon Resource Name (ARN) of the new model to associate with this
    #   Provisioned Throughput. You can't specify this field if this
    #   Provisioned Throughput is associated with a base model.
    #
    #   If this Provisioned Throughput is associated with a custom model, you
    #   can specify one of the following options:
    #
    #   * The base model from which the custom model was customized.
    #
    #   * Another custom model that was customized from the same base model as
    #     the custom model.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioned_model_throughput({
    #     provisioned_model_id: "ProvisionedModelId", # required
    #     desired_provisioned_model_name: "ProvisionedModelName",
    #     desired_model_id: "ModelIdentifier",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-2023-04-20/UpdateProvisionedModelThroughput AWS API Documentation
    #
    # @overload update_provisioned_model_throughput(params = {})
    # @param [Hash] params ({})
    def update_provisioned_model_throughput(params = {}, options = {})
      req = build_request(:update_provisioned_model_throughput, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      tracer = config.telemetry_provider.tracer_provider.tracer(
        Aws::Telemetry.module_to_tracer_name('Aws::Bedrock')
      )
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config,
        tracer: tracer
      )
      context[:gem_name] = 'aws-sdk-bedrock'
      context[:gem_version] = '1.25.0'
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
