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
require 'aws-sdk-core/plugins/protocols/rest_xml.rb'
require 'aws-sdk-s3control/plugins/arn.rb'
require 'aws-sdk-s3control/plugins/dualstack.rb'
require 'aws-sdk-s3control/plugins/s3_host_id.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:s3control)

module Aws::S3Control
  # An API client for S3Control.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::S3Control::Client.new(
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

    @identifier = :s3control

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
    add_plugin(Aws::Plugins::Protocols::RestXml)
    add_plugin(Aws::S3Control::Plugins::ARN)
    add_plugin(Aws::S3Control::Plugins::Dualstack)
    add_plugin(Aws::S3Control::Plugins::S3HostId)
    add_plugin(Aws::S3Control::Plugins::Endpoints)

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
    #   @option options [Boolean] :s3_use_arn_region (true)
    #     For S3 and S3 Outposts ARNs passed into the `:bucket` or `:name`
    #     parameter, this option will use the region in the ARN, allowing
    #     for cross-region requests to be made. Set to `false` to use the
    #     client's region instead.
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
    #   @option options [Aws::S3Control::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::S3Control::EndpointParameters`
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

    # Creates an access point and associates it with the specified bucket.
    # For more information, see [Managing Data Access with Amazon S3 Access
    # Points][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    # <note markdown="1"> S3 on Outposts only supports VPC-style access points.
    #
    #  For more information, see [ Accessing Amazon S3 on Outposts using
    # virtual private cloud (VPC) only access points][2] in the *Amazon S3
    # User Guide*.
    #
    #  </note>
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][3] section.
    #
    #
    #
    # The following actions are related to `CreateAccessPoint`:
    #
    # * [GetAccessPoint][4]
    #
    # * [DeleteAccessPoint][5]
    #
    # * [ListAccessPoints][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the account that owns the
    #   specified access point.
    #
    # @option params [required, String] :name
    #   The name you want to assign to this access point.
    #
    # @option params [required, String] :bucket
    #   The name of the bucket that you want to associate this access point
    #   with.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @option params [Types::VpcConfiguration] :vpc_configuration
    #   If you include this field, Amazon S3 restricts access to this access
    #   point to requests from the specified virtual private cloud (VPC).
    #
    #   <note markdown="1"> This is required for creating an access point for Amazon S3 on
    #   Outposts buckets.
    #
    #    </note>
    #
    # @option params [Types::PublicAccessBlockConfiguration] :public_access_block_configuration
    #   The `PublicAccessBlock` configuration that you want to apply to the
    #   access point.
    #
    # @option params [String] :bucket_account_id
    #   The Amazon Web Services account ID associated with the S3 bucket
    #   associated with this access point.
    #
    # @return [Types::CreateAccessPointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessPointResult#access_point_arn #access_point_arn} => String
    #   * {Types::CreateAccessPointResult#alias #alias} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_point({
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #     bucket: "BucketName", # required
    #     vpc_configuration: {
    #       vpc_id: "VpcId", # required
    #     },
    #     public_access_block_configuration: {
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false,
    #     },
    #     bucket_account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.access_point_arn #=> String
    #   resp.alias #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateAccessPoint AWS API Documentation
    #
    # @overload create_access_point(params = {})
    # @param [Hash] params ({})
    def create_access_point(params = {}, options = {})
      req = build_request(:create_access_point, params)
      req.send_request(options)
    end

    # Creates an Object Lambda Access Point. For more information, see
    # [Transforming objects with Object Lambda Access Points][1] in the
    # *Amazon S3 User Guide*.
    #
    # The following actions are related to
    # `CreateAccessPointForObjectLambda`:
    #
    # * [DeleteAccessPointForObjectLambda][2]
    #
    # * [GetAccessPointForObjectLambda][3]
    #
    # * [ListAccessPointsForObjectLambda][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/transforming-objects.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for owner of the specified Object
    #   Lambda Access Point.
    #
    # @option params [required, String] :name
    #   The name you want to assign to this Object Lambda Access Point.
    #
    # @option params [required, Types::ObjectLambdaConfiguration] :configuration
    #   Object Lambda Access Point configuration as a JSON document.
    #
    # @return [Types::CreateAccessPointForObjectLambdaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessPointForObjectLambdaResult#object_lambda_access_point_arn #object_lambda_access_point_arn} => String
    #   * {Types::CreateAccessPointForObjectLambdaResult#alias #alias} => Types::ObjectLambdaAccessPointAlias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_point_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #     configuration: { # required
    #       supporting_access_point: "ObjectLambdaSupportingAccessPointArn", # required
    #       cloud_watch_metrics_enabled: false,
    #       allowed_features: ["GetObject-Range"], # accepts GetObject-Range, GetObject-PartNumber, HeadObject-Range, HeadObject-PartNumber
    #       transformation_configurations: [ # required
    #         {
    #           actions: ["GetObject"], # required, accepts GetObject, HeadObject, ListObjects, ListObjectsV2
    #           content_transformation: { # required
    #             aws_lambda: {
    #               function_arn: "FunctionArnString", # required
    #               function_payload: "AwsLambdaTransformationPayload",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.object_lambda_access_point_arn #=> String
    #   resp.alias.value #=> String
    #   resp.alias.status #=> String, one of "PROVISIONING", "READY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateAccessPointForObjectLambda AWS API Documentation
    #
    # @overload create_access_point_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def create_access_point_for_object_lambda(params = {}, options = {})
      req = build_request(:create_access_point_for_object_lambda, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action creates an Amazon S3 on Outposts bucket. To create an S3
    # bucket, see [Create Bucket][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Creates a new Outposts bucket. By creating the bucket, you become the
    # bucket owner. To create an Outposts bucket, you must have S3 on
    # Outposts. For more information, see [Using Amazon S3 on Outposts][2]
    # in *Amazon S3 User Guide*.
    #
    # Not every string is an acceptable bucket name. For information on
    # bucket naming restrictions, see [Working with Amazon S3 Buckets][3].
    #
    # S3 on Outposts buckets support:
    #
    # * Tags
    #
    # * LifecycleConfigurations for deleting expired objects
    #
    # For a complete list of restrictions and Amazon S3 feature limitations
    # on S3 on Outposts, see [ Amazon S3 on Outposts Restrictions and
    # Limitations][4].
    #
    # For an example of the request syntax for Amazon S3 on Outposts that
    # uses the S3 on Outposts endpoint hostname prefix and
    # `x-amz-outpost-id` in your API request, see the [Examples][5] section.
    #
    # The following actions are related to `CreateBucket` for Amazon S3 on
    # Outposts:
    #
    # * [PutObject][6]
    #
    # * [GetBucket][7]
    #
    # * [DeleteBucket][8]
    #
    # * [CreateAccessPoint][9]
    #
    # * [PutAccessPointPolicy][10]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_CreateBucket.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/BucketRestrictions.html#bucketnamingrules
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OnOutpostsRestrictionsLimitations.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html#API_control_CreateBucket_Examples
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html
    # [7]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html
    # [8]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html
    # [9]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html
    # [10]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html
    #
    # @option params [String] :acl
    #   The canned ACL to apply to the bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [required, String] :bucket
    #   The name of the bucket.
    #
    # @option params [Types::CreateBucketConfiguration] :create_bucket_configuration
    #   The configuration information for the bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [String] :grant_full_control
    #   Allows grantee the read, write, read ACP, and write ACP permissions on
    #   the bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [String] :grant_read
    #   Allows grantee to list the objects in the bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [String] :grant_read_acp
    #   Allows grantee to read the bucket ACL.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [String] :grant_write
    #   Allows grantee to create, overwrite, and delete any object in the
    #   bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [String] :grant_write_acp
    #   Allows grantee to write the ACL for the applicable bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [Boolean] :object_lock_enabled_for_bucket
    #   Specifies whether you want S3 Object Lock to be enabled for the new
    #   bucket.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [String] :outpost_id
    #   The ID of the Outposts where the bucket is being created.
    #
    #   <note markdown="1"> This ID is required by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @return [Types::CreateBucketResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBucketResult#location #location} => String
    #   * {Types::CreateBucketResult#bucket_arn #bucket_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bucket({
    #     acl: "private", # accepts private, public-read, public-read-write, authenticated-read
    #     bucket: "BucketName", # required
    #     create_bucket_configuration: {
    #       location_constraint: "EU", # accepts EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1
    #     },
    #     grant_full_control: "GrantFullControl",
    #     grant_read: "GrantRead",
    #     grant_read_acp: "GrantReadACP",
    #     grant_write: "GrantWrite",
    #     grant_write_acp: "GrantWriteACP",
    #     object_lock_enabled_for_bucket: false,
    #     outpost_id: "NonEmptyMaxLength64String",
    #   })
    #
    # @example Response structure
    #
    #   resp.location #=> String
    #   resp.bucket_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateBucket AWS API Documentation
    #
    # @overload create_bucket(params = {})
    # @param [Hash] params ({})
    def create_bucket(params = {}, options = {})
      req = build_request(:create_bucket, params)
      req.send_request(options)
    end

    # You can use S3 Batch Operations to perform large-scale batch actions
    # on Amazon S3 objects. Batch Operations can run a single action on
    # lists of Amazon S3 objects that you specify. For more information, see
    # [S3 Batch Operations][1] in the *Amazon S3 User Guide*.
    #
    # This action creates a S3 Batch Operations job.
    #
    #
    #
    # Related actions include:
    #
    # * [DescribeJob][2]
    #
    # * [ListJobs][3]
    #
    # * [UpdateJobPriority][4]
    #
    # * [UpdateJobStatus][5]
    #
    # * [JobOperation][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID that creates the job.
    #
    # @option params [Boolean] :confirmation_required
    #   Indicates whether confirmation is required before Amazon S3 runs the
    #   job. Confirmation is only required for jobs created through the Amazon
    #   S3 console.
    #
    # @option params [required, Types::JobOperation] :operation
    #   The action that you want this job to perform on every object listed in
    #   the manifest. For more information about the available actions, see
    #   [Operations][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-actions.html
    #
    # @option params [required, Types::JobReport] :report
    #   Configuration parameters for the optional job-completion report.
    #
    # @option params [required, String] :client_request_token
    #   An idempotency token to ensure that you don't accidentally submit the
    #   same request twice. You can use any string up to the maximum length.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::JobManifest] :manifest
    #   Configuration parameters for the manifest.
    #
    # @option params [String] :description
    #   A description for this job. You can use any string within the
    #   permitted length. Descriptions don't need to be unique and can be
    #   used for multiple jobs.
    #
    # @option params [required, Integer] :priority
    #   The numerical priority for this job. Higher numbers indicate higher
    #   priority.
    #
    # @option params [required, String] :role_arn
    #   The Amazon Resource Name (ARN) for the Identity and Access Management
    #   (IAM) role that Batch Operations will use to run this job's action on
    #   every object in the manifest.
    #
    # @option params [Array<Types::S3Tag>] :tags
    #   A set of tags to associate with the S3 Batch Operations job. This is
    #   an optional parameter.
    #
    # @option params [Types::JobManifestGenerator] :manifest_generator
    #   The attribute container for the ManifestGenerator details. Jobs must
    #   be created with either a manifest file or a ManifestGenerator, but not
    #   both.
    #
    # @return [Types::CreateJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResult#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     account_id: "AccountId",
    #     confirmation_required: false,
    #     operation: { # required
    #       lambda_invoke: {
    #         function_arn: "FunctionArnString",
    #       },
    #       s3_put_object_copy: {
    #         target_resource: "S3BucketArnString",
    #         canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #         access_control_grants: [
    #           {
    #             grantee: {
    #               type_identifier: "id", # accepts id, emailAddress, uri
    #               identifier: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String",
    #             },
    #             permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #           },
    #         ],
    #         metadata_directive: "COPY", # accepts COPY, REPLACE
    #         modified_since_constraint: Time.now,
    #         new_object_metadata: {
    #           cache_control: "NonEmptyMaxLength1024String",
    #           content_disposition: "NonEmptyMaxLength1024String",
    #           content_encoding: "NonEmptyMaxLength1024String",
    #           content_language: "NonEmptyMaxLength1024String",
    #           user_metadata: {
    #             "NonEmptyMaxLength1024String" => "MaxLength1024String",
    #           },
    #           content_length: 1,
    #           content_md5: "NonEmptyMaxLength1024String",
    #           content_type: "NonEmptyMaxLength1024String",
    #           http_expires_date: Time.now,
    #           requester_charged: false,
    #           sse_algorithm: "AES256", # accepts AES256, KMS
    #         },
    #         new_object_tagging: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #         ],
    #         redirect_location: "NonEmptyMaxLength2048String",
    #         requester_pays: false,
    #         storage_class: "STANDARD", # accepts STANDARD, STANDARD_IA, ONEZONE_IA, GLACIER, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR
    #         un_modified_since_constraint: Time.now,
    #         sse_aws_kms_key_id: "KmsKeyArnString",
    #         target_key_prefix: "NonEmptyMaxLength1024String",
    #         object_lock_legal_hold_status: "OFF", # accepts OFF, ON
    #         object_lock_mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #         object_lock_retain_until_date: Time.now,
    #         bucket_key_enabled: false,
    #         checksum_algorithm: "CRC32", # accepts CRC32, CRC32C, SHA1, SHA256
    #       },
    #       s3_put_object_acl: {
    #         access_control_policy: {
    #           access_control_list: {
    #             owner: { # required
    #               id: "NonEmptyMaxLength1024String",
    #               display_name: "NonEmptyMaxLength1024String",
    #             },
    #             grants: [
    #               {
    #                 grantee: {
    #                   type_identifier: "id", # accepts id, emailAddress, uri
    #                   identifier: "NonEmptyMaxLength1024String",
    #                   display_name: "NonEmptyMaxLength1024String",
    #                 },
    #                 permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE, READ_ACP, WRITE_ACP
    #               },
    #             ],
    #           },
    #           canned_access_control_list: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #         },
    #       },
    #       s3_put_object_tagging: {
    #         tag_set: [
    #           {
    #             key: "TagKeyString", # required
    #             value: "TagValueString", # required
    #           },
    #         ],
    #       },
    #       s3_delete_object_tagging: {
    #       },
    #       s3_initiate_restore_object: {
    #         expiration_in_days: 1,
    #         glacier_job_tier: "BULK", # accepts BULK, STANDARD
    #       },
    #       s3_put_object_legal_hold: {
    #         legal_hold: { # required
    #           status: "OFF", # required, accepts OFF, ON
    #         },
    #       },
    #       s3_put_object_retention: {
    #         bypass_governance_retention: false,
    #         retention: { # required
    #           retain_until_date: Time.now,
    #           mode: "COMPLIANCE", # accepts COMPLIANCE, GOVERNANCE
    #         },
    #       },
    #       s3_replicate_object: {
    #       },
    #     },
    #     report: { # required
    #       bucket: "S3BucketArnString",
    #       format: "Report_CSV_20180820", # accepts Report_CSV_20180820
    #       enabled: false, # required
    #       prefix: "ReportPrefixString",
    #       report_scope: "AllTasks", # accepts AllTasks, FailedTasksOnly
    #     },
    #     client_request_token: "NonEmptyMaxLength64String", # required
    #     manifest: {
    #       spec: { # required
    #         format: "S3BatchOperations_CSV_20180820", # required, accepts S3BatchOperations_CSV_20180820, S3InventoryReport_CSV_20161130
    #         fields: ["Ignore"], # accepts Ignore, Bucket, Key, VersionId
    #       },
    #       location: { # required
    #         object_arn: "S3KeyArnString", # required
    #         object_version_id: "S3ObjectVersionId",
    #         etag: "NonEmptyMaxLength1024String", # required
    #       },
    #     },
    #     description: "NonEmptyMaxLength256String",
    #     priority: 1, # required
    #     role_arn: "IAMRoleArn", # required
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       },
    #     ],
    #     manifest_generator: {
    #       s3_job_manifest_generator: {
    #         expected_bucket_owner: "AccountId",
    #         source_bucket: "S3BucketArnString", # required
    #         manifest_output_location: {
    #           expected_manifest_bucket_owner: "AccountId",
    #           bucket: "S3BucketArnString", # required
    #           manifest_prefix: "ManifestPrefixString",
    #           manifest_encryption: {
    #             sses3: {
    #             },
    #             ssekms: {
    #               key_id: "KmsKeyArnString", # required
    #             },
    #           },
    #           manifest_format: "S3InventoryReport_CSV_20211130", # required, accepts S3InventoryReport_CSV_20211130
    #         },
    #         filter: {
    #           eligible_for_replication: false,
    #           created_after: Time.now,
    #           created_before: Time.now,
    #           object_replication_statuses: ["COMPLETED"], # accepts COMPLETED, FAILED, REPLICA, NONE
    #         },
    #         enable_manifest_output: false, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Creates a Multi-Region Access Point and associates it with the
    # specified buckets. For more information about creating Multi-Region
    # Access Points, see [Creating Multi-Region Access Points][1] in the
    # *Amazon S3 User Guide*.
    #
    # This action will always be routed to the US West (Oregon) Region. For
    # more information about the restrictions around managing Multi-Region
    # Access Points, see [Managing Multi-Region Access Points][2] in the
    # *Amazon S3 User Guide*.
    #
    # This request is asynchronous, meaning that you might receive a
    # response before the command has completed. When this request provides
    # a response, it provides a token that you can use to monitor the status
    # of the request with `DescribeMultiRegionAccessPointOperation`.
    #
    # The following actions are related to `CreateMultiRegionAccessPoint`:
    #
    # * [DeleteMultiRegionAccessPoint][3]
    #
    # * [DescribeMultiRegionAccessPointOperation][4]
    #
    # * [GetMultiRegionAccessPoint][5]
    #
    # * [ListMultiRegionAccessPoints][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point. The owner of the Multi-Region Access Point also must own
    #   the underlying buckets.
    #
    # @option params [required, String] :client_token
    #   An idempotency token used to identify the request and guarantee that
    #   requests are unique.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::CreateMultiRegionAccessPointInput] :details
    #   A container element containing details about the Multi-Region Access
    #   Point.
    #
    # @return [Types::CreateMultiRegionAccessPointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateMultiRegionAccessPointResult#request_token_arn #request_token_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multi_region_access_point({
    #     account_id: "AccountId",
    #     client_token: "MultiRegionAccessPointClientToken", # required
    #     details: { # required
    #       name: "MultiRegionAccessPointName", # required
    #       public_access_block: {
    #         block_public_acls: false,
    #         ignore_public_acls: false,
    #         block_public_policy: false,
    #         restrict_public_buckets: false,
    #       },
    #       regions: [ # required
    #         {
    #           bucket: "BucketName", # required
    #           bucket_account_id: "AccountId",
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_token_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/CreateMultiRegionAccessPoint AWS API Documentation
    #
    # @overload create_multi_region_access_point(params = {})
    # @param [Hash] params ({})
    def create_multi_region_access_point(params = {}, options = {})
      req = build_request(:create_multi_region_access_point, params)
      req.send_request(options)
    end

    # Deletes the specified access point.
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][1] section.
    #
    # The following actions are related to `DeleteAccessPoint`:
    #
    # * [CreateAccessPoint][2]
    #
    # * [GetAccessPoint][3]
    #
    # * [ListAccessPoints][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the account that owns the
    #   specified access point.
    #
    # @option params [required, String] :name
    #   The name of the access point you want to delete.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point({
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteAccessPoint AWS API Documentation
    #
    # @overload delete_access_point(params = {})
    # @param [Hash] params ({})
    def delete_access_point(params = {}, options = {})
      req = build_request(:delete_access_point, params)
      req.send_request(options)
    end

    # Deletes the specified Object Lambda Access Point.
    #
    # The following actions are related to
    # `DeleteAccessPointForObjectLambda`:
    #
    # * [CreateAccessPointForObjectLambda][1]
    #
    # * [GetAccessPointForObjectLambda][2]
    #
    # * [ListAccessPointsForObjectLambda][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the access point you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteAccessPointForObjectLambda AWS API Documentation
    #
    # @overload delete_access_point_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def delete_access_point_for_object_lambda(params = {}, options = {})
      req = build_request(:delete_access_point_for_object_lambda, params)
      req.send_request(options)
    end

    # Deletes the access point policy for the specified access point.
    #
    #
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][1] section.
    #
    # The following actions are related to `DeleteAccessPointPolicy`:
    #
    # * [PutAccessPointPolicy][2]
    #
    # * [GetAccessPointPolicy][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html#API_control_DeleteAccessPointPolicy_Examples
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified access point.
    #
    # @option params [required, String] :name
    #   The name of the access point whose policy you want to delete.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point_policy({
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteAccessPointPolicy AWS API Documentation
    #
    # @overload delete_access_point_policy(params = {})
    # @param [Hash] params ({})
    def delete_access_point_policy(params = {}, options = {})
      req = build_request(:delete_access_point_policy, params)
      req.send_request(options)
    end

    # Removes the resource policy for an Object Lambda Access Point.
    #
    # The following actions are related to
    # `DeleteAccessPointPolicyForObjectLambda`:
    #
    # * [GetAccessPointPolicyForObjectLambda][1]
    #
    # * [PutAccessPointPolicyForObjectLambda][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the Object Lambda Access Point you want to delete the
    #   policy for.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point_policy_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteAccessPointPolicyForObjectLambda AWS API Documentation
    #
    # @overload delete_access_point_policy_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def delete_access_point_policy_for_object_lambda(params = {}, options = {})
      req = build_request(:delete_access_point_policy_for_object_lambda, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action deletes an Amazon S3 on Outposts bucket. To delete an S3
    # bucket, see [DeleteBucket][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Deletes the Amazon S3 on Outposts bucket. All objects (including all
    # object versions and delete markers) in the bucket must be deleted
    # before the bucket itself can be deleted. For more information, see
    # [Using Amazon S3 on Outposts][2] in *Amazon S3 User Guide*.
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][3] section.
    #
    # **Related Resources**
    #
    # * [CreateBucket][4]
    #
    # * [GetBucket][5]
    #
    # * [DeleteObject][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucket.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html#API_control_DeleteBucket_Examples
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteObject.html
    #
    # @option params [String] :account_id
    #   The account ID that owns the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   Specifies the bucket being deleted.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucket AWS API Documentation
    #
    # @overload delete_bucket(params = {})
    # @param [Hash] params ({})
    def delete_bucket(params = {}, options = {})
      req = build_request(:delete_bucket, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action deletes an Amazon S3 on Outposts bucket's lifecycle
    # configuration. To delete an S3 bucket's lifecycle configuration, see
    # [DeleteBucketLifecycle][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Deletes the lifecycle configuration from the specified Outposts
    # bucket. Amazon S3 on Outposts removes all the lifecycle configuration
    # rules in the lifecycle subresource associated with the bucket. Your
    # objects never expire, and Amazon S3 on Outposts no longer
    # automatically deletes any objects on the basis of rules contained in
    # the deleted lifecycle configuration. For more information, see [Using
    # Amazon S3 on Outposts][2] in *Amazon S3 User Guide*.
    #
    # To use this action, you must have permission to perform the
    # `s3-outposts:DeleteLifecycleConfiguration` action. By default, the
    # bucket owner has this permission and the Outposts bucket owner can
    # grant this permission to others.
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][3] section.
    #
    # For more information about object expiration, see [Elements to
    # Describe Lifecycle Actions][4].
    #
    # Related actions include:
    #
    # * [PutBucketLifecycleConfiguration][5]
    #
    # * [GetBucketLifecycleConfiguration][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketLifecycle.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html#API_control_DeleteBucketLifecycleConfiguration_Examples
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/dev/intro-lifecycle-rules.html#intro-lifecycle-rules-actions
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html
    #
    # @option params [String] :account_id
    #   The account ID of the lifecycle configuration to delete.
    #
    # @option params [required, String] :bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_lifecycle_configuration({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketLifecycleConfiguration AWS API Documentation
    #
    # @overload delete_bucket_lifecycle_configuration(params = {})
    # @param [Hash] params ({})
    def delete_bucket_lifecycle_configuration(params = {}, options = {})
      req = build_request(:delete_bucket_lifecycle_configuration, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action deletes an Amazon S3 on Outposts bucket policy. To delete
    # an S3 bucket policy, see [DeleteBucketPolicy][1] in the *Amazon S3 API
    # Reference*.
    #
    #  </note>
    #
    # This implementation of the DELETE action uses the policy subresource
    # to delete the policy of a specified Amazon S3 on Outposts bucket. If
    # you are using an identity other than the root user of the Amazon Web
    # Services account that owns the bucket, the calling identity must have
    # the `s3-outposts:DeleteBucketPolicy` permissions on the specified
    # Outposts bucket and belong to the bucket owner's account to use this
    # action. For more information, see [Using Amazon S3 on Outposts][2] in
    # *Amazon S3 User Guide*.
    #
    # If you don't have `DeleteBucketPolicy` permissions, Amazon S3 returns
    # a `403 Access Denied` error. If you have the correct permissions, but
    # you're not using an identity that belongs to the bucket owner's
    # account, Amazon S3 returns a `405 Method Not Allowed` error.
    #
    # As a security precaution, the root user of the Amazon Web Services
    # account that owns a bucket can always use this action, even if the
    # policy explicitly denies the root user the ability to perform this
    # action.
    #
    # For more information about bucket policies, see [Using Bucket Policies
    # and User Policies][3].
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][4] section.
    #
    # The following actions are related to `DeleteBucketPolicy`:
    #
    # * [GetBucketPolicy][5]
    #
    # * [PutBucketPolicy][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketPolicy.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html#API_control_DeleteBucketPolicy_Examples
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html
    #
    # @option params [String] :account_id
    #   The account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_policy({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketPolicy AWS API Documentation
    #
    # @overload delete_bucket_policy(params = {})
    # @param [Hash] params ({})
    def delete_bucket_policy(params = {}, options = {})
      req = build_request(:delete_bucket_policy, params)
      req.send_request(options)
    end

    # <note markdown="1"> This operation deletes an Amazon S3 on Outposts bucket's replication
    # configuration. To delete an S3 bucket's replication configuration,
    # see [DeleteBucketReplication][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Deletes the replication configuration from the specified S3 on
    # Outposts bucket.
    #
    # To use this operation, you must have permissions to perform the
    # `s3-outposts:PutReplicationConfiguration` action. The Outposts bucket
    # owner has this permission by default and can grant it to others. For
    # more information about permissions, see [Setting up IAM with S3 on
    # Outposts][2] and [Managing access to S3 on Outposts buckets][3] in the
    # *Amazon S3 User Guide*.
    #
    # <note markdown="1"> It can take a while to propagate `PUT` or `DELETE` requests for a
    # replication configuration to all S3 on Outposts systems. Therefore,
    # the replication configuration that's returned by a `GET` request soon
    # after a `PUT` or `DELETE` request might return a more recent result
    # than what's on the Outpost. If an Outpost is offline, the delay in
    # updating the replication configuration on that Outpost can be
    # significant.
    #
    #  </note>
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][4] section.
    #
    # For information about S3 replication on Outposts configuration, see
    # [Replicating objects for S3 on Outposts][5] in the *Amazon S3 User
    # Guide*.
    #
    # The following operations are related to `DeleteBucketReplication`:
    #
    # * [PutBucketReplication][6]
    #
    # * [GetBucketReplication][7]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketReplication.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html#API_control_DeleteBucketReplication_Examples
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html
    # [7]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket to delete
    #   the replication configuration for.
    #
    # @option params [required, String] :bucket
    #   Specifies the S3 on Outposts bucket to delete the replication
    #   configuration for.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_replication({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketReplication AWS API Documentation
    #
    # @overload delete_bucket_replication(params = {})
    # @param [Hash] params ({})
    def delete_bucket_replication(params = {}, options = {})
      req = build_request(:delete_bucket_replication, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action deletes an Amazon S3 on Outposts bucket's tags. To delete
    # an S3 bucket tags, see [DeleteBucketTagging][1] in the *Amazon S3 API
    # Reference*.
    #
    #  </note>
    #
    # Deletes the tags from the Outposts bucket. For more information, see
    # [Using Amazon S3 on Outposts][2] in *Amazon S3 User Guide*.
    #
    # To use this action, you must have permission to perform the
    # `PutBucketTagging` action. By default, the bucket owner has this
    # permission and can grant this permission to others.
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][3] section.
    #
    # The following actions are related to `DeleteBucketTagging`:
    #
    # * [GetBucketTagging][4]
    #
    # * [PutBucketTagging][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_DeleteBucketTagging.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html#API_control_DeleteBucketTagging_Examples
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket tag set to
    #   be removed.
    #
    # @option params [required, String] :bucket
    #   The bucket ARN that has the tag set to be removed.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bucket_tagging({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteBucketTagging AWS API Documentation
    #
    # @overload delete_bucket_tagging(params = {})
    # @param [Hash] params ({})
    def delete_bucket_tagging(params = {}, options = {})
      req = build_request(:delete_bucket_tagging, params)
      req.send_request(options)
    end

    # Removes the entire tag set from the specified S3 Batch Operations job.
    # To use the `DeleteJobTagging` operation, you must have permission to
    # perform the `s3:DeleteJobTagging` action. For more information, see
    # [Controlling access and labeling jobs using tags][1] in the *Amazon S3
    # User Guide*.
    #
    #
    #
    # Related actions include:
    #
    # * [CreateJob][2]
    #
    # * [GetJobTagging][3]
    #
    # * [PutJobTagging][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
    #
    # @option params [required, String] :job_id
    #   The ID for the S3 Batch Operations job whose tags you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job_tagging({
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteJobTagging AWS API Documentation
    #
    # @overload delete_job_tagging(params = {})
    # @param [Hash] params ({})
    def delete_job_tagging(params = {}, options = {})
      req = build_request(:delete_job_tagging, params)
      req.send_request(options)
    end

    # Deletes a Multi-Region Access Point. This action does not delete the
    # buckets associated with the Multi-Region Access Point, only the
    # Multi-Region Access Point itself.
    #
    # This action will always be routed to the US West (Oregon) Region. For
    # more information about the restrictions around managing Multi-Region
    # Access Points, see [Managing Multi-Region Access Points][1] in the
    # *Amazon S3 User Guide*.
    #
    # This request is asynchronous, meaning that you might receive a
    # response before the command has completed. When this request provides
    # a response, it provides a token that you can use to monitor the status
    # of the request with `DescribeMultiRegionAccessPointOperation`.
    #
    # The following actions are related to `DeleteMultiRegionAccessPoint`:
    #
    # * [CreateMultiRegionAccessPoint][2]
    #
    # * [DescribeMultiRegionAccessPointOperation][3]
    #
    # * [GetMultiRegionAccessPoint][4]
    #
    # * [ListMultiRegionAccessPoints][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [required, String] :client_token
    #   An idempotency token used to identify the request and guarantee that
    #   requests are unique.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::DeleteMultiRegionAccessPointInput] :details
    #   A container element containing details about the Multi-Region Access
    #   Point.
    #
    # @return [Types::DeleteMultiRegionAccessPointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteMultiRegionAccessPointResult#request_token_arn #request_token_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_multi_region_access_point({
    #     account_id: "AccountId",
    #     client_token: "MultiRegionAccessPointClientToken", # required
    #     details: { # required
    #       name: "MultiRegionAccessPointName", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_token_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteMultiRegionAccessPoint AWS API Documentation
    #
    # @overload delete_multi_region_access_point(params = {})
    # @param [Hash] params ({})
    def delete_multi_region_access_point(params = {}, options = {})
      req = build_request(:delete_multi_region_access_point, params)
      req.send_request(options)
    end

    # Removes the `PublicAccessBlock` configuration for an Amazon Web
    # Services account. For more information, see [ Using Amazon S3 block
    # public access][1].
    #
    # Related actions include:
    #
    # * [GetPublicAccessBlock][2]
    #
    # * [PutPublicAccessBlock][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html
    #
    # @option params [String] :account_id
    #   The account ID for the Amazon Web Services account whose
    #   `PublicAccessBlock` configuration you want to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_public_access_block({
    #     account_id: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeletePublicAccessBlock AWS API Documentation
    #
    # @overload delete_public_access_block(params = {})
    # @param [Hash] params ({})
    def delete_public_access_block(params = {}, options = {})
      req = build_request(:delete_public_access_block, params)
      req.send_request(options)
    end

    # Deletes the Amazon S3 Storage Lens configuration. For more information
    # about S3 Storage Lens, see [Assessing your storage activity and usage
    # with Amazon S3 Storage Lens ][1] in the *Amazon S3 User Guide*.
    #
    # <note markdown="1"> To use this action, you must have permission to perform the
    # `s3:DeleteStorageLensConfiguration` action. For more information, see
    # [Setting permissions to use Amazon S3 Storage Lens][2] in the *Amazon
    # S3 User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
    #
    # @option params [required, String] :config_id
    #   The ID of the S3 Storage Lens configuration.
    #
    # @option params [String] :account_id
    #   The account ID of the requester.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_storage_lens_configuration({
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteStorageLensConfiguration AWS API Documentation
    #
    # @overload delete_storage_lens_configuration(params = {})
    # @param [Hash] params ({})
    def delete_storage_lens_configuration(params = {}, options = {})
      req = build_request(:delete_storage_lens_configuration, params)
      req.send_request(options)
    end

    # Deletes the Amazon S3 Storage Lens configuration tags. For more
    # information about S3 Storage Lens, see [Assessing your storage
    # activity and usage with Amazon S3 Storage Lens ][1] in the *Amazon S3
    # User Guide*.
    #
    # <note markdown="1"> To use this action, you must have permission to perform the
    # `s3:DeleteStorageLensConfigurationTagging` action. For more
    # information, see [Setting permissions to use Amazon S3 Storage
    # Lens][2] in the *Amazon S3 User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
    #
    # @option params [required, String] :config_id
    #   The ID of the S3 Storage Lens configuration.
    #
    # @option params [String] :account_id
    #   The account ID of the requester.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_storage_lens_configuration_tagging({
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DeleteStorageLensConfigurationTagging AWS API Documentation
    #
    # @overload delete_storage_lens_configuration_tagging(params = {})
    # @param [Hash] params ({})
    def delete_storage_lens_configuration_tagging(params = {}, options = {})
      req = build_request(:delete_storage_lens_configuration_tagging, params)
      req.send_request(options)
    end

    # Retrieves the configuration parameters and status for a Batch
    # Operations job. For more information, see [S3 Batch Operations][1] in
    # the *Amazon S3 User Guide*.
    #
    #
    #
    # Related actions include:
    #
    # * [CreateJob][2]
    #
    # * [ListJobs][3]
    #
    # * [UpdateJobPriority][4]
    #
    # * [UpdateJobStatus][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
    #
    # @option params [required, String] :job_id
    #   The ID for the job whose information you want to retrieve.
    #
    # @return [Types::DescribeJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobResult#job #job} => Types::JobDescriptor
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job({
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.job_id #=> String
    #   resp.job.confirmation_required #=> Boolean
    #   resp.job.description #=> String
    #   resp.job.job_arn #=> String
    #   resp.job.status #=> String, one of "Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"
    #   resp.job.manifest.spec.format #=> String, one of "S3BatchOperations_CSV_20180820", "S3InventoryReport_CSV_20161130"
    #   resp.job.manifest.spec.fields #=> Array
    #   resp.job.manifest.spec.fields[0] #=> String, one of "Ignore", "Bucket", "Key", "VersionId"
    #   resp.job.manifest.location.object_arn #=> String
    #   resp.job.manifest.location.object_version_id #=> String
    #   resp.job.manifest.location.etag #=> String
    #   resp.job.operation.lambda_invoke.function_arn #=> String
    #   resp.job.operation.s3_put_object_copy.target_resource #=> String
    #   resp.job.operation.s3_put_object_copy.canned_access_control_list #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"
    #   resp.job.operation.s3_put_object_copy.access_control_grants #=> Array
    #   resp.job.operation.s3_put_object_copy.access_control_grants[0].grantee.type_identifier #=> String, one of "id", "emailAddress", "uri"
    #   resp.job.operation.s3_put_object_copy.access_control_grants[0].grantee.identifier #=> String
    #   resp.job.operation.s3_put_object_copy.access_control_grants[0].grantee.display_name #=> String
    #   resp.job.operation.s3_put_object_copy.access_control_grants[0].permission #=> String, one of "FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"
    #   resp.job.operation.s3_put_object_copy.metadata_directive #=> String, one of "COPY", "REPLACE"
    #   resp.job.operation.s3_put_object_copy.modified_since_constraint #=> Time
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.cache_control #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_disposition #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_encoding #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_language #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.user_metadata #=> Hash
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.user_metadata["NonEmptyMaxLength1024String"] #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_length #=> Integer
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_md5 #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.content_type #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.http_expires_date #=> Time
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.requester_charged #=> Boolean
    #   resp.job.operation.s3_put_object_copy.new_object_metadata.sse_algorithm #=> String, one of "AES256", "KMS"
    #   resp.job.operation.s3_put_object_copy.new_object_tagging #=> Array
    #   resp.job.operation.s3_put_object_copy.new_object_tagging[0].key #=> String
    #   resp.job.operation.s3_put_object_copy.new_object_tagging[0].value #=> String
    #   resp.job.operation.s3_put_object_copy.redirect_location #=> String
    #   resp.job.operation.s3_put_object_copy.requester_pays #=> Boolean
    #   resp.job.operation.s3_put_object_copy.storage_class #=> String, one of "STANDARD", "STANDARD_IA", "ONEZONE_IA", "GLACIER", "INTELLIGENT_TIERING", "DEEP_ARCHIVE", "GLACIER_IR"
    #   resp.job.operation.s3_put_object_copy.un_modified_since_constraint #=> Time
    #   resp.job.operation.s3_put_object_copy.sse_aws_kms_key_id #=> String
    #   resp.job.operation.s3_put_object_copy.target_key_prefix #=> String
    #   resp.job.operation.s3_put_object_copy.object_lock_legal_hold_status #=> String, one of "OFF", "ON"
    #   resp.job.operation.s3_put_object_copy.object_lock_mode #=> String, one of "COMPLIANCE", "GOVERNANCE"
    #   resp.job.operation.s3_put_object_copy.object_lock_retain_until_date #=> Time
    #   resp.job.operation.s3_put_object_copy.bucket_key_enabled #=> Boolean
    #   resp.job.operation.s3_put_object_copy.checksum_algorithm #=> String, one of "CRC32", "CRC32C", "SHA1", "SHA256"
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.owner.id #=> String
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.owner.display_name #=> String
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants #=> Array
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants[0].grantee.type_identifier #=> String, one of "id", "emailAddress", "uri"
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants[0].grantee.identifier #=> String
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants[0].grantee.display_name #=> String
    #   resp.job.operation.s3_put_object_acl.access_control_policy.access_control_list.grants[0].permission #=> String, one of "FULL_CONTROL", "READ", "WRITE", "READ_ACP", "WRITE_ACP"
    #   resp.job.operation.s3_put_object_acl.access_control_policy.canned_access_control_list #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"
    #   resp.job.operation.s3_put_object_tagging.tag_set #=> Array
    #   resp.job.operation.s3_put_object_tagging.tag_set[0].key #=> String
    #   resp.job.operation.s3_put_object_tagging.tag_set[0].value #=> String
    #   resp.job.operation.s3_initiate_restore_object.expiration_in_days #=> Integer
    #   resp.job.operation.s3_initiate_restore_object.glacier_job_tier #=> String, one of "BULK", "STANDARD"
    #   resp.job.operation.s3_put_object_legal_hold.legal_hold.status #=> String, one of "OFF", "ON"
    #   resp.job.operation.s3_put_object_retention.bypass_governance_retention #=> Boolean
    #   resp.job.operation.s3_put_object_retention.retention.retain_until_date #=> Time
    #   resp.job.operation.s3_put_object_retention.retention.mode #=> String, one of "COMPLIANCE", "GOVERNANCE"
    #   resp.job.priority #=> Integer
    #   resp.job.progress_summary.total_number_of_tasks #=> Integer
    #   resp.job.progress_summary.number_of_tasks_succeeded #=> Integer
    #   resp.job.progress_summary.number_of_tasks_failed #=> Integer
    #   resp.job.progress_summary.timers.elapsed_time_in_active_seconds #=> Integer
    #   resp.job.status_update_reason #=> String
    #   resp.job.failure_reasons #=> Array
    #   resp.job.failure_reasons[0].failure_code #=> String
    #   resp.job.failure_reasons[0].failure_reason #=> String
    #   resp.job.report.bucket #=> String
    #   resp.job.report.format #=> String, one of "Report_CSV_20180820"
    #   resp.job.report.enabled #=> Boolean
    #   resp.job.report.prefix #=> String
    #   resp.job.report.report_scope #=> String, one of "AllTasks", "FailedTasksOnly"
    #   resp.job.creation_time #=> Time
    #   resp.job.termination_date #=> Time
    #   resp.job.role_arn #=> String
    #   resp.job.suspended_date #=> Time
    #   resp.job.suspended_cause #=> String
    #   resp.job.manifest_generator.s3_job_manifest_generator.expected_bucket_owner #=> String
    #   resp.job.manifest_generator.s3_job_manifest_generator.source_bucket #=> String
    #   resp.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.expected_manifest_bucket_owner #=> String
    #   resp.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.bucket #=> String
    #   resp.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_prefix #=> String
    #   resp.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_encryption.ssekms.key_id #=> String
    #   resp.job.manifest_generator.s3_job_manifest_generator.manifest_output_location.manifest_format #=> String, one of "S3InventoryReport_CSV_20211130"
    #   resp.job.manifest_generator.s3_job_manifest_generator.filter.eligible_for_replication #=> Boolean
    #   resp.job.manifest_generator.s3_job_manifest_generator.filter.created_after #=> Time
    #   resp.job.manifest_generator.s3_job_manifest_generator.filter.created_before #=> Time
    #   resp.job.manifest_generator.s3_job_manifest_generator.filter.object_replication_statuses #=> Array
    #   resp.job.manifest_generator.s3_job_manifest_generator.filter.object_replication_statuses[0] #=> String, one of "COMPLETED", "FAILED", "REPLICA", "NONE"
    #   resp.job.manifest_generator.s3_job_manifest_generator.enable_manifest_output #=> Boolean
    #   resp.job.generated_manifest_descriptor.format #=> String, one of "S3InventoryReport_CSV_20211130"
    #   resp.job.generated_manifest_descriptor.location.object_arn #=> String
    #   resp.job.generated_manifest_descriptor.location.object_version_id #=> String
    #   resp.job.generated_manifest_descriptor.location.etag #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DescribeJob AWS API Documentation
    #
    # @overload describe_job(params = {})
    # @param [Hash] params ({})
    def describe_job(params = {}, options = {})
      req = build_request(:describe_job, params)
      req.send_request(options)
    end

    # Retrieves the status of an asynchronous request to manage a
    # Multi-Region Access Point. For more information about managing
    # Multi-Region Access Points and how asynchronous requests work, see
    # [Managing Multi-Region Access Points][1] in the *Amazon S3 User
    # Guide*.
    #
    # The following actions are related to `GetMultiRegionAccessPoint`:
    #
    # * [CreateMultiRegionAccessPoint][2]
    #
    # * [DeleteMultiRegionAccessPoint][3]
    #
    # * [GetMultiRegionAccessPoint][4]
    #
    # * [ListMultiRegionAccessPoints][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [required, String] :request_token_arn
    #   The request token associated with the request you want to know about.
    #   This request token is returned as part of the response when you make
    #   an asynchronous request. You provide this token to query about the
    #   status of the asynchronous action.
    #
    # @return [Types::DescribeMultiRegionAccessPointOperationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMultiRegionAccessPointOperationResult#async_operation #async_operation} => Types::AsyncOperation
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_multi_region_access_point_operation({
    #     account_id: "AccountId",
    #     request_token_arn: "AsyncRequestTokenARN", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.async_operation.creation_time #=> Time
    #   resp.async_operation.operation #=> String, one of "CreateMultiRegionAccessPoint", "DeleteMultiRegionAccessPoint", "PutMultiRegionAccessPointPolicy"
    #   resp.async_operation.request_token_arn #=> String
    #   resp.async_operation.request_parameters.create_multi_region_access_point_request.name #=> String
    #   resp.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block.block_public_acls #=> Boolean
    #   resp.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block.ignore_public_acls #=> Boolean
    #   resp.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block.block_public_policy #=> Boolean
    #   resp.async_operation.request_parameters.create_multi_region_access_point_request.public_access_block.restrict_public_buckets #=> Boolean
    #   resp.async_operation.request_parameters.create_multi_region_access_point_request.regions #=> Array
    #   resp.async_operation.request_parameters.create_multi_region_access_point_request.regions[0].bucket #=> String
    #   resp.async_operation.request_parameters.create_multi_region_access_point_request.regions[0].bucket_account_id #=> String
    #   resp.async_operation.request_parameters.delete_multi_region_access_point_request.name #=> String
    #   resp.async_operation.request_parameters.put_multi_region_access_point_policy_request.name #=> String
    #   resp.async_operation.request_parameters.put_multi_region_access_point_policy_request.policy #=> String
    #   resp.async_operation.request_status #=> String
    #   resp.async_operation.response_details.multi_region_access_point_details.regions #=> Array
    #   resp.async_operation.response_details.multi_region_access_point_details.regions[0].name #=> String
    #   resp.async_operation.response_details.multi_region_access_point_details.regions[0].request_status #=> String
    #   resp.async_operation.response_details.error_details.code #=> String
    #   resp.async_operation.response_details.error_details.message #=> String
    #   resp.async_operation.response_details.error_details.resource #=> String
    #   resp.async_operation.response_details.error_details.request_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/DescribeMultiRegionAccessPointOperation AWS API Documentation
    #
    # @overload describe_multi_region_access_point_operation(params = {})
    # @param [Hash] params ({})
    def describe_multi_region_access_point_operation(params = {}, options = {})
      req = build_request(:describe_multi_region_access_point_operation, params)
      req.send_request(options)
    end

    # Returns configuration information about the specified access point.
    #
    #
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][1] section.
    #
    # The following actions are related to `GetAccessPoint`:
    #
    # * [CreateAccessPoint][2]
    #
    # * [DeleteAccessPoint][3]
    #
    # * [ListAccessPoints][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPoints.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the account that owns the
    #   specified access point.
    #
    # @option params [required, String] :name
    #   The name of the access point whose configuration information you want
    #   to retrieve.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #
    # @return [Types::GetAccessPointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPointResult#name #name} => String
    #   * {Types::GetAccessPointResult#bucket #bucket} => String
    #   * {Types::GetAccessPointResult#network_origin #network_origin} => String
    #   * {Types::GetAccessPointResult#vpc_configuration #vpc_configuration} => Types::VpcConfiguration
    #   * {Types::GetAccessPointResult#public_access_block_configuration #public_access_block_configuration} => Types::PublicAccessBlockConfiguration
    #   * {Types::GetAccessPointResult#creation_date #creation_date} => Time
    #   * {Types::GetAccessPointResult#alias #alias} => String
    #   * {Types::GetAccessPointResult#access_point_arn #access_point_arn} => String
    #   * {Types::GetAccessPointResult#endpoints #endpoints} => Hash&lt;String,String&gt;
    #   * {Types::GetAccessPointResult#bucket_account_id #bucket_account_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point({
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.bucket #=> String
    #   resp.network_origin #=> String, one of "Internet", "VPC"
    #   resp.vpc_configuration.vpc_id #=> String
    #   resp.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #   resp.creation_date #=> Time
    #   resp.alias #=> String
    #   resp.access_point_arn #=> String
    #   resp.endpoints #=> Hash
    #   resp.endpoints["NonEmptyMaxLength64String"] #=> String
    #   resp.bucket_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPoint AWS API Documentation
    #
    # @overload get_access_point(params = {})
    # @param [Hash] params ({})
    def get_access_point(params = {}, options = {})
      req = build_request(:get_access_point, params)
      req.send_request(options)
    end

    # Returns configuration for an Object Lambda Access Point.
    #
    # The following actions are related to
    # `GetAccessPointConfigurationForObjectLambda`:
    #
    # * [PutAccessPointConfigurationForObjectLambda][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointConfigurationForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the Object Lambda Access Point you want to return the
    #   configuration for.
    #
    # @return [Types::GetAccessPointConfigurationForObjectLambdaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPointConfigurationForObjectLambdaResult#configuration #configuration} => Types::ObjectLambdaConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_configuration_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.configuration.supporting_access_point #=> String
    #   resp.configuration.cloud_watch_metrics_enabled #=> Boolean
    #   resp.configuration.allowed_features #=> Array
    #   resp.configuration.allowed_features[0] #=> String, one of "GetObject-Range", "GetObject-PartNumber", "HeadObject-Range", "HeadObject-PartNumber"
    #   resp.configuration.transformation_configurations #=> Array
    #   resp.configuration.transformation_configurations[0].actions #=> Array
    #   resp.configuration.transformation_configurations[0].actions[0] #=> String, one of "GetObject", "HeadObject", "ListObjects", "ListObjectsV2"
    #   resp.configuration.transformation_configurations[0].content_transformation.aws_lambda.function_arn #=> String
    #   resp.configuration.transformation_configurations[0].content_transformation.aws_lambda.function_payload #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointConfigurationForObjectLambda AWS API Documentation
    #
    # @overload get_access_point_configuration_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def get_access_point_configuration_for_object_lambda(params = {}, options = {})
      req = build_request(:get_access_point_configuration_for_object_lambda, params)
      req.send_request(options)
    end

    # Returns configuration information about the specified Object Lambda
    # Access Point
    #
    # The following actions are related to `GetAccessPointForObjectLambda`:
    #
    # * [CreateAccessPointForObjectLambda][1]
    #
    # * [DeleteAccessPointForObjectLambda][2]
    #
    # * [ListAccessPointsForObjectLambda][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListAccessPointsForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the Object Lambda Access Point.
    #
    # @return [Types::GetAccessPointForObjectLambdaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPointForObjectLambdaResult#name #name} => String
    #   * {Types::GetAccessPointForObjectLambdaResult#public_access_block_configuration #public_access_block_configuration} => Types::PublicAccessBlockConfiguration
    #   * {Types::GetAccessPointForObjectLambdaResult#creation_date #creation_date} => Time
    #   * {Types::GetAccessPointForObjectLambdaResult#alias #alias} => Types::ObjectLambdaAccessPointAlias
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #   resp.creation_date #=> Time
    #   resp.alias.value #=> String
    #   resp.alias.status #=> String, one of "PROVISIONING", "READY"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointForObjectLambda AWS API Documentation
    #
    # @overload get_access_point_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def get_access_point_for_object_lambda(params = {}, options = {})
      req = build_request(:get_access_point_for_object_lambda, params)
      req.send_request(options)
    end

    # Returns the access point policy associated with the specified access
    # point.
    #
    # The following actions are related to `GetAccessPointPolicy`:
    #
    # * [PutAccessPointPolicy][1]
    #
    # * [DeleteAccessPointPolicy][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified access point.
    #
    # @option params [required, String] :name
    #   The name of the access point whose policy you want to retrieve.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #
    # @return [Types::GetAccessPointPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPointPolicyResult#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_policy({
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicy AWS API Documentation
    #
    # @overload get_access_point_policy(params = {})
    # @param [Hash] params ({})
    def get_access_point_policy(params = {}, options = {})
      req = build_request(:get_access_point_policy, params)
      req.send_request(options)
    end

    # Returns the resource policy for an Object Lambda Access Point.
    #
    # The following actions are related to
    # `GetAccessPointPolicyForObjectLambda`:
    #
    # * [DeleteAccessPointPolicyForObjectLambda][1]
    #
    # * [PutAccessPointPolicyForObjectLambda][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicyForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the Object Lambda Access Point.
    #
    # @return [Types::GetAccessPointPolicyForObjectLambdaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPointPolicyForObjectLambdaResult#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_policy_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyForObjectLambda AWS API Documentation
    #
    # @overload get_access_point_policy_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def get_access_point_policy_for_object_lambda(params = {}, options = {})
      req = build_request(:get_access_point_policy_for_object_lambda, params)
      req.send_request(options)
    end

    # Indicates whether the specified access point currently has a policy
    # that allows public access. For more information about public access
    # through access points, see [Managing Data Access with Amazon S3 access
    # points][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified access point.
    #
    # @option params [required, String] :name
    #   The name of the access point whose policy status you want to retrieve.
    #
    # @return [Types::GetAccessPointPolicyStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPointPolicyStatusResult#policy_status #policy_status} => Types::PolicyStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_policy_status({
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_status.is_public #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyStatus AWS API Documentation
    #
    # @overload get_access_point_policy_status(params = {})
    # @param [Hash] params ({})
    def get_access_point_policy_status(params = {}, options = {})
      req = build_request(:get_access_point_policy_status, params)
      req.send_request(options)
    end

    # Returns the status of the resource policy associated with an Object
    # Lambda Access Point.
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the Object Lambda Access Point.
    #
    # @return [Types::GetAccessPointPolicyStatusForObjectLambdaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessPointPolicyStatusForObjectLambdaResult#policy_status #policy_status} => Types::PolicyStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_point_policy_status_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_status.is_public #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetAccessPointPolicyStatusForObjectLambda AWS API Documentation
    #
    # @overload get_access_point_policy_status_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def get_access_point_policy_status_for_object_lambda(params = {}, options = {})
      req = build_request(:get_access_point_policy_status_for_object_lambda, params)
      req.send_request(options)
    end

    # Gets an Amazon S3 on Outposts bucket. For more information, see [
    # Using Amazon S3 on Outposts][1] in the *Amazon S3 User Guide*.
    #
    # If you are using an identity other than the root user of the Amazon
    # Web Services account that owns the Outposts bucket, the calling
    # identity must have the `s3-outposts:GetBucket` permissions on the
    # specified Outposts bucket and belong to the Outposts bucket owner's
    # account in order to use this action. Only users from Outposts bucket
    # owner account with the right permissions can perform actions on an
    # Outposts bucket.
    #
    # If you don't have `s3-outposts:GetBucket` permissions or you're not
    # using an identity that belongs to the bucket owner's account, Amazon
    # S3 returns a `403 Access Denied` error.
    #
    # The following actions are related to `GetBucket` for Amazon S3 on
    # Outposts:
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][2] section.
    #
    # * [PutObject][3]
    #
    # * [CreateBucket][4]
    #
    # * [DeleteBucket][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucket.html#API_control_GetBucket_Examples
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutObject.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateBucket.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucket.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Types::GetBucketResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBucketResult#bucket #bucket} => String
    #   * {Types::GetBucketResult#public_access_block_enabled #public_access_block_enabled} => Boolean
    #   * {Types::GetBucketResult#creation_date #creation_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.bucket #=> String
    #   resp.public_access_block_enabled #=> Boolean
    #   resp.creation_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucket AWS API Documentation
    #
    # @overload get_bucket(params = {})
    # @param [Hash] params ({})
    def get_bucket(params = {}, options = {})
      req = build_request(:get_bucket, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action gets an Amazon S3 on Outposts bucket's lifecycle
    # configuration. To get an S3 bucket's lifecycle configuration, see
    # [GetBucketLifecycleConfiguration][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Returns the lifecycle configuration information set on the Outposts
    # bucket. For more information, see [Using Amazon S3 on Outposts][2] and
    # for information about lifecycle configuration, see [ Object Lifecycle
    # Management][3] in *Amazon S3 User Guide*.
    #
    # To use this action, you must have permission to perform the
    # `s3-outposts:GetLifecycleConfiguration` action. The Outposts bucket
    # owner has this permission, by default. The bucket owner can grant this
    # permission to others. For more information about permissions, see
    # [Permissions Related to Bucket Subresource Operations][4] and
    # [Managing Access Permissions to Your Amazon S3 Resources][5].
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][6] section.
    #
    # `GetBucketLifecycleConfiguration` has the following special error:
    #
    # * Error code: `NoSuchLifecycleConfiguration`
    #
    #   * Description: The lifecycle configuration does not exist.
    #
    #   * HTTP Status Code: 404 Not Found
    #
    #   * SOAP Fault Code Prefix: Client
    #
    # The following actions are related to
    # `GetBucketLifecycleConfiguration`:
    #
    # * [PutBucketLifecycleConfiguration][7]
    #
    # * [DeleteBucketLifecycleConfiguration][8]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketLifecycleConfiguration.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html#API_control_GetBucketLifecycleConfiguration_Examples
    # [7]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html
    # [8]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   The Amazon Resource Name (ARN) of the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Types::GetBucketLifecycleConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBucketLifecycleConfigurationResult#rules #rules} => Array&lt;Types::LifecycleRule&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_lifecycle_configuration({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].expiration.date #=> Time
    #   resp.rules[0].expiration.days #=> Integer
    #   resp.rules[0].expiration.expired_object_delete_marker #=> Boolean
    #   resp.rules[0].id #=> String
    #   resp.rules[0].filter.prefix #=> String
    #   resp.rules[0].filter.tag.key #=> String
    #   resp.rules[0].filter.tag.value #=> String
    #   resp.rules[0].filter.and.prefix #=> String
    #   resp.rules[0].filter.and.tags #=> Array
    #   resp.rules[0].filter.and.tags[0].key #=> String
    #   resp.rules[0].filter.and.tags[0].value #=> String
    #   resp.rules[0].filter.and.object_size_greater_than #=> Integer
    #   resp.rules[0].filter.and.object_size_less_than #=> Integer
    #   resp.rules[0].filter.object_size_greater_than #=> Integer
    #   resp.rules[0].filter.object_size_less_than #=> Integer
    #   resp.rules[0].status #=> String, one of "Enabled", "Disabled"
    #   resp.rules[0].transitions #=> Array
    #   resp.rules[0].transitions[0].date #=> Time
    #   resp.rules[0].transitions[0].days #=> Integer
    #   resp.rules[0].transitions[0].storage_class #=> String, one of "GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"
    #   resp.rules[0].noncurrent_version_transitions #=> Array
    #   resp.rules[0].noncurrent_version_transitions[0].noncurrent_days #=> Integer
    #   resp.rules[0].noncurrent_version_transitions[0].storage_class #=> String, one of "GLACIER", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "DEEP_ARCHIVE"
    #   resp.rules[0].noncurrent_version_expiration.noncurrent_days #=> Integer
    #   resp.rules[0].noncurrent_version_expiration.newer_noncurrent_versions #=> Integer
    #   resp.rules[0].abort_incomplete_multipart_upload.days_after_initiation #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketLifecycleConfiguration AWS API Documentation
    #
    # @overload get_bucket_lifecycle_configuration(params = {})
    # @param [Hash] params ({})
    def get_bucket_lifecycle_configuration(params = {}, options = {})
      req = build_request(:get_bucket_lifecycle_configuration, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action gets a bucket policy for an Amazon S3 on Outposts bucket.
    # To get a policy for an S3 bucket, see [GetBucketPolicy][1] in the
    # *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Returns the policy of a specified Outposts bucket. For more
    # information, see [Using Amazon S3 on Outposts][2] in the *Amazon S3
    # User Guide*.
    #
    # If you are using an identity other than the root user of the Amazon
    # Web Services account that owns the bucket, the calling identity must
    # have the `GetBucketPolicy` permissions on the specified bucket and
    # belong to the bucket owner's account in order to use this action.
    #
    # Only users from Outposts bucket owner account with the right
    # permissions can perform actions on an Outposts bucket. If you don't
    # have `s3-outposts:GetBucketPolicy` permissions or you're not using an
    # identity that belongs to the bucket owner's account, Amazon S3
    # returns a `403 Access Denied` error.
    #
    # As a security precaution, the root user of the Amazon Web Services
    # account that owns a bucket can always use this action, even if the
    # policy explicitly denies the root user the ability to perform this
    # action.
    #
    # For more information about bucket policies, see [Using Bucket Policies
    # and User Policies][3].
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][4] section.
    #
    # The following actions are related to `GetBucketPolicy`:
    #
    # * [GetObject][5]
    #
    # * [PutBucketPolicy][6]
    #
    # * [DeleteBucketPolicy][7]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketPolicy.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html#API_control_GetBucketPolicy_Examples
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html
    # [7]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Types::GetBucketPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBucketPolicyResult#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_policy({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketPolicy AWS API Documentation
    #
    # @overload get_bucket_policy(params = {})
    # @param [Hash] params ({})
    def get_bucket_policy(params = {}, options = {})
      req = build_request(:get_bucket_policy, params)
      req.send_request(options)
    end

    # <note markdown="1"> This operation gets an Amazon S3 on Outposts bucket's replication
    # configuration. To get an S3 bucket's replication configuration, see
    # [GetBucketReplication][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Returns the replication configuration of an S3 on Outposts bucket. For
    # more information about S3 on Outposts, see [Using Amazon S3 on
    # Outposts][2] in the *Amazon S3 User Guide*. For information about S3
    # replication on Outposts configuration, see [Replicating objects for S3
    # on Outposts][3] in the *Amazon S3 User Guide*.
    #
    # <note markdown="1"> It can take a while to propagate `PUT` or `DELETE` requests for a
    # replication configuration to all S3 on Outposts systems. Therefore,
    # the replication configuration that's returned by a `GET` request soon
    # after a `PUT` or `DELETE` request might return a more recent result
    # than what's on the Outpost. If an Outpost is offline, the delay in
    # updating the replication configuration on that Outpost can be
    # significant.
    #
    #  </note>
    #
    # This action requires permissions for the
    # `s3-outposts:GetReplicationConfiguration` action. The Outposts bucket
    # owner has this permission by default and can grant it to others. For
    # more information about permissions, see [Setting up IAM with S3 on
    # Outposts][4] and [Managing access to S3 on Outposts bucket][5] in the
    # *Amazon S3 User Guide*.
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][6] section.
    #
    # If you include the `Filter` element in a replication configuration,
    # you must also include the `DeleteMarkerReplication`, `Status`, and
    # `Priority` elements. The response also returns those elements.
    #
    # For information about S3 on Outposts replication failure reasons, see
    # [Replication failure reasons][7] in the *Amazon S3 User Guide*.
    #
    # The following operations are related to `GetBucketReplication`:
    #
    # * [PutBucketReplication][8]
    #
    # * [DeleteBucketReplication][9]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketReplication.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html#API_control_GetBucketReplication_Examples
    # [7]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes
    # [8]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html
    # [9]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   Specifies the bucket to get the replication information for.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Types::GetBucketReplicationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBucketReplicationResult#replication_configuration #replication_configuration} => Types::ReplicationConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_replication({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_configuration.role #=> String
    #   resp.replication_configuration.rules #=> Array
    #   resp.replication_configuration.rules[0].id #=> String
    #   resp.replication_configuration.rules[0].priority #=> Integer
    #   resp.replication_configuration.rules[0].prefix #=> String
    #   resp.replication_configuration.rules[0].filter.prefix #=> String
    #   resp.replication_configuration.rules[0].filter.tag.key #=> String
    #   resp.replication_configuration.rules[0].filter.tag.value #=> String
    #   resp.replication_configuration.rules[0].filter.and.prefix #=> String
    #   resp.replication_configuration.rules[0].filter.and.tags #=> Array
    #   resp.replication_configuration.rules[0].filter.and.tags[0].key #=> String
    #   resp.replication_configuration.rules[0].filter.and.tags[0].value #=> String
    #   resp.replication_configuration.rules[0].status #=> String, one of "Enabled", "Disabled"
    #   resp.replication_configuration.rules[0].source_selection_criteria.sse_kms_encrypted_objects.status #=> String, one of "Enabled", "Disabled"
    #   resp.replication_configuration.rules[0].source_selection_criteria.replica_modifications.status #=> String, one of "Enabled", "Disabled"
    #   resp.replication_configuration.rules[0].existing_object_replication.status #=> String, one of "Enabled", "Disabled"
    #   resp.replication_configuration.rules[0].destination.account #=> String
    #   resp.replication_configuration.rules[0].destination.bucket #=> String
    #   resp.replication_configuration.rules[0].destination.replication_time.status #=> String, one of "Enabled", "Disabled"
    #   resp.replication_configuration.rules[0].destination.replication_time.time.minutes #=> Integer
    #   resp.replication_configuration.rules[0].destination.access_control_translation.owner #=> String, one of "Destination"
    #   resp.replication_configuration.rules[0].destination.encryption_configuration.replica_kms_key_id #=> String
    #   resp.replication_configuration.rules[0].destination.metrics.status #=> String, one of "Enabled", "Disabled"
    #   resp.replication_configuration.rules[0].destination.metrics.event_threshold.minutes #=> Integer
    #   resp.replication_configuration.rules[0].destination.storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS", "GLACIER_IR"
    #   resp.replication_configuration.rules[0].delete_marker_replication.status #=> String, one of "Enabled", "Disabled"
    #   resp.replication_configuration.rules[0].bucket #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketReplication AWS API Documentation
    #
    # @overload get_bucket_replication(params = {})
    # @param [Hash] params ({})
    def get_bucket_replication(params = {}, options = {})
      req = build_request(:get_bucket_replication, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action gets an Amazon S3 on Outposts bucket's tags. To get an S3
    # bucket tags, see [GetBucketTagging][1] in the *Amazon S3 API
    # Reference*.
    #
    #  </note>
    #
    # Returns the tag set associated with the Outposts bucket. For more
    # information, see [Using Amazon S3 on Outposts][2] in the *Amazon S3
    # User Guide*.
    #
    # To use this action, you must have permission to perform the
    # `GetBucketTagging` action. By default, the bucket owner has this
    # permission and can grant this permission to others.
    #
    # `GetBucketTagging` has the following special error:
    #
    # * Error code: `NoSuchTagSetError`
    #
    #   * Description: There is no tag set associated with the bucket.
    #
    #   ^
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][3] section.
    #
    # The following actions are related to `GetBucketTagging`:
    #
    # * [PutBucketTagging][4]
    #
    # * [DeleteBucketTagging][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketTagging.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html#API_control_GetBucketTagging_Examples
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @return [Types::GetBucketTaggingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBucketTaggingResult#tag_set #tag_set} => Array&lt;Types::S3Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_tagging({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_set #=> Array
    #   resp.tag_set[0].key #=> String
    #   resp.tag_set[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketTagging AWS API Documentation
    #
    # @overload get_bucket_tagging(params = {})
    # @param [Hash] params ({})
    def get_bucket_tagging(params = {}, options = {})
      req = build_request(:get_bucket_tagging, params)
      req.send_request(options)
    end

    # <note markdown="1"> This operation returns the versioning state for S3 on Outposts buckets
    # only. To return the versioning state for an S3 bucket, see
    # [GetBucketVersioning][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Returns the versioning state for an S3 on Outposts bucket. With S3
    # Versioning, you can save multiple distinct copies of your objects and
    # recover from unintended user actions and application failures.
    #
    # If you've never set versioning on your bucket, it has no versioning
    # state. In that case, the `GetBucketVersioning` request does not return
    # a versioning state value.
    #
    # For more information about versioning, see [Versioning][2] in the
    # *Amazon S3 User Guide*.
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][3] section.
    #
    # The following operations are related to `GetBucketVersioning` for S3
    # on Outposts.
    #
    # * [PutBucketVersioning][4]
    #
    # * [PutBucketLifecycleConfiguration][5]
    #
    # * [GetBucketLifecycleConfiguration][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetBucketVersioning.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html#API_control_GetBucketVersioning_Examples
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the S3 on Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   The S3 on Outposts bucket to return the versioning state for.
    #
    # @return [Types::GetBucketVersioningResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBucketVersioningResult#status #status} => String
    #   * {Types::GetBucketVersioningResult#mfa_delete #mfa_delete} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bucket_versioning({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "Enabled", "Suspended"
    #   resp.mfa_delete #=> String, one of "Enabled", "Disabled"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetBucketVersioning AWS API Documentation
    #
    # @overload get_bucket_versioning(params = {})
    # @param [Hash] params ({})
    def get_bucket_versioning(params = {}, options = {})
      req = build_request(:get_bucket_versioning, params)
      req.send_request(options)
    end

    # Returns the tags on an S3 Batch Operations job. To use the
    # `GetJobTagging` operation, you must have permission to perform the
    # `s3:GetJobTagging` action. For more information, see [Controlling
    # access and labeling jobs using tags][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    # Related actions include:
    #
    # * [CreateJob][2]
    #
    # * [PutJobTagging][3]
    #
    # * [DeleteJobTagging][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutJobTagging.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
    #
    # @option params [required, String] :job_id
    #   The ID for the S3 Batch Operations job whose tags you want to
    #   retrieve.
    #
    # @return [Types::GetJobTaggingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobTaggingResult#tags #tags} => Array&lt;Types::S3Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_tagging({
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetJobTagging AWS API Documentation
    #
    # @overload get_job_tagging(params = {})
    # @param [Hash] params ({})
    def get_job_tagging(params = {}, options = {})
      req = build_request(:get_job_tagging, params)
      req.send_request(options)
    end

    # Returns configuration information about the specified Multi-Region
    # Access Point.
    #
    # This action will always be routed to the US West (Oregon) Region. For
    # more information about the restrictions around managing Multi-Region
    # Access Points, see [Managing Multi-Region Access Points][1] in the
    # *Amazon S3 User Guide*.
    #
    # The following actions are related to `GetMultiRegionAccessPoint`:
    #
    # * [CreateMultiRegionAccessPoint][2]
    #
    # * [DeleteMultiRegionAccessPoint][3]
    #
    # * [DescribeMultiRegionAccessPointOperation][4]
    #
    # * [ListMultiRegionAccessPoints][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListMultiRegionAccessPoints.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the Multi-Region Access Point whose configuration
    #   information you want to receive. The name of the Multi-Region Access
    #   Point is different from the alias. For more information about the
    #   distinction between the name and the alias of an Multi-Region Access
    #   Point, see [Managing Multi-Region Access Points][1] in the *Amazon S3
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming
    #
    # @return [Types::GetMultiRegionAccessPointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMultiRegionAccessPointResult#access_point #access_point} => Types::MultiRegionAccessPointReport
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multi_region_access_point({
    #     account_id: "AccountId",
    #     name: "MultiRegionAccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.access_point.name #=> String
    #   resp.access_point.alias #=> String
    #   resp.access_point.created_at #=> Time
    #   resp.access_point.public_access_block.block_public_acls #=> Boolean
    #   resp.access_point.public_access_block.ignore_public_acls #=> Boolean
    #   resp.access_point.public_access_block.block_public_policy #=> Boolean
    #   resp.access_point.public_access_block.restrict_public_buckets #=> Boolean
    #   resp.access_point.status #=> String, one of "READY", "INCONSISTENT_ACROSS_REGIONS", "CREATING", "PARTIALLY_CREATED", "PARTIALLY_DELETED", "DELETING"
    #   resp.access_point.regions #=> Array
    #   resp.access_point.regions[0].bucket #=> String
    #   resp.access_point.regions[0].region #=> String
    #   resp.access_point.regions[0].bucket_account_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPoint AWS API Documentation
    #
    # @overload get_multi_region_access_point(params = {})
    # @param [Hash] params ({})
    def get_multi_region_access_point(params = {}, options = {})
      req = build_request(:get_multi_region_access_point, params)
      req.send_request(options)
    end

    # Returns the access control policy of the specified Multi-Region Access
    # Point.
    #
    # This action will always be routed to the US West (Oregon) Region. For
    # more information about the restrictions around managing Multi-Region
    # Access Points, see [Managing Multi-Region Access Points][1] in the
    # *Amazon S3 User Guide*.
    #
    # The following actions are related to
    # `GetMultiRegionAccessPointPolicy`:
    #
    # * [GetMultiRegionAccessPointPolicyStatus][2]
    #
    # * [PutMultiRegionAccessPointPolicy][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [required, String] :name
    #   Specifies the Multi-Region Access Point. The name of the Multi-Region
    #   Access Point is different from the alias. For more information about
    #   the distinction between the name and the alias of an Multi-Region
    #   Access Point, see [Managing Multi-Region Access Points][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming
    #
    # @return [Types::GetMultiRegionAccessPointPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMultiRegionAccessPointPolicyResult#policy #policy} => Types::MultiRegionAccessPointPolicyDocument
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multi_region_access_point_policy({
    #     account_id: "AccountId",
    #     name: "MultiRegionAccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.established.policy #=> String
    #   resp.policy.proposed.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointPolicy AWS API Documentation
    #
    # @overload get_multi_region_access_point_policy(params = {})
    # @param [Hash] params ({})
    def get_multi_region_access_point_policy(params = {}, options = {})
      req = build_request(:get_multi_region_access_point_policy, params)
      req.send_request(options)
    end

    # Indicates whether the specified Multi-Region Access Point has an
    # access control policy that allows public access.
    #
    # This action will always be routed to the US West (Oregon) Region. For
    # more information about the restrictions around managing Multi-Region
    # Access Points, see [Managing Multi-Region Access Points][1] in the
    # *Amazon S3 User Guide*.
    #
    # The following actions are related to
    # `GetMultiRegionAccessPointPolicyStatus`:
    #
    # * [GetMultiRegionAccessPointPolicy][2]
    #
    # * [PutMultiRegionAccessPointPolicy][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutMultiRegionAccessPointPolicy.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [required, String] :name
    #   Specifies the Multi-Region Access Point. The name of the Multi-Region
    #   Access Point is different from the alias. For more information about
    #   the distinction between the name and the alias of an Multi-Region
    #   Access Point, see [Managing Multi-Region Access Points][1] in the
    #   *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming
    #
    # @return [Types::GetMultiRegionAccessPointPolicyStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMultiRegionAccessPointPolicyStatusResult#established #established} => Types::PolicyStatus
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multi_region_access_point_policy_status({
    #     account_id: "AccountId",
    #     name: "MultiRegionAccessPointName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.established.is_public #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointPolicyStatus AWS API Documentation
    #
    # @overload get_multi_region_access_point_policy_status(params = {})
    # @param [Hash] params ({})
    def get_multi_region_access_point_policy_status(params = {}, options = {})
      req = build_request(:get_multi_region_access_point_policy_status, params)
      req.send_request(options)
    end

    # Returns the routing configuration for a Multi-Region Access Point,
    # indicating which Regions are active or passive.
    #
    # To obtain routing control changes and failover requests, use the
    # Amazon S3 failover control infrastructure endpoints in these five
    # Amazon Web Services Regions:
    #
    # * `us-east-1`
    #
    # * `us-west-2`
    #
    # * `ap-southeast-2`
    #
    # * `ap-northeast-1`
    #
    # * `eu-west-1`
    #
    # <note markdown="1"> Your Amazon S3 bucket does not need to be in these five Regions.
    #
    #  </note>
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [required, String] :mrap
    #   The Multi-Region Access Point ARN.
    #
    # @return [Types::GetMultiRegionAccessPointRoutesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMultiRegionAccessPointRoutesResult#mrap #mrap} => String
    #   * {Types::GetMultiRegionAccessPointRoutesResult#routes #routes} => Array&lt;Types::MultiRegionAccessPointRoute&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multi_region_access_point_routes({
    #     account_id: "AccountId",
    #     mrap: "MultiRegionAccessPointId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mrap #=> String
    #   resp.routes #=> Array
    #   resp.routes[0].bucket #=> String
    #   resp.routes[0].region #=> String
    #   resp.routes[0].traffic_dial_percentage #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetMultiRegionAccessPointRoutes AWS API Documentation
    #
    # @overload get_multi_region_access_point_routes(params = {})
    # @param [Hash] params ({})
    def get_multi_region_access_point_routes(params = {}, options = {})
      req = build_request(:get_multi_region_access_point_routes, params)
      req.send_request(options)
    end

    # Retrieves the `PublicAccessBlock` configuration for an Amazon Web
    # Services account. For more information, see [ Using Amazon S3 block
    # public access][1].
    #
    # Related actions include:
    #
    # * [DeletePublicAccessBlock][2]
    #
    # * [PutPublicAccessBlock][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutPublicAccessBlock.html
    #
    # @option params [String] :account_id
    #   The account ID for the Amazon Web Services account whose
    #   `PublicAccessBlock` configuration you want to retrieve.
    #
    # @return [Types::GetPublicAccessBlockOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPublicAccessBlockOutput#public_access_block_configuration #public_access_block_configuration} => Types::PublicAccessBlockConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_public_access_block({
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.public_access_block_configuration.block_public_acls #=> Boolean
    #   resp.public_access_block_configuration.ignore_public_acls #=> Boolean
    #   resp.public_access_block_configuration.block_public_policy #=> Boolean
    #   resp.public_access_block_configuration.restrict_public_buckets #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetPublicAccessBlock AWS API Documentation
    #
    # @overload get_public_access_block(params = {})
    # @param [Hash] params ({})
    def get_public_access_block(params = {}, options = {})
      req = build_request(:get_public_access_block, params)
      req.send_request(options)
    end

    # Gets the Amazon S3 Storage Lens configuration. For more information,
    # see [Assessing your storage activity and usage with Amazon S3 Storage
    # Lens ][1] in the *Amazon S3 User Guide*. For a complete list of S3
    # Storage Lens metrics, see [S3 Storage Lens metrics glossary][2] in the
    # *Amazon S3 User Guide*.
    #
    # <note markdown="1"> To use this action, you must have permission to perform the
    # `s3:GetStorageLensConfiguration` action. For more information, see
    # [Setting permissions to use Amazon S3 Storage Lens][3] in the *Amazon
    # S3 User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
    #
    # @option params [required, String] :config_id
    #   The ID of the Amazon S3 Storage Lens configuration.
    #
    # @option params [String] :account_id
    #   The account ID of the requester.
    #
    # @return [Types::GetStorageLensConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStorageLensConfigurationResult#storage_lens_configuration #storage_lens_configuration} => Types::StorageLensConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_storage_lens_configuration({
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.storage_lens_configuration.id #=> String
    #   resp.storage_lens_configuration.account_level.activity_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.account_level.bucket_level.activity_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.selection_criteria.delimiter #=> String
    #   resp.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.selection_criteria.max_depth #=> Integer
    #   resp.storage_lens_configuration.account_level.bucket_level.prefix_level.storage_metrics.selection_criteria.min_storage_bytes_percentage #=> Float
    #   resp.storage_lens_configuration.account_level.bucket_level.advanced_cost_optimization_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.account_level.bucket_level.advanced_data_protection_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.account_level.bucket_level.detailed_status_codes_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.account_level.advanced_cost_optimization_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.account_level.advanced_data_protection_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.account_level.detailed_status_codes_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.include.buckets #=> Array
    #   resp.storage_lens_configuration.include.buckets[0] #=> String
    #   resp.storage_lens_configuration.include.regions #=> Array
    #   resp.storage_lens_configuration.include.regions[0] #=> String
    #   resp.storage_lens_configuration.exclude.buckets #=> Array
    #   resp.storage_lens_configuration.exclude.buckets[0] #=> String
    #   resp.storage_lens_configuration.exclude.regions #=> Array
    #   resp.storage_lens_configuration.exclude.regions[0] #=> String
    #   resp.storage_lens_configuration.data_export.s3_bucket_destination.format #=> String, one of "CSV", "Parquet"
    #   resp.storage_lens_configuration.data_export.s3_bucket_destination.output_schema_version #=> String, one of "V_1"
    #   resp.storage_lens_configuration.data_export.s3_bucket_destination.account_id #=> String
    #   resp.storage_lens_configuration.data_export.s3_bucket_destination.arn #=> String
    #   resp.storage_lens_configuration.data_export.s3_bucket_destination.prefix #=> String
    #   resp.storage_lens_configuration.data_export.s3_bucket_destination.encryption.ssekms.key_id #=> String
    #   resp.storage_lens_configuration.data_export.cloud_watch_metrics.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.is_enabled #=> Boolean
    #   resp.storage_lens_configuration.aws_org.arn #=> String
    #   resp.storage_lens_configuration.storage_lens_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetStorageLensConfiguration AWS API Documentation
    #
    # @overload get_storage_lens_configuration(params = {})
    # @param [Hash] params ({})
    def get_storage_lens_configuration(params = {}, options = {})
      req = build_request(:get_storage_lens_configuration, params)
      req.send_request(options)
    end

    # Gets the tags of Amazon S3 Storage Lens configuration. For more
    # information about S3 Storage Lens, see [Assessing your storage
    # activity and usage with Amazon S3 Storage Lens ][1] in the *Amazon S3
    # User Guide*.
    #
    # <note markdown="1"> To use this action, you must have permission to perform the
    # `s3:GetStorageLensConfigurationTagging` action. For more information,
    # see [Setting permissions to use Amazon S3 Storage Lens][2] in the
    # *Amazon S3 User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
    #
    # @option params [required, String] :config_id
    #   The ID of the Amazon S3 Storage Lens configuration.
    #
    # @option params [String] :account_id
    #   The account ID of the requester.
    #
    # @return [Types::GetStorageLensConfigurationTaggingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetStorageLensConfigurationTaggingResult#tags #tags} => Array&lt;Types::StorageLensTag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_storage_lens_configuration_tagging({
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId",
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/GetStorageLensConfigurationTagging AWS API Documentation
    #
    # @overload get_storage_lens_configuration_tagging(params = {})
    # @param [Hash] params ({})
    def get_storage_lens_configuration_tagging(params = {}, options = {})
      req = build_request(:get_storage_lens_configuration_tagging, params)
      req.send_request(options)
    end

    # Returns a list of the access points that are owned by the current
    # account that's associated with the specified bucket. You can retrieve
    # up to 1000 access points per call. If the specified bucket has more
    # than 1,000 access points (or the number specified in `maxResults`,
    # whichever is less), the response will include a continuation token
    # that you can use to list the additional access points.
    #
    #
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][1] section.
    #
    # The following actions are related to `ListAccessPoints`:
    #
    # * [CreateAccessPoint][2]
    #
    # * [DeleteAccessPoint][3]
    #
    # * [GetAccessPoint][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the account that owns the
    #   specified access points.
    #
    # @option params [String] :bucket
    #   The name of the bucket whose associated access points you want to
    #   list.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @option params [String] :next_token
    #   A continuation token. If a previous call to `ListAccessPoints`
    #   returned a continuation token in the `NextToken` field, then providing
    #   that value here causes Amazon S3 to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of access points that you want to include in the
    #   list. If the specified bucket has more than this number of access
    #   points, then the response will include a continuation token in the
    #   `NextToken` field that you can use to retrieve the next page of access
    #   points.
    #
    # @return [Types::ListAccessPointsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPointsResult#access_point_list #access_point_list} => Array&lt;Types::AccessPoint&gt;
    #   * {Types::ListAccessPointsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_points({
    #     account_id: "AccountId",
    #     bucket: "BucketName",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_point_list #=> Array
    #   resp.access_point_list[0].name #=> String
    #   resp.access_point_list[0].network_origin #=> String, one of "Internet", "VPC"
    #   resp.access_point_list[0].vpc_configuration.vpc_id #=> String
    #   resp.access_point_list[0].bucket #=> String
    #   resp.access_point_list[0].access_point_arn #=> String
    #   resp.access_point_list[0].alias #=> String
    #   resp.access_point_list[0].bucket_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListAccessPoints AWS API Documentation
    #
    # @overload list_access_points(params = {})
    # @param [Hash] params ({})
    def list_access_points(params = {}, options = {})
      req = build_request(:list_access_points, params)
      req.send_request(options)
    end

    # Returns some or all (up to 1,000) access points associated with the
    # Object Lambda Access Point per call. If there are more access points
    # than what can be returned in one call, the response will include a
    # continuation token that you can use to list the additional access
    # points.
    #
    # The following actions are related to
    # `ListAccessPointsForObjectLambda`:
    #
    # * [CreateAccessPointForObjectLambda][1]
    #
    # * [DeleteAccessPointForObjectLambda][2]
    #
    # * [GetAccessPointForObjectLambda][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPointForObjectLambda.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointForObjectLambda.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [String] :next_token
    #   If the list has more access points than can be returned in one call to
    #   this API, this field contains a continuation token that you can
    #   provide in subsequent calls to this API to retrieve additional access
    #   points.
    #
    # @option params [Integer] :max_results
    #   The maximum number of access points that you want to include in the
    #   list. The response may contain fewer access points but will never
    #   contain more. If there are more than this number of access points,
    #   then the response will include a continuation token in the `NextToken`
    #   field that you can use to retrieve the next page of access points.
    #
    # @return [Types::ListAccessPointsForObjectLambdaResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessPointsForObjectLambdaResult#object_lambda_access_point_list #object_lambda_access_point_list} => Array&lt;Types::ObjectLambdaAccessPoint&gt;
    #   * {Types::ListAccessPointsForObjectLambdaResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_points_for_object_lambda({
    #     account_id: "AccountId",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.object_lambda_access_point_list #=> Array
    #   resp.object_lambda_access_point_list[0].name #=> String
    #   resp.object_lambda_access_point_list[0].object_lambda_access_point_arn #=> String
    #   resp.object_lambda_access_point_list[0].alias.value #=> String
    #   resp.object_lambda_access_point_list[0].alias.status #=> String, one of "PROVISIONING", "READY"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListAccessPointsForObjectLambda AWS API Documentation
    #
    # @overload list_access_points_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def list_access_points_for_object_lambda(params = {}, options = {})
      req = build_request(:list_access_points_for_object_lambda, params)
      req.send_request(options)
    end

    # Lists current S3 Batch Operations jobs and jobs that have ended within
    # the last 30 days for the Amazon Web Services account making the
    # request. For more information, see [S3 Batch Operations][1] in the
    # *Amazon S3 User Guide*.
    #
    # Related actions include:
    #
    #
    #
    # * [CreateJob][2]
    #
    # * [DescribeJob][3]
    #
    # * [UpdateJobPriority][4]
    #
    # * [UpdateJobStatus][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobPriority.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
    #
    # @option params [Array<String>] :job_statuses
    #   The `List Jobs` request returns jobs that match the statuses listed in
    #   this element.
    #
    # @option params [String] :next_token
    #   A pagination token to request the next page of results. Use the token
    #   that Amazon S3 returned in the `NextToken` element of the
    #   `ListJobsResult` from the previous `List Jobs` request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs that Amazon S3 will include in the `List
    #   Jobs` response. If there are more jobs than this number, the response
    #   will include a pagination token in the `NextToken` field to enable you
    #   to retrieve the next page of results.
    #
    # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResult#next_token #next_token} => String
    #   * {Types::ListJobsResult#jobs #jobs} => Array&lt;Types::JobListDescriptor&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     account_id: "AccountId",
    #     job_statuses: ["Active"], # accepts Active, Cancelled, Cancelling, Complete, Completing, Failed, Failing, New, Paused, Pausing, Preparing, Ready, Suspended
    #     next_token: "StringForNextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].description #=> String
    #   resp.jobs[0].operation #=> String, one of "LambdaInvoke", "S3PutObjectCopy", "S3PutObjectAcl", "S3PutObjectTagging", "S3DeleteObjectTagging", "S3InitiateRestoreObject", "S3PutObjectLegalHold", "S3PutObjectRetention", "S3ReplicateObject"
    #   resp.jobs[0].priority #=> Integer
    #   resp.jobs[0].status #=> String, one of "Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"
    #   resp.jobs[0].creation_time #=> Time
    #   resp.jobs[0].termination_date #=> Time
    #   resp.jobs[0].progress_summary.total_number_of_tasks #=> Integer
    #   resp.jobs[0].progress_summary.number_of_tasks_succeeded #=> Integer
    #   resp.jobs[0].progress_summary.number_of_tasks_failed #=> Integer
    #   resp.jobs[0].progress_summary.timers.elapsed_time_in_active_seconds #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Returns a list of the Multi-Region Access Points currently associated
    # with the specified Amazon Web Services account. Each call can return
    # up to 100 Multi-Region Access Points, the maximum number of
    # Multi-Region Access Points that can be associated with a single
    # account.
    #
    # This action will always be routed to the US West (Oregon) Region. For
    # more information about the restrictions around managing Multi-Region
    # Access Points, see [Managing Multi-Region Access Points][1] in the
    # *Amazon S3 User Guide*.
    #
    # The following actions are related to `ListMultiRegionAccessPoint`:
    #
    # * [CreateMultiRegionAccessPoint][2]
    #
    # * [DeleteMultiRegionAccessPoint][3]
    #
    # * [DescribeMultiRegionAccessPointOperation][4]
    #
    # * [GetMultiRegionAccessPoint][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateMultiRegionAccessPoint.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteMultiRegionAccessPoint.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeMultiRegionAccessPointOperation.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPoint.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [String] :next_token
    #   Not currently used. Do not use this parameter.
    #
    # @option params [Integer] :max_results
    #   Not currently used. Do not use this parameter.
    #
    # @return [Types::ListMultiRegionAccessPointsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMultiRegionAccessPointsResult#access_points #access_points} => Array&lt;Types::MultiRegionAccessPointReport&gt;
    #   * {Types::ListMultiRegionAccessPointsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multi_region_access_points({
    #     account_id: "AccountId",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.access_points #=> Array
    #   resp.access_points[0].name #=> String
    #   resp.access_points[0].alias #=> String
    #   resp.access_points[0].created_at #=> Time
    #   resp.access_points[0].public_access_block.block_public_acls #=> Boolean
    #   resp.access_points[0].public_access_block.ignore_public_acls #=> Boolean
    #   resp.access_points[0].public_access_block.block_public_policy #=> Boolean
    #   resp.access_points[0].public_access_block.restrict_public_buckets #=> Boolean
    #   resp.access_points[0].status #=> String, one of "READY", "INCONSISTENT_ACROSS_REGIONS", "CREATING", "PARTIALLY_CREATED", "PARTIALLY_DELETED", "DELETING"
    #   resp.access_points[0].regions #=> Array
    #   resp.access_points[0].regions[0].bucket #=> String
    #   resp.access_points[0].regions[0].region #=> String
    #   resp.access_points[0].regions[0].bucket_account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListMultiRegionAccessPoints AWS API Documentation
    #
    # @overload list_multi_region_access_points(params = {})
    # @param [Hash] params ({})
    def list_multi_region_access_points(params = {}, options = {})
      req = build_request(:list_multi_region_access_points, params)
      req.send_request(options)
    end

    # Returns a list of all Outposts buckets in an Outpost that are owned by
    # the authenticated sender of the request. For more information, see
    # [Using Amazon S3 on Outposts][1] in the *Amazon S3 User Guide*.
    #
    # For an example of the request syntax for Amazon S3 on Outposts that
    # uses the S3 on Outposts endpoint hostname prefix and
    # `x-amz-outpost-id` in your request, see the [Examples][2] section.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [String] :next_token
    #
    # @option params [Integer] :max_results
    #
    # @option params [String] :outpost_id
    #   The ID of the Outposts resource.
    #
    #   <note markdown="1"> This ID is required by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @return [Types::ListRegionalBucketsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegionalBucketsResult#regional_bucket_list #regional_bucket_list} => Array&lt;Types::RegionalBucket&gt;
    #   * {Types::ListRegionalBucketsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regional_buckets({
    #     account_id: "AccountId",
    #     next_token: "NonEmptyMaxLength1024String",
    #     max_results: 1,
    #     outpost_id: "NonEmptyMaxLength64String",
    #   })
    #
    # @example Response structure
    #
    #   resp.regional_bucket_list #=> Array
    #   resp.regional_bucket_list[0].bucket #=> String
    #   resp.regional_bucket_list[0].bucket_arn #=> String
    #   resp.regional_bucket_list[0].public_access_block_enabled #=> Boolean
    #   resp.regional_bucket_list[0].creation_date #=> Time
    #   resp.regional_bucket_list[0].outpost_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListRegionalBuckets AWS API Documentation
    #
    # @overload list_regional_buckets(params = {})
    # @param [Hash] params ({})
    def list_regional_buckets(params = {}, options = {})
      req = build_request(:list_regional_buckets, params)
      req.send_request(options)
    end

    # Gets a list of Amazon S3 Storage Lens configurations. For more
    # information about S3 Storage Lens, see [Assessing your storage
    # activity and usage with Amazon S3 Storage Lens ][1] in the *Amazon S3
    # User Guide*.
    #
    # <note markdown="1"> To use this action, you must have permission to perform the
    # `s3:ListStorageLensConfigurations` action. For more information, see
    # [Setting permissions to use Amazon S3 Storage Lens][2] in the *Amazon
    # S3 User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
    #
    # @option params [String] :account_id
    #   The account ID of the requester.
    #
    # @option params [String] :next_token
    #   A pagination token to request the next page of results.
    #
    # @return [Types::ListStorageLensConfigurationsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStorageLensConfigurationsResult#next_token #next_token} => String
    #   * {Types::ListStorageLensConfigurationsResult#storage_lens_configuration_list #storage_lens_configuration_list} => Array&lt;Types::ListStorageLensConfigurationEntry&gt;
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_storage_lens_configurations({
    #     account_id: "AccountId",
    #     next_token: "ContinuationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.storage_lens_configuration_list #=> Array
    #   resp.storage_lens_configuration_list[0].id #=> String
    #   resp.storage_lens_configuration_list[0].storage_lens_arn #=> String
    #   resp.storage_lens_configuration_list[0].home_region #=> String
    #   resp.storage_lens_configuration_list[0].is_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/ListStorageLensConfigurations AWS API Documentation
    #
    # @overload list_storage_lens_configurations(params = {})
    # @param [Hash] params ({})
    def list_storage_lens_configurations(params = {}, options = {})
      req = build_request(:list_storage_lens_configurations, params)
      req.send_request(options)
    end

    # Replaces configuration for an Object Lambda Access Point.
    #
    # The following actions are related to
    # `PutAccessPointConfigurationForObjectLambda`:
    #
    # * [GetAccessPointConfigurationForObjectLambda][1]
    #
    # ^
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointConfigurationForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the Object Lambda Access Point.
    #
    # @option params [required, Types::ObjectLambdaConfiguration] :configuration
    #   Object Lambda Access Point configuration document.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_access_point_configuration_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #     configuration: { # required
    #       supporting_access_point: "ObjectLambdaSupportingAccessPointArn", # required
    #       cloud_watch_metrics_enabled: false,
    #       allowed_features: ["GetObject-Range"], # accepts GetObject-Range, GetObject-PartNumber, HeadObject-Range, HeadObject-PartNumber
    #       transformation_configurations: [ # required
    #         {
    #           actions: ["GetObject"], # required, accepts GetObject, HeadObject, ListObjects, ListObjectsV2
    #           content_transformation: { # required
    #             aws_lambda: {
    #               function_arn: "FunctionArnString", # required
    #               function_payload: "AwsLambdaTransformationPayload",
    #             },
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutAccessPointConfigurationForObjectLambda AWS API Documentation
    #
    # @overload put_access_point_configuration_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def put_access_point_configuration_for_object_lambda(params = {}, options = {})
      req = build_request(:put_access_point_configuration_for_object_lambda, params)
      req.send_request(options)
    end

    # Associates an access policy with the specified access point. Each
    # access point can have only one policy, so a request made to this API
    # replaces any existing policy associated with the specified access
    # point.
    #
    #
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][1] section.
    #
    # The following actions are related to `PutAccessPointPolicy`:
    #
    # * [GetAccessPointPolicy][2]
    #
    # * [DeleteAccessPointPolicy][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicy.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicy.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for owner of the bucket associated
    #   with the specified access point.
    #
    # @option params [required, String] :name
    #   The name of the access point that you want to associate with the
    #   specified policy.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the access point
    #   accessed in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/accesspoint/<my-accesspoint-name>`.
    #   For example, to access the access point `reports-ap` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap`.
    #   The value must be URL encoded.
    #
    # @option params [required, String] :policy
    #   The policy that you want to apply to the specified access point. For
    #   more information about access point policies, see [Managing data
    #   access with Amazon S3 access points][1] in the *Amazon S3 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_access_point_policy({
    #     account_id: "AccountId",
    #     name: "AccessPointName", # required
    #     policy: "Policy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutAccessPointPolicy AWS API Documentation
    #
    # @overload put_access_point_policy(params = {})
    # @param [Hash] params ({})
    def put_access_point_policy(params = {}, options = {})
      req = build_request(:put_access_point_policy, params)
      req.send_request(options)
    end

    # Creates or replaces resource policy for an Object Lambda Access Point.
    # For an example policy, see [Creating Object Lambda Access Points][1]
    # in the *Amazon S3 User Guide*.
    #
    # The following actions are related to
    # `PutAccessPointPolicyForObjectLambda`:
    #
    # * [DeleteAccessPointPolicyForObjectLambda][2]
    #
    # * [GetAccessPointPolicyForObjectLambda][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/olap-create.html#olap-create-cli
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPointPolicyForObjectLambda.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPointPolicyForObjectLambda.html
    #
    # @option params [String] :account_id
    #   The account ID for the account that owns the specified Object Lambda
    #   Access Point.
    #
    # @option params [required, String] :name
    #   The name of the Object Lambda Access Point.
    #
    # @option params [required, String] :policy
    #   Object Lambda Access Point resource policy document.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_access_point_policy_for_object_lambda({
    #     account_id: "AccountId",
    #     name: "ObjectLambdaAccessPointName", # required
    #     policy: "ObjectLambdaPolicy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutAccessPointPolicyForObjectLambda AWS API Documentation
    #
    # @overload put_access_point_policy_for_object_lambda(params = {})
    # @param [Hash] params ({})
    def put_access_point_policy_for_object_lambda(params = {}, options = {})
      req = build_request(:put_access_point_policy_for_object_lambda, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action puts a lifecycle configuration to an Amazon S3 on Outposts
    # bucket. To put a lifecycle configuration to an S3 bucket, see
    # [PutBucketLifecycleConfiguration][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Creates a new lifecycle configuration for the S3 on Outposts bucket or
    # replaces an existing lifecycle configuration. Outposts buckets only
    # support lifecycle configurations that delete/expire objects after a
    # certain period of time and abort incomplete multipart uploads.
    #
    #
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][2] section.
    #
    # The following actions are related to
    # `PutBucketLifecycleConfiguration`:
    #
    # * [GetBucketLifecycleConfiguration][3]
    #
    # * [DeleteBucketLifecycleConfiguration][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketLifecycleConfiguration.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html#API_control_PutBucketLifecycleConfiguration_Examples
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketLifecycleConfiguration.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   The name of the bucket for which to set the configuration.
    #
    # @option params [Types::LifecycleConfiguration] :lifecycle_configuration
    #   Container for lifecycle rules. You can add as many as 1,000 rules.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_lifecycle_configuration({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     lifecycle_configuration: {
    #       rules: [
    #         {
    #           expiration: {
    #             date: Time.now,
    #             days: 1,
    #             expired_object_delete_marker: false,
    #           },
    #           id: "ID",
    #           filter: {
    #             prefix: "Prefix",
    #             tag: {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             },
    #             and: {
    #               prefix: "Prefix",
    #               tags: [
    #                 {
    #                   key: "TagKeyString", # required
    #                   value: "TagValueString", # required
    #                 },
    #               ],
    #               object_size_greater_than: 1,
    #               object_size_less_than: 1,
    #             },
    #             object_size_greater_than: 1,
    #             object_size_less_than: 1,
    #           },
    #           status: "Enabled", # required, accepts Enabled, Disabled
    #           transitions: [
    #             {
    #               date: Time.now,
    #               days: 1,
    #               storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #             },
    #           ],
    #           noncurrent_version_transitions: [
    #             {
    #               noncurrent_days: 1,
    #               storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE
    #             },
    #           ],
    #           noncurrent_version_expiration: {
    #             noncurrent_days: 1,
    #             newer_noncurrent_versions: 1,
    #           },
    #           abort_incomplete_multipart_upload: {
    #             days_after_initiation: 1,
    #           },
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketLifecycleConfiguration AWS API Documentation
    #
    # @overload put_bucket_lifecycle_configuration(params = {})
    # @param [Hash] params ({})
    def put_bucket_lifecycle_configuration(params = {}, options = {})
      req = build_request(:put_bucket_lifecycle_configuration, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action puts a bucket policy to an Amazon S3 on Outposts bucket.
    # To put a policy on an S3 bucket, see [PutBucketPolicy][1] in the
    # *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Applies an Amazon S3 bucket policy to an Outposts bucket. For more
    # information, see [Using Amazon S3 on Outposts][2] in the *Amazon S3
    # User Guide*.
    #
    # If you are using an identity other than the root user of the Amazon
    # Web Services account that owns the Outposts bucket, the calling
    # identity must have the `PutBucketPolicy` permissions on the specified
    # Outposts bucket and belong to the bucket owner's account in order to
    # use this action.
    #
    # If you don't have `PutBucketPolicy` permissions, Amazon S3 returns a
    # `403 Access Denied` error. If you have the correct permissions, but
    # you're not using an identity that belongs to the bucket owner's
    # account, Amazon S3 returns a `405 Method Not Allowed` error.
    #
    # As a security precaution, the root user of the Amazon Web Services
    # account that owns a bucket can always use this action, even if the
    # policy explicitly denies the root user the ability to perform this
    # action.
    #
    # For more information about bucket policies, see [Using Bucket Policies
    # and User Policies][3].
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][4] section.
    #
    # The following actions are related to `PutBucketPolicy`:
    #
    # * [GetBucketPolicy][5]
    #
    # * [DeleteBucketPolicy][6]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketPolicy.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/using-iam-policies.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketPolicy.html#API_control_PutBucketPolicy_Examples
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketPolicy.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketPolicy.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   Specifies the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @option params [Boolean] :confirm_remove_self_bucket_access
    #   Set this parameter to true to confirm that you want to remove your
    #   permissions to change this bucket policy in the future.
    #
    #   <note markdown="1"> This is not supported by Amazon S3 on Outposts buckets.
    #
    #    </note>
    #
    # @option params [required, String] :policy
    #   The bucket policy as a JSON document.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_policy({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     confirm_remove_self_bucket_access: false,
    #     policy: "Policy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketPolicy AWS API Documentation
    #
    # @overload put_bucket_policy(params = {})
    # @param [Hash] params ({})
    def put_bucket_policy(params = {}, options = {})
      req = build_request(:put_bucket_policy, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action creates an Amazon S3 on Outposts bucket's replication
    # configuration. To create an S3 bucket's replication configuration,
    # see [PutBucketReplication][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Creates a replication configuration or replaces an existing one. For
    # information about S3 replication on Outposts configuration, see
    # [Replicating objects for S3 on Outposts][2] in the *Amazon S3 User
    # Guide*.
    #
    # <note markdown="1"> It can take a while to propagate `PUT` or `DELETE` requests for a
    # replication configuration to all S3 on Outposts systems. Therefore,
    # the replication configuration that's returned by a `GET` request soon
    # after a `PUT` or `DELETE` request might return a more recent result
    # than what's on the Outpost. If an Outpost is offline, the delay in
    # updating the replication configuration on that Outpost can be
    # significant.
    #
    #  </note>
    #
    # Specify the replication configuration in the request body. In the
    # replication configuration, you provide the following information:
    #
    # * The name of the destination bucket or buckets where you want S3 on
    #   Outposts to replicate objects
    #
    # * The Identity and Access Management (IAM) role that S3 on Outposts
    #   can assume to replicate objects on your behalf
    #
    # * Other relevant information, such as replication rules
    #
    # A replication configuration must include at least one rule and can
    # contain a maximum of 100. Each rule identifies a subset of objects to
    # replicate by filtering the objects in the source Outposts bucket. To
    # choose additional subsets of objects to replicate, add a rule for each
    # subset.
    #
    # To specify a subset of the objects in the source Outposts bucket to
    # apply a replication rule to, add the `Filter` element as a child of
    # the `Rule` element. You can filter objects based on an object key
    # prefix, one or more object tags, or both. When you add the `Filter`
    # element in the configuration, you must also add the following
    # elements: `DeleteMarkerReplication`, `Status`, and `Priority`.
    #
    # Using `PutBucketReplication` on Outposts requires that both the source
    # and destination buckets must have versioning enabled. For information
    # about enabling versioning on a bucket, see [Managing S3 Versioning for
    # your S3 on Outposts bucket][3].
    #
    # For information about S3 on Outposts replication failure reasons, see
    # [Replication failure reasons][4] in the *Amazon S3 User Guide*.
    #
    # **Handling Replication of Encrypted Objects**
    #
    # Outposts buckets are encrypted at all times. All the objects in the
    # source Outposts bucket are encrypted and can be replicated. Also, all
    # the replicas in the destination Outposts bucket are encrypted with the
    # same encryption key as the objects in the source Outposts bucket.
    #
    # **Permissions**
    #
    # To create a `PutBucketReplication` request, you must have
    # `s3-outposts:PutReplicationConfiguration` permissions for the bucket.
    # The Outposts bucket owner has this permission by default and can grant
    # it to others. For more information about permissions, see [Setting up
    # IAM with S3 on Outposts][5] and [Managing access to S3 on Outposts
    # buckets][6].
    #
    # <note markdown="1"> To perform this operation, the user or role must also have the
    # `iam:CreateRole` and `iam:PassRole` permissions. For more information,
    # see [Granting a user permissions to pass a role to an Amazon Web
    # Services service][7].
    #
    #  </note>
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][8] section.
    #
    # The following operations are related to `PutBucketReplication`:
    #
    # * [GetBucketReplication][9]
    #
    # * [DeleteBucketReplication][10]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketReplication.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsReplication.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsManagingVersioning.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/outposts-replication-eventbridge.html#outposts-replication-failure-codes
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsIAM.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsBucketPolicy.html
    # [7]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
    # [8]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketReplication.html#API_control_PutBucketReplication_Examples
    # [9]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketReplication.html
    # [10]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketReplication.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   Specifies the S3 on Outposts bucket to set the configuration for.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @option params [required, Types::ReplicationConfiguration] :replication_configuration
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_replication({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     replication_configuration: { # required
    #       role: "Role", # required
    #       rules: [ # required
    #         {
    #           id: "ID",
    #           priority: 1,
    #           prefix: "Prefix",
    #           filter: {
    #             prefix: "Prefix",
    #             tag: {
    #               key: "TagKeyString", # required
    #               value: "TagValueString", # required
    #             },
    #             and: {
    #               prefix: "Prefix",
    #               tags: [
    #                 {
    #                   key: "TagKeyString", # required
    #                   value: "TagValueString", # required
    #                 },
    #               ],
    #             },
    #           },
    #           status: "Enabled", # required, accepts Enabled, Disabled
    #           source_selection_criteria: {
    #             sse_kms_encrypted_objects: {
    #               status: "Enabled", # required, accepts Enabled, Disabled
    #             },
    #             replica_modifications: {
    #               status: "Enabled", # required, accepts Enabled, Disabled
    #             },
    #           },
    #           existing_object_replication: {
    #             status: "Enabled", # required, accepts Enabled, Disabled
    #           },
    #           destination: { # required
    #             account: "AccountId",
    #             bucket: "BucketIdentifierString", # required
    #             replication_time: {
    #               status: "Enabled", # required, accepts Enabled, Disabled
    #               time: { # required
    #                 minutes: 1,
    #               },
    #             },
    #             access_control_translation: {
    #               owner: "Destination", # required, accepts Destination
    #             },
    #             encryption_configuration: {
    #               replica_kms_key_id: "ReplicaKmsKeyID",
    #             },
    #             metrics: {
    #               status: "Enabled", # required, accepts Enabled, Disabled
    #               event_threshold: {
    #                 minutes: 1,
    #               },
    #             },
    #             storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE, OUTPOSTS, GLACIER_IR
    #           },
    #           delete_marker_replication: {
    #             status: "Enabled", # required, accepts Enabled, Disabled
    #           },
    #           bucket: "BucketIdentifierString", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketReplication AWS API Documentation
    #
    # @overload put_bucket_replication(params = {})
    # @param [Hash] params ({})
    def put_bucket_replication(params = {}, options = {})
      req = build_request(:put_bucket_replication, params)
      req.send_request(options)
    end

    # <note markdown="1"> This action puts tags on an Amazon S3 on Outposts bucket. To put tags
    # on an S3 bucket, see [PutBucketTagging][1] in the *Amazon S3 API
    # Reference*.
    #
    #  </note>
    #
    # Sets the tags for an S3 on Outposts bucket. For more information, see
    # [Using Amazon S3 on Outposts][2] in the *Amazon S3 User Guide*.
    #
    # Use tags to organize your Amazon Web Services bill to reflect your own
    # cost structure. To do this, sign up to get your Amazon Web Services
    # account bill with tag key values included. Then, to see the cost of
    # combined resources, organize your billing information according to
    # resources with the same tag key values. For example, you can tag
    # several resources with a specific application name, and then organize
    # your billing information to see the total cost of that application
    # across several services. For more information, see [Cost allocation
    # and tagging][3].
    #
    # <note markdown="1"> Within a bucket, if you add a tag that has the same key as an existing
    # tag, the new value overwrites the old value. For more information, see
    # [ Using cost allocation in Amazon S3 bucket tags][4].
    #
    #  </note>
    #
    # To use this action, you must have permissions to perform the
    # `s3-outposts:PutBucketTagging` action. The Outposts bucket owner has
    # this permission by default and can grant this permission to others.
    # For more information about permissions, see [ Permissions Related to
    # Bucket Subresource Operations][5] and [Managing access permissions to
    # your Amazon S3 resources][6].
    #
    # `PutBucketTagging` has the following special errors:
    #
    # * Error code: `InvalidTagError`
    #
    #   * Description: The tag provided was not a valid tag. This error can
    #     occur if the tag did not pass input validation. For information
    #     about tag restrictions, see [ User-Defined Tag Restrictions][7]
    #     and [ Amazon Web Services-Generated Cost Allocation Tag
    #     Restrictions][8].
    #
    #   ^
    #
    # * Error code: `MalformedXMLError`
    #
    #   * Description: The XML provided does not match the schema.
    #
    #   ^
    #
    # * Error code: `OperationAbortedError `
    #
    #   * Description: A conflicting conditional action is currently in
    #     progress against this resource. Try again.
    #
    #   ^
    #
    # * Error code: `InternalError`
    #
    #   * Description: The service was unable to apply the provided tag to
    #     the bucket.
    #
    #   ^
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][9] section.
    #
    # The following actions are related to `PutBucketTagging`:
    #
    # * [GetBucketTagging][10]
    #
    # * [DeleteBucketTagging][11]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketTagging.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html
    # [3]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/CostAllocTagging.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html
    # [7]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
    # [8]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/aws-tag-restrictions.html
    # [9]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketTagging.html#API_control_PutBucketTagging_Examples
    # [10]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketTagging.html
    # [11]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteBucketTagging.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   The Amazon Resource Name (ARN) of the bucket.
    #
    #   For using this parameter with Amazon S3 on Outposts with the REST API,
    #   you must specify the name and the x-amz-outpost-id as well.
    #
    #   For using this parameter with S3 on Outposts with the Amazon Web
    #   Services SDK and CLI, you must specify the ARN of the bucket accessed
    #   in the format
    #   `arn:aws:s3-outposts:<Region>:<account-id>:outpost/<outpost-id>/bucket/<my-bucket-name>`.
    #   For example, to access the bucket `reports` through Outpost
    #   `my-outpost` owned by account `123456789012` in Region `us-west-2`,
    #   use the URL encoding of
    #   `arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports`.
    #   The value must be URL encoded.
    #
    # @option params [required, Types::Tagging] :tagging
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_tagging({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     tagging: { # required
    #       tag_set: [ # required
    #         {
    #           key: "TagKeyString", # required
    #           value: "TagValueString", # required
    #         },
    #       ],
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketTagging AWS API Documentation
    #
    # @overload put_bucket_tagging(params = {})
    # @param [Hash] params ({})
    def put_bucket_tagging(params = {}, options = {})
      req = build_request(:put_bucket_tagging, params)
      req.send_request(options)
    end

    # <note markdown="1"> This operation sets the versioning state for S3 on Outposts buckets
    # only. To set the versioning state for an S3 bucket, see
    # [PutBucketVersioning][1] in the *Amazon S3 API Reference*.
    #
    #  </note>
    #
    # Sets the versioning state for an S3 on Outposts bucket. With S3
    # Versioning, you can save multiple distinct copies of your objects and
    # recover from unintended user actions and application failures.
    #
    # You can set the versioning state to one of the following:
    #
    # * **Enabled** - Enables versioning for the objects in the bucket. All
    #   objects added to the bucket receive a unique version ID.
    #
    # * **Suspended** - Suspends versioning for the objects in the bucket.
    #   All objects added to the bucket receive the version ID `null`.
    #
    # If you've never set versioning on your bucket, it has no versioning
    # state. In that case, a [ GetBucketVersioning][2] request does not
    # return a versioning state value.
    #
    # When you enable S3 Versioning, for each object in your bucket, you
    # have a current version and zero or more noncurrent versions. You can
    # configure your bucket S3 Lifecycle rules to expire noncurrent versions
    # after a specified time period. For more information, see [ Creating
    # and managing a lifecycle configuration for your S3 on Outposts
    # bucket][3] in the *Amazon S3 User Guide*.
    #
    # If you have an object expiration lifecycle configuration in your
    # non-versioned bucket and you want to maintain the same permanent
    # delete behavior when you enable versioning, you must add a noncurrent
    # expiration policy. The noncurrent expiration lifecycle configuration
    # will manage the deletes of the noncurrent object versions in the
    # version-enabled bucket. For more information, see [Versioning][4] in
    # the *Amazon S3 User Guide*.
    #
    # All Amazon S3 on Outposts REST API requests for this action require an
    # additional parameter of `x-amz-outpost-id` to be passed with the
    # request. In addition, you must use an S3 on Outposts endpoint hostname
    # prefix instead of `s3-control`. For an example of the request syntax
    # for Amazon S3 on Outposts that uses the S3 on Outposts endpoint
    # hostname prefix and the `x-amz-outpost-id` derived by using the access
    # point ARN, see the [Examples][5] section.
    #
    # The following operations are related to `PutBucketVersioning` for S3
    # on Outposts.
    #
    # * [GetBucketVersioning][2]
    #
    # * [PutBucketLifecycleConfiguration][6]
    #
    # * [GetBucketLifecycleConfiguration][7]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_PutBucketVersioning.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketVersioning.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3OutpostsLifecycleManaging.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketVersioning.html#API_control_PutBucketVersioning_Examples
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutBucketLifecycleConfiguration.html
    # [7]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetBucketLifecycleConfiguration.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID of the S3 on Outposts bucket.
    #
    # @option params [required, String] :bucket
    #   The S3 on Outposts bucket to set the versioning state for.
    #
    # @option params [String] :mfa
    #   The concatenation of the authentication device's serial number, a
    #   space, and the value that is displayed on your authentication device.
    #
    # @option params [required, Types::VersioningConfiguration] :versioning_configuration
    #   The root-level tag for the `VersioningConfiguration` parameters.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bucket_versioning({
    #     account_id: "AccountId",
    #     bucket: "BucketName", # required
    #     mfa: "MFA",
    #     versioning_configuration: { # required
    #       mfa_delete: "Enabled", # accepts Enabled, Disabled
    #       status: "Enabled", # accepts Enabled, Suspended
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutBucketVersioning AWS API Documentation
    #
    # @overload put_bucket_versioning(params = {})
    # @param [Hash] params ({})
    def put_bucket_versioning(params = {}, options = {})
      req = build_request(:put_bucket_versioning, params)
      req.send_request(options)
    end

    # Sets the supplied tag-set on an S3 Batch Operations job.
    #
    # A tag is a key-value pair. You can associate S3 Batch Operations tags
    # with any job by sending a PUT request against the tagging subresource
    # that is associated with the job. To modify the existing tag set, you
    # can either replace the existing tag set entirely, or make changes
    # within the existing tag set by retrieving the existing tag set using
    # [GetJobTagging][1], modify that tag set, and use this action to
    # replace the tag set with the one you modified. For more information,
    # see [Controlling access and labeling jobs using tags][2] in the
    # *Amazon S3 User Guide*.
    #
    #
    #
    # <note markdown="1"> * If you send this request with an empty tag set, Amazon S3 deletes
    #   the existing tag set on the Batch Operations job. If you use this
    #   method, you are charged for a Tier 1 Request (PUT). For more
    #   information, see [Amazon S3 pricing][3].
    #
    # * For deleting existing tags for your Batch Operations job, a
    #   [DeleteJobTagging][4] request is preferred because it achieves the
    #   same result without incurring charges.
    #
    # * A few things to consider about using tags:
    #
    #   * Amazon S3 limits the maximum number of tags to 50 tags per job.
    #
    #   * You can associate up to 50 tags with a job as long as they have
    #     unique tag keys.
    #
    #   * A tag key can be up to 128 Unicode characters in length, and tag
    #     values can be up to 256 Unicode characters in length.
    #
    #   * The key and values are case sensitive.
    #
    #   * For tagging-related restrictions related to characters and
    #     encodings, see [User-Defined Tag Restrictions][5] in the *Billing
    #     and Cost Management User Guide*.
    #
    #  </note>
    #
    #
    #
    # To use the `PutJobTagging` operation, you must have permission to
    # perform the `s3:PutJobTagging` action.
    #
    # Related actions include:
    #
    # * [CreateJob][6]
    #
    # * [GetJobTagging][1]
    #
    # * [DeleteJobTagging][4]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetJobTagging.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-managing-jobs.html#batch-ops-job-tags
    # [3]: http://aws.amazon.com/s3/pricing/
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteJobTagging.html
    # [5]: https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html
    # [6]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
    #
    # @option params [required, String] :job_id
    #   The ID for the S3 Batch Operations job whose tags you want to replace.
    #
    # @option params [required, Array<Types::S3Tag>] :tags
    #   The set of tags to associate with the S3 Batch Operations job.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_job_tagging({
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutJobTagging AWS API Documentation
    #
    # @overload put_job_tagging(params = {})
    # @param [Hash] params ({})
    def put_job_tagging(params = {}, options = {})
      req = build_request(:put_job_tagging, params)
      req.send_request(options)
    end

    # Associates an access control policy with the specified Multi-Region
    # Access Point. Each Multi-Region Access Point can have only one policy,
    # so a request made to this action replaces any existing policy that is
    # associated with the specified Multi-Region Access Point.
    #
    # This action will always be routed to the US West (Oregon) Region. For
    # more information about the restrictions around managing Multi-Region
    # Access Points, see [Managing Multi-Region Access Points][1] in the
    # *Amazon S3 User Guide*.
    #
    # The following actions are related to
    # `PutMultiRegionAccessPointPolicy`:
    #
    # * [GetMultiRegionAccessPointPolicy][2]
    #
    # * [GetMultiRegionAccessPointPolicyStatus][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManagingMultiRegionAccessPoints.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicy.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetMultiRegionAccessPointPolicyStatus.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [required, String] :client_token
    #   An idempotency token used to identify the request and guarantee that
    #   requests are unique.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::PutMultiRegionAccessPointPolicyInput] :details
    #   A container element containing the details of the policy for the
    #   Multi-Region Access Point.
    #
    # @return [Types::PutMultiRegionAccessPointPolicyResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutMultiRegionAccessPointPolicyResult#request_token_arn #request_token_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_multi_region_access_point_policy({
    #     account_id: "AccountId",
    #     client_token: "MultiRegionAccessPointClientToken", # required
    #     details: { # required
    #       name: "MultiRegionAccessPointName", # required
    #       policy: "Policy", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.request_token_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutMultiRegionAccessPointPolicy AWS API Documentation
    #
    # @overload put_multi_region_access_point_policy(params = {})
    # @param [Hash] params ({})
    def put_multi_region_access_point_policy(params = {}, options = {})
      req = build_request(:put_multi_region_access_point_policy, params)
      req.send_request(options)
    end

    # Creates or modifies the `PublicAccessBlock` configuration for an
    # Amazon Web Services account. For this operation, users must have the
    # `s3:PutAccountPublicAccessBlock` permission. For more information, see
    # [ Using Amazon S3 block public access][1].
    #
    # Related actions include:
    #
    # * [GetPublicAccessBlock][2]
    #
    # * [DeletePublicAccessBlock][3]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetPublicAccessBlock.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeletePublicAccessBlock.html
    #
    # @option params [required, Types::PublicAccessBlockConfiguration] :public_access_block_configuration
    #   The `PublicAccessBlock` configuration that you want to apply to the
    #   specified Amazon Web Services account.
    #
    # @option params [String] :account_id
    #   The account ID for the Amazon Web Services account whose
    #   `PublicAccessBlock` configuration you want to set.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_public_access_block({
    #     public_access_block_configuration: { # required
    #       block_public_acls: false,
    #       ignore_public_acls: false,
    #       block_public_policy: false,
    #       restrict_public_buckets: false,
    #     },
    #     account_id: "AccountId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutPublicAccessBlock AWS API Documentation
    #
    # @overload put_public_access_block(params = {})
    # @param [Hash] params ({})
    def put_public_access_block(params = {}, options = {})
      req = build_request(:put_public_access_block, params)
      req.send_request(options)
    end

    # Puts an Amazon S3 Storage Lens configuration. For more information
    # about S3 Storage Lens, see [Working with Amazon S3 Storage Lens][1] in
    # the *Amazon S3 User Guide*. For a complete list of S3 Storage Lens
    # metrics, see [S3 Storage Lens metrics glossary][2] in the *Amazon S3
    # User Guide*.
    #
    # <note markdown="1"> To use this action, you must have permission to perform the
    # `s3:PutStorageLensConfiguration` action. For more information, see
    # [Setting permissions to use Amazon S3 Storage Lens][3] in the *Amazon
    # S3 User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens_metrics_glossary.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
    #
    # @option params [required, String] :config_id
    #   The ID of the S3 Storage Lens configuration.
    #
    # @option params [String] :account_id
    #   The account ID of the requester.
    #
    # @option params [required, Types::StorageLensConfiguration] :storage_lens_configuration
    #   The S3 Storage Lens configuration.
    #
    # @option params [Array<Types::StorageLensTag>] :tags
    #   The tag set of the S3 Storage Lens configuration.
    #
    #   <note markdown="1"> You can set up to a maximum of 50 tags.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_storage_lens_configuration({
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId",
    #     storage_lens_configuration: { # required
    #       id: "ConfigId", # required
    #       account_level: { # required
    #         activity_metrics: {
    #           is_enabled: false,
    #         },
    #         bucket_level: { # required
    #           activity_metrics: {
    #             is_enabled: false,
    #           },
    #           prefix_level: {
    #             storage_metrics: { # required
    #               is_enabled: false,
    #               selection_criteria: {
    #                 delimiter: "StorageLensPrefixLevelDelimiter",
    #                 max_depth: 1,
    #                 min_storage_bytes_percentage: 1.0,
    #               },
    #             },
    #           },
    #           advanced_cost_optimization_metrics: {
    #             is_enabled: false,
    #           },
    #           advanced_data_protection_metrics: {
    #             is_enabled: false,
    #           },
    #           detailed_status_codes_metrics: {
    #             is_enabled: false,
    #           },
    #         },
    #         advanced_cost_optimization_metrics: {
    #           is_enabled: false,
    #         },
    #         advanced_data_protection_metrics: {
    #           is_enabled: false,
    #         },
    #         detailed_status_codes_metrics: {
    #           is_enabled: false,
    #         },
    #       },
    #       include: {
    #         buckets: ["S3BucketArnString"],
    #         regions: ["S3AWSRegion"],
    #       },
    #       exclude: {
    #         buckets: ["S3BucketArnString"],
    #         regions: ["S3AWSRegion"],
    #       },
    #       data_export: {
    #         s3_bucket_destination: {
    #           format: "CSV", # required, accepts CSV, Parquet
    #           output_schema_version: "V_1", # required, accepts V_1
    #           account_id: "AccountId", # required
    #           arn: "S3BucketArnString", # required
    #           prefix: "Prefix",
    #           encryption: {
    #             sses3: {
    #             },
    #             ssekms: {
    #               key_id: "SSEKMSKeyId", # required
    #             },
    #           },
    #         },
    #         cloud_watch_metrics: {
    #           is_enabled: false, # required
    #         },
    #       },
    #       is_enabled: false, # required
    #       aws_org: {
    #         arn: "AwsOrgArn", # required
    #       },
    #       storage_lens_arn: "StorageLensArn",
    #     },
    #     tags: [
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutStorageLensConfiguration AWS API Documentation
    #
    # @overload put_storage_lens_configuration(params = {})
    # @param [Hash] params ({})
    def put_storage_lens_configuration(params = {}, options = {})
      req = build_request(:put_storage_lens_configuration, params)
      req.send_request(options)
    end

    # Put or replace tags on an existing Amazon S3 Storage Lens
    # configuration. For more information about S3 Storage Lens, see
    # [Assessing your storage activity and usage with Amazon S3 Storage Lens
    # ][1] in the *Amazon S3 User Guide*.
    #
    # <note markdown="1"> To use this action, you must have permission to perform the
    # `s3:PutStorageLensConfigurationTagging` action. For more information,
    # see [Setting permissions to use Amazon S3 Storage Lens][2] in the
    # *Amazon S3 User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/storage_lens_iam_permissions.html
    #
    # @option params [required, String] :config_id
    #   The ID of the S3 Storage Lens configuration.
    #
    # @option params [String] :account_id
    #   The account ID of the requester.
    #
    # @option params [required, Array<Types::StorageLensTag>] :tags
    #   The tag set of the S3 Storage Lens configuration.
    #
    #   <note markdown="1"> You can set up to a maximum of 50 tags.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_storage_lens_configuration_tagging({
    #     config_id: "ConfigId", # required
    #     account_id: "AccountId",
    #     tags: [ # required
    #       {
    #         key: "TagKeyString", # required
    #         value: "TagValueString", # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/PutStorageLensConfigurationTagging AWS API Documentation
    #
    # @overload put_storage_lens_configuration_tagging(params = {})
    # @param [Hash] params ({})
    def put_storage_lens_configuration_tagging(params = {}, options = {})
      req = build_request(:put_storage_lens_configuration_tagging, params)
      req.send_request(options)
    end

    # Submits an updated route configuration for a Multi-Region Access
    # Point. This API operation updates the routing status for the specified
    # Regions from active to passive, or from passive to active. A value of
    # `0` indicates a passive status, which means that traffic won't be
    # routed to the specified Region. A value of `100` indicates an active
    # status, which means that traffic will be routed to the specified
    # Region. At least one Region must be active at all times.
    #
    # When the routing configuration is changed, any in-progress operations
    # (uploads, copies, deletes, and so on) to formerly active Regions will
    # continue to run to their final completion state (success or failure).
    # The routing configurations of any Regions that aren’t specified remain
    # unchanged.
    #
    # <note markdown="1"> Updated routing configurations might not be immediately applied. It
    # can take up to 2 minutes for your changes to take effect.
    #
    #  </note>
    #
    # To submit routing control changes and failover requests, use the
    # Amazon S3 failover control infrastructure endpoints in these five
    # Amazon Web Services Regions:
    #
    # * `us-east-1`
    #
    # * `us-west-2`
    #
    # * `ap-southeast-2`
    #
    # * `ap-northeast-1`
    #
    # * `eu-west-1`
    #
    # <note markdown="1"> Your Amazon S3 bucket does not need to be in these five Regions.
    #
    #  </note>
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID for the owner of the Multi-Region
    #   Access Point.
    #
    # @option params [required, String] :mrap
    #   The Multi-Region Access Point ARN.
    #
    # @option params [required, Array<Types::MultiRegionAccessPointRoute>] :route_updates
    #   The different routes that make up the new route configuration. Active
    #   routes return a value of `100`, and passive routes return a value of
    #   `0`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.submit_multi_region_access_point_routes({
    #     account_id: "AccountId",
    #     mrap: "MultiRegionAccessPointId", # required
    #     route_updates: [ # required
    #       {
    #         bucket: "BucketName",
    #         region: "RegionName",
    #         traffic_dial_percentage: 1, # required
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/SubmitMultiRegionAccessPointRoutes AWS API Documentation
    #
    # @overload submit_multi_region_access_point_routes(params = {})
    # @param [Hash] params ({})
    def submit_multi_region_access_point_routes(params = {}, options = {})
      req = build_request(:submit_multi_region_access_point_routes, params)
      req.send_request(options)
    end

    # Updates an existing S3 Batch Operations job's priority. For more
    # information, see [S3 Batch Operations][1] in the *Amazon S3 User
    # Guide*.
    #
    #
    #
    # Related actions include:
    #
    # * [CreateJob][2]
    #
    # * [ListJobs][3]
    #
    # * [DescribeJob][4]
    #
    # * [UpdateJobStatus][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
    #
    # @option params [required, String] :job_id
    #   The ID for the job whose priority you want to update.
    #
    # @option params [required, Integer] :priority
    #   The priority you want to assign to this job.
    #
    # @return [Types::UpdateJobPriorityResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobPriorityResult#job_id #job_id} => String
    #   * {Types::UpdateJobPriorityResult#priority #priority} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_priority({
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #     priority: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.priority #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/UpdateJobPriority AWS API Documentation
    #
    # @overload update_job_priority(params = {})
    # @param [Hash] params ({})
    def update_job_priority(params = {}, options = {})
      req = build_request(:update_job_priority, params)
      req.send_request(options)
    end

    # Updates the status for the specified job. Use this action to confirm
    # that you want to run a job or to cancel an existing job. For more
    # information, see [S3 Batch Operations][1] in the *Amazon S3 User
    # Guide*.
    #
    #
    #
    # Related actions include:
    #
    # * [CreateJob][2]
    #
    # * [ListJobs][3]
    #
    # * [DescribeJob][4]
    #
    # * [UpdateJobStatus][5]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateJob.html
    # [3]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListJobs.html
    # [4]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DescribeJob.html
    # [5]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_UpdateJobStatus.html
    #
    # @option params [String] :account_id
    #   The Amazon Web Services account ID associated with the S3 Batch
    #   Operations job.
    #
    # @option params [required, String] :job_id
    #   The ID of the job whose status you want to update.
    #
    # @option params [required, String] :requested_job_status
    #   The status that you want to move the specified job to.
    #
    # @option params [String] :status_update_reason
    #   A description of the reason why you want to change the specified
    #   job's status. This field can be any string up to the maximum length.
    #
    # @return [Types::UpdateJobStatusResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateJobStatusResult#job_id #job_id} => String
    #   * {Types::UpdateJobStatusResult#status #status} => String
    #   * {Types::UpdateJobStatusResult#status_update_reason #status_update_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job_status({
    #     account_id: "AccountId",
    #     job_id: "JobId", # required
    #     requested_job_status: "Cancelled", # required, accepts Cancelled, Ready
    #     status_update_reason: "JobStatusUpdateReason",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.status #=> String, one of "Active", "Cancelled", "Cancelling", "Complete", "Completing", "Failed", "Failing", "New", "Paused", "Pausing", "Preparing", "Ready", "Suspended"
    #   resp.status_update_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3control-2018-08-20/UpdateJobStatus AWS API Documentation
    #
    # @overload update_job_status(params = {})
    # @param [Hash] params ({})
    def update_job_status(params = {}, options = {})
      req = build_request(:update_job_status, params)
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
      context[:gem_name] = 'aws-sdk-s3control'
      context[:gem_version] = '1.68.0'
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
