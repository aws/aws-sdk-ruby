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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:translate)

module Aws::Translate
  # An API client for Translate.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Translate::Client.new(
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

    @identifier = :translate

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)
    add_plugin(Aws::Translate::Plugins::Endpoints)

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
    #   @option options [Aws::Translate::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::Translate::EndpointParameters`
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

    # Creates a parallel data resource in Amazon Translate by importing an
    # input file from Amazon S3. Parallel data files contain examples that
    # show how you want segments of text to be translated. By adding
    # parallel data, you can influence the style, tone, and word choice in
    # your translation output.
    #
    # @option params [required, String] :name
    #   A custom name for the parallel data resource in Amazon Translate. You
    #   must assign a name that is unique in the account and region.
    #
    # @option params [String] :description
    #   A custom description for the parallel data resource in Amazon
    #   Translate.
    #
    # @option params [required, Types::ParallelDataConfig] :parallel_data_config
    #   Specifies the format and S3 location of the parallel data input file.
    #
    # @option params [Types::EncryptionKey] :encryption_key
    #   The encryption key used to encrypt this object.
    #
    # @option params [required, String] :client_token
    #   A unique identifier for the request. This token is automatically
    #   generated when you use Amazon Translate through an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be associated with this resource. A tag is a key-value pair
    #   that adds metadata to a resource. Each tag key for the resource must
    #   be unique. For more information, see [ Tagging your resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/tagging.html
    #
    # @return [Types::CreateParallelDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateParallelDataResponse#name #name} => String
    #   * {Types::CreateParallelDataResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_parallel_data({
    #     name: "ResourceName", # required
    #     description: "Description",
    #     parallel_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       format: "TSV", # required, accepts TSV, CSV, TMX
    #     },
    #     encryption_key: {
    #       type: "KMS", # required, accepts KMS
    #       id: "EncryptionKeyID", # required
    #     },
    #     client_token: "ClientTokenString", # required
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
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/CreateParallelData AWS API Documentation
    #
    # @overload create_parallel_data(params = {})
    # @param [Hash] params ({})
    def create_parallel_data(params = {}, options = {})
      req = build_request(:create_parallel_data, params)
      req.send_request(options)
    end

    # Deletes a parallel data resource in Amazon Translate.
    #
    # @option params [required, String] :name
    #   The name of the parallel data resource that is being deleted.
    #
    # @return [Types::DeleteParallelDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteParallelDataResponse#name #name} => String
    #   * {Types::DeleteParallelDataResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_parallel_data({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DeleteParallelData AWS API Documentation
    #
    # @overload delete_parallel_data(params = {})
    # @param [Hash] params ({})
    def delete_parallel_data(params = {}, options = {})
      req = build_request(:delete_parallel_data, params)
      req.send_request(options)
    end

    # A synchronous action that deletes a custom terminology.
    #
    # @option params [required, String] :name
    #   The name of the custom terminology being deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_terminology({
    #     name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DeleteTerminology AWS API Documentation
    #
    # @overload delete_terminology(params = {})
    # @param [Hash] params ({})
    def delete_terminology(params = {}, options = {})
      req = build_request(:delete_terminology, params)
      req.send_request(options)
    end

    # Gets the properties associated with an asynchronous batch translation
    # job including name, ID, status, source and target languages,
    # input/output S3 buckets, and so on.
    #
    # @option params [required, String] :job_id
    #   The identifier that Amazon Translate generated for the job. The
    #   StartTextTranslationJob operation returns this identifier in its
    #   response.
    #
    # @return [Types::DescribeTextTranslationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTextTranslationJobResponse#text_translation_job_properties #text_translation_job_properties} => Types::TextTranslationJobProperties
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_text_translation_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.text_translation_job_properties.job_id #=> String
    #   resp.text_translation_job_properties.job_name #=> String
    #   resp.text_translation_job_properties.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.text_translation_job_properties.job_details.translated_documents_count #=> Integer
    #   resp.text_translation_job_properties.job_details.documents_with_errors_count #=> Integer
    #   resp.text_translation_job_properties.job_details.input_documents_count #=> Integer
    #   resp.text_translation_job_properties.source_language_code #=> String
    #   resp.text_translation_job_properties.target_language_codes #=> Array
    #   resp.text_translation_job_properties.target_language_codes[0] #=> String
    #   resp.text_translation_job_properties.terminology_names #=> Array
    #   resp.text_translation_job_properties.terminology_names[0] #=> String
    #   resp.text_translation_job_properties.parallel_data_names #=> Array
    #   resp.text_translation_job_properties.parallel_data_names[0] #=> String
    #   resp.text_translation_job_properties.message #=> String
    #   resp.text_translation_job_properties.submitted_time #=> Time
    #   resp.text_translation_job_properties.end_time #=> Time
    #   resp.text_translation_job_properties.input_data_config.s3_uri #=> String
    #   resp.text_translation_job_properties.input_data_config.content_type #=> String
    #   resp.text_translation_job_properties.output_data_config.s3_uri #=> String
    #   resp.text_translation_job_properties.output_data_config.encryption_key.type #=> String, one of "KMS"
    #   resp.text_translation_job_properties.output_data_config.encryption_key.id #=> String
    #   resp.text_translation_job_properties.data_access_role_arn #=> String
    #   resp.text_translation_job_properties.settings.formality #=> String, one of "FORMAL", "INFORMAL"
    #   resp.text_translation_job_properties.settings.profanity #=> String, one of "MASK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DescribeTextTranslationJob AWS API Documentation
    #
    # @overload describe_text_translation_job(params = {})
    # @param [Hash] params ({})
    def describe_text_translation_job(params = {}, options = {})
      req = build_request(:describe_text_translation_job, params)
      req.send_request(options)
    end

    # Provides information about a parallel data resource.
    #
    # @option params [required, String] :name
    #   The name of the parallel data resource that is being retrieved.
    #
    # @return [Types::GetParallelDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetParallelDataResponse#parallel_data_properties #parallel_data_properties} => Types::ParallelDataProperties
    #   * {Types::GetParallelDataResponse#data_location #data_location} => Types::ParallelDataDataLocation
    #   * {Types::GetParallelDataResponse#auxiliary_data_location #auxiliary_data_location} => Types::ParallelDataDataLocation
    #   * {Types::GetParallelDataResponse#latest_update_attempt_auxiliary_data_location #latest_update_attempt_auxiliary_data_location} => Types::ParallelDataDataLocation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_parallel_data({
    #     name: "ResourceName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.parallel_data_properties.name #=> String
    #   resp.parallel_data_properties.arn #=> String
    #   resp.parallel_data_properties.description #=> String
    #   resp.parallel_data_properties.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.parallel_data_properties.source_language_code #=> String
    #   resp.parallel_data_properties.target_language_codes #=> Array
    #   resp.parallel_data_properties.target_language_codes[0] #=> String
    #   resp.parallel_data_properties.parallel_data_config.s3_uri #=> String
    #   resp.parallel_data_properties.parallel_data_config.format #=> String, one of "TSV", "CSV", "TMX"
    #   resp.parallel_data_properties.message #=> String
    #   resp.parallel_data_properties.imported_data_size #=> Integer
    #   resp.parallel_data_properties.imported_record_count #=> Integer
    #   resp.parallel_data_properties.failed_record_count #=> Integer
    #   resp.parallel_data_properties.skipped_record_count #=> Integer
    #   resp.parallel_data_properties.encryption_key.type #=> String, one of "KMS"
    #   resp.parallel_data_properties.encryption_key.id #=> String
    #   resp.parallel_data_properties.created_at #=> Time
    #   resp.parallel_data_properties.last_updated_at #=> Time
    #   resp.parallel_data_properties.latest_update_attempt_status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.parallel_data_properties.latest_update_attempt_at #=> Time
    #   resp.data_location.repository_type #=> String
    #   resp.data_location.location #=> String
    #   resp.auxiliary_data_location.repository_type #=> String
    #   resp.auxiliary_data_location.location #=> String
    #   resp.latest_update_attempt_auxiliary_data_location.repository_type #=> String
    #   resp.latest_update_attempt_auxiliary_data_location.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetParallelData AWS API Documentation
    #
    # @overload get_parallel_data(params = {})
    # @param [Hash] params ({})
    def get_parallel_data(params = {}, options = {})
      req = build_request(:get_parallel_data, params)
      req.send_request(options)
    end

    # Retrieves a custom terminology.
    #
    # @option params [required, String] :name
    #   The name of the custom terminology being retrieved.
    #
    # @option params [String] :terminology_data_format
    #   The data format of the custom terminology being retrieved.
    #
    #   If you don't specify this parameter, Amazon Translate returns a file
    #   with the same format as the file that was imported to create the
    #   terminology.
    #
    #   If you specify this parameter when you retrieve a multi-directional
    #   terminology resource, you must specify the same format as the input
    #   file that was imported to create it. Otherwise, Amazon Translate
    #   throws an error.
    #
    # @return [Types::GetTerminologyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTerminologyResponse#terminology_properties #terminology_properties} => Types::TerminologyProperties
    #   * {Types::GetTerminologyResponse#terminology_data_location #terminology_data_location} => Types::TerminologyDataLocation
    #   * {Types::GetTerminologyResponse#auxiliary_data_location #auxiliary_data_location} => Types::TerminologyDataLocation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_terminology({
    #     name: "ResourceName", # required
    #     terminology_data_format: "CSV", # accepts CSV, TMX, TSV
    #   })
    #
    # @example Response structure
    #
    #   resp.terminology_properties.name #=> String
    #   resp.terminology_properties.description #=> String
    #   resp.terminology_properties.arn #=> String
    #   resp.terminology_properties.source_language_code #=> String
    #   resp.terminology_properties.target_language_codes #=> Array
    #   resp.terminology_properties.target_language_codes[0] #=> String
    #   resp.terminology_properties.encryption_key.type #=> String, one of "KMS"
    #   resp.terminology_properties.encryption_key.id #=> String
    #   resp.terminology_properties.size_bytes #=> Integer
    #   resp.terminology_properties.term_count #=> Integer
    #   resp.terminology_properties.created_at #=> Time
    #   resp.terminology_properties.last_updated_at #=> Time
    #   resp.terminology_properties.directionality #=> String, one of "UNI", "MULTI"
    #   resp.terminology_properties.message #=> String
    #   resp.terminology_properties.skipped_term_count #=> Integer
    #   resp.terminology_properties.format #=> String, one of "CSV", "TMX", "TSV"
    #   resp.terminology_data_location.repository_type #=> String
    #   resp.terminology_data_location.location #=> String
    #   resp.auxiliary_data_location.repository_type #=> String
    #   resp.auxiliary_data_location.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetTerminology AWS API Documentation
    #
    # @overload get_terminology(params = {})
    # @param [Hash] params ({})
    def get_terminology(params = {}, options = {})
      req = build_request(:get_terminology, params)
      req.send_request(options)
    end

    # Creates or updates a custom terminology, depending on whether one
    # already exists for the given terminology name. Importing a terminology
    # with the same name as an existing one will merge the terminologies
    # based on the chosen merge strategy. The only supported merge strategy
    # is OVERWRITE, where the imported terminology overwrites the existing
    # terminology of the same name.
    #
    # If you import a terminology that overwrites an existing one, the new
    # terminology takes up to 10 minutes to fully propagate. After that,
    # translations have access to the new terminology.
    #
    # @option params [required, String] :name
    #   The name of the custom terminology being imported.
    #
    # @option params [required, String] :merge_strategy
    #   The merge strategy of the custom terminology being imported.
    #   Currently, only the OVERWRITE merge strategy is supported. In this
    #   case, the imported terminology will overwrite an existing terminology
    #   of the same name.
    #
    # @option params [String] :description
    #   The description of the custom terminology being imported.
    #
    # @option params [required, Types::TerminologyData] :terminology_data
    #   The terminology data for the custom terminology being imported.
    #
    # @option params [Types::EncryptionKey] :encryption_key
    #   The encryption key for the custom terminology being imported.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to be associated with this resource. A tag is a key-value pair
    #   that adds metadata to a resource. Each tag key for the resource must
    #   be unique. For more information, see [ Tagging your resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/tagging.html
    #
    # @return [Types::ImportTerminologyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ImportTerminologyResponse#terminology_properties #terminology_properties} => Types::TerminologyProperties
    #   * {Types::ImportTerminologyResponse#auxiliary_data_location #auxiliary_data_location} => Types::TerminologyDataLocation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_terminology({
    #     name: "ResourceName", # required
    #     merge_strategy: "OVERWRITE", # required, accepts OVERWRITE
    #     description: "Description",
    #     terminology_data: { # required
    #       file: "data", # required
    #       format: "CSV", # required, accepts CSV, TMX, TSV
    #       directionality: "UNI", # accepts UNI, MULTI
    #     },
    #     encryption_key: {
    #       type: "KMS", # required, accepts KMS
    #       id: "EncryptionKeyID", # required
    #     },
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
    #   resp.terminology_properties.name #=> String
    #   resp.terminology_properties.description #=> String
    #   resp.terminology_properties.arn #=> String
    #   resp.terminology_properties.source_language_code #=> String
    #   resp.terminology_properties.target_language_codes #=> Array
    #   resp.terminology_properties.target_language_codes[0] #=> String
    #   resp.terminology_properties.encryption_key.type #=> String, one of "KMS"
    #   resp.terminology_properties.encryption_key.id #=> String
    #   resp.terminology_properties.size_bytes #=> Integer
    #   resp.terminology_properties.term_count #=> Integer
    #   resp.terminology_properties.created_at #=> Time
    #   resp.terminology_properties.last_updated_at #=> Time
    #   resp.terminology_properties.directionality #=> String, one of "UNI", "MULTI"
    #   resp.terminology_properties.message #=> String
    #   resp.terminology_properties.skipped_term_count #=> Integer
    #   resp.terminology_properties.format #=> String, one of "CSV", "TMX", "TSV"
    #   resp.auxiliary_data_location.repository_type #=> String
    #   resp.auxiliary_data_location.location #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ImportTerminology AWS API Documentation
    #
    # @overload import_terminology(params = {})
    # @param [Hash] params ({})
    def import_terminology(params = {}, options = {})
      req = build_request(:import_terminology, params)
      req.send_request(options)
    end

    # Provides a list of languages (RFC-5646 codes and names) that Amazon
    # Translate supports.
    #
    # @option params [String] :display_language_code
    #   The language code for the language to use to display the language
    #   names in the response. The language code is `en` by default.
    #
    # @option params [String] :next_token
    #   Include the NextToken value to fetch the next group of supported
    #   languages.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each response.
    #
    # @return [Types::ListLanguagesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLanguagesResponse#languages #languages} => Array&lt;Types::Language&gt;
    #   * {Types::ListLanguagesResponse#display_language_code #display_language_code} => String
    #   * {Types::ListLanguagesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_languages({
    #     display_language_code: "de", # accepts de, en, es, fr, it, ja, ko, pt, zh, zh-TW
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.languages #=> Array
    #   resp.languages[0].language_name #=> String
    #   resp.languages[0].language_code #=> String
    #   resp.display_language_code #=> String, one of "de", "en", "es", "fr", "it", "ja", "ko", "pt", "zh", "zh-TW"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListLanguages AWS API Documentation
    #
    # @overload list_languages(params = {})
    # @param [Hash] params ({})
    def list_languages(params = {}, options = {})
      req = build_request(:list_languages, params)
      req.send_request(options)
    end

    # Provides a list of your parallel data resources in Amazon Translate.
    #
    # @option params [String] :next_token
    #   A string that specifies the next page of results to return in a
    #   paginated response.
    #
    # @option params [Integer] :max_results
    #   The maximum number of parallel data resources returned for each
    #   request.
    #
    # @return [Types::ListParallelDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListParallelDataResponse#parallel_data_properties_list #parallel_data_properties_list} => Array&lt;Types::ParallelDataProperties&gt;
    #   * {Types::ListParallelDataResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_parallel_data({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.parallel_data_properties_list #=> Array
    #   resp.parallel_data_properties_list[0].name #=> String
    #   resp.parallel_data_properties_list[0].arn #=> String
    #   resp.parallel_data_properties_list[0].description #=> String
    #   resp.parallel_data_properties_list[0].status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.parallel_data_properties_list[0].source_language_code #=> String
    #   resp.parallel_data_properties_list[0].target_language_codes #=> Array
    #   resp.parallel_data_properties_list[0].target_language_codes[0] #=> String
    #   resp.parallel_data_properties_list[0].parallel_data_config.s3_uri #=> String
    #   resp.parallel_data_properties_list[0].parallel_data_config.format #=> String, one of "TSV", "CSV", "TMX"
    #   resp.parallel_data_properties_list[0].message #=> String
    #   resp.parallel_data_properties_list[0].imported_data_size #=> Integer
    #   resp.parallel_data_properties_list[0].imported_record_count #=> Integer
    #   resp.parallel_data_properties_list[0].failed_record_count #=> Integer
    #   resp.parallel_data_properties_list[0].skipped_record_count #=> Integer
    #   resp.parallel_data_properties_list[0].encryption_key.type #=> String, one of "KMS"
    #   resp.parallel_data_properties_list[0].encryption_key.id #=> String
    #   resp.parallel_data_properties_list[0].created_at #=> Time
    #   resp.parallel_data_properties_list[0].last_updated_at #=> Time
    #   resp.parallel_data_properties_list[0].latest_update_attempt_status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.parallel_data_properties_list[0].latest_update_attempt_at #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListParallelData AWS API Documentation
    #
    # @overload list_parallel_data(params = {})
    # @param [Hash] params ({})
    def list_parallel_data(params = {}, options = {})
      req = build_request(:list_parallel_data, params)
      req.send_request(options)
    end

    # Lists all tags associated with a given Amazon Translate resource. For
    # more information, see [ Tagging your resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/translate/latest/dg/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Translate resource
    #   you are querying.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Provides a list of custom terminologies associated with your account.
    #
    # @option params [String] :next_token
    #   If the result of the request to ListTerminologies was truncated,
    #   include the NextToken to fetch the next group of custom terminologies.
    #
    # @option params [Integer] :max_results
    #   The maximum number of custom terminologies returned per list request.
    #
    # @return [Types::ListTerminologiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTerminologiesResponse#terminology_properties_list #terminology_properties_list} => Array&lt;Types::TerminologyProperties&gt;
    #   * {Types::ListTerminologiesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_terminologies({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.terminology_properties_list #=> Array
    #   resp.terminology_properties_list[0].name #=> String
    #   resp.terminology_properties_list[0].description #=> String
    #   resp.terminology_properties_list[0].arn #=> String
    #   resp.terminology_properties_list[0].source_language_code #=> String
    #   resp.terminology_properties_list[0].target_language_codes #=> Array
    #   resp.terminology_properties_list[0].target_language_codes[0] #=> String
    #   resp.terminology_properties_list[0].encryption_key.type #=> String, one of "KMS"
    #   resp.terminology_properties_list[0].encryption_key.id #=> String
    #   resp.terminology_properties_list[0].size_bytes #=> Integer
    #   resp.terminology_properties_list[0].term_count #=> Integer
    #   resp.terminology_properties_list[0].created_at #=> Time
    #   resp.terminology_properties_list[0].last_updated_at #=> Time
    #   resp.terminology_properties_list[0].directionality #=> String, one of "UNI", "MULTI"
    #   resp.terminology_properties_list[0].message #=> String
    #   resp.terminology_properties_list[0].skipped_term_count #=> Integer
    #   resp.terminology_properties_list[0].format #=> String, one of "CSV", "TMX", "TSV"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTerminologies AWS API Documentation
    #
    # @overload list_terminologies(params = {})
    # @param [Hash] params ({})
    def list_terminologies(params = {}, options = {})
      req = build_request(:list_terminologies, params)
      req.send_request(options)
    end

    # Gets a list of the batch translation jobs that you have submitted.
    #
    # @option params [Types::TextTranslationJobFilter] :filter
    #   The parameters that specify which batch translation jobs to retrieve.
    #   Filters include job name, job status, and submission time. You can
    #   only set one filter at a time.
    #
    # @option params [String] :next_token
    #   The token to request the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in each page. The default
    #   value is 100.
    #
    # @return [Types::ListTextTranslationJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTextTranslationJobsResponse#text_translation_job_properties_list #text_translation_job_properties_list} => Array&lt;Types::TextTranslationJobProperties&gt;
    #   * {Types::ListTextTranslationJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_text_translation_jobs({
    #     filter: {
    #       job_name: "JobName",
    #       job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, COMPLETED_WITH_ERROR, FAILED, STOP_REQUESTED, STOPPED
    #       submitted_before_time: Time.now,
    #       submitted_after_time: Time.now,
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.text_translation_job_properties_list #=> Array
    #   resp.text_translation_job_properties_list[0].job_id #=> String
    #   resp.text_translation_job_properties_list[0].job_name #=> String
    #   resp.text_translation_job_properties_list[0].job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"
    #   resp.text_translation_job_properties_list[0].job_details.translated_documents_count #=> Integer
    #   resp.text_translation_job_properties_list[0].job_details.documents_with_errors_count #=> Integer
    #   resp.text_translation_job_properties_list[0].job_details.input_documents_count #=> Integer
    #   resp.text_translation_job_properties_list[0].source_language_code #=> String
    #   resp.text_translation_job_properties_list[0].target_language_codes #=> Array
    #   resp.text_translation_job_properties_list[0].target_language_codes[0] #=> String
    #   resp.text_translation_job_properties_list[0].terminology_names #=> Array
    #   resp.text_translation_job_properties_list[0].terminology_names[0] #=> String
    #   resp.text_translation_job_properties_list[0].parallel_data_names #=> Array
    #   resp.text_translation_job_properties_list[0].parallel_data_names[0] #=> String
    #   resp.text_translation_job_properties_list[0].message #=> String
    #   resp.text_translation_job_properties_list[0].submitted_time #=> Time
    #   resp.text_translation_job_properties_list[0].end_time #=> Time
    #   resp.text_translation_job_properties_list[0].input_data_config.s3_uri #=> String
    #   resp.text_translation_job_properties_list[0].input_data_config.content_type #=> String
    #   resp.text_translation_job_properties_list[0].output_data_config.s3_uri #=> String
    #   resp.text_translation_job_properties_list[0].output_data_config.encryption_key.type #=> String, one of "KMS"
    #   resp.text_translation_job_properties_list[0].output_data_config.encryption_key.id #=> String
    #   resp.text_translation_job_properties_list[0].data_access_role_arn #=> String
    #   resp.text_translation_job_properties_list[0].settings.formality #=> String, one of "FORMAL", "INFORMAL"
    #   resp.text_translation_job_properties_list[0].settings.profanity #=> String, one of "MASK"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTextTranslationJobs AWS API Documentation
    #
    # @overload list_text_translation_jobs(params = {})
    # @param [Hash] params ({})
    def list_text_translation_jobs(params = {}, options = {})
      req = build_request(:list_text_translation_jobs, params)
      req.send_request(options)
    end

    # Starts an asynchronous batch translation job. Use batch translation
    # jobs to translate large volumes of text across multiple documents at
    # once. For batch translation, you can input documents with different
    # source languages (specify `auto` as the source language). You can
    # specify one or more target languages. Batch translation translates
    # each input document into each of the target languages. For more
    # information, see [Asynchronous batch processing][1].
    #
    # Batch translation jobs can be described with the
    # DescribeTextTranslationJob operation, listed with the
    # ListTextTranslationJobs operation, and stopped with the
    # StopTextTranslationJob operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/translate/latest/dg/async.html
    #
    # @option params [String] :job_name
    #   The name of the batch translation job to be performed.
    #
    # @option params [required, Types::InputDataConfig] :input_data_config
    #   Specifies the format and location of the input documents for the
    #   translation job.
    #
    # @option params [required, Types::OutputDataConfig] :output_data_config
    #   Specifies the S3 folder to which your job output will be saved.
    #
    # @option params [required, String] :data_access_role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity Access and
    #   Management (IAM) role that grants Amazon Translate read access to your
    #   input data. For more information, see [Identity and access management
    #   ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/identity-and-access-management.html
    #
    # @option params [required, String] :source_language_code
    #   The language code of the input language. Specify the language if all
    #   input documents share the same language. If you don't know the
    #   language of the source files, or your input documents contains
    #   different source languages, select `auto`. Amazon Translate auto
    #   detects the source language for each input document. For a list of
    #   supported language codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #
    # @option params [required, Array<String>] :target_language_codes
    #   The target languages of the translation job. Enter up to 10 language
    #   codes. Each input file is translated into each target language.
    #
    #   Each language code is 2 or 5 characters long. For a list of language
    #   codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #
    # @option params [Array<String>] :terminology_names
    #   The name of a custom terminology resource to add to the translation
    #   job. This resource lists examples source terms and the desired
    #   translation for each term.
    #
    #   This parameter accepts only one custom terminology resource.
    #
    #   If you specify multiple target languages for the job, translate uses
    #   the designated terminology for each requested target language that has
    #   an entry for the source term in the terminology file.
    #
    #   For a list of available custom terminology resources, use the
    #   ListTerminologies operation.
    #
    #   For more information, see [Custom terminology][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html
    #
    # @option params [Array<String>] :parallel_data_names
    #   The name of a parallel data resource to add to the translation job.
    #   This resource consists of examples that show how you want segments of
    #   text to be translated. If you specify multiple target languages for
    #   the job, the parallel data file must include translations for all the
    #   target languages.
    #
    #   When you add parallel data to a translation job, you create an *Active
    #   Custom Translation* job.
    #
    #   This parameter accepts only one parallel data resource.
    #
    #   <note markdown="1"> Active Custom Translation jobs are priced at a higher rate than other
    #   jobs that don't use parallel data. For more information, see [Amazon
    #   Translate pricing][1].
    #
    #    </note>
    #
    #   For a list of available parallel data resources, use the
    #   ListParallelData operation.
    #
    #   For more information, see [ Customizing your translations with
    #   parallel data][2].
    #
    #
    #
    #   [1]: http://aws.amazon.com/translate/pricing/
    #   [2]: https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-parallel-data.html
    #
    # @option params [required, String] :client_token
    #   A unique identifier for the request. This token is generated for you
    #   when using the Amazon Translate SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::TranslationSettings] :settings
    #   Settings to configure your translation output, including the option to
    #   set the formality level of the output text and the option to mask
    #   profane words and phrases.
    #
    # @return [Types::StartTextTranslationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTextTranslationJobResponse#job_id #job_id} => String
    #   * {Types::StartTextTranslationJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_text_translation_job({
    #     job_name: "JobName",
    #     input_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       content_type: "ContentType", # required
    #     },
    #     output_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       encryption_key: {
    #         type: "KMS", # required, accepts KMS
    #         id: "EncryptionKeyID", # required
    #       },
    #     },
    #     data_access_role_arn: "IamRoleArn", # required
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_codes: ["LanguageCodeString"], # required
    #     terminology_names: ["ResourceName"],
    #     parallel_data_names: ["ResourceName"],
    #     client_token: "ClientTokenString", # required
    #     settings: {
    #       formality: "FORMAL", # accepts FORMAL, INFORMAL
    #       profanity: "MASK", # accepts MASK
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/StartTextTranslationJob AWS API Documentation
    #
    # @overload start_text_translation_job(params = {})
    # @param [Hash] params ({})
    def start_text_translation_job(params = {}, options = {})
      req = build_request(:start_text_translation_job, params)
      req.send_request(options)
    end

    # Stops an asynchronous batch translation job that is in progress.
    #
    # If the job's state is `IN_PROGRESS`, the job will be marked for
    # termination and put into the `STOP_REQUESTED` state. If the job
    # completes before it can be stopped, it is put into the `COMPLETED`
    # state. Otherwise, the job is put into the `STOPPED` state.
    #
    # Asynchronous batch translation jobs are started with the
    # StartTextTranslationJob operation. You can use the
    # DescribeTextTranslationJob or ListTextTranslationJobs operations to
    # get a batch translation job's `JobId`.
    #
    # @option params [required, String] :job_id
    #   The job ID of the job to be stopped.
    #
    # @return [Types::StopTextTranslationJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StopTextTranslationJobResponse#job_id #job_id} => String
    #   * {Types::StopTextTranslationJobResponse#job_status #job_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_text_translation_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_status #=> String, one of "SUBMITTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERROR", "FAILED", "STOP_REQUESTED", "STOPPED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/StopTextTranslationJob AWS API Documentation
    #
    # @overload stop_text_translation_job(params = {})
    # @param [Hash] params ({})
    def stop_text_translation_job(params = {}, options = {})
      req = build_request(:stop_text_translation_job, params)
      req.send_request(options)
    end

    # Associates a specific tag with a resource. A tag is a key-value pair
    # that adds as a metadata to a resource. For more information, see [
    # Tagging your resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/translate/latest/dg/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Translate resource
    #   to which you want to associate the tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   Tags being associated with a specific Amazon Translate resource. There
    #   can be a maximum of 50 tags (both existing and pending) associated
    #   with a specific resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Translates the input document from the source language to the target
    # language. This synchronous operation supports plain text or HTML for
    # the input document. `TranslateDocument` supports translations from
    # English to any supported language, and from any supported language to
    # English. Therefore, specify either the source language code or the
    # target language code as “en” (English).
    #
    # `TranslateDocument` does not support language auto-detection.
    #
    # If you set the `Formality` parameter, the request will fail if the
    # target language does not support formality. For a list of target
    # languages that support formality, see [Setting formality][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html
    #
    # @option params [required, Types::Document] :document
    #   The content and content type for the document to be translated. The
    #   document size must not exceed 100 KB.
    #
    # @option params [Array<String>] :terminology_names
    #   The name of a terminology list file to add to the translation job.
    #   This file provides source terms and the desired translation for each
    #   term. A terminology list can contain a maximum of 256 terms. You can
    #   use one custom terminology resource in your translation request.
    #
    #   Use the ListTerminologies operation to get the available terminology
    #   lists.
    #
    #   For more information about custom terminology lists, see [Custom
    #   terminology][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html
    #
    # @option params [required, String] :source_language_code
    #   The language code for the language of the source text. Do not use
    #   `auto`, because `TranslateDocument` does not support language
    #   auto-detection. For a list of supported language codes, see [Supported
    #   languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #
    # @option params [required, String] :target_language_code
    #   The language code requested for the translated document. For a list of
    #   supported language codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #
    # @option params [Types::TranslationSettings] :settings
    #   Settings to configure your translation output, including the option to
    #   set the formality level of the output text and the option to mask
    #   profane words and phrases.
    #
    # @return [Types::TranslateDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TranslateDocumentResponse#translated_document #translated_document} => Types::TranslatedDocument
    #   * {Types::TranslateDocumentResponse#source_language_code #source_language_code} => String
    #   * {Types::TranslateDocumentResponse#target_language_code #target_language_code} => String
    #   * {Types::TranslateDocumentResponse#applied_terminologies #applied_terminologies} => Array&lt;Types::AppliedTerminology&gt;
    #   * {Types::TranslateDocumentResponse#applied_settings #applied_settings} => Types::TranslationSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.translate_document({
    #     document: { # required
    #       content: "data", # required
    #       content_type: "ContentType", # required
    #     },
    #     terminology_names: ["ResourceName"],
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_code: "LanguageCodeString", # required
    #     settings: {
    #       formality: "FORMAL", # accepts FORMAL, INFORMAL
    #       profanity: "MASK", # accepts MASK
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.translated_document.content #=> String
    #   resp.source_language_code #=> String
    #   resp.target_language_code #=> String
    #   resp.applied_terminologies #=> Array
    #   resp.applied_terminologies[0].name #=> String
    #   resp.applied_terminologies[0].terms #=> Array
    #   resp.applied_terminologies[0].terms[0].source_text #=> String
    #   resp.applied_terminologies[0].terms[0].target_text #=> String
    #   resp.applied_settings.formality #=> String, one of "FORMAL", "INFORMAL"
    #   resp.applied_settings.profanity #=> String, one of "MASK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateDocument AWS API Documentation
    #
    # @overload translate_document(params = {})
    # @param [Hash] params ({})
    def translate_document(params = {}, options = {})
      req = build_request(:translate_document, params)
      req.send_request(options)
    end

    # Translates input text from the source language to the target language.
    # For a list of available languages and language codes, see [Supported
    # languages][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #
    # @option params [required, String] :text
    #   The text to translate. The text string can be a maximum of 10,000
    #   bytes long. Depending on your character set, this may be fewer than
    #   10,000 characters.
    #
    # @option params [Array<String>] :terminology_names
    #   The name of a terminology list file to add to the translation job.
    #   This file provides source terms and the desired translation for each
    #   term. A terminology list can contain a maximum of 256 terms. You can
    #   use one custom terminology resource in your translation request.
    #
    #   Use the ListTerminologies operation to get the available terminology
    #   lists.
    #
    #   For more information about custom terminology lists, see [Custom
    #   terminology][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html
    #
    # @option params [required, String] :source_language_code
    #   The language code for the language of the source text. For a list of
    #   language codes, see [Supported languages][1].
    #
    #   To have Amazon Translate determine the source language of your text,
    #   you can specify `auto` in the `SourceLanguageCode` field. If you
    #   specify `auto`, Amazon Translate will call [Amazon Comprehend][2] to
    #   determine the source language.
    #
    #   <note markdown="1"> If you specify `auto`, you must send the `TranslateText` request in a
    #   region that supports Amazon Comprehend. Otherwise, the request returns
    #   an error indicating that autodetect is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #   [2]: https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html
    #
    # @option params [required, String] :target_language_code
    #   The language code requested for the language of the target text. For a
    #   list of language codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #
    # @option params [Types::TranslationSettings] :settings
    #   Settings to configure your translation output, including the option to
    #   set the formality level of the output text and the option to mask
    #   profane words and phrases.
    #
    # @return [Types::TranslateTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TranslateTextResponse#translated_text #translated_text} => String
    #   * {Types::TranslateTextResponse#source_language_code #source_language_code} => String
    #   * {Types::TranslateTextResponse#target_language_code #target_language_code} => String
    #   * {Types::TranslateTextResponse#applied_terminologies #applied_terminologies} => Array&lt;Types::AppliedTerminology&gt;
    #   * {Types::TranslateTextResponse#applied_settings #applied_settings} => Types::TranslationSettings
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.translate_text({
    #     text: "BoundedLengthString", # required
    #     terminology_names: ["ResourceName"],
    #     source_language_code: "LanguageCodeString", # required
    #     target_language_code: "LanguageCodeString", # required
    #     settings: {
    #       formality: "FORMAL", # accepts FORMAL, INFORMAL
    #       profanity: "MASK", # accepts MASK
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.translated_text #=> String
    #   resp.source_language_code #=> String
    #   resp.target_language_code #=> String
    #   resp.applied_terminologies #=> Array
    #   resp.applied_terminologies[0].name #=> String
    #   resp.applied_terminologies[0].terms #=> Array
    #   resp.applied_terminologies[0].terms[0].source_text #=> String
    #   resp.applied_terminologies[0].terms[0].target_text #=> String
    #   resp.applied_settings.formality #=> String, one of "FORMAL", "INFORMAL"
    #   resp.applied_settings.profanity #=> String, one of "MASK"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateText AWS API Documentation
    #
    # @overload translate_text(params = {})
    # @param [Hash] params ({})
    def translate_text(params = {}, options = {})
      req = build_request(:translate_text, params)
      req.send_request(options)
    end

    # Removes a specific tag associated with an Amazon Translate resource.
    # For more information, see [ Tagging your resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/translate/latest/dg/tagging.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Translate resource
    #   from which you want to remove the tags.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The initial part of a key-value pair that forms a tag being removed
    #   from a given resource. Keys must be unique and cannot be duplicated
    #   for a particular resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates a previously created parallel data resource by importing a new
    # input file from Amazon S3.
    #
    # @option params [required, String] :name
    #   The name of the parallel data resource being updated.
    #
    # @option params [String] :description
    #   A custom description for the parallel data resource in Amazon
    #   Translate.
    #
    # @option params [required, Types::ParallelDataConfig] :parallel_data_config
    #   Specifies the format and S3 location of the parallel data input file.
    #
    # @option params [required, String] :client_token
    #   A unique identifier for the request. This token is automatically
    #   generated when you use Amazon Translate through an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateParallelDataResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateParallelDataResponse#name #name} => String
    #   * {Types::UpdateParallelDataResponse#status #status} => String
    #   * {Types::UpdateParallelDataResponse#latest_update_attempt_status #latest_update_attempt_status} => String
    #   * {Types::UpdateParallelDataResponse#latest_update_attempt_at #latest_update_attempt_at} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_parallel_data({
    #     name: "ResourceName", # required
    #     description: "Description",
    #     parallel_data_config: { # required
    #       s3_uri: "S3Uri", # required
    #       format: "TSV", # required, accepts TSV, CSV, TMX
    #     },
    #     client_token: "ClientTokenString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.latest_update_attempt_status #=> String, one of "CREATING", "UPDATING", "ACTIVE", "DELETING", "FAILED"
    #   resp.latest_update_attempt_at #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UpdateParallelData AWS API Documentation
    #
    # @overload update_parallel_data(params = {})
    # @param [Hash] params ({})
    def update_parallel_data(params = {}, options = {})
      req = build_request(:update_parallel_data, params)
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
      context[:gem_name] = 'aws-sdk-translate'
      context[:gem_version] = '1.56.0'
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
