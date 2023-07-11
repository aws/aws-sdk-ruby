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
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:autoscaling)

module Aws::AutoScaling
  # An API client for AutoScaling.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::AutoScaling::Client.new(
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

    @identifier = :autoscaling

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
    add_plugin(Aws::Plugins::Protocols::Query)
    add_plugin(Aws::AutoScaling::Plugins::Endpoints)

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
    #   @option options [Aws::AutoScaling::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::AutoScaling::EndpointParameters`
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

    # Attaches one or more EC2 instances to the specified Auto Scaling
    # group.
    #
    # When you attach instances, Amazon EC2 Auto Scaling increases the
    # desired capacity of the group by the number of instances being
    # attached. If the number of instances being attached plus the desired
    # capacity of the group exceeds the maximum size of the group, the
    # operation fails.
    #
    # If there is a Classic Load Balancer attached to your Auto Scaling
    # group, the instances are also registered with the load balancer. If
    # there are target groups attached to your Auto Scaling group, the
    # instances are also registered with the target groups.
    #
    # For more information, see [Attach EC2 instances to your Auto Scaling
    # group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/attach-instance-asg.html
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach an instance to an Auto Scaling group
    #
    #   # This example attaches the specified instance to the specified Auto Scaling group.
    #
    #   resp = client.attach_instances({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachInstances AWS API Documentation
    #
    # @overload attach_instances(params = {})
    # @param [Hash] params ({})
    def attach_instances(params = {}, options = {})
      req = build_request(:attach_instances, params)
      req.send_request(options)
    end

    # <note markdown="1"> This API operation is superseded by AttachTrafficSources, which can
    # attach multiple traffic sources types. We recommend using
    # `AttachTrafficSources` to simplify how you manage traffic sources.
    # However, we continue to support `AttachLoadBalancerTargetGroups`. You
    # can use both the original `AttachLoadBalancerTargetGroups` API
    # operation and `AttachTrafficSources` on the same Auto Scaling group.
    #
    #  </note>
    #
    # Attaches one or more target groups to the specified Auto Scaling
    # group.
    #
    # This operation is used with the following load balancer types:
    #
    # * Application Load Balancer - Operates at the application layer (layer
    #   7) and supports HTTP and HTTPS.
    #
    # * Network Load Balancer - Operates at the transport layer (layer 4)
    #   and supports TCP, TLS, and UDP.
    #
    # * Gateway Load Balancer - Operates at the network layer (layer 3).
    #
    # To describe the target groups for an Auto Scaling group, call the
    # DescribeLoadBalancerTargetGroups API. To detach the target group from
    # the Auto Scaling group, call the DetachLoadBalancerTargetGroups API.
    #
    # This operation is additive and does not detach existing target groups
    # or Classic Load Balancers from the Auto Scaling group.
    #
    # For more information, see [Use Elastic Load Balancing to distribute
    # traffic across the instances in your Auto Scaling group][1] in the
    # *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARNs) of the target groups. You can specify
    #   up to 10 target groups. To get the ARN of a target group, use the
    #   Elastic Load Balancing [DescribeTargetGroups][1] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach a target group to an Auto Scaling group
    #
    #   # This example attaches the specified target group to the specified Auto Scaling group.
    #
    #   resp = client.attach_load_balancer_target_groups({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     target_group_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancer_target_groups({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     target_group_arns: ["XmlStringMaxLen511"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancerTargetGroups AWS API Documentation
    #
    # @overload attach_load_balancer_target_groups(params = {})
    # @param [Hash] params ({})
    def attach_load_balancer_target_groups(params = {}, options = {})
      req = build_request(:attach_load_balancer_target_groups, params)
      req.send_request(options)
    end

    # <note markdown="1"> This API operation is superseded by AttachTrafficSources, which can
    # attach multiple traffic sources types. We recommend using
    # `AttachTrafficSources` to simplify how you manage traffic sources.
    # However, we continue to support `AttachLoadBalancers`. You can use
    # both the original `AttachLoadBalancers` API operation and
    # `AttachTrafficSources` on the same Auto Scaling group.
    #
    #  </note>
    #
    # Attaches one or more Classic Load Balancers to the specified Auto
    # Scaling group. Amazon EC2 Auto Scaling registers the running instances
    # with these Classic Load Balancers.
    #
    # To describe the load balancers for an Auto Scaling group, call the
    # DescribeLoadBalancers API. To detach a load balancer from the Auto
    # Scaling group, call the DetachLoadBalancers API.
    #
    # This operation is additive and does not detach existing Classic Load
    # Balancers or target groups from the Auto Scaling group.
    #
    # For more information, see [Use Elastic Load Balancing to distribute
    # traffic across the instances in your Auto Scaling group][1] in the
    # *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :load_balancer_names
    #   The names of the load balancers. You can specify up to 10 load
    #   balancers.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach a load balancer to an Auto Scaling group
    #
    #   # This example attaches the specified load balancer to the specified Auto Scaling group.
    #
    #   resp = client.attach_load_balancers({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_load_balancers({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     load_balancer_names: ["XmlStringMaxLen255"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachLoadBalancers AWS API Documentation
    #
    # @overload attach_load_balancers(params = {})
    # @param [Hash] params ({})
    def attach_load_balancers(params = {}, options = {})
      req = build_request(:attach_load_balancers, params)
      req.send_request(options)
    end

    # Attaches one or more traffic sources to the specified Auto Scaling
    # group.
    #
    # You can use any of the following as traffic sources for an Auto
    # Scaling group:
    #
    # * Application Load Balancer
    #
    # * Classic Load Balancer
    #
    # * Gateway Load Balancer
    #
    # * Network Load Balancer
    #
    # * VPC Lattice
    #
    # This operation is additive and does not detach existing traffic
    # sources from the Auto Scaling group.
    #
    # After the operation completes, use the DescribeTrafficSources API to
    # return details about the state of the attachments between traffic
    # sources and your Auto Scaling group. To detach a traffic source from
    # the Auto Scaling group, call the DetachTrafficSources API.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<Types::TrafficSourceIdentifier>] :traffic_sources
    #   The unique identifiers of one or more traffic sources. You can specify
    #   up to 10 traffic sources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To attach a target group to an Auto Scaling group
    #
    #   # This example attaches the specified target group to the specified Auto Scaling group.
    #
    #   resp = client.attach_traffic_sources({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     traffic_sources: [
    #       {
    #         identifier: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_traffic_sources({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     traffic_sources: [ # required
    #       {
    #         identifier: "XmlStringMaxLen511", # required
    #         type: "XmlStringMaxLen511",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/AttachTrafficSources AWS API Documentation
    #
    # @overload attach_traffic_sources(params = {})
    # @param [Hash] params ({})
    def attach_traffic_sources(params = {}, options = {})
      req = build_request(:attach_traffic_sources, params)
      req.send_request(options)
    end

    # Deletes one or more scheduled actions for the specified Auto Scaling
    # group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :scheduled_action_names
    #   The names of the scheduled actions to delete. The maximum number
    #   allowed is 50.
    #
    # @return [Types::BatchDeleteScheduledActionAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchDeleteScheduledActionAnswer#failed_scheduled_actions #failed_scheduled_actions} => Array&lt;Types::FailedScheduledUpdateGroupActionRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_scheduled_action({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scheduled_action_names: ["XmlStringMaxLen255"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_scheduled_actions #=> Array
    #   resp.failed_scheduled_actions[0].scheduled_action_name #=> String
    #   resp.failed_scheduled_actions[0].error_code #=> String
    #   resp.failed_scheduled_actions[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BatchDeleteScheduledAction AWS API Documentation
    #
    # @overload batch_delete_scheduled_action(params = {})
    # @param [Hash] params ({})
    def batch_delete_scheduled_action(params = {}, options = {})
      req = build_request(:batch_delete_scheduled_action, params)
      req.send_request(options)
    end

    # Creates or updates one or more scheduled scaling actions for an Auto
    # Scaling group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<Types::ScheduledUpdateGroupActionRequest>] :scheduled_update_group_actions
    #   One or more scheduled actions. The maximum number allowed is 50.
    #
    # @return [Types::BatchPutScheduledUpdateGroupActionAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchPutScheduledUpdateGroupActionAnswer#failed_scheduled_update_group_actions #failed_scheduled_update_group_actions} => Array&lt;Types::FailedScheduledUpdateGroupActionRequest&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_scheduled_update_group_action({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scheduled_update_group_actions: [ # required
    #       {
    #         scheduled_action_name: "XmlStringMaxLen255", # required
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         recurrence: "XmlStringMaxLen255",
    #         min_size: 1,
    #         max_size: 1,
    #         desired_capacity: 1,
    #         time_zone: "XmlStringMaxLen255",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_scheduled_update_group_actions #=> Array
    #   resp.failed_scheduled_update_group_actions[0].scheduled_action_name #=> String
    #   resp.failed_scheduled_update_group_actions[0].error_code #=> String
    #   resp.failed_scheduled_update_group_actions[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/BatchPutScheduledUpdateGroupAction AWS API Documentation
    #
    # @overload batch_put_scheduled_update_group_action(params = {})
    # @param [Hash] params ({})
    def batch_put_scheduled_update_group_action(params = {}, options = {})
      req = build_request(:batch_put_scheduled_update_group_action, params)
      req.send_request(options)
    end

    # Cancels an instance refresh or rollback that is in progress. If an
    # instance refresh or rollback is not in progress, an
    # `ActiveInstanceRefreshNotFound` error occurs.
    #
    # This operation is part of the [instance refresh feature][1] in Amazon
    # EC2 Auto Scaling, which helps you update instances in your Auto
    # Scaling group after you make configuration changes.
    #
    # When you cancel an instance refresh, this does not roll back any
    # changes that it made. Use the RollbackInstanceRefresh API to roll back
    # instead.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @return [Types::CancelInstanceRefreshAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelInstanceRefreshAnswer#instance_refresh_id #instance_refresh_id} => String
    #
    #
    # @example Example: To cancel an instance refresh
    #
    #   # This example cancels an instance refresh operation in progress.
    #
    #   resp = client.cancel_instance_refresh({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance_refresh_id: "08b91cf7-8fa6-48af-b6a6-d227f40f1b9b", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_instance_refresh({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_refresh_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CancelInstanceRefresh AWS API Documentation
    #
    # @overload cancel_instance_refresh(params = {})
    # @param [Hash] params ({})
    def cancel_instance_refresh(params = {}, options = {})
      req = build_request(:cancel_instance_refresh, params)
      req.send_request(options)
    end

    # Completes the lifecycle action for the specified token or instance
    # with the specified result.
    #
    # This step is a part of the procedure for adding a lifecycle hook to an
    # Auto Scaling group:
    #
    # 1.  (Optional) Create a launch template or launch configuration with a
    #     user data script that runs while an instance is in a wait state
    #     due to a lifecycle hook.
    #
    # 2.  (Optional) Create a Lambda function and a rule that allows Amazon
    #     EventBridge to invoke your Lambda function when an instance is put
    #     into a wait state due to a lifecycle hook.
    #
    # 3.  (Optional) Create a notification target and an IAM role. The
    #     target can be either an Amazon SQS queue or an Amazon SNS topic.
    #     The role allows Amazon EC2 Auto Scaling to publish lifecycle
    #     notifications to the target.
    #
    # 4.  Create the lifecycle hook. Specify whether the hook is used when
    #     the instances launch or terminate.
    #
    # 5.  If you need more time, record the lifecycle action heartbeat to
    #     keep the instance in a wait state.
    #
    # 6.  **If you finish before the timeout period ends, send a callback by
    #     using the CompleteLifecycleAction API call.**
    #
    # For more information, see [Amazon EC2 Auto Scaling lifecycle hooks][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html
    #
    # @option params [required, String] :lifecycle_hook_name
    #   The name of the lifecycle hook.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :lifecycle_action_token
    #   A universally unique identifier (UUID) that identifies a specific
    #   lifecycle action associated with an instance. Amazon EC2 Auto Scaling
    #   sends this token to the notification target you specified when you
    #   created the lifecycle hook.
    #
    # @option params [required, String] :lifecycle_action_result
    #   The action for the group to take. You can specify either `CONTINUE` or
    #   `ABANDON`.
    #
    # @option params [String] :instance_id
    #   The ID of the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To complete the lifecycle action
    #
    #   # This example notifies Auto Scaling that the specified lifecycle action is complete so that it can finish launching or
    #   # terminating the instance.
    #
    #   resp = client.complete_lifecycle_action({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     lifecycle_action_result: "CONTINUE", 
    #     lifecycle_action_token: "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635", 
    #     lifecycle_hook_name: "my-lifecycle-hook", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_lifecycle_action({
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "ResourceName", # required
    #     lifecycle_action_token: "LifecycleActionToken",
    #     lifecycle_action_result: "LifecycleActionResult", # required
    #     instance_id: "XmlStringMaxLen19",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CompleteLifecycleAction AWS API Documentation
    #
    # @overload complete_lifecycle_action(params = {})
    # @param [Hash] params ({})
    def complete_lifecycle_action(params = {}, options = {})
      req = build_request(:complete_lifecycle_action, params)
      req.send_request(options)
    end

    # **We strongly recommend using a launch template when calling this
    # operation to ensure full functionality for Amazon EC2 Auto Scaling and
    # Amazon EC2.**
    #
    # Creates an Auto Scaling group with the specified name and attributes.
    #
    # If you exceed your maximum limit of Auto Scaling groups, the call
    # fails. To query this limit, call the DescribeAccountLimits API. For
    # information about updating this limit, see [Quotas for Amazon EC2 Auto
    # Scaling][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # For introductory exercises for creating an Auto Scaling group, see
    # [Getting started with Amazon EC2 Auto Scaling][2] and [Tutorial: Set
    # up a scaled and load-balanced application][3] in the *Amazon EC2 Auto
    # Scaling User Guide*. For more information, see [Auto Scaling
    # groups][4] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # Every Auto Scaling group has three size properties (`DesiredCapacity`,
    # `MaxSize`, and `MinSize`). Usually, you set these sizes based on a
    # specific number of instances. However, if you configure a mixed
    # instances policy that defines weights for the instance types, you must
    # specify these sizes with the same units that you use for weighting
    # instances.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html
    # [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/GettingStartedTutorial.html
    # [3]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-register-lbs-with-asg.html
    # [4]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group. This name must be unique per
    #   Region per account.
    #
    #   The name can contain any ASCII character 33 to 126 including most
    #   punctuation characters, digits, and upper and lowercased letters.
    #
    #   <note markdown="1"> You cannot use a colon (:) in the name.
    #
    #    </note>
    #
    # @option params [String] :launch_configuration_name
    #   The name of the launch configuration to use to launch instances.
    #
    #   Conditional: You must specify either a launch template
    #   (`LaunchTemplate` or `MixedInstancesPolicy`) or a launch configuration
    #   (`LaunchConfigurationName` or `InstanceId`).
    #
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   Information used to specify the launch template and version to use to
    #   launch instances.
    #
    #   Conditional: You must specify either a launch template
    #   (`LaunchTemplate` or `MixedInstancesPolicy`) or a launch configuration
    #   (`LaunchConfigurationName` or `InstanceId`).
    #
    #   <note markdown="1"> The launch template that is specified must be configured for use with
    #   an Auto Scaling group. For more information, see [Creating a launch
    #   template for an Auto Scaling group][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html
    #
    # @option params [Types::MixedInstancesPolicy] :mixed_instances_policy
    #   The mixed instances policy. For more information, see [Auto Scaling
    #   groups with multiple instance types and purchase options][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html
    #
    # @option params [String] :instance_id
    #   The ID of the instance used to base the launch configuration on. If
    #   specified, Amazon EC2 Auto Scaling uses the configuration values from
    #   the specified instance to create a new launch configuration. To get
    #   the instance ID, use the Amazon EC2 [DescribeInstances][1] API
    #   operation. For more information, see [Creating an Auto Scaling group
    #   using an EC2 instance][2] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html
    #   [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html
    #
    # @option params [required, Integer] :min_size
    #   The minimum size of the group.
    #
    # @option params [required, Integer] :max_size
    #   The maximum size of the group.
    #
    #   <note markdown="1"> With a mixed instances policy that uses instance weighting, Amazon EC2
    #   Auto Scaling may need to go above `MaxSize` to meet your capacity
    #   requirements. In this event, Amazon EC2 Auto Scaling will never go
    #   above `MaxSize` by more than your largest instance weight (weights
    #   that define how many units each instance contributes to the desired
    #   capacity of the group).
    #
    #    </note>
    #
    # @option params [Integer] :desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling group
    #   at the time of its creation and the capacity it attempts to maintain.
    #   It can scale beyond this capacity if you configure auto scaling. This
    #   number must be greater than or equal to the minimum size of the group
    #   and less than or equal to the maximum size of the group. If you do not
    #   specify a desired capacity, the default is the minimum size of the
    #   group.
    #
    # @option params [Integer] :default_cooldown
    #   *Only needed if you use simple scaling policies.*
    #
    #   The amount of time, in seconds, between one scaling activity ending
    #   and another one starting due to simple scaling policies. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: `300` seconds
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #
    # @option params [Array<String>] :availability_zones
    #   A list of Availability Zones where instances in the Auto Scaling group
    #   can be created. Used for launching into the default VPC subnet in each
    #   Availability Zone when not using the `VPCZoneIdentifier` property, or
    #   for attaching a network interface when an existing network interface
    #   ID is specified in a launch template.
    #
    # @option params [Array<String>] :load_balancer_names
    #   A list of Classic Load Balancers associated with this Auto Scaling
    #   group. For Application Load Balancers, Network Load Balancers, and
    #   Gateway Load Balancers, specify the `TargetGroupARNs` property
    #   instead.
    #
    # @option params [Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the Elastic Load Balancing target
    #   groups to associate with the Auto Scaling group. Instances are
    #   registered as targets with the target groups. The target groups
    #   receive incoming traffic and route requests to one or more registered
    #   targets. For more information, see [Use Elastic Load Balancing to
    #   distribute traffic across the instances in your Auto Scaling group][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    #
    # @option params [String] :health_check_type
    #   A comma-separated value string of one or more health check types.
    #
    #   The valid values are `EC2`, `ELB`, and `VPC_LATTICE`. `EC2` is the
    #   default health check and cannot be disabled. For more information, see
    #   [Health checks for Auto Scaling instances][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #   Only specify `EC2` if you must clear a value that was previously set.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #
    # @option params [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service and marking it unhealthy due to a failed health check.
    #   This is useful if your instances do not immediately pass their health
    #   checks after they enter the `InService` state. For more information,
    #   see [Set the health check grace period for an Auto Scaling group][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: `0` seconds
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html
    #
    # @option params [String] :placement_group
    #   The name of the placement group into which to launch your instances.
    #   For more information, see [Placement groups][1] in the *Amazon EC2
    #   User Guide for Linux Instances*.
    #
    #   <note markdown="1"> A *cluster* placement group is a logical grouping of instances within
    #   a single Availability Zone. You cannot specify multiple Availability
    #   Zones and a cluster placement group.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #
    # @option params [String] :vpc_zone_identifier
    #   A comma-separated list of subnet IDs for a virtual private cloud (VPC)
    #   where instances in the Auto Scaling group can be created. If you
    #   specify `VPCZoneIdentifier` with `AvailabilityZones`, the subnets that
    #   you specify must reside in those Availability Zones.
    #
    # @option params [Array<String>] :termination_policies
    #   A policy or a list of policies that are used to select the instance to
    #   terminate. These policies are executed in the order that you list
    #   them. For more information, see [Work with Amazon EC2 Auto Scaling
    #   termination policies][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid values: `Default` \| `AllocationStrategy` \|
    #   `ClosestToNextInstanceHour` \| `NewestInstance` \| `OldestInstance` \|
    #   `OldestLaunchConfiguration` \| `OldestLaunchTemplate` \|
    #   `arn:aws:lambda:region:account-id:function:my-function:my-alias`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html
    #
    # @option params [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in. For more
    #   information about preventing instances from terminating on scale in,
    #   see [Using instance scale-in protection][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
    #
    # @option params [Boolean] :capacity_rebalance
    #   Indicates whether Capacity Rebalancing is enabled. Otherwise, Capacity
    #   Rebalancing is disabled. When you turn on Capacity Rebalancing, Amazon
    #   EC2 Auto Scaling attempts to launch a Spot Instance whenever Amazon
    #   EC2 notifies that a Spot Instance is at an elevated risk of
    #   interruption. After launching a new instance, it then terminates an
    #   old instance. For more information, see [Use Capacity Rebalancing to
    #   handle Amazon EC2 Spot Interruptions][1] in the in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html
    #
    # @option params [Array<Types::LifecycleHookSpecification>] :lifecycle_hook_specification_list
    #   One or more lifecycle hooks to add to the Auto Scaling group before
    #   instances are launched.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags. You can tag your Auto Scaling group and propagate
    #   the tags to the Amazon EC2 instances it launches. Tags are not
    #   propagated to Amazon EBS volumes. To add tags to Amazon EBS volumes,
    #   specify the tags in a launch template but use caution. If the launch
    #   template specifies an instance tag with a key that is also specified
    #   for the Auto Scaling group, Amazon EC2 Auto Scaling overrides the
    #   value of that instance tag with the value specified by the Auto
    #   Scaling group. For more information, see [Tag Auto Scaling groups and
    #   instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html
    #
    # @option params [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other Amazon Web Services service on
    #   your behalf. By default, Amazon EC2 Auto Scaling uses a service-linked
    #   role named `AWSServiceRoleForAutoScaling`, which it creates if it does
    #   not exist. For more information, see [Service-linked roles][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    #
    # @option params [Integer] :max_instance_lifetime
    #   The maximum amount of time, in seconds, that an instance can be in
    #   service. The default is null. If specified, the value must be either 0
    #   or a number equal to or greater than 86,400 seconds (1 day). For more
    #   information, see [Replacing Auto Scaling instances based on maximum
    #   instance lifetime][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html
    #
    # @option params [String] :context
    #   Reserved.
    #
    # @option params [String] :desired_capacity_type
    #   The unit of measurement for the value specified for desired capacity.
    #   Amazon EC2 Auto Scaling supports `DesiredCapacityType` for
    #   attribute-based instance type selection only. For more information,
    #   see [Creating an Auto Scaling group using attribute-based instance
    #   type selection][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   By default, Amazon EC2 Auto Scaling specifies `units`, which
    #   translates into number of instances.
    #
    #   Valid values: `units` \| `vcpu` \| `memory-mib`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html
    #
    # @option params [Integer] :default_instance_warmup
    #   The amount of time, in seconds, until a new instance is considered to
    #   have finished initializing and resource consumption to become stable
    #   after it enters the `InService` state.
    #
    #   During an instance refresh, Amazon EC2 Auto Scaling waits for the
    #   warm-up period after it replaces an instance before it moves on to
    #   replacing the next instance. Amazon EC2 Auto Scaling also waits for
    #   the warm-up period before aggregating the metrics for new instances
    #   with existing instances in the Amazon CloudWatch metrics that are used
    #   for scaling, resulting in more reliable usage data. For more
    #   information, see [Set the default instance warmup for an Auto Scaling
    #   group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   To manage various warm-up settings at the group level, we recommend
    #   that you set the default instance warmup, *even if it is set to 0
    #   seconds*. To remove a value that you previously set, include the
    #   property but specify `-1` for the value. However, we strongly
    #   recommend keeping the default instance warmup enabled by specifying a
    #   value of `0` or other nominal value.
    #
    #   Default: None
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html
    #
    # @option params [Array<Types::TrafficSourceIdentifier>] :traffic_sources
    #   The list of traffic sources to attach to this Auto Scaling group. You
    #   can use any of the following as traffic sources for an Auto Scaling
    #   group: Classic Load Balancer, Application Load Balancer, Gateway Load
    #   Balancer, Network Load Balancer, and VPC Lattice.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create an Auto Scaling group
    #
    #   # This example creates an Auto Scaling group.
    #
    #   resp = client.create_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     launch_template: {
    #       launch_template_name: "my-template-for-auto-scaling", 
    #       version: "$Latest", 
    #     }, 
    #     max_instance_lifetime: 2592000, 
    #     max_size: 3, 
    #     min_size: 1, 
    #     vpc_zone_identifier: "subnet-057fa0918fEXAMPLE", 
    #   })
    #
    # @example Example: To create an Auto Scaling group with an attached target group
    #
    #   # This example creates an Auto Scaling group and attaches the specified target group.
    #
    #   resp = client.create_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     health_check_grace_period: 300, 
    #     health_check_type: "ELB", 
    #     launch_template: {
    #       launch_template_name: "my-template-for-auto-scaling", 
    #       version: "$Latest", 
    #     }, 
    #     max_size: 3, 
    #     min_size: 1, 
    #     target_group_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     ], 
    #     vpc_zone_identifier: "subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE", 
    #   })
    #
    # @example Example: To create an Auto Scaling group with a mixed instances policy
    #
    #   # This example creates an Auto Scaling group with a mixed instances policy. It specifies the c5.large, c5a.large, and
    #   # c6g.large instance types and defines a different launch template for the c6g.large instance type.
    #
    #   resp = client.create_auto_scaling_group({
    #     auto_scaling_group_name: "my-asg", 
    #     desired_capacity: 3, 
    #     max_size: 5, 
    #     min_size: 1, 
    #     mixed_instances_policy: {
    #       instances_distribution: {
    #         on_demand_base_capacity: 1, 
    #         on_demand_percentage_above_base_capacity: 50, 
    #         spot_allocation_strategy: "capacity-optimized", 
    #       }, 
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_name: "my-launch-template-for-x86", 
    #           version: "$Latest", 
    #         }, 
    #         overrides: [
    #           {
    #             instance_type: "c6g.large", 
    #             launch_template_specification: {
    #               launch_template_name: "my-launch-template-for-arm", 
    #               version: "$Latest", 
    #             }, 
    #           }, 
    #           {
    #             instance_type: "c5.large", 
    #           }, 
    #           {
    #             instance_type: "c5a.large", 
    #           }, 
    #         ], 
    #       }, 
    #     }, 
    #     vpc_zone_identifier: "subnet-057fa0918fEXAMPLE, subnet-610acd08EXAMPLE", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_auto_scaling_group({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     launch_configuration_name: "XmlStringMaxLen255",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255",
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255",
    #         },
    #         overrides: [
    #           {
    #             instance_type: "XmlStringMaxLen255",
    #             weighted_capacity: "XmlStringMaxLen32",
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255",
    #             },
    #             instance_requirements: {
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1,
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1,
    #               },
    #               cpu_manufacturers: ["intel"], # accepts intel, amd, amazon-web-services
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               excluded_instance_types: ["ExcludedInstance"],
    #               instance_generations: ["current"], # accepts current, previous
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: "included", # accepts included, excluded, required
    #               burstable_performance: "included", # accepts included, excluded, required
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               local_storage: "included", # accepts included, excluded, required
    #               local_storage_types: ["hdd"], # accepts hdd, ssd
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               accelerator_types: ["gpu"], # accepts gpu, fpga, inference
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               accelerator_manufacturers: ["nvidia"], # accepts nvidia, amd, amazon-web-services, xilinx
    #               accelerator_names: ["a100"], # accepts a100, v100, k80, t4, m60, radeon-pro-v520, vu9p
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               network_bandwidth_gbps: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               allowed_instance_types: ["AllowedInstanceType"],
    #             },
    #           },
    #         ],
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: "XmlString",
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: "XmlString",
    #         spot_instance_pools: 1,
    #         spot_max_price: "MixedInstanceSpotPrice",
    #       },
    #     },
    #     instance_id: "XmlStringMaxLen19",
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     load_balancer_names: ["XmlStringMaxLen255"],
    #     target_group_arns: ["XmlStringMaxLen511"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "XmlStringMaxLen255",
    #     vpc_zone_identifier: "XmlStringMaxLen2047",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     capacity_rebalance: false,
    #     lifecycle_hook_specification_list: [
    #       {
    #         lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #         lifecycle_transition: "LifecycleTransition", # required
    #         notification_metadata: "XmlStringMaxLen1023",
    #         heartbeat_timeout: 1,
    #         default_result: "LifecycleActionResult",
    #         notification_target_arn: "NotificationTargetResourceName",
    #         role_arn: "XmlStringMaxLen255",
    #       },
    #     ],
    #     tags: [
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #     service_linked_role_arn: "ResourceName",
    #     max_instance_lifetime: 1,
    #     context: "Context",
    #     desired_capacity_type: "XmlStringMaxLen255",
    #     default_instance_warmup: 1,
    #     traffic_sources: [
    #       {
    #         identifier: "XmlStringMaxLen511", # required
    #         type: "XmlStringMaxLen511",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateAutoScalingGroup AWS API Documentation
    #
    # @overload create_auto_scaling_group(params = {})
    # @param [Hash] params ({})
    def create_auto_scaling_group(params = {}, options = {})
      req = build_request(:create_auto_scaling_group, params)
      req.send_request(options)
    end

    # Creates a launch configuration.
    #
    # If you exceed your maximum limit of launch configurations, the call
    # fails. To query this limit, call the DescribeAccountLimits API. For
    # information about updating this limit, see [Quotas for Amazon EC2 Auto
    # Scaling][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # For more information, see [Launch configurations][2] in the *Amazon
    # EC2 Auto Scaling User Guide*.
    #
    # <note markdown="1"> Amazon EC2 Auto Scaling configures instances launched as part of an
    # Auto Scaling group using either a launch template or a launch
    # configuration. We strongly recommend that you do not use launch
    # configurations. They do not provide full functionality for Amazon EC2
    # Auto Scaling or Amazon EC2. For information about using launch
    # templates, see [Launch templates][3] in the *Amazon EC2 Auto Scaling
    # User Guide*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html
    # [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/LaunchConfiguration.html
    # [3]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-templates.html
    #
    # @option params [required, String] :launch_configuration_name
    #   The name of the launch configuration. This name must be unique per
    #   Region per account.
    #
    # @option params [String] :image_id
    #   The ID of the Amazon Machine Image (AMI) that was assigned during
    #   registration. For more information, see [Finding a Linux AMI][1] in
    #   the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   If you specify `InstanceId`, an `ImageId` is not required.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html
    #
    # @option params [String] :key_name
    #   The name of the key pair. For more information, see [Amazon EC2 key
    #   pairs and Linux instances][1] in the *Amazon EC2 User Guide for Linux
    #   Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
    #
    # @option params [Array<String>] :security_groups
    #   A list that contains the security group IDs to assign to the instances
    #   in the Auto Scaling group. For more information, see [Control traffic
    #   to resources using security groups][1] in the *Amazon Virtual Private
    #   Cloud User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
    #
    # @option params [String] :classic_link_vpc_id
    #   Available for backward compatibility.
    #
    # @option params [Array<String>] :classic_link_vpc_security_groups
    #   Available for backward compatibility.
    #
    # @option params [String] :user_data
    #   The user data to make available to the launched EC2 instances. For
    #   more information, see [Instance metadata and user data][1] (Linux) and
    #   [Instance metadata and user data][2] (Windows). If you are using a
    #   command line tool, base64-encoding is performed for you, and you can
    #   load the text from a file. Otherwise, you must provide base64-encoded
    #   text. User data is limited to 16 KB.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html
    #
    # @option params [String] :instance_id
    #   The ID of the instance to use to create the launch configuration. The
    #   new launch configuration derives attributes from the instance, except
    #   for the block device mapping.
    #
    #   To create a launch configuration with a block device mapping or
    #   override any other instance attributes, specify them as part of the
    #   same request.
    #
    #   For more information, see [Creating a launch configuration using an
    #   EC2 instance][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-lc-with-instanceID.html
    #
    # @option params [String] :instance_type
    #   Specifies the instance type of the EC2 instance. For information about
    #   available instance types, see [Available instance types][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   If you specify `InstanceId`, an `InstanceType` is not required.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#AvailableInstanceTypes
    #
    # @option params [String] :kernel_id
    #   The ID of the kernel associated with the AMI.
    #
    #   <note markdown="1"> We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [User provided kernels][1] in the *Amazon
    #   EC2 User Guide for Linux Instances*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    #
    # @option params [String] :ramdisk_id
    #   The ID of the RAM disk to select.
    #
    #   <note markdown="1"> We recommend that you use PV-GRUB instead of kernels and RAM disks.
    #   For more information, see [User provided kernels][1] in the *Amazon
    #   EC2 User Guide for Linux Instances*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html
    #
    # @option params [Array<Types::BlockDeviceMapping>] :block_device_mappings
    #   The block device mapping entries that define the block devices to
    #   attach to the instances at launch. By default, the block devices
    #   specified in the block device mapping for the AMI are used. For more
    #   information, see [Block device mappings][1] in the *Amazon EC2 User
    #   Guide for Linux Instances*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html
    #
    # @option params [Types::InstanceMonitoring] :instance_monitoring
    #   Controls whether instances in this group are launched with detailed
    #   (`true`) or basic (`false`) monitoring.
    #
    #   The default value is `true` (enabled).
    #
    #   When detailed monitoring is enabled, Amazon CloudWatch generates
    #   metrics every minute and your account is charged a fee. When you
    #   disable detailed monitoring, CloudWatch generates metrics every 5
    #   minutes. For more information, see [Configure Monitoring for Auto
    #   Scaling Instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/latest/userguide/enable-as-instance-metrics.html
    #
    # @option params [String] :spot_price
    #   The maximum hourly price to be paid for any Spot Instance launched to
    #   fulfill the request. Spot Instances are launched when the price you
    #   specify exceeds the current Spot price. For more information, see
    #   [Request Spot Instances for fault-tolerant and flexible
    #   applications][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid Range: Minimum value of 0.001
    #
    #   <note markdown="1"> When you change your maximum price by creating a new launch
    #   configuration, running instances will continue to run as long as the
    #   maximum price for those running instances is higher than the current
    #   Spot price.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/launch-template-spot-instances.html
    #
    # @option params [String] :iam_instance_profile
    #   The name or the Amazon Resource Name (ARN) of the instance profile
    #   associated with the IAM role for the instance. The instance profile
    #   contains the IAM role. For more information, see [IAM role for
    #   applications that run on Amazon EC2 instances][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/us-iam-role.html
    #
    # @option params [Boolean] :ebs_optimized
    #   Specifies whether the launch configuration is optimized for EBS I/O
    #   (`true`) or not (`false`). The optimization provides dedicated
    #   throughput to Amazon EBS and an optimized configuration stack to
    #   provide optimal I/O performance. This optimization is not available
    #   with all instance types. Additional fees are incurred when you enable
    #   EBS optimization for an instance type that is not EBS-optimized by
    #   default. For more information, see [Amazon EBS-optimized instances][1]
    #   in the *Amazon EC2 User Guide for Linux Instances*.
    #
    #   The default value is `false`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html
    #
    # @option params [Boolean] :associate_public_ip_address
    #   Specifies whether to assign a public IPv4 address to the group's
    #   instances. If the instance is launched into a default subnet, the
    #   default is to assign a public IPv4 address, unless you disabled the
    #   option to assign a public IPv4 address on the subnet. If the instance
    #   is launched into a nondefault subnet, the default is not to assign a
    #   public IPv4 address, unless you enabled the option to assign a public
    #   IPv4 address on the subnet.
    #
    #   If you specify `true`, each instance in the Auto Scaling group
    #   receives a unique public IPv4 address. For more information, see
    #   [Launching Auto Scaling instances in a VPC][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #   If you specify this property, you must specify at least one subnet for
    #   `VPCZoneIdentifier` when you create your group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-in-vpc.html
    #
    # @option params [String] :placement_tenancy
    #   The tenancy of the instance, either `default` or `dedicated`. An
    #   instance with `dedicated` tenancy runs on isolated, single-tenant
    #   hardware and can only be launched into a VPC. To launch dedicated
    #   instances into a shared tenancy VPC (a VPC with the instance placement
    #   tenancy attribute set to `default`), you must set the value of this
    #   property to `dedicated`. For more information, see [Configuring
    #   instance tenancy with Amazon EC2 Auto Scaling][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #   If you specify `PlacementTenancy`, you must specify at least one
    #   subnet for `VPCZoneIdentifier` when you create your group.
    #
    #   Valid values: `default` \| `dedicated`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-dedicated-instances.html
    #
    # @option params [Types::InstanceMetadataOptions] :metadata_options
    #   The metadata options for the instances. For more information, see
    #   [Configuring the Instance Metadata Options][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-config.html#launch-configurations-imds
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a launch configuration
    #
    #   # This example creates a launch configuration.
    #
    #   resp = client.create_launch_configuration({
    #     iam_instance_profile: "my-iam-role", 
    #     image_id: "ami-12345678", 
    #     instance_type: "m3.medium", 
    #     launch_configuration_name: "my-launch-config", 
    #     security_groups: [
    #       "sg-eb2af88e", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_launch_configuration({
    #     launch_configuration_name: "XmlStringMaxLen255", # required
    #     image_id: "XmlStringMaxLen255",
    #     key_name: "XmlStringMaxLen255",
    #     security_groups: ["XmlString"],
    #     classic_link_vpc_id: "XmlStringMaxLen255",
    #     classic_link_vpc_security_groups: ["XmlStringMaxLen255"],
    #     user_data: "XmlStringUserData",
    #     instance_id: "XmlStringMaxLen19",
    #     instance_type: "XmlStringMaxLen255",
    #     kernel_id: "XmlStringMaxLen255",
    #     ramdisk_id: "XmlStringMaxLen255",
    #     block_device_mappings: [
    #       {
    #         virtual_name: "XmlStringMaxLen255",
    #         device_name: "XmlStringMaxLen255", # required
    #         ebs: {
    #           snapshot_id: "XmlStringMaxLen255",
    #           volume_size: 1,
    #           volume_type: "BlockDeviceEbsVolumeType",
    #           delete_on_termination: false,
    #           iops: 1,
    #           encrypted: false,
    #           throughput: 1,
    #         },
    #         no_device: false,
    #       },
    #     ],
    #     instance_monitoring: {
    #       enabled: false,
    #     },
    #     spot_price: "SpotPrice",
    #     iam_instance_profile: "XmlStringMaxLen1600",
    #     ebs_optimized: false,
    #     associate_public_ip_address: false,
    #     placement_tenancy: "XmlStringMaxLen64",
    #     metadata_options: {
    #       http_tokens: "optional", # accepts optional, required
    #       http_put_response_hop_limit: 1,
    #       http_endpoint: "disabled", # accepts disabled, enabled
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateLaunchConfiguration AWS API Documentation
    #
    # @overload create_launch_configuration(params = {})
    # @param [Hash] params ({})
    def create_launch_configuration(params = {}, options = {})
      req = build_request(:create_launch_configuration, params)
      req.send_request(options)
    end

    # Creates or updates tags for the specified Auto Scaling group.
    #
    # When you specify a tag with a key that already exists, the operation
    # overwrites the previous tag definition, and you do not get an error
    # message.
    #
    # For more information, see [Tag Auto Scaling groups and instances][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create or update tags for an Auto Scaling group
    #
    #   # This example adds two tags to the specified Auto Scaling group.
    #
    #   resp = client.create_or_update_tags({
    #     tags: [
    #       {
    #         key: "Role", 
    #         propagate_at_launch: true, 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "WebServer", 
    #       }, 
    #       {
    #         key: "Dept", 
    #         propagate_at_launch: true, 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "Research", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_or_update_tags({
    #     tags: [ # required
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/CreateOrUpdateTags AWS API Documentation
    #
    # @overload create_or_update_tags(params = {})
    # @param [Hash] params ({})
    def create_or_update_tags(params = {}, options = {})
      req = build_request(:create_or_update_tags, params)
      req.send_request(options)
    end

    # Deletes the specified Auto Scaling group.
    #
    # If the group has instances or scaling activities in progress, you must
    # specify the option to force the deletion in order for it to succeed.
    # The force delete operation will also terminate the EC2 instances. If
    # the group has a warm pool, the force delete option also deletes the
    # warm pool.
    #
    # To remove instances from the Auto Scaling group before deleting it,
    # call the DetachInstances API with the list of instances and the option
    # to decrement the desired capacity. This ensures that Amazon EC2 Auto
    # Scaling does not launch replacement instances.
    #
    # To terminate all instances before deleting the Auto Scaling group,
    # call the UpdateAutoScalingGroup API and set the minimum size and
    # desired capacity of the Auto Scaling group to zero.
    #
    # If the group has scaling policies, deleting the group deletes the
    # policies, the underlying alarm actions, and any alarm that no longer
    # has an associated action.
    #
    # For more information, see [Delete your Auto Scaling infrastructure][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-process-shutdown.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Boolean] :force_delete
    #   Specifies that the group is to be deleted along with all instances
    #   associated with the group, without waiting for all instances to be
    #   terminated. This action also deletes any outstanding lifecycle actions
    #   associated with the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an Auto Scaling group
    #
    #   # This example deletes the specified Auto Scaling group.
    #
    #   resp = client.delete_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    # @example Example: To delete an Auto Scaling group and all its instances
    #
    #   # This example deletes the specified Auto Scaling group and all its instances.
    #
    #   resp = client.delete_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     force_delete: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_auto_scaling_group({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteAutoScalingGroup AWS API Documentation
    #
    # @overload delete_auto_scaling_group(params = {})
    # @param [Hash] params ({})
    def delete_auto_scaling_group(params = {}, options = {})
      req = build_request(:delete_auto_scaling_group, params)
      req.send_request(options)
    end

    # Deletes the specified launch configuration.
    #
    # The launch configuration must not be attached to an Auto Scaling
    # group. When this call completes, the launch configuration is no longer
    # available for use.
    #
    # @option params [required, String] :launch_configuration_name
    #   The name of the launch configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a launch configuration
    #
    #   # This example deletes the specified launch configuration.
    #
    #   resp = client.delete_launch_configuration({
    #     launch_configuration_name: "my-launch-config", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_launch_configuration({
    #     launch_configuration_name: "XmlStringMaxLen255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLaunchConfiguration AWS API Documentation
    #
    # @overload delete_launch_configuration(params = {})
    # @param [Hash] params ({})
    def delete_launch_configuration(params = {}, options = {})
      req = build_request(:delete_launch_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified lifecycle hook.
    #
    # If there are any outstanding lifecycle actions, they are completed
    # first (`ABANDON` for launching instances, `CONTINUE` for terminating
    # instances).
    #
    # @option params [required, String] :lifecycle_hook_name
    #   The name of the lifecycle hook.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a lifecycle hook
    #
    #   # This example deletes the specified lifecycle hook.
    #
    #   resp = client.delete_lifecycle_hook({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     lifecycle_hook_name: "my-lifecycle-hook", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lifecycle_hook({
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteLifecycleHook AWS API Documentation
    #
    # @overload delete_lifecycle_hook(params = {})
    # @param [Hash] params ({})
    def delete_lifecycle_hook(params = {}, options = {})
      req = build_request(:delete_lifecycle_hook, params)
      req.send_request(options)
    end

    # Deletes the specified notification.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an Auto Scaling notification
    #
    #   # This example deletes the specified notification from the specified Auto Scaling group.
    #
    #   resp = client.delete_notification_configuration({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_configuration({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     topic_arn: "XmlStringMaxLen255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteNotificationConfiguration AWS API Documentation
    #
    # @overload delete_notification_configuration(params = {})
    # @param [Hash] params ({})
    def delete_notification_configuration(params = {}, options = {})
      req = build_request(:delete_notification_configuration, params)
      req.send_request(options)
    end

    # Deletes the specified scaling policy.
    #
    # Deleting either a step scaling policy or a simple scaling policy
    # deletes the underlying alarm action, but does not delete the alarm,
    # even if it no longer has an associated action.
    #
    # For more information, see [Deleting a scaling policy][1] in the
    # *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/deleting-scaling-policy.html
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :policy_name
    #   The name or Amazon Resource Name (ARN) of the policy.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an Auto Scaling policy
    #
    #   # This example deletes the specified Auto Scaling policy.
    #
    #   resp = client.delete_policy({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     policy_name: "my-step-scale-out-policy", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     policy_name: "ResourceName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeletePolicy AWS API Documentation
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes the specified scheduled action.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of the action to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a scheduled action from an Auto Scaling group
    #
    #   # This example deletes the specified scheduled action from the specified Auto Scaling group.
    #
    #   resp = client.delete_scheduled_action({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     scheduled_action_name: "my-scheduled-action", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scheduled_action({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scheduled_action_name: "XmlStringMaxLen255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteScheduledAction AWS API Documentation
    #
    # @overload delete_scheduled_action(params = {})
    # @param [Hash] params ({})
    def delete_scheduled_action(params = {}, options = {})
      req = build_request(:delete_scheduled_action, params)
      req.send_request(options)
    end

    # Deletes the specified tags.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a tag from an Auto Scaling group
    #
    #   # This example deletes the specified tag from the specified Auto Scaling group.
    #
    #   resp = client.delete_tags({
    #     tags: [
    #       {
    #         key: "Dept", 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "Research", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags({
    #     tags: [ # required
    #       {
    #         resource_id: "XmlString",
    #         resource_type: "XmlString",
    #         key: "TagKey", # required
    #         value: "TagValue",
    #         propagate_at_launch: false,
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteTags AWS API Documentation
    #
    # @overload delete_tags(params = {})
    # @param [Hash] params ({})
    def delete_tags(params = {}, options = {})
      req = build_request(:delete_tags, params)
      req.send_request(options)
    end

    # Deletes the warm pool for the specified Auto Scaling group.
    #
    # For more information, see [Warm pools for Amazon EC2 Auto Scaling][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Boolean] :force_delete
    #   Specifies that the warm pool is to be deleted along with all of its
    #   associated instances, without waiting for all instances to be
    #   terminated. This parameter also deletes any outstanding lifecycle
    #   actions associated with the warm pool instances.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_warm_pool({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     force_delete: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DeleteWarmPool AWS API Documentation
    #
    # @overload delete_warm_pool(params = {})
    # @param [Hash] params ({})
    def delete_warm_pool(params = {}, options = {})
      req = build_request(:delete_warm_pool, params)
      req.send_request(options)
    end

    # Describes the current Amazon EC2 Auto Scaling resource quotas for your
    # account.
    #
    # When you establish an Amazon Web Services account, the account has
    # initial quotas on the maximum number of Auto Scaling groups and launch
    # configurations that you can create in a given Region. For more
    # information, see [Quotas for Amazon EC2 Auto Scaling][1] in the
    # *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-quotas.html
    #
    # @return [Types::DescribeAccountLimitsAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAccountLimitsAnswer#max_number_of_auto_scaling_groups #max_number_of_auto_scaling_groups} => Integer
    #   * {Types::DescribeAccountLimitsAnswer#max_number_of_launch_configurations #max_number_of_launch_configurations} => Integer
    #   * {Types::DescribeAccountLimitsAnswer#number_of_auto_scaling_groups #number_of_auto_scaling_groups} => Integer
    #   * {Types::DescribeAccountLimitsAnswer#number_of_launch_configurations #number_of_launch_configurations} => Integer
    #
    #
    # @example Example: To describe your Auto Scaling account limits
    #
    #   # This example describes the Amazon EC2 Auto Scaling service quotas for your account.
    #
    #   resp = client.describe_account_limits({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     max_number_of_auto_scaling_groups: 20, 
    #     max_number_of_launch_configurations: 100, 
    #     number_of_auto_scaling_groups: 3, 
    #     number_of_launch_configurations: 5, 
    #   }
    #
    # @example Response structure
    #
    #   resp.max_number_of_auto_scaling_groups #=> Integer
    #   resp.max_number_of_launch_configurations #=> Integer
    #   resp.number_of_auto_scaling_groups #=> Integer
    #   resp.number_of_launch_configurations #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAccountLimits AWS API Documentation
    #
    # @overload describe_account_limits(params = {})
    # @param [Hash] params ({})
    def describe_account_limits(params = {}, options = {})
      req = build_request(:describe_account_limits, params)
      req.send_request(options)
    end

    # Describes the available adjustment types for step scaling and simple
    # scaling policies.
    #
    # The following adjustment types are supported:
    #
    # * `ChangeInCapacity`
    #
    # * `ExactCapacity`
    #
    # * `PercentChangeInCapacity`
    #
    # @return [Types::DescribeAdjustmentTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAdjustmentTypesAnswer#adjustment_types #adjustment_types} => Array&lt;Types::AdjustmentType&gt;
    #
    #
    # @example Example: To describe the Amazon EC2 Auto Scaling adjustment types
    #
    #   # This example describes the available adjustment types.
    #
    #   resp = client.describe_adjustment_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     adjustment_types: [
    #       {
    #         adjustment_type: "ChangeInCapacity", 
    #       }, 
    #       {
    #         adjustment_type: "ExactCapcity", 
    #       }, 
    #       {
    #         adjustment_type: "PercentChangeInCapacity", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.adjustment_types #=> Array
    #   resp.adjustment_types[0].adjustment_type #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAdjustmentTypes AWS API Documentation
    #
    # @overload describe_adjustment_types(params = {})
    # @param [Hash] params ({})
    def describe_adjustment_types(params = {}, options = {})
      req = build_request(:describe_adjustment_types, params)
      req.send_request(options)
    end

    # Gets information about the Auto Scaling groups in the account and
    # Region.
    #
    # If you specify Auto Scaling group names, the output includes
    # information for only the specified Auto Scaling groups. If you specify
    # filters, the output includes information for only those Auto Scaling
    # groups that meet the filter criteria. If you do not specify group
    # names or filters, the output includes information for all Auto Scaling
    # groups.
    #
    # This operation also returns information about instances in Auto
    # Scaling groups. To retrieve information about the instances in a warm
    # pool, you must call the DescribeWarmPool API.
    #
    # @option params [Array<String>] :auto_scaling_group_names
    #   The names of the Auto Scaling groups. By default, you can only specify
    #   up to 50 names. You can optionally increase this limit using the
    #   `MaxRecords` property.
    #
    #   If you omit this property, all Auto Scaling groups are described.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters to limit the results based on specific tags.
    #
    # @return [Types::AutoScalingGroupsType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AutoScalingGroupsType#auto_scaling_groups #auto_scaling_groups} => Array&lt;Types::AutoScalingGroup&gt;
    #   * {Types::AutoScalingGroupsType#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe an Auto Scaling group
    #
    #   # This example describes the specified Auto Scaling group.
    #
    #   resp = client.describe_auto_scaling_groups({
    #     auto_scaling_group_names: [
    #       "my-auto-scaling-group", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_scaling_groups: [
    #       {
    #         auto_scaling_group_arn: "arn:aws:autoscaling:us-west-2:123456789012:autoScalingGroup:930d940e-891e-4781-a11a-7b0acd480f03:autoScalingGroupName/my-auto-scaling-group", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         availability_zones: [
    #           "us-west-2c", 
    #         ], 
    #         created_time: Time.parse("2013-08-19T20:53:25.584Z"), 
    #         default_cooldown: 300, 
    #         desired_capacity: 1, 
    #         enabled_metrics: [
    #         ], 
    #         health_check_grace_period: 300, 
    #         health_check_type: "EC2", 
    #         instances: [
    #           {
    #             availability_zone: "us-west-2c", 
    #             health_status: "Healthy", 
    #             instance_id: "i-4ba0837f", 
    #             launch_configuration_name: "my-launch-config", 
    #             lifecycle_state: "InService", 
    #             protected_from_scale_in: false, 
    #           }, 
    #         ], 
    #         launch_configuration_name: "my-launch-config", 
    #         load_balancer_names: [
    #         ], 
    #         max_size: 1, 
    #         min_size: 0, 
    #         new_instances_protected_from_scale_in: false, 
    #         suspended_processes: [
    #         ], 
    #         tags: [
    #         ], 
    #         termination_policies: [
    #           "Default", 
    #         ], 
    #         vpc_zone_identifier: "subnet-12345678", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_groups({
    #     auto_scaling_group_names: ["XmlStringMaxLen255"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #     filters: [
    #       {
    #         name: "XmlString",
    #         values: ["XmlString"],
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_scaling_groups #=> Array
    #   resp.auto_scaling_groups[0].auto_scaling_group_name #=> String
    #   resp.auto_scaling_groups[0].auto_scaling_group_arn #=> String
    #   resp.auto_scaling_groups[0].launch_configuration_name #=> String
    #   resp.auto_scaling_groups[0].launch_template.launch_template_id #=> String
    #   resp.auto_scaling_groups[0].launch_template.launch_template_name #=> String
    #   resp.auto_scaling_groups[0].launch_template.version #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.launch_template_specification.launch_template_id #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.launch_template_specification.launch_template_name #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.launch_template_specification.version #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_type #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].weighted_capacity #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].launch_template_specification.launch_template_id #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].launch_template_specification.launch_template_name #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].launch_template_specification.version #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count.min #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count.max #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b.min #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b.max #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.cpu_manufacturers #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.cpu_manufacturers[0] #=> String, one of "intel", "amd", "amazon-web-services"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu.min #=> Float
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu.max #=> Float
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.excluded_instance_types #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.excluded_instance_types[0] #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.instance_generations #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.instance_generations[0] #=> String, one of "current", "previous"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.spot_max_price_percentage_over_lowest_price #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.on_demand_max_price_percentage_over_lowest_price #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.bare_metal #=> String, one of "included", "excluded", "required"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.burstable_performance #=> String, one of "included", "excluded", "required"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.require_hibernate_support #=> Boolean
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count.min #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count.max #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage #=> String, one of "included", "excluded", "required"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage_types #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage_types[0] #=> String, one of "hdd", "ssd"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb.min #=> Float
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb.max #=> Float
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps.min #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps.max #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_types #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_types[0] #=> String, one of "gpu", "fpga", "inference"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count.min #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count.max #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_manufacturers #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_manufacturers[0] #=> String, one of "nvidia", "amd", "amazon-web-services", "xilinx"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_names #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_names[0] #=> String, one of "a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b.min #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b.max #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_bandwidth_gbps.min #=> Float
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_bandwidth_gbps.max #=> Float
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.allowed_instance_types #=> Array
    #   resp.auto_scaling_groups[0].mixed_instances_policy.launch_template.overrides[0].instance_requirements.allowed_instance_types[0] #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.on_demand_allocation_strategy #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.on_demand_base_capacity #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.on_demand_percentage_above_base_capacity #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.spot_allocation_strategy #=> String
    #   resp.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.spot_instance_pools #=> Integer
    #   resp.auto_scaling_groups[0].mixed_instances_policy.instances_distribution.spot_max_price #=> String
    #   resp.auto_scaling_groups[0].min_size #=> Integer
    #   resp.auto_scaling_groups[0].max_size #=> Integer
    #   resp.auto_scaling_groups[0].desired_capacity #=> Integer
    #   resp.auto_scaling_groups[0].predicted_capacity #=> Integer
    #   resp.auto_scaling_groups[0].default_cooldown #=> Integer
    #   resp.auto_scaling_groups[0].availability_zones #=> Array
    #   resp.auto_scaling_groups[0].availability_zones[0] #=> String
    #   resp.auto_scaling_groups[0].load_balancer_names #=> Array
    #   resp.auto_scaling_groups[0].load_balancer_names[0] #=> String
    #   resp.auto_scaling_groups[0].target_group_arns #=> Array
    #   resp.auto_scaling_groups[0].target_group_arns[0] #=> String
    #   resp.auto_scaling_groups[0].health_check_type #=> String
    #   resp.auto_scaling_groups[0].health_check_grace_period #=> Integer
    #   resp.auto_scaling_groups[0].instances #=> Array
    #   resp.auto_scaling_groups[0].instances[0].instance_id #=> String
    #   resp.auto_scaling_groups[0].instances[0].instance_type #=> String
    #   resp.auto_scaling_groups[0].instances[0].availability_zone #=> String
    #   resp.auto_scaling_groups[0].instances[0].lifecycle_state #=> String, one of "Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby", "Warmed:Pending", "Warmed:Pending:Wait", "Warmed:Pending:Proceed", "Warmed:Terminating", "Warmed:Terminating:Wait", "Warmed:Terminating:Proceed", "Warmed:Terminated", "Warmed:Stopped", "Warmed:Running", "Warmed:Hibernated"
    #   resp.auto_scaling_groups[0].instances[0].health_status #=> String
    #   resp.auto_scaling_groups[0].instances[0].launch_configuration_name #=> String
    #   resp.auto_scaling_groups[0].instances[0].launch_template.launch_template_id #=> String
    #   resp.auto_scaling_groups[0].instances[0].launch_template.launch_template_name #=> String
    #   resp.auto_scaling_groups[0].instances[0].launch_template.version #=> String
    #   resp.auto_scaling_groups[0].instances[0].protected_from_scale_in #=> Boolean
    #   resp.auto_scaling_groups[0].instances[0].weighted_capacity #=> String
    #   resp.auto_scaling_groups[0].created_time #=> Time
    #   resp.auto_scaling_groups[0].suspended_processes #=> Array
    #   resp.auto_scaling_groups[0].suspended_processes[0].process_name #=> String
    #   resp.auto_scaling_groups[0].suspended_processes[0].suspension_reason #=> String
    #   resp.auto_scaling_groups[0].placement_group #=> String
    #   resp.auto_scaling_groups[0].vpc_zone_identifier #=> String
    #   resp.auto_scaling_groups[0].enabled_metrics #=> Array
    #   resp.auto_scaling_groups[0].enabled_metrics[0].metric #=> String
    #   resp.auto_scaling_groups[0].enabled_metrics[0].granularity #=> String
    #   resp.auto_scaling_groups[0].status #=> String
    #   resp.auto_scaling_groups[0].tags #=> Array
    #   resp.auto_scaling_groups[0].tags[0].resource_id #=> String
    #   resp.auto_scaling_groups[0].tags[0].resource_type #=> String
    #   resp.auto_scaling_groups[0].tags[0].key #=> String
    #   resp.auto_scaling_groups[0].tags[0].value #=> String
    #   resp.auto_scaling_groups[0].tags[0].propagate_at_launch #=> Boolean
    #   resp.auto_scaling_groups[0].termination_policies #=> Array
    #   resp.auto_scaling_groups[0].termination_policies[0] #=> String
    #   resp.auto_scaling_groups[0].new_instances_protected_from_scale_in #=> Boolean
    #   resp.auto_scaling_groups[0].service_linked_role_arn #=> String
    #   resp.auto_scaling_groups[0].max_instance_lifetime #=> Integer
    #   resp.auto_scaling_groups[0].capacity_rebalance #=> Boolean
    #   resp.auto_scaling_groups[0].warm_pool_configuration.max_group_prepared_capacity #=> Integer
    #   resp.auto_scaling_groups[0].warm_pool_configuration.min_size #=> Integer
    #   resp.auto_scaling_groups[0].warm_pool_configuration.pool_state #=> String, one of "Stopped", "Running", "Hibernated"
    #   resp.auto_scaling_groups[0].warm_pool_configuration.status #=> String, one of "PendingDelete"
    #   resp.auto_scaling_groups[0].warm_pool_configuration.instance_reuse_policy.reuse_on_scale_in #=> Boolean
    #   resp.auto_scaling_groups[0].warm_pool_size #=> Integer
    #   resp.auto_scaling_groups[0].context #=> String
    #   resp.auto_scaling_groups[0].desired_capacity_type #=> String
    #   resp.auto_scaling_groups[0].default_instance_warmup #=> Integer
    #   resp.auto_scaling_groups[0].traffic_sources #=> Array
    #   resp.auto_scaling_groups[0].traffic_sources[0].identifier #=> String
    #   resp.auto_scaling_groups[0].traffic_sources[0].type #=> String
    #   resp.next_token #=> String
    #
    #
    # The following waiters are defined for this operation (see {Client#wait_until} for detailed usage):
    #
    #   * group_exists
    #   * group_in_service
    #   * group_not_exists
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingGroups AWS API Documentation
    #
    # @overload describe_auto_scaling_groups(params = {})
    # @param [Hash] params ({})
    def describe_auto_scaling_groups(params = {}, options = {})
      req = build_request(:describe_auto_scaling_groups, params)
      req.send_request(options)
    end

    # Gets information about the Auto Scaling instances in the account and
    # Region.
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. If you omit this property, all Auto Scaling
    #   instances are described. If you specify an ID that does not exist, it
    #   is ignored with no error.
    #
    #   Array Members: Maximum number of 50 items.
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `50`.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::AutoScalingInstancesType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AutoScalingInstancesType#auto_scaling_instances #auto_scaling_instances} => Array&lt;Types::AutoScalingInstanceDetails&gt;
    #   * {Types::AutoScalingInstancesType#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe one or more Auto Scaling instances
    #
    #   # This example describes the specified Auto Scaling instance.
    #
    #   resp = client.describe_auto_scaling_instances({
    #     instance_ids: [
    #       "i-4ba0837f", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_scaling_instances: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         availability_zone: "us-west-2c", 
    #         health_status: "HEALTHY", 
    #         instance_id: "i-4ba0837f", 
    #         launch_configuration_name: "my-launch-config", 
    #         lifecycle_state: "InService", 
    #         protected_from_scale_in: false, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     max_records: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.auto_scaling_instances #=> Array
    #   resp.auto_scaling_instances[0].instance_id #=> String
    #   resp.auto_scaling_instances[0].instance_type #=> String
    #   resp.auto_scaling_instances[0].auto_scaling_group_name #=> String
    #   resp.auto_scaling_instances[0].availability_zone #=> String
    #   resp.auto_scaling_instances[0].lifecycle_state #=> String
    #   resp.auto_scaling_instances[0].health_status #=> String
    #   resp.auto_scaling_instances[0].launch_configuration_name #=> String
    #   resp.auto_scaling_instances[0].launch_template.launch_template_id #=> String
    #   resp.auto_scaling_instances[0].launch_template.launch_template_name #=> String
    #   resp.auto_scaling_instances[0].launch_template.version #=> String
    #   resp.auto_scaling_instances[0].protected_from_scale_in #=> Boolean
    #   resp.auto_scaling_instances[0].weighted_capacity #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingInstances AWS API Documentation
    #
    # @overload describe_auto_scaling_instances(params = {})
    # @param [Hash] params ({})
    def describe_auto_scaling_instances(params = {}, options = {})
      req = build_request(:describe_auto_scaling_instances, params)
      req.send_request(options)
    end

    # Describes the notification types that are supported by Amazon EC2 Auto
    # Scaling.
    #
    # @return [Types::DescribeAutoScalingNotificationTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAutoScalingNotificationTypesAnswer#auto_scaling_notification_types #auto_scaling_notification_types} => Array&lt;String&gt;
    #
    #
    # @example Example: To describe the Auto Scaling notification types
    #
    #   # This example describes the available notification types.
    #
    #   resp = client.describe_auto_scaling_notification_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     auto_scaling_notification_types: [
    #       "autoscaling:EC2_INSTANCE_LAUNCH", 
    #       "autoscaling:EC2_INSTANCE_LAUNCH_ERROR", 
    #       "autoscaling:EC2_INSTANCE_TERMINATE", 
    #       "autoscaling:EC2_INSTANCE_TERMINATE_ERROR", 
    #       "autoscaling:TEST_NOTIFICATION", 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.auto_scaling_notification_types #=> Array
    #   resp.auto_scaling_notification_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeAutoScalingNotificationTypes AWS API Documentation
    #
    # @overload describe_auto_scaling_notification_types(params = {})
    # @param [Hash] params ({})
    def describe_auto_scaling_notification_types(params = {}, options = {})
      req = build_request(:describe_auto_scaling_notification_types, params)
      req.send_request(options)
    end

    # Gets information about the instance refreshes for the specified Auto
    # Scaling group.
    #
    # This operation is part of the [instance refresh feature][1] in Amazon
    # EC2 Auto Scaling, which helps you update instances in your Auto
    # Scaling group after you make configuration changes.
    #
    # To help you determine the status of an instance refresh, Amazon EC2
    # Auto Scaling returns information about the instance refreshes you
    # previously initiated, including their status, start time, end time,
    # the percentage of the instance refresh that is complete, and the
    # number of instances remaining to update before the instance refresh is
    # complete. If a rollback is initiated while an instance refresh is in
    # progress, Amazon EC2 Auto Scaling also returns information about the
    # rollback of the instance refresh.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :instance_refresh_ids
    #   One or more instance refresh IDs.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #
    # @return [Types::DescribeInstanceRefreshesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeInstanceRefreshesAnswer#instance_refreshes #instance_refreshes} => Array&lt;Types::InstanceRefresh&gt;
    #   * {Types::DescribeInstanceRefreshesAnswer#next_token #next_token} => String
    #
    #
    # @example Example: To list instance refreshes
    #
    #   # This example describes the instance refreshes for the specified Auto Scaling group.
    #
    #   resp = client.describe_instance_refreshes({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance_refreshes: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         instance_refresh_id: "08b91cf7-8fa6-48af-b6a6-d227f40f1b9b", 
    #         instances_to_update: 5, 
    #         percentage_complete: 0, 
    #         start_time: Time.parse("2020-06-02T18:11:27Z"), 
    #         status: "InProgress", 
    #       }, 
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         end_time: Time.parse("2020-06-02T16:53:37Z"), 
    #         instance_refresh_id: "dd7728d0-5bc4-4575-96a3-1b2c52bf8bb1", 
    #         instances_to_update: 0, 
    #         percentage_complete: 100, 
    #         start_time: Time.parse("2020-06-02T16:43:19Z"), 
    #         status: "Successful", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_refreshes({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     instance_refresh_ids: ["XmlStringMaxLen255"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_refreshes #=> Array
    #   resp.instance_refreshes[0].instance_refresh_id #=> String
    #   resp.instance_refreshes[0].auto_scaling_group_name #=> String
    #   resp.instance_refreshes[0].status #=> String, one of "Pending", "InProgress", "Successful", "Failed", "Cancelling", "Cancelled", "RollbackInProgress", "RollbackFailed", "RollbackSuccessful"
    #   resp.instance_refreshes[0].status_reason #=> String
    #   resp.instance_refreshes[0].start_time #=> Time
    #   resp.instance_refreshes[0].end_time #=> Time
    #   resp.instance_refreshes[0].percentage_complete #=> Integer
    #   resp.instance_refreshes[0].instances_to_update #=> Integer
    #   resp.instance_refreshes[0].progress_details.live_pool_progress.percentage_complete #=> Integer
    #   resp.instance_refreshes[0].progress_details.live_pool_progress.instances_to_update #=> Integer
    #   resp.instance_refreshes[0].progress_details.warm_pool_progress.percentage_complete #=> Integer
    #   resp.instance_refreshes[0].progress_details.warm_pool_progress.instances_to_update #=> Integer
    #   resp.instance_refreshes[0].preferences.min_healthy_percentage #=> Integer
    #   resp.instance_refreshes[0].preferences.instance_warmup #=> Integer
    #   resp.instance_refreshes[0].preferences.checkpoint_percentages #=> Array
    #   resp.instance_refreshes[0].preferences.checkpoint_percentages[0] #=> Integer
    #   resp.instance_refreshes[0].preferences.checkpoint_delay #=> Integer
    #   resp.instance_refreshes[0].preferences.skip_matching #=> Boolean
    #   resp.instance_refreshes[0].preferences.auto_rollback #=> Boolean
    #   resp.instance_refreshes[0].preferences.scale_in_protected_instances #=> String, one of "Refresh", "Ignore", "Wait"
    #   resp.instance_refreshes[0].preferences.standby_instances #=> String, one of "Terminate", "Ignore", "Wait"
    #   resp.instance_refreshes[0].desired_configuration.launch_template.launch_template_id #=> String
    #   resp.instance_refreshes[0].desired_configuration.launch_template.launch_template_name #=> String
    #   resp.instance_refreshes[0].desired_configuration.launch_template.version #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.launch_template_specification.launch_template_id #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.launch_template_specification.launch_template_name #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.launch_template_specification.version #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_type #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].weighted_capacity #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].launch_template_specification.launch_template_id #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].launch_template_specification.launch_template_name #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].launch_template_specification.version #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count.min #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.v_cpu_count.max #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b.min #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_mi_b.max #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.cpu_manufacturers #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.cpu_manufacturers[0] #=> String, one of "intel", "amd", "amazon-web-services"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu.min #=> Float
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.memory_gi_b_per_v_cpu.max #=> Float
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.excluded_instance_types #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.excluded_instance_types[0] #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.instance_generations #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.instance_generations[0] #=> String, one of "current", "previous"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.spot_max_price_percentage_over_lowest_price #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.on_demand_max_price_percentage_over_lowest_price #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.bare_metal #=> String, one of "included", "excluded", "required"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.burstable_performance #=> String, one of "included", "excluded", "required"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.require_hibernate_support #=> Boolean
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count.min #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_interface_count.max #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage #=> String, one of "included", "excluded", "required"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage_types #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.local_storage_types[0] #=> String, one of "hdd", "ssd"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb.min #=> Float
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.total_local_storage_gb.max #=> Float
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps.min #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.baseline_ebs_bandwidth_mbps.max #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_types #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_types[0] #=> String, one of "gpu", "fpga", "inference"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count.min #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_count.max #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_manufacturers #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_manufacturers[0] #=> String, one of "nvidia", "amd", "amazon-web-services", "xilinx"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_names #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_names[0] #=> String, one of "a100", "v100", "k80", "t4", "m60", "radeon-pro-v520", "vu9p"
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b.min #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.accelerator_total_memory_mi_b.max #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_bandwidth_gbps.min #=> Float
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.network_bandwidth_gbps.max #=> Float
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.allowed_instance_types #=> Array
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.launch_template.overrides[0].instance_requirements.allowed_instance_types[0] #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.on_demand_allocation_strategy #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.on_demand_base_capacity #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.on_demand_percentage_above_base_capacity #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.spot_allocation_strategy #=> String
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.spot_instance_pools #=> Integer
    #   resp.instance_refreshes[0].desired_configuration.mixed_instances_policy.instances_distribution.spot_max_price #=> String
    #   resp.instance_refreshes[0].rollback_details.rollback_reason #=> String
    #   resp.instance_refreshes[0].rollback_details.rollback_start_time #=> Time
    #   resp.instance_refreshes[0].rollback_details.percentage_complete_on_rollback #=> Integer
    #   resp.instance_refreshes[0].rollback_details.instances_to_update_on_rollback #=> Integer
    #   resp.instance_refreshes[0].rollback_details.progress_details_on_rollback.live_pool_progress.percentage_complete #=> Integer
    #   resp.instance_refreshes[0].rollback_details.progress_details_on_rollback.live_pool_progress.instances_to_update #=> Integer
    #   resp.instance_refreshes[0].rollback_details.progress_details_on_rollback.warm_pool_progress.percentage_complete #=> Integer
    #   resp.instance_refreshes[0].rollback_details.progress_details_on_rollback.warm_pool_progress.instances_to_update #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeInstanceRefreshes AWS API Documentation
    #
    # @overload describe_instance_refreshes(params = {})
    # @param [Hash] params ({})
    def describe_instance_refreshes(params = {}, options = {})
      req = build_request(:describe_instance_refreshes, params)
      req.send_request(options)
    end

    # Gets information about the launch configurations in the account and
    # Region.
    #
    # @option params [Array<String>] :launch_configuration_names
    #   The launch configuration names. If you omit this property, all launch
    #   configurations are described.
    #
    #   Array Members: Maximum number of 50 items.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #
    # @return [Types::LaunchConfigurationsType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LaunchConfigurationsType#launch_configurations #launch_configurations} => Array&lt;Types::LaunchConfiguration&gt;
    #   * {Types::LaunchConfigurationsType#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe Auto Scaling launch configurations
    #
    #   # This example describes the specified launch configuration.
    #
    #   resp = client.describe_launch_configurations({
    #     launch_configuration_names: [
    #       "my-launch-config", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     launch_configurations: [
    #       {
    #         associate_public_ip_address: true, 
    #         block_device_mappings: [
    #         ], 
    #         created_time: Time.parse("2014-05-07T17:39:28.599Z"), 
    #         ebs_optimized: false, 
    #         image_id: "ami-043a5034", 
    #         instance_monitoring: {
    #           enabled: true, 
    #         }, 
    #         instance_type: "t1.micro", 
    #         launch_configuration_arn: "arn:aws:autoscaling:us-west-2:123456789012:launchConfiguration:98d3b196-4cf9-4e88-8ca1-8547c24ced8b:launchConfigurationName/my-launch-config", 
    #         launch_configuration_name: "my-launch-config", 
    #         security_groups: [
    #           "sg-67ef0308", 
    #         ], 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_launch_configurations({
    #     launch_configuration_names: ["XmlStringMaxLen255"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_configurations #=> Array
    #   resp.launch_configurations[0].launch_configuration_name #=> String
    #   resp.launch_configurations[0].launch_configuration_arn #=> String
    #   resp.launch_configurations[0].image_id #=> String
    #   resp.launch_configurations[0].key_name #=> String
    #   resp.launch_configurations[0].security_groups #=> Array
    #   resp.launch_configurations[0].security_groups[0] #=> String
    #   resp.launch_configurations[0].classic_link_vpc_id #=> String
    #   resp.launch_configurations[0].classic_link_vpc_security_groups #=> Array
    #   resp.launch_configurations[0].classic_link_vpc_security_groups[0] #=> String
    #   resp.launch_configurations[0].user_data #=> String
    #   resp.launch_configurations[0].instance_type #=> String
    #   resp.launch_configurations[0].kernel_id #=> String
    #   resp.launch_configurations[0].ramdisk_id #=> String
    #   resp.launch_configurations[0].block_device_mappings #=> Array
    #   resp.launch_configurations[0].block_device_mappings[0].virtual_name #=> String
    #   resp.launch_configurations[0].block_device_mappings[0].device_name #=> String
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.snapshot_id #=> String
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.volume_size #=> Integer
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.volume_type #=> String
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.delete_on_termination #=> Boolean
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.iops #=> Integer
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.encrypted #=> Boolean
    #   resp.launch_configurations[0].block_device_mappings[0].ebs.throughput #=> Integer
    #   resp.launch_configurations[0].block_device_mappings[0].no_device #=> Boolean
    #   resp.launch_configurations[0].instance_monitoring.enabled #=> Boolean
    #   resp.launch_configurations[0].spot_price #=> String
    #   resp.launch_configurations[0].iam_instance_profile #=> String
    #   resp.launch_configurations[0].created_time #=> Time
    #   resp.launch_configurations[0].ebs_optimized #=> Boolean
    #   resp.launch_configurations[0].associate_public_ip_address #=> Boolean
    #   resp.launch_configurations[0].placement_tenancy #=> String
    #   resp.launch_configurations[0].metadata_options.http_tokens #=> String, one of "optional", "required"
    #   resp.launch_configurations[0].metadata_options.http_put_response_hop_limit #=> Integer
    #   resp.launch_configurations[0].metadata_options.http_endpoint #=> String, one of "disabled", "enabled"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLaunchConfigurations AWS API Documentation
    #
    # @overload describe_launch_configurations(params = {})
    # @param [Hash] params ({})
    def describe_launch_configurations(params = {}, options = {})
      req = build_request(:describe_launch_configurations, params)
      req.send_request(options)
    end

    # Describes the available types of lifecycle hooks.
    #
    # The following hook types are supported:
    #
    # * `autoscaling:EC2_INSTANCE_LAUNCHING`
    #
    # * `autoscaling:EC2_INSTANCE_TERMINATING`
    #
    # @return [Types::DescribeLifecycleHookTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLifecycleHookTypesAnswer#lifecycle_hook_types #lifecycle_hook_types} => Array&lt;String&gt;
    #
    #
    # @example Example: To describe the available types of lifecycle hooks
    #
    #   # This example describes the available lifecycle hook types.
    #
    #   resp = client.describe_lifecycle_hook_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_hook_types: [
    #       "autoscaling:EC2_INSTANCE_LAUNCHING", 
    #       "autoscaling:EC2_INSTANCE_TERMINATING", 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.lifecycle_hook_types #=> Array
    #   resp.lifecycle_hook_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHookTypes AWS API Documentation
    #
    # @overload describe_lifecycle_hook_types(params = {})
    # @param [Hash] params ({})
    def describe_lifecycle_hook_types(params = {}, options = {})
      req = build_request(:describe_lifecycle_hook_types, params)
      req.send_request(options)
    end

    # Gets information about the lifecycle hooks for the specified Auto
    # Scaling group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :lifecycle_hook_names
    #   The names of one or more lifecycle hooks. If you omit this property,
    #   all lifecycle hooks are described.
    #
    # @return [Types::DescribeLifecycleHooksAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLifecycleHooksAnswer#lifecycle_hooks #lifecycle_hooks} => Array&lt;Types::LifecycleHook&gt;
    #
    #
    # @example Example: To describe your lifecycle hooks
    #
    #   # This example describes the lifecycle hooks for the specified Auto Scaling group.
    #
    #   resp = client.describe_lifecycle_hooks({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lifecycle_hooks: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         default_result: "ABANDON", 
    #         global_timeout: 172800, 
    #         heartbeat_timeout: 3600, 
    #         lifecycle_hook_name: "my-lifecycle-hook", 
    #         lifecycle_transition: "autoscaling:EC2_INSTANCE_LAUNCHING", 
    #         notification_target_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic", 
    #         role_arn: "arn:aws:iam::123456789012:role/my-auto-scaling-role", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lifecycle_hooks({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     lifecycle_hook_names: ["AsciiStringMaxLen255"],
    #   })
    #
    # @example Response structure
    #
    #   resp.lifecycle_hooks #=> Array
    #   resp.lifecycle_hooks[0].lifecycle_hook_name #=> String
    #   resp.lifecycle_hooks[0].auto_scaling_group_name #=> String
    #   resp.lifecycle_hooks[0].lifecycle_transition #=> String
    #   resp.lifecycle_hooks[0].notification_target_arn #=> String
    #   resp.lifecycle_hooks[0].role_arn #=> String
    #   resp.lifecycle_hooks[0].notification_metadata #=> String
    #   resp.lifecycle_hooks[0].heartbeat_timeout #=> Integer
    #   resp.lifecycle_hooks[0].global_timeout #=> Integer
    #   resp.lifecycle_hooks[0].default_result #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLifecycleHooks AWS API Documentation
    #
    # @overload describe_lifecycle_hooks(params = {})
    # @param [Hash] params ({})
    def describe_lifecycle_hooks(params = {}, options = {})
      req = build_request(:describe_lifecycle_hooks, params)
      req.send_request(options)
    end

    # <note markdown="1"> This API operation is superseded by DescribeTrafficSources, which can
    # describe multiple traffic sources types. We recommend using
    # `DetachTrafficSources` to simplify how you manage traffic sources.
    # However, we continue to support `DescribeLoadBalancerTargetGroups`.
    # You can use both the original `DescribeLoadBalancerTargetGroups` API
    # operation and `DescribeTrafficSources` on the same Auto Scaling group.
    #
    #  </note>
    #
    # Gets information about the Elastic Load Balancing target groups for
    # the specified Auto Scaling group.
    #
    # To determine the attachment status of the target group, use the
    # `State` element in the response. When you attach a target group to an
    # Auto Scaling group, the initial `State` value is `Adding`. The state
    # transitions to `Added` after all Auto Scaling instances are registered
    # with the target group. If Elastic Load Balancing health checks are
    # enabled for the Auto Scaling group, the state transitions to
    # `InService` after at least one Auto Scaling instance passes the health
    # check. When the target group is in the `InService` state, Amazon EC2
    # Auto Scaling can terminate and replace any instances that are reported
    # as unhealthy. If no registered instances pass the health checks, the
    # target group doesn't enter the `InService` state.
    #
    # Target groups also have an `InService` state if you attach them in the
    # CreateAutoScalingGroup API call. If your target group state is
    # `InService`, but it is not working properly, check the scaling
    # activities by calling DescribeScalingActivities and take any
    # corrective actions necessary.
    #
    # For help with failed health checks, see [Troubleshooting Amazon EC2
    # Auto Scaling: Health checks][1] in the *Amazon EC2 Auto Scaling User
    # Guide*. For more information, see [Use Elastic Load Balancing to
    # distribute traffic across the instances in your Auto Scaling group][2]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # <note markdown="1"> You can use this operation to describe target groups that were
    # attached by using AttachLoadBalancerTargetGroups, but not for target
    # groups that were attached by using AttachTrafficSources.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html
    # [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `100` and the maximum value is `100`.
    #
    # @return [Types::DescribeLoadBalancerTargetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancerTargetGroupsResponse#load_balancer_target_groups #load_balancer_target_groups} => Array&lt;Types::LoadBalancerTargetGroupState&gt;
    #   * {Types::DescribeLoadBalancerTargetGroupsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To describe the target groups for an Auto Scaling group
    #
    #   # This example describes the target groups attached to the specified Auto Scaling group.
    #
    #   resp = client.describe_load_balancer_target_groups({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancer_target_groups: [
    #       {
    #         load_balancer_target_group_arn: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #         state: "Added", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancer_target_groups({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancer_target_groups #=> Array
    #   resp.load_balancer_target_groups[0].load_balancer_target_group_arn #=> String
    #   resp.load_balancer_target_groups[0].state #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancerTargetGroups AWS API Documentation
    #
    # @overload describe_load_balancer_target_groups(params = {})
    # @param [Hash] params ({})
    def describe_load_balancer_target_groups(params = {}, options = {})
      req = build_request(:describe_load_balancer_target_groups, params)
      req.send_request(options)
    end

    # <note markdown="1"> This API operation is superseded by DescribeTrafficSources, which can
    # describe multiple traffic sources types. We recommend using
    # `DescribeTrafficSources` to simplify how you manage traffic sources.
    # However, we continue to support `DescribeLoadBalancers`. You can use
    # both the original `DescribeLoadBalancers` API operation and
    # `DescribeTrafficSources` on the same Auto Scaling group.
    #
    #  </note>
    #
    # Gets information about the load balancers for the specified Auto
    # Scaling group.
    #
    # This operation describes only Classic Load Balancers. If you have
    # Application Load Balancers, Network Load Balancers, or Gateway Load
    # Balancers, use the DescribeLoadBalancerTargetGroups API instead.
    #
    # To determine the attachment status of the load balancer, use the
    # `State` element in the response. When you attach a load balancer to an
    # Auto Scaling group, the initial `State` value is `Adding`. The state
    # transitions to `Added` after all Auto Scaling instances are registered
    # with the load balancer. If Elastic Load Balancing health checks are
    # enabled for the Auto Scaling group, the state transitions to
    # `InService` after at least one Auto Scaling instance passes the health
    # check. When the load balancer is in the `InService` state, Amazon EC2
    # Auto Scaling can terminate and replace any instances that are reported
    # as unhealthy. If no registered instances pass the health checks, the
    # load balancer doesn't enter the `InService` state.
    #
    # Load balancers also have an `InService` state if you attach them in
    # the CreateAutoScalingGroup API call. If your load balancer state is
    # `InService`, but it is not working properly, check the scaling
    # activities by calling DescribeScalingActivities and take any
    # corrective actions necessary.
    #
    # For help with failed health checks, see [Troubleshooting Amazon EC2
    # Auto Scaling: Health checks][1] in the *Amazon EC2 Auto Scaling User
    # Guide*. For more information, see [Use Elastic Load Balancing to
    # distribute traffic across the instances in your Auto Scaling group][2]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ts-as-healthchecks.html
    # [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `100` and the maximum value is `100`.
    #
    # @return [Types::DescribeLoadBalancersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLoadBalancersResponse#load_balancers #load_balancers} => Array&lt;Types::LoadBalancerState&gt;
    #   * {Types::DescribeLoadBalancersResponse#next_token #next_token} => String
    #
    #
    # @example Example: To describe the load balancers for an Auto Scaling group
    #
    #   # This example describes the load balancers attached to the specified Auto Scaling group.
    #
    #   resp = client.describe_load_balancers({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     load_balancers: [
    #       {
    #         load_balancer_name: "my-load-balancer", 
    #         state: "Added", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_load_balancers({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.load_balancers #=> Array
    #   resp.load_balancers[0].load_balancer_name #=> String
    #   resp.load_balancers[0].state #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeLoadBalancers AWS API Documentation
    #
    # @overload describe_load_balancers(params = {})
    # @param [Hash] params ({})
    def describe_load_balancers(params = {}, options = {})
      req = build_request(:describe_load_balancers, params)
      req.send_request(options)
    end

    # Describes the available CloudWatch metrics for Amazon EC2 Auto
    # Scaling.
    #
    # @return [Types::DescribeMetricCollectionTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeMetricCollectionTypesAnswer#metrics #metrics} => Array&lt;Types::MetricCollectionType&gt;
    #   * {Types::DescribeMetricCollectionTypesAnswer#granularities #granularities} => Array&lt;Types::MetricGranularityType&gt;
    #
    #
    # @example Example: To describe the Auto Scaling metric collection types
    #
    #   # This example describes the available metric collection types.
    #
    #   resp = client.describe_metric_collection_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     granularities: [
    #       {
    #         granularity: "1Minute", 
    #       }, 
    #     ], 
    #     metrics: [
    #       {
    #         metric: "GroupMinSize", 
    #       }, 
    #       {
    #         metric: "GroupMaxSize", 
    #       }, 
    #       {
    #         metric: "GroupDesiredCapacity", 
    #       }, 
    #       {
    #         metric: "GroupInServiceInstances", 
    #       }, 
    #       {
    #         metric: "GroupPendingInstances", 
    #       }, 
    #       {
    #         metric: "GroupTerminatingInstances", 
    #       }, 
    #       {
    #         metric: "GroupStandbyInstances", 
    #       }, 
    #       {
    #         metric: "GroupTotalInstances", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.metrics #=> Array
    #   resp.metrics[0].metric #=> String
    #   resp.granularities #=> Array
    #   resp.granularities[0].granularity #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeMetricCollectionTypes AWS API Documentation
    #
    # @overload describe_metric_collection_types(params = {})
    # @param [Hash] params ({})
    def describe_metric_collection_types(params = {}, options = {})
      req = build_request(:describe_metric_collection_types, params)
      req.send_request(options)
    end

    # Gets information about the Amazon SNS notifications that are
    # configured for one or more Auto Scaling groups.
    #
    # @option params [Array<String>] :auto_scaling_group_names
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #
    # @return [Types::DescribeNotificationConfigurationsAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotificationConfigurationsAnswer#notification_configurations #notification_configurations} => Array&lt;Types::NotificationConfiguration&gt;
    #   * {Types::DescribeNotificationConfigurationsAnswer#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe Auto Scaling notification configurations
    #
    #   # This example describes the notification configurations for the specified Auto Scaling group.
    #
    #   resp = client.describe_notification_configurations({
    #     auto_scaling_group_names: [
    #       "my-auto-scaling-group", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     notification_configurations: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         notification_type: "autoscaling:TEST_NOTIFICATION", 
    #         topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic-2", 
    #       }, 
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         notification_type: "autoscaling:TEST_NOTIFICATION", 
    #         topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_configurations({
    #     auto_scaling_group_names: ["XmlStringMaxLen255"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.notification_configurations #=> Array
    #   resp.notification_configurations[0].auto_scaling_group_name #=> String
    #   resp.notification_configurations[0].topic_arn #=> String
    #   resp.notification_configurations[0].notification_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeNotificationConfigurations AWS API Documentation
    #
    # @overload describe_notification_configurations(params = {})
    # @param [Hash] params ({})
    def describe_notification_configurations(params = {}, options = {})
      req = build_request(:describe_notification_configurations, params)
      req.send_request(options)
    end

    # Gets information about the scaling policies in the account and Region.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :policy_names
    #   The names of one or more policies. If you omit this property, all
    #   policies are described. If a group name is provided, the results are
    #   limited to that group. If you specify an unknown policy name, it is
    #   ignored with no error.
    #
    #   Array Members: Maximum number of 50 items.
    #
    # @option params [Array<String>] :policy_types
    #   One or more policy types. The valid values are `SimpleScaling`,
    #   `StepScaling`, `TargetTrackingScaling`, and `PredictiveScaling`.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to be returned with each call. The default
    #   value is `50` and the maximum value is `100`.
    #
    # @return [Types::PoliciesType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PoliciesType#scaling_policies #scaling_policies} => Array&lt;Types::ScalingPolicy&gt;
    #   * {Types::PoliciesType#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe scaling policies
    #
    #   # This example describes the policies for the specified Auto Scaling group.
    #
    #   resp = client.describe_policies({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scaling_policies: [
    #       {
    #         adjustment_type: "ChangeInCapacity", 
    #         alarms: [
    #         ], 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2233f3d7-6290-403b-b632-93c553560106:autoScalingGroupName/my-auto-scaling-group:policyName/ScaleIn", 
    #         policy_name: "ScaleIn", 
    #         scaling_adjustment: -1, 
    #       }, 
    #       {
    #         adjustment_type: "PercentChangeInCapacity", 
    #         alarms: [
    #         ], 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cooldown: 60, 
    #         min_adjustment_step: 2, 
    #         policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:2b435159-cf77-4e89-8c0e-d63b497baad7:autoScalingGroupName/my-auto-scaling-group:policyName/ScalePercentChange", 
    #         policy_name: "ScalePercentChange", 
    #         scaling_adjustment: 25, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_policies({
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     policy_names: ["ResourceName"],
    #     policy_types: ["XmlStringMaxLen64"],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scaling_policies #=> Array
    #   resp.scaling_policies[0].auto_scaling_group_name #=> String
    #   resp.scaling_policies[0].policy_name #=> String
    #   resp.scaling_policies[0].policy_arn #=> String
    #   resp.scaling_policies[0].policy_type #=> String
    #   resp.scaling_policies[0].adjustment_type #=> String
    #   resp.scaling_policies[0].min_adjustment_step #=> Integer
    #   resp.scaling_policies[0].min_adjustment_magnitude #=> Integer
    #   resp.scaling_policies[0].scaling_adjustment #=> Integer
    #   resp.scaling_policies[0].cooldown #=> Integer
    #   resp.scaling_policies[0].step_adjustments #=> Array
    #   resp.scaling_policies[0].step_adjustments[0].metric_interval_lower_bound #=> Float
    #   resp.scaling_policies[0].step_adjustments[0].metric_interval_upper_bound #=> Float
    #   resp.scaling_policies[0].step_adjustments[0].scaling_adjustment #=> Integer
    #   resp.scaling_policies[0].metric_aggregation_type #=> String
    #   resp.scaling_policies[0].estimated_instance_warmup #=> Integer
    #   resp.scaling_policies[0].alarms #=> Array
    #   resp.scaling_policies[0].alarms[0].alarm_name #=> String
    #   resp.scaling_policies[0].alarms[0].alarm_arn #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.predefined_metric_specification.predefined_metric_type #=> String, one of "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"
    #   resp.scaling_policies[0].target_tracking_configuration.predefined_metric_specification.resource_label #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metric_name #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.namespace #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions #=> Array
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions[0].name #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.dimensions[0].value #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.statistic #=> String, one of "Average", "Minimum", "Maximum", "SampleCount", "Sum"
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.unit #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics #=> Array
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].id #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].expression #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].metric_stat.metric.namespace #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].metric_stat.metric.metric_name #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].metric_stat.metric.dimensions #=> Array
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].metric_stat.stat #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].metric_stat.unit #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].label #=> String
    #   resp.scaling_policies[0].target_tracking_configuration.customized_metric_specification.metrics[0].return_data #=> Boolean
    #   resp.scaling_policies[0].target_tracking_configuration.target_value #=> Float
    #   resp.scaling_policies[0].target_tracking_configuration.disable_scale_in #=> Boolean
    #   resp.scaling_policies[0].enabled #=> Boolean
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications #=> Array
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].target_value #=> Float
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_metric_pair_specification.predefined_metric_type #=> String, one of "ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_metric_pair_specification.resource_label #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_scaling_metric_specification.predefined_metric_type #=> String, one of "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_scaling_metric_specification.resource_label #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_load_metric_specification.predefined_metric_type #=> String, one of "ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].predefined_load_metric_specification.resource_label #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries #=> Array
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].id #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].expression #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].metric_stat.unit #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].label #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_scaling_metric_specification.metric_data_queries[0].return_data #=> Boolean
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries #=> Array
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].id #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].expression #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].metric_stat.unit #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].label #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_load_metric_specification.metric_data_queries[0].return_data #=> Boolean
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries #=> Array
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].id #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].expression #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].metric_stat.unit #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].label #=> String
    #   resp.scaling_policies[0].predictive_scaling_configuration.metric_specifications[0].customized_capacity_metric_specification.metric_data_queries[0].return_data #=> Boolean
    #   resp.scaling_policies[0].predictive_scaling_configuration.mode #=> String, one of "ForecastAndScale", "ForecastOnly"
    #   resp.scaling_policies[0].predictive_scaling_configuration.scheduling_buffer_time #=> Integer
    #   resp.scaling_policies[0].predictive_scaling_configuration.max_capacity_breach_behavior #=> String, one of "HonorMaxCapacity", "IncreaseMaxCapacity"
    #   resp.scaling_policies[0].predictive_scaling_configuration.max_capacity_buffer #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribePolicies AWS API Documentation
    #
    # @overload describe_policies(params = {})
    # @param [Hash] params ({})
    def describe_policies(params = {}, options = {})
      req = build_request(:describe_policies, params)
      req.send_request(options)
    end

    # Gets information about the scaling activities in the account and
    # Region.
    #
    # When scaling events occur, you see a record of the scaling activity in
    # the scaling activities. For more information, see [Verifying a scaling
    # activity for an Auto Scaling group][1] in the *Amazon EC2 Auto Scaling
    # User Guide*.
    #
    # If the scaling event succeeds, the value of the `StatusCode` element
    # in the response is `Successful`. If an attempt to launch instances
    # failed, the `StatusCode` value is `Failed` or `Cancelled` and the
    # `StatusMessage` element in the response indicates the cause of the
    # failure. For help interpreting the `StatusMessage`, see
    # [Troubleshooting Amazon EC2 Auto Scaling][2] in the *Amazon EC2 Auto
    # Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-verify-scaling-activity.html
    # [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/CHAP_Troubleshooting.html
    #
    # @option params [Array<String>] :activity_ids
    #   The activity IDs of the desired scaling activities. If you omit this
    #   property, all activities for the past six weeks are described. If
    #   unknown activities are requested, they are ignored with no error. If
    #   you specify an Auto Scaling group, the results are limited to that
    #   group.
    #
    #   Array Members: Maximum number of 50 IDs.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Boolean] :include_deleted_groups
    #   Indicates whether to include scaling activity from deleted Auto
    #   Scaling groups.
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `100` and the maximum value is `100`.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::ActivitiesType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivitiesType#activities #activities} => Array&lt;Types::Activity&gt;
    #   * {Types::ActivitiesType#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe the scaling activities for an Auto Scaling group
    #
    #   # This example describes the scaling activities for the specified Auto Scaling group.
    #
    #   resp = client.describe_scaling_activities({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activities: [
    #       {
    #         activity_id: "f9f2d65b-f1f2-43e7-b46d-d86756459699", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cause: "At 2013-08-19T20:53:25Z a user request created an AutoScalingGroup changing the desired capacity from 0 to 1.  At 2013-08-19T20:53:29Z an instance was started in response to a difference between desired and actual capacity, increasing the capacity from 0 to 1.", 
    #         description: "Launching a new EC2 instance: i-4ba0837f", 
    #         details: "details", 
    #         end_time: Time.parse("2013-08-19T20:54:02Z"), 
    #         progress: 100, 
    #         start_time: Time.parse("2013-08-19T20:53:29.930Z"), 
    #         status_code: "Successful", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_activities({
    #     activity_ids: ["XmlString"],
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     include_deleted_groups: false,
    #     max_records: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_id #=> String
    #   resp.activities[0].auto_scaling_group_name #=> String
    #   resp.activities[0].description #=> String
    #   resp.activities[0].cause #=> String
    #   resp.activities[0].start_time #=> Time
    #   resp.activities[0].end_time #=> Time
    #   resp.activities[0].status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"
    #   resp.activities[0].status_message #=> String
    #   resp.activities[0].progress #=> Integer
    #   resp.activities[0].details #=> String
    #   resp.activities[0].auto_scaling_group_state #=> String
    #   resp.activities[0].auto_scaling_group_arn #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScalingActivities AWS API Documentation
    #
    # @overload describe_scaling_activities(params = {})
    # @param [Hash] params ({})
    def describe_scaling_activities(params = {}, options = {})
      req = build_request(:describe_scaling_activities, params)
      req.send_request(options)
    end

    # Describes the scaling process types for use with the ResumeProcesses
    # and SuspendProcesses APIs.
    #
    # @return [Types::ProcessesType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProcessesType#processes #processes} => Array&lt;Types::ProcessType&gt;
    #
    #
    # @example Example: To describe the Auto Scaling process types
    #
    #   # This example describes the Auto Scaling process types.
    #
    #   resp = client.describe_scaling_process_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     processes: [
    #       {
    #         process_name: "AZRebalance", 
    #       }, 
    #       {
    #         process_name: "AddToLoadBalancer", 
    #       }, 
    #       {
    #         process_name: "AlarmNotification", 
    #       }, 
    #       {
    #         process_name: "HealthCheck", 
    #       }, 
    #       {
    #         process_name: "Launch", 
    #       }, 
    #       {
    #         process_name: "ReplaceUnhealthy", 
    #       }, 
    #       {
    #         process_name: "ScheduledActions", 
    #       }, 
    #       {
    #         process_name: "Terminate", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.processes #=> Array
    #   resp.processes[0].process_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScalingProcessTypes AWS API Documentation
    #
    # @overload describe_scaling_process_types(params = {})
    # @param [Hash] params ({})
    def describe_scaling_process_types(params = {}, options = {})
      req = build_request(:describe_scaling_process_types, params)
      req.send_request(options)
    end

    # Gets information about the scheduled actions that haven't run or that
    # have not reached their end time.
    #
    # To describe the scaling activities for scheduled actions that have
    # already run, call the DescribeScalingActivities API.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :scheduled_action_names
    #   The names of one or more scheduled actions. If you omit this property,
    #   all scheduled actions are described. If you specify an unknown
    #   scheduled action, it is ignored with no error.
    #
    #   Array Members: Maximum number of 50 actions.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The earliest scheduled start time to return. If scheduled action names
    #   are provided, this property is ignored.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The latest scheduled start time to return. If scheduled action names
    #   are provided, this property is ignored.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #
    # @return [Types::ScheduledActionsType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScheduledActionsType#scheduled_update_group_actions #scheduled_update_group_actions} => Array&lt;Types::ScheduledUpdateGroupAction&gt;
    #   * {Types::ScheduledActionsType#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe scheduled actions
    #
    #   # This example describes the scheduled actions for the specified Auto Scaling group.
    #
    #   resp = client.describe_scheduled_actions({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scheduled_update_group_actions: [
    #       {
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         desired_capacity: 4, 
    #         max_size: 6, 
    #         min_size: 2, 
    #         recurrence: "30 0 1 12 0", 
    #         scheduled_action_arn: "arn:aws:autoscaling:us-west-2:123456789012:scheduledUpdateGroupAction:8e86b655-b2e6-4410-8f29-b4f094d6871c:autoScalingGroupName/my-auto-scaling-group:scheduledActionName/my-scheduled-action", 
    #         scheduled_action_name: "my-scheduled-action", 
    #         start_time: Time.parse("2016-12-01T00:30:00Z"), 
    #         time: Time.parse("2016-12-01T00:30:00Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scheduled_actions({
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     scheduled_action_names: ["XmlStringMaxLen255"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.scheduled_update_group_actions #=> Array
    #   resp.scheduled_update_group_actions[0].auto_scaling_group_name #=> String
    #   resp.scheduled_update_group_actions[0].scheduled_action_name #=> String
    #   resp.scheduled_update_group_actions[0].scheduled_action_arn #=> String
    #   resp.scheduled_update_group_actions[0].time #=> Time
    #   resp.scheduled_update_group_actions[0].start_time #=> Time
    #   resp.scheduled_update_group_actions[0].end_time #=> Time
    #   resp.scheduled_update_group_actions[0].recurrence #=> String
    #   resp.scheduled_update_group_actions[0].min_size #=> Integer
    #   resp.scheduled_update_group_actions[0].max_size #=> Integer
    #   resp.scheduled_update_group_actions[0].desired_capacity #=> Integer
    #   resp.scheduled_update_group_actions[0].time_zone #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeScheduledActions AWS API Documentation
    #
    # @overload describe_scheduled_actions(params = {})
    # @param [Hash] params ({})
    def describe_scheduled_actions(params = {}, options = {})
      req = build_request(:describe_scheduled_actions, params)
      req.send_request(options)
    end

    # Describes the specified tags.
    #
    # You can use filters to limit the results. For example, you can query
    # for the tags for a specific Auto Scaling group. You can specify
    # multiple values for a filter. A tag must match at least one of the
    # specified values for it to be included in the results.
    #
    # You can also specify multiple filters. The result includes information
    # for a particular tag only if it matches all the filters. If there's
    # no match, no special message is returned.
    #
    # For more information, see [Tag Auto Scaling groups and instances][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-tagging.html
    #
    # @option params [Array<Types::Filter>] :filters
    #   One or more filters to scope the tags to return. The maximum number of
    #   filters per filter type (for example, `auto-scaling-group`) is 1000.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The default
    #   value is `50` and the maximum value is `100`.
    #
    # @return [Types::TagsType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagsType#tags #tags} => Array&lt;Types::TagDescription&gt;
    #   * {Types::TagsType#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe tags
    #
    #   # This example describes the tags for the specified Auto Scaling group.
    #
    #   resp = client.describe_tags({
    #     filters: [
    #       {
    #         name: "auto-scaling-group", 
    #         values: [
    #           "my-auto-scaling-group", 
    #         ], 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: [
    #       {
    #         key: "Dept", 
    #         propagate_at_launch: true, 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "Research", 
    #       }, 
    #       {
    #         key: "Role", 
    #         propagate_at_launch: true, 
    #         resource_id: "my-auto-scaling-group", 
    #         resource_type: "auto-scaling-group", 
    #         value: "WebServer", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags({
    #     filters: [
    #       {
    #         name: "XmlString",
    #         values: ["XmlString"],
    #       },
    #     ],
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].resource_id #=> String
    #   resp.tags[0].resource_type #=> String
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.tags[0].propagate_at_launch #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTags AWS API Documentation
    #
    # @overload describe_tags(params = {})
    # @param [Hash] params ({})
    def describe_tags(params = {}, options = {})
      req = build_request(:describe_tags, params)
      req.send_request(options)
    end

    # Describes the termination policies supported by Amazon EC2 Auto
    # Scaling.
    #
    # For more information, see [Work with Amazon EC2 Auto Scaling
    # termination policies][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html
    #
    # @return [Types::DescribeTerminationPolicyTypesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTerminationPolicyTypesAnswer#termination_policy_types #termination_policy_types} => Array&lt;String&gt;
    #
    #
    # @example Example: To describe termination policy types
    #
    #   # This example describes the available termination policy types.
    #
    #   resp = client.describe_termination_policy_types({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     termination_policy_types: [
    #       "ClosestToNextInstanceHour", 
    #       "Default", 
    #       "NewestInstance", 
    #       "OldestInstance", 
    #       "OldestLaunchConfiguration", 
    #     ], 
    #   }
    #
    # @example Response structure
    #
    #   resp.termination_policy_types #=> Array
    #   resp.termination_policy_types[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTerminationPolicyTypes AWS API Documentation
    #
    # @overload describe_termination_policy_types(params = {})
    # @param [Hash] params ({})
    def describe_termination_policy_types(params = {}, options = {})
      req = build_request(:describe_termination_policy_types, params)
      req.send_request(options)
    end

    # Gets information about the traffic sources for the specified Auto
    # Scaling group.
    #
    # You can optionally provide a traffic source type. If you provide a
    # traffic source type, then the results only include that traffic source
    # type.
    #
    # If you do not provide a traffic source type, then the results include
    # all the traffic sources for the specified Auto Scaling group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :traffic_source_type
    #   The traffic source type that you want to describe.
    #
    #   The following lists the valid values:
    #
    #   * `elb` if the traffic source is a Classic Load Balancer.
    #
    #   * `elbv2` if the traffic source is a Application Load Balancer,
    #     Gateway Load Balancer, or Network Load Balancer.
    #
    #   * `vpc-lattice` if the traffic source is VPC Lattice.
    #
    # @option params [String] :next_token
    #   The token for the next set of items to return. (You received this
    #   token from a previous call.)
    #
    # @option params [Integer] :max_records
    #   The maximum number of items to return with this call. The maximum
    #   value is `50`.
    #
    # @return [Types::DescribeTrafficSourcesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTrafficSourcesResponse#traffic_sources #traffic_sources} => Array&lt;Types::TrafficSourceState&gt;
    #   * {Types::DescribeTrafficSourcesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    #
    # @example Example: To describe the target groups for an Auto Scaling group
    #
    #   # This example describes the target groups attached to the specified Auto Scaling group.
    #
    #   resp = client.describe_traffic_sources({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     next_token: "", 
    #     traffic_sources: [
    #       {
    #         identifier: "arn:aws:vpc-lattice:us-west-2:123456789012:targetgroup/tg-0e2f2665eEXAMPLE", 
    #         state: "InService", 
    #         type: "vpc-lattice", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_traffic_sources({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     traffic_source_type: "XmlStringMaxLen255",
    #     next_token: "XmlString",
    #     max_records: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.traffic_sources #=> Array
    #   resp.traffic_sources[0].traffic_source #=> String
    #   resp.traffic_sources[0].state #=> String
    #   resp.traffic_sources[0].identifier #=> String
    #   resp.traffic_sources[0].type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeTrafficSources AWS API Documentation
    #
    # @overload describe_traffic_sources(params = {})
    # @param [Hash] params ({})
    def describe_traffic_sources(params = {}, options = {})
      req = build_request(:describe_traffic_sources, params)
      req.send_request(options)
    end

    # Gets information about a warm pool and its instances.
    #
    # For more information, see [Warm pools for Amazon EC2 Auto Scaling][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Integer] :max_records
    #   The maximum number of instances to return with this call. The maximum
    #   value is `50`.
    #
    # @option params [String] :next_token
    #   The token for the next set of instances to return. (You received this
    #   token from a previous call.)
    #
    # @return [Types::DescribeWarmPoolAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeWarmPoolAnswer#warm_pool_configuration #warm_pool_configuration} => Types::WarmPoolConfiguration
    #   * {Types::DescribeWarmPoolAnswer#instances #instances} => Array&lt;Types::Instance&gt;
    #   * {Types::DescribeWarmPoolAnswer#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_warm_pool({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     max_records: 1,
    #     next_token: "XmlString",
    #   })
    #
    # @example Response structure
    #
    #   resp.warm_pool_configuration.max_group_prepared_capacity #=> Integer
    #   resp.warm_pool_configuration.min_size #=> Integer
    #   resp.warm_pool_configuration.pool_state #=> String, one of "Stopped", "Running", "Hibernated"
    #   resp.warm_pool_configuration.status #=> String, one of "PendingDelete"
    #   resp.warm_pool_configuration.instance_reuse_policy.reuse_on_scale_in #=> Boolean
    #   resp.instances #=> Array
    #   resp.instances[0].instance_id #=> String
    #   resp.instances[0].instance_type #=> String
    #   resp.instances[0].availability_zone #=> String
    #   resp.instances[0].lifecycle_state #=> String, one of "Pending", "Pending:Wait", "Pending:Proceed", "Quarantined", "InService", "Terminating", "Terminating:Wait", "Terminating:Proceed", "Terminated", "Detaching", "Detached", "EnteringStandby", "Standby", "Warmed:Pending", "Warmed:Pending:Wait", "Warmed:Pending:Proceed", "Warmed:Terminating", "Warmed:Terminating:Wait", "Warmed:Terminating:Proceed", "Warmed:Terminated", "Warmed:Stopped", "Warmed:Running", "Warmed:Hibernated"
    #   resp.instances[0].health_status #=> String
    #   resp.instances[0].launch_configuration_name #=> String
    #   resp.instances[0].launch_template.launch_template_id #=> String
    #   resp.instances[0].launch_template.launch_template_name #=> String
    #   resp.instances[0].launch_template.version #=> String
    #   resp.instances[0].protected_from_scale_in #=> Boolean
    #   resp.instances[0].weighted_capacity #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DescribeWarmPool AWS API Documentation
    #
    # @overload describe_warm_pool(params = {})
    # @param [Hash] params ({})
    def describe_warm_pool(params = {}, options = {})
      req = build_request(:describe_warm_pool, params)
      req.send_request(options)
    end

    # Removes one or more instances from the specified Auto Scaling group.
    #
    # After the instances are detached, you can manage them independent of
    # the Auto Scaling group.
    #
    # If you do not specify the option to decrement the desired capacity,
    # Amazon EC2 Auto Scaling launches instances to replace the ones that
    # are detached.
    #
    # If there is a Classic Load Balancer attached to the Auto Scaling
    # group, the instances are deregistered from the load balancer. If there
    # are target groups attached to the Auto Scaling group, the instances
    # are deregistered from the target groups.
    #
    # For more information, see [Detach EC2 instances from your Auto Scaling
    # group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/detach-instance-asg.html
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether the Auto Scaling group decrements the desired
    #   capacity value by the number of instances detached.
    #
    # @return [Types::DetachInstancesAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DetachInstancesAnswer#activities #activities} => Array&lt;Types::Activity&gt;
    #
    #
    # @example Example: To detach an instance from an Auto Scaling group
    #
    #   # This example detaches the specified instance from the specified Auto Scaling group.
    #
    #   resp = client.detach_instances({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #     should_decrement_desired_capacity: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activities: [
    #       {
    #         activity_id: "5091cb52-547a-47ce-a236-c9ccbc2cb2c9", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cause: "At 2015-04-12T15:02:16Z instance i-93633f9b was detached in response to a user request, shrinking the capacity from 2 to 1.", 
    #         description: "Detaching EC2 instance: i-93633f9b", 
    #         details: "details", 
    #         progress: 50, 
    #         start_time: Time.parse("2015-04-12T15:02:16.179Z"), 
    #         status_code: "InProgress", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_instances({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     should_decrement_desired_capacity: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_id #=> String
    #   resp.activities[0].auto_scaling_group_name #=> String
    #   resp.activities[0].description #=> String
    #   resp.activities[0].cause #=> String
    #   resp.activities[0].start_time #=> Time
    #   resp.activities[0].end_time #=> Time
    #   resp.activities[0].status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"
    #   resp.activities[0].status_message #=> String
    #   resp.activities[0].progress #=> Integer
    #   resp.activities[0].details #=> String
    #   resp.activities[0].auto_scaling_group_state #=> String
    #   resp.activities[0].auto_scaling_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachInstances AWS API Documentation
    #
    # @overload detach_instances(params = {})
    # @param [Hash] params ({})
    def detach_instances(params = {}, options = {})
      req = build_request(:detach_instances, params)
      req.send_request(options)
    end

    # <note markdown="1"> This API operation is superseded by DetachTrafficSources, which can
    # detach multiple traffic sources types. We recommend using
    # `DetachTrafficSources` to simplify how you manage traffic sources.
    # However, we continue to support `DetachLoadBalancerTargetGroups`. You
    # can use both the original `DetachLoadBalancerTargetGroups` API
    # operation and `DetachTrafficSources` on the same Auto Scaling group.
    #
    #  </note>
    #
    # Detaches one or more target groups from the specified Auto Scaling
    # group.
    #
    # When you detach a target group, it enters the `Removing` state while
    # deregistering the instances in the group. When all instances are
    # deregistered, then you can no longer describe the target group using
    # the DescribeLoadBalancerTargetGroups API call. The instances remain
    # running.
    #
    # <note markdown="1"> You can use this operation to detach target groups that were attached
    # by using AttachLoadBalancerTargetGroups, but not for target groups
    # that were attached by using AttachTrafficSources.
    #
    #  </note>
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :target_group_arns
    #   The Amazon Resource Names (ARN) of the target groups. You can specify
    #   up to 10 target groups.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To detach a target group from an Auto Scaling group
    #
    #   # This example detaches the specified target group from the specified Auto Scaling group
    #
    #   resp = client.detach_load_balancer_target_groups({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     target_group_arns: [
    #       "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_load_balancer_target_groups({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     target_group_arns: ["XmlStringMaxLen511"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancerTargetGroups AWS API Documentation
    #
    # @overload detach_load_balancer_target_groups(params = {})
    # @param [Hash] params ({})
    def detach_load_balancer_target_groups(params = {}, options = {})
      req = build_request(:detach_load_balancer_target_groups, params)
      req.send_request(options)
    end

    # <note markdown="1"> This API operation is superseded by DetachTrafficSources, which can
    # detach multiple traffic sources types. We recommend using
    # `DetachTrafficSources` to simplify how you manage traffic sources.
    # However, we continue to support `DetachLoadBalancers`. You can use
    # both the original `DetachLoadBalancers` API operation and
    # `DetachTrafficSources` on the same Auto Scaling group.
    #
    #  </note>
    #
    # Detaches one or more Classic Load Balancers from the specified Auto
    # Scaling group.
    #
    # This operation detaches only Classic Load Balancers. If you have
    # Application Load Balancers, Network Load Balancers, or Gateway Load
    # Balancers, use the DetachLoadBalancerTargetGroups API instead.
    #
    # When you detach a load balancer, it enters the `Removing` state while
    # deregistering the instances in the group. When all instances are
    # deregistered, then you can no longer describe the load balancer using
    # the DescribeLoadBalancers API call. The instances remain running.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<String>] :load_balancer_names
    #   The names of the load balancers. You can specify up to 10 load
    #   balancers.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To detach a load balancer from an Auto Scaling group
    #
    #   # This example detaches the specified load balancer from the specified Auto Scaling group.
    #
    #   resp = client.detach_load_balancers({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     load_balancer_names: [
    #       "my-load-balancer", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_load_balancers({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     load_balancer_names: ["XmlStringMaxLen255"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachLoadBalancers AWS API Documentation
    #
    # @overload detach_load_balancers(params = {})
    # @param [Hash] params ({})
    def detach_load_balancers(params = {}, options = {})
      req = build_request(:detach_load_balancers, params)
      req.send_request(options)
    end

    # Detaches one or more traffic sources from the specified Auto Scaling
    # group.
    #
    # When you detach a taffic, it enters the `Removing` state while
    # deregistering the instances in the group. When all instances are
    # deregistered, then you can no longer describe the traffic source using
    # the DescribeTrafficSources API call. The instances continue to run.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Array<Types::TrafficSourceIdentifier>] :traffic_sources
    #   The unique identifiers of one or more traffic sources. You can specify
    #   up to 10 traffic sources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To detach a target group from an Auto Scaling group
    #
    #   # This example detaches the specified target group from the specified Auto Scaling group.
    #
    #   resp = client.detach_traffic_sources({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     traffic_sources: [
    #       {
    #         identifier: "arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_traffic_sources({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     traffic_sources: [ # required
    #       {
    #         identifier: "XmlStringMaxLen511", # required
    #         type: "XmlStringMaxLen511",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DetachTrafficSources AWS API Documentation
    #
    # @overload detach_traffic_sources(params = {})
    # @param [Hash] params ({})
    def detach_traffic_sources(params = {}, options = {})
      req = build_request(:detach_traffic_sources, params)
      req.send_request(options)
    end

    # Disables group metrics collection for the specified Auto Scaling
    # group.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :metrics
    #   Identifies the metrics to disable.
    #
    #   You can specify one or more of the following metrics:
    #
    #   * `GroupMinSize`
    #
    #   * `GroupMaxSize`
    #
    #   * `GroupDesiredCapacity`
    #
    #   * `GroupInServiceInstances`
    #
    #   * `GroupPendingInstances`
    #
    #   * `GroupStandbyInstances`
    #
    #   * `GroupTerminatingInstances`
    #
    #   * `GroupTotalInstances`
    #
    #   * `GroupInServiceCapacity`
    #
    #   * `GroupPendingCapacity`
    #
    #   * `GroupStandbyCapacity`
    #
    #   * `GroupTerminatingCapacity`
    #
    #   * `GroupTotalCapacity`
    #
    #   * `WarmPoolDesiredCapacity`
    #
    #   * `WarmPoolWarmedCapacity`
    #
    #   * `WarmPoolPendingCapacity`
    #
    #   * `WarmPoolTerminatingCapacity`
    #
    #   * `WarmPoolTotalCapacity`
    #
    #   * `GroupAndWarmPoolDesiredCapacity`
    #
    #   * `GroupAndWarmPoolTotalCapacity`
    #
    #   If you omit this property, all metrics are disabled.
    #
    #   For more information, see [Auto Scaling group metrics][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To disable metrics collection for an Auto Scaling group
    #
    #   # This example disables collecting data for the GroupDesiredCapacity metric for the specified Auto Scaling group.
    #
    #   resp = client.disable_metrics_collection({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     metrics: [
    #       "GroupDesiredCapacity", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_metrics_collection({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     metrics: ["XmlStringMaxLen255"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/DisableMetricsCollection AWS API Documentation
    #
    # @overload disable_metrics_collection(params = {})
    # @param [Hash] params ({})
    def disable_metrics_collection(params = {}, options = {})
      req = build_request(:disable_metrics_collection, params)
      req.send_request(options)
    end

    # Enables group metrics collection for the specified Auto Scaling group.
    #
    # You can use these metrics to track changes in an Auto Scaling group
    # and to set alarms on threshold values. You can view group metrics
    # using the Amazon EC2 Auto Scaling console or the CloudWatch console.
    # For more information, see [Monitor CloudWatch metrics for your Auto
    # Scaling groups and instances][1] in the *Amazon EC2 Auto Scaling User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :metrics
    #   Identifies the metrics to enable.
    #
    #   You can specify one or more of the following metrics:
    #
    #   * `GroupMinSize`
    #
    #   * `GroupMaxSize`
    #
    #   * `GroupDesiredCapacity`
    #
    #   * `GroupInServiceInstances`
    #
    #   * `GroupPendingInstances`
    #
    #   * `GroupStandbyInstances`
    #
    #   * `GroupTerminatingInstances`
    #
    #   * `GroupTotalInstances`
    #
    #   * `GroupInServiceCapacity`
    #
    #   * `GroupPendingCapacity`
    #
    #   * `GroupStandbyCapacity`
    #
    #   * `GroupTerminatingCapacity`
    #
    #   * `GroupTotalCapacity`
    #
    #   * `WarmPoolDesiredCapacity`
    #
    #   * `WarmPoolWarmedCapacity`
    #
    #   * `WarmPoolPendingCapacity`
    #
    #   * `WarmPoolTerminatingCapacity`
    #
    #   * `WarmPoolTotalCapacity`
    #
    #   * `GroupAndWarmPoolDesiredCapacity`
    #
    #   * `GroupAndWarmPoolTotalCapacity`
    #
    #   If you specify `Granularity` and don't specify any metrics, all
    #   metrics are enabled.
    #
    #   For more information, see [Auto Scaling group metrics][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-cloudwatch-monitoring.html#as-group-metrics
    #
    # @option params [required, String] :granularity
    #   The frequency at which Amazon EC2 Auto Scaling sends aggregated data
    #   to CloudWatch. The only valid value is `1Minute`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable metrics collection for an Auto Scaling group
    #
    #   # This example enables data collection for the specified Auto Scaling group.
    #
    #   resp = client.enable_metrics_collection({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     granularity: "1Minute", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_metrics_collection({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     metrics: ["XmlStringMaxLen255"],
    #     granularity: "XmlStringMaxLen255", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnableMetricsCollection AWS API Documentation
    #
    # @overload enable_metrics_collection(params = {})
    # @param [Hash] params ({})
    def enable_metrics_collection(params = {}, options = {})
      req = build_request(:enable_metrics_collection, params)
      req.send_request(options)
    end

    # Moves the specified instances into the standby state.
    #
    # If you choose to decrement the desired capacity of the Auto Scaling
    # group, the instances can enter standby as long as the desired capacity
    # of the Auto Scaling group after the instances are placed into standby
    # is equal to or greater than the minimum capacity of the group.
    #
    # If you choose not to decrement the desired capacity of the Auto
    # Scaling group, the Auto Scaling group launches new instances to
    # replace the instances on standby.
    #
    # For more information, see [Temporarily removing instances from your
    # Auto Scaling group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether to decrement the desired capacity of the Auto
    #   Scaling group by the number of instances moved to `Standby` mode.
    #
    # @return [Types::EnterStandbyAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnterStandbyAnswer#activities #activities} => Array&lt;Types::Activity&gt;
    #
    #
    # @example Example: To move instances into standby mode
    #
    #   # This example puts the specified instance into standby mode.
    #
    #   resp = client.enter_standby({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #     should_decrement_desired_capacity: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activities: [
    #       {
    #         activity_id: "ffa056b4-6ed3-41ba-ae7c-249dfae6eba1", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cause: "At 2015-04-12T15:10:23Z instance i-93633f9b was moved to standby in response to a user request, shrinking the capacity from 2 to 1.", 
    #         description: "Moving EC2 instance to Standby: i-93633f9b", 
    #         details: "details", 
    #         progress: 50, 
    #         start_time: Time.parse("2015-04-12T15:10:23.640Z"), 
    #         status_code: "InProgress", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enter_standby({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     should_decrement_desired_capacity: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_id #=> String
    #   resp.activities[0].auto_scaling_group_name #=> String
    #   resp.activities[0].description #=> String
    #   resp.activities[0].cause #=> String
    #   resp.activities[0].start_time #=> Time
    #   resp.activities[0].end_time #=> Time
    #   resp.activities[0].status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"
    #   resp.activities[0].status_message #=> String
    #   resp.activities[0].progress #=> Integer
    #   resp.activities[0].details #=> String
    #   resp.activities[0].auto_scaling_group_state #=> String
    #   resp.activities[0].auto_scaling_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/EnterStandby AWS API Documentation
    #
    # @overload enter_standby(params = {})
    # @param [Hash] params ({})
    def enter_standby(params = {}, options = {})
      req = build_request(:enter_standby, params)
      req.send_request(options)
    end

    # Executes the specified policy. This can be useful for testing the
    # design of your scaling policy.
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :policy_name
    #   The name or ARN of the policy.
    #
    # @option params [Boolean] :honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before executing the policy.
    #
    #   Valid only if the policy type is `SimpleScaling`. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #
    # @option params [Float] :metric_value
    #   The metric value to compare to `BreachThreshold`. This enables you to
    #   execute a policy of type `StepScaling` and determine which step
    #   adjustment to use. For example, if the breach threshold is 50 and you
    #   want to use a step adjustment with a lower bound of 0 and an upper
    #   bound of 10, you can set the metric value to 59.
    #
    #   If you specify a metric value that doesn't correspond to a step
    #   adjustment for the policy, the call returns an error.
    #
    #   Required if the policy type is `StepScaling` and not supported
    #   otherwise.
    #
    # @option params [Float] :breach_threshold
    #   The breach threshold for the alarm.
    #
    #   Required if the policy type is `StepScaling` and not supported
    #   otherwise.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To execute a scaling policy
    #
    #   # This example executes the specified policy.
    #
    #   resp = client.execute_policy({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     breach_threshold: 50.0, 
    #     metric_value: 59.0, 
    #     policy_name: "my-step-scale-out-policy", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_policy({
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #     policy_name: "ResourceName", # required
    #     honor_cooldown: false,
    #     metric_value: 1.0,
    #     breach_threshold: 1.0,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExecutePolicy AWS API Documentation
    #
    # @overload execute_policy(params = {})
    # @param [Hash] params ({})
    def execute_policy(params = {}, options = {})
      req = build_request(:execute_policy, params)
      req.send_request(options)
    end

    # Moves the specified instances out of the standby state.
    #
    # After you put the instances back in service, the desired capacity is
    # incremented.
    #
    # For more information, see [Temporarily removing instances from your
    # Auto Scaling group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enter-exit-standby.html
    #
    # @option params [Array<String>] :instance_ids
    #   The IDs of the instances. You can specify up to 20 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @return [Types::ExitStandbyAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExitStandbyAnswer#activities #activities} => Array&lt;Types::Activity&gt;
    #
    #
    # @example Example: To move instances out of standby mode
    #
    #   # This example moves the specified instance out of standby mode.
    #
    #   resp = client.exit_standby({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     activities: [
    #       {
    #         activity_id: "142928e1-a2dc-453a-9b24-b85ad6735928", 
    #         auto_scaling_group_name: "my-auto-scaling-group", 
    #         cause: "At 2015-04-12T15:14:29Z instance i-93633f9b was moved out of standby in response to a user request, increasing the capacity from 1 to 2.", 
    #         description: "Moving EC2 instance out of Standby: i-93633f9b", 
    #         details: "details", 
    #         progress: 30, 
    #         start_time: Time.parse("2015-04-12T15:14:29.886Z"), 
    #         status_code: "PreInService", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.exit_standby({
    #     instance_ids: ["XmlStringMaxLen19"],
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activities #=> Array
    #   resp.activities[0].activity_id #=> String
    #   resp.activities[0].auto_scaling_group_name #=> String
    #   resp.activities[0].description #=> String
    #   resp.activities[0].cause #=> String
    #   resp.activities[0].start_time #=> Time
    #   resp.activities[0].end_time #=> Time
    #   resp.activities[0].status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"
    #   resp.activities[0].status_message #=> String
    #   resp.activities[0].progress #=> Integer
    #   resp.activities[0].details #=> String
    #   resp.activities[0].auto_scaling_group_state #=> String
    #   resp.activities[0].auto_scaling_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ExitStandby AWS API Documentation
    #
    # @overload exit_standby(params = {})
    # @param [Hash] params ({})
    def exit_standby(params = {}, options = {})
      req = build_request(:exit_standby, params)
      req.send_request(options)
    end

    # Retrieves the forecast data for a predictive scaling policy.
    #
    # Load forecasts are predictions of the hourly load values using
    # historical load data from CloudWatch and an analysis of historical
    # trends. Capacity forecasts are represented as predicted values for the
    # minimum capacity that is needed on an hourly basis, based on the
    # hourly load forecast.
    #
    # A minimum of 24 hours of data is required to create the initial
    # forecasts. However, having a full 14 days of historical data results
    # in more accurate forecasts.
    #
    # For more information, see [Predictive scaling for Amazon EC2 Auto
    # Scaling][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :start_time
    #   The inclusive start time of the time range for the forecast data to
    #   get. At most, the date and time can be one year before the current
    #   date and time.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :end_time
    #   The exclusive end time of the time range for the forecast data to get.
    #   The maximum time duration between the start and end time is 30 days.
    #
    #   Although this parameter can accept a date and time that is more than
    #   two days in the future, the availability of forecast data has limits.
    #   Amazon EC2 Auto Scaling only issues forecasts for periods of two days
    #   in advance.
    #
    # @return [Types::GetPredictiveScalingForecastAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPredictiveScalingForecastAnswer#load_forecast #load_forecast} => Array&lt;Types::LoadForecast&gt;
    #   * {Types::GetPredictiveScalingForecastAnswer#capacity_forecast #capacity_forecast} => Types::CapacityForecast
    #   * {Types::GetPredictiveScalingForecastAnswer#update_time #update_time} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_predictive_scaling_forecast({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     policy_name: "XmlStringMaxLen255", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.load_forecast #=> Array
    #   resp.load_forecast[0].timestamps #=> Array
    #   resp.load_forecast[0].timestamps[0] #=> Time
    #   resp.load_forecast[0].values #=> Array
    #   resp.load_forecast[0].values[0] #=> Float
    #   resp.load_forecast[0].metric_specification.target_value #=> Float
    #   resp.load_forecast[0].metric_specification.predefined_metric_pair_specification.predefined_metric_type #=> String, one of "ASGCPUUtilization", "ASGNetworkIn", "ASGNetworkOut", "ALBRequestCount"
    #   resp.load_forecast[0].metric_specification.predefined_metric_pair_specification.resource_label #=> String
    #   resp.load_forecast[0].metric_specification.predefined_scaling_metric_specification.predefined_metric_type #=> String, one of "ASGAverageCPUUtilization", "ASGAverageNetworkIn", "ASGAverageNetworkOut", "ALBRequestCountPerTarget"
    #   resp.load_forecast[0].metric_specification.predefined_scaling_metric_specification.resource_label #=> String
    #   resp.load_forecast[0].metric_specification.predefined_load_metric_specification.predefined_metric_type #=> String, one of "ASGTotalCPUUtilization", "ASGTotalNetworkIn", "ASGTotalNetworkOut", "ALBTargetGroupRequestCount"
    #   resp.load_forecast[0].metric_specification.predefined_load_metric_specification.resource_label #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries #=> Array
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].id #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].expression #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].metric_stat.unit #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].label #=> String
    #   resp.load_forecast[0].metric_specification.customized_scaling_metric_specification.metric_data_queries[0].return_data #=> Boolean
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries #=> Array
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].id #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].expression #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].metric_stat.unit #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].label #=> String
    #   resp.load_forecast[0].metric_specification.customized_load_metric_specification.metric_data_queries[0].return_data #=> Boolean
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries #=> Array
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].id #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].expression #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.namespace #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.metric_name #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions #=> Array
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].name #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].metric_stat.metric.dimensions[0].value #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].metric_stat.stat #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].metric_stat.unit #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].label #=> String
    #   resp.load_forecast[0].metric_specification.customized_capacity_metric_specification.metric_data_queries[0].return_data #=> Boolean
    #   resp.capacity_forecast.timestamps #=> Array
    #   resp.capacity_forecast.timestamps[0] #=> Time
    #   resp.capacity_forecast.values #=> Array
    #   resp.capacity_forecast.values[0] #=> Float
    #   resp.update_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/GetPredictiveScalingForecast AWS API Documentation
    #
    # @overload get_predictive_scaling_forecast(params = {})
    # @param [Hash] params ({})
    def get_predictive_scaling_forecast(params = {}, options = {})
      req = build_request(:get_predictive_scaling_forecast, params)
      req.send_request(options)
    end

    # Creates or updates a lifecycle hook for the specified Auto Scaling
    # group.
    #
    # Lifecycle hooks let you create solutions that are aware of events in
    # the Auto Scaling instance lifecycle, and then perform a custom action
    # on instances when the corresponding lifecycle event occurs.
    #
    # This step is a part of the procedure for adding a lifecycle hook to an
    # Auto Scaling group:
    #
    # 1.  (Optional) Create a launch template or launch configuration with a
    #     user data script that runs while an instance is in a wait state
    #     due to a lifecycle hook.
    #
    # 2.  (Optional) Create a Lambda function and a rule that allows Amazon
    #     EventBridge to invoke your Lambda function when an instance is put
    #     into a wait state due to a lifecycle hook.
    #
    # 3.  (Optional) Create a notification target and an IAM role. The
    #     target can be either an Amazon SQS queue or an Amazon SNS topic.
    #     The role allows Amazon EC2 Auto Scaling to publish lifecycle
    #     notifications to the target.
    #
    # 4.  **Create the lifecycle hook. Specify whether the hook is used when
    #     the instances launch or terminate.**
    #
    # 5.  If you need more time, record the lifecycle action heartbeat to
    #     keep the instance in a wait state using the
    #     RecordLifecycleActionHeartbeat API call.
    #
    # 6.  If you finish before the timeout period ends, send a callback by
    #     using the CompleteLifecycleAction API call.
    #
    # For more information, see [Amazon EC2 Auto Scaling lifecycle hooks][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # If you exceed your maximum limit of lifecycle hooks, which by default
    # is 50 per Auto Scaling group, the call fails.
    #
    # You can view the lifecycle hooks for an Auto Scaling group using the
    # DescribeLifecycleHooks API call. If you are no longer using a
    # lifecycle hook, you can delete it by calling the DeleteLifecycleHook
    # API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html
    #
    # @option params [required, String] :lifecycle_hook_name
    #   The name of the lifecycle hook.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :lifecycle_transition
    #   The lifecycle transition. For Auto Scaling groups, there are two major
    #   lifecycle transitions.
    #
    #   * To create a lifecycle hook for scale-out events, specify
    #     `autoscaling:EC2_INSTANCE_LAUNCHING`.
    #
    #   * To create a lifecycle hook for scale-in events, specify
    #     `autoscaling:EC2_INSTANCE_TERMINATING`.
    #
    #   Required for new lifecycle hooks, but optional when updating existing
    #   hooks.
    #
    # @option params [String] :role_arn
    #   The ARN of the IAM role that allows the Auto Scaling group to publish
    #   to the specified notification target.
    #
    #   Valid only if the notification target is an Amazon SNS topic or an
    #   Amazon SQS queue. Required for new lifecycle hooks, but optional when
    #   updating existing hooks.
    #
    # @option params [String] :notification_target_arn
    #   The Amazon Resource Name (ARN) of the notification target that Amazon
    #   EC2 Auto Scaling uses to notify you when an instance is in a wait
    #   state for the lifecycle hook. You can specify either an Amazon SNS
    #   topic or an Amazon SQS queue.
    #
    #   If you specify an empty string, this overrides the current ARN.
    #
    #   This operation uses the JSON format when sending notifications to an
    #   Amazon SQS queue, and an email key-value pair format when sending
    #   notifications to an Amazon SNS topic.
    #
    #   When you specify a notification target, Amazon EC2 Auto Scaling sends
    #   it a test message. Test messages contain the following additional
    #   key-value pair: `"Event": "autoscaling:TEST_NOTIFICATION"`.
    #
    # @option params [String] :notification_metadata
    #   Additional information that you want to include any time Amazon EC2
    #   Auto Scaling sends a message to the notification target.
    #
    # @option params [Integer] :heartbeat_timeout
    #   The maximum time, in seconds, that can elapse before the lifecycle
    #   hook times out. The range is from `30` to `7200` seconds. The default
    #   value is `3600` seconds (1 hour).
    #
    # @option params [String] :default_result
    #   The action the Auto Scaling group takes when the lifecycle hook
    #   timeout elapses or if an unexpected failure occurs. The default value
    #   is `ABANDON`.
    #
    #   Valid values: `CONTINUE` \| `ABANDON`
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a launch lifecycle hook
    #
    #   # This example creates a lifecycle hook for instance launch.
    #
    #   resp = client.put_lifecycle_hook({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     default_result: "CONTINUE", 
    #     heartbeat_timeout: 300, 
    #     lifecycle_hook_name: "my-launch-lifecycle-hook", 
    #     lifecycle_transition: "autoscaling:EC2_INSTANCE_LAUNCHING", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_hook({
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     lifecycle_transition: "LifecycleTransition",
    #     role_arn: "XmlStringMaxLen255",
    #     notification_target_arn: "NotificationTargetResourceName",
    #     notification_metadata: "XmlStringMaxLen1023",
    #     heartbeat_timeout: 1,
    #     default_result: "LifecycleActionResult",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutLifecycleHook AWS API Documentation
    #
    # @overload put_lifecycle_hook(params = {})
    # @param [Hash] params ({})
    def put_lifecycle_hook(params = {}, options = {})
      req = build_request(:put_lifecycle_hook, params)
      req.send_request(options)
    end

    # Configures an Auto Scaling group to send notifications when specified
    # events take place. Subscribers to the specified topic can have
    # messages delivered to an endpoint such as a web server or an email
    # address.
    #
    # This configuration overwrites any existing configuration.
    #
    # For more information, see [Getting Amazon SNS notifications when your
    # Auto Scaling group scales][1] in the *Amazon EC2 Auto Scaling User
    # Guide*.
    #
    # If you exceed your maximum limit of SNS topics, which is 10 per Auto
    # Scaling group, the call fails.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ASGettingNotifications.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic.
    #
    # @option params [required, Array<String>] :notification_types
    #   The type of event that causes the notification to be sent. To query
    #   the notification types supported by Amazon EC2 Auto Scaling, call the
    #   DescribeAutoScalingNotificationTypes API.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add an Auto Scaling notification
    #
    #   # This example adds the specified notification to the specified Auto Scaling group.
    #
    #   resp = client.put_notification_configuration({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     notification_types: [
    #       "autoscaling:TEST_NOTIFICATION", 
    #     ], 
    #     topic_arn: "arn:aws:sns:us-west-2:123456789012:my-sns-topic", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_notification_configuration({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     topic_arn: "XmlStringMaxLen255", # required
    #     notification_types: ["XmlStringMaxLen255"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutNotificationConfiguration AWS API Documentation
    #
    # @overload put_notification_configuration(params = {})
    # @param [Hash] params ({})
    def put_notification_configuration(params = {}, options = {})
      req = build_request(:put_notification_configuration, params)
      req.send_request(options)
    end

    # Creates or updates a scaling policy for an Auto Scaling group. Scaling
    # policies are used to scale an Auto Scaling group based on configurable
    # metrics. If no policies are defined, the dynamic scaling and
    # predictive scaling features are not used.
    #
    # For more information about using dynamic scaling, see [Target tracking
    # scaling policies][1] and [Step and simple scaling policies][2] in the
    # *Amazon EC2 Auto Scaling User Guide*.
    #
    # For more information about using predictive scaling, see [Predictive
    # scaling for Amazon EC2 Auto Scaling][3] in the *Amazon EC2 Auto
    # Scaling User Guide*.
    #
    # You can view the scaling policies for an Auto Scaling group using the
    # DescribePolicies API call. If you are no longer using a scaling
    # policy, you can delete it by calling the DeletePolicy API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-target-tracking.html
    # [2]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html
    # [3]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-predictive-scaling.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @option params [String] :policy_type
    #   One of the following policy types:
    #
    #   * `TargetTrackingScaling`
    #
    #   * `StepScaling`
    #
    #   * `SimpleScaling` (default)
    #
    #   * `PredictiveScaling`
    #
    # @option params [String] :adjustment_type
    #   Specifies how the scaling adjustment is interpreted (for example, an
    #   absolute number or a percentage). The valid values are
    #   `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
    #
    #   Required if the policy type is `StepScaling` or `SimpleScaling`. For
    #   more information, see [Scaling adjustment types][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment
    #
    # @option params [Integer] :min_adjustment_step
    #   Available for backward compatibility. Use `MinAdjustmentMagnitude`
    #   instead.
    #
    # @option params [Integer] :min_adjustment_magnitude
    #   The minimum value to scale by when the adjustment type is
    #   `PercentChangeInCapacity`. For example, suppose that you create a step
    #   scaling policy to scale out an Auto Scaling group by 25 percent and
    #   you specify a `MinAdjustmentMagnitude` of 2. If the group has 4
    #   instances and the scaling policy is performed, 25 percent of 4 is 1.
    #   However, because you specified a `MinAdjustmentMagnitude` of 2, Amazon
    #   EC2 Auto Scaling scales out the group by 2 instances.
    #
    #   Valid only if the policy type is `StepScaling` or `SimpleScaling`. For
    #   more information, see [Scaling adjustment types][1] in the *Amazon EC2
    #   Auto Scaling User Guide*.
    #
    #   <note markdown="1"> Some Auto Scaling groups use instance weights. In this case, set the
    #   `MinAdjustmentMagnitude` to a value that is at least as large as your
    #   largest instance weight.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-scaling-adjustment
    #
    # @option params [Integer] :scaling_adjustment
    #   The amount by which to scale, based on the specified adjustment type.
    #   A positive value adds to the current capacity while a negative number
    #   removes from the current capacity. For exact capacity, you must
    #   specify a positive value.
    #
    #   Required if the policy type is `SimpleScaling`. (Not used with any
    #   other policy type.)
    #
    # @option params [Integer] :cooldown
    #   A cooldown period, in seconds, that applies to a specific simple
    #   scaling policy. When a cooldown period is specified here, it overrides
    #   the default cooldown.
    #
    #   Valid only if the policy type is `SimpleScaling`. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Default: None
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #
    # @option params [String] :metric_aggregation_type
    #   The aggregation type for the CloudWatch metrics. The valid values are
    #   `Minimum`, `Maximum`, and `Average`. If the aggregation type is null,
    #   the value is treated as `Average`.
    #
    #   Valid only if the policy type is `StepScaling`.
    #
    # @option params [Array<Types::StepAdjustment>] :step_adjustments
    #   A set of adjustments that enable you to scale based on the size of the
    #   alarm breach.
    #
    #   Required if the policy type is `StepScaling`. (Not used with any other
    #   policy type.)
    #
    # @option params [Integer] :estimated_instance_warmup
    #   *Not needed if the default instance warmup is defined for the group.*
    #
    #   The estimated time, in seconds, until a newly launched instance can
    #   contribute to the CloudWatch metrics. This warm-up period applies to
    #   instances launched due to a specific target tracking or step scaling
    #   policy. When a warm-up period is specified here, it overrides the
    #   default instance warmup.
    #
    #   Valid only if the policy type is `TargetTrackingScaling` or
    #   `StepScaling`.
    #
    #   <note markdown="1"> The default is to use the value for the default instance warmup
    #   defined for the group. If default instance warmup is null, then
    #   `EstimatedInstanceWarmup` falls back to the value of default cooldown.
    #
    #    </note>
    #
    # @option params [Types::TargetTrackingConfiguration] :target_tracking_configuration
    #   A target tracking scaling policy. Provides support for predefined or
    #   custom metrics.
    #
    #   The following predefined metrics are available:
    #
    #   * `ASGAverageCPUUtilization`
    #
    #   * `ASGAverageNetworkIn`
    #
    #   * `ASGAverageNetworkOut`
    #
    #   * `ALBRequestCountPerTarget`
    #
    #   If you specify `ALBRequestCountPerTarget` for the metric, you must
    #   specify the `ResourceLabel` property with the
    #   `PredefinedMetricSpecification`.
    #
    #   For more information, see [TargetTrackingConfiguration][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   Required if the policy type is `TargetTrackingScaling`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_TargetTrackingConfiguration.html
    #
    # @option params [Boolean] :enabled
    #   Indicates whether the scaling policy is enabled or disabled. The
    #   default is enabled. For more information, see [Disabling a scaling
    #   policy for an Auto Scaling group][1] in the *Amazon EC2 Auto Scaling
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-enable-disable-scaling-policy.html
    #
    # @option params [Types::PredictiveScalingConfiguration] :predictive_scaling_configuration
    #   A predictive scaling policy. Provides support for predefined and
    #   custom metrics.
    #
    #   Predefined metrics include CPU utilization, network in/out, and the
    #   Application Load Balancer request count.
    #
    #   For more information, see [PredictiveScalingConfiguration][1] in the
    #   *Amazon EC2 Auto Scaling API Reference*.
    #
    #   Required if the policy type is `PredictiveScaling`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PredictiveScalingConfiguration.html
    #
    # @return [Types::PolicyARNType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PolicyARNType#policy_arn #policy_arn} => String
    #   * {Types::PolicyARNType#alarms #alarms} => Array&lt;Types::Alarm&gt;
    #
    #
    # @example Example: To add a scaling policy to an Auto Scaling group
    #
    #   # This example adds the specified policy to the specified Auto Scaling group.
    #
    #   resp = client.put_scaling_policy({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     policy_name: "alb1000-target-tracking-scaling-policy", 
    #     policy_type: "TargetTrackingScaling", 
    #     target_tracking_configuration: {
    #       predefined_metric_specification: {
    #         predefined_metric_type: "ALBRequestCountPerTarget", 
    #         resource_label: "app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff", 
    #       }, 
    #       target_value: 1000.0, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     alarms: [
    #       {
    #         alarm_arn: "arn:aws:cloudwatch:us-west-2:123456789012:alarm:TargetTracking-my-asg-AlarmHigh-fc0e4183-23ac-497e-9992-691c9980c38e", 
    #         alarm_name: "TargetTracking-my-asg-AlarmHigh-fc0e4183-23ac-497e-9992-691c9980c38e", 
    #       }, 
    #       {
    #         alarm_arn: "arn:aws:cloudwatch:us-west-2:123456789012:alarm:TargetTracking-my-asg-AlarmLow-61a39305-ed0c-47af-bd9e-471a352ee1a2", 
    #         alarm_name: "TargetTracking-my-asg-AlarmLow-61a39305-ed0c-47af-bd9e-471a352ee1a2", 
    #       }, 
    #     ], 
    #     policy_arn: "arn:aws:autoscaling:us-west-2:123456789012:scalingPolicy:228f02c2-c665-4bfd-aaac-8b04080bea3c:autoScalingGroupName/my-auto-scaling-group:policyName/alb1000-target-tracking-scaling-policy", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     policy_name: "XmlStringMaxLen255", # required
    #     policy_type: "XmlStringMaxLen64",
    #     adjustment_type: "XmlStringMaxLen255",
    #     min_adjustment_step: 1,
    #     min_adjustment_magnitude: 1,
    #     scaling_adjustment: 1,
    #     cooldown: 1,
    #     metric_aggregation_type: "XmlStringMaxLen32",
    #     step_adjustments: [
    #       {
    #         metric_interval_lower_bound: 1.0,
    #         metric_interval_upper_bound: 1.0,
    #         scaling_adjustment: 1, # required
    #       },
    #     ],
    #     estimated_instance_warmup: 1,
    #     target_tracking_configuration: {
    #       predefined_metric_specification: {
    #         predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #         resource_label: "XmlStringMaxLen1023",
    #       },
    #       customized_metric_specification: {
    #         metric_name: "MetricName",
    #         namespace: "MetricNamespace",
    #         dimensions: [
    #           {
    #             name: "MetricDimensionName", # required
    #             value: "MetricDimensionValue", # required
    #           },
    #         ],
    #         statistic: "Average", # accepts Average, Minimum, Maximum, SampleCount, Sum
    #         unit: "MetricUnit",
    #         metrics: [
    #           {
    #             id: "XmlStringMaxLen255", # required
    #             expression: "XmlStringMaxLen2047",
    #             metric_stat: {
    #               metric: { # required
    #                 namespace: "MetricNamespace", # required
    #                 metric_name: "MetricName", # required
    #                 dimensions: [
    #                   {
    #                     name: "MetricDimensionName", # required
    #                     value: "MetricDimensionValue", # required
    #                   },
    #                 ],
    #               },
    #               stat: "XmlStringMetricStat", # required
    #               unit: "MetricUnit",
    #             },
    #             label: "XmlStringMetricLabel",
    #             return_data: false,
    #           },
    #         ],
    #       },
    #       target_value: 1.0, # required
    #       disable_scale_in: false,
    #     },
    #     enabled: false,
    #     predictive_scaling_configuration: {
    #       metric_specifications: [ # required
    #         {
    #           target_value: 1.0, # required
    #           predefined_metric_pair_specification: {
    #             predefined_metric_type: "ASGCPUUtilization", # required, accepts ASGCPUUtilization, ASGNetworkIn, ASGNetworkOut, ALBRequestCount
    #             resource_label: "XmlStringMaxLen1023",
    #           },
    #           predefined_scaling_metric_specification: {
    #             predefined_metric_type: "ASGAverageCPUUtilization", # required, accepts ASGAverageCPUUtilization, ASGAverageNetworkIn, ASGAverageNetworkOut, ALBRequestCountPerTarget
    #             resource_label: "XmlStringMaxLen1023",
    #           },
    #           predefined_load_metric_specification: {
    #             predefined_metric_type: "ASGTotalCPUUtilization", # required, accepts ASGTotalCPUUtilization, ASGTotalNetworkIn, ASGTotalNetworkOut, ALBTargetGroupRequestCount
    #             resource_label: "XmlStringMaxLen1023",
    #           },
    #           customized_scaling_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       },
    #                     ],
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit",
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false,
    #               },
    #             ],
    #           },
    #           customized_load_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       },
    #                     ],
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit",
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false,
    #               },
    #             ],
    #           },
    #           customized_capacity_metric_specification: {
    #             metric_data_queries: [ # required
    #               {
    #                 id: "XmlStringMaxLen255", # required
    #                 expression: "XmlStringMaxLen1023",
    #                 metric_stat: {
    #                   metric: { # required
    #                     namespace: "MetricNamespace", # required
    #                     metric_name: "MetricName", # required
    #                     dimensions: [
    #                       {
    #                         name: "MetricDimensionName", # required
    #                         value: "MetricDimensionValue", # required
    #                       },
    #                     ],
    #                   },
    #                   stat: "XmlStringMetricStat", # required
    #                   unit: "MetricUnit",
    #                 },
    #                 label: "XmlStringMetricLabel",
    #                 return_data: false,
    #               },
    #             ],
    #           },
    #         },
    #       ],
    #       mode: "ForecastAndScale", # accepts ForecastAndScale, ForecastOnly
    #       scheduling_buffer_time: 1,
    #       max_capacity_breach_behavior: "HonorMaxCapacity", # accepts HonorMaxCapacity, IncreaseMaxCapacity
    #       max_capacity_buffer: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #   resp.alarms #=> Array
    #   resp.alarms[0].alarm_name #=> String
    #   resp.alarms[0].alarm_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutScalingPolicy AWS API Documentation
    #
    # @overload put_scaling_policy(params = {})
    # @param [Hash] params ({})
    def put_scaling_policy(params = {}, options = {})
      req = build_request(:put_scaling_policy, params)
      req.send_request(options)
    end

    # Creates or updates a scheduled scaling action for an Auto Scaling
    # group.
    #
    # For more information, see [Scheduled scaling][1] in the *Amazon EC2
    # Auto Scaling User Guide*.
    #
    # You can view the scheduled actions for an Auto Scaling group using the
    # DescribeScheduledActions API call. If you are no longer using a
    # scheduled action, you can delete it by calling the
    # DeleteScheduledAction API.
    #
    # If you try to schedule your action in the past, Amazon EC2 Auto
    # Scaling returns an error message.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/schedule_time.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, String] :scheduled_action_name
    #   The name of this scaling action.
    #
    # @option params [Time,DateTime,Date,Integer,String] :time
    #   This property is no longer used.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The date and time for this action to start, in YYYY-MM-DDThh:mm:ssZ
    #   format in UTC/GMT only and in quotes (for example,
    #   `"2021-06-01T00:00:00Z"`).
    #
    #   If you specify `Recurrence` and `StartTime`, Amazon EC2 Auto Scaling
    #   performs the action at this time, and then performs the action based
    #   on the specified recurrence.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The date and time for the recurring schedule to end, in UTC. For
    #   example, `"2021-06-01T00:00:00Z"`.
    #
    # @option params [String] :recurrence
    #   The recurring schedule for this action. This format consists of five
    #   fields separated by white spaces: \[Minute\] \[Hour\]
    #   \[Day\_of\_Month\] \[Month\_of\_Year\] \[Day\_of\_Week\]. The value
    #   must be in quotes (for example, `"30 0 1 1,6,12 *"`). For more
    #   information about this format, see [Crontab][1].
    #
    #   When `StartTime` and `EndTime` are specified with `Recurrence`, they
    #   form the boundaries of when the recurring action starts and stops.
    #
    #   Cron expressions use Universal Coordinated Time (UTC) by default.
    #
    #
    #
    #   [1]: http://crontab.org
    #
    # @option params [Integer] :min_size
    #   The minimum size of the Auto Scaling group.
    #
    # @option params [Integer] :max_size
    #   The maximum size of the Auto Scaling group.
    #
    # @option params [Integer] :desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling group
    #   after the scheduled action runs and the capacity it attempts to
    #   maintain. It can scale beyond this capacity if you add more scaling
    #   conditions.
    #
    #   <note markdown="1"> You must specify at least one of the following properties: `MaxSize`,
    #   `MinSize`, or `DesiredCapacity`.
    #
    #    </note>
    #
    # @option params [String] :time_zone
    #   Specifies the time zone for a cron expression. If a time zone is not
    #   provided, UTC is used by default.
    #
    #   Valid values are the canonical names of the IANA time zones, derived
    #   from the IANA Time Zone Database (such as `Etc/GMT+9` or
    #   `Pacific/Tahiti`). For more information, see
    #   [https://en.wikipedia.org/wiki/List\_of\_tz\_database\_time\_zones][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add a scheduled action to an Auto Scaling group
    #
    #   # This example adds the specified scheduled action to the specified Auto Scaling group.
    #
    #   resp = client.put_scheduled_update_group_action({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     desired_capacity: 4, 
    #     end_time: Time.parse("2014-05-12T08:00:00Z"), 
    #     max_size: 6, 
    #     min_size: 2, 
    #     scheduled_action_name: "my-scheduled-action", 
    #     start_time: Time.parse("2014-05-12T08:00:00Z"), 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scheduled_update_group_action({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scheduled_action_name: "XmlStringMaxLen255", # required
    #     time: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     recurrence: "XmlStringMaxLen255",
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     time_zone: "XmlStringMaxLen255",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutScheduledUpdateGroupAction AWS API Documentation
    #
    # @overload put_scheduled_update_group_action(params = {})
    # @param [Hash] params ({})
    def put_scheduled_update_group_action(params = {}, options = {})
      req = build_request(:put_scheduled_update_group_action, params)
      req.send_request(options)
    end

    # Creates or updates a warm pool for the specified Auto Scaling group. A
    # warm pool is a pool of pre-initialized EC2 instances that sits
    # alongside the Auto Scaling group. Whenever your application needs to
    # scale out, the Auto Scaling group can draw on the warm pool to meet
    # its new desired capacity. For more information and example
    # configurations, see [Warm pools for Amazon EC2 Auto Scaling][1] in the
    # *Amazon EC2 Auto Scaling User Guide*.
    #
    # This operation must be called from the Region in which the Auto
    # Scaling group was created. This operation cannot be called on an Auto
    # Scaling group that has a mixed instances policy or a launch template
    # or launch configuration that requests Spot Instances.
    #
    # You can view the instances in the warm pool using the DescribeWarmPool
    # API call. If you are no longer using a warm pool, you can delete it by
    # calling the DeleteWarmPool API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Integer] :max_group_prepared_capacity
    #   Specifies the maximum number of instances that are allowed to be in
    #   the warm pool or in any state except `Terminated` for the Auto Scaling
    #   group. This is an optional property. Specify it only if you do not
    #   want the warm pool size to be determined by the difference between the
    #   group's maximum capacity and its desired capacity.
    #
    #   If a value for `MaxGroupPreparedCapacity` is not specified, Amazon EC2
    #   Auto Scaling launches and maintains the difference between the
    #   group's maximum capacity and its desired capacity. If you specify a
    #   value for `MaxGroupPreparedCapacity`, Amazon EC2 Auto Scaling uses the
    #   difference between the `MaxGroupPreparedCapacity` and the desired
    #   capacity instead.
    #
    #    The size of the warm pool is dynamic. Only when
    #   `MaxGroupPreparedCapacity` and `MinSize` are set to the same value
    #   does the warm pool have an absolute size.
    #
    #   If the desired capacity of the Auto Scaling group is higher than the
    #   `MaxGroupPreparedCapacity`, the capacity of the warm pool is 0, unless
    #   you specify a value for `MinSize`. To remove a value that you
    #   previously set, include the property but specify -1 for the value.
    #
    # @option params [Integer] :min_size
    #   Specifies the minimum number of instances to maintain in the warm
    #   pool. This helps you to ensure that there is always a certain number
    #   of warmed instances available to handle traffic spikes. Defaults to 0
    #   if not specified.
    #
    # @option params [String] :pool_state
    #   Sets the instance state to transition to after the lifecycle actions
    #   are complete. Default is `Stopped`.
    #
    # @option params [Types::InstanceReusePolicy] :instance_reuse_policy
    #   Indicates whether instances in the Auto Scaling group can be returned
    #   to the warm pool on scale in. The default is to terminate instances in
    #   the Auto Scaling group when the group scales in.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To create a warm pool for an Auto Scaling group
    #
    #   # This example creates a warm pool for the specified Auto Scaling group.
    #
    #   resp = client.put_warm_pool({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_reuse_policy: {
    #       reuse_on_scale_in: true, 
    #     }, 
    #     min_size: 30, 
    #     pool_state: "Hibernated", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_warm_pool({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     max_group_prepared_capacity: 1,
    #     min_size: 1,
    #     pool_state: "Stopped", # accepts Stopped, Running, Hibernated
    #     instance_reuse_policy: {
    #       reuse_on_scale_in: false,
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/PutWarmPool AWS API Documentation
    #
    # @overload put_warm_pool(params = {})
    # @param [Hash] params ({})
    def put_warm_pool(params = {}, options = {})
      req = build_request(:put_warm_pool, params)
      req.send_request(options)
    end

    # Records a heartbeat for the lifecycle action associated with the
    # specified token or instance. This extends the timeout by the length of
    # time defined using the PutLifecycleHook API call.
    #
    # This step is a part of the procedure for adding a lifecycle hook to an
    # Auto Scaling group:
    #
    # 1.  (Optional) Create a launch template or launch configuration with a
    #     user data script that runs while an instance is in a wait state
    #     due to a lifecycle hook.
    #
    # 2.  (Optional) Create a Lambda function and a rule that allows Amazon
    #     EventBridge to invoke your Lambda function when an instance is put
    #     into a wait state due to a lifecycle hook.
    #
    # 3.  (Optional) Create a notification target and an IAM role. The
    #     target can be either an Amazon SQS queue or an Amazon SNS topic.
    #     The role allows Amazon EC2 Auto Scaling to publish lifecycle
    #     notifications to the target.
    #
    # 4.  Create the lifecycle hook. Specify whether the hook is used when
    #     the instances launch or terminate.
    #
    # 5.  **If you need more time, record the lifecycle action heartbeat to
    #     keep the instance in a wait state.**
    #
    # 6.  If you finish before the timeout period ends, send a callback by
    #     using the CompleteLifecycleAction API call.
    #
    # For more information, see [Amazon EC2 Auto Scaling lifecycle hooks][1]
    # in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html
    #
    # @option params [required, String] :lifecycle_hook_name
    #   The name of the lifecycle hook.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :lifecycle_action_token
    #   A token that uniquely identifies a specific lifecycle action
    #   associated with an instance. Amazon EC2 Auto Scaling sends this token
    #   to the notification target that you specified when you created the
    #   lifecycle hook.
    #
    # @option params [String] :instance_id
    #   The ID of the instance.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To record a lifecycle action heartbeat
    #
    #   # This example records a lifecycle action heartbeat to keep the instance in a pending state.
    #
    #   resp = client.record_lifecycle_action_heartbeat({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     lifecycle_action_token: "bcd2f1b8-9a78-44d3-8a7a-4dd07d7cf635", 
    #     lifecycle_hook_name: "my-lifecycle-hook", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.record_lifecycle_action_heartbeat({
    #     lifecycle_hook_name: "AsciiStringMaxLen255", # required
    #     auto_scaling_group_name: "ResourceName", # required
    #     lifecycle_action_token: "LifecycleActionToken",
    #     instance_id: "XmlStringMaxLen19",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RecordLifecycleActionHeartbeat AWS API Documentation
    #
    # @overload record_lifecycle_action_heartbeat(params = {})
    # @param [Hash] params ({})
    def record_lifecycle_action_heartbeat(params = {}, options = {})
      req = build_request(:record_lifecycle_action_heartbeat, params)
      req.send_request(options)
    end

    # Resumes the specified suspended auto scaling processes, or all
    # suspended process, for the specified Auto Scaling group.
    #
    # For more information, see [Suspending and resuming scaling
    # processes][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :scaling_processes
    #   One or more of the following processes:
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `AddToLoadBalancer`
    #
    #   * `AlarmNotification`
    #
    #   * `AZRebalance`
    #
    #   * `HealthCheck`
    #
    #   * `InstanceRefresh`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `ScheduledActions`
    #
    #   If you omit this property, all processes are specified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To resume Auto Scaling processes
    #
    #   # This example resumes the specified suspended scaling process for the specified Auto Scaling group.
    #
    #   resp = client.resume_processes({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     scaling_processes: [
    #       "AlarmNotification", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_processes({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scaling_processes: ["XmlStringMaxLen255"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/ResumeProcesses AWS API Documentation
    #
    # @overload resume_processes(params = {})
    # @param [Hash] params ({})
    def resume_processes(params = {}, options = {})
      req = build_request(:resume_processes, params)
      req.send_request(options)
    end

    # Cancels an instance refresh that is in progress and rolls back any
    # changes that it made. Amazon EC2 Auto Scaling replaces any instances
    # that were replaced during the instance refresh. This restores your
    # Auto Scaling group to the configuration that it was using before the
    # start of the instance refresh.
    #
    # This operation is part of the [instance refresh feature][1] in Amazon
    # EC2 Auto Scaling, which helps you update instances in your Auto
    # Scaling group after you make configuration changes.
    #
    # A rollback is not supported in the following situations:
    #
    # * There is no desired configuration specified for the instance
    #   refresh.
    #
    # * The Auto Scaling group has a launch template that uses an Amazon Web
    #   Services Systems Manager parameter instead of an AMI ID for the
    #   `ImageId` property.
    #
    # * The Auto Scaling group uses the launch template's `$Latest` or
    #   `$Default` version.
    #
    # When you receive a successful response from this operation, Amazon EC2
    # Auto Scaling immediately begins replacing instances. You can check the
    # status of this operation through the DescribeInstanceRefreshes API
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html
    #
    # @option params [String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @return [Types::RollbackInstanceRefreshAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RollbackInstanceRefreshAnswer#instance_refresh_id #instance_refresh_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rollback_instance_refresh({
    #     auto_scaling_group_name: "XmlStringMaxLen255",
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_refresh_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/RollbackInstanceRefresh AWS API Documentation
    #
    # @overload rollback_instance_refresh(params = {})
    # @param [Hash] params ({})
    def rollback_instance_refresh(params = {}, options = {})
      req = build_request(:rollback_instance_refresh, params)
      req.send_request(options)
    end

    # Sets the size of the specified Auto Scaling group.
    #
    # If a scale-in activity occurs as a result of a new `DesiredCapacity`
    # value that is lower than the current size of the group, the Auto
    # Scaling group uses its termination policy to determine which instances
    # to terminate.
    #
    # For more information, see [Manual scaling][1] in the *Amazon EC2 Auto
    # Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-manual-scaling.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Integer] :desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling group
    #   after this operation completes and the capacity it attempts to
    #   maintain.
    #
    # @option params [Boolean] :honor_cooldown
    #   Indicates whether Amazon EC2 Auto Scaling waits for the cooldown
    #   period to complete before initiating a scaling activity to set your
    #   Auto Scaling group to its new capacity. By default, Amazon EC2 Auto
    #   Scaling does not honor the cooldown period during manual scaling
    #   activities.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To set the desired capacity for an Auto Scaling group
    #
    #   # This example sets the desired capacity for the specified Auto Scaling group.
    #
    #   resp = client.set_desired_capacity({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     desired_capacity: 2, 
    #     honor_cooldown: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_desired_capacity({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     desired_capacity: 1, # required
    #     honor_cooldown: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetDesiredCapacity AWS API Documentation
    #
    # @overload set_desired_capacity(params = {})
    # @param [Hash] params ({})
    def set_desired_capacity(params = {}, options = {})
      req = build_request(:set_desired_capacity, params)
      req.send_request(options)
    end

    # Sets the health status of the specified instance.
    #
    # For more information, see [Health checks for Auto Scaling
    # instances][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, String] :health_status
    #   The health status of the instance. Set to `Healthy` to have the
    #   instance remain in service. Set to `Unhealthy` to have the instance be
    #   out of service. Amazon EC2 Auto Scaling terminates and replaces the
    #   unhealthy instance.
    #
    # @option params [Boolean] :should_respect_grace_period
    #   If the Auto Scaling group of the specified instance has a
    #   `HealthCheckGracePeriod` specified for the group, by default, this
    #   call respects the grace period. Set this to `False`, to have the call
    #   not respect the grace period associated with the group.
    #
    #   For more information about the health check grace period, see
    #   [CreateAutoScalingGroup][1] in the *Amazon EC2 Auto Scaling API
    #   Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To set the health status of an instance
    #
    #   # This example sets the health status of the specified instance to Unhealthy.
    #
    #   resp = client.set_instance_health({
    #     health_status: "Unhealthy", 
    #     instance_id: "i-93633f9b", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_instance_health({
    #     instance_id: "XmlStringMaxLen19", # required
    #     health_status: "XmlStringMaxLen32", # required
    #     should_respect_grace_period: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceHealth AWS API Documentation
    #
    # @overload set_instance_health(params = {})
    # @param [Hash] params ({})
    def set_instance_health(params = {}, options = {})
      req = build_request(:set_instance_health, params)
      req.send_request(options)
    end

    # Updates the instance protection settings of the specified instances.
    # This operation cannot be called on instances in a warm pool.
    #
    # For more information about preventing instances that are part of an
    # Auto Scaling group from terminating on scale in, see [Using instance
    # scale-in protection][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    # If you exceed your maximum limit of instance IDs, which is 50 per Auto
    # Scaling group, the call fails.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
    #
    # @option params [required, Array<String>] :instance_ids
    #   One or more instance IDs. You can specify up to 50 instances.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [required, Boolean] :protected_from_scale_in
    #   Indicates whether the instance is protected from termination by Amazon
    #   EC2 Auto Scaling when scaling in.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To enable instance protection for an instance
    #
    #   # This example enables instance protection for the specified instance.
    #
    #   resp = client.set_instance_protection({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #     protected_from_scale_in: true, 
    #   })
    #
    # @example Example: To disable instance protection for an instance
    #
    #   # This example disables instance protection for the specified instance.
    #
    #   resp = client.set_instance_protection({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     instance_ids: [
    #       "i-93633f9b", 
    #     ], 
    #     protected_from_scale_in: false, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_instance_protection({
    #     instance_ids: ["XmlStringMaxLen19"], # required
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     protected_from_scale_in: false, # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SetInstanceProtection AWS API Documentation
    #
    # @overload set_instance_protection(params = {})
    # @param [Hash] params ({})
    def set_instance_protection(params = {}, options = {})
      req = build_request(:set_instance_protection, params)
      req.send_request(options)
    end

    # Starts an instance refresh. During an instance refresh, Amazon EC2
    # Auto Scaling performs a rolling update of instances in an Auto Scaling
    # group. Instances are terminated first and then replaced, which
    # temporarily reduces the capacity available within your Auto Scaling
    # group.
    #
    # This operation is part of the [instance refresh feature][1] in Amazon
    # EC2 Auto Scaling, which helps you update instances in your Auto
    # Scaling group. This feature is helpful, for example, when you have a
    # new AMI or a new user data script. You just need to create a new
    # launch template that specifies the new AMI or user data script. Then
    # start an instance refresh to immediately begin the process of updating
    # instances in the group.
    #
    # If successful, the request's response contains a unique ID that you
    # can use to track the progress of the instance refresh. To query its
    # status, call the DescribeInstanceRefreshes API. To describe the
    # instance refreshes that have already run, call the
    # DescribeInstanceRefreshes API. To cancel an instance refresh that is
    # in progress, use the CancelInstanceRefresh API.
    #
    # An instance refresh might fail for several reasons, such as EC2 launch
    # failures, misconfigured health checks, or not ignoring or allowing the
    # termination of instances that are in `Standby` state or protected from
    # scale in. You can monitor for failed EC2 launches using the scaling
    # activities. To find the scaling activities, call the
    # DescribeScalingActivities API.
    #
    # If you enable auto rollback, your Auto Scaling group will be rolled
    # back automatically when the instance refresh fails. You can enable
    # this feature before starting an instance refresh by specifying the
    # `AutoRollback` property in the instance refresh preferences.
    # Otherwise, to roll back an instance refresh before it finishes, use
    # the RollbackInstanceRefresh API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-refresh.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :strategy
    #   The strategy to use for the instance refresh. The only valid value is
    #   `Rolling`.
    #
    # @option params [Types::DesiredConfiguration] :desired_configuration
    #   The desired configuration. For example, the desired configuration can
    #   specify a new launch template or a new version of the current launch
    #   template.
    #
    #   Once the instance refresh succeeds, Amazon EC2 Auto Scaling updates
    #   the settings of the Auto Scaling group to reflect the new desired
    #   configuration.
    #
    #   <note markdown="1"> When you specify a new launch template or a new version of the current
    #   launch template for your desired configuration, consider enabling the
    #   `SkipMatching` property in preferences. If it's enabled, Amazon EC2
    #   Auto Scaling skips replacing instances that already use the specified
    #   launch template and instance types. This can help you reduce the
    #   number of replacements that are required to apply updates.
    #
    #    </note>
    #
    # @option params [Types::RefreshPreferences] :preferences
    #   Sets your preferences for the instance refresh so that it performs as
    #   expected when you start it. Includes the instance warmup time, the
    #   minimum healthy percentage, and the behaviors that you want Amazon EC2
    #   Auto Scaling to use if instances that are in `Standby` state or
    #   protected from scale in are found. You can also choose to enable
    #   additional features, such as the following:
    #
    #   * Auto rollback
    #
    #   * Checkpoints
    #
    #   * Skip matching
    #
    # @return [Types::StartInstanceRefreshAnswer] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartInstanceRefreshAnswer#instance_refresh_id #instance_refresh_id} => String
    #
    #
    # @example Example: To start an instance refresh
    #
    #   # This example starts an instance refresh for the specified Auto Scaling group.
    #
    #   resp = client.start_instance_refresh({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     desired_configuration: {
    #       launch_template: {
    #         launch_template_name: "my-template-for-auto-scaling", 
    #         version: "$Latest", 
    #       }, 
    #     }, 
    #     preferences: {
    #       instance_warmup: 400, 
    #       min_healthy_percentage: 90, 
    #       skip_matching: true, 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     instance_refresh_id: "08b91cf7-8fa6-48af-b6a6-d227f40f1b9b", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_instance_refresh({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     strategy: "Rolling", # accepts Rolling
    #     desired_configuration: {
    #       launch_template: {
    #         launch_template_id: "XmlStringMaxLen255",
    #         launch_template_name: "LaunchTemplateName",
    #         version: "XmlStringMaxLen255",
    #       },
    #       mixed_instances_policy: {
    #         launch_template: {
    #           launch_template_specification: {
    #             launch_template_id: "XmlStringMaxLen255",
    #             launch_template_name: "LaunchTemplateName",
    #             version: "XmlStringMaxLen255",
    #           },
    #           overrides: [
    #             {
    #               instance_type: "XmlStringMaxLen255",
    #               weighted_capacity: "XmlStringMaxLen32",
    #               launch_template_specification: {
    #                 launch_template_id: "XmlStringMaxLen255",
    #                 launch_template_name: "LaunchTemplateName",
    #                 version: "XmlStringMaxLen255",
    #               },
    #               instance_requirements: {
    #                 v_cpu_count: { # required
    #                   min: 1, # required
    #                   max: 1,
    #                 },
    #                 memory_mi_b: { # required
    #                   min: 1, # required
    #                   max: 1,
    #                 },
    #                 cpu_manufacturers: ["intel"], # accepts intel, amd, amazon-web-services
    #                 memory_gi_b_per_v_cpu: {
    #                   min: 1.0,
    #                   max: 1.0,
    #                 },
    #                 excluded_instance_types: ["ExcludedInstance"],
    #                 instance_generations: ["current"], # accepts current, previous
    #                 spot_max_price_percentage_over_lowest_price: 1,
    #                 on_demand_max_price_percentage_over_lowest_price: 1,
    #                 bare_metal: "included", # accepts included, excluded, required
    #                 burstable_performance: "included", # accepts included, excluded, required
    #                 require_hibernate_support: false,
    #                 network_interface_count: {
    #                   min: 1,
    #                   max: 1,
    #                 },
    #                 local_storage: "included", # accepts included, excluded, required
    #                 local_storage_types: ["hdd"], # accepts hdd, ssd
    #                 total_local_storage_gb: {
    #                   min: 1.0,
    #                   max: 1.0,
    #                 },
    #                 baseline_ebs_bandwidth_mbps: {
    #                   min: 1,
    #                   max: 1,
    #                 },
    #                 accelerator_types: ["gpu"], # accepts gpu, fpga, inference
    #                 accelerator_count: {
    #                   min: 1,
    #                   max: 1,
    #                 },
    #                 accelerator_manufacturers: ["nvidia"], # accepts nvidia, amd, amazon-web-services, xilinx
    #                 accelerator_names: ["a100"], # accepts a100, v100, k80, t4, m60, radeon-pro-v520, vu9p
    #                 accelerator_total_memory_mi_b: {
    #                   min: 1,
    #                   max: 1,
    #                 },
    #                 network_bandwidth_gbps: {
    #                   min: 1.0,
    #                   max: 1.0,
    #                 },
    #                 allowed_instance_types: ["AllowedInstanceType"],
    #               },
    #             },
    #           ],
    #         },
    #         instances_distribution: {
    #           on_demand_allocation_strategy: "XmlString",
    #           on_demand_base_capacity: 1,
    #           on_demand_percentage_above_base_capacity: 1,
    #           spot_allocation_strategy: "XmlString",
    #           spot_instance_pools: 1,
    #           spot_max_price: "MixedInstanceSpotPrice",
    #         },
    #       },
    #     },
    #     preferences: {
    #       min_healthy_percentage: 1,
    #       instance_warmup: 1,
    #       checkpoint_percentages: [1],
    #       checkpoint_delay: 1,
    #       skip_matching: false,
    #       auto_rollback: false,
    #       scale_in_protected_instances: "Refresh", # accepts Refresh, Ignore, Wait
    #       standby_instances: "Terminate", # accepts Terminate, Ignore, Wait
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.instance_refresh_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/StartInstanceRefresh AWS API Documentation
    #
    # @overload start_instance_refresh(params = {})
    # @param [Hash] params ({})
    def start_instance_refresh(params = {}, options = {})
      req = build_request(:start_instance_refresh, params)
      req.send_request(options)
    end

    # Suspends the specified auto scaling processes, or all processes, for
    # the specified Auto Scaling group.
    #
    # If you suspend either the `Launch` or `Terminate` process types, it
    # can prevent other process types from functioning properly. For more
    # information, see [Suspending and resuming scaling processes][1] in the
    # *Amazon EC2 Auto Scaling User Guide*.
    #
    # To resume processes that have been suspended, call the ResumeProcesses
    # API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-suspend-resume-processes.html
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [Array<String>] :scaling_processes
    #   One or more of the following processes:
    #
    #   * `Launch`
    #
    #   * `Terminate`
    #
    #   * `AddToLoadBalancer`
    #
    #   * `AlarmNotification`
    #
    #   * `AZRebalance`
    #
    #   * `HealthCheck`
    #
    #   * `InstanceRefresh`
    #
    #   * `ReplaceUnhealthy`
    #
    #   * `ScheduledActions`
    #
    #   If you omit this property, all processes are specified.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To suspend Auto Scaling processes
    #
    #   # This example suspends the specified scaling process for the specified Auto Scaling group.
    #
    #   resp = client.suspend_processes({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     scaling_processes: [
    #       "AlarmNotification", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_processes({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     scaling_processes: ["XmlStringMaxLen255"],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/SuspendProcesses AWS API Documentation
    #
    # @overload suspend_processes(params = {})
    # @param [Hash] params ({})
    def suspend_processes(params = {}, options = {})
      req = build_request(:suspend_processes, params)
      req.send_request(options)
    end

    # Terminates the specified instance and optionally adjusts the desired
    # group size. This operation cannot be called on instances in a warm
    # pool.
    #
    # This call simply makes a termination request. The instance is not
    # terminated immediately. When an instance is terminated, the instance
    # status changes to `terminated`. You can't connect to or start an
    # instance after you've terminated it.
    #
    # If you do not specify the option to decrement the desired capacity,
    # Amazon EC2 Auto Scaling launches instances to replace the ones that
    # are terminated.
    #
    # By default, Amazon EC2 Auto Scaling balances instances across all
    # Availability Zones. If you decrement the desired capacity, your Auto
    # Scaling group can become unbalanced between Availability Zones. Amazon
    # EC2 Auto Scaling tries to rebalance the group, and rebalancing might
    # terminate instances in other zones. For more information, see
    # [Rebalancing activities][1] in the *Amazon EC2 Auto Scaling User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-benefits.html#AutoScalingBehavior.InstanceUsage
    #
    # @option params [required, String] :instance_id
    #   The ID of the instance.
    #
    # @option params [required, Boolean] :should_decrement_desired_capacity
    #   Indicates whether terminating the instance also decrements the size of
    #   the Auto Scaling group.
    #
    # @return [Types::ActivityType] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivityType#activity #activity} => Types::Activity
    #
    #
    # @example Example: To terminate an instance in an Auto Scaling group
    #
    #   # This example terminates the specified instance from the specified Auto Scaling group without updating the size of the
    #   # group. Auto Scaling launches a replacement instance after the specified instance terminates.
    #
    #   resp = client.terminate_instance_in_auto_scaling_group({
    #     instance_id: "i-93633f9b", 
    #     should_decrement_desired_capacity: false, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_instance_in_auto_scaling_group({
    #     instance_id: "XmlStringMaxLen19", # required
    #     should_decrement_desired_capacity: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.activity.activity_id #=> String
    #   resp.activity.auto_scaling_group_name #=> String
    #   resp.activity.description #=> String
    #   resp.activity.cause #=> String
    #   resp.activity.start_time #=> Time
    #   resp.activity.end_time #=> Time
    #   resp.activity.status_code #=> String, one of "PendingSpotBidPlacement", "WaitingForSpotInstanceRequestId", "WaitingForSpotInstanceId", "WaitingForInstanceId", "PreInService", "InProgress", "WaitingForELBConnectionDraining", "MidLifecycleAction", "WaitingForInstanceWarmup", "Successful", "Failed", "Cancelled", "WaitingForConnectionDraining"
    #   resp.activity.status_message #=> String
    #   resp.activity.progress #=> Integer
    #   resp.activity.details #=> String
    #   resp.activity.auto_scaling_group_state #=> String
    #   resp.activity.auto_scaling_group_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/TerminateInstanceInAutoScalingGroup AWS API Documentation
    #
    # @overload terminate_instance_in_auto_scaling_group(params = {})
    # @param [Hash] params ({})
    def terminate_instance_in_auto_scaling_group(params = {}, options = {})
      req = build_request(:terminate_instance_in_auto_scaling_group, params)
      req.send_request(options)
    end

    # **We strongly recommend that all Auto Scaling groups use launch
    # templates to ensure full functionality for Amazon EC2 Auto Scaling and
    # Amazon EC2.**
    #
    # Updates the configuration for the specified Auto Scaling group.
    #
    # To update an Auto Scaling group, specify the name of the group and the
    # property that you want to change. Any properties that you don't
    # specify are not changed by this update request. The new settings take
    # effect on any scaling activities after this call returns.
    #
    # If you associate a new launch configuration or template with an Auto
    # Scaling group, all new instances will get the updated configuration.
    # Existing instances continue to run with the configuration that they
    # were originally launched with. When you update a group to specify a
    # mixed instances policy instead of a launch configuration or template,
    # existing instances may be replaced to match the new purchasing options
    # that you specified in the policy. For example, if the group currently
    # has 100% On-Demand capacity and the policy specifies 50% Spot
    # capacity, this means that half of your instances will be gradually
    # terminated and relaunched as Spot Instances. When replacing instances,
    # Amazon EC2 Auto Scaling launches new instances before terminating the
    # old ones, so that updating your group does not compromise the
    # performance or availability of your application.
    #
    # Note the following about changing `DesiredCapacity`, `MaxSize`, or
    # `MinSize`:
    #
    # * If a scale-in activity occurs as a result of a new `DesiredCapacity`
    #   value that is lower than the current size of the group, the Auto
    #   Scaling group uses its termination policy to determine which
    #   instances to terminate.
    #
    # * If you specify a new value for `MinSize` without specifying a value
    #   for `DesiredCapacity`, and the new `MinSize` is larger than the
    #   current size of the group, this sets the group's `DesiredCapacity`
    #   to the new `MinSize` value.
    #
    # * If you specify a new value for `MaxSize` without specifying a value
    #   for `DesiredCapacity`, and the new `MaxSize` is smaller than the
    #   current size of the group, this sets the group's `DesiredCapacity`
    #   to the new `MaxSize` value.
    #
    # To see which properties have been set, call the
    # DescribeAutoScalingGroups API. To view the scaling policies for an
    # Auto Scaling group, call the DescribePolicies API. If the group has
    # scaling policies, you can update them by calling the PutScalingPolicy
    # API.
    #
    # @option params [required, String] :auto_scaling_group_name
    #   The name of the Auto Scaling group.
    #
    # @option params [String] :launch_configuration_name
    #   The name of the launch configuration. If you specify
    #   `LaunchConfigurationName` in your update request, you can't specify
    #   `LaunchTemplate` or `MixedInstancesPolicy`.
    #
    # @option params [Types::LaunchTemplateSpecification] :launch_template
    #   The launch template and version to use to specify the updates. If you
    #   specify `LaunchTemplate` in your update request, you can't specify
    #   `LaunchConfigurationName` or `MixedInstancesPolicy`.
    #
    # @option params [Types::MixedInstancesPolicy] :mixed_instances_policy
    #   The mixed instances policy. For more information, see [Auto Scaling
    #   groups with multiple instance types and purchase options][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-mixed-instances-groups.html
    #
    # @option params [Integer] :min_size
    #   The minimum size of the Auto Scaling group.
    #
    # @option params [Integer] :max_size
    #   The maximum size of the Auto Scaling group.
    #
    #   <note markdown="1"> With a mixed instances policy that uses instance weighting, Amazon EC2
    #   Auto Scaling may need to go above `MaxSize` to meet your capacity
    #   requirements. In this event, Amazon EC2 Auto Scaling will never go
    #   above `MaxSize` by more than your largest instance weight (weights
    #   that define how many units each instance contributes to the desired
    #   capacity of the group).
    #
    #    </note>
    #
    # @option params [Integer] :desired_capacity
    #   The desired capacity is the initial capacity of the Auto Scaling group
    #   after this operation completes and the capacity it attempts to
    #   maintain. This number must be greater than or equal to the minimum
    #   size of the group and less than or equal to the maximum size of the
    #   group.
    #
    # @option params [Integer] :default_cooldown
    #   *Only needed if you use simple scaling policies.*
    #
    #   The amount of time, in seconds, between one scaling activity ending
    #   and another one starting due to simple scaling policies. For more
    #   information, see [Scaling cooldowns for Amazon EC2 Auto Scaling][1] in
    #   the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/Cooldown.html
    #
    # @option params [Array<String>] :availability_zones
    #   One or more Availability Zones for the group.
    #
    # @option params [String] :health_check_type
    #   A comma-separated value string of one or more health check types.
    #
    #   The valid values are `EC2`, `ELB`, and `VPC_LATTICE`. `EC2` is the
    #   default health check and cannot be disabled. For more information, see
    #   [Health checks for Auto Scaling instances][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #   Only specify `EC2` if you must clear a value that was previously set.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/healthcheck.html
    #
    # @option params [Integer] :health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before checking the health status of an EC2 instance that has come
    #   into service and marking it unhealthy due to a failed health check.
    #   This is useful if your instances do not immediately pass their health
    #   checks after they enter the `InService` state. For more information,
    #   see [Set the health check grace period for an Auto Scaling group][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/health-check-grace-period.html
    #
    # @option params [String] :placement_group
    #   The name of an existing placement group into which to launch your
    #   instances. For more information, see [Placement groups][1] in the
    #   *Amazon EC2 User Guide for Linux Instances*.
    #
    #   <note markdown="1"> A *cluster* placement group is a logical grouping of instances within
    #   a single Availability Zone. You cannot specify multiple Availability
    #   Zones and a cluster placement group.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
    #
    # @option params [String] :vpc_zone_identifier
    #   A comma-separated list of subnet IDs for a virtual private cloud
    #   (VPC). If you specify `VPCZoneIdentifier` with `AvailabilityZones`,
    #   the subnets that you specify must reside in those Availability Zones.
    #
    # @option params [Array<String>] :termination_policies
    #   A policy or a list of policies that are used to select the instances
    #   to terminate. The policies are executed in the order that you list
    #   them. For more information, see [Work with Amazon EC2 Auto Scaling
    #   termination policies][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   Valid values: `Default` \| `AllocationStrategy` \|
    #   `ClosestToNextInstanceHour` \| `NewestInstance` \| `OldestInstance` \|
    #   `OldestLaunchConfiguration` \| `OldestLaunchTemplate` \|
    #   `arn:aws:lambda:region:account-id:function:my-function:my-alias`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-termination-policies.html
    #
    # @option params [Boolean] :new_instances_protected_from_scale_in
    #   Indicates whether newly launched instances are protected from
    #   termination by Amazon EC2 Auto Scaling when scaling in. For more
    #   information about preventing instances from terminating on scale in,
    #   see [Using instance scale-in protection][1] in the *Amazon EC2 Auto
    #   Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html
    #
    # @option params [String] :service_linked_role_arn
    #   The Amazon Resource Name (ARN) of the service-linked role that the
    #   Auto Scaling group uses to call other Amazon Web Services on your
    #   behalf. For more information, see [Service-linked roles][1] in the
    #   *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-service-linked-role.html
    #
    # @option params [Integer] :max_instance_lifetime
    #   The maximum amount of time, in seconds, that an instance can be in
    #   service. The default is null. If specified, the value must be either 0
    #   or a number equal to or greater than 86,400 seconds (1 day). To clear
    #   a previously set value, specify a new value of 0. For more
    #   information, see [Replacing Auto Scaling instances based on maximum
    #   instance lifetime][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-max-instance-lifetime.html
    #
    # @option params [Boolean] :capacity_rebalance
    #   Enables or disables Capacity Rebalancing. For more information, see
    #   [Use Capacity Rebalancing to handle Amazon EC2 Spot Interruptions][1]
    #   in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-capacity-rebalancing.html
    #
    # @option params [String] :context
    #   Reserved.
    #
    # @option params [String] :desired_capacity_type
    #   The unit of measurement for the value specified for desired capacity.
    #   Amazon EC2 Auto Scaling supports `DesiredCapacityType` for
    #   attribute-based instance type selection only. For more information,
    #   see [Creating an Auto Scaling group using attribute-based instance
    #   type selection][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   By default, Amazon EC2 Auto Scaling specifies `units`, which
    #   translates into number of instances.
    #
    #   Valid values: `units` \| `vcpu` \| `memory-mib`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html
    #
    # @option params [Integer] :default_instance_warmup
    #   The amount of time, in seconds, until a new instance is considered to
    #   have finished initializing and resource consumption to become stable
    #   after it enters the `InService` state.
    #
    #   During an instance refresh, Amazon EC2 Auto Scaling waits for the
    #   warm-up period after it replaces an instance before it moves on to
    #   replacing the next instance. Amazon EC2 Auto Scaling also waits for
    #   the warm-up period before aggregating the metrics for new instances
    #   with existing instances in the Amazon CloudWatch metrics that are used
    #   for scaling, resulting in more reliable usage data. For more
    #   information, see [Set the default instance warmup for an Auto Scaling
    #   group][1] in the *Amazon EC2 Auto Scaling User Guide*.
    #
    #   To manage various warm-up settings at the group level, we recommend
    #   that you set the default instance warmup, *even if it is set to 0
    #   seconds*. To remove a value that you previously set, include the
    #   property but specify `-1` for the value. However, we strongly
    #   recommend keeping the default instance warmup enabled by specifying a
    #   value of `0` or other nominal value.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-default-instance-warmup.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update an Auto Scaling group
    #
    #   # This example updates multiple properties at the same time.
    #
    #   resp = client.update_auto_scaling_group({
    #     auto_scaling_group_name: "my-auto-scaling-group", 
    #     launch_template: {
    #       launch_template_name: "my-template-for-auto-scaling", 
    #       version: "2", 
    #     }, 
    #     max_size: 5, 
    #     min_size: 1, 
    #     new_instances_protected_from_scale_in: true, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_auto_scaling_group({
    #     auto_scaling_group_name: "XmlStringMaxLen255", # required
    #     launch_configuration_name: "XmlStringMaxLen255",
    #     launch_template: {
    #       launch_template_id: "XmlStringMaxLen255",
    #       launch_template_name: "LaunchTemplateName",
    #       version: "XmlStringMaxLen255",
    #     },
    #     mixed_instances_policy: {
    #       launch_template: {
    #         launch_template_specification: {
    #           launch_template_id: "XmlStringMaxLen255",
    #           launch_template_name: "LaunchTemplateName",
    #           version: "XmlStringMaxLen255",
    #         },
    #         overrides: [
    #           {
    #             instance_type: "XmlStringMaxLen255",
    #             weighted_capacity: "XmlStringMaxLen32",
    #             launch_template_specification: {
    #               launch_template_id: "XmlStringMaxLen255",
    #               launch_template_name: "LaunchTemplateName",
    #               version: "XmlStringMaxLen255",
    #             },
    #             instance_requirements: {
    #               v_cpu_count: { # required
    #                 min: 1, # required
    #                 max: 1,
    #               },
    #               memory_mi_b: { # required
    #                 min: 1, # required
    #                 max: 1,
    #               },
    #               cpu_manufacturers: ["intel"], # accepts intel, amd, amazon-web-services
    #               memory_gi_b_per_v_cpu: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               excluded_instance_types: ["ExcludedInstance"],
    #               instance_generations: ["current"], # accepts current, previous
    #               spot_max_price_percentage_over_lowest_price: 1,
    #               on_demand_max_price_percentage_over_lowest_price: 1,
    #               bare_metal: "included", # accepts included, excluded, required
    #               burstable_performance: "included", # accepts included, excluded, required
    #               require_hibernate_support: false,
    #               network_interface_count: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               local_storage: "included", # accepts included, excluded, required
    #               local_storage_types: ["hdd"], # accepts hdd, ssd
    #               total_local_storage_gb: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               baseline_ebs_bandwidth_mbps: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               accelerator_types: ["gpu"], # accepts gpu, fpga, inference
    #               accelerator_count: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               accelerator_manufacturers: ["nvidia"], # accepts nvidia, amd, amazon-web-services, xilinx
    #               accelerator_names: ["a100"], # accepts a100, v100, k80, t4, m60, radeon-pro-v520, vu9p
    #               accelerator_total_memory_mi_b: {
    #                 min: 1,
    #                 max: 1,
    #               },
    #               network_bandwidth_gbps: {
    #                 min: 1.0,
    #                 max: 1.0,
    #               },
    #               allowed_instance_types: ["AllowedInstanceType"],
    #             },
    #           },
    #         ],
    #       },
    #       instances_distribution: {
    #         on_demand_allocation_strategy: "XmlString",
    #         on_demand_base_capacity: 1,
    #         on_demand_percentage_above_base_capacity: 1,
    #         spot_allocation_strategy: "XmlString",
    #         spot_instance_pools: 1,
    #         spot_max_price: "MixedInstanceSpotPrice",
    #       },
    #     },
    #     min_size: 1,
    #     max_size: 1,
    #     desired_capacity: 1,
    #     default_cooldown: 1,
    #     availability_zones: ["XmlStringMaxLen255"],
    #     health_check_type: "XmlStringMaxLen32",
    #     health_check_grace_period: 1,
    #     placement_group: "XmlStringMaxLen255",
    #     vpc_zone_identifier: "XmlStringMaxLen2047",
    #     termination_policies: ["XmlStringMaxLen1600"],
    #     new_instances_protected_from_scale_in: false,
    #     service_linked_role_arn: "ResourceName",
    #     max_instance_lifetime: 1,
    #     capacity_rebalance: false,
    #     context: "Context",
    #     desired_capacity_type: "XmlStringMaxLen255",
    #     default_instance_warmup: 1,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/autoscaling-2011-01-01/UpdateAutoScalingGroup AWS API Documentation
    #
    # @overload update_auto_scaling_group(params = {})
    # @param [Hash] params ({})
    def update_auto_scaling_group(params = {}, options = {})
      req = build_request(:update_auto_scaling_group, params)
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
      context[:gem_name] = 'aws-sdk-autoscaling'
      context[:gem_version] = '1.94.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name      | params                                | :delay   | :max_attempts |
    # | ---------------- | ------------------------------------- | -------- | ------------- |
    # | group_exists     | {Client#describe_auto_scaling_groups} | 5        | 10            |
    # | group_in_service | {Client#describe_auto_scaling_groups} | 15       | 40            |
    # | group_not_exists | {Client#describe_auto_scaling_groups} | 15       | 40            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        group_exists: Waiters::GroupExists,
        group_in_service: Waiters::GroupInService,
        group_not_exists: Waiters::GroupNotExists
      }
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
