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

Aws::Plugins::GlobalConfiguration.add_identifier(:computeoptimizer)

module Aws::ComputeOptimizer
  # An API client for ComputeOptimizer.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::ComputeOptimizer::Client.new(
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

    @identifier = :computeoptimizer

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
    add_plugin(Aws::ComputeOptimizer::Plugins::Endpoints)

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
    #   @option options [Aws::ComputeOptimizer::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::ComputeOptimizer::EndpointParameters`
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

    # Deletes a recommendation preference, such as enhanced infrastructure
    # metrics.
    #
    # For more information, see [Activating enhanced infrastructure
    # metrics][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #
    # @option params [required, String] :resource_type
    #   The target resource type of the recommendation preference to delete.
    #
    #   The `Ec2Instance` option encompasses standalone instances and
    #   instances that are part of Auto Scaling groups. The `AutoScalingGroup`
    #   option encompasses only instances that are part of an Auto Scaling
    #   group.
    #
    #   <note markdown="1"> The valid values for this parameter are `Ec2Instance` and
    #   `AutoScalingGroup`.
    #
    #    </note>
    #
    # @option params [Types::Scope] :scope
    #   An object that describes the scope of the recommendation preference to
    #   delete.
    #
    #   You can delete recommendation preferences that are created at the
    #   organization level (for management accounts of an organization only),
    #   account level, and resource level. For more information, see
    #   [Activating enhanced infrastructure metrics][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #
    # @option params [required, Array<String>] :recommendation_preference_names
    #   The name of the recommendation preference to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recommendation_preferences({
    #     resource_type: "Ec2Instance", # required, accepts Ec2Instance, AutoScalingGroup, EbsVolume, LambdaFunction, NotApplicable, EcsService
    #     scope: {
    #       name: "Organization", # accepts Organization, AccountId, ResourceArn
    #       value: "ScopeValue",
    #     },
    #     recommendation_preference_names: ["EnhancedInfrastructureMetrics"], # required, accepts EnhancedInfrastructureMetrics, InferredWorkloadTypes, ExternalMetricsPreference
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/DeleteRecommendationPreferences AWS API Documentation
    #
    # @overload delete_recommendation_preferences(params = {})
    # @param [Hash] params ({})
    def delete_recommendation_preferences(params = {}, options = {})
      req = build_request(:delete_recommendation_preferences, params)
      req.send_request(options)
    end

    # Describes recommendation export jobs created in the last seven days.
    #
    # Use the ExportAutoScalingGroupRecommendations or
    # ExportEC2InstanceRecommendations actions to request an export of your
    # recommendations. Then use the DescribeRecommendationExportJobs action
    # to view your export jobs.
    #
    # @option params [Array<String>] :job_ids
    #   The identification numbers of the export jobs to return.
    #
    #   An export job ID is returned when you create an export using the
    #   ExportAutoScalingGroupRecommendations or
    #   ExportEC2InstanceRecommendations actions.
    #
    #   All export jobs created in the last seven days are returned if this
    #   parameter is omitted.
    #
    # @option params [Array<Types::JobFilter>] :filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of export jobs.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of export jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of export jobs to return with a single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @return [Types::DescribeRecommendationExportJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecommendationExportJobsResponse#recommendation_export_jobs #recommendation_export_jobs} => Array&lt;Types::RecommendationExportJob&gt;
    #   * {Types::DescribeRecommendationExportJobsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recommendation_export_jobs({
    #     job_ids: ["JobId"],
    #     filters: [
    #       {
    #         name: "ResourceType", # accepts ResourceType, JobStatus
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.recommendation_export_jobs #=> Array
    #   resp.recommendation_export_jobs[0].job_id #=> String
    #   resp.recommendation_export_jobs[0].destination.s3.bucket #=> String
    #   resp.recommendation_export_jobs[0].destination.s3.key #=> String
    #   resp.recommendation_export_jobs[0].destination.s3.metadata_key #=> String
    #   resp.recommendation_export_jobs[0].resource_type #=> String, one of "Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable", "EcsService"
    #   resp.recommendation_export_jobs[0].status #=> String, one of "Queued", "InProgress", "Complete", "Failed"
    #   resp.recommendation_export_jobs[0].creation_timestamp #=> Time
    #   resp.recommendation_export_jobs[0].last_updated_timestamp #=> Time
    #   resp.recommendation_export_jobs[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/DescribeRecommendationExportJobs AWS API Documentation
    #
    # @overload describe_recommendation_export_jobs(params = {})
    # @param [Hash] params ({})
    def describe_recommendation_export_jobs(params = {}, options = {})
      req = build_request(:describe_recommendation_export_jobs, params)
      req.send_request(options)
    end

    # Exports optimization recommendations for Auto Scaling groups.
    #
    # Recommendations are exported in a comma-separated values (.csv) file,
    # and its metadata in a JavaScript Object Notation (JSON) (.json) file,
    # to an existing Amazon Simple Storage Service (Amazon S3) bucket that
    # you specify. For more information, see [Exporting Recommendations][1]
    # in the *Compute Optimizer User Guide*.
    #
    # You can have only one Auto Scaling group export job in progress per
    # Amazon Web Services Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
    #
    # @option params [Array<String>] :account_ids
    #   The IDs of the Amazon Web Services accounts for which to export Auto
    #   Scaling group recommendations.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to export
    #   recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export if
    #   this parameter, or the include member accounts parameter, is omitted.
    #
    #   You can specify multiple account IDs per request.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of Auto Scaling group recommendations.
    #
    # @option params [Array<String>] :fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #
    # @option params [required, Types::S3DestinationConfig] :s3_destination_config
    #   An object to specify the destination Amazon Simple Storage Service
    #   (Amazon S3) bucket name and key prefix for the export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create the
    #   S3 bucket, ensure that it has the required permissions policy to allow
    #   Compute Optimizer to write the export file to it. If you plan to
    #   specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3 bucket.
    #   For more information, see [Amazon S3 Bucket Policy for Compute
    #   Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #
    # @option params [String] :file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #
    # @option params [Boolean] :include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the management
    #   account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer and
    #   Amazon Web Services Organizations trusted access][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   This parameter cannot be specified together with the account IDs
    #   parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export if
    #   this parameter, or the account IDs parameter, is omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   An object to specify the preferences for the Auto Scaling group
    #   recommendations to export.
    #
    # @return [Types::ExportAutoScalingGroupRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportAutoScalingGroupRecommendationsResponse#job_id #job_id} => String
    #   * {Types::ExportAutoScalingGroupRecommendationsResponse#s3_destination #s3_destination} => Types::S3Destination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_auto_scaling_group_recommendations({
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, FindingReasonCodes, RecommendationSourceType, InferredWorkloadTypes
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     fields_to_export: ["AccountId"], # accepts AccountId, AutoScalingGroupArn, AutoScalingGroupName, Finding, UtilizationMetricsCpuMaximum, UtilizationMetricsMemoryMaximum, UtilizationMetricsEbsReadOpsPerSecondMaximum, UtilizationMetricsEbsWriteOpsPerSecondMaximum, UtilizationMetricsEbsReadBytesPerSecondMaximum, UtilizationMetricsEbsWriteBytesPerSecondMaximum, UtilizationMetricsDiskReadOpsPerSecondMaximum, UtilizationMetricsDiskWriteOpsPerSecondMaximum, UtilizationMetricsDiskReadBytesPerSecondMaximum, UtilizationMetricsDiskWriteBytesPerSecondMaximum, UtilizationMetricsNetworkInBytesPerSecondMaximum, UtilizationMetricsNetworkOutBytesPerSecondMaximum, UtilizationMetricsNetworkPacketsInPerSecondMaximum, UtilizationMetricsNetworkPacketsOutPerSecondMaximum, LookbackPeriodInDays, CurrentConfigurationInstanceType, CurrentConfigurationDesiredCapacity, CurrentConfigurationMinSize, CurrentConfigurationMaxSize, CurrentOnDemandPrice, CurrentStandardOneYearNoUpfrontReservedPrice, CurrentStandardThreeYearNoUpfrontReservedPrice, CurrentVCpus, CurrentMemory, CurrentStorage, CurrentNetwork, RecommendationOptionsConfigurationInstanceType, RecommendationOptionsConfigurationDesiredCapacity, RecommendationOptionsConfigurationMinSize, RecommendationOptionsConfigurationMaxSize, RecommendationOptionsProjectedUtilizationMetricsCpuMaximum, RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum, RecommendationOptionsPerformanceRisk, RecommendationOptionsOnDemandPrice, RecommendationOptionsStandardOneYearNoUpfrontReservedPrice, RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice, RecommendationOptionsVcpus, RecommendationOptionsMemory, RecommendationOptionsStorage, RecommendationOptionsNetwork, LastRefreshTimestamp, CurrentPerformanceRisk, RecommendationOptionsSavingsOpportunityPercentage, RecommendationOptionsEstimatedMonthlySavingsCurrency, RecommendationOptionsEstimatedMonthlySavingsValue, EffectiveRecommendationPreferencesCpuVendorArchitectures, EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics, EffectiveRecommendationPreferencesInferredWorkloadTypes, InferredWorkloadTypes, RecommendationOptionsMigrationEffort
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix",
    #     },
    #     file_format: "Csv", # accepts Csv
    #     include_member_accounts: false,
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64"], # accepts AWS_ARM64, CURRENT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.s3_destination.bucket #=> String
    #   resp.s3_destination.key #=> String
    #   resp.s3_destination.metadata_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportAutoScalingGroupRecommendations AWS API Documentation
    #
    # @overload export_auto_scaling_group_recommendations(params = {})
    # @param [Hash] params ({})
    def export_auto_scaling_group_recommendations(params = {}, options = {})
      req = build_request(:export_auto_scaling_group_recommendations, params)
      req.send_request(options)
    end

    # Exports optimization recommendations for Amazon EBS volumes.
    #
    # Recommendations are exported in a comma-separated values (.csv) file,
    # and its metadata in a JavaScript Object Notation (JSON) (.json) file,
    # to an existing Amazon Simple Storage Service (Amazon S3) bucket that
    # you specify. For more information, see [Exporting Recommendations][1]
    # in the *Compute Optimizer User Guide*.
    #
    # You can have only one Amazon EBS volume export job in progress per
    # Amazon Web Services Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
    #
    # @option params [Array<String>] :account_ids
    #   The IDs of the Amazon Web Services accounts for which to export Amazon
    #   EBS volume recommendations.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to export
    #   recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export if
    #   this parameter, or the include member accounts parameter, is omitted.
    #
    #   You can specify multiple account IDs per request.
    #
    # @option params [Array<Types::EBSFilter>] :filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of Amazon EBS volume recommendations.
    #
    # @option params [Array<String>] :fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #
    # @option params [required, Types::S3DestinationConfig] :s3_destination_config
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and key prefix for a recommendations export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create the
    #   S3 bucket, ensure that it has the required permission policy to allow
    #   Compute Optimizer to write the export file to it. If you plan to
    #   specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3 bucket.
    #   For more information, see [Amazon S3 Bucket Policy for Compute
    #   Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #
    # @option params [String] :file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #
    # @option params [Boolean] :include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the management
    #   account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer and
    #   Amazon Web Services Organizations trusted access][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   This parameter cannot be specified together with the account IDs
    #   parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export if
    #   this parameter, or the account IDs parameter, is omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #
    # @return [Types::ExportEBSVolumeRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportEBSVolumeRecommendationsResponse#job_id #job_id} => String
    #   * {Types::ExportEBSVolumeRecommendationsResponse#s3_destination #s3_destination} => Types::S3Destination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_ebs_volume_recommendations({
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     fields_to_export: ["AccountId"], # accepts AccountId, VolumeArn, Finding, UtilizationMetricsVolumeReadOpsPerSecondMaximum, UtilizationMetricsVolumeWriteOpsPerSecondMaximum, UtilizationMetricsVolumeReadBytesPerSecondMaximum, UtilizationMetricsVolumeWriteBytesPerSecondMaximum, LookbackPeriodInDays, CurrentConfigurationVolumeType, CurrentConfigurationVolumeBaselineIOPS, CurrentConfigurationVolumeBaselineThroughput, CurrentConfigurationVolumeBurstIOPS, CurrentConfigurationVolumeBurstThroughput, CurrentConfigurationVolumeSize, CurrentMonthlyPrice, RecommendationOptionsConfigurationVolumeType, RecommendationOptionsConfigurationVolumeBaselineIOPS, RecommendationOptionsConfigurationVolumeBaselineThroughput, RecommendationOptionsConfigurationVolumeBurstIOPS, RecommendationOptionsConfigurationVolumeBurstThroughput, RecommendationOptionsConfigurationVolumeSize, RecommendationOptionsMonthlyPrice, RecommendationOptionsPerformanceRisk, LastRefreshTimestamp, CurrentPerformanceRisk, RecommendationOptionsSavingsOpportunityPercentage, RecommendationOptionsEstimatedMonthlySavingsCurrency, RecommendationOptionsEstimatedMonthlySavingsValue, RootVolume, Tags
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix",
    #     },
    #     file_format: "Csv", # accepts Csv
    #     include_member_accounts: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.s3_destination.bucket #=> String
    #   resp.s3_destination.key #=> String
    #   resp.s3_destination.metadata_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportEBSVolumeRecommendations AWS API Documentation
    #
    # @overload export_ebs_volume_recommendations(params = {})
    # @param [Hash] params ({})
    def export_ebs_volume_recommendations(params = {}, options = {})
      req = build_request(:export_ebs_volume_recommendations, params)
      req.send_request(options)
    end

    # Exports optimization recommendations for Amazon EC2 instances.
    #
    # Recommendations are exported in a comma-separated values (.csv) file,
    # and its metadata in a JavaScript Object Notation (JSON) (.json) file,
    # to an existing Amazon Simple Storage Service (Amazon S3) bucket that
    # you specify. For more information, see [Exporting Recommendations][1]
    # in the *Compute Optimizer User Guide*.
    #
    # You can have only one Amazon EC2 instance export job in progress per
    # Amazon Web Services Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
    #
    # @option params [Array<String>] :account_ids
    #   The IDs of the Amazon Web Services accounts for which to export
    #   instance recommendations.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to export
    #   recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export if
    #   this parameter, or the include member accounts parameter, is omitted.
    #
    #   You can specify multiple account IDs per request.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of instance recommendations.
    #
    # @option params [Array<String>] :fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #
    # @option params [required, Types::S3DestinationConfig] :s3_destination_config
    #   An object to specify the destination Amazon Simple Storage Service
    #   (Amazon S3) bucket name and key prefix for the export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create the
    #   S3 bucket, ensure that it has the required permissions policy to allow
    #   Compute Optimizer to write the export file to it. If you plan to
    #   specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3 bucket.
    #   For more information, see [Amazon S3 Bucket Policy for Compute
    #   Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #
    # @option params [String] :file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #
    # @option params [Boolean] :include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the management
    #   account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer and
    #   Amazon Web Services Organizations trusted access][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   Recommendations for member accounts are not included in the export if
    #   this parameter, or the account IDs parameter, is omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   An object to specify the preferences for the Amazon EC2 instance
    #   recommendations to export.
    #
    # @return [Types::ExportEC2InstanceRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportEC2InstanceRecommendationsResponse#job_id #job_id} => String
    #   * {Types::ExportEC2InstanceRecommendationsResponse#s3_destination #s3_destination} => Types::S3Destination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_ec2_instance_recommendations({
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, FindingReasonCodes, RecommendationSourceType, InferredWorkloadTypes
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     fields_to_export: ["AccountId"], # accepts AccountId, InstanceArn, InstanceName, Finding, FindingReasonCodes, LookbackPeriodInDays, CurrentInstanceType, UtilizationMetricsCpuMaximum, UtilizationMetricsMemoryMaximum, UtilizationMetricsEbsReadOpsPerSecondMaximum, UtilizationMetricsEbsWriteOpsPerSecondMaximum, UtilizationMetricsEbsReadBytesPerSecondMaximum, UtilizationMetricsEbsWriteBytesPerSecondMaximum, UtilizationMetricsDiskReadOpsPerSecondMaximum, UtilizationMetricsDiskWriteOpsPerSecondMaximum, UtilizationMetricsDiskReadBytesPerSecondMaximum, UtilizationMetricsDiskWriteBytesPerSecondMaximum, UtilizationMetricsNetworkInBytesPerSecondMaximum, UtilizationMetricsNetworkOutBytesPerSecondMaximum, UtilizationMetricsNetworkPacketsInPerSecondMaximum, UtilizationMetricsNetworkPacketsOutPerSecondMaximum, CurrentOnDemandPrice, CurrentStandardOneYearNoUpfrontReservedPrice, CurrentStandardThreeYearNoUpfrontReservedPrice, CurrentVCpus, CurrentMemory, CurrentStorage, CurrentNetwork, RecommendationOptionsInstanceType, RecommendationOptionsProjectedUtilizationMetricsCpuMaximum, RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum, RecommendationOptionsPlatformDifferences, RecommendationOptionsPerformanceRisk, RecommendationOptionsVcpus, RecommendationOptionsMemory, RecommendationOptionsStorage, RecommendationOptionsNetwork, RecommendationOptionsOnDemandPrice, RecommendationOptionsStandardOneYearNoUpfrontReservedPrice, RecommendationOptionsStandardThreeYearNoUpfrontReservedPrice, RecommendationsSourcesRecommendationSourceArn, RecommendationsSourcesRecommendationSourceType, LastRefreshTimestamp, CurrentPerformanceRisk, RecommendationOptionsSavingsOpportunityPercentage, RecommendationOptionsEstimatedMonthlySavingsCurrency, RecommendationOptionsEstimatedMonthlySavingsValue, EffectiveRecommendationPreferencesCpuVendorArchitectures, EffectiveRecommendationPreferencesEnhancedInfrastructureMetrics, EffectiveRecommendationPreferencesInferredWorkloadTypes, InferredWorkloadTypes, RecommendationOptionsMigrationEffort, EffectiveRecommendationPreferencesExternalMetricsSource, InstanceState, Tags, ExternalMetricStatusCode, ExternalMetricStatusReason
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix",
    #     },
    #     file_format: "Csv", # accepts Csv
    #     include_member_accounts: false,
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64"], # accepts AWS_ARM64, CURRENT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.s3_destination.bucket #=> String
    #   resp.s3_destination.key #=> String
    #   resp.s3_destination.metadata_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportEC2InstanceRecommendations AWS API Documentation
    #
    # @overload export_ec2_instance_recommendations(params = {})
    # @param [Hash] params ({})
    def export_ec2_instance_recommendations(params = {}, options = {})
      req = build_request(:export_ec2_instance_recommendations, params)
      req.send_request(options)
    end

    # Exports optimization recommendations for Amazon ECS services on
    # Fargate.
    #
    # Recommendations are exported in a CSV file, and its metadata in a JSON
    # file, to an existing Amazon Simple Storage Service (Amazon S3) bucket
    # that you specify. For more information, see [Exporting
    # Recommendations][1] in the *Compute Optimizer User Guide*.
    #
    # You can only have one Amazon ECS service export job in progress per
    # Amazon Web Services Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
    #
    # @option params [Array<String>] :account_ids
    #   The Amazon Web Services account IDs for the export Amazon ECS service
    #   recommendations.
    #
    #   If your account is the management account or the delegated
    #   administrator of an organization, use this parameter to specify the
    #   member account you want to export recommendations to.
    #
    #   This parameter can't be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   If this parameter or the include member accounts parameter is omitted,
    #   the recommendations for member accounts aren't included in the
    #   export.
    #
    #   You can specify multiple account IDs per request.
    #
    # @option params [Array<Types::ECSServiceRecommendationFilter>] :filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of Amazon ECS service recommendations.
    #
    # @option params [Array<String>] :fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #
    # @option params [required, Types::S3DestinationConfig] :s3_destination_config
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and key prefix for a recommendations export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create the
    #   S3 bucket, ensure that it has the required permission policy to allow
    #   Compute Optimizer to write the export file to it. If you plan to
    #   specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3 bucket.
    #   For more information, see [Amazon S3 Bucket Policy for Compute
    #   Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #
    # @option params [String] :file_format
    #   The format of the export file.
    #
    #   The CSV file is the only export file format currently supported.
    #
    # @option params [Boolean] :include_member_accounts
    #   If your account is the management account or the delegated
    #   administrator of an organization, this parameter indicates whether to
    #   include recommendations for resources in all member accounts of the
    #   organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer and
    #   Amazon Web Services Organizations trusted access][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #   If this parameter is omitted, recommendations for member accounts of
    #   the organization aren't included in the export file.
    #
    #   If this parameter or the account ID parameter is omitted,
    #   recommendations for member accounts aren't included in the export.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #
    # @return [Types::ExportECSServiceRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportECSServiceRecommendationsResponse#job_id #job_id} => String
    #   * {Types::ExportECSServiceRecommendationsResponse#s3_destination #s3_destination} => Types::S3Destination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_ecs_service_recommendations({
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, FindingReasonCode
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     fields_to_export: ["AccountId"], # accepts AccountId, ServiceArn, LookbackPeriodInDays, LastRefreshTimestamp, LaunchType, CurrentPerformanceRisk, CurrentServiceConfigurationMemory, CurrentServiceConfigurationCpu, CurrentServiceConfigurationTaskDefinitionArn, CurrentServiceConfigurationAutoScalingConfiguration, CurrentServiceContainerConfigurations, UtilizationMetricsCpuMaximum, UtilizationMetricsMemoryMaximum, Finding, FindingReasonCodes, RecommendationOptionsMemory, RecommendationOptionsCpu, RecommendationOptionsSavingsOpportunityPercentage, RecommendationOptionsEstimatedMonthlySavingsCurrency, RecommendationOptionsEstimatedMonthlySavingsValue, RecommendationOptionsContainerRecommendations, RecommendationOptionsProjectedUtilizationMetricsCpuMaximum, RecommendationOptionsProjectedUtilizationMetricsMemoryMaximum, Tags
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix",
    #     },
    #     file_format: "Csv", # accepts Csv
    #     include_member_accounts: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.s3_destination.bucket #=> String
    #   resp.s3_destination.key #=> String
    #   resp.s3_destination.metadata_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportECSServiceRecommendations AWS API Documentation
    #
    # @overload export_ecs_service_recommendations(params = {})
    # @param [Hash] params ({})
    def export_ecs_service_recommendations(params = {}, options = {})
      req = build_request(:export_ecs_service_recommendations, params)
      req.send_request(options)
    end

    # Exports optimization recommendations for Lambda functions.
    #
    # Recommendations are exported in a comma-separated values (.csv) file,
    # and its metadata in a JavaScript Object Notation (JSON) (.json) file,
    # to an existing Amazon Simple Storage Service (Amazon S3) bucket that
    # you specify. For more information, see [Exporting Recommendations][1]
    # in the *Compute Optimizer User Guide*.
    #
    # You can have only one Lambda function export job in progress per
    # Amazon Web Services Region.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html
    #
    # @option params [Array<String>] :account_ids
    #   The IDs of the Amazon Web Services accounts for which to export Lambda
    #   function recommendations.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to export
    #   recommendations.
    #
    #   This parameter cannot be specified together with the include member
    #   accounts parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export if
    #   this parameter, or the include member accounts parameter, is omitted.
    #
    #   You can specify multiple account IDs per request.
    #
    # @option params [Array<Types::LambdaFunctionRecommendationFilter>] :filters
    #   An array of objects to specify a filter that exports a more specific
    #   set of Lambda function recommendations.
    #
    # @option params [Array<String>] :fields_to_export
    #   The recommendations data to include in the export file. For more
    #   information about the fields that can be exported, see [Exported
    #   files][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html#exported-files
    #
    # @option params [required, Types::S3DestinationConfig] :s3_destination_config
    #   Describes the destination Amazon Simple Storage Service (Amazon S3)
    #   bucket name and key prefix for a recommendations export job.
    #
    #   You must create the destination Amazon S3 bucket for your
    #   recommendations export before you create the export job. Compute
    #   Optimizer does not create the S3 bucket for you. After you create the
    #   S3 bucket, ensure that it has the required permission policy to allow
    #   Compute Optimizer to write the export file to it. If you plan to
    #   specify an object prefix when you create the export job, you must
    #   include the object prefix in the policy that you add to the S3 bucket.
    #   For more information, see [Amazon S3 Bucket Policy for Compute
    #   Optimizer][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/create-s3-bucket-policy-for-compute-optimizer.html
    #
    # @option params [String] :file_format
    #   The format of the export file.
    #
    #   The only export file format currently supported is `Csv`.
    #
    # @option params [Boolean] :include_member_accounts
    #   Indicates whether to include recommendations for resources in all
    #   member accounts of the organization if your account is the management
    #   account of an organization.
    #
    #   The member accounts must also be opted in to Compute Optimizer, and
    #   trusted access for Compute Optimizer must be enabled in the
    #   organization account. For more information, see [Compute Optimizer and
    #   Amazon Web Services Organizations trusted access][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #   Recommendations for member accounts of the organization are not
    #   included in the export file if this parameter is omitted.
    #
    #   This parameter cannot be specified together with the account IDs
    #   parameter. The parameters are mutually exclusive.
    #
    #   Recommendations for member accounts are not included in the export if
    #   this parameter, or the account IDs parameter, is omitted.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html#trusted-service-access
    #
    # @return [Types::ExportLambdaFunctionRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExportLambdaFunctionRecommendationsResponse#job_id #job_id} => String
    #   * {Types::ExportLambdaFunctionRecommendationsResponse#s3_destination #s3_destination} => Types::S3Destination
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_lambda_function_recommendations({
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, FindingReasonCode
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     fields_to_export: ["AccountId"], # accepts AccountId, FunctionArn, FunctionVersion, Finding, FindingReasonCodes, NumberOfInvocations, UtilizationMetricsDurationMaximum, UtilizationMetricsDurationAverage, UtilizationMetricsMemoryMaximum, UtilizationMetricsMemoryAverage, LookbackPeriodInDays, CurrentConfigurationMemorySize, CurrentConfigurationTimeout, CurrentCostTotal, CurrentCostAverage, RecommendationOptionsConfigurationMemorySize, RecommendationOptionsCostLow, RecommendationOptionsCostHigh, RecommendationOptionsProjectedUtilizationMetricsDurationLowerBound, RecommendationOptionsProjectedUtilizationMetricsDurationUpperBound, RecommendationOptionsProjectedUtilizationMetricsDurationExpected, LastRefreshTimestamp, CurrentPerformanceRisk, RecommendationOptionsSavingsOpportunityPercentage, RecommendationOptionsEstimatedMonthlySavingsCurrency, RecommendationOptionsEstimatedMonthlySavingsValue, Tags
    #     s3_destination_config: { # required
    #       bucket: "DestinationBucket",
    #       key_prefix: "DestinationKeyPrefix",
    #     },
    #     file_format: "Csv", # accepts Csv
    #     include_member_accounts: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.s3_destination.bucket #=> String
    #   resp.s3_destination.key #=> String
    #   resp.s3_destination.metadata_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/ExportLambdaFunctionRecommendations AWS API Documentation
    #
    # @overload export_lambda_function_recommendations(params = {})
    # @param [Hash] params ({})
    def export_lambda_function_recommendations(params = {}, options = {})
      req = build_request(:export_lambda_function_recommendations, params)
      req.send_request(options)
    end

    # Returns Auto Scaling group recommendations.
    #
    # Compute Optimizer generates recommendations for Amazon EC2 Auto
    # Scaling groups that meet a specific set of requirements. For more
    # information, see the [Supported resources and requirements][1] in the
    # *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account for which to return Auto
    #   Scaling group recommendations.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to return
    #   Auto Scaling group recommendations.
    #
    #   Only one account ID can be specified per request.
    #
    # @option params [Array<String>] :auto_scaling_group_arns
    #   The Amazon Resource Name (ARN) of the Auto Scaling groups for which to
    #   return recommendations.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of Auto Scaling group
    #   recommendations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Auto Scaling group recommendations to return
    #   with a single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of Auto Scaling group recommendations.
    #
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   An object to specify the preferences for the Auto Scaling group
    #   recommendations to return in the response.
    #
    # @return [Types::GetAutoScalingGroupRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAutoScalingGroupRecommendationsResponse#next_token #next_token} => String
    #   * {Types::GetAutoScalingGroupRecommendationsResponse#auto_scaling_group_recommendations #auto_scaling_group_recommendations} => Array&lt;Types::AutoScalingGroupRecommendation&gt;
    #   * {Types::GetAutoScalingGroupRecommendationsResponse#errors #errors} => Array&lt;Types::GetRecommendationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auto_scaling_group_recommendations({
    #     account_ids: ["AccountId"],
    #     auto_scaling_group_arns: ["AutoScalingGroupArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, FindingReasonCodes, RecommendationSourceType, InferredWorkloadTypes
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64"], # accepts AWS_ARM64, CURRENT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.auto_scaling_group_recommendations #=> Array
    #   resp.auto_scaling_group_recommendations[0].account_id #=> String
    #   resp.auto_scaling_group_recommendations[0].auto_scaling_group_arn #=> String
    #   resp.auto_scaling_group_recommendations[0].auto_scaling_group_name #=> String
    #   resp.auto_scaling_group_recommendations[0].finding #=> String, one of "Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"
    #   resp.auto_scaling_group_recommendations[0].utilization_metrics #=> Array
    #   resp.auto_scaling_group_recommendations[0].utilization_metrics[0].name #=> String, one of "Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"
    #   resp.auto_scaling_group_recommendations[0].utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.auto_scaling_group_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.auto_scaling_group_recommendations[0].look_back_period_in_days #=> Float
    #   resp.auto_scaling_group_recommendations[0].current_configuration.desired_capacity #=> Integer
    #   resp.auto_scaling_group_recommendations[0].current_configuration.min_size #=> Integer
    #   resp.auto_scaling_group_recommendations[0].current_configuration.max_size #=> Integer
    #   resp.auto_scaling_group_recommendations[0].current_configuration.instance_type #=> String
    #   resp.auto_scaling_group_recommendations[0].recommendation_options #=> Array
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].configuration.desired_capacity #=> Integer
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].configuration.min_size #=> Integer
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].configuration.max_size #=> Integer
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].configuration.instance_type #=> String
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics #=> Array
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].name #=> String, one of "Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].value #=> Float
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].performance_risk #=> Float
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].rank #=> Integer
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of "USD", "CNY"
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.auto_scaling_group_recommendations[0].recommendation_options[0].migration_effort #=> String, one of "VeryLow", "Low", "Medium", "High"
    #   resp.auto_scaling_group_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.auto_scaling_group_recommendations[0].current_performance_risk #=> String, one of "VeryLow", "Low", "Medium", "High"
    #   resp.auto_scaling_group_recommendations[0].effective_recommendation_preferences.cpu_vendor_architectures #=> Array
    #   resp.auto_scaling_group_recommendations[0].effective_recommendation_preferences.cpu_vendor_architectures[0] #=> String, one of "AWS_ARM64", "CURRENT"
    #   resp.auto_scaling_group_recommendations[0].effective_recommendation_preferences.enhanced_infrastructure_metrics #=> String, one of "Active", "Inactive"
    #   resp.auto_scaling_group_recommendations[0].effective_recommendation_preferences.inferred_workload_types #=> String, one of "Active", "Inactive"
    #   resp.auto_scaling_group_recommendations[0].effective_recommendation_preferences.external_metrics_preference.source #=> String, one of "Datadog", "Dynatrace", "NewRelic", "Instana"
    #   resp.auto_scaling_group_recommendations[0].inferred_workload_types #=> Array
    #   resp.auto_scaling_group_recommendations[0].inferred_workload_types[0] #=> String, one of "AmazonEmr", "ApacheCassandra", "ApacheHadoop", "Memcached", "Nginx", "PostgreSql", "Redis", "Kafka", "SQLServer"
    #   resp.errors #=> Array
    #   resp.errors[0].identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetAutoScalingGroupRecommendations AWS API Documentation
    #
    # @overload get_auto_scaling_group_recommendations(params = {})
    # @param [Hash] params ({})
    def get_auto_scaling_group_recommendations(params = {}, options = {})
      req = build_request(:get_auto_scaling_group_recommendations, params)
      req.send_request(options)
    end

    # Returns Amazon Elastic Block Store (Amazon EBS) volume
    # recommendations.
    #
    # Compute Optimizer generates recommendations for Amazon EBS volumes
    # that meet a specific set of requirements. For more information, see
    # the [Supported resources and requirements][1] in the *Compute
    # Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
    #
    # @option params [Array<String>] :volume_arns
    #   The Amazon Resource Name (ARN) of the volumes for which to return
    #   recommendations.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of volume recommendations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of volume recommendations to return with a single
    #   request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @option params [Array<Types::EBSFilter>] :filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of volume recommendations.
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account for which to return volume
    #   recommendations.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to return
    #   volume recommendations.
    #
    #   Only one account ID can be specified per request.
    #
    # @return [Types::GetEBSVolumeRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEBSVolumeRecommendationsResponse#next_token #next_token} => String
    #   * {Types::GetEBSVolumeRecommendationsResponse#volume_recommendations #volume_recommendations} => Array&lt;Types::VolumeRecommendation&gt;
    #   * {Types::GetEBSVolumeRecommendationsResponse#errors #errors} => Array&lt;Types::GetRecommendationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ebs_volume_recommendations({
    #     volume_arns: ["VolumeArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     account_ids: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.volume_recommendations #=> Array
    #   resp.volume_recommendations[0].volume_arn #=> String
    #   resp.volume_recommendations[0].account_id #=> String
    #   resp.volume_recommendations[0].current_configuration.volume_type #=> String
    #   resp.volume_recommendations[0].current_configuration.volume_size #=> Integer
    #   resp.volume_recommendations[0].current_configuration.volume_baseline_iops #=> Integer
    #   resp.volume_recommendations[0].current_configuration.volume_burst_iops #=> Integer
    #   resp.volume_recommendations[0].current_configuration.volume_baseline_throughput #=> Integer
    #   resp.volume_recommendations[0].current_configuration.volume_burst_throughput #=> Integer
    #   resp.volume_recommendations[0].current_configuration.root_volume #=> Boolean
    #   resp.volume_recommendations[0].finding #=> String, one of "Optimized", "NotOptimized"
    #   resp.volume_recommendations[0].utilization_metrics #=> Array
    #   resp.volume_recommendations[0].utilization_metrics[0].name #=> String, one of "VolumeReadOpsPerSecond", "VolumeWriteOpsPerSecond", "VolumeReadBytesPerSecond", "VolumeWriteBytesPerSecond"
    #   resp.volume_recommendations[0].utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.volume_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.volume_recommendations[0].look_back_period_in_days #=> Float
    #   resp.volume_recommendations[0].volume_recommendation_options #=> Array
    #   resp.volume_recommendations[0].volume_recommendation_options[0].configuration.volume_type #=> String
    #   resp.volume_recommendations[0].volume_recommendation_options[0].configuration.volume_size #=> Integer
    #   resp.volume_recommendations[0].volume_recommendation_options[0].configuration.volume_baseline_iops #=> Integer
    #   resp.volume_recommendations[0].volume_recommendation_options[0].configuration.volume_burst_iops #=> Integer
    #   resp.volume_recommendations[0].volume_recommendation_options[0].configuration.volume_baseline_throughput #=> Integer
    #   resp.volume_recommendations[0].volume_recommendation_options[0].configuration.volume_burst_throughput #=> Integer
    #   resp.volume_recommendations[0].volume_recommendation_options[0].configuration.root_volume #=> Boolean
    #   resp.volume_recommendations[0].volume_recommendation_options[0].performance_risk #=> Float
    #   resp.volume_recommendations[0].volume_recommendation_options[0].rank #=> Integer
    #   resp.volume_recommendations[0].volume_recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.volume_recommendations[0].volume_recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of "USD", "CNY"
    #   resp.volume_recommendations[0].volume_recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.volume_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.volume_recommendations[0].current_performance_risk #=> String, one of "VeryLow", "Low", "Medium", "High"
    #   resp.volume_recommendations[0].tags #=> Array
    #   resp.volume_recommendations[0].tags[0].key #=> String
    #   resp.volume_recommendations[0].tags[0].value #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEBSVolumeRecommendations AWS API Documentation
    #
    # @overload get_ebs_volume_recommendations(params = {})
    # @param [Hash] params ({})
    def get_ebs_volume_recommendations(params = {}, options = {})
      req = build_request(:get_ebs_volume_recommendations, params)
      req.send_request(options)
    end

    # Returns Amazon EC2 instance recommendations.
    #
    # Compute Optimizer generates recommendations for Amazon Elastic Compute
    # Cloud (Amazon EC2) instances that meet a specific set of requirements.
    # For more information, see the [Supported resources and
    # requirements][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
    #
    # @option params [Array<String>] :instance_arns
    #   The Amazon Resource Name (ARN) of the instances for which to return
    #   recommendations.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of instance recommendations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of instance recommendations to return with a single
    #   request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @option params [Array<Types::Filter>] :filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of instance recommendations.
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account for which to return instance
    #   recommendations.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to return
    #   instance recommendations.
    #
    #   Only one account ID can be specified per request.
    #
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   An object to specify the preferences for the Amazon EC2 instance
    #   recommendations to return in the response.
    #
    # @return [Types::GetEC2InstanceRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEC2InstanceRecommendationsResponse#next_token #next_token} => String
    #   * {Types::GetEC2InstanceRecommendationsResponse#instance_recommendations #instance_recommendations} => Array&lt;Types::InstanceRecommendation&gt;
    #   * {Types::GetEC2InstanceRecommendationsResponse#errors #errors} => Array&lt;Types::GetRecommendationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ec2_instance_recommendations({
    #     instance_arns: ["InstanceArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, FindingReasonCodes, RecommendationSourceType, InferredWorkloadTypes
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     account_ids: ["AccountId"],
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64"], # accepts AWS_ARM64, CURRENT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.instance_recommendations #=> Array
    #   resp.instance_recommendations[0].instance_arn #=> String
    #   resp.instance_recommendations[0].account_id #=> String
    #   resp.instance_recommendations[0].instance_name #=> String
    #   resp.instance_recommendations[0].current_instance_type #=> String
    #   resp.instance_recommendations[0].finding #=> String, one of "Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"
    #   resp.instance_recommendations[0].finding_reason_codes #=> Array
    #   resp.instance_recommendations[0].finding_reason_codes[0] #=> String, one of "CPUOverprovisioned", "CPUUnderprovisioned", "MemoryOverprovisioned", "MemoryUnderprovisioned", "EBSThroughputOverprovisioned", "EBSThroughputUnderprovisioned", "EBSIOPSOverprovisioned", "EBSIOPSUnderprovisioned", "NetworkBandwidthOverprovisioned", "NetworkBandwidthUnderprovisioned", "NetworkPPSOverprovisioned", "NetworkPPSUnderprovisioned", "DiskIOPSOverprovisioned", "DiskIOPSUnderprovisioned", "DiskThroughputOverprovisioned", "DiskThroughputUnderprovisioned"
    #   resp.instance_recommendations[0].utilization_metrics #=> Array
    #   resp.instance_recommendations[0].utilization_metrics[0].name #=> String, one of "Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"
    #   resp.instance_recommendations[0].utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.instance_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.instance_recommendations[0].look_back_period_in_days #=> Float
    #   resp.instance_recommendations[0].recommendation_options #=> Array
    #   resp.instance_recommendations[0].recommendation_options[0].instance_type #=> String
    #   resp.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics #=> Array
    #   resp.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].name #=> String, one of "Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"
    #   resp.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.instance_recommendations[0].recommendation_options[0].projected_utilization_metrics[0].value #=> Float
    #   resp.instance_recommendations[0].recommendation_options[0].platform_differences #=> Array
    #   resp.instance_recommendations[0].recommendation_options[0].platform_differences[0] #=> String, one of "Hypervisor", "NetworkInterface", "StorageInterface", "InstanceStoreAvailability", "VirtualizationType", "Architecture"
    #   resp.instance_recommendations[0].recommendation_options[0].performance_risk #=> Float
    #   resp.instance_recommendations[0].recommendation_options[0].rank #=> Integer
    #   resp.instance_recommendations[0].recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.instance_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of "USD", "CNY"
    #   resp.instance_recommendations[0].recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.instance_recommendations[0].recommendation_options[0].migration_effort #=> String, one of "VeryLow", "Low", "Medium", "High"
    #   resp.instance_recommendations[0].recommendation_sources #=> Array
    #   resp.instance_recommendations[0].recommendation_sources[0].recommendation_source_arn #=> String
    #   resp.instance_recommendations[0].recommendation_sources[0].recommendation_source_type #=> String, one of "Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "EcsService"
    #   resp.instance_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.instance_recommendations[0].current_performance_risk #=> String, one of "VeryLow", "Low", "Medium", "High"
    #   resp.instance_recommendations[0].effective_recommendation_preferences.cpu_vendor_architectures #=> Array
    #   resp.instance_recommendations[0].effective_recommendation_preferences.cpu_vendor_architectures[0] #=> String, one of "AWS_ARM64", "CURRENT"
    #   resp.instance_recommendations[0].effective_recommendation_preferences.enhanced_infrastructure_metrics #=> String, one of "Active", "Inactive"
    #   resp.instance_recommendations[0].effective_recommendation_preferences.inferred_workload_types #=> String, one of "Active", "Inactive"
    #   resp.instance_recommendations[0].effective_recommendation_preferences.external_metrics_preference.source #=> String, one of "Datadog", "Dynatrace", "NewRelic", "Instana"
    #   resp.instance_recommendations[0].inferred_workload_types #=> Array
    #   resp.instance_recommendations[0].inferred_workload_types[0] #=> String, one of "AmazonEmr", "ApacheCassandra", "ApacheHadoop", "Memcached", "Nginx", "PostgreSql", "Redis", "Kafka", "SQLServer"
    #   resp.instance_recommendations[0].instance_state #=> String, one of "pending", "running", "shutting-down", "terminated", "stopping", "stopped"
    #   resp.instance_recommendations[0].tags #=> Array
    #   resp.instance_recommendations[0].tags[0].key #=> String
    #   resp.instance_recommendations[0].tags[0].value #=> String
    #   resp.instance_recommendations[0].external_metric_status.status_code #=> String, one of "NO_EXTERNAL_METRIC_SET", "INTEGRATION_SUCCESS", "DATADOG_INTEGRATION_ERROR", "DYNATRACE_INTEGRATION_ERROR", "NEWRELIC_INTEGRATION_ERROR", "INSTANA_INTEGRATION_ERROR", "INSUFFICIENT_DATADOG_METRICS", "INSUFFICIENT_DYNATRACE_METRICS", "INSUFFICIENT_NEWRELIC_METRICS", "INSUFFICIENT_INSTANA_METRICS"
    #   resp.instance_recommendations[0].external_metric_status.status_reason #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2InstanceRecommendations AWS API Documentation
    #
    # @overload get_ec2_instance_recommendations(params = {})
    # @param [Hash] params ({})
    def get_ec2_instance_recommendations(params = {}, options = {})
      req = build_request(:get_ec2_instance_recommendations, params)
      req.send_request(options)
    end

    # Returns the projected utilization metrics of Amazon EC2 instance
    # recommendations.
    #
    # <note markdown="1"> The `Cpu` and `Memory` metrics are the only projected utilization
    # metrics returned when you run this action. Additionally, the `Memory`
    # metric is returned only for resources that have the unified CloudWatch
    # agent installed on them. For more information, see [Enabling Memory
    # Utilization with the CloudWatch Agent][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent
    #
    # @option params [required, String] :instance_arn
    #   The Amazon Resource Name (ARN) of the instances for which to return
    #   recommendation projected metrics.
    #
    # @option params [required, String] :stat
    #   The statistic of the projected metrics.
    #
    # @option params [required, Integer] :period
    #   The granularity, in seconds, of the projected metrics data points.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp of the first projected metrics data point to return.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp of the last projected metrics data point to return.
    #
    # @option params [Types::RecommendationPreferences] :recommendation_preferences
    #   An object to specify the preferences for the Amazon EC2 recommendation
    #   projected metrics to return in the response.
    #
    # @return [Types::GetEC2RecommendationProjectedMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEC2RecommendationProjectedMetricsResponse#recommended_option_projected_metrics #recommended_option_projected_metrics} => Array&lt;Types::RecommendedOptionProjectedMetric&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ec2_recommendation_projected_metrics({
    #     instance_arn: "InstanceArn", # required
    #     stat: "Maximum", # required, accepts Maximum, Average
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     recommendation_preferences: {
    #       cpu_vendor_architectures: ["AWS_ARM64"], # accepts AWS_ARM64, CURRENT
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.recommended_option_projected_metrics #=> Array
    #   resp.recommended_option_projected_metrics[0].recommended_instance_type #=> String
    #   resp.recommended_option_projected_metrics[0].rank #=> Integer
    #   resp.recommended_option_projected_metrics[0].projected_metrics #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].name #=> String, one of "Cpu", "Memory", "EBS_READ_OPS_PER_SECOND", "EBS_WRITE_OPS_PER_SECOND", "EBS_READ_BYTES_PER_SECOND", "EBS_WRITE_BYTES_PER_SECOND", "DISK_READ_OPS_PER_SECOND", "DISK_WRITE_OPS_PER_SECOND", "DISK_READ_BYTES_PER_SECOND", "DISK_WRITE_BYTES_PER_SECOND", "NETWORK_IN_BYTES_PER_SECOND", "NETWORK_OUT_BYTES_PER_SECOND", "NETWORK_PACKETS_IN_PER_SECOND", "NETWORK_PACKETS_OUT_PER_SECOND"
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].timestamps #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].timestamps[0] #=> Time
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].values #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].values[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEC2RecommendationProjectedMetrics AWS API Documentation
    #
    # @overload get_ec2_recommendation_projected_metrics(params = {})
    # @param [Hash] params ({})
    def get_ec2_recommendation_projected_metrics(params = {}, options = {})
      req = build_request(:get_ec2_recommendation_projected_metrics, params)
      req.send_request(options)
    end

    # Returns the projected metrics of Amazon ECS service recommendations.
    #
    # @option params [required, String] :service_arn
    #   The ARN that identifies the Amazon ECS service.
    #
    #   The following is the format of the ARN:
    #
    #   `arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name`
    #
    # @option params [required, String] :stat
    #   The statistic of the projected metrics.
    #
    # @option params [required, Integer] :period
    #   The granularity, in seconds, of the projected metrics data points.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp of the first projected metrics data point to return.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp of the last projected metrics data point to return.
    #
    # @return [Types::GetECSServiceRecommendationProjectedMetricsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetECSServiceRecommendationProjectedMetricsResponse#recommended_option_projected_metrics #recommended_option_projected_metrics} => Array&lt;Types::ECSServiceRecommendedOptionProjectedMetric&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ecs_service_recommendation_projected_metrics({
    #     service_arn: "ServiceArn", # required
    #     stat: "Maximum", # required, accepts Maximum, Average
    #     period: 1, # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.recommended_option_projected_metrics #=> Array
    #   resp.recommended_option_projected_metrics[0].recommended_cpu_units #=> Integer
    #   resp.recommended_option_projected_metrics[0].recommended_memory_size #=> Integer
    #   resp.recommended_option_projected_metrics[0].projected_metrics #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].name #=> String, one of "Cpu", "Memory"
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].timestamps #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].timestamps[0] #=> Time
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].upper_bound_values #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].upper_bound_values[0] #=> Float
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].lower_bound_values #=> Array
    #   resp.recommended_option_projected_metrics[0].projected_metrics[0].lower_bound_values[0] #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetECSServiceRecommendationProjectedMetrics AWS API Documentation
    #
    # @overload get_ecs_service_recommendation_projected_metrics(params = {})
    # @param [Hash] params ({})
    def get_ecs_service_recommendation_projected_metrics(params = {}, options = {})
      req = build_request(:get_ecs_service_recommendation_projected_metrics, params)
      req.send_request(options)
    end

    # Returns Amazon ECS service recommendations.
    #
    # Compute Optimizer generates recommendations for Amazon ECS services on
    # Fargate that meet a specific set of requirements. For more
    # information, see the [Supported resources and requirements][1] in the
    # *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
    #
    # @option params [Array<String>] :service_arns
    #   The ARN that identifies the Amazon ECS service.
    #
    #   The following is the format of the ARN:
    #
    #   `arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name`
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of Amazon ECS service
    #   recommendations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Amazon ECS service recommendations to return
    #   with a single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @option params [Array<Types::ECSServiceRecommendationFilter>] :filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of Amazon ECS service recommendations.
    #
    # @option params [Array<String>] :account_ids
    #   Return the Amazon ECS service recommendations to the specified Amazon
    #   Web Services account IDs.
    #
    #   If your account is the management account or the delegated
    #   administrator of an organization, use this parameter to return the
    #   Amazon ECS service recommendations to specific member accounts.
    #
    #   You can only specify one account ID per request.
    #
    # @return [Types::GetECSServiceRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetECSServiceRecommendationsResponse#next_token #next_token} => String
    #   * {Types::GetECSServiceRecommendationsResponse#ecs_service_recommendations #ecs_service_recommendations} => Array&lt;Types::ECSServiceRecommendation&gt;
    #   * {Types::GetECSServiceRecommendationsResponse#errors #errors} => Array&lt;Types::GetRecommendationError&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ecs_service_recommendations({
    #     service_arns: ["ServiceArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, FindingReasonCode
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     account_ids: ["AccountId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.ecs_service_recommendations #=> Array
    #   resp.ecs_service_recommendations[0].service_arn #=> String
    #   resp.ecs_service_recommendations[0].account_id #=> String
    #   resp.ecs_service_recommendations[0].current_service_configuration.memory #=> Integer
    #   resp.ecs_service_recommendations[0].current_service_configuration.cpu #=> Integer
    #   resp.ecs_service_recommendations[0].current_service_configuration.container_configurations #=> Array
    #   resp.ecs_service_recommendations[0].current_service_configuration.container_configurations[0].container_name #=> String
    #   resp.ecs_service_recommendations[0].current_service_configuration.container_configurations[0].memory_size_configuration.memory #=> Integer
    #   resp.ecs_service_recommendations[0].current_service_configuration.container_configurations[0].memory_size_configuration.memory_reservation #=> Integer
    #   resp.ecs_service_recommendations[0].current_service_configuration.container_configurations[0].cpu #=> Integer
    #   resp.ecs_service_recommendations[0].current_service_configuration.auto_scaling_configuration #=> String, one of "TargetTrackingScalingCpu", "TargetTrackingScalingMemory"
    #   resp.ecs_service_recommendations[0].current_service_configuration.task_definition_arn #=> String
    #   resp.ecs_service_recommendations[0].utilization_metrics #=> Array
    #   resp.ecs_service_recommendations[0].utilization_metrics[0].name #=> String, one of "Cpu", "Memory"
    #   resp.ecs_service_recommendations[0].utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.ecs_service_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.ecs_service_recommendations[0].lookback_period_in_days #=> Float
    #   resp.ecs_service_recommendations[0].launch_type #=> String, one of "EC2", "Fargate"
    #   resp.ecs_service_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.ecs_service_recommendations[0].finding #=> String, one of "Optimized", "Underprovisioned", "Overprovisioned"
    #   resp.ecs_service_recommendations[0].finding_reason_codes #=> Array
    #   resp.ecs_service_recommendations[0].finding_reason_codes[0] #=> String, one of "MemoryOverprovisioned", "MemoryUnderprovisioned", "CPUOverprovisioned", "CPUUnderprovisioned"
    #   resp.ecs_service_recommendations[0].service_recommendation_options #=> Array
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].memory #=> Integer
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].cpu #=> Integer
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of "USD", "CNY"
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].projected_utilization_metrics #=> Array
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].projected_utilization_metrics[0].name #=> String, one of "Cpu", "Memory"
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].projected_utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].projected_utilization_metrics[0].lower_bound_value #=> Float
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].projected_utilization_metrics[0].upper_bound_value #=> Float
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].container_recommendations #=> Array
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].container_recommendations[0].container_name #=> String
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].container_recommendations[0].memory_size_configuration.memory #=> Integer
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].container_recommendations[0].memory_size_configuration.memory_reservation #=> Integer
    #   resp.ecs_service_recommendations[0].service_recommendation_options[0].container_recommendations[0].cpu #=> Integer
    #   resp.ecs_service_recommendations[0].current_performance_risk #=> String, one of "VeryLow", "Low", "Medium", "High"
    #   resp.ecs_service_recommendations[0].tags #=> Array
    #   resp.ecs_service_recommendations[0].tags[0].key #=> String
    #   resp.ecs_service_recommendations[0].tags[0].value #=> String
    #   resp.errors #=> Array
    #   resp.errors[0].identifier #=> String
    #   resp.errors[0].code #=> String
    #   resp.errors[0].message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetECSServiceRecommendations AWS API Documentation
    #
    # @overload get_ecs_service_recommendations(params = {})
    # @param [Hash] params ({})
    def get_ecs_service_recommendations(params = {}, options = {})
      req = build_request(:get_ecs_service_recommendations, params)
      req.send_request(options)
    end

    # Returns the recommendation preferences that are in effect for a given
    # resource, such as enhanced infrastructure metrics. Considers all
    # applicable preferences that you might have set at the resource,
    # account, and organization level.
    #
    # When you create a recommendation preference, you can set its status to
    # `Active` or `Inactive`. Use this action to view the recommendation
    # preferences that are in effect, or `Active`.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to confirm
    #   effective recommendation preferences. Only EC2 instance and Auto
    #   Scaling group ARNs are currently supported.
    #
    # @return [Types::GetEffectiveRecommendationPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEffectiveRecommendationPreferencesResponse#enhanced_infrastructure_metrics #enhanced_infrastructure_metrics} => String
    #   * {Types::GetEffectiveRecommendationPreferencesResponse#external_metrics_preference #external_metrics_preference} => Types::ExternalMetricsPreference
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_recommendation_preferences({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.enhanced_infrastructure_metrics #=> String, one of "Active", "Inactive"
    #   resp.external_metrics_preference.source #=> String, one of "Datadog", "Dynatrace", "NewRelic", "Instana"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEffectiveRecommendationPreferences AWS API Documentation
    #
    # @overload get_effective_recommendation_preferences(params = {})
    # @param [Hash] params ({})
    def get_effective_recommendation_preferences(params = {}, options = {})
      req = build_request(:get_effective_recommendation_preferences, params)
      req.send_request(options)
    end

    # Returns the enrollment (opt in) status of an account to the Compute
    # Optimizer service.
    #
    # If the account is the management account of an organization, this
    # action also confirms the enrollment status of member accounts of the
    # organization. Use the GetEnrollmentStatusesForOrganization action to
    # get detailed information about the enrollment status of member
    # accounts of an organization.
    #
    # @return [Types::GetEnrollmentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnrollmentStatusResponse#status #status} => String
    #   * {Types::GetEnrollmentStatusResponse#status_reason #status_reason} => String
    #   * {Types::GetEnrollmentStatusResponse#member_accounts_enrolled #member_accounts_enrolled} => Boolean
    #   * {Types::GetEnrollmentStatusResponse#last_updated_timestamp #last_updated_timestamp} => Time
    #   * {Types::GetEnrollmentStatusResponse#number_of_member_accounts_opted_in #number_of_member_accounts_opted_in} => Integer
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Active", "Inactive", "Pending", "Failed"
    #   resp.status_reason #=> String
    #   resp.member_accounts_enrolled #=> Boolean
    #   resp.last_updated_timestamp #=> Time
    #   resp.number_of_member_accounts_opted_in #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatus AWS API Documentation
    #
    # @overload get_enrollment_status(params = {})
    # @param [Hash] params ({})
    def get_enrollment_status(params = {}, options = {})
      req = build_request(:get_enrollment_status, params)
      req.send_request(options)
    end

    # Returns the Compute Optimizer enrollment (opt-in) status of
    # organization member accounts, if your account is an organization
    # management account.
    #
    # To get the enrollment status of standalone accounts, use the
    # GetEnrollmentStatus action.
    #
    # @option params [Array<Types::EnrollmentFilter>] :filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of account enrollment statuses.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of account enrollment statuses.
    #
    # @option params [Integer] :max_results
    #   The maximum number of account enrollment statuses to return with a
    #   single request. You can specify up to 100 statuses to return with each
    #   request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @return [Types::GetEnrollmentStatusesForOrganizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEnrollmentStatusesForOrganizationResponse#account_enrollment_statuses #account_enrollment_statuses} => Array&lt;Types::AccountEnrollmentStatus&gt;
    #   * {Types::GetEnrollmentStatusesForOrganizationResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_enrollment_statuses_for_organization({
    #     filters: [
    #       {
    #         name: "Status", # accepts Status
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.account_enrollment_statuses #=> Array
    #   resp.account_enrollment_statuses[0].account_id #=> String
    #   resp.account_enrollment_statuses[0].status #=> String, one of "Active", "Inactive", "Pending", "Failed"
    #   resp.account_enrollment_statuses[0].status_reason #=> String
    #   resp.account_enrollment_statuses[0].last_updated_timestamp #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetEnrollmentStatusesForOrganization AWS API Documentation
    #
    # @overload get_enrollment_statuses_for_organization(params = {})
    # @param [Hash] params ({})
    def get_enrollment_statuses_for_organization(params = {}, options = {})
      req = build_request(:get_enrollment_statuses_for_organization, params)
      req.send_request(options)
    end

    # Returns Lambda function recommendations.
    #
    # Compute Optimizer generates recommendations for functions that meet a
    # specific set of requirements. For more information, see the [Supported
    # resources and requirements][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html
    #
    # @option params [Array<String>] :function_arns
    #   The Amazon Resource Name (ARN) of the functions for which to return
    #   recommendations.
    #
    #   You can specify a qualified or unqualified ARN. If you specify an
    #   unqualified ARN without a function version suffix, Compute Optimizer
    #   will return recommendations for the latest (`$LATEST`) version of the
    #   function. If you specify a qualified ARN with a version suffix,
    #   Compute Optimizer will return recommendations for the specified
    #   function version. For more information about using function versions,
    #   see [Using versions][1] in the *Lambda Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account for which to return function
    #   recommendations.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to return
    #   function recommendations.
    #
    #   Only one account ID can be specified per request.
    #
    # @option params [Array<Types::LambdaFunctionRecommendationFilter>] :filters
    #   An array of objects to specify a filter that returns a more specific
    #   list of function recommendations.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of function recommendations.
    #
    # @option params [Integer] :max_results
    #   The maximum number of function recommendations to return with a single
    #   request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @return [Types::GetLambdaFunctionRecommendationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLambdaFunctionRecommendationsResponse#next_token #next_token} => String
    #   * {Types::GetLambdaFunctionRecommendationsResponse#lambda_function_recommendations #lambda_function_recommendations} => Array&lt;Types::LambdaFunctionRecommendation&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_lambda_function_recommendations({
    #     function_arns: ["FunctionArn"],
    #     account_ids: ["AccountId"],
    #     filters: [
    #       {
    #         name: "Finding", # accepts Finding, FindingReasonCode
    #         values: ["FilterValue"],
    #       },
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.lambda_function_recommendations #=> Array
    #   resp.lambda_function_recommendations[0].function_arn #=> String
    #   resp.lambda_function_recommendations[0].function_version #=> String
    #   resp.lambda_function_recommendations[0].account_id #=> String
    #   resp.lambda_function_recommendations[0].current_memory_size #=> Integer
    #   resp.lambda_function_recommendations[0].number_of_invocations #=> Integer
    #   resp.lambda_function_recommendations[0].utilization_metrics #=> Array
    #   resp.lambda_function_recommendations[0].utilization_metrics[0].name #=> String, one of "Duration", "Memory"
    #   resp.lambda_function_recommendations[0].utilization_metrics[0].statistic #=> String, one of "Maximum", "Average"
    #   resp.lambda_function_recommendations[0].utilization_metrics[0].value #=> Float
    #   resp.lambda_function_recommendations[0].lookback_period_in_days #=> Float
    #   resp.lambda_function_recommendations[0].last_refresh_timestamp #=> Time
    #   resp.lambda_function_recommendations[0].finding #=> String, one of "Optimized", "NotOptimized", "Unavailable"
    #   resp.lambda_function_recommendations[0].finding_reason_codes #=> Array
    #   resp.lambda_function_recommendations[0].finding_reason_codes[0] #=> String, one of "MemoryOverprovisioned", "MemoryUnderprovisioned", "InsufficientData", "Inconclusive"
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options #=> Array
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].rank #=> Integer
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].memory_size #=> Integer
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics #=> Array
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics[0].name #=> String, one of "Duration"
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics[0].statistic #=> String, one of "LowerBound", "UpperBound", "Expected"
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].projected_utilization_metrics[0].value #=> Float
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of "USD", "CNY"
    #   resp.lambda_function_recommendations[0].memory_size_recommendation_options[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.lambda_function_recommendations[0].current_performance_risk #=> String, one of "VeryLow", "Low", "Medium", "High"
    #   resp.lambda_function_recommendations[0].tags #=> Array
    #   resp.lambda_function_recommendations[0].tags[0].key #=> String
    #   resp.lambda_function_recommendations[0].tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetLambdaFunctionRecommendations AWS API Documentation
    #
    # @overload get_lambda_function_recommendations(params = {})
    # @param [Hash] params ({})
    def get_lambda_function_recommendations(params = {}, options = {})
      req = build_request(:get_lambda_function_recommendations, params)
      req.send_request(options)
    end

    # Returns existing recommendation preferences, such as enhanced
    # infrastructure metrics.
    #
    # Use the `scope` parameter to specify which preferences to return. You
    # can specify to return preferences for an organization, a specific
    # account ID, or a specific EC2 instance or Auto Scaling group Amazon
    # Resource Name (ARN).
    #
    # For more information, see [Activating enhanced infrastructure
    # metrics][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #
    # @option params [required, String] :resource_type
    #   The target resource type of the recommendation preference for which to
    #   return preferences.
    #
    #   The `Ec2Instance` option encompasses standalone instances and
    #   instances that are part of Auto Scaling groups. The `AutoScalingGroup`
    #   option encompasses only instances that are part of an Auto Scaling
    #   group.
    #
    #   <note markdown="1"> The valid values for this parameter are `Ec2Instance` and
    #   `AutoScalingGroup`.
    #
    #    </note>
    #
    # @option params [Types::Scope] :scope
    #   An object that describes the scope of the recommendation preference to
    #   return.
    #
    #   You can return recommendation preferences that are created at the
    #   organization level (for management accounts of an organization only),
    #   account level, and resource level. For more information, see
    #   [Activating enhanced infrastructure metrics][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of recommendation preferences.
    #
    # @option params [Integer] :max_results
    #   The maximum number of recommendation preferences to return with a
    #   single request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @return [Types::GetRecommendationPreferencesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationPreferencesResponse#next_token #next_token} => String
    #   * {Types::GetRecommendationPreferencesResponse#recommendation_preferences_details #recommendation_preferences_details} => Array&lt;Types::RecommendationPreferencesDetail&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation_preferences({
    #     resource_type: "Ec2Instance", # required, accepts Ec2Instance, AutoScalingGroup, EbsVolume, LambdaFunction, NotApplicable, EcsService
    #     scope: {
    #       name: "Organization", # accepts Organization, AccountId, ResourceArn
    #       value: "ScopeValue",
    #     },
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recommendation_preferences_details #=> Array
    #   resp.recommendation_preferences_details[0].scope.name #=> String, one of "Organization", "AccountId", "ResourceArn"
    #   resp.recommendation_preferences_details[0].scope.value #=> String
    #   resp.recommendation_preferences_details[0].resource_type #=> String, one of "Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "NotApplicable", "EcsService"
    #   resp.recommendation_preferences_details[0].enhanced_infrastructure_metrics #=> String, one of "Active", "Inactive"
    #   resp.recommendation_preferences_details[0].inferred_workload_types #=> String, one of "Active", "Inactive"
    #   resp.recommendation_preferences_details[0].external_metrics_preference.source #=> String, one of "Datadog", "Dynatrace", "NewRelic", "Instana"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationPreferences AWS API Documentation
    #
    # @overload get_recommendation_preferences(params = {})
    # @param [Hash] params ({})
    def get_recommendation_preferences(params = {}, options = {})
      req = build_request(:get_recommendation_preferences, params)
      req.send_request(options)
    end

    # Returns the optimization findings for an account.
    #
    # It returns the number of:
    #
    # * Amazon EC2 instances in an account that are `Underprovisioned`,
    #   `Overprovisioned`, or `Optimized`.
    #
    # * Auto Scaling groups in an account that are `NotOptimized`, or
    #   `Optimized`.
    #
    # * Amazon EBS volumes in an account that are `NotOptimized`, or
    #   `Optimized`.
    #
    # * Lambda functions in an account that are `NotOptimized`, or
    #   `Optimized`.
    #
    # * Amazon ECS services in an account that are `Underprovisioned`,
    #   `Overprovisioned`, or `Optimized`.
    #
    # @option params [Array<String>] :account_ids
    #   The ID of the Amazon Web Services account for which to return
    #   recommendation summaries.
    #
    #   If your account is the management account of an organization, use this
    #   parameter to specify the member account for which you want to return
    #   recommendation summaries.
    #
    #   Only one account ID can be specified per request.
    #
    # @option params [String] :next_token
    #   The token to advance to the next page of recommendation summaries.
    #
    # @option params [Integer] :max_results
    #   The maximum number of recommendation summaries to return with a single
    #   request.
    #
    #   To retrieve the remaining results, make another request with the
    #   returned `nextToken` value.
    #
    # @return [Types::GetRecommendationSummariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecommendationSummariesResponse#next_token #next_token} => String
    #   * {Types::GetRecommendationSummariesResponse#recommendation_summaries #recommendation_summaries} => Array&lt;Types::RecommendationSummary&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendation_summaries({
    #     account_ids: ["AccountId"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.recommendation_summaries #=> Array
    #   resp.recommendation_summaries[0].summaries #=> Array
    #   resp.recommendation_summaries[0].summaries[0].name #=> String, one of "Underprovisioned", "Overprovisioned", "Optimized", "NotOptimized"
    #   resp.recommendation_summaries[0].summaries[0].value #=> Float
    #   resp.recommendation_summaries[0].summaries[0].reason_code_summaries #=> Array
    #   resp.recommendation_summaries[0].summaries[0].reason_code_summaries[0].name #=> String, one of "MemoryOverprovisioned", "MemoryUnderprovisioned"
    #   resp.recommendation_summaries[0].summaries[0].reason_code_summaries[0].value #=> Float
    #   resp.recommendation_summaries[0].recommendation_resource_type #=> String, one of "Ec2Instance", "AutoScalingGroup", "EbsVolume", "LambdaFunction", "EcsService"
    #   resp.recommendation_summaries[0].account_id #=> String
    #   resp.recommendation_summaries[0].savings_opportunity.savings_opportunity_percentage #=> Float
    #   resp.recommendation_summaries[0].savings_opportunity.estimated_monthly_savings.currency #=> String, one of "USD", "CNY"
    #   resp.recommendation_summaries[0].savings_opportunity.estimated_monthly_savings.value #=> Float
    #   resp.recommendation_summaries[0].current_performance_risk_ratings.high #=> Integer
    #   resp.recommendation_summaries[0].current_performance_risk_ratings.medium #=> Integer
    #   resp.recommendation_summaries[0].current_performance_risk_ratings.low #=> Integer
    #   resp.recommendation_summaries[0].current_performance_risk_ratings.very_low #=> Integer
    #   resp.recommendation_summaries[0].inferred_workload_savings #=> Array
    #   resp.recommendation_summaries[0].inferred_workload_savings[0].inferred_workload_types #=> Array
    #   resp.recommendation_summaries[0].inferred_workload_savings[0].inferred_workload_types[0] #=> String, one of "AmazonEmr", "ApacheCassandra", "ApacheHadoop", "Memcached", "Nginx", "PostgreSql", "Redis", "Kafka", "SQLServer"
    #   resp.recommendation_summaries[0].inferred_workload_savings[0].estimated_monthly_savings.currency #=> String, one of "USD", "CNY"
    #   resp.recommendation_summaries[0].inferred_workload_savings[0].estimated_monthly_savings.value #=> Float
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/GetRecommendationSummaries AWS API Documentation
    #
    # @overload get_recommendation_summaries(params = {})
    # @param [Hash] params ({})
    def get_recommendation_summaries(params = {}, options = {})
      req = build_request(:get_recommendation_summaries, params)
      req.send_request(options)
    end

    # Creates a new recommendation preference or updates an existing
    # recommendation preference, such as enhanced infrastructure metrics.
    #
    # For more information, see [Activating enhanced infrastructure
    # metrics][1] in the *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #
    # @option params [required, String] :resource_type
    #   The target resource type of the recommendation preference to create.
    #
    #   The `Ec2Instance` option encompasses standalone instances and
    #   instances that are part of Auto Scaling groups. The `AutoScalingGroup`
    #   option encompasses only instances that are part of an Auto Scaling
    #   group.
    #
    #   <note markdown="1"> The valid values for this parameter are `Ec2Instance` and
    #   `AutoScalingGroup`.
    #
    #    </note>
    #
    # @option params [Types::Scope] :scope
    #   An object that describes the scope of the recommendation preference to
    #   create.
    #
    #   You can create recommendation preferences at the organization level
    #   (for management accounts of an organization only), account level, and
    #   resource level. For more information, see [Activating enhanced
    #   infrastructure metrics][1] in the *Compute Optimizer User Guide*.
    #
    #   <note markdown="1"> You cannot create recommendation preferences for Auto Scaling groups
    #   at the organization and account levels. You can create recommendation
    #   preferences for Auto Scaling groups only at the resource level by
    #   specifying a scope name of `ResourceArn` and a scope value of the Auto
    #   Scaling group Amazon Resource Name (ARN). This will configure the
    #   preference for all instances that are part of the specified Auto
    #   Scaling group. You also cannot create recommendation preferences at
    #   the resource level for instances that are part of an Auto Scaling
    #   group. You can create recommendation preferences at the resource level
    #   only for standalone instances.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #
    # @option params [String] :enhanced_infrastructure_metrics
    #   The status of the enhanced infrastructure metrics recommendation
    #   preference to create or update.
    #
    #   Specify the `Active` status to activate the preference, or specify
    #   `Inactive` to deactivate the preference.
    #
    #   For more information, see [Enhanced infrastructure metrics][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html
    #
    # @option params [String] :inferred_workload_types
    #   The status of the inferred workload types recommendation preference to
    #   create or update.
    #
    #   <note markdown="1"> The inferred workload type feature is active by default. To deactivate
    #   it, create a recommendation preference.
    #
    #    </note>
    #
    #   Specify the `Inactive` status to deactivate the feature, or specify
    #   `Active` to activate it.
    #
    #   For more information, see [Inferred workload types][1] in the *Compute
    #   Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/inferred-workload-types.html
    #
    # @option params [Types::ExternalMetricsPreference] :external_metrics_preference
    #   The provider of the external metrics recommendation preference to
    #   create or update.
    #
    #   Specify a valid provider in the `source` field to activate the
    #   preference. To delete this preference, see the
    #   DeleteRecommendationPreferences action.
    #
    #   This preference can only be set for the `Ec2Instance` resource type.
    #
    #   For more information, see [External metrics ingestion][1] in the
    #   *Compute Optimizer User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/external-metrics-ingestion.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_recommendation_preferences({
    #     resource_type: "Ec2Instance", # required, accepts Ec2Instance, AutoScalingGroup, EbsVolume, LambdaFunction, NotApplicable, EcsService
    #     scope: {
    #       name: "Organization", # accepts Organization, AccountId, ResourceArn
    #       value: "ScopeValue",
    #     },
    #     enhanced_infrastructure_metrics: "Active", # accepts Active, Inactive
    #     inferred_workload_types: "Active", # accepts Active, Inactive
    #     external_metrics_preference: {
    #       source: "Datadog", # accepts Datadog, Dynatrace, NewRelic, Instana
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/PutRecommendationPreferences AWS API Documentation
    #
    # @overload put_recommendation_preferences(params = {})
    # @param [Hash] params ({})
    def put_recommendation_preferences(params = {}, options = {})
      req = build_request(:put_recommendation_preferences, params)
      req.send_request(options)
    end

    # Updates the enrollment (opt in and opt out) status of an account to
    # the Compute Optimizer service.
    #
    # If the account is a management account of an organization, this action
    # can also be used to enroll member accounts of the organization.
    #
    # You must have the appropriate permissions to opt in to Compute
    # Optimizer, to view its recommendations, and to opt out. For more
    # information, see [Controlling access with Amazon Web Services Identity
    # and Access Management][1] in the *Compute Optimizer User Guide*.
    #
    # When you opt in, Compute Optimizer automatically creates a
    # service-linked role in your account to access its data. For more
    # information, see [Using Service-Linked Roles for Compute Optimizer][2]
    # in the *Compute Optimizer User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html
    # [2]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html
    #
    # @option params [required, String] :status
    #   The new enrollment status of the account.
    #
    #   The following status options are available:
    #
    #   * `Active` - Opts in your account to the Compute Optimizer service.
    #     Compute Optimizer begins analyzing the configuration and utilization
    #     metrics of your Amazon Web Services resources after you opt in. For
    #     more information, see [Metrics analyzed by Compute Optimizer][1] in
    #     the *Compute Optimizer User Guide*.
    #
    #   * `Inactive` - Opts out your account from the Compute Optimizer
    #     service. Your account's recommendations and related metrics data
    #     will be deleted from Compute Optimizer after you opt out.
    #
    #   <note markdown="1"> The `Pending` and `Failed` options cannot be used to update the
    #   enrollment status of an account. They are returned in the response of
    #   a request to update the enrollment status of an account.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html
    #
    # @option params [Boolean] :include_member_accounts
    #   Indicates whether to enroll member accounts of the organization if the
    #   account is the management account of an organization.
    #
    # @return [Types::UpdateEnrollmentStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateEnrollmentStatusResponse#status #status} => String
    #   * {Types::UpdateEnrollmentStatusResponse#status_reason #status_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_enrollment_status({
    #     status: "Active", # required, accepts Active, Inactive, Pending, Failed
    #     include_member_accounts: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Active", "Inactive", "Pending", "Failed"
    #   resp.status_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/compute-optimizer-2019-11-01/UpdateEnrollmentStatus AWS API Documentation
    #
    # @overload update_enrollment_status(params = {})
    # @param [Hash] params ({})
    def update_enrollment_status(params = {}, options = {})
      req = build_request(:update_enrollment_status, params)
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
      context[:gem_name] = 'aws-sdk-computeoptimizer'
      context[:gem_version] = '1.46.0'
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
