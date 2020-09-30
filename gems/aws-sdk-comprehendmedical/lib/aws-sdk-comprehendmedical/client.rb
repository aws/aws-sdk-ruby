# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:comprehendmedical)

module Aws::ComprehendMedical
  # An API client for ComprehendMedical.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ComprehendMedical::Client.new(
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

    @identifier = :comprehendmedical

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
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    #       enable retries and extended timeouts.
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
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
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
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
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
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before raising a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
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

    # Gets the properties associated with a medical entities detection job.
    # Use this operation to get the status of a detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend Medical generated for the job.
    #   The `StartEntitiesDetectionV2Job` operation returns this identifier in
    #   its response.
    #
    # @return [Types::DescribeEntitiesDetectionV2JobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEntitiesDetectionV2JobResponse#comprehend_medical_async_job_properties #comprehend_medical_async_job_properties} => Types::ComprehendMedicalAsyncJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_entities_detection_v2_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.comprehend_medical_async_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.comprehend_medical_async_job_properties.message #=> String
    #   resp.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties.language_code #=> String, one of "en"
    #   resp.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.comprehend_medical_async_job_properties.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DescribeEntitiesDetectionV2Job AWS API Documentation
    #
    # @overload describe_entities_detection_v2_job(params = {})
    # @param [Hash] params ({})
    def describe_entities_detection_v2_job(params = {}, options = {})
      req = build_request(:describe_entities_detection_v2_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with an InferICD10CM job. Use this
    # operation to get the status of an inference job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend Medical generated for the job.
    #   `The StartICD10CMInferenceJob` operation returns this identifier in
    #   its response.
    #
    # @return [Types::DescribeICD10CMInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeICD10CMInferenceJobResponse#comprehend_medical_async_job_properties #comprehend_medical_async_job_properties} => Types::ComprehendMedicalAsyncJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_icd10cm_inference_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.comprehend_medical_async_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.comprehend_medical_async_job_properties.message #=> String
    #   resp.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties.language_code #=> String, one of "en"
    #   resp.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.comprehend_medical_async_job_properties.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DescribeICD10CMInferenceJob AWS API Documentation
    #
    # @overload describe_icd10cm_inference_job(params = {})
    # @param [Hash] params ({})
    def describe_icd10cm_inference_job(params = {}, options = {})
      req = build_request(:describe_icd10cm_inference_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with a protected health information
    # (PHI) detection job. Use this operation to get the status of a
    # detection job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend Medical generated for the job.
    #   The `StartPHIDetectionJob` operation returns this identifier in its
    #   response.
    #
    # @return [Types::DescribePHIDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePHIDetectionJobResponse#comprehend_medical_async_job_properties #comprehend_medical_async_job_properties} => Types::ComprehendMedicalAsyncJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_phi_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.comprehend_medical_async_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.comprehend_medical_async_job_properties.message #=> String
    #   resp.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties.language_code #=> String, one of "en"
    #   resp.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.comprehend_medical_async_job_properties.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DescribePHIDetectionJob AWS API Documentation
    #
    # @overload describe_phi_detection_job(params = {})
    # @param [Hash] params ({})
    def describe_phi_detection_job(params = {}, options = {})
      req = build_request(:describe_phi_detection_job, params)
      req.send_request(options)
    end

    # Gets the properties associated with an InferRxNorm job. Use this
    # operation to get the status of an inference job.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Comprehend Medical generated for the job.
    #   The StartRxNormInferenceJob operation returns this identifier in its
    #   response.
    #
    # @return [Types::DescribeRxNormInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRxNormInferenceJobResponse#comprehend_medical_async_job_properties #comprehend_medical_async_job_properties} => Types::ComprehendMedicalAsyncJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rx_norm_inference_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.comprehend_medical_async_job_properties.job_id #=> String
    #   resp.comprehend_medical_async_job_properties.job_name #=> String
    #   resp.comprehend_medical_async_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.comprehend_medical_async_job_properties.message #=> String
    #   resp.comprehend_medical_async_job_properties.submit_time #=> Time
    #   resp.comprehend_medical_async_job_properties.end_time #=> Time
    #   resp.comprehend_medical_async_job_properties.expiration_time #=> Time
    #   resp.comprehend_medical_async_job_properties.input_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties.input_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties.output_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties.output_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties.language_code #=> String, one of "en"
    #   resp.comprehend_medical_async_job_properties.data_access_role_arn #=> String
    #   resp.comprehend_medical_async_job_properties.manifest_file_path #=> String
    #   resp.comprehend_medical_async_job_properties.kms_key #=> String
    #   resp.comprehend_medical_async_job_properties.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DescribeRxNormInferenceJob AWS API Documentation
    #
    # @overload describe_rx_norm_inference_job(params = {})
    # @param [Hash] params ({})
    def describe_rx_norm_inference_job(params = {}, options = {})
      req = build_request(:describe_rx_norm_inference_job, params)
      req.send_request(options)
    end

    # The `DetectEntities` operation is deprecated. You should use the
    # DetectEntitiesV2 operation instead.
    #
    # Inspects the clinical text for a variety of medical entities and
    # returns specific information about them such as entity category,
    # location, and confidence score on that information .
    #
    # @option params [required, String] :text
    #   A UTF-8 text string containing the clinical content being examined for
    #   entities. Each string must contain fewer than 20,000 bytes of
    #   characters.
    #
    # @return [Types::DetectEntitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectEntitiesResponse#entities #entities} => Array&lt;Types::Entity&gt;
    #   * {Types::DetectEntitiesResponse#unmapped_attributes #unmapped_attributes} => Array&lt;Types::UnmappedAttribute&gt;
    #   * {Types::DetectEntitiesResponse#pagination_token #pagination_token} => String
    #   * {Types::DetectEntitiesResponse#model_version #model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_entities({
    #     text: "BoundedLengthString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].id #=> Integer
    #   resp.entities[0].begin_offset #=> Integer
    #   resp.entities[0].end_offset #=> Integer
    #   resp.entities[0].score #=> Float
    #   resp.entities[0].text #=> String
    #   resp.entities[0].category #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.entities[0].type #=> String, one of "NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"
    #   resp.entities[0].traits #=> Array
    #   resp.entities[0].traits[0].name #=> String, one of "SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"
    #   resp.entities[0].traits[0].score #=> Float
    #   resp.entities[0].attributes #=> Array
    #   resp.entities[0].attributes[0].type #=> String, one of "NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"
    #   resp.entities[0].attributes[0].score #=> Float
    #   resp.entities[0].attributes[0].relationship_score #=> Float
    #   resp.entities[0].attributes[0].relationship_type #=> String, one of "EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "DIRECTION", "SYSTEM_ORGAN_SITE"
    #   resp.entities[0].attributes[0].id #=> Integer
    #   resp.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.entities[0].attributes[0].end_offset #=> Integer
    #   resp.entities[0].attributes[0].text #=> String
    #   resp.entities[0].attributes[0].category #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.entities[0].attributes[0].traits #=> Array
    #   resp.entities[0].attributes[0].traits[0].name #=> String, one of "SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"
    #   resp.entities[0].attributes[0].traits[0].score #=> Float
    #   resp.unmapped_attributes #=> Array
    #   resp.unmapped_attributes[0].type #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.unmapped_attributes[0].attribute.type #=> String, one of "NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"
    #   resp.unmapped_attributes[0].attribute.score #=> Float
    #   resp.unmapped_attributes[0].attribute.relationship_score #=> Float
    #   resp.unmapped_attributes[0].attribute.relationship_type #=> String, one of "EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "DIRECTION", "SYSTEM_ORGAN_SITE"
    #   resp.unmapped_attributes[0].attribute.id #=> Integer
    #   resp.unmapped_attributes[0].attribute.begin_offset #=> Integer
    #   resp.unmapped_attributes[0].attribute.end_offset #=> Integer
    #   resp.unmapped_attributes[0].attribute.text #=> String
    #   resp.unmapped_attributes[0].attribute.category #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.unmapped_attributes[0].attribute.traits #=> Array
    #   resp.unmapped_attributes[0].attribute.traits[0].name #=> String, one of "SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"
    #   resp.unmapped_attributes[0].attribute.traits[0].score #=> Float
    #   resp.pagination_token #=> String
    #   resp.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectEntities AWS API Documentation
    #
    # @overload detect_entities(params = {})
    # @param [Hash] params ({})
    def detect_entities(params = {}, options = {})
      req = build_request(:detect_entities, params)
      req.send_request(options)
    end

    # Inspects the clinical text for a variety of medical entities and
    # returns specific information about them such as entity category,
    # location, and confidence score on that information. Amazon Comprehend
    # Medical only detects medical entities in English language texts.
    #
    # The `DetectEntitiesV2` operation replaces the DetectEntities
    # operation. This new action uses a different model for determining the
    # entities in your medical text and changes the way that some entities
    # are returned in the output. You should use the `DetectEntitiesV2`
    # operation in all new applications.
    #
    # The `DetectEntitiesV2` operation returns the `Acuity` and `Direction`
    # entities as attributes instead of types.
    #
    # @option params [required, String] :text
    #   A UTF-8 string containing the clinical content being examined for
    #   entities. Each string must contain fewer than 20,000 bytes of
    #   characters.
    #
    # @return [Types::DetectEntitiesV2Response] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectEntitiesV2Response#entities #entities} => Array&lt;Types::Entity&gt;
    #   * {Types::DetectEntitiesV2Response#unmapped_attributes #unmapped_attributes} => Array&lt;Types::UnmappedAttribute&gt;
    #   * {Types::DetectEntitiesV2Response#pagination_token #pagination_token} => String
    #   * {Types::DetectEntitiesV2Response#model_version #model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_entities_v2({
    #     text: "BoundedLengthString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].id #=> Integer
    #   resp.entities[0].begin_offset #=> Integer
    #   resp.entities[0].end_offset #=> Integer
    #   resp.entities[0].score #=> Float
    #   resp.entities[0].text #=> String
    #   resp.entities[0].category #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.entities[0].type #=> String, one of "NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"
    #   resp.entities[0].traits #=> Array
    #   resp.entities[0].traits[0].name #=> String, one of "SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"
    #   resp.entities[0].traits[0].score #=> Float
    #   resp.entities[0].attributes #=> Array
    #   resp.entities[0].attributes[0].type #=> String, one of "NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"
    #   resp.entities[0].attributes[0].score #=> Float
    #   resp.entities[0].attributes[0].relationship_score #=> Float
    #   resp.entities[0].attributes[0].relationship_type #=> String, one of "EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "DIRECTION", "SYSTEM_ORGAN_SITE"
    #   resp.entities[0].attributes[0].id #=> Integer
    #   resp.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.entities[0].attributes[0].end_offset #=> Integer
    #   resp.entities[0].attributes[0].text #=> String
    #   resp.entities[0].attributes[0].category #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.entities[0].attributes[0].traits #=> Array
    #   resp.entities[0].attributes[0].traits[0].name #=> String, one of "SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"
    #   resp.entities[0].attributes[0].traits[0].score #=> Float
    #   resp.unmapped_attributes #=> Array
    #   resp.unmapped_attributes[0].type #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.unmapped_attributes[0].attribute.type #=> String, one of "NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"
    #   resp.unmapped_attributes[0].attribute.score #=> Float
    #   resp.unmapped_attributes[0].attribute.relationship_score #=> Float
    #   resp.unmapped_attributes[0].attribute.relationship_type #=> String, one of "EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "DIRECTION", "SYSTEM_ORGAN_SITE"
    #   resp.unmapped_attributes[0].attribute.id #=> Integer
    #   resp.unmapped_attributes[0].attribute.begin_offset #=> Integer
    #   resp.unmapped_attributes[0].attribute.end_offset #=> Integer
    #   resp.unmapped_attributes[0].attribute.text #=> String
    #   resp.unmapped_attributes[0].attribute.category #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.unmapped_attributes[0].attribute.traits #=> Array
    #   resp.unmapped_attributes[0].attribute.traits[0].name #=> String, one of "SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"
    #   resp.unmapped_attributes[0].attribute.traits[0].score #=> Float
    #   resp.pagination_token #=> String
    #   resp.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectEntitiesV2 AWS API Documentation
    #
    # @overload detect_entities_v2(params = {})
    # @param [Hash] params ({})
    def detect_entities_v2(params = {}, options = {})
      req = build_request(:detect_entities_v2, params)
      req.send_request(options)
    end

    # Inspects the clinical text for protected health information (PHI)
    # entities and returns the entity category, location, and confidence
    # score for each entity. Amazon Comprehend Medical only detects entities
    # in English language texts.
    #
    # @option params [required, String] :text
    #   A UTF-8 text string containing the clinical content being examined for
    #   PHI entities. Each string must contain fewer than 20,000 bytes of
    #   characters.
    #
    # @return [Types::DetectPHIResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetectPHIResponse#entities #entities} => Array&lt;Types::Entity&gt;
    #   * {Types::DetectPHIResponse#pagination_token #pagination_token} => String
    #   * {Types::DetectPHIResponse#model_version #model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_phi({
    #     text: "BoundedLengthString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].id #=> Integer
    #   resp.entities[0].begin_offset #=> Integer
    #   resp.entities[0].end_offset #=> Integer
    #   resp.entities[0].score #=> Float
    #   resp.entities[0].text #=> String
    #   resp.entities[0].category #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.entities[0].type #=> String, one of "NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"
    #   resp.entities[0].traits #=> Array
    #   resp.entities[0].traits[0].name #=> String, one of "SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"
    #   resp.entities[0].traits[0].score #=> Float
    #   resp.entities[0].attributes #=> Array
    #   resp.entities[0].attributes[0].type #=> String, one of "NAME", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "GENERIC_NAME", "BRAND_NAME", "STRENGTH", "RATE", "ACUITY", "TEST_NAME", "TEST_VALUE", "TEST_UNITS", "PROCEDURE_NAME", "TREATMENT_NAME", "DATE", "AGE", "CONTACT_POINT", "EMAIL", "IDENTIFIER", "URL", "ADDRESS", "PROFESSION", "SYSTEM_ORGAN_SITE", "DIRECTION", "QUALITY", "QUANTITY", "TIME_EXPRESSION", "TIME_TO_MEDICATION_NAME", "TIME_TO_DX_NAME", "TIME_TO_TEST_NAME", "TIME_TO_PROCEDURE_NAME", "TIME_TO_TREATMENT_NAME"
    #   resp.entities[0].attributes[0].score #=> Float
    #   resp.entities[0].attributes[0].relationship_score #=> Float
    #   resp.entities[0].attributes[0].relationship_type #=> String, one of "EVERY", "WITH_DOSAGE", "ADMINISTERED_VIA", "FOR", "NEGATIVE", "OVERLAP", "DOSAGE", "ROUTE_OR_MODE", "FORM", "FREQUENCY", "DURATION", "STRENGTH", "RATE", "ACUITY", "TEST_VALUE", "TEST_UNITS", "DIRECTION", "SYSTEM_ORGAN_SITE"
    #   resp.entities[0].attributes[0].id #=> Integer
    #   resp.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.entities[0].attributes[0].end_offset #=> Integer
    #   resp.entities[0].attributes[0].text #=> String
    #   resp.entities[0].attributes[0].category #=> String, one of "MEDICATION", "MEDICAL_CONDITION", "PROTECTED_HEALTH_INFORMATION", "TEST_TREATMENT_PROCEDURE", "ANATOMY", "TIME_EXPRESSION"
    #   resp.entities[0].attributes[0].traits #=> Array
    #   resp.entities[0].attributes[0].traits[0].name #=> String, one of "SIGN", "SYMPTOM", "DIAGNOSIS", "NEGATION"
    #   resp.entities[0].attributes[0].traits[0].score #=> Float
    #   resp.pagination_token #=> String
    #   resp.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectPHI AWS API Documentation
    #
    # @overload detect_phi(params = {})
    # @param [Hash] params ({})
    def detect_phi(params = {}, options = {})
      req = build_request(:detect_phi, params)
      req.send_request(options)
    end

    # InferICD10CM detects medical conditions as entities listed in a
    # patient record and links those entities to normalized concept
    # identifiers in the ICD-10-CM knowledge base from the Centers for
    # Disease Control. Amazon Comprehend Medical only detects medical
    # entities in English language texts.
    #
    # @option params [required, String] :text
    #   The input text used for analysis. The input for InferICD10CM is a
    #   string from 1 to 10000 characters.
    #
    # @return [Types::InferICD10CMResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InferICD10CMResponse#entities #entities} => Array&lt;Types::ICD10CMEntity&gt;
    #   * {Types::InferICD10CMResponse#pagination_token #pagination_token} => String
    #   * {Types::InferICD10CMResponse#model_version #model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.infer_icd10cm({
    #     text: "OntologyLinkingBoundedLengthString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].id #=> Integer
    #   resp.entities[0].text #=> String
    #   resp.entities[0].category #=> String, one of "MEDICAL_CONDITION"
    #   resp.entities[0].type #=> String, one of "DX_NAME"
    #   resp.entities[0].score #=> Float
    #   resp.entities[0].begin_offset #=> Integer
    #   resp.entities[0].end_offset #=> Integer
    #   resp.entities[0].attributes #=> Array
    #   resp.entities[0].attributes[0].type #=> String, one of "ACUITY", "DIRECTION", "SYSTEM_ORGAN_SITE", "QUALITY", "QUANTITY"
    #   resp.entities[0].attributes[0].score #=> Float
    #   resp.entities[0].attributes[0].relationship_score #=> Float
    #   resp.entities[0].attributes[0].id #=> Integer
    #   resp.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.entities[0].attributes[0].end_offset #=> Integer
    #   resp.entities[0].attributes[0].text #=> String
    #   resp.entities[0].attributes[0].traits #=> Array
    #   resp.entities[0].attributes[0].traits[0].name #=> String, one of "NEGATION", "DIAGNOSIS", "SIGN", "SYMPTOM"
    #   resp.entities[0].attributes[0].traits[0].score #=> Float
    #   resp.entities[0].traits #=> Array
    #   resp.entities[0].traits[0].name #=> String, one of "NEGATION", "DIAGNOSIS", "SIGN", "SYMPTOM"
    #   resp.entities[0].traits[0].score #=> Float
    #   resp.entities[0].icd10cm_concepts #=> Array
    #   resp.entities[0].icd10cm_concepts[0].description #=> String
    #   resp.entities[0].icd10cm_concepts[0].code #=> String
    #   resp.entities[0].icd10cm_concepts[0].score #=> Float
    #   resp.pagination_token #=> String
    #   resp.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InferICD10CM AWS API Documentation
    #
    # @overload infer_icd10cm(params = {})
    # @param [Hash] params ({})
    def infer_icd10cm(params = {}, options = {})
      req = build_request(:infer_icd10cm, params)
      req.send_request(options)
    end

    # InferRxNorm detects medications as entities listed in a patient record
    # and links to the normalized concept identifiers in the RxNorm database
    # from the National Library of Medicine. Amazon Comprehend Medical only
    # detects medical entities in English language texts.
    #
    # @option params [required, String] :text
    #   The input text used for analysis. The input for InferRxNorm is a
    #   string from 1 to 10000 characters.
    #
    # @return [Types::InferRxNormResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InferRxNormResponse#entities #entities} => Array&lt;Types::RxNormEntity&gt;
    #   * {Types::InferRxNormResponse#pagination_token #pagination_token} => String
    #   * {Types::InferRxNormResponse#model_version #model_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.infer_rx_norm({
    #     text: "OntologyLinkingBoundedLengthString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.entities #=> Array
    #   resp.entities[0].id #=> Integer
    #   resp.entities[0].text #=> String
    #   resp.entities[0].category #=> String, one of "MEDICATION"
    #   resp.entities[0].type #=> String, one of "BRAND_NAME", "GENERIC_NAME"
    #   resp.entities[0].score #=> Float
    #   resp.entities[0].begin_offset #=> Integer
    #   resp.entities[0].end_offset #=> Integer
    #   resp.entities[0].attributes #=> Array
    #   resp.entities[0].attributes[0].type #=> String, one of "DOSAGE", "DURATION", "FORM", "FREQUENCY", "RATE", "ROUTE_OR_MODE", "STRENGTH"
    #   resp.entities[0].attributes[0].score #=> Float
    #   resp.entities[0].attributes[0].relationship_score #=> Float
    #   resp.entities[0].attributes[0].id #=> Integer
    #   resp.entities[0].attributes[0].begin_offset #=> Integer
    #   resp.entities[0].attributes[0].end_offset #=> Integer
    #   resp.entities[0].attributes[0].text #=> String
    #   resp.entities[0].attributes[0].traits #=> Array
    #   resp.entities[0].attributes[0].traits[0].name #=> String, one of "NEGATION"
    #   resp.entities[0].attributes[0].traits[0].score #=> Float
    #   resp.entities[0].traits #=> Array
    #   resp.entities[0].traits[0].name #=> String, one of "NEGATION"
    #   resp.entities[0].traits[0].score #=> Float
    #   resp.entities[0].rx_norm_concepts #=> Array
    #   resp.entities[0].rx_norm_concepts[0].description #=> String
    #   resp.entities[0].rx_norm_concepts[0].code #=> String
    #   resp.entities[0].rx_norm_concepts[0].score #=> Float
    #   resp.pagination_token #=> String
    #   resp.model_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InferRxNorm AWS API Documentation
    #
    # @overload infer_rx_norm(params = {})
    # @param [Hash] params ({})
    def infer_rx_norm(params = {}, options = {})
      req = build_request(:infer_rx_norm, params)
      req.send_request(options)
    end

    # Gets a list of medical entity detection jobs that you have submitted.
    #
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs based on their
    #   names, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListEntitiesDetectionV2JobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEntitiesDetectionV2JobsResponse#comprehend_medical_async_job_properties_list #comprehend_medical_async_job_properties_list} => Array&lt;Types::ComprehendMedicalAsyncJobProperties&gt;
    #   * {Types::ListEntitiesDetectionV2JobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities_detection_v2_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, PARTIAL_SUCCESS, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.comprehend_medical_async_job_properties_list #=> Array
    #   resp.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of "en"
    #   resp.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ListEntitiesDetectionV2Jobs AWS API Documentation
    #
    # @overload list_entities_detection_v2_jobs(params = {})
    # @param [Hash] params ({})
    def list_entities_detection_v2_jobs(params = {}, options = {})
      req = build_request(:list_entities_detection_v2_jobs, params)
      req.send_request(options)
    end

    # Gets a list of InferICD10CM jobs that you have submitted.
    #
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs based on their
    #   names, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListICD10CMInferenceJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListICD10CMInferenceJobsResponse#comprehend_medical_async_job_properties_list #comprehend_medical_async_job_properties_list} => Array&lt;Types::ComprehendMedicalAsyncJobProperties&gt;
    #   * {Types::ListICD10CMInferenceJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_icd10cm_inference_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, PARTIAL_SUCCESS, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.comprehend_medical_async_job_properties_list #=> Array
    #   resp.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of "en"
    #   resp.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ListICD10CMInferenceJobs AWS API Documentation
    #
    # @overload list_icd10cm_inference_jobs(params = {})
    # @param [Hash] params ({})
    def list_icd10cm_inference_jobs(params = {}, options = {})
      req = build_request(:list_icd10cm_inference_jobs, params)
      req.send_request(options)
    end

    # Gets a list of protected health information (PHI) detection jobs that
    # you have submitted.
    #
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs based on their
    #   names, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #
    # @return [Types::ListPHIDetectionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPHIDetectionJobsResponse#comprehend_medical_async_job_properties_list #comprehend_medical_async_job_properties_list} => Array&lt;Types::ComprehendMedicalAsyncJobProperties&gt;
    #   * {Types::ListPHIDetectionJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_phi_detection_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, PARTIAL_SUCCESS, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.comprehend_medical_async_job_properties_list #=> Array
    #   resp.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of "en"
    #   resp.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ListPHIDetectionJobs AWS API Documentation
    #
    # @overload list_phi_detection_jobs(params = {})
    # @param [Hash] params ({})
    def list_phi_detection_jobs(params = {}, options = {})
      req = build_request(:list_phi_detection_jobs, params)
      req.send_request(options)
    end

    # Gets a list of InferRxNorm jobs that you have submitted.
    #
    # @option params [Types::ComprehendMedicalAsyncJobFilter] :filter
    #   Filters the jobs that are returned. You can filter jobs based on their
    #   names, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   Identifies the next page of results to return.
    #
    # @option params [Integer] :max_results
    #   Identifies the next page of results to return.
    #
    # @return [Types::ListRxNormInferenceJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRxNormInferenceJobsResponse#comprehend_medical_async_job_properties_list #comprehend_medical_async_job_properties_list} => Array&lt;Types::ComprehendMedicalAsyncJobProperties&gt;
    #   * {Types::ListRxNormInferenceJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rx_norm_inference_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, PARTIAL_SUCCESS, FAILED, STOP_REQUESTED, STOPPED
    #       submit_time_before: Time.now,
    #       submit_time_after: Time.now,
    #     },
    #     next_token: "String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.comprehend_medical_async_job_properties_list #=> Array
    #   resp.comprehend_medical_async_job_properties_list[0].job_id #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].job_name #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "PARTIAL_SUCCESS", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.comprehend_medical_async_job_properties_list[0].message #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].submit_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].end_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].expiration_time #=> Time
    #   resp.comprehend_medical_async_job_properties_list[0].input_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].input_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].output_data_config.s3_bucket #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].output_data_config.s3_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].language_code #=> String, one of "en"
    #   resp.comprehend_medical_async_job_properties_list[0].data_access_role_arn #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].manifest_file_path #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].kms_key #=> String
    #   resp.comprehend_medical_async_job_properties_list[0].model_version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ListRxNormInferenceJobs AWS API Documentation
    #
    # @overload list_rx_norm_inference_jobs(params = {})
    # @param [Hash] params ({})
    def list_rx_norm_inference_jobs(params = {}, options = {})
      req = build_request(:list_rx_norm_inference_jobs, params)
      req.send_request(options)
    end

    # Starts an asynchronous medical entity detection job for a collection
    # of documents. Use the `DescribeEntitiesDetectionV2Job` operation to
    # track the status of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend Medical read
    #   access to your input data. For more information, see [ Role-Based
    #   Permissions Required for Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend Medical generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :kms_key
    #   An AWS Key Management Service key to encrypt your output files. If you
    #   do not specify a key, the files are written in plain text.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language.
    #
    # @return [Types::StartEntitiesDetectionV2JobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartEntitiesDetectionV2JobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_entities_detection_v2_job({
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en", # required, accepts en
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StartEntitiesDetectionV2Job AWS API Documentation
    #
    # @overload start_entities_detection_v2_job(params = {})
    # @param [Hash] params ({})
    def start_entities_detection_v2_job(params = {}, options = {})
      req = build_request(:start_entities_detection_v2_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous job to detect medical conditions and link them
    # to the ICD-10-CM ontology. Use the `DescribeICD10CMInferenceJob`
    # operation to track the status of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend Medical read
    #   access to your input data. For more information, see [ Role-Based
    #   Permissions Required for Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend Medical generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :kms_key
    #   An AWS Key Management Service key to encrypt your output files. If you
    #   do not specify a key, the files are written in plain text.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language.
    #
    # @return [Types::StartICD10CMInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartICD10CMInferenceJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_icd10cm_inference_job({
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en", # required, accepts en
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StartICD10CMInferenceJob AWS API Documentation
    #
    # @overload start_icd10cm_inference_job(params = {})
    # @param [Hash] params ({})
    def start_icd10cm_inference_job(params = {}, options = {})
      req = build_request(:start_icd10cm_inference_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous job to detect protected health information
    # (PHI). Use the `DescribePHIDetectionJob` operation to track the status
    # of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend Medical read
    #   access to your input data. For more information, see [ Role-Based
    #   Permissions Required for Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend Medical generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :kms_key
    #   An AWS Key Management Service key to encrypt your output files. If you
    #   do not specify a key, the files are written in plain text.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language.
    #
    # @return [Types::StartPHIDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartPHIDetectionJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_phi_detection_job({
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en", # required, accepts en
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StartPHIDetectionJob AWS API Documentation
    #
    # @overload start_phi_detection_job(params = {})
    # @param [Hash] params ({})
    def start_phi_detection_job(params = {}, options = {})
      req = build_request(:start_phi_detection_job, params)
      req.send_request(options)
    end

    # Starts an asynchronous job to detect medication entities and link them
    # to the RxNorm ontology. Use the `DescribeRxNormInferenceJob` operation
    # to track the status of a job.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input data for the job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies where to send the output files.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend Medical read
    #   access to your input data. For more information, see [ Role-Based
    #   Permissions Required for Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med
    #
    # @option params [String] :job_name
    #   The identifier of the job.
    #
    # @option params [String] :client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend Medical generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :kms_key
    #   An AWS Key Management Service key to encrypt your output files. If you
    #   do not specify a key, the files are written in plain text.
    #
    # @option params [required, String] :language_code
    #   The language of the input documents. All documents must be in the same
    #   language.
    #
    # @return [Types::StartRxNormInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartRxNormInferenceJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_rx_norm_inference_job({
    #     input_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     output_data_config: { # required
    #       s3_bucket: "S3Bucket", # required
    #       s3_key: "S3Key",
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     job_name: "JobName",
    #     client_request_token: "ClientRequestTokenString",
    #     kms_key: "KMSKey",
    #     language_code: "en", # required, accepts en
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StartRxNormInferenceJob AWS API Documentation
    #
    # @overload start_rx_norm_inference_job(params = {})
    # @param [Hash] params ({})
    def start_rx_norm_inference_job(params = {}, options = {})
      req = build_request(:start_rx_norm_inference_job, params)
      req.send_request(options)
    end

    # Stops a medical entities detection job in progress.
    #
    # @option params [required, String] :job_id
    #   The identifier of the medical entities job to stop.
    #
    # @return [Types::StopEntitiesDetectionV2JobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopEntitiesDetectionV2JobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_entities_detection_v2_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StopEntitiesDetectionV2Job AWS API Documentation
    #
    # @overload stop_entities_detection_v2_job(params = {})
    # @param [Hash] params ({})
    def stop_entities_detection_v2_job(params = {}, options = {})
      req = build_request(:stop_entities_detection_v2_job, params)
      req.send_request(options)
    end

    # Stops an InferICD10CM inference job in progress.
    #
    # @option params [required, String] :job_id
    #   The identifier of the job.
    #
    # @return [Types::StopICD10CMInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopICD10CMInferenceJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_icd10cm_inference_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StopICD10CMInferenceJob AWS API Documentation
    #
    # @overload stop_icd10cm_inference_job(params = {})
    # @param [Hash] params ({})
    def stop_icd10cm_inference_job(params = {}, options = {})
      req = build_request(:stop_icd10cm_inference_job, params)
      req.send_request(options)
    end

    # Stops a protected health information (PHI) detection job in progress.
    #
    # @option params [required, String] :job_id
    #   The identifier of the PHI detection job to stop.
    #
    # @return [Types::StopPHIDetectionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopPHIDetectionJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_phi_detection_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StopPHIDetectionJob AWS API Documentation
    #
    # @overload stop_phi_detection_job(params = {})
    # @param [Hash] params ({})
    def stop_phi_detection_job(params = {}, options = {})
      req = build_request(:stop_phi_detection_job, params)
      req.send_request(options)
    end

    # Stops an InferRxNorm inference job in progress.
    #
    # @option params [required, String] :job_id
    #   The identifier of the job.
    #
    # @return [Types::StopRxNormInferenceJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopRxNormInferenceJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_rx_norm_inference_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StopRxNormInferenceJob AWS API Documentation
    #
    # @overload stop_rx_norm_inference_job(params = {})
    # @param [Hash] params ({})
    def stop_rx_norm_inference_job(params = {}, options = {})
      req = build_request(:stop_rx_norm_inference_job, params)
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
      context[:gem_name] = 'aws-sdk-comprehendmedical'
      context[:gem_version] = '1.23.0'
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
