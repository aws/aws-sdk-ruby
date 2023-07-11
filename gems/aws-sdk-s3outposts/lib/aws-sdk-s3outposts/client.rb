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

Aws::Plugins::GlobalConfiguration.add_identifier(:s3outposts)

module Aws::S3Outposts
  # An API client for S3Outposts.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::S3Outposts::Client.new(
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

    @identifier = :s3outposts

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
    add_plugin(Aws::S3Outposts::Plugins::Endpoints)

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
    #   @option options [Aws::S3Outposts::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::S3Outposts::EndpointParameters`
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

    # Creates an endpoint and associates it with the specified Outpost.
    #
    # <note markdown="1"> It can take up to 5 minutes for this action to finish.
    #
    #  </note>
    #
    #
    #
    # Related actions include:
    #
    # * [DeleteEndpoint][1]
    #
    # * [ListEndpoints][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html
    #
    # @option params [required, String] :outpost_id
    #   The ID of the Outposts.
    #
    # @option params [required, String] :subnet_id
    #   The ID of the subnet in the selected VPC. The endpoint subnet must
    #   belong to the Outpost that has Amazon S3 on Outposts provisioned.
    #
    # @option params [required, String] :security_group_id
    #   The ID of the security group to use with the endpoint.
    #
    # @option params [String] :access_type
    #   The type of access for the network connectivity for the Amazon S3 on
    #   Outposts endpoint. To use the Amazon Web Services VPC, choose
    #   `Private`. To use the endpoint with an on-premises network, choose
    #   `CustomerOwnedIp`. If you choose `CustomerOwnedIp`, you must also
    #   provide the customer-owned IP address pool (CoIP pool).
    #
    #   <note markdown="1"> `Private` is the default access type value.
    #
    #    </note>
    #
    # @option params [String] :customer_owned_ipv_4_pool
    #   The ID of the customer-owned IPv4 address pool (CoIP pool) for the
    #   endpoint. IP addresses are allocated from this pool for the endpoint.
    #
    # @return [Types::CreateEndpointResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateEndpointResult#endpoint_arn #endpoint_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint({
    #     outpost_id: "OutpostId", # required
    #     subnet_id: "SubnetId", # required
    #     security_group_id: "SecurityGroupId", # required
    #     access_type: "Private", # accepts Private, CustomerOwnedIp
    #     customer_owned_ipv_4_pool: "CustomerOwnedIpv4Pool",
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoint_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/CreateEndpoint AWS API Documentation
    #
    # @overload create_endpoint(params = {})
    # @param [Hash] params ({})
    def create_endpoint(params = {}, options = {})
      req = build_request(:create_endpoint, params)
      req.send_request(options)
    end

    # Deletes an endpoint.
    #
    # <note markdown="1"> It can take up to 5 minutes for this action to finish.
    #
    #  </note>
    #
    #
    #
    # Related actions include:
    #
    # * [CreateEndpoint][1]
    #
    # * [ListEndpoints][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_ListEndpoints.html
    #
    # @option params [required, String] :endpoint_id
    #   The ID of the endpoint.
    #
    # @option params [required, String] :outpost_id
    #   The ID of the Outposts.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint({
    #     endpoint_id: "EndpointId", # required
    #     outpost_id: "OutpostId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/DeleteEndpoint AWS API Documentation
    #
    # @overload delete_endpoint(params = {})
    # @param [Hash] params ({})
    def delete_endpoint(params = {}, options = {})
      req = build_request(:delete_endpoint, params)
      req.send_request(options)
    end

    # Lists endpoints associated with the specified Outpost.
    #
    # Related actions include:
    #
    # * [CreateEndpoint][1]
    #
    # * [DeleteEndpoint][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html
    #
    # @option params [String] :next_token
    #   If a previous response from this operation included a `NextToken`
    #   value, provide that value here to retrieve the next page of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of endpoints that will be returned in the response.
    #
    # @return [Types::ListEndpointsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListEndpointsResult#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #   * {Types::ListEndpointsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoints({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_arn #=> String
    #   resp.endpoints[0].outposts_id #=> String
    #   resp.endpoints[0].cidr_block #=> String
    #   resp.endpoints[0].status #=> String, one of "Pending", "Available", "Deleting", "Create_Failed", "Delete_Failed"
    #   resp.endpoints[0].creation_time #=> Time
    #   resp.endpoints[0].network_interfaces #=> Array
    #   resp.endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.endpoints[0].vpc_id #=> String
    #   resp.endpoints[0].subnet_id #=> String
    #   resp.endpoints[0].security_group_id #=> String
    #   resp.endpoints[0].access_type #=> String, one of "Private", "CustomerOwnedIp"
    #   resp.endpoints[0].customer_owned_ipv_4_pool #=> String
    #   resp.endpoints[0].failed_reason.error_code #=> String
    #   resp.endpoints[0].failed_reason.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListEndpoints AWS API Documentation
    #
    # @overload list_endpoints(params = {})
    # @param [Hash] params ({})
    def list_endpoints(params = {}, options = {})
      req = build_request(:list_endpoints, params)
      req.send_request(options)
    end

    # Lists the Outposts with S3 on Outposts capacity for your Amazon Web
    # Services account. Includes S3 on Outposts that you have access to as
    # the Outposts owner, or as a shared user from Resource Access Manager
    # (RAM).
    #
    # @option params [String] :next_token
    #   When you can get additional results from the `ListOutpostsWithS3`
    #   call, a `NextToken` parameter is returned in the output. You can then
    #   pass in a subsequent command to the `NextToken` parameter to continue
    #   listing additional Outposts.
    #
    # @option params [Integer] :max_results
    #   The maximum number of Outposts to return. The limit is 100.
    #
    # @return [Types::ListOutpostsWithS3Result] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOutpostsWithS3Result#outposts #outposts} => Array&lt;Types::Outpost&gt;
    #   * {Types::ListOutpostsWithS3Result#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_outposts_with_s3({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.outposts #=> Array
    #   resp.outposts[0].outpost_arn #=> String
    #   resp.outposts[0].outpost_id #=> String
    #   resp.outposts[0].owner_id #=> String
    #   resp.outposts[0].capacity_in_bytes #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListOutpostsWithS3 AWS API Documentation
    #
    # @overload list_outposts_with_s3(params = {})
    # @param [Hash] params ({})
    def list_outposts_with_s3(params = {}, options = {})
      req = build_request(:list_outposts_with_s3, params)
      req.send_request(options)
    end

    # Lists all endpoints associated with an Outpost that has been shared by
    # Amazon Web Services Resource Access Manager (RAM).
    #
    # Related actions include:
    #
    # * [CreateEndpoint][1]
    #
    # * [DeleteEndpoint][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_CreateEndpoint.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/API/API_s3outposts_DeleteEndpoint.html
    #
    # @option params [String] :next_token
    #   If a previous response from this operation included a `NextToken`
    #   value, you can provide that value here to retrieve the next page of
    #   results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of endpoints that will be returned in the response.
    #
    # @option params [required, String] :outpost_id
    #   The ID of the Amazon Web Services Outpost.
    #
    # @return [Types::ListSharedEndpointsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSharedEndpointsResult#endpoints #endpoints} => Array&lt;Types::Endpoint&gt;
    #   * {Types::ListSharedEndpointsResult#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shared_endpoints({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     outpost_id: "OutpostId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.endpoints #=> Array
    #   resp.endpoints[0].endpoint_arn #=> String
    #   resp.endpoints[0].outposts_id #=> String
    #   resp.endpoints[0].cidr_block #=> String
    #   resp.endpoints[0].status #=> String, one of "Pending", "Available", "Deleting", "Create_Failed", "Delete_Failed"
    #   resp.endpoints[0].creation_time #=> Time
    #   resp.endpoints[0].network_interfaces #=> Array
    #   resp.endpoints[0].network_interfaces[0].network_interface_id #=> String
    #   resp.endpoints[0].vpc_id #=> String
    #   resp.endpoints[0].subnet_id #=> String
    #   resp.endpoints[0].security_group_id #=> String
    #   resp.endpoints[0].access_type #=> String, one of "Private", "CustomerOwnedIp"
    #   resp.endpoints[0].customer_owned_ipv_4_pool #=> String
    #   resp.endpoints[0].failed_reason.error_code #=> String
    #   resp.endpoints[0].failed_reason.message #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/s3outposts-2017-07-25/ListSharedEndpoints AWS API Documentation
    #
    # @overload list_shared_endpoints(params = {})
    # @param [Hash] params ({})
    def list_shared_endpoints(params = {}, options = {})
      req = build_request(:list_shared_endpoints, params)
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
      context[:gem_name] = 'aws-sdk-s3outposts'
      context[:gem_version] = '1.22.0'
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
