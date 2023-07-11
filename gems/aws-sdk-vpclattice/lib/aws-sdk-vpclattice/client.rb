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

Aws::Plugins::GlobalConfiguration.add_identifier(:vpclattice)

module Aws::VPCLattice
  # An API client for VPCLattice.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::VPCLattice::Client.new(
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

    @identifier = :vpclattice

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
    add_plugin(Aws::VPCLattice::Plugins::Endpoints)

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
    #   @option options [Aws::VPCLattice::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::VPCLattice::EndpointParameters`
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

    # Updates the listener rules in a batch. You can use this operation to
    # change the priority of listener rules. This can be useful when bulk
    # updating or swapping rule priority.
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, Array<Types::RuleUpdate>] :rules
    #   The rules for the specified listener.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::BatchUpdateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::BatchUpdateRuleResponse#successful #successful} => Array&lt;Types::RuleUpdateSuccess&gt;
    #   * {Types::BatchUpdateRuleResponse#unsuccessful #unsuccessful} => Array&lt;Types::RuleUpdateFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_update_rule({
    #     listener_identifier: "ListenerIdentifier", # required
    #     rules: [ # required
    #       {
    #         action: {
    #           fixed_response: {
    #             status_code: 1, # required
    #           },
    #           forward: {
    #             target_groups: [ # required
    #               {
    #                 target_group_identifier: "TargetGroupIdentifier", # required
    #                 weight: 1,
    #               },
    #             ],
    #           },
    #         },
    #         match: {
    #           http_match: {
    #             header_matches: [
    #               {
    #                 case_sensitive: false,
    #                 match: { # required
    #                   contains: "HeaderMatchContains",
    #                   exact: "HeaderMatchExact",
    #                   prefix: "HeaderMatchPrefix",
    #                 },
    #                 name: "HeaderMatchName", # required
    #               },
    #             ],
    #             method: "HttpMethod",
    #             path_match: {
    #               case_sensitive: false,
    #               match: { # required
    #                 exact: "PathMatchExact",
    #                 prefix: "PathMatchPrefix",
    #               },
    #             },
    #           },
    #         },
    #         priority: 1,
    #         rule_identifier: "RuleIdentifier", # required
    #       },
    #     ],
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.successful #=> Array
    #   resp.successful[0].action.fixed_response.status_code #=> Integer
    #   resp.successful[0].action.forward.target_groups #=> Array
    #   resp.successful[0].action.forward.target_groups[0].target_group_identifier #=> String
    #   resp.successful[0].action.forward.target_groups[0].weight #=> Integer
    #   resp.successful[0].arn #=> String
    #   resp.successful[0].id #=> String
    #   resp.successful[0].is_default #=> Boolean
    #   resp.successful[0].match.http_match.header_matches #=> Array
    #   resp.successful[0].match.http_match.header_matches[0].case_sensitive #=> Boolean
    #   resp.successful[0].match.http_match.header_matches[0].match.contains #=> String
    #   resp.successful[0].match.http_match.header_matches[0].match.exact #=> String
    #   resp.successful[0].match.http_match.header_matches[0].match.prefix #=> String
    #   resp.successful[0].match.http_match.header_matches[0].name #=> String
    #   resp.successful[0].match.http_match.method #=> String
    #   resp.successful[0].match.http_match.path_match.case_sensitive #=> Boolean
    #   resp.successful[0].match.http_match.path_match.match.exact #=> String
    #   resp.successful[0].match.http_match.path_match.match.prefix #=> String
    #   resp.successful[0].name #=> String
    #   resp.successful[0].priority #=> Integer
    #   resp.unsuccessful #=> Array
    #   resp.unsuccessful[0].failure_code #=> String
    #   resp.unsuccessful[0].failure_message #=> String
    #   resp.unsuccessful[0].rule_identifier #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/BatchUpdateRule AWS API Documentation
    #
    # @overload batch_update_rule(params = {})
    # @param [Hash] params ({})
    def batch_update_rule(params = {}, options = {})
      req = build_request(:batch_update_rule, params)
      req.send_request(options)
    end

    # Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and
    # Amazon Kinesis Data Firehose. The service network owner can use the
    # access logs to audit the services in the network. The service network
    # owner will only see access logs from clients and services that are
    # associated with their service network. Access log entries represent
    # traffic originated from VPCs associated with that network. For more
    # information, see [Access logs][1] in the *Amazon VPC Lattice User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/monitoring-access-logs.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :destination_arn
    #   The Amazon Resource Name (ARN) of the destination. The supported
    #   destination types are CloudWatch Log groups, Kinesis Data Firehose
    #   delivery streams, and Amazon S3 buckets.
    #
    # @option params [required, String] :resource_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network or
    #   service.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the access log subscription.
    #
    # @return [Types::CreateAccessLogSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAccessLogSubscriptionResponse#arn #arn} => String
    #   * {Types::CreateAccessLogSubscriptionResponse#destination_arn #destination_arn} => String
    #   * {Types::CreateAccessLogSubscriptionResponse#id #id} => String
    #   * {Types::CreateAccessLogSubscriptionResponse#resource_arn #resource_arn} => String
    #   * {Types::CreateAccessLogSubscriptionResponse#resource_id #resource_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_log_subscription({
    #     client_token: "ClientToken",
    #     destination_arn: "AccessLogDestinationArn", # required
    #     resource_identifier: "ResourceIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.destination_arn #=> String
    #   resp.id #=> String
    #   resp.resource_arn #=> String
    #   resp.resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateAccessLogSubscription AWS API Documentation
    #
    # @overload create_access_log_subscription(params = {})
    # @param [Hash] params ({})
    def create_access_log_subscription(params = {}, options = {})
      req = build_request(:create_access_log_subscription, params)
      req.send_request(options)
    end

    # Creates a listener for a service. Before you start using your Amazon
    # VPC Lattice service, you must add one or more listeners. A listener is
    # a process that checks for connection requests to your services. For
    # more information, see [Listeners][1] in the *Amazon VPC Lattice User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, Types::RuleAction] :default_action
    #   The action for the default rule. Each listener has a default rule.
    #   Each rule consists of a priority, one or more actions, and one or more
    #   conditions. The default rule is the rule that's used if no other
    #   rules match. Each rule must include exactly one of the following types
    #   of actions: `forward `or `fixed-response`, and it must be the last
    #   action to be performed.
    #
    # @option params [required, String] :name
    #   The name of the listener. A listener name must be unique within a
    #   service. The valid characters are a-z, 0-9, and hyphens (-). You
    #   can't use a hyphen as the first or last character, or immediately
    #   after another hyphen.
    #
    # @option params [Integer] :port
    #   The listener port. You can specify a value from `1` to `65535`. For
    #   HTTP, the default is `80`. For HTTPS, the default is `443`.
    #
    # @option params [required, String] :protocol
    #   The listener protocol HTTP or HTTPS.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the listener.
    #
    # @return [Types::CreateListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateListenerResponse#arn #arn} => String
    #   * {Types::CreateListenerResponse#default_action #default_action} => Types::RuleAction
    #   * {Types::CreateListenerResponse#id #id} => String
    #   * {Types::CreateListenerResponse#name #name} => String
    #   * {Types::CreateListenerResponse#port #port} => Integer
    #   * {Types::CreateListenerResponse#protocol #protocol} => String
    #   * {Types::CreateListenerResponse#service_arn #service_arn} => String
    #   * {Types::CreateListenerResponse#service_id #service_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_listener({
    #     client_token: "ClientToken",
    #     default_action: { # required
    #       fixed_response: {
    #         status_code: 1, # required
    #       },
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1,
    #           },
    #         ],
    #       },
    #     },
    #     name: "ListenerName", # required
    #     port: 1,
    #     protocol: "HTTP", # required, accepts HTTP, HTTPS
    #     service_identifier: "ServiceIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.default_action.fixed_response.status_code #=> Integer
    #   resp.default_action.forward.target_groups #=> Array
    #   resp.default_action.forward.target_groups[0].target_group_identifier #=> String
    #   resp.default_action.forward.target_groups[0].weight #=> Integer
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.port #=> Integer
    #   resp.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.service_arn #=> String
    #   resp.service_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateListener AWS API Documentation
    #
    # @overload create_listener(params = {})
    # @param [Hash] params ({})
    def create_listener(params = {}, options = {})
      req = build_request(:create_listener, params)
      req.send_request(options)
    end

    # Creates a listener rule. Each listener has a default rule for checking
    # connection requests, but you can define additional rules. Each rule
    # consists of a priority, one or more actions, and one or more
    # conditions. For more information, see [Listener rules][1] in the
    # *Amazon VPC Lattice User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
    #
    # @option params [required, Types::RuleAction] :action
    #   The action for the default rule.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, Types::RuleMatch] :match
    #   The rule match.
    #
    # @option params [required, String] :name
    #   The name of the rule. The name must be unique within the listener. The
    #   valid characters are a-z, 0-9, and hyphens (-). You can't use a
    #   hyphen as the first or last character, or immediately after another
    #   hyphen.
    #
    # @option params [required, Integer] :priority
    #   The priority assigned to the rule. Each rule for a specific listener
    #   must have a unique priority. The lower the priority number the higher
    #   the priority.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the rule.
    #
    # @return [Types::CreateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleResponse#action #action} => Types::RuleAction
    #   * {Types::CreateRuleResponse#arn #arn} => String
    #   * {Types::CreateRuleResponse#id #id} => String
    #   * {Types::CreateRuleResponse#match #match} => Types::RuleMatch
    #   * {Types::CreateRuleResponse#name #name} => String
    #   * {Types::CreateRuleResponse#priority #priority} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule({
    #     action: { # required
    #       fixed_response: {
    #         status_code: 1, # required
    #       },
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1,
    #           },
    #         ],
    #       },
    #     },
    #     client_token: "ClientToken",
    #     listener_identifier: "ListenerIdentifier", # required
    #     match: { # required
    #       http_match: {
    #         header_matches: [
    #           {
    #             case_sensitive: false,
    #             match: { # required
    #               contains: "HeaderMatchContains",
    #               exact: "HeaderMatchExact",
    #               prefix: "HeaderMatchPrefix",
    #             },
    #             name: "HeaderMatchName", # required
    #           },
    #         ],
    #         method: "HttpMethod",
    #         path_match: {
    #           case_sensitive: false,
    #           match: { # required
    #             exact: "PathMatchExact",
    #             prefix: "PathMatchPrefix",
    #           },
    #         },
    #       },
    #     },
    #     name: "RuleName", # required
    #     priority: 1, # required
    #     service_identifier: "ServiceIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.action.fixed_response.status_code #=> Integer
    #   resp.action.forward.target_groups #=> Array
    #   resp.action.forward.target_groups[0].target_group_identifier #=> String
    #   resp.action.forward.target_groups[0].weight #=> Integer
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.match.http_match.header_matches #=> Array
    #   resp.match.http_match.header_matches[0].case_sensitive #=> Boolean
    #   resp.match.http_match.header_matches[0].match.contains #=> String
    #   resp.match.http_match.header_matches[0].match.exact #=> String
    #   resp.match.http_match.header_matches[0].match.prefix #=> String
    #   resp.match.http_match.header_matches[0].name #=> String
    #   resp.match.http_match.method #=> String
    #   resp.match.http_match.path_match.case_sensitive #=> Boolean
    #   resp.match.http_match.path_match.match.exact #=> String
    #   resp.match.http_match.path_match.match.prefix #=> String
    #   resp.name #=> String
    #   resp.priority #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateRule AWS API Documentation
    #
    # @overload create_rule(params = {})
    # @param [Hash] params ({})
    def create_rule(params = {}, options = {})
      req = build_request(:create_rule, params)
      req.send_request(options)
    end

    # Creates a service. A service is any software application that can run
    # on instances containers, or serverless functions within an account or
    # virtual private cloud (VPC).
    #
    # For more information, see [Services][1] in the *Amazon VPC Lattice
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html
    #
    # @option params [String] :auth_type
    #   The type of IAM policy.
    #
    #   * `NONE`: The resource does not use an IAM policy. This is the
    #     default.
    #
    #   * `AWS_IAM`: The resource uses an IAM policy. When this type is used,
    #     auth is enabled and an auth policy is required.
    #
    # @option params [String] :certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [String] :custom_domain_name
    #   The custom domain name of the service.
    #
    # @option params [required, String] :name
    #   The name of the service. The name must be unique within the account.
    #   The valid characters are a-z, 0-9, and hyphens (-). You can't use a
    #   hyphen as the first or last character, or immediately after another
    #   hyphen.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the service.
    #
    # @return [Types::CreateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceResponse#arn #arn} => String
    #   * {Types::CreateServiceResponse#auth_type #auth_type} => String
    #   * {Types::CreateServiceResponse#certificate_arn #certificate_arn} => String
    #   * {Types::CreateServiceResponse#custom_domain_name #custom_domain_name} => String
    #   * {Types::CreateServiceResponse#dns_entry #dns_entry} => Types::DnsEntry
    #   * {Types::CreateServiceResponse#id #id} => String
    #   * {Types::CreateServiceResponse#name #name} => String
    #   * {Types::CreateServiceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service({
    #     auth_type: "NONE", # accepts NONE, AWS_IAM
    #     certificate_arn: "CertificateArn",
    #     client_token: "ClientToken",
    #     custom_domain_name: "ServiceCustomDomainName",
    #     name: "ServiceName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.certificate_arn #=> String
    #   resp.custom_domain_name #=> String
    #   resp.dns_entry.domain_name #=> String
    #   resp.dns_entry.hosted_zone_id #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateService AWS API Documentation
    #
    # @overload create_service(params = {})
    # @param [Hash] params ({})
    def create_service(params = {}, options = {})
      req = build_request(:create_service, params)
      req.send_request(options)
    end

    # Creates a service network. A service network is a logical boundary for
    # a collection of services. You can associate services and VPCs with a
    # service network.
    #
    # For more information, see [Service networks][1] in the *Amazon VPC
    # Lattice User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html
    #
    # @option params [String] :auth_type
    #   The type of IAM policy.
    #
    #   * `NONE`: The resource does not use an IAM policy. This is the
    #     default.
    #
    #   * `AWS_IAM`: The resource uses an IAM policy. When this type is used,
    #     auth is enabled and an auth policy is required.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :name
    #   The name of the service network. The name must be unique to the
    #   account. The valid characters are a-z, 0-9, and hyphens (-). You
    #   can't use a hyphen as the first or last character, or immediately
    #   after another hyphen.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the service network.
    #
    # @return [Types::CreateServiceNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceNetworkResponse#arn #arn} => String
    #   * {Types::CreateServiceNetworkResponse#auth_type #auth_type} => String
    #   * {Types::CreateServiceNetworkResponse#id #id} => String
    #   * {Types::CreateServiceNetworkResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_network({
    #     auth_type: "NONE", # accepts NONE, AWS_IAM
    #     client_token: "ClientToken",
    #     name: "ServiceNetworkName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetwork AWS API Documentation
    #
    # @overload create_service_network(params = {})
    # @param [Hash] params ({})
    def create_service_network(params = {}, options = {})
      req = build_request(:create_service_network, params)
      req.send_request(options)
    end

    # Associates a service with a service network.
    #
    # You can't use this operation if the service and service network are
    # already associated or if there is a disassociation or deletion in
    # progress. If the association fails, you can retry the operation by
    # deleting the association and recreating it.
    #
    # You cannot associate a service and service network that are shared
    # with a caller. The caller must own either the service or the service
    # network.
    #
    # As a result of this operation, the association is created in the
    # service network account and the association owner account.
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @option params [required, String] :service_network_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network. You must
    #   use the ARN if the resources specified in the operation are in
    #   different accounts.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the association.
    #
    # @return [Types::CreateServiceNetworkServiceAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceNetworkServiceAssociationResponse#arn #arn} => String
    #   * {Types::CreateServiceNetworkServiceAssociationResponse#created_by #created_by} => String
    #   * {Types::CreateServiceNetworkServiceAssociationResponse#custom_domain_name #custom_domain_name} => String
    #   * {Types::CreateServiceNetworkServiceAssociationResponse#dns_entry #dns_entry} => Types::DnsEntry
    #   * {Types::CreateServiceNetworkServiceAssociationResponse#id #id} => String
    #   * {Types::CreateServiceNetworkServiceAssociationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_network_service_association({
    #     client_token: "ClientToken",
    #     service_identifier: "ServiceIdentifier", # required
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_by #=> String
    #   resp.custom_domain_name #=> String
    #   resp.dns_entry.domain_name #=> String
    #   resp.dns_entry.hosted_zone_id #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkServiceAssociation AWS API Documentation
    #
    # @overload create_service_network_service_association(params = {})
    # @param [Hash] params ({})
    def create_service_network_service_association(params = {}, options = {})
      req = build_request(:create_service_network_service_association, params)
      req.send_request(options)
    end

    # Associates a VPC with a service network. When you associate a VPC with
    # the service network, it enables all the resources within that VPC to
    # be clients and communicate with other services in the service network.
    # For more information, see [Manage VPC associations][1] in the *Amazon
    # VPC Lattice User Guide*.
    #
    # You can't use this operation if there is a disassociation in
    # progress. If the association fails, retry by deleting the association
    # and recreating it.
    #
    # As a result of this operation, the association gets created in the
    # service network account and the VPC owner account.
    #
    # If you add a security group to the service network and VPC
    # association, the association must continue to always have at least one
    # security group. You can add or edit security groups at any time.
    # However, to remove all security groups, you must first delete the
    # association and recreate it without security groups.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-network-associations.html#service-network-vpc-associations
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<String>] :security_group_ids
    #   The IDs of the security groups. Security groups aren't added by
    #   default. You can add a security group to apply network level controls
    #   to control which resources in a VPC are allowed to access the service
    #   network and its services. For more information, see [Control traffic
    #   to resources using security groups][1] in the *Amazon VPC User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html
    #
    # @option params [required, String] :service_network_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network. You must
    #   use the ARN when the resources specified in the operation are in
    #   different accounts.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the association.
    #
    # @option params [required, String] :vpc_identifier
    #   The ID of the VPC.
    #
    # @return [Types::CreateServiceNetworkVpcAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateServiceNetworkVpcAssociationResponse#arn #arn} => String
    #   * {Types::CreateServiceNetworkVpcAssociationResponse#created_by #created_by} => String
    #   * {Types::CreateServiceNetworkVpcAssociationResponse#id #id} => String
    #   * {Types::CreateServiceNetworkVpcAssociationResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::CreateServiceNetworkVpcAssociationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_network_vpc_association({
    #     client_token: "ClientToken",
    #     security_group_ids: ["SecurityGroupId"],
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     vpc_identifier: "VpcId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_by #=> String
    #   resp.id #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateServiceNetworkVpcAssociation AWS API Documentation
    #
    # @overload create_service_network_vpc_association(params = {})
    # @param [Hash] params ({})
    def create_service_network_vpc_association(params = {}, options = {})
      req = build_request(:create_service_network_vpc_association, params)
      req.send_request(options)
    end

    # Creates a target group. A target group is a collection of targets, or
    # compute resources, that run your application or service. A target
    # group can only be used by a single service.
    #
    # For more information, see [Target groups][1] in the *Amazon VPC
    # Lattice User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/target-groups.html
    #
    # @option params [String] :client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token and parameters, the retry
    #   succeeds without performing any actions. If the parameters aren't
    #   identical, the retry fails.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Types::TargetGroupConfig] :config
    #   The target group configuration. If `type` is set to `LAMBDA`, this
    #   parameter doesn't apply.
    #
    # @option params [required, String] :name
    #   The name of the target group. The name must be unique within the
    #   account. The valid characters are a-z, 0-9, and hyphens (-). You
    #   can't use a hyphen as the first or last character, or immediately
    #   after another hyphen.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags for the target group.
    #
    # @option params [required, String] :type
    #   The type of target group.
    #
    # @return [Types::CreateTargetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTargetGroupResponse#arn #arn} => String
    #   * {Types::CreateTargetGroupResponse#config #config} => Types::TargetGroupConfig
    #   * {Types::CreateTargetGroupResponse#id #id} => String
    #   * {Types::CreateTargetGroupResponse#name #name} => String
    #   * {Types::CreateTargetGroupResponse#status #status} => String
    #   * {Types::CreateTargetGroupResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_target_group({
    #     client_token: "ClientToken",
    #     config: {
    #       health_check: {
    #         enabled: false,
    #         health_check_interval_seconds: 1,
    #         health_check_timeout_seconds: 1,
    #         healthy_threshold_count: 1,
    #         matcher: {
    #           http_code: "HttpCodeMatcher",
    #         },
    #         path: "HealthCheckPath",
    #         port: 1,
    #         protocol: "HTTP", # accepts HTTP, HTTPS
    #         protocol_version: "HTTP1", # accepts HTTP1, HTTP2
    #         unhealthy_threshold_count: 1,
    #       },
    #       ip_address_type: "IPV4", # accepts IPV4, IPV6
    #       port: 1, # required
    #       protocol: "HTTP", # required, accepts HTTP, HTTPS
    #       protocol_version: "HTTP1", # accepts HTTP1, HTTP2, GRPC
    #       vpc_identifier: "VpcId", # required
    #     },
    #     name: "TargetGroupName", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #     type: "IP", # required, accepts IP, LAMBDA, INSTANCE, ALB
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.config.health_check.enabled #=> Boolean
    #   resp.config.health_check.health_check_interval_seconds #=> Integer
    #   resp.config.health_check.health_check_timeout_seconds #=> Integer
    #   resp.config.health_check.healthy_threshold_count #=> Integer
    #   resp.config.health_check.matcher.http_code #=> String
    #   resp.config.health_check.path #=> String
    #   resp.config.health_check.port #=> Integer
    #   resp.config.health_check.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.config.health_check.protocol_version #=> String, one of "HTTP1", "HTTP2"
    #   resp.config.health_check.unhealthy_threshold_count #=> Integer
    #   resp.config.ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.config.port #=> Integer
    #   resp.config.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.config.protocol_version #=> String, one of "HTTP1", "HTTP2", "GRPC"
    #   resp.config.vpc_identifier #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.type #=> String, one of "IP", "LAMBDA", "INSTANCE", "ALB"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/CreateTargetGroup AWS API Documentation
    #
    # @overload create_target_group(params = {})
    # @param [Hash] params ({})
    def create_target_group(params = {}, options = {})
      req = build_request(:create_target_group, params)
      req.send_request(options)
    end

    # Deletes the specified access log subscription.
    #
    # @option params [required, String] :access_log_subscription_identifier
    #   The ID or Amazon Resource Name (ARN) of the access log subscription.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_log_subscription({
    #     access_log_subscription_identifier: "AccessLogSubscriptionIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteAccessLogSubscription AWS API Documentation
    #
    # @overload delete_access_log_subscription(params = {})
    # @param [Hash] params ({})
    def delete_access_log_subscription(params = {}, options = {})
      req = build_request(:delete_access_log_subscription, params)
      req.send_request(options)
    end

    # Deletes the specified auth policy. If an auth is set to `AWS_IAM` and
    # the auth policy is deleted, all requests will be denied by default. If
    # you are trying to remove the auth policy completely, you must set the
    # auth\_type to `NONE`. If auth is enabled on the resource, but no auth
    # policy is set, all requests will be denied.
    #
    # @option params [required, String] :resource_identifier
    #   The ID or Amazon Resource Name (ARN) of the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_auth_policy({
    #     resource_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteAuthPolicy AWS API Documentation
    #
    # @overload delete_auth_policy(params = {})
    # @param [Hash] params ({})
    def delete_auth_policy(params = {}, options = {})
      req = build_request(:delete_auth_policy, params)
      req.send_request(options)
    end

    # Deletes the specified listener.
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_listener({
    #     listener_identifier: "ListenerIdentifier", # required
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteListener AWS API Documentation
    #
    # @overload delete_listener(params = {})
    # @param [Hash] params ({})
    def delete_listener(params = {}, options = {})
      req = build_request(:delete_listener, params)
      req.send_request(options)
    end

    # Deletes the specified resource policy.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes a listener rule. Each listener has a default rule for checking
    # connection requests, but you can define additional rules. Each rule
    # consists of a priority, one or more actions, and one or more
    # conditions. You can delete additional listener rules, but you cannot
    # delete the default rule.
    #
    # For more information, see [Listener rules][1] in the *Amazon VPC
    # Lattice User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, String] :rule_identifier
    #   The ID or Amazon Resource Name (ARN) of the rule.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule({
    #     listener_identifier: "ListenerIdentifier", # required
    #     rule_identifier: "RuleIdentifier", # required
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteRule AWS API Documentation
    #
    # @overload delete_rule(params = {})
    # @param [Hash] params ({})
    def delete_rule(params = {}, options = {})
      req = build_request(:delete_rule, params)
      req.send_request(options)
    end

    # Deletes a service. A service can't be deleted if it's associated
    # with a service network. If you delete a service, all resources related
    # to the service, such as the resource policy, auth policy, listeners,
    # listener rules, and access log subscriptions, are also deleted. For
    # more information, see [Delete a service][1] in the *Amazon VPC Lattice
    # User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/services.html#delete-service
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::DeleteServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceResponse#arn #arn} => String
    #   * {Types::DeleteServiceResponse#id #id} => String
    #   * {Types::DeleteServiceResponse#name #name} => String
    #   * {Types::DeleteServiceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service({
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteService AWS API Documentation
    #
    # @overload delete_service(params = {})
    # @param [Hash] params ({})
    def delete_service(params = {}, options = {})
      req = build_request(:delete_service, params)
      req.send_request(options)
    end

    # Deletes a service network. You can only delete the service network if
    # there is no service or VPC associated with it. If you delete a service
    # network, all resources related to the service network, such as the
    # resource policy, auth policy, and access log subscriptions, are also
    # deleted. For more information, see [Delete a service network][1] in
    # the *Amazon VPC Lattice User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/service-networks.html#delete-service-network
    #
    # @option params [required, String] :service_network_identifier
    #   The Amazon Resource Name (ARN) or ID of the service network.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_network({
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetwork AWS API Documentation
    #
    # @overload delete_service_network(params = {})
    # @param [Hash] params ({})
    def delete_service_network(params = {}, options = {})
      req = build_request(:delete_service_network, params)
      req.send_request(options)
    end

    # Deletes the association between a specified service and the specific
    # service network. This request will fail if an association is still in
    # progress.
    #
    # @option params [required, String] :service_network_service_association_identifier
    #   The ID or Amazon Resource Name (ARN) of the association.
    #
    # @return [Types::DeleteServiceNetworkServiceAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceNetworkServiceAssociationResponse#arn #arn} => String
    #   * {Types::DeleteServiceNetworkServiceAssociationResponse#id #id} => String
    #   * {Types::DeleteServiceNetworkServiceAssociationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_network_service_association({
    #     service_network_service_association_identifier: "ServiceNetworkServiceAssociationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkServiceAssociation AWS API Documentation
    #
    # @overload delete_service_network_service_association(params = {})
    # @param [Hash] params ({})
    def delete_service_network_service_association(params = {}, options = {})
      req = build_request(:delete_service_network_service_association, params)
      req.send_request(options)
    end

    # Disassociates the VPC from the service network. You can't
    # disassociate the VPC if there is a create or update association in
    # progress.
    #
    # @option params [required, String] :service_network_vpc_association_identifier
    #   The ID or Amazon Resource Name (ARN) of the association.
    #
    # @return [Types::DeleteServiceNetworkVpcAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteServiceNetworkVpcAssociationResponse#arn #arn} => String
    #   * {Types::DeleteServiceNetworkVpcAssociationResponse#id #id} => String
    #   * {Types::DeleteServiceNetworkVpcAssociationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_network_vpc_association({
    #     service_network_vpc_association_identifier: "ServiceNetworkVpcAssociationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteServiceNetworkVpcAssociation AWS API Documentation
    #
    # @overload delete_service_network_vpc_association(params = {})
    # @param [Hash] params ({})
    def delete_service_network_vpc_association(params = {}, options = {})
      req = build_request(:delete_service_network_vpc_association, params)
      req.send_request(options)
    end

    # Deletes a target group. You can't delete a target group if it is used
    # in a listener rule or if the target group creation is in progress.
    #
    # @option params [required, String] :target_group_identifier
    #   The ID or Amazon Resource Name (ARN) of the target group.
    #
    # @return [Types::DeleteTargetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteTargetGroupResponse#arn #arn} => String
    #   * {Types::DeleteTargetGroupResponse#id #id} => String
    #   * {Types::DeleteTargetGroupResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_target_group({
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeleteTargetGroup AWS API Documentation
    #
    # @overload delete_target_group(params = {})
    # @param [Hash] params ({})
    def delete_target_group(params = {}, options = {})
      req = build_request(:delete_target_group, params)
      req.send_request(options)
    end

    # Deregisters the specified targets from the specified target group.
    #
    # @option params [required, String] :target_group_identifier
    #   The ID or Amazon Resource Name (ARN) of the target group.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets to deregister.
    #
    # @return [Types::DeregisterTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeregisterTargetsResponse#successful #successful} => Array&lt;Types::Target&gt;
    #   * {Types::DeregisterTargetsResponse#unsuccessful #unsuccessful} => Array&lt;Types::TargetFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_targets({
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #     targets: [ # required
    #       {
    #         id: "TargetIdString", # required
    #         port: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful #=> Array
    #   resp.successful[0].id #=> String
    #   resp.successful[0].port #=> Integer
    #   resp.unsuccessful #=> Array
    #   resp.unsuccessful[0].failure_code #=> String
    #   resp.unsuccessful[0].failure_message #=> String
    #   resp.unsuccessful[0].id #=> String
    #   resp.unsuccessful[0].port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/DeregisterTargets AWS API Documentation
    #
    # @overload deregister_targets(params = {})
    # @param [Hash] params ({})
    def deregister_targets(params = {}, options = {})
      req = build_request(:deregister_targets, params)
      req.send_request(options)
    end

    # Retrieves information about the specified access log subscription.
    #
    # @option params [required, String] :access_log_subscription_identifier
    #   The ID or Amazon Resource Name (ARN) of the access log subscription.
    #
    # @return [Types::GetAccessLogSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAccessLogSubscriptionResponse#arn #arn} => String
    #   * {Types::GetAccessLogSubscriptionResponse#created_at #created_at} => Time
    #   * {Types::GetAccessLogSubscriptionResponse#destination_arn #destination_arn} => String
    #   * {Types::GetAccessLogSubscriptionResponse#id #id} => String
    #   * {Types::GetAccessLogSubscriptionResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetAccessLogSubscriptionResponse#resource_arn #resource_arn} => String
    #   * {Types::GetAccessLogSubscriptionResponse#resource_id #resource_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_log_subscription({
    #     access_log_subscription_identifier: "AccessLogSubscriptionIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.destination_arn #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.resource_arn #=> String
    #   resp.resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetAccessLogSubscription AWS API Documentation
    #
    # @overload get_access_log_subscription(params = {})
    # @param [Hash] params ({})
    def get_access_log_subscription(params = {}, options = {})
      req = build_request(:get_access_log_subscription, params)
      req.send_request(options)
    end

    # Retrieves information about the auth policy for the specified service
    # or service network.
    #
    # @option params [required, String] :resource_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network or
    #   service.
    #
    # @return [Types::GetAuthPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetAuthPolicyResponse#created_at #created_at} => Time
    #   * {Types::GetAuthPolicyResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetAuthPolicyResponse#policy #policy} => String
    #   * {Types::GetAuthPolicyResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_auth_policy({
    #     resource_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.created_at #=> Time
    #   resp.last_updated_at #=> Time
    #   resp.policy #=> String
    #   resp.state #=> String, one of "Active", "Inactive"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetAuthPolicy AWS API Documentation
    #
    # @overload get_auth_policy(params = {})
    # @param [Hash] params ({})
    def get_auth_policy(params = {}, options = {})
      req = build_request(:get_auth_policy, params)
      req.send_request(options)
    end

    # Retrieves information about the specified listener for the specified
    # service.
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::GetListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetListenerResponse#arn #arn} => String
    #   * {Types::GetListenerResponse#created_at #created_at} => Time
    #   * {Types::GetListenerResponse#default_action #default_action} => Types::RuleAction
    #   * {Types::GetListenerResponse#id #id} => String
    #   * {Types::GetListenerResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetListenerResponse#name #name} => String
    #   * {Types::GetListenerResponse#port #port} => Integer
    #   * {Types::GetListenerResponse#protocol #protocol} => String
    #   * {Types::GetListenerResponse#service_arn #service_arn} => String
    #   * {Types::GetListenerResponse#service_id #service_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_listener({
    #     listener_identifier: "ListenerIdentifier", # required
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.default_action.fixed_response.status_code #=> Integer
    #   resp.default_action.forward.target_groups #=> Array
    #   resp.default_action.forward.target_groups[0].target_group_identifier #=> String
    #   resp.default_action.forward.target_groups[0].weight #=> Integer
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.port #=> Integer
    #   resp.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.service_arn #=> String
    #   resp.service_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetListener AWS API Documentation
    #
    # @overload get_listener(params = {})
    # @param [Hash] params ({})
    def get_listener(params = {}, options = {})
      req = build_request(:get_listener, params)
      req.send_request(options)
    end

    # Retrieves information about the resource policy. The resource policy
    # is an IAM policy created on behalf of the resource owner when they
    # share a resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the service network or service.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Retrieves information about listener rules. You can also retrieve
    # information about the default listener rule. For more information, see
    # [Listener rules][1] in the *Amazon VPC Lattice User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, String] :rule_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener rule.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::GetRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleResponse#action #action} => Types::RuleAction
    #   * {Types::GetRuleResponse#arn #arn} => String
    #   * {Types::GetRuleResponse#created_at #created_at} => Time
    #   * {Types::GetRuleResponse#id #id} => String
    #   * {Types::GetRuleResponse#is_default #is_default} => Boolean
    #   * {Types::GetRuleResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetRuleResponse#match #match} => Types::RuleMatch
    #   * {Types::GetRuleResponse#name #name} => String
    #   * {Types::GetRuleResponse#priority #priority} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule({
    #     listener_identifier: "ListenerIdentifier", # required
    #     rule_identifier: "RuleIdentifier", # required
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action.fixed_response.status_code #=> Integer
    #   resp.action.forward.target_groups #=> Array
    #   resp.action.forward.target_groups[0].target_group_identifier #=> String
    #   resp.action.forward.target_groups[0].weight #=> Integer
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.id #=> String
    #   resp.is_default #=> Boolean
    #   resp.last_updated_at #=> Time
    #   resp.match.http_match.header_matches #=> Array
    #   resp.match.http_match.header_matches[0].case_sensitive #=> Boolean
    #   resp.match.http_match.header_matches[0].match.contains #=> String
    #   resp.match.http_match.header_matches[0].match.exact #=> String
    #   resp.match.http_match.header_matches[0].match.prefix #=> String
    #   resp.match.http_match.header_matches[0].name #=> String
    #   resp.match.http_match.method #=> String
    #   resp.match.http_match.path_match.case_sensitive #=> Boolean
    #   resp.match.http_match.path_match.match.exact #=> String
    #   resp.match.http_match.path_match.match.prefix #=> String
    #   resp.name #=> String
    #   resp.priority #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetRule AWS API Documentation
    #
    # @overload get_rule(params = {})
    # @param [Hash] params ({})
    def get_rule(params = {}, options = {})
      req = build_request(:get_rule, params)
      req.send_request(options)
    end

    # Retrieves information about the specified service.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::GetServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceResponse#arn #arn} => String
    #   * {Types::GetServiceResponse#auth_type #auth_type} => String
    #   * {Types::GetServiceResponse#certificate_arn #certificate_arn} => String
    #   * {Types::GetServiceResponse#created_at #created_at} => Time
    #   * {Types::GetServiceResponse#custom_domain_name #custom_domain_name} => String
    #   * {Types::GetServiceResponse#dns_entry #dns_entry} => Types::DnsEntry
    #   * {Types::GetServiceResponse#failure_code #failure_code} => String
    #   * {Types::GetServiceResponse#failure_message #failure_message} => String
    #   * {Types::GetServiceResponse#id #id} => String
    #   * {Types::GetServiceResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetServiceResponse#name #name} => String
    #   * {Types::GetServiceResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service({
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.certificate_arn #=> String
    #   resp.created_at #=> Time
    #   resp.custom_domain_name #=> String
    #   resp.dns_entry.domain_name #=> String
    #   resp.dns_entry.hosted_zone_id #=> String
    #   resp.failure_code #=> String
    #   resp.failure_message #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetService AWS API Documentation
    #
    # @overload get_service(params = {})
    # @param [Hash] params ({})
    def get_service(params = {}, options = {})
      req = build_request(:get_service, params)
      req.send_request(options)
    end

    # Retrieves information about the specified service network.
    #
    # @option params [required, String] :service_network_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network.
    #
    # @return [Types::GetServiceNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceNetworkResponse#arn #arn} => String
    #   * {Types::GetServiceNetworkResponse#auth_type #auth_type} => String
    #   * {Types::GetServiceNetworkResponse#created_at #created_at} => Time
    #   * {Types::GetServiceNetworkResponse#id #id} => String
    #   * {Types::GetServiceNetworkResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetServiceNetworkResponse#name #name} => String
    #   * {Types::GetServiceNetworkResponse#number_of_associated_services #number_of_associated_services} => Integer
    #   * {Types::GetServiceNetworkResponse#number_of_associated_vp_cs #number_of_associated_vp_cs} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_network({
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.created_at #=> Time
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.number_of_associated_services #=> Integer
    #   resp.number_of_associated_vp_cs #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetwork AWS API Documentation
    #
    # @overload get_service_network(params = {})
    # @param [Hash] params ({})
    def get_service_network(params = {}, options = {})
      req = build_request(:get_service_network, params)
      req.send_request(options)
    end

    # Retrieves information about the specified association between a
    # service network and a service.
    #
    # @option params [required, String] :service_network_service_association_identifier
    #   The ID or Amazon Resource Name (ARN) of the association.
    #
    # @return [Types::GetServiceNetworkServiceAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceNetworkServiceAssociationResponse#arn #arn} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#created_at #created_at} => Time
    #   * {Types::GetServiceNetworkServiceAssociationResponse#created_by #created_by} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#custom_domain_name #custom_domain_name} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#dns_entry #dns_entry} => Types::DnsEntry
    #   * {Types::GetServiceNetworkServiceAssociationResponse#failure_code #failure_code} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#failure_message #failure_message} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#id #id} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#service_arn #service_arn} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#service_id #service_id} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#service_name #service_name} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#service_network_arn #service_network_arn} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#service_network_id #service_network_id} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#service_network_name #service_network_name} => String
    #   * {Types::GetServiceNetworkServiceAssociationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_network_service_association({
    #     service_network_service_association_identifier: "ServiceNetworkServiceAssociationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.custom_domain_name #=> String
    #   resp.dns_entry.domain_name #=> String
    #   resp.dns_entry.hosted_zone_id #=> String
    #   resp.failure_code #=> String
    #   resp.failure_message #=> String
    #   resp.id #=> String
    #   resp.service_arn #=> String
    #   resp.service_id #=> String
    #   resp.service_name #=> String
    #   resp.service_network_arn #=> String
    #   resp.service_network_id #=> String
    #   resp.service_network_name #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkServiceAssociation AWS API Documentation
    #
    # @overload get_service_network_service_association(params = {})
    # @param [Hash] params ({})
    def get_service_network_service_association(params = {}, options = {})
      req = build_request(:get_service_network_service_association, params)
      req.send_request(options)
    end

    # Retrieves information about the association between a service network
    # and a VPC.
    #
    # @option params [required, String] :service_network_vpc_association_identifier
    #   The ID or Amazon Resource Name (ARN) of the association.
    #
    # @return [Types::GetServiceNetworkVpcAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetServiceNetworkVpcAssociationResponse#arn #arn} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#created_at #created_at} => Time
    #   * {Types::GetServiceNetworkVpcAssociationResponse#created_by #created_by} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#failure_code #failure_code} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#failure_message #failure_message} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#id #id} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetServiceNetworkVpcAssociationResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::GetServiceNetworkVpcAssociationResponse#service_network_arn #service_network_arn} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#service_network_id #service_network_id} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#service_network_name #service_network_name} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#status #status} => String
    #   * {Types::GetServiceNetworkVpcAssociationResponse#vpc_id #vpc_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_network_vpc_association({
    #     service_network_vpc_association_identifier: "ServiceNetworkVpcAssociationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_at #=> Time
    #   resp.created_by #=> String
    #   resp.failure_code #=> String
    #   resp.failure_message #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.service_network_arn #=> String
    #   resp.service_network_id #=> String
    #   resp.service_network_name #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED"
    #   resp.vpc_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetServiceNetworkVpcAssociation AWS API Documentation
    #
    # @overload get_service_network_vpc_association(params = {})
    # @param [Hash] params ({})
    def get_service_network_vpc_association(params = {}, options = {})
      req = build_request(:get_service_network_vpc_association, params)
      req.send_request(options)
    end

    # Retrieves information about the specified target group.
    #
    # @option params [required, String] :target_group_identifier
    #   The ID or Amazon Resource Name (ARN) of the target group.
    #
    # @return [Types::GetTargetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTargetGroupResponse#arn #arn} => String
    #   * {Types::GetTargetGroupResponse#config #config} => Types::TargetGroupConfig
    #   * {Types::GetTargetGroupResponse#created_at #created_at} => Time
    #   * {Types::GetTargetGroupResponse#failure_code #failure_code} => String
    #   * {Types::GetTargetGroupResponse#failure_message #failure_message} => String
    #   * {Types::GetTargetGroupResponse#id #id} => String
    #   * {Types::GetTargetGroupResponse#last_updated_at #last_updated_at} => Time
    #   * {Types::GetTargetGroupResponse#name #name} => String
    #   * {Types::GetTargetGroupResponse#service_arns #service_arns} => Array&lt;String&gt;
    #   * {Types::GetTargetGroupResponse#status #status} => String
    #   * {Types::GetTargetGroupResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_target_group({
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.config.health_check.enabled #=> Boolean
    #   resp.config.health_check.health_check_interval_seconds #=> Integer
    #   resp.config.health_check.health_check_timeout_seconds #=> Integer
    #   resp.config.health_check.healthy_threshold_count #=> Integer
    #   resp.config.health_check.matcher.http_code #=> String
    #   resp.config.health_check.path #=> String
    #   resp.config.health_check.port #=> Integer
    #   resp.config.health_check.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.config.health_check.protocol_version #=> String, one of "HTTP1", "HTTP2"
    #   resp.config.health_check.unhealthy_threshold_count #=> Integer
    #   resp.config.ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.config.port #=> Integer
    #   resp.config.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.config.protocol_version #=> String, one of "HTTP1", "HTTP2", "GRPC"
    #   resp.config.vpc_identifier #=> String
    #   resp.created_at #=> Time
    #   resp.failure_code #=> String
    #   resp.failure_message #=> String
    #   resp.id #=> String
    #   resp.last_updated_at #=> Time
    #   resp.name #=> String
    #   resp.service_arns #=> Array
    #   resp.service_arns[0] #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.type #=> String, one of "IP", "LAMBDA", "INSTANCE", "ALB"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/GetTargetGroup AWS API Documentation
    #
    # @overload get_target_group(params = {})
    # @param [Hash] params ({})
    def get_target_group(params = {}, options = {})
      req = build_request(:get_target_group, params)
      req.send_request(options)
    end

    # Lists all access log subscriptions for the specified service network
    # or service.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @option params [required, String] :resource_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network or
    #   service.
    #
    # @return [Types::ListAccessLogSubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAccessLogSubscriptionsResponse#items #items} => Array&lt;Types::AccessLogSubscriptionSummary&gt;
    #   * {Types::ListAccessLogSubscriptionsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_log_subscriptions({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     resource_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].destination_arn #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].resource_arn #=> String
    #   resp.items[0].resource_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListAccessLogSubscriptions AWS API Documentation
    #
    # @overload list_access_log_subscriptions(params = {})
    # @param [Hash] params ({})
    def list_access_log_subscriptions(params = {}, options = {})
      req = build_request(:list_access_log_subscriptions, params)
      req.send_request(options)
    end

    # Lists the listeners for the specified service.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::ListListenersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListListenersResponse#items #items} => Array&lt;Types::ListenerSummary&gt;
    #   * {Types::ListListenersResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_listeners({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].port #=> Integer
    #   resp.items[0].protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListListeners AWS API Documentation
    #
    # @overload list_listeners(params = {})
    # @param [Hash] params ({})
    def list_listeners(params = {}, options = {})
      req = build_request(:list_listeners, params)
      req.send_request(options)
    end

    # Lists the rules for the listener.
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::ListRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRulesResponse#items #items} => Array&lt;Types::RuleSummary&gt;
    #   * {Types::ListRulesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules({
    #     listener_identifier: "ListenerIdentifier", # required
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].id #=> String
    #   resp.items[0].is_default #=> Boolean
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].priority #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListRules AWS API Documentation
    #
    # @overload list_rules(params = {})
    # @param [Hash] params ({})
    def list_rules(params = {}, options = {})
      req = build_request(:list_rules, params)
      req.send_request(options)
    end

    # Lists the associations between the service network and the service.
    # You can filter the list either by service or service network. You must
    # provide either the service network identifier or the service
    # identifier.
    #
    # Every association in Amazon VPC Lattice is given a unique Amazon
    # Resource Name (ARN), such as when a service network is associated with
    # a VPC or when a service is associated with a service network. If the
    # association is for a resource that is shared with another account, the
    # association will include the local account ID as the prefix in the ARN
    # for each account the resource is shared with.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @option params [String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @option params [String] :service_network_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network.
    #
    # @return [Types::ListServiceNetworkServiceAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceNetworkServiceAssociationsResponse#items #items} => Array&lt;Types::ServiceNetworkServiceAssociationSummary&gt;
    #   * {Types::ListServiceNetworkServiceAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_network_service_associations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service_identifier: "ServiceIdentifier",
    #     service_network_identifier: "ServiceNetworkIdentifier",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].custom_domain_name #=> String
    #   resp.items[0].dns_entry.domain_name #=> String
    #   resp.items[0].dns_entry.hosted_zone_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].service_arn #=> String
    #   resp.items[0].service_id #=> String
    #   resp.items[0].service_name #=> String
    #   resp.items[0].service_network_arn #=> String
    #   resp.items[0].service_network_id #=> String
    #   resp.items[0].service_network_name #=> String
    #   resp.items[0].status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkServiceAssociations AWS API Documentation
    #
    # @overload list_service_network_service_associations(params = {})
    # @param [Hash] params ({})
    def list_service_network_service_associations(params = {}, options = {})
      req = build_request(:list_service_network_service_associations, params)
      req.send_request(options)
    end

    # Lists the service network and VPC associations. You can filter the
    # list either by VPC or service network. You must provide either the
    # service network identifier or the VPC identifier.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @option params [String] :service_network_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network.
    #
    # @option params [String] :vpc_identifier
    #   The ID or Amazon Resource Name (ARN) of the VPC.
    #
    # @return [Types::ListServiceNetworkVpcAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceNetworkVpcAssociationsResponse#items #items} => Array&lt;Types::ServiceNetworkVpcAssociationSummary&gt;
    #   * {Types::ListServiceNetworkVpcAssociationsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_network_vpc_associations({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     service_network_identifier: "ServiceNetworkIdentifier",
    #     vpc_identifier: "VpcId",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].created_by #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].service_network_arn #=> String
    #   resp.items[0].service_network_id #=> String
    #   resp.items[0].service_network_name #=> String
    #   resp.items[0].status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED"
    #   resp.items[0].vpc_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworkVpcAssociations AWS API Documentation
    #
    # @overload list_service_network_vpc_associations(params = {})
    # @param [Hash] params ({})
    def list_service_network_vpc_associations(params = {}, options = {})
      req = build_request(:list_service_network_vpc_associations, params)
      req.send_request(options)
    end

    # Lists the service networks owned by the caller account or shared with
    # the caller account. Also includes the account ID in the ARN to show
    # which account owns the service network.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @return [Types::ListServiceNetworksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServiceNetworksResponse#items #items} => Array&lt;Types::ServiceNetworkSummary&gt;
    #   * {Types::ListServiceNetworksResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_networks({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].number_of_associated_services #=> Integer
    #   resp.items[0].number_of_associated_vp_cs #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServiceNetworks AWS API Documentation
    #
    # @overload list_service_networks(params = {})
    # @param [Hash] params ({})
    def list_service_networks(params = {}, options = {})
      req = build_request(:list_service_networks, params)
      req.send_request(options)
    end

    # Lists the services owned by the caller account or shared with the
    # caller account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @return [Types::ListServicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListServicesResponse#items #items} => Array&lt;Types::ServiceSummary&gt;
    #   * {Types::ListServicesResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].custom_domain_name #=> String
    #   resp.items[0].dns_entry.domain_name #=> String
    #   resp.items[0].dns_entry.hosted_zone_id #=> String
    #   resp.items[0].id #=> String
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].status #=> String, one of "ACTIVE", "CREATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListServices AWS API Documentation
    #
    # @overload list_services(params = {})
    # @param [Hash] params ({})
    def list_services(params = {}, options = {})
      req = build_request(:list_services, params)
      req.send_request(options)
    end

    # Lists the tags for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
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
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Lists your target groups. You can narrow your search by using the
    # filters below in your request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @option params [String] :target_group_type
    #   The target group type.
    #
    # @option params [String] :vpc_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::ListTargetGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetGroupsResponse#items #items} => Array&lt;Types::TargetGroupSummary&gt;
    #   * {Types::ListTargetGroupsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_target_groups({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     target_group_type: "IP", # accepts IP, LAMBDA, INSTANCE, ALB
    #     vpc_identifier: "VpcId",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].arn #=> String
    #   resp.items[0].created_at #=> Time
    #   resp.items[0].id #=> String
    #   resp.items[0].ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.items[0].last_updated_at #=> Time
    #   resp.items[0].name #=> String
    #   resp.items[0].port #=> Integer
    #   resp.items[0].protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.items[0].service_arns #=> Array
    #   resp.items[0].service_arns[0] #=> String
    #   resp.items[0].status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.items[0].type #=> String, one of "IP", "LAMBDA", "INSTANCE", "ALB"
    #   resp.items[0].vpc_identifier #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTargetGroups AWS API Documentation
    #
    # @overload list_target_groups(params = {})
    # @param [Hash] params ({})
    def list_target_groups(params = {}, options = {})
      req = build_request(:list_target_groups, params)
      req.send_request(options)
    end

    # Lists the targets for the target group. By default, all targets are
    # included. You can use this API to check the health status of targets.
    # You can also ﬁlter the results by target.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A pagination token for the next page of results.
    #
    # @option params [required, String] :target_group_identifier
    #   The ID or Amazon Resource Name (ARN) of the target group.
    #
    # @option params [Array<Types::Target>] :targets
    #   The targets to list.
    #
    # @return [Types::ListTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsResponse#items #items} => Array&lt;Types::TargetSummary&gt;
    #   * {Types::ListTargetsResponse#next_token #next_token} => String
    #
    # The returned {Seahorse::Client::Response response} is a pageable response and is Enumerable. For details on usage see {Aws::PageableResponse PageableResponse}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #     targets: [
    #       {
    #         id: "TargetIdString", # required
    #         port: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].id #=> String
    #   resp.items[0].port #=> Integer
    #   resp.items[0].reason_code #=> String
    #   resp.items[0].status #=> String, one of "DRAINING", "UNAVAILABLE", "HEALTHY", "UNHEALTHY", "INITIAL", "UNUSED"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/ListTargets AWS API Documentation
    #
    # @overload list_targets(params = {})
    # @param [Hash] params ({})
    def list_targets(params = {}, options = {})
      req = build_request(:list_targets, params)
      req.send_request(options)
    end

    # Creates or updates the auth policy. The policy string in JSON must not
    # contain newlines or blank lines.
    #
    # @option params [required, String] :policy
    #   The auth policy. The policy string in JSON must not contain newlines
    #   or blank lines.
    #
    # @option params [required, String] :resource_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network or service
    #   for which the policy is created.
    #
    # @return [Types::PutAuthPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutAuthPolicyResponse#policy #policy} => String
    #   * {Types::PutAuthPolicyResponse#state #state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_auth_policy({
    #     policy: "AuthPolicyString", # required
    #     resource_identifier: "ResourceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.state #=> String, one of "Active", "Inactive"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/PutAuthPolicy AWS API Documentation
    #
    # @overload put_auth_policy(params = {})
    # @param [Hash] params ({})
    def put_auth_policy(params = {}, options = {})
      req = build_request(:put_auth_policy, params)
      req.send_request(options)
    end

    # Attaches a resource-based permission policy to a service or service
    # network. The policy must contain the same actions and condition
    # statements as the Amazon Web Services Resource Access Manager
    # permission for sharing services and service networks.
    #
    # @option params [required, String] :policy
    #   An IAM policy. The policy string in JSON must not contain newlines or
    #   blank lines.
    #
    # @option params [required, String] :resource_arn
    #   The ID or Amazon Resource Name (ARN) of the service network or service
    #   for which the policy is created.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     policy: "PolicyString", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Registers the targets with the target group. If it's a Lambda target,
    # you can only have one target in a target group.
    #
    # @option params [required, String] :target_group_identifier
    #   The ID or Amazon Resource Name (ARN) of the target group.
    #
    # @option params [required, Array<Types::Target>] :targets
    #   The targets.
    #
    # @return [Types::RegisterTargetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterTargetsResponse#successful #successful} => Array&lt;Types::Target&gt;
    #   * {Types::RegisterTargetsResponse#unsuccessful #unsuccessful} => Array&lt;Types::TargetFailure&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_targets({
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #     targets: [ # required
    #       {
    #         id: "TargetIdString", # required
    #         port: 1,
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.successful #=> Array
    #   resp.successful[0].id #=> String
    #   resp.successful[0].port #=> Integer
    #   resp.unsuccessful #=> Array
    #   resp.unsuccessful[0].failure_code #=> String
    #   resp.unsuccessful[0].failure_message #=> String
    #   resp.unsuccessful[0].id #=> String
    #   resp.unsuccessful[0].port #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/RegisterTargets AWS API Documentation
    #
    # @overload register_targets(params = {})
    # @param [Hash] params ({})
    def register_targets(params = {}, options = {})
      req = build_request(:register_targets, params)
      req.send_request(options)
    end

    # Adds the specified tags to the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags for the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   The tag keys of the tags to remove.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified access log subscription.
    #
    # @option params [required, String] :access_log_subscription_identifier
    #   The ID or Amazon Resource Name (ARN) of the access log subscription.
    #
    # @option params [required, String] :destination_arn
    #   The Amazon Resource Name (ARN) of the access log destination.
    #
    # @return [Types::UpdateAccessLogSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAccessLogSubscriptionResponse#arn #arn} => String
    #   * {Types::UpdateAccessLogSubscriptionResponse#destination_arn #destination_arn} => String
    #   * {Types::UpdateAccessLogSubscriptionResponse#id #id} => String
    #   * {Types::UpdateAccessLogSubscriptionResponse#resource_arn #resource_arn} => String
    #   * {Types::UpdateAccessLogSubscriptionResponse#resource_id #resource_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_log_subscription({
    #     access_log_subscription_identifier: "AccessLogSubscriptionIdentifier", # required
    #     destination_arn: "AccessLogDestinationArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.destination_arn #=> String
    #   resp.id #=> String
    #   resp.resource_arn #=> String
    #   resp.resource_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateAccessLogSubscription AWS API Documentation
    #
    # @overload update_access_log_subscription(params = {})
    # @param [Hash] params ({})
    def update_access_log_subscription(params = {}, options = {})
      req = build_request(:update_access_log_subscription, params)
      req.send_request(options)
    end

    # Updates the specified listener for the specified service.
    #
    # @option params [required, Types::RuleAction] :default_action
    #   The action for the default rule.
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::UpdateListenerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateListenerResponse#arn #arn} => String
    #   * {Types::UpdateListenerResponse#default_action #default_action} => Types::RuleAction
    #   * {Types::UpdateListenerResponse#id #id} => String
    #   * {Types::UpdateListenerResponse#name #name} => String
    #   * {Types::UpdateListenerResponse#port #port} => Integer
    #   * {Types::UpdateListenerResponse#protocol #protocol} => String
    #   * {Types::UpdateListenerResponse#service_arn #service_arn} => String
    #   * {Types::UpdateListenerResponse#service_id #service_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_listener({
    #     default_action: { # required
    #       fixed_response: {
    #         status_code: 1, # required
    #       },
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1,
    #           },
    #         ],
    #       },
    #     },
    #     listener_identifier: "ListenerIdentifier", # required
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.default_action.fixed_response.status_code #=> Integer
    #   resp.default_action.forward.target_groups #=> Array
    #   resp.default_action.forward.target_groups[0].target_group_identifier #=> String
    #   resp.default_action.forward.target_groups[0].weight #=> Integer
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.port #=> Integer
    #   resp.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.service_arn #=> String
    #   resp.service_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateListener AWS API Documentation
    #
    # @overload update_listener(params = {})
    # @param [Hash] params ({})
    def update_listener(params = {}, options = {})
      req = build_request(:update_listener, params)
      req.send_request(options)
    end

    # Updates a rule for the listener. You can't modify a default listener
    # rule. To modify a default listener rule, use `UpdateListener`.
    #
    # @option params [Types::RuleAction] :action
    #   Information about the action for the specified listener rule.
    #
    # @option params [required, String] :listener_identifier
    #   The ID or Amazon Resource Name (ARN) of the listener.
    #
    # @option params [Types::RuleMatch] :match
    #   The rule match.
    #
    # @option params [Integer] :priority
    #   The rule priority. A listener can't have multiple rules with the same
    #   priority.
    #
    # @option params [required, String] :rule_identifier
    #   The ID or Amazon Resource Name (ARN) of the rule.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::UpdateRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleResponse#action #action} => Types::RuleAction
    #   * {Types::UpdateRuleResponse#arn #arn} => String
    #   * {Types::UpdateRuleResponse#id #id} => String
    #   * {Types::UpdateRuleResponse#is_default #is_default} => Boolean
    #   * {Types::UpdateRuleResponse#match #match} => Types::RuleMatch
    #   * {Types::UpdateRuleResponse#name #name} => String
    #   * {Types::UpdateRuleResponse#priority #priority} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule({
    #     action: {
    #       fixed_response: {
    #         status_code: 1, # required
    #       },
    #       forward: {
    #         target_groups: [ # required
    #           {
    #             target_group_identifier: "TargetGroupIdentifier", # required
    #             weight: 1,
    #           },
    #         ],
    #       },
    #     },
    #     listener_identifier: "ListenerIdentifier", # required
    #     match: {
    #       http_match: {
    #         header_matches: [
    #           {
    #             case_sensitive: false,
    #             match: { # required
    #               contains: "HeaderMatchContains",
    #               exact: "HeaderMatchExact",
    #               prefix: "HeaderMatchPrefix",
    #             },
    #             name: "HeaderMatchName", # required
    #           },
    #         ],
    #         method: "HttpMethod",
    #         path_match: {
    #           case_sensitive: false,
    #           match: { # required
    #             exact: "PathMatchExact",
    #             prefix: "PathMatchPrefix",
    #           },
    #         },
    #       },
    #     },
    #     priority: 1,
    #     rule_identifier: "RuleIdentifier", # required
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.action.fixed_response.status_code #=> Integer
    #   resp.action.forward.target_groups #=> Array
    #   resp.action.forward.target_groups[0].target_group_identifier #=> String
    #   resp.action.forward.target_groups[0].weight #=> Integer
    #   resp.arn #=> String
    #   resp.id #=> String
    #   resp.is_default #=> Boolean
    #   resp.match.http_match.header_matches #=> Array
    #   resp.match.http_match.header_matches[0].case_sensitive #=> Boolean
    #   resp.match.http_match.header_matches[0].match.contains #=> String
    #   resp.match.http_match.header_matches[0].match.exact #=> String
    #   resp.match.http_match.header_matches[0].match.prefix #=> String
    #   resp.match.http_match.header_matches[0].name #=> String
    #   resp.match.http_match.method #=> String
    #   resp.match.http_match.path_match.case_sensitive #=> Boolean
    #   resp.match.http_match.path_match.match.exact #=> String
    #   resp.match.http_match.path_match.match.prefix #=> String
    #   resp.name #=> String
    #   resp.priority #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateRule AWS API Documentation
    #
    # @overload update_rule(params = {})
    # @param [Hash] params ({})
    def update_rule(params = {}, options = {})
      req = build_request(:update_rule, params)
      req.send_request(options)
    end

    # Updates the specified service.
    #
    # @option params [String] :auth_type
    #   The type of IAM policy.
    #
    #   * `NONE`: The resource does not use an IAM policy. This is the
    #     default.
    #
    #   * `AWS_IAM`: The resource uses an IAM policy. When this type is used,
    #     auth is enabled and an auth policy is required.
    #
    # @option params [String] :certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #
    # @option params [required, String] :service_identifier
    #   The ID or Amazon Resource Name (ARN) of the service.
    #
    # @return [Types::UpdateServiceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceResponse#arn #arn} => String
    #   * {Types::UpdateServiceResponse#auth_type #auth_type} => String
    #   * {Types::UpdateServiceResponse#certificate_arn #certificate_arn} => String
    #   * {Types::UpdateServiceResponse#custom_domain_name #custom_domain_name} => String
    #   * {Types::UpdateServiceResponse#id #id} => String
    #   * {Types::UpdateServiceResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service({
    #     auth_type: "NONE", # accepts NONE, AWS_IAM
    #     certificate_arn: "CertificateArn",
    #     service_identifier: "ServiceIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.certificate_arn #=> String
    #   resp.custom_domain_name #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateService AWS API Documentation
    #
    # @overload update_service(params = {})
    # @param [Hash] params ({})
    def update_service(params = {}, options = {})
      req = build_request(:update_service, params)
      req.send_request(options)
    end

    # Updates the specified service network.
    #
    # @option params [required, String] :auth_type
    #   The type of IAM policy.
    #
    #   * `NONE`: The resource does not use an IAM policy. This is the
    #     default.
    #
    #   * `AWS_IAM`: The resource uses an IAM policy. When this type is used,
    #     auth is enabled and an auth policy is required.
    #
    # @option params [required, String] :service_network_identifier
    #   The ID or Amazon Resource Name (ARN) of the service network.
    #
    # @return [Types::UpdateServiceNetworkResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceNetworkResponse#arn #arn} => String
    #   * {Types::UpdateServiceNetworkResponse#auth_type #auth_type} => String
    #   * {Types::UpdateServiceNetworkResponse#id #id} => String
    #   * {Types::UpdateServiceNetworkResponse#name #name} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_network({
    #     auth_type: "NONE", # required, accepts NONE, AWS_IAM
    #     service_network_identifier: "ServiceNetworkIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.auth_type #=> String, one of "NONE", "AWS_IAM"
    #   resp.id #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateServiceNetwork AWS API Documentation
    #
    # @overload update_service_network(params = {})
    # @param [Hash] params ({})
    def update_service_network(params = {}, options = {})
      req = build_request(:update_service_network, params)
      req.send_request(options)
    end

    # Updates the service network and VPC association. If you add a security
    # group to the service network and VPC association, the association must
    # continue to always have at least one security group. You can add or
    # edit security groups at any time. However, to remove all security
    # groups, you must first delete the association and recreate it without
    # security groups.
    #
    # @option params [required, Array<String>] :security_group_ids
    #   The IDs of the security groups.
    #
    # @option params [required, String] :service_network_vpc_association_identifier
    #   The ID or Amazon Resource Name (ARN) of the association.
    #
    # @return [Types::UpdateServiceNetworkVpcAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateServiceNetworkVpcAssociationResponse#arn #arn} => String
    #   * {Types::UpdateServiceNetworkVpcAssociationResponse#created_by #created_by} => String
    #   * {Types::UpdateServiceNetworkVpcAssociationResponse#id #id} => String
    #   * {Types::UpdateServiceNetworkVpcAssociationResponse#security_group_ids #security_group_ids} => Array&lt;String&gt;
    #   * {Types::UpdateServiceNetworkVpcAssociationResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_network_vpc_association({
    #     security_group_ids: ["SecurityGroupId"], # required
    #     service_network_vpc_association_identifier: "ServiceNetworkVpcAssociationIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.created_by #=> String
    #   resp.id #=> String
    #   resp.security_group_ids #=> Array
    #   resp.security_group_ids[0] #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED", "UPDATE_FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateServiceNetworkVpcAssociation AWS API Documentation
    #
    # @overload update_service_network_vpc_association(params = {})
    # @param [Hash] params ({})
    def update_service_network_vpc_association(params = {}, options = {})
      req = build_request(:update_service_network_vpc_association, params)
      req.send_request(options)
    end

    # Updates the specified target group.
    #
    # @option params [required, Types::HealthCheckConfig] :health_check
    #   The health check configuration.
    #
    # @option params [required, String] :target_group_identifier
    #   The ID or Amazon Resource Name (ARN) of the target group.
    #
    # @return [Types::UpdateTargetGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTargetGroupResponse#arn #arn} => String
    #   * {Types::UpdateTargetGroupResponse#config #config} => Types::TargetGroupConfig
    #   * {Types::UpdateTargetGroupResponse#id #id} => String
    #   * {Types::UpdateTargetGroupResponse#name #name} => String
    #   * {Types::UpdateTargetGroupResponse#status #status} => String
    #   * {Types::UpdateTargetGroupResponse#type #type} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_target_group({
    #     health_check: { # required
    #       enabled: false,
    #       health_check_interval_seconds: 1,
    #       health_check_timeout_seconds: 1,
    #       healthy_threshold_count: 1,
    #       matcher: {
    #         http_code: "HttpCodeMatcher",
    #       },
    #       path: "HealthCheckPath",
    #       port: 1,
    #       protocol: "HTTP", # accepts HTTP, HTTPS
    #       protocol_version: "HTTP1", # accepts HTTP1, HTTP2
    #       unhealthy_threshold_count: 1,
    #     },
    #     target_group_identifier: "TargetGroupIdentifier", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.config.health_check.enabled #=> Boolean
    #   resp.config.health_check.health_check_interval_seconds #=> Integer
    #   resp.config.health_check.health_check_timeout_seconds #=> Integer
    #   resp.config.health_check.healthy_threshold_count #=> Integer
    #   resp.config.health_check.matcher.http_code #=> String
    #   resp.config.health_check.path #=> String
    #   resp.config.health_check.port #=> Integer
    #   resp.config.health_check.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.config.health_check.protocol_version #=> String, one of "HTTP1", "HTTP2"
    #   resp.config.health_check.unhealthy_threshold_count #=> Integer
    #   resp.config.ip_address_type #=> String, one of "IPV4", "IPV6"
    #   resp.config.port #=> Integer
    #   resp.config.protocol #=> String, one of "HTTP", "HTTPS"
    #   resp.config.protocol_version #=> String, one of "HTTP1", "HTTP2", "GRPC"
    #   resp.config.vpc_identifier #=> String
    #   resp.id #=> String
    #   resp.name #=> String
    #   resp.status #=> String, one of "CREATE_IN_PROGRESS", "ACTIVE", "DELETE_IN_PROGRESS", "CREATE_FAILED", "DELETE_FAILED"
    #   resp.type #=> String, one of "IP", "LAMBDA", "INSTANCE", "ALB"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/vpc-lattice-2022-11-30/UpdateTargetGroup AWS API Documentation
    #
    # @overload update_target_group(params = {})
    # @param [Hash] params ({})
    def update_target_group(params = {}, options = {})
      req = build_request(:update_target_group, params)
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
      context[:gem_name] = 'aws-sdk-vpclattice'
      context[:gem_version] = '1.6.0'
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
