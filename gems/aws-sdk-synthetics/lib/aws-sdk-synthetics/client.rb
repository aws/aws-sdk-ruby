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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:synthetics)

module Aws::Synthetics
  # An API client for Synthetics.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::Synthetics::Client.new(
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

    @identifier = :synthetics

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Creates a canary. Canaries are scripts that monitor your endpoints and
    # APIs from the outside-in. Canaries help you check the availability and
    # latency of your web services and troubleshoot anomalies by
    # investigating load time data, screenshots of the UI, logs, and
    # metrics. You can set up a canary to run continuously or just once.
    #
    # Do not use `CreateCanary` to modify an existing canary. Use
    # [UpdateCanary][1] instead.
    #
    # To create canaries, you must have the `CloudWatchSyntheticsFullAccess`
    # policy. If you are creating a new IAM role for the canary, you also
    # need the the `iam:CreateRole`, `iam:CreatePolicy` and
    # `iam:AttachRolePolicy` permissions. For more information, see
    # [Necessary Roles and Permissions][2].
    #
    # Do not include secrets or proprietary information in your canary
    # names. The canary name makes up part of the Amazon Resource Name (ARN)
    # for the canary, and the ARN is included in outbound calls over the
    # internet. For more information, see [Security Considerations for
    # Synthetics Canaries][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles
    # [3]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html
    #
    # @option params [required, String] :name
    #   The name for this canary. Be sure to give it a descriptive name that
    #   distinguishes it from other canaries in your account.
    #
    #   Do not include secrets or proprietary information in your canary
    #   names. The canary name makes up part of the canary ARN, and the ARN is
    #   included in outbound calls over the internet. For more information,
    #   see [Security Considerations for Synthetics Canaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html
    #
    # @option params [required, Types::CanaryCodeInput] :code
    #   A structure that includes the entry point from which the canary should
    #   start running your script. If the script is stored in an S3 bucket,
    #   the bucket name, key, and version are also included.
    #
    # @option params [required, String] :artifact_s3_location
    #   The location in Amazon S3 where Synthetics stores artifacts from the
    #   test runs of this canary. Artifacts include the log file, screenshots,
    #   and HAR files.
    #
    # @option params [required, String] :execution_role_arn
    #   The ARN of the IAM role to be used to run the canary. This role must
    #   already exist, and must include `lambda.amazonaws.com` as a principal
    #   in the trust policy. The role must also have the following
    #   permissions:
    #
    #   * `s3:PutObject`
    #
    #   * `s3:GetBucketLocation`
    #
    #   * `s3:ListAllMyBuckets`
    #
    #   * `cloudwatch:PutMetricData`
    #
    #   * `logs:CreateLogGroup`
    #
    #   * `logs:CreateLogStream`
    #
    #   * `logs:PutLogEvents`
    #
    # @option params [required, Types::CanaryScheduleInput] :schedule
    #   A structure that contains information about how often the canary is to
    #   run and when these test runs are to stop.
    #
    # @option params [Types::CanaryRunConfigInput] :run_config
    #   A structure that contains the configuration for individual canary
    #   runs, such as timeout value.
    #
    # @option params [Integer] :success_retention_period_in_days
    #   The number of days to retain data about successful runs of this
    #   canary. If you omit this field, the default of 31 days is used. The
    #   valid range is 1 to 455 days.
    #
    # @option params [Integer] :failure_retention_period_in_days
    #   The number of days to retain data about failed runs of this canary. If
    #   you omit this field, the default of 31 days is used. The valid range
    #   is 1 to 455 days.
    #
    # @option params [required, String] :runtime_version
    #   Specifies the runtime version to use for the canary. Currently, the
    #   only valid values are `syn-nodejs-2.0`, `syn-nodejs-2.0-beta`, and
    #   `syn-1.0`. For more information about runtime versions, see [ Canary
    #   Runtime Versions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html
    #
    # @option params [Types::VpcConfigInput] :vpc_config
    #   If this canary is to test an endpoint in a VPC, this structure
    #   contains information about the subnet and security groups of the VPC
    #   endpoint. For more information, see [ Running a Canary in a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html
    #
    # @option params [Hash<String,String>] :tags
    #   A list of key-value pairs to associate with the canary. You can
    #   associate as many as 50 tags with a canary.
    #
    #   Tags can help you organize and categorize your resources. You can also
    #   use them to scope user permissions, by granting a user permission to
    #   access or change only the resources that have certain tag values.
    #
    # @return [Types::CreateCanaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCanaryResponse#canary #canary} => Types::Canary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_canary({
    #     name: "CanaryName", # required
    #     code: { # required
    #       s3_bucket: "String",
    #       s3_key: "String",
    #       s3_version: "String",
    #       zip_file: "data",
    #       handler: "String", # required
    #     },
    #     artifact_s3_location: "String", # required
    #     execution_role_arn: "RoleArn", # required
    #     schedule: { # required
    #       expression: "String", # required
    #       duration_in_seconds: 1,
    #     },
    #     run_config: {
    #       timeout_in_seconds: 1,
    #       memory_in_mb: 1,
    #       active_tracing: false,
    #     },
    #     success_retention_period_in_days: 1,
    #     failure_retention_period_in_days: 1,
    #     runtime_version: "String", # required
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.canary.id #=> String
    #   resp.canary.name #=> String
    #   resp.canary.code.source_location_arn #=> String
    #   resp.canary.code.handler #=> String
    #   resp.canary.execution_role_arn #=> String
    #   resp.canary.schedule.expression #=> String
    #   resp.canary.schedule.duration_in_seconds #=> Integer
    #   resp.canary.run_config.timeout_in_seconds #=> Integer
    #   resp.canary.run_config.memory_in_mb #=> Integer
    #   resp.canary.run_config.active_tracing #=> Boolean
    #   resp.canary.success_retention_period_in_days #=> Integer
    #   resp.canary.failure_retention_period_in_days #=> Integer
    #   resp.canary.status.state #=> String, one of "CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"
    #   resp.canary.status.state_reason #=> String
    #   resp.canary.status.state_reason_code #=> String, one of "INVALID_PERMISSIONS"
    #   resp.canary.timeline.created #=> Time
    #   resp.canary.timeline.last_modified #=> Time
    #   resp.canary.timeline.last_started #=> Time
    #   resp.canary.timeline.last_stopped #=> Time
    #   resp.canary.artifact_s3_location #=> String
    #   resp.canary.engine_arn #=> String
    #   resp.canary.runtime_version #=> String
    #   resp.canary.vpc_config.vpc_id #=> String
    #   resp.canary.vpc_config.subnet_ids #=> Array
    #   resp.canary.vpc_config.subnet_ids[0] #=> String
    #   resp.canary.vpc_config.security_group_ids #=> Array
    #   resp.canary.vpc_config.security_group_ids[0] #=> String
    #   resp.canary.tags #=> Hash
    #   resp.canary.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/CreateCanary AWS API Documentation
    #
    # @overload create_canary(params = {})
    # @param [Hash] params ({})
    def create_canary(params = {}, options = {})
      req = build_request(:create_canary, params)
      req.send_request(options)
    end

    # Permanently deletes the specified canary.
    #
    # When you delete a canary, resources used and created by the canary are
    # not automatically deleted. After you delete a canary that you do not
    # intend to use again, you should also delete the following:
    #
    # * The Lambda functions and layers used by this canary. These have the
    #   prefix `cwsyn-MyCanaryName `.
    #
    # * The CloudWatch alarms created for this canary. These alarms have a
    #   name of `Synthetics-SharpDrop-Alarm-MyCanaryName `.
    #
    # * Amazon S3 objects and buckets, such as the canary's artifact
    #   location.
    #
    # * IAM roles created for the canary. If they were created in the
    #   console, these roles have the name `
    #   role/service-role/CloudWatchSyntheticsRole-MyCanaryName `.
    #
    # * CloudWatch Logs log groups created for the canary. These logs groups
    #   have the name `/aws/lambda/cwsyn-MyCanaryName `.
    #
    # Before you delete a canary, you might want to use `GetCanary` to
    # display the information about this canary. Make note of the
    # information returned by this operation so that you can delete these
    # resources after you delete the canary.
    #
    # @option params [required, String] :name
    #   The name of the canary that you want to delete. To find the names of
    #   your canaries, use [DescribeCanaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_canary({
    #     name: "CanaryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DeleteCanary AWS API Documentation
    #
    # @overload delete_canary(params = {})
    # @param [Hash] params ({})
    def delete_canary(params = {}, options = {})
      req = build_request(:delete_canary, params)
      req.send_request(options)
    end

    # This operation returns a list of the canaries in your account, along
    # with full details about each canary.
    #
    # This operation does not have resource-level authorization, so if a
    # user is able to use `DescribeCanaries`, the user can see all of the
    # canaries in the account. A deny policy can only be used to restrict
    # access to all canaries. It cannot be used on specific resources.
    #
    # @option params [String] :next_token
    #   A token that indicates that there is more data available. You can use
    #   this token in a subsequent operation to retrieve the next set of
    #   results.
    #
    # @option params [Integer] :max_results
    #   Specify this parameter to limit how many canaries are returned each
    #   time you use the `DescribeCanaries` operation. If you omit this
    #   parameter, the default of 100 is used.
    #
    # @return [Types::DescribeCanariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCanariesResponse#canaries #canaries} => Array&lt;Types::Canary&gt;
    #   * {Types::DescribeCanariesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_canaries({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.canaries #=> Array
    #   resp.canaries[0].id #=> String
    #   resp.canaries[0].name #=> String
    #   resp.canaries[0].code.source_location_arn #=> String
    #   resp.canaries[0].code.handler #=> String
    #   resp.canaries[0].execution_role_arn #=> String
    #   resp.canaries[0].schedule.expression #=> String
    #   resp.canaries[0].schedule.duration_in_seconds #=> Integer
    #   resp.canaries[0].run_config.timeout_in_seconds #=> Integer
    #   resp.canaries[0].run_config.memory_in_mb #=> Integer
    #   resp.canaries[0].run_config.active_tracing #=> Boolean
    #   resp.canaries[0].success_retention_period_in_days #=> Integer
    #   resp.canaries[0].failure_retention_period_in_days #=> Integer
    #   resp.canaries[0].status.state #=> String, one of "CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"
    #   resp.canaries[0].status.state_reason #=> String
    #   resp.canaries[0].status.state_reason_code #=> String, one of "INVALID_PERMISSIONS"
    #   resp.canaries[0].timeline.created #=> Time
    #   resp.canaries[0].timeline.last_modified #=> Time
    #   resp.canaries[0].timeline.last_started #=> Time
    #   resp.canaries[0].timeline.last_stopped #=> Time
    #   resp.canaries[0].artifact_s3_location #=> String
    #   resp.canaries[0].engine_arn #=> String
    #   resp.canaries[0].runtime_version #=> String
    #   resp.canaries[0].vpc_config.vpc_id #=> String
    #   resp.canaries[0].vpc_config.subnet_ids #=> Array
    #   resp.canaries[0].vpc_config.subnet_ids[0] #=> String
    #   resp.canaries[0].vpc_config.security_group_ids #=> Array
    #   resp.canaries[0].vpc_config.security_group_ids[0] #=> String
    #   resp.canaries[0].tags #=> Hash
    #   resp.canaries[0].tags["TagKey"] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeCanaries AWS API Documentation
    #
    # @overload describe_canaries(params = {})
    # @param [Hash] params ({})
    def describe_canaries(params = {}, options = {})
      req = build_request(:describe_canaries, params)
      req.send_request(options)
    end

    # Use this operation to see information from the most recent run of each
    # canary that you have created.
    #
    # @option params [String] :next_token
    #   A token that indicates that there is more data available. You can use
    #   this token in a subsequent `DescribeCanaries` operation to retrieve
    #   the next set of results.
    #
    # @option params [Integer] :max_results
    #   Specify this parameter to limit how many runs are returned each time
    #   you use the `DescribeLastRun` operation. If you omit this parameter,
    #   the default of 100 is used.
    #
    # @return [Types::DescribeCanariesLastRunResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCanariesLastRunResponse#canaries_last_run #canaries_last_run} => Array&lt;Types::CanaryLastRun&gt;
    #   * {Types::DescribeCanariesLastRunResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_canaries_last_run({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.canaries_last_run #=> Array
    #   resp.canaries_last_run[0].canary_name #=> String
    #   resp.canaries_last_run[0].last_run.id #=> String
    #   resp.canaries_last_run[0].last_run.name #=> String
    #   resp.canaries_last_run[0].last_run.status.state #=> String, one of "RUNNING", "PASSED", "FAILED"
    #   resp.canaries_last_run[0].last_run.status.state_reason #=> String
    #   resp.canaries_last_run[0].last_run.status.state_reason_code #=> String, one of "CANARY_FAILURE", "EXECUTION_FAILURE"
    #   resp.canaries_last_run[0].last_run.timeline.started #=> Time
    #   resp.canaries_last_run[0].last_run.timeline.completed #=> Time
    #   resp.canaries_last_run[0].last_run.artifact_s3_location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeCanariesLastRun AWS API Documentation
    #
    # @overload describe_canaries_last_run(params = {})
    # @param [Hash] params ({})
    def describe_canaries_last_run(params = {}, options = {})
      req = build_request(:describe_canaries_last_run, params)
      req.send_request(options)
    end

    # Returns a list of Synthetics canary runtime versions. For more
    # information, see [ Canary Runtime Versions][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html
    #
    # @option params [String] :next_token
    #   A token that indicates that there is more data available. You can use
    #   this token in a subsequent `DescribeRuntimeVersions` operation to
    #   retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   Specify this parameter to limit how many runs are returned each time
    #   you use the `DescribeRuntimeVersions` operation. If you omit this
    #   parameter, the default of 100 is used.
    #
    # @return [Types::DescribeRuntimeVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRuntimeVersionsResponse#runtime_versions #runtime_versions} => Array&lt;Types::RuntimeVersion&gt;
    #   * {Types::DescribeRuntimeVersionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_runtime_versions({
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.runtime_versions #=> Array
    #   resp.runtime_versions[0].version_name #=> String
    #   resp.runtime_versions[0].description #=> String
    #   resp.runtime_versions[0].release_date #=> Time
    #   resp.runtime_versions[0].deprecation_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/DescribeRuntimeVersions AWS API Documentation
    #
    # @overload describe_runtime_versions(params = {})
    # @param [Hash] params ({})
    def describe_runtime_versions(params = {}, options = {})
      req = build_request(:describe_runtime_versions, params)
      req.send_request(options)
    end

    # Retrieves complete information about one canary. You must specify the
    # name of the canary that you want. To get a list of canaries and their
    # names, use [DescribeCanaries][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #
    # @option params [required, String] :name
    #   The name of the canary that you want details for.
    #
    # @return [Types::GetCanaryResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCanaryResponse#canary #canary} => Types::Canary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_canary({
    #     name: "CanaryName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.canary.id #=> String
    #   resp.canary.name #=> String
    #   resp.canary.code.source_location_arn #=> String
    #   resp.canary.code.handler #=> String
    #   resp.canary.execution_role_arn #=> String
    #   resp.canary.schedule.expression #=> String
    #   resp.canary.schedule.duration_in_seconds #=> Integer
    #   resp.canary.run_config.timeout_in_seconds #=> Integer
    #   resp.canary.run_config.memory_in_mb #=> Integer
    #   resp.canary.run_config.active_tracing #=> Boolean
    #   resp.canary.success_retention_period_in_days #=> Integer
    #   resp.canary.failure_retention_period_in_days #=> Integer
    #   resp.canary.status.state #=> String, one of "CREATING", "READY", "STARTING", "RUNNING", "UPDATING", "STOPPING", "STOPPED", "ERROR", "DELETING"
    #   resp.canary.status.state_reason #=> String
    #   resp.canary.status.state_reason_code #=> String, one of "INVALID_PERMISSIONS"
    #   resp.canary.timeline.created #=> Time
    #   resp.canary.timeline.last_modified #=> Time
    #   resp.canary.timeline.last_started #=> Time
    #   resp.canary.timeline.last_stopped #=> Time
    #   resp.canary.artifact_s3_location #=> String
    #   resp.canary.engine_arn #=> String
    #   resp.canary.runtime_version #=> String
    #   resp.canary.vpc_config.vpc_id #=> String
    #   resp.canary.vpc_config.subnet_ids #=> Array
    #   resp.canary.vpc_config.subnet_ids[0] #=> String
    #   resp.canary.vpc_config.security_group_ids #=> Array
    #   resp.canary.vpc_config.security_group_ids[0] #=> String
    #   resp.canary.tags #=> Hash
    #   resp.canary.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetCanary AWS API Documentation
    #
    # @overload get_canary(params = {})
    # @param [Hash] params ({})
    def get_canary(params = {}, options = {})
      req = build_request(:get_canary, params)
      req.send_request(options)
    end

    # Retrieves a list of runs for a specified canary.
    #
    # @option params [required, String] :name
    #   The name of the canary that you want to see runs for.
    #
    # @option params [String] :next_token
    #   A token that indicates that there is more data available. You can use
    #   this token in a subsequent `GetCanaryRuns` operation to retrieve the
    #   next set of results.
    #
    # @option params [Integer] :max_results
    #   Specify this parameter to limit how many runs are returned each time
    #   you use the `GetCanaryRuns` operation. If you omit this parameter, the
    #   default of 100 is used.
    #
    # @return [Types::GetCanaryRunsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCanaryRunsResponse#canary_runs #canary_runs} => Array&lt;Types::CanaryRun&gt;
    #   * {Types::GetCanaryRunsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_canary_runs({
    #     name: "CanaryName", # required
    #     next_token: "Token",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.canary_runs #=> Array
    #   resp.canary_runs[0].id #=> String
    #   resp.canary_runs[0].name #=> String
    #   resp.canary_runs[0].status.state #=> String, one of "RUNNING", "PASSED", "FAILED"
    #   resp.canary_runs[0].status.state_reason #=> String
    #   resp.canary_runs[0].status.state_reason_code #=> String, one of "CANARY_FAILURE", "EXECUTION_FAILURE"
    #   resp.canary_runs[0].timeline.started #=> Time
    #   resp.canary_runs[0].timeline.completed #=> Time
    #   resp.canary_runs[0].artifact_s3_location #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/GetCanaryRuns AWS API Documentation
    #
    # @overload get_canary_runs(params = {})
    # @param [Hash] params ({})
    def get_canary_runs(params = {}, options = {})
      req = build_request(:get_canary_runs, params)
      req.send_request(options)
    end

    # Displays the tags associated with a canary.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the canary that you want to view tags for.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_arn: "CanaryArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Use this operation to run a canary that has already been created. The
    # frequency of the canary runs is determined by the value of the
    # canary's `Schedule`. To see a canary's schedule, use [GetCanary][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html
    #
    # @option params [required, String] :name
    #   The name of the canary that you want to run. To find canary names, use
    #   [DescribeCanaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_canary({
    #     name: "CanaryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/StartCanary AWS API Documentation
    #
    # @overload start_canary(params = {})
    # @param [Hash] params ({})
    def start_canary(params = {}, options = {})
      req = build_request(:start_canary, params)
      req.send_request(options)
    end

    # Stops the canary to prevent all future runs. If the canary is
    # currently running, Synthetics stops waiting for the current run of the
    # specified canary to complete. The run that is in progress completes on
    # its own, publishes metrics, and uploads artifacts, but it is not
    # recorded in Synthetics as a completed run.
    #
    # You can use `StartCanary` to start it running again with the canary’s
    # current schedule at any point in the future.
    #
    # @option params [required, String] :name
    #   The name of the canary that you want to stop. To find the names of
    #   your canaries, use [DescribeCanaries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_canary({
    #     name: "CanaryName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/StopCanary AWS API Documentation
    #
    # @overload stop_canary(params = {})
    # @param [Hash] params ({})
    def stop_canary(params = {}, options = {})
      req = build_request(:stop_canary, params)
      req.send_request(options)
    end

    # Assigns one or more tags (key-value pairs) to the specified canary.
    #
    # Tags can help you organize and categorize your resources. You can also
    # use them to scope user permissions, by granting a user permission to
    # access or change only resources with certain tag values.
    #
    # Tags don't have any semantic meaning to AWS and are interpreted
    # strictly as strings of characters.
    #
    # You can use the `TagResource` action with a canary that already has
    # tags. If you specify a new tag key for the alarm, this tag is appended
    # to the list of tags associated with the alarm. If you specify a tag
    # key that is already associated with the alarm, the new tag value that
    # you specify replaces the previous value for that tag.
    #
    # You can associate as many as 50 tags with a canary.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the canary that you're adding tags to.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The list of key-value pairs to associate with the canary.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "CanaryArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified canary.
    #
    # @option params [required, String] :resource_arn
    #   The ARN of the canary that you're removing tags from.
    #
    #   The ARN format of a canary is
    #   `arn:aws:synthetics:Region:account-id:canary:canary-name `.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The list of tag keys to remove from the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "CanaryArn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Use this operation to change the settings of a canary that has already
    # been created.
    #
    # You can't use this operation to update the tags of an existing
    # canary. To change the tags of an existing canary, use
    # [TagResource][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_TagResource.html
    #
    # @option params [required, String] :name
    #   The name of the canary that you want to update. To find the names of
    #   your canaries, use [DescribeCanaries][1].
    #
    #   You cannot change the name of a canary that has already been created.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html
    #
    # @option params [Types::CanaryCodeInput] :code
    #   A structure that includes the entry point from which the canary should
    #   start running your script. If the script is stored in an S3 bucket,
    #   the bucket name, key, and version are also included.
    #
    # @option params [String] :execution_role_arn
    #   The ARN of the IAM role to be used to run the canary. This role must
    #   already exist, and must include `lambda.amazonaws.com` as a principal
    #   in the trust policy. The role must also have the following
    #   permissions:
    #
    #   * `s3:PutObject`
    #
    #   * `s3:GetBucketLocation`
    #
    #   * `s3:ListAllMyBuckets`
    #
    #   * `cloudwatch:PutMetricData`
    #
    #   * `logs:CreateLogGroup`
    #
    #   * `logs:CreateLogStream`
    #
    #   * `logs:CreateLogStream`
    #
    # @option params [String] :runtime_version
    #   Specifies the runtime version to use for the canary. Currently, the
    #   only valid values are `syn-nodejs-2.0`, `syn-nodejs-2.0-beta`, and
    #   `syn-1.0`. For more information about runtime versions, see [ Canary
    #   Runtime Versions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html
    #
    # @option params [Types::CanaryScheduleInput] :schedule
    #   A structure that contains information about how often the canary is to
    #   run, and when these runs are to stop.
    #
    # @option params [Types::CanaryRunConfigInput] :run_config
    #   A structure that contains the timeout value that is used for each
    #   individual run of the canary.
    #
    # @option params [Integer] :success_retention_period_in_days
    #   The number of days to retain data about successful runs of this
    #   canary.
    #
    # @option params [Integer] :failure_retention_period_in_days
    #   The number of days to retain data about failed runs of this canary.
    #
    # @option params [Types::VpcConfigInput] :vpc_config
    #   If this canary is to test an endpoint in a VPC, this structure
    #   contains information about the subnet and security groups of the VPC
    #   endpoint. For more information, see [ Running a Canary in a VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_canary({
    #     name: "CanaryName", # required
    #     code: {
    #       s3_bucket: "String",
    #       s3_key: "String",
    #       s3_version: "String",
    #       zip_file: "data",
    #       handler: "String", # required
    #     },
    #     execution_role_arn: "RoleArn",
    #     runtime_version: "String",
    #     schedule: {
    #       expression: "String", # required
    #       duration_in_seconds: 1,
    #     },
    #     run_config: {
    #       timeout_in_seconds: 1,
    #       memory_in_mb: 1,
    #       active_tracing: false,
    #     },
    #     success_retention_period_in_days: 1,
    #     failure_retention_period_in_days: 1,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/synthetics-2017-10-11/UpdateCanary AWS API Documentation
    #
    # @overload update_canary(params = {})
    # @param [Hash] params ({})
    def update_canary(params = {}, options = {})
      req = build_request(:update_canary, params)
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
      context[:gem_name] = 'aws-sdk-synthetics'
      context[:gem_version] = '1.9.0'
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
