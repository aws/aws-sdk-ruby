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

Aws::Plugins::GlobalConfiguration.add_identifier(:wafv2)

module Aws::WAFV2
  # An API client for WAFV2.  To construct a client, you need to configure a `:region` and `:credentials`.
  #
  #     client = Aws::WAFV2::Client.new(
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

    @identifier = :wafv2

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
    add_plugin(Aws::WAFV2::Plugins::Endpoints)

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
    #   @option options [Aws::WAFV2::EndpointProvider] :endpoint_provider
    #     The endpoint provider used to resolve endpoints. Any object that responds to `#resolve_endpoint(parameters)` where `parameters` is a Struct similar to `Aws::WAFV2::EndpointParameters`
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

    # Associates a web ACL with a regional application resource, to protect
    # the resource. A regional application can be an Application Load
    # Balancer (ALB), an Amazon API Gateway REST API, an AppSync GraphQL
    # API, an Amazon Cognito user pool, an App Runner service, or an Amazon
    # Web Services Verified Access instance.
    #
    # For Amazon CloudFront, don't use this call. Instead, use your
    # CloudFront distribution configuration. To associate a web ACL, in the
    # CloudFront call `UpdateDistribution`, set the web ACL ID to the Amazon
    # Resource Name (ARN) of the web ACL. For information, see
    # [UpdateDistribution][1] in the *Amazon CloudFront Developer Guide*.
    #
    # When you make changes to web ACLs or web ACL components, like rules
    # and rule groups, WAF propagates the changes everywhere that the web
    # ACL and its components are stored and used. Your changes are applied
    # within seconds, but there might be a brief period of inconsistency
    # when the changes have arrived in some places and not in others. So,
    # for example, if you change a rule action setting, the action might be
    # the old action in one area and the new action in another area. Or if
    # you add an IP address to an IP set used in a blocking rule, the new
    # address might briefly be blocked in one area while still allowed in
    # another. This temporary inconsistency can occur when you first
    # associate a web ACL with an Amazon Web Services resource and when you
    # change a web ACL that is already associated with a resource.
    # Generally, any inconsistencies of this type last only a few seconds.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
    #
    # @option params [required, String] :web_acl_arn
    #   The Amazon Resource Name (ARN) of the web ACL that you want to
    #   associate with the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to associate with the
    #   web ACL.
    #
    #   The ARN must be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:partition:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an Amazon API Gateway REST API:
    #     `arn:partition:apigateway:region::/restapis/api-id/stages/stage-name
    #     `
    #
    #   * For an AppSync GraphQL API:
    #     `arn:partition:appsync:region:account-id:apis/GraphQLApiId `
    #
    #   * For an Amazon Cognito user pool:
    #     `arn:partition:cognito-idp:region:account-id:userpool/user-pool-id `
    #
    #   * For an App Runner service:
    #     `arn:partition:apprunner:region:account-id:service/apprunner-service-name/apprunner-service-id
    #     `
    #
    #   * For an Amazon Web Services Verified Access instance:
    #     `arn:partition:ec2:region:account-id:verified-access-instance/instance-id
    #     `
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_web_acl({
    #     web_acl_arn: "ResourceArn", # required
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/AssociateWebACL AWS API Documentation
    #
    # @overload associate_web_acl(params = {})
    # @param [Hash] params ({})
    def associate_web_acl(params = {}, options = {})
      req = build_request(:associate_web_acl, params)
      req.send_request(options)
    end

    # Returns the web ACL capacity unit (WCU) requirements for a specified
    # scope and set of rules. You can use this to check the capacity
    # requirements for the rules you want to use in a RuleGroup or WebACL.
    #
    # WAF uses WCUs to calculate and control the operating resources that
    # are used to run your rules, rule groups, and web ACLs. WAF calculates
    # capacity differently for each rule type, to reflect the relative cost
    # of each rule. Simple rules that cost little to run use fewer WCUs than
    # more complex rules that use more processing power. Rule group capacity
    # is fixed at creation, which helps users plan their web ACL WCU usage
    # when they use a rule group. For more information, see [WAF web ACL
    # capacity units (WCU)][1] in the *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, Array<Types::Rule>] :rules
    #   An array of Rule that you're configuring to use in a rule group or
    #   web ACL.
    #
    # @return [Types::CheckCapacityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CheckCapacityResponse#capacity #capacity} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_capacity({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     rules: [ # required
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             sensitivity_level: "LOW", # accepts LOW, HIGH
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW, XK
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP, CUSTOM_KEYS, CONSTANT
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #               },
    #             ],
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON", # required, accepts COMMON, TARGETED
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           none: {
    #           },
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CheckCapacity AWS API Documentation
    #
    # @overload check_capacity(params = {})
    # @param [Hash] params ({})
    def check_capacity(params = {}, options = {})
      req = build_request(:check_capacity, params)
      req.send_request(options)
    end

    # Creates an API key that contains a set of token domains.
    #
    # API keys are required for the integration of the CAPTCHA API in your
    # JavaScript client applications. The API lets you customize the
    # placement and characteristics of the CAPTCHA puzzle for your end
    # users. For more information about the CAPTCHA JavaScript integration,
    # see [WAF client application integration][1] in the *WAF Developer
    # Guide*.
    #
    # You can use a single key for up to 5 domains. After you generate a
    # key, you can copy it for use in your JavaScript integration.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, Array<String>] :token_domains
    #   The client application domains that you want to use this API key for.
    #
    #   Example JSON: `"TokenDomains": ["abc.com", "store.abc.com"]`
    #
    #   Public suffixes aren't allowed. For example, you can't use `usa.gov`
    #   or `co.uk` as token domains.
    #
    # @return [Types::CreateAPIKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAPIKeyResponse#api_key #api_key} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_key({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     token_domains: ["TokenDomain"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.api_key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateAPIKey AWS API Documentation
    #
    # @overload create_api_key(params = {})
    # @param [Hash] params ({})
    def create_api_key(params = {}, options = {})
      req = build_request(:create_api_key, params)
      req.send_request(options)
    end

    # Creates an IPSet, which you use to identify web requests that
    # originate from specific IP addresses or ranges of IP addresses. For
    # example, if you're receiving a lot of requests from a ranges of IP
    # addresses, you can configure WAF to block them using an IPSet that
    # lists those IP addresses.
    #
    # @option params [required, String] :name
    #   The name of the IP set. You cannot change the name of an `IPSet` after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :description
    #   A description of the IP set that helps with identification.
    #
    # @option params [required, String] :ip_address_version
    #   The version of the IP addresses, either `IPV4` or `IPV6`.
    #
    # @option params [required, Array<String>] :addresses
    #   Contains an array of strings that specifies zero or more IP addresses
    #   or blocks of IP addresses. All addresses must be specified using
    #   Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4
    #   and IPv6 CIDR ranges except for `/0`.
    #
    #   Example address strings:
    #
    #   * To configure WAF to allow, block, or count requests that originated
    #     from the IP address 192.0.2.44, specify `192.0.2.44/32`.
    #
    #   * To configure WAF to allow, block, or count requests that originated
    #     from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #     `192.0.2.0/24`.
    #
    #   * To configure WAF to allow, block, or count requests that originated
    #     from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure WAF to allow, block, or count requests that originated
    #     from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #   Example JSON `Addresses` specifications:
    #
    #   * Empty array: `"Addresses": []`
    #
    #   * Array with one address: `"Addresses": ["192.0.2.44/32"]`
    #
    #   * Array with three addresses: `"Addresses": ["192.0.2.44/32",
    #     "192.0.2.0/24", "192.0.0.0/16"]`
    #
    #   * INVALID specification: `"Addresses": [""]` INVALID
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key:value pairs to associate with the resource.
    #
    # @return [Types::CreateIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIPSetResponse#summary #summary} => Types::IPSetSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     description: "EntityDescription",
    #     ip_address_version: "IPV4", # required, accepts IPV4, IPV6
    #     addresses: ["IPAddress"], # required
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
    #   resp.summary.name #=> String
    #   resp.summary.id #=> String
    #   resp.summary.description #=> String
    #   resp.summary.lock_token #=> String
    #   resp.summary.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateIPSet AWS API Documentation
    #
    # @overload create_ip_set(params = {})
    # @param [Hash] params ({})
    def create_ip_set(params = {}, options = {})
      req = build_request(:create_ip_set, params)
      req.send_request(options)
    end

    # Creates a RegexPatternSet, which you reference in a
    # RegexPatternSetReferenceStatement, to have WAF inspect a web request
    # component for the specified patterns.
    #
    # @option params [required, String] :name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :description
    #   A description of the set that helps with identification.
    #
    # @option params [required, Array<Types::Regex>] :regular_expression_list
    #   Array of regular expression strings.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key:value pairs to associate with the resource.
    #
    # @return [Types::CreateRegexPatternSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRegexPatternSetResponse#summary #summary} => Types::RegexPatternSetSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_regex_pattern_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     description: "EntityDescription",
    #     regular_expression_list: [ # required
    #       {
    #         regex_string: "RegexPatternString",
    #       },
    #     ],
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
    #   resp.summary.name #=> String
    #   resp.summary.id #=> String
    #   resp.summary.description #=> String
    #   resp.summary.lock_token #=> String
    #   resp.summary.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateRegexPatternSet AWS API Documentation
    #
    # @overload create_regex_pattern_set(params = {})
    # @param [Hash] params ({})
    def create_regex_pattern_set(params = {}, options = {})
      req = build_request(:create_regex_pattern_set, params)
      req.send_request(options)
    end

    # Creates a RuleGroup per the specifications provided.
    #
    # A rule group defines a collection of rules to inspect and control web
    # requests that you can use in a WebACL. When you create a rule group,
    # you define an immutable capacity limit. If you update a rule group,
    # you must stay within the capacity. This allows others to reuse the
    # rule group with confidence in its capacity requirements.
    #
    # @option params [required, String] :name
    #   The name of the rule group. You cannot change the name of a rule group
    #   after you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, Integer] :capacity
    #   The web ACL capacity units (WCUs) required for this rule group.
    #
    #   When you create your own rule group, you define this, and you cannot
    #   change it after creation. When you add or modify the rules in a rule
    #   group, WAF enforces this limit. You can check the capacity for a set
    #   of rules using CheckCapacity.
    #
    #   WAF uses WCUs to calculate and control the operating resources that
    #   are used to run your rules, rule groups, and web ACLs. WAF calculates
    #   capacity differently for each rule type, to reflect the relative cost
    #   of each rule. Simple rules that cost little to run use fewer WCUs than
    #   more complex rules that use more processing power. Rule group capacity
    #   is fixed at creation, which helps users plan their web ACL WCU usage
    #   when they use a rule group. For more information, see [WAF web ACL
    #   capacity units (WCU)][1] in the *WAF Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/aws-waf-capacity-units.html
    #
    # @option params [String] :description
    #   A description of the rule group that helps with identification.
    #
    # @option params [Array<Types::Rule>] :rules
    #   The Rule statements used to identify the web requests that you want to
    #   allow, block, or count. Each rule includes one top-level statement
    #   that WAF uses to identify matching web requests, and parameters that
    #   govern how WAF handles them.
    #
    # @option params [required, Types::VisibilityConfig] :visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key:value pairs to associate with the resource.
    #
    # @option params [Hash<String,Types::CustomResponseBody>] :custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the rule group, and then use them in the
    #   rules that you define in the rule group.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the *WAF
    #   Developer Guide*.
    #
    #   For information about the limits on count and size for custom request
    #   and response settings, see [WAF quotas][2] in the *WAF Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #
    # @return [Types::CreateRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRuleGroupResponse#summary #summary} => Types::RuleGroupSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_rule_group({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     capacity: 1, # required
    #     description: "EntityDescription",
    #     rules: [
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             sensitivity_level: "LOW", # accepts LOW, HIGH
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW, XK
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP, CUSTOM_KEYS, CONSTANT
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #               },
    #             ],
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON", # required, accepts COMMON, TARGETED
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           none: {
    #           },
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #       },
    #     ],
    #     visibility_config: { # required
    #       sampled_requests_enabled: false, # required
    #       cloud_watch_metrics_enabled: false, # required
    #       metric_name: "MetricName", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     custom_response_bodies: {
    #       "EntityName" => {
    #         content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #         content: "ResponseContent", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.name #=> String
    #   resp.summary.id #=> String
    #   resp.summary.description #=> String
    #   resp.summary.lock_token #=> String
    #   resp.summary.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateRuleGroup AWS API Documentation
    #
    # @overload create_rule_group(params = {})
    # @param [Hash] params ({})
    def create_rule_group(params = {}, options = {})
      req = build_request(:create_rule_group, params)
      req.send_request(options)
    end

    # Creates a WebACL per the specifications provided.
    #
    # A web ACL defines a collection of rules to use to inspect and control
    # web requests. Each rule has an action defined (allow, block, or count)
    # for requests that match the statement of the rule. In the web ACL, you
    # assign a default action to take (allow, block) for any request that
    # does not match any of the rules. The rules in a web ACL can be a
    # combination of the types Rule, RuleGroup, and managed rule group. You
    # can associate a web ACL with one or more Amazon Web Services resources
    # to protect. The resources can be an Amazon CloudFront distribution, an
    # Amazon API Gateway REST API, an Application Load Balancer, an AppSync
    # GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    # Amazon Web Services Verified Access instance.
    #
    # @option params [required, String] :name
    #   The name of the web ACL. You cannot change the name of a web ACL after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, Types::DefaultAction] :default_action
    #   The action to perform if none of the `Rules` contained in the `WebACL`
    #   match.
    #
    # @option params [String] :description
    #   A description of the web ACL that helps with identification.
    #
    # @option params [Array<Types::Rule>] :rules
    #   The Rule statements used to identify the web requests that you want to
    #   allow, block, or count. Each rule includes one top-level statement
    #   that WAF uses to identify matching web requests, and parameters that
    #   govern how WAF handles them.
    #
    # @option params [required, Types::VisibilityConfig] :visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #
    # @option params [Array<Types::Tag>] :tags
    #   An array of key:value pairs to associate with the resource.
    #
    # @option params [Hash<String,Types::CustomResponseBody>] :custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the web ACL, and then use them in the
    #   rules and default actions that you define in the web ACL.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the *WAF
    #   Developer Guide*.
    #
    #   For information about the limits on count and size for custom request
    #   and response settings, see [WAF quotas][2] in the *WAF Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #
    # @option params [Types::CaptchaConfig] :captcha_config
    #   Specifies how WAF should handle `CAPTCHA` evaluations for rules that
    #   don't have their own `CaptchaConfig` settings. If you don't specify
    #   this, WAF uses its default settings for `CaptchaConfig`.
    #
    # @option params [Types::ChallengeConfig] :challenge_config
    #   Specifies how WAF should handle challenge evaluations for rules that
    #   don't have their own `ChallengeConfig` settings. If you don't
    #   specify this, WAF uses its default settings for `ChallengeConfig`.
    #
    # @option params [Array<String>] :token_domains
    #   Specifies the domains that WAF should accept in a web request token.
    #   This enables the use of tokens across multiple protected websites.
    #   When WAF provides a token, it uses the domain of the Amazon Web
    #   Services resource that the web ACL is protecting. If you don't
    #   specify a list of token domains, WAF accepts tokens only for the
    #   domain of the protected resource. With a token domain list, WAF
    #   accepts the resource's host domain plus all domains in the token
    #   domain list, including their prefixed subdomains.
    #
    #   Example JSON: `"TokenDomains": \{ "mywebsite.com",
    #   "myotherwebsite.com" \}`
    #
    #   Public suffixes aren't allowed. For example, you can't use `usa.gov`
    #   or `co.uk` as token domains.
    #
    # @option params [Types::AssociationConfig] :association_config
    #   Specifies custom configurations for the associations between the web
    #   ACL and protected resources.
    #
    #   Use this to customize the maximum size of the request body that your
    #   protected CloudFront distributions forward to WAF for inspection. The
    #   default is 16 KB (16,384 kilobytes).
    #
    #   <note markdown="1"> You are charged additional fees when your protected resources forward
    #   body sizes that are larger than the default. For more information, see
    #   [WAF Pricing][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/waf/pricing/
    #
    # @return [Types::CreateWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateWebACLResponse#summary #summary} => Types::WebACLSummary
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_web_acl({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     default_action: { # required
    #       block: {
    #         custom_response: {
    #           response_code: 1, # required
    #           custom_response_body_key: "EntityName",
    #           response_headers: [
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             },
    #           ],
    #         },
    #       },
    #       allow: {
    #         custom_request_handling: {
    #           insert_headers: [ # required
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     description: "EntityDescription",
    #     rules: [
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             sensitivity_level: "LOW", # accepts LOW, HIGH
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW, XK
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP, CUSTOM_KEYS, CONSTANT
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #               },
    #             ],
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON", # required, accepts COMMON, TARGETED
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           none: {
    #           },
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #       },
    #     ],
    #     visibility_config: { # required
    #       sampled_requests_enabled: false, # required
    #       cloud_watch_metrics_enabled: false, # required
    #       metric_name: "MetricName", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     custom_response_bodies: {
    #       "EntityName" => {
    #         content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #         content: "ResponseContent", # required
    #       },
    #     },
    #     captcha_config: {
    #       immunity_time_property: {
    #         immunity_time: 1, # required
    #       },
    #     },
    #     challenge_config: {
    #       immunity_time_property: {
    #         immunity_time: 1, # required
    #       },
    #     },
    #     token_domains: ["TokenDomain"],
    #     association_config: {
    #       request_body: {
    #         "CLOUDFRONT" => {
    #           default_size_inspection_limit: "KB_16", # required, accepts KB_16, KB_32, KB_48, KB_64
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.summary.name #=> String
    #   resp.summary.id #=> String
    #   resp.summary.description #=> String
    #   resp.summary.lock_token #=> String
    #   resp.summary.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateWebACL AWS API Documentation
    #
    # @overload create_web_acl(params = {})
    # @param [Hash] params ({})
    def create_web_acl(params = {}, options = {})
      req = build_request(:create_web_acl, params)
      req.send_request(options)
    end

    # Deletes all rule groups that are managed by Firewall Manager for the
    # specified web ACL.
    #
    # You can only use this if `ManagedByFirewallManager` is false in the
    # specified WebACL.
    #
    # @option params [required, String] :web_acl_arn
    #   The Amazon Resource Name (ARN) of the web ACL.
    #
    # @option params [required, String] :web_acl_lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @return [Types::DeleteFirewallManagerRuleGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteFirewallManagerRuleGroupsResponse#next_web_acl_lock_token #next_web_acl_lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_firewall_manager_rule_groups({
    #     web_acl_arn: "ResourceArn", # required
    #     web_acl_lock_token: "LockToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_web_acl_lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteFirewallManagerRuleGroups AWS API Documentation
    #
    # @overload delete_firewall_manager_rule_groups(params = {})
    # @param [Hash] params ({})
    def delete_firewall_manager_rule_groups(params = {}, options = {})
      req = build_request(:delete_firewall_manager_rule_groups, params)
      req.send_request(options)
    end

    # Deletes the specified IPSet.
    #
    # @option params [required, String] :name
    #   The name of the IP set. You cannot change the name of an `IPSet` after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the set. This ID is returned in the responses
    #   to create and list commands. You provide it to operations like update
    #   and delete.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteIPSet AWS API Documentation
    #
    # @overload delete_ip_set(params = {})
    # @param [Hash] params ({})
    def delete_ip_set(params = {}, options = {})
      req = build_request(:delete_ip_set, params)
      req.send_request(options)
    end

    # Deletes the LoggingConfiguration from the specified web ACL.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the web ACL from which you want to
    #   delete the LoggingConfiguration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_logging_configuration({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteLoggingConfiguration AWS API Documentation
    #
    # @overload delete_logging_configuration(params = {})
    # @param [Hash] params ({})
    def delete_logging_configuration(params = {}, options = {})
      req = build_request(:delete_logging_configuration, params)
      req.send_request(options)
    end

    # Permanently deletes an IAM policy from the specified rule group.
    #
    # You must be the owner of the rule group to perform this operation.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the rule group from which you want
    #   to delete the policy.
    #
    #   You must be the owner of the rule group to perform this operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeletePermissionPolicy AWS API Documentation
    #
    # @overload delete_permission_policy(params = {})
    # @param [Hash] params ({})
    def delete_permission_policy(params = {}, options = {})
      req = build_request(:delete_permission_policy, params)
      req.send_request(options)
    end

    # Deletes the specified RegexPatternSet.
    #
    # @option params [required, String] :name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the set. This ID is returned in the responses
    #   to create and list commands. You provide it to operations like update
    #   and delete.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_regex_pattern_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteRegexPatternSet AWS API Documentation
    #
    # @overload delete_regex_pattern_set(params = {})
    # @param [Hash] params ({})
    def delete_regex_pattern_set(params = {}, options = {})
      req = build_request(:delete_regex_pattern_set, params)
      req.send_request(options)
    end

    # Deletes the specified RuleGroup.
    #
    # @option params [required, String] :name
    #   The name of the rule group. You cannot change the name of a rule group
    #   after you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the rule group. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule_group({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteRuleGroup AWS API Documentation
    #
    # @overload delete_rule_group(params = {})
    # @param [Hash] params ({})
    def delete_rule_group(params = {}, options = {})
      req = build_request(:delete_rule_group, params)
      req.send_request(options)
    end

    # Deletes the specified WebACL.
    #
    # You can only use this if `ManagedByFirewallManager` is false in the
    # specified WebACL.
    #
    # <note markdown="1"> Before deleting any web ACL, first disassociate it from all resources.
    #
    #  * To retrieve a list of the resources that are associated with a web
    #   ACL, use the following calls:
    #
    #   * For regional resources, call ListResourcesForWebACL.
    #
    #   * For Amazon CloudFront distributions, use the CloudFront call
    #     `ListDistributionsByWebACLId`. For information, see
    #     [ListDistributionsByWebACLId][1] in the *Amazon CloudFront API
    #     Reference*.
    #
    # * To disassociate a resource from a web ACL, use the following calls:
    #
    #   * For regional resources, call DisassociateWebACL.
    #
    #   * For Amazon CloudFront distributions, provide an empty web ACL ID
    #     in the CloudFront call `UpdateDistribution`. For information, see
    #     [UpdateDistribution][2] in the *Amazon CloudFront API Reference*.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ListDistributionsByWebACLId.html
    # [2]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
    #
    # @option params [required, String] :name
    #   The name of the web ACL. You cannot change the name of a web ACL after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_web_acl({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DeleteWebACL AWS API Documentation
    #
    # @overload delete_web_acl(params = {})
    # @param [Hash] params ({})
    def delete_web_acl(params = {}, options = {})
      req = build_request(:delete_web_acl, params)
      req.send_request(options)
    end

    # Provides high-level information for the Amazon Web Services Managed
    # Rules rule groups and Amazon Web Services Marketplace managed rule
    # groups.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @return [Types::DescribeAllManagedProductsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAllManagedProductsResponse#managed_products #managed_products} => Array&lt;Types::ManagedProductDescriptor&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_all_managed_products({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_products #=> Array
    #   resp.managed_products[0].vendor_name #=> String
    #   resp.managed_products[0].managed_rule_set_name #=> String
    #   resp.managed_products[0].product_id #=> String
    #   resp.managed_products[0].product_link #=> String
    #   resp.managed_products[0].product_title #=> String
    #   resp.managed_products[0].product_description #=> String
    #   resp.managed_products[0].sns_topic_arn #=> String
    #   resp.managed_products[0].is_versioning_supported #=> Boolean
    #   resp.managed_products[0].is_advanced_managed_rule_set #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DescribeAllManagedProducts AWS API Documentation
    #
    # @overload describe_all_managed_products(params = {})
    # @param [Hash] params ({})
    def describe_all_managed_products(params = {}, options = {})
      req = build_request(:describe_all_managed_products, params)
      req.send_request(options)
    end

    # Provides high-level information for the managed rule groups owned by a
    # specific vendor.
    #
    # @option params [required, String] :vendor_name
    #   The name of the managed rule group vendor. You use this, along with
    #   the rule group name, to identify a rule group.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @return [Types::DescribeManagedProductsByVendorResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeManagedProductsByVendorResponse#managed_products #managed_products} => Array&lt;Types::ManagedProductDescriptor&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_products_by_vendor({
    #     vendor_name: "VendorName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_products #=> Array
    #   resp.managed_products[0].vendor_name #=> String
    #   resp.managed_products[0].managed_rule_set_name #=> String
    #   resp.managed_products[0].product_id #=> String
    #   resp.managed_products[0].product_link #=> String
    #   resp.managed_products[0].product_title #=> String
    #   resp.managed_products[0].product_description #=> String
    #   resp.managed_products[0].sns_topic_arn #=> String
    #   resp.managed_products[0].is_versioning_supported #=> Boolean
    #   resp.managed_products[0].is_advanced_managed_rule_set #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DescribeManagedProductsByVendor AWS API Documentation
    #
    # @overload describe_managed_products_by_vendor(params = {})
    # @param [Hash] params ({})
    def describe_managed_products_by_vendor(params = {}, options = {})
      req = build_request(:describe_managed_products_by_vendor, params)
      req.send_request(options)
    end

    # Provides high-level information for a managed rule group, including
    # descriptions of the rules.
    #
    # @option params [required, String] :vendor_name
    #   The name of the managed rule group vendor. You use this, along with
    #   the rule group name, to identify a rule group.
    #
    # @option params [required, String] :name
    #   The name of the managed rule group. You use this, along with the
    #   vendor name, to identify the rule group.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :version_name
    #   The version of the rule group. You can only use a version that is not
    #   scheduled for expiration. If you don't provide this, WAF uses the
    #   vendor's default version.
    #
    # @return [Types::DescribeManagedRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeManagedRuleGroupResponse#version_name #version_name} => String
    #   * {Types::DescribeManagedRuleGroupResponse#sns_topic_arn #sns_topic_arn} => String
    #   * {Types::DescribeManagedRuleGroupResponse#capacity #capacity} => Integer
    #   * {Types::DescribeManagedRuleGroupResponse#rules #rules} => Array&lt;Types::RuleSummary&gt;
    #   * {Types::DescribeManagedRuleGroupResponse#label_namespace #label_namespace} => String
    #   * {Types::DescribeManagedRuleGroupResponse#available_labels #available_labels} => Array&lt;Types::LabelSummary&gt;
    #   * {Types::DescribeManagedRuleGroupResponse#consumed_labels #consumed_labels} => Array&lt;Types::LabelSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_managed_rule_group({
    #     vendor_name: "VendorName", # required
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     version_name: "VersionKeyString",
    #   })
    #
    # @example Response structure
    #
    #   resp.version_name #=> String
    #   resp.sns_topic_arn #=> String
    #   resp.capacity #=> Integer
    #   resp.rules #=> Array
    #   resp.rules[0].name #=> String
    #   resp.rules[0].action.block.custom_response.response_code #=> Integer
    #   resp.rules[0].action.block.custom_response.custom_response_body_key #=> String
    #   resp.rules[0].action.block.custom_response.response_headers #=> Array
    #   resp.rules[0].action.block.custom_response.response_headers[0].name #=> String
    #   resp.rules[0].action.block.custom_response.response_headers[0].value #=> String
    #   resp.rules[0].action.allow.custom_request_handling.insert_headers #=> Array
    #   resp.rules[0].action.allow.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rules[0].action.allow.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rules[0].action.count.custom_request_handling.insert_headers #=> Array
    #   resp.rules[0].action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rules[0].action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rules[0].action.captcha.custom_request_handling.insert_headers #=> Array
    #   resp.rules[0].action.captcha.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rules[0].action.captcha.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rules[0].action.challenge.custom_request_handling.insert_headers #=> Array
    #   resp.rules[0].action.challenge.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rules[0].action.challenge.custom_request_handling.insert_headers[0].value #=> String
    #   resp.label_namespace #=> String
    #   resp.available_labels #=> Array
    #   resp.available_labels[0].name #=> String
    #   resp.consumed_labels #=> Array
    #   resp.consumed_labels[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DescribeManagedRuleGroup AWS API Documentation
    #
    # @overload describe_managed_rule_group(params = {})
    # @param [Hash] params ({})
    def describe_managed_rule_group(params = {}, options = {})
      req = build_request(:describe_managed_rule_group, params)
      req.send_request(options)
    end

    # Disassociates the specified regional application resource from any
    # existing web ACL association. A resource can have at most one web ACL
    # association. A regional application can be an Application Load
    # Balancer (ALB), an Amazon API Gateway REST API, an AppSync GraphQL
    # API, an Amazon Cognito user pool, an App Runner service, or an Amazon
    # Web Services Verified Access instance.
    #
    # For Amazon CloudFront, don't use this call. Instead, use your
    # CloudFront distribution configuration. To disassociate a web ACL,
    # provide an empty web ACL ID in the CloudFront call
    # `UpdateDistribution`. For information, see [UpdateDistribution][1] in
    # the *Amazon CloudFront API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to disassociate from
    #   the web ACL.
    #
    #   The ARN must be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:partition:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an Amazon API Gateway REST API:
    #     `arn:partition:apigateway:region::/restapis/api-id/stages/stage-name
    #     `
    #
    #   * For an AppSync GraphQL API:
    #     `arn:partition:appsync:region:account-id:apis/GraphQLApiId `
    #
    #   * For an Amazon Cognito user pool:
    #     `arn:partition:cognito-idp:region:account-id:userpool/user-pool-id `
    #
    #   * For an App Runner service:
    #     `arn:partition:apprunner:region:account-id:service/apprunner-service-name/apprunner-service-id
    #     `
    #
    #   * For an Amazon Web Services Verified Access instance:
    #     `arn:partition:ec2:region:account-id:verified-access-instance/instance-id
    #     `
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_web_acl({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/DisassociateWebACL AWS API Documentation
    #
    # @overload disassociate_web_acl(params = {})
    # @param [Hash] params ({})
    def disassociate_web_acl(params = {}, options = {})
      req = build_request(:disassociate_web_acl, params)
      req.send_request(options)
    end

    # Generates a presigned download URL for the specified release of the
    # mobile SDK.
    #
    # The mobile SDK is not generally available. Customers who have access
    # to the mobile SDK can use it to establish and manage WAF tokens for
    # use in HTTP(S) requests from a mobile device to WAF. For more
    # information, see [WAF client application integration][1] in the *WAF
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
    #
    # @option params [required, String] :platform
    #   The device platform.
    #
    # @option params [required, String] :release_version
    #   The release version. For the latest available version, specify
    #   `LATEST`.
    #
    # @return [Types::GenerateMobileSdkReleaseUrlResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GenerateMobileSdkReleaseUrlResponse#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_mobile_sdk_release_url({
    #     platform: "IOS", # required, accepts IOS, ANDROID
    #     release_version: "VersionKeyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GenerateMobileSdkReleaseUrl AWS API Documentation
    #
    # @overload generate_mobile_sdk_release_url(params = {})
    # @param [Hash] params ({})
    def generate_mobile_sdk_release_url(params = {}, options = {})
      req = build_request(:generate_mobile_sdk_release_url, params)
      req.send_request(options)
    end

    # Returns your API key in decrypted form. Use this to check the token
    # domains that you have defined for the key.
    #
    # API keys are required for the integration of the CAPTCHA API in your
    # JavaScript client applications. The API lets you customize the
    # placement and characteristics of the CAPTCHA puzzle for your end
    # users. For more information about the CAPTCHA JavaScript integration,
    # see [WAF client application integration][1] in the *WAF Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :api_key
    #   The encrypted API key.
    #
    # @return [Types::GetDecryptedAPIKeyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDecryptedAPIKeyResponse#token_domains #token_domains} => Array&lt;String&gt;
    #   * {Types::GetDecryptedAPIKeyResponse#creation_timestamp #creation_timestamp} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_decrypted_api_key({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     api_key: "APIKey", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.token_domains #=> Array
    #   resp.token_domains[0] #=> String
    #   resp.creation_timestamp #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetDecryptedAPIKey AWS API Documentation
    #
    # @overload get_decrypted_api_key(params = {})
    # @param [Hash] params ({})
    def get_decrypted_api_key(params = {}, options = {})
      req = build_request(:get_decrypted_api_key, params)
      req.send_request(options)
    end

    # Retrieves the specified IPSet.
    #
    # @option params [required, String] :name
    #   The name of the IP set. You cannot change the name of an `IPSet` after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the set. This ID is returned in the responses
    #   to create and list commands. You provide it to operations like update
    #   and delete.
    #
    # @return [Types::GetIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIPSetResponse#ip_set #ip_set} => Types::IPSet
    #   * {Types::GetIPSetResponse#lock_token #lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ip_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ip_set.name #=> String
    #   resp.ip_set.id #=> String
    #   resp.ip_set.arn #=> String
    #   resp.ip_set.description #=> String
    #   resp.ip_set.ip_address_version #=> String, one of "IPV4", "IPV6"
    #   resp.ip_set.addresses #=> Array
    #   resp.ip_set.addresses[0] #=> String
    #   resp.lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetIPSet AWS API Documentation
    #
    # @overload get_ip_set(params = {})
    # @param [Hash] params ({})
    def get_ip_set(params = {}, options = {})
      req = build_request(:get_ip_set, params)
      req.send_request(options)
    end

    # Returns the LoggingConfiguration for the specified web ACL.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the web ACL for which you want to
    #   get the LoggingConfiguration.
    #
    # @return [Types::GetLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoggingConfigurationResponse#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_logging_configuration({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configuration.resource_arn #=> String
    #   resp.logging_configuration.log_destination_configs #=> Array
    #   resp.logging_configuration.log_destination_configs[0] #=> String
    #   resp.logging_configuration.redacted_fields #=> Array
    #   resp.logging_configuration.redacted_fields[0].single_header.name #=> String
    #   resp.logging_configuration.redacted_fields[0].single_query_argument.name #=> String
    #   resp.logging_configuration.redacted_fields[0].body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths #=> Array
    #   resp.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configuration.redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.logging_configuration.redacted_fields[0].json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.redacted_fields[0].headers.match_pattern.included_headers #=> Array
    #   resp.logging_configuration.redacted_fields[0].headers.match_pattern.included_headers[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].headers.match_pattern.excluded_headers #=> Array
    #   resp.logging_configuration.redacted_fields[0].headers.match_pattern.excluded_headers[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configuration.redacted_fields[0].headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.redacted_fields[0].cookies.match_pattern.included_cookies #=> Array
    #   resp.logging_configuration.redacted_fields[0].cookies.match_pattern.included_cookies[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].cookies.match_pattern.excluded_cookies #=> Array
    #   resp.logging_configuration.redacted_fields[0].cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configuration.redacted_fields[0].cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.redacted_fields[0].header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.managed_by_firewall_manager #=> Boolean
    #   resp.logging_configuration.logging_filter.filters #=> Array
    #   resp.logging_configuration.logging_filter.filters[0].behavior #=> String, one of "KEEP", "DROP"
    #   resp.logging_configuration.logging_filter.filters[0].requirement #=> String, one of "MEETS_ALL", "MEETS_ANY"
    #   resp.logging_configuration.logging_filter.filters[0].conditions #=> Array
    #   resp.logging_configuration.logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of "ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"
    #   resp.logging_configuration.logging_filter.filters[0].conditions[0].label_name_condition.label_name #=> String
    #   resp.logging_configuration.logging_filter.default_behavior #=> String, one of "KEEP", "DROP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetLoggingConfiguration AWS API Documentation
    #
    # @overload get_logging_configuration(params = {})
    # @param [Hash] params ({})
    def get_logging_configuration(params = {}, options = {})
      req = build_request(:get_logging_configuration, params)
      req.send_request(options)
    end

    # Retrieves the specified managed rule set.
    #
    # <note markdown="1"> This is intended for use only by vendors of managed rule sets. Vendors
    # are Amazon Web Services and Amazon Web Services Marketplace sellers.
    #
    #  Vendors, you can use the managed rule set APIs to provide controlled
    # rollout of your versioned managed rule group offerings for your
    # customers. The APIs are `ListManagedRuleSets`, `GetManagedRuleSet`,
    # `PutManagedRuleSetVersions`, and
    # `UpdateManagedRuleSetVersionExpiryDate`.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the managed rule set. You use this, along with the rule
    #   set ID, to identify the rule set.
    #
    #   This name is assigned to the corresponding managed rule group, which
    #   your customers can access and use.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the managed rule set. The ID is returned in
    #   the responses to commands like `list`. You provide it to operations
    #   like `get` and `update`.
    #
    # @return [Types::GetManagedRuleSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetManagedRuleSetResponse#managed_rule_set #managed_rule_set} => Types::ManagedRuleSet
    #   * {Types::GetManagedRuleSetResponse#lock_token #lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_managed_rule_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_rule_set.name #=> String
    #   resp.managed_rule_set.id #=> String
    #   resp.managed_rule_set.arn #=> String
    #   resp.managed_rule_set.description #=> String
    #   resp.managed_rule_set.published_versions #=> Hash
    #   resp.managed_rule_set.published_versions["VersionKeyString"].associated_rule_group_arn #=> String
    #   resp.managed_rule_set.published_versions["VersionKeyString"].capacity #=> Integer
    #   resp.managed_rule_set.published_versions["VersionKeyString"].forecasted_lifetime #=> Integer
    #   resp.managed_rule_set.published_versions["VersionKeyString"].publish_timestamp #=> Time
    #   resp.managed_rule_set.published_versions["VersionKeyString"].last_update_timestamp #=> Time
    #   resp.managed_rule_set.published_versions["VersionKeyString"].expiry_timestamp #=> Time
    #   resp.managed_rule_set.recommended_version #=> String
    #   resp.managed_rule_set.label_namespace #=> String
    #   resp.lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetManagedRuleSet AWS API Documentation
    #
    # @overload get_managed_rule_set(params = {})
    # @param [Hash] params ({})
    def get_managed_rule_set(params = {}, options = {})
      req = build_request(:get_managed_rule_set, params)
      req.send_request(options)
    end

    # Retrieves information for the specified mobile SDK release, including
    # release notes and tags.
    #
    # The mobile SDK is not generally available. Customers who have access
    # to the mobile SDK can use it to establish and manage WAF tokens for
    # use in HTTP(S) requests from a mobile device to WAF. For more
    # information, see [WAF client application integration][1] in the *WAF
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
    #
    # @option params [required, String] :platform
    #   The device platform.
    #
    # @option params [required, String] :release_version
    #   The release version. For the latest available version, specify
    #   `LATEST`.
    #
    # @return [Types::GetMobileSdkReleaseResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMobileSdkReleaseResponse#mobile_sdk_release #mobile_sdk_release} => Types::MobileSdkRelease
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mobile_sdk_release({
    #     platform: "IOS", # required, accepts IOS, ANDROID
    #     release_version: "VersionKeyString", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.mobile_sdk_release.release_version #=> String
    #   resp.mobile_sdk_release.timestamp #=> Time
    #   resp.mobile_sdk_release.release_notes #=> String
    #   resp.mobile_sdk_release.tags #=> Array
    #   resp.mobile_sdk_release.tags[0].key #=> String
    #   resp.mobile_sdk_release.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetMobileSdkRelease AWS API Documentation
    #
    # @overload get_mobile_sdk_release(params = {})
    # @param [Hash] params ({})
    def get_mobile_sdk_release(params = {}, options = {})
      req = build_request(:get_mobile_sdk_release, params)
      req.send_request(options)
    end

    # Returns the IAM policy that is attached to the specified rule group.
    #
    # You must be the owner of the rule group to perform this operation.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the rule group for which you want to
    #   get the policy.
    #
    # @return [Types::GetPermissionPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPermissionPolicyResponse#policy #policy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_permission_policy({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetPermissionPolicy AWS API Documentation
    #
    # @overload get_permission_policy(params = {})
    # @param [Hash] params ({})
    def get_permission_policy(params = {}, options = {})
      req = build_request(:get_permission_policy, params)
      req.send_request(options)
    end

    # Retrieves the IP addresses that are currently blocked by a rate-based
    # rule instance. This is only available for rate-based rules that
    # aggregate solely on the IP address or on the forwarded IP address.
    #
    # The maximum number of addresses that can be blocked for a single
    # rate-based rule instance is 10,000. If more than 10,000 addresses
    # exceed the rate limit, those with the highest rates are blocked.
    #
    # For a rate-based rule that you've defined inside a rule group,
    # provide the name of the rule group reference statement in your
    # request, in addition to the rate-based rule name and the web ACL name.
    #
    # WAF monitors web requests and manages keys independently for each
    # unique combination of web ACL, optional rule group, and rate-based
    # rule. For example, if you define a rate-based rule inside a rule
    # group, and then use the rule group in a web ACL, WAF monitors web
    # requests and manages keys for that web ACL, rule group reference
    # statement, and rate-based rule instance. If you use the same rule
    # group in a second web ACL, WAF monitors web requests and manages keys
    # for this second usage completely independent of your first.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :web_acl_name
    #   The name of the web ACL. You cannot change the name of a web ACL after
    #   you create it.
    #
    # @option params [required, String] :web_acl_id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [String] :rule_group_rule_name
    #   The name of the rule group reference statement in your web ACL. This
    #   is required only when you have the rate-based rule nested inside a
    #   rule group.
    #
    # @option params [required, String] :rule_name
    #   The name of the rate-based rule to get the keys for. If you have the
    #   rule defined inside a rule group that you're using in your web ACL,
    #   also provide the name of the rule group reference statement in the
    #   request parameter `RuleGroupRuleName`.
    #
    # @return [Types::GetRateBasedStatementManagedKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRateBasedStatementManagedKeysResponse#managed_keys_ipv4 #managed_keys_ipv4} => Types::RateBasedStatementManagedKeysIPSet
    #   * {Types::GetRateBasedStatementManagedKeysResponse#managed_keys_ipv6 #managed_keys_ipv6} => Types::RateBasedStatementManagedKeysIPSet
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rate_based_statement_managed_keys({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     web_acl_name: "EntityName", # required
    #     web_acl_id: "EntityId", # required
    #     rule_group_rule_name: "EntityName",
    #     rule_name: "EntityName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.managed_keys_ipv4.ip_address_version #=> String, one of "IPV4", "IPV6"
    #   resp.managed_keys_ipv4.addresses #=> Array
    #   resp.managed_keys_ipv4.addresses[0] #=> String
    #   resp.managed_keys_ipv6.ip_address_version #=> String, one of "IPV4", "IPV6"
    #   resp.managed_keys_ipv6.addresses #=> Array
    #   resp.managed_keys_ipv6.addresses[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRateBasedStatementManagedKeys AWS API Documentation
    #
    # @overload get_rate_based_statement_managed_keys(params = {})
    # @param [Hash] params ({})
    def get_rate_based_statement_managed_keys(params = {}, options = {})
      req = build_request(:get_rate_based_statement_managed_keys, params)
      req.send_request(options)
    end

    # Retrieves the specified RegexPatternSet.
    #
    # @option params [required, String] :name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the set. This ID is returned in the responses
    #   to create and list commands. You provide it to operations like update
    #   and delete.
    #
    # @return [Types::GetRegexPatternSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegexPatternSetResponse#regex_pattern_set #regex_pattern_set} => Types::RegexPatternSet
    #   * {Types::GetRegexPatternSetResponse#lock_token #lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_regex_pattern_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.regex_pattern_set.name #=> String
    #   resp.regex_pattern_set.id #=> String
    #   resp.regex_pattern_set.arn #=> String
    #   resp.regex_pattern_set.description #=> String
    #   resp.regex_pattern_set.regular_expression_list #=> Array
    #   resp.regex_pattern_set.regular_expression_list[0].regex_string #=> String
    #   resp.lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRegexPatternSet AWS API Documentation
    #
    # @overload get_regex_pattern_set(params = {})
    # @param [Hash] params ({})
    def get_regex_pattern_set(params = {}, options = {})
      req = build_request(:get_regex_pattern_set, params)
      req.send_request(options)
    end

    # Retrieves the specified RuleGroup.
    #
    # @option params [String] :name
    #   The name of the rule group. You cannot change the name of a rule group
    #   after you create it.
    #
    # @option params [String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :id
    #   A unique identifier for the rule group. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [String] :arn
    #   The Amazon Resource Name (ARN) of the entity.
    #
    # @return [Types::GetRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleGroupResponse#rule_group #rule_group} => Types::RuleGroup
    #   * {Types::GetRuleGroupResponse#lock_token #lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule_group({
    #     name: "EntityName",
    #     scope: "CLOUDFRONT", # accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId",
    #     arn: "ResourceArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_group.name #=> String
    #   resp.rule_group.id #=> String
    #   resp.rule_group.capacity #=> Integer
    #   resp.rule_group.arn #=> String
    #   resp.rule_group.description #=> String
    #   resp.rule_group.rules #=> Array
    #   resp.rule_group.rules[0].name #=> String
    #   resp.rule_group.rules[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.byte_match_statement.search_string #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.included_headers #=> Array
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_pattern.excluded_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.byte_match_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.byte_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.byte_match_statement.positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.headers.match_pattern.included_headers #=> Array
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.headers.match_pattern.excluded_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.sqli_match_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.sqli_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.sensitivity_level #=> String, one of "LOW", "HIGH"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.headers.match_pattern.included_headers #=> Array
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.headers.match_pattern.excluded_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.xss_match_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.xss_match_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.xss_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.headers.match_pattern.included_headers #=> Array
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.headers.match_pattern.excluded_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.size #=> Integer
    #   resp.rule_group.rules[0].statement.size_constraint_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.size_constraint_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.size_constraint_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.geo_match_statement.country_codes #=> Array
    #   resp.rule_group.rules[0].statement.geo_match_statement.country_codes[0] #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW", "XK"
    #   resp.rule_group.rules[0].statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.rule_group.rules[0].statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.arn #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides #=> Array
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].name #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.block.custom_response.response_code #=> Integer
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.block.custom_response.custom_response_body_key #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.block.custom_response.response_headers #=> Array
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.block.custom_response.response_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.block.custom_response.response_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.allow.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.allow.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.allow.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.count.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.captcha.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.captcha.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.captcha.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.challenge.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.challenge.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.rule_action_overrides[0].action_to_use.challenge.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.ip_set_reference_statement.arn #=> String
    #   resp.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of "FIRST", "LAST", "ANY"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.headers.match_pattern.included_headers #=> Array
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.headers.match_pattern.excluded_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.rate_based_statement.limit #=> Integer
    #   resp.rule_group.rules[0].statement.rate_based_statement.aggregate_key_type #=> String, one of "IP", "FORWARDED_IP", "CUSTOM_KEYS", "CONSTANT"
    #   resp.rule_group.rules[0].statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.rule_group.rules[0].statement.rate_based_statement.forwarded_ip_config.header_name #=> String
    #   resp.rule_group.rules[0].statement.rate_based_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys #=> Array
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].header.name #=> String
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].header.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].header.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].header.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].cookie.name #=> String
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].cookie.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].cookie.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].cookie.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].query_argument.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].query_argument.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].query_argument.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].query_string.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].query_string.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].query_string.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].statement.rate_based_statement.custom_keys[0].label_namespace.namespace #=> String
    #   resp.rule_group.rules[0].statement.and_statement.statements #=> Array
    #   resp.rule_group.rules[0].statement.and_statement.statements[0] #=> Types::Statement
    #   resp.rule_group.rules[0].statement.or_statement.statements #=> Array
    #   resp.rule_group.rules[0].statement.or_statement.statements[0] #=> Types::Statement
    #   resp.rule_group.rules[0].statement.not_statement.statement #=> Types::Statement
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.version #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.excluded_rules #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.excluded_rules[0].name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.scope_down_statement #=> Types::Statement
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].login_path #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].payload_type #=> String, one of "JSON", "FORM_ENCODED"
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].username_field.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].password_field.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_bot_control_rule_set.inspection_level #=> String, one of "COMMON", "TARGETED"
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.login_path #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.request_inspection.payload_type #=> String, one of "JSON", "FORM_ENCODED"
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.request_inspection.username_field.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.request_inspection.password_field.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.status_code.success_codes #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.status_code.success_codes[0] #=> Integer
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.status_code.failure_codes #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.status_code.failure_codes[0] #=> Integer
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.header.name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.header.success_values #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.header.success_values[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.header.failure_values #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.header.failure_values[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.body_contains.success_strings #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.body_contains.success_strings[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.body_contains.failure_strings #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.body_contains.failure_strings[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.json.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.json.success_values #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.json.success_values[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.json.failure_values #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.response_inspection.json.failure_values[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_atp_rule_set.enable_regex_in_path #=> Boolean
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.creation_path #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.registration_page_path #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.request_inspection.payload_type #=> String, one of "JSON", "FORM_ENCODED"
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.request_inspection.username_field.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.request_inspection.password_field.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.request_inspection.email_field.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.request_inspection.phone_number_fields #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.request_inspection.phone_number_fields[0].identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.request_inspection.address_fields #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.request_inspection.address_fields[0].identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.status_code.success_codes #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.status_code.success_codes[0] #=> Integer
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.status_code.failure_codes #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.status_code.failure_codes[0] #=> Integer
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.header.name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.header.success_values #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.header.success_values[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.header.failure_values #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.header.failure_values[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.body_contains.success_strings #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.body_contains.success_strings[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.body_contains.failure_strings #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.body_contains.failure_strings[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.json.identifier #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.json.success_values #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.json.success_values[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.json.failure_values #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.response_inspection.json.failure_values[0] #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.managed_rule_group_configs[0].aws_managed_rules_acfp_rule_set.enable_regex_in_path #=> Boolean
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.block.custom_response.response_code #=> Integer
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.block.custom_response.custom_response_body_key #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.block.custom_response.response_headers #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.block.custom_response.response_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.block.custom_response.response_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.allow.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.allow.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.allow.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.count.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.captcha.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.captcha.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.captcha.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.challenge.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.challenge.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.rule_action_overrides[0].action_to_use.challenge.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].statement.label_match_statement.scope #=> String, one of "LABEL", "NAMESPACE"
    #   resp.rule_group.rules[0].statement.label_match_statement.key #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.regex_string #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.headers.match_pattern.included_headers #=> Array
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.headers.match_pattern.included_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.headers.match_pattern.excluded_headers #=> Array
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.headers.match_pattern.excluded_headers[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.cookies.match_pattern.included_cookies #=> Array
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.cookies.match_pattern.included_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.cookies.match_pattern.excluded_cookies #=> Array
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_match_statement.field_to_match.header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.regex_match_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.regex_match_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.regex_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE", "BASE64_DECODE", "HEX_DECODE", "MD5", "REPLACE_COMMENTS", "ESCAPE_SEQ_DECODE", "SQL_HEX_DECODE", "CSS_DECODE", "JS_DECODE", "NORMALIZE_PATH", "NORMALIZE_PATH_WIN", "REMOVE_NULLS", "REPLACE_NULLS", "BASE64_DECODE_EXT", "URL_DECODE_UNI", "UTF8_TO_UNICODE"
    #   resp.rule_group.rules[0].action.block.custom_response.response_code #=> Integer
    #   resp.rule_group.rules[0].action.block.custom_response.custom_response_body_key #=> String
    #   resp.rule_group.rules[0].action.block.custom_response.response_headers #=> Array
    #   resp.rule_group.rules[0].action.block.custom_response.response_headers[0].name #=> String
    #   resp.rule_group.rules[0].action.block.custom_response.response_headers[0].value #=> String
    #   resp.rule_group.rules[0].action.allow.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].action.allow.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].action.allow.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].action.count.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].action.captcha.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].action.captcha.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].action.captcha.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].action.challenge.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].action.challenge.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].action.challenge.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].override_action.count.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].override_action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].override_action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].rule_labels #=> Array
    #   resp.rule_group.rules[0].rule_labels[0].name #=> String
    #   resp.rule_group.rules[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.rule_group.rules[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.rule_group.rules[0].visibility_config.metric_name #=> String
    #   resp.rule_group.rules[0].captcha_config.immunity_time_property.immunity_time #=> Integer
    #   resp.rule_group.rules[0].challenge_config.immunity_time_property.immunity_time #=> Integer
    #   resp.rule_group.visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.rule_group.visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.rule_group.visibility_config.metric_name #=> String
    #   resp.rule_group.label_namespace #=> String
    #   resp.rule_group.custom_response_bodies #=> Hash
    #   resp.rule_group.custom_response_bodies["EntityName"].content_type #=> String, one of "TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"
    #   resp.rule_group.custom_response_bodies["EntityName"].content #=> String
    #   resp.rule_group.available_labels #=> Array
    #   resp.rule_group.available_labels[0].name #=> String
    #   resp.rule_group.consumed_labels #=> Array
    #   resp.rule_group.consumed_labels[0].name #=> String
    #   resp.lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetRuleGroup AWS API Documentation
    #
    # @overload get_rule_group(params = {})
    # @param [Hash] params ({})
    def get_rule_group(params = {}, options = {})
      req = build_request(:get_rule_group, params)
      req.send_request(options)
    end

    # Gets detailed information about a specified number of requests--a
    # sample--that WAF randomly selects from among the first 5,000 requests
    # that your Amazon Web Services resource received during a time range
    # that you choose. You can specify a sample size of up to 500 requests,
    # and you can specify any time range in the previous three hours.
    #
    # `GetSampledRequests` returns a time range, which is usually the time
    # range that you specified. However, if your resource (such as a
    # CloudFront distribution) received 5,000 requests before the specified
    # time range elapsed, `GetSampledRequests` returns an updated time
    # range. This new time range indicates the actual period during which
    # WAF selected the requests in the sample.
    #
    # @option params [required, String] :web_acl_arn
    #   The Amazon resource name (ARN) of the `WebACL` for which you want a
    #   sample of requests.
    #
    # @option params [required, String] :rule_metric_name
    #   The metric name assigned to the `Rule` or `RuleGroup` dimension for
    #   which you want a sample of requests.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, Types::TimeWindow] :time_window
    #   The start date and time and the end date and time of the range for
    #   which you want `GetSampledRequests` to return a sample of requests.
    #   You must specify the times in Coordinated Universal Time (UTC) format.
    #   UTC format includes the special designator, `Z`. For example,
    #   `"2016-09-27T14:50Z"`. You can specify any time range in the previous
    #   three hours. If you specify a start time that's earlier than three
    #   hours ago, WAF sets it to three hours ago.
    #
    # @option params [required, Integer] :max_items
    #   The number of requests that you want WAF to return from among the
    #   first 5,000 requests that your Amazon Web Services resource received
    #   during the time range. If your resource received fewer requests than
    #   the value of `MaxItems`, `GetSampledRequests` returns information
    #   about all of them.
    #
    # @return [Types::GetSampledRequestsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSampledRequestsResponse#sampled_requests #sampled_requests} => Array&lt;Types::SampledHTTPRequest&gt;
    #   * {Types::GetSampledRequestsResponse#population_size #population_size} => Integer
    #   * {Types::GetSampledRequestsResponse#time_window #time_window} => Types::TimeWindow
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sampled_requests({
    #     web_acl_arn: "ResourceArn", # required
    #     rule_metric_name: "MetricName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     time_window: { # required
    #       start_time: Time.now, # required
    #       end_time: Time.now, # required
    #     },
    #     max_items: 1, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.sampled_requests #=> Array
    #   resp.sampled_requests[0].request.client_ip #=> String
    #   resp.sampled_requests[0].request.country #=> String
    #   resp.sampled_requests[0].request.uri #=> String
    #   resp.sampled_requests[0].request.method #=> String
    #   resp.sampled_requests[0].request.http_version #=> String
    #   resp.sampled_requests[0].request.headers #=> Array
    #   resp.sampled_requests[0].request.headers[0].name #=> String
    #   resp.sampled_requests[0].request.headers[0].value #=> String
    #   resp.sampled_requests[0].weight #=> Integer
    #   resp.sampled_requests[0].timestamp #=> Time
    #   resp.sampled_requests[0].action #=> String
    #   resp.sampled_requests[0].rule_name_within_rule_group #=> String
    #   resp.sampled_requests[0].request_headers_inserted #=> Array
    #   resp.sampled_requests[0].request_headers_inserted[0].name #=> String
    #   resp.sampled_requests[0].request_headers_inserted[0].value #=> String
    #   resp.sampled_requests[0].response_code_sent #=> Integer
    #   resp.sampled_requests[0].labels #=> Array
    #   resp.sampled_requests[0].labels[0].name #=> String
    #   resp.sampled_requests[0].captcha_response.response_code #=> Integer
    #   resp.sampled_requests[0].captcha_response.solve_timestamp #=> Integer
    #   resp.sampled_requests[0].captcha_response.failure_reason #=> String, one of "TOKEN_MISSING", "TOKEN_EXPIRED", "TOKEN_INVALID", "TOKEN_DOMAIN_MISMATCH"
    #   resp.sampled_requests[0].challenge_response.response_code #=> Integer
    #   resp.sampled_requests[0].challenge_response.solve_timestamp #=> Integer
    #   resp.sampled_requests[0].challenge_response.failure_reason #=> String, one of "TOKEN_MISSING", "TOKEN_EXPIRED", "TOKEN_INVALID", "TOKEN_DOMAIN_MISMATCH"
    #   resp.sampled_requests[0].overridden_action #=> String
    #   resp.population_size #=> Integer
    #   resp.time_window.start_time #=> Time
    #   resp.time_window.end_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetSampledRequests AWS API Documentation
    #
    # @overload get_sampled_requests(params = {})
    # @param [Hash] params ({})
    def get_sampled_requests(params = {}, options = {})
      req = build_request(:get_sampled_requests, params)
      req.send_request(options)
    end

    # Retrieves the specified WebACL.
    #
    # @option params [required, String] :name
    #   The name of the web ACL. You cannot change the name of a web ACL after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @return [Types::GetWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebACLResponse#web_acl #web_acl} => Types::WebACL
    #   * {Types::GetWebACLResponse#lock_token #lock_token} => String
    #   * {Types::GetWebACLResponse#application_integration_url #application_integration_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_acl({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetWebACL AWS API Documentation
    #
    # @overload get_web_acl(params = {})
    # @param [Hash] params ({})
    def get_web_acl(params = {}, options = {})
      req = build_request(:get_web_acl, params)
      req.send_request(options)
    end

    # Retrieves the WebACL for the specified resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose web ACL you want
    #   to retrieve.
    #
    #   The ARN must be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:partition:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an Amazon API Gateway REST API:
    #     `arn:partition:apigateway:region::/restapis/api-id/stages/stage-name
    #     `
    #
    #   * For an AppSync GraphQL API:
    #     `arn:partition:appsync:region:account-id:apis/GraphQLApiId `
    #
    #   * For an Amazon Cognito user pool:
    #     `arn:partition:cognito-idp:region:account-id:userpool/user-pool-id `
    #
    #   * For an App Runner service:
    #     `arn:partition:apprunner:region:account-id:service/apprunner-service-name/apprunner-service-id
    #     `
    #
    #   * For an Amazon Web Services Verified Access instance:
    #     `arn:partition:ec2:region:account-id:verified-access-instance/instance-id
    #     `
    #
    # @return [Types::GetWebACLForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebACLForResourceResponse#web_acl #web_acl} => Types::WebACL
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_acl_for_resource({
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetWebACLForResource AWS API Documentation
    #
    # @overload get_web_acl_for_resource(params = {})
    # @param [Hash] params ({})
    def get_web_acl_for_resource(params = {}, options = {})
      req = build_request(:get_web_acl_for_resource, params)
      req.send_request(options)
    end

    # Retrieves a list of the API keys that you've defined for the
    # specified scope.
    #
    # API keys are required for the integration of the CAPTCHA API in your
    # JavaScript client applications. The API lets you customize the
    # placement and characteristics of the CAPTCHA puzzle for your end
    # users. For more information about the CAPTCHA JavaScript integration,
    # see [WAF client application integration][1] in the *WAF Developer
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListAPIKeysResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAPIKeysResponse#next_marker #next_marker} => String
    #   * {Types::ListAPIKeysResponse#api_key_summaries #api_key_summaries} => Array&lt;Types::APIKeySummary&gt;
    #   * {Types::ListAPIKeysResponse#application_integration_url #application_integration_url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_api_keys({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.api_key_summaries #=> Array
    #   resp.api_key_summaries[0].token_domains #=> Array
    #   resp.api_key_summaries[0].token_domains[0] #=> String
    #   resp.api_key_summaries[0].api_key #=> String
    #   resp.api_key_summaries[0].creation_timestamp #=> Time
    #   resp.api_key_summaries[0].version #=> Integer
    #   resp.application_integration_url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListAPIKeys AWS API Documentation
    #
    # @overload list_api_keys(params = {})
    # @param [Hash] params ({})
    def list_api_keys(params = {}, options = {})
      req = build_request(:list_api_keys, params)
      req.send_request(options)
    end

    # Returns a list of the available versions for the specified managed
    # rule group.
    #
    # @option params [required, String] :vendor_name
    #   The name of the managed rule group vendor. You use this, along with
    #   the rule group name, to identify a rule group.
    #
    # @option params [required, String] :name
    #   The name of the managed rule group. You use this, along with the
    #   vendor name, to identify the rule group.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListAvailableManagedRuleGroupVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableManagedRuleGroupVersionsResponse#next_marker #next_marker} => String
    #   * {Types::ListAvailableManagedRuleGroupVersionsResponse#versions #versions} => Array&lt;Types::ManagedRuleGroupVersion&gt;
    #   * {Types::ListAvailableManagedRuleGroupVersionsResponse#current_default_version #current_default_version} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_managed_rule_group_versions({
    #     vendor_name: "VendorName", # required
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.versions #=> Array
    #   resp.versions[0].name #=> String
    #   resp.versions[0].last_update_timestamp #=> Time
    #   resp.current_default_version #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListAvailableManagedRuleGroupVersions AWS API Documentation
    #
    # @overload list_available_managed_rule_group_versions(params = {})
    # @param [Hash] params ({})
    def list_available_managed_rule_group_versions(params = {}, options = {})
      req = build_request(:list_available_managed_rule_group_versions, params)
      req.send_request(options)
    end

    # Retrieves an array of managed rule groups that are available for you
    # to use. This list includes all Amazon Web Services Managed Rules rule
    # groups and all of the Amazon Web Services Marketplace managed rule
    # groups that you're subscribed to.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListAvailableManagedRuleGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAvailableManagedRuleGroupsResponse#next_marker #next_marker} => String
    #   * {Types::ListAvailableManagedRuleGroupsResponse#managed_rule_groups #managed_rule_groups} => Array&lt;Types::ManagedRuleGroupSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_managed_rule_groups({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.managed_rule_groups #=> Array
    #   resp.managed_rule_groups[0].vendor_name #=> String
    #   resp.managed_rule_groups[0].name #=> String
    #   resp.managed_rule_groups[0].versioning_supported #=> Boolean
    #   resp.managed_rule_groups[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListAvailableManagedRuleGroups AWS API Documentation
    #
    # @overload list_available_managed_rule_groups(params = {})
    # @param [Hash] params ({})
    def list_available_managed_rule_groups(params = {}, options = {})
      req = build_request(:list_available_managed_rule_groups, params)
      req.send_request(options)
    end

    # Retrieves an array of IPSetSummary objects for the IP sets that you
    # manage.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListIPSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIPSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListIPSetsResponse#ip_sets #ip_sets} => Array&lt;Types::IPSetSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_sets({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.ip_sets #=> Array
    #   resp.ip_sets[0].name #=> String
    #   resp.ip_sets[0].id #=> String
    #   resp.ip_sets[0].description #=> String
    #   resp.ip_sets[0].lock_token #=> String
    #   resp.ip_sets[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListIPSets AWS API Documentation
    #
    # @overload list_ip_sets(params = {})
    # @param [Hash] params ({})
    def list_ip_sets(params = {}, options = {})
      req = build_request(:list_ip_sets, params)
      req.send_request(options)
    end

    # Retrieves an array of your LoggingConfiguration objects.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListLoggingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLoggingConfigurationsResponse#logging_configurations #logging_configurations} => Array&lt;Types::LoggingConfiguration&gt;
    #   * {Types::ListLoggingConfigurationsResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logging_configurations({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configurations #=> Array
    #   resp.logging_configurations[0].resource_arn #=> String
    #   resp.logging_configurations[0].log_destination_configs #=> Array
    #   resp.logging_configurations[0].log_destination_configs[0] #=> String
    #   resp.logging_configurations[0].redacted_fields #=> Array
    #   resp.logging_configurations[0].redacted_fields[0].single_header.name #=> String
    #   resp.logging_configurations[0].redacted_fields[0].single_query_argument.name #=> String
    #   resp.logging_configurations[0].redacted_fields[0].body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configurations[0].redacted_fields[0].json_body.match_pattern.included_paths #=> Array
    #   resp.logging_configurations[0].redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.logging_configurations[0].redacted_fields[0].json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configurations[0].redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.logging_configurations[0].redacted_fields[0].json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configurations[0].redacted_fields[0].headers.match_pattern.included_headers #=> Array
    #   resp.logging_configurations[0].redacted_fields[0].headers.match_pattern.included_headers[0] #=> String
    #   resp.logging_configurations[0].redacted_fields[0].headers.match_pattern.excluded_headers #=> Array
    #   resp.logging_configurations[0].redacted_fields[0].headers.match_pattern.excluded_headers[0] #=> String
    #   resp.logging_configurations[0].redacted_fields[0].headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configurations[0].redacted_fields[0].headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configurations[0].redacted_fields[0].cookies.match_pattern.included_cookies #=> Array
    #   resp.logging_configurations[0].redacted_fields[0].cookies.match_pattern.included_cookies[0] #=> String
    #   resp.logging_configurations[0].redacted_fields[0].cookies.match_pattern.excluded_cookies #=> Array
    #   resp.logging_configurations[0].redacted_fields[0].cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.logging_configurations[0].redacted_fields[0].cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configurations[0].redacted_fields[0].cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configurations[0].redacted_fields[0].header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configurations[0].managed_by_firewall_manager #=> Boolean
    #   resp.logging_configurations[0].logging_filter.filters #=> Array
    #   resp.logging_configurations[0].logging_filter.filters[0].behavior #=> String, one of "KEEP", "DROP"
    #   resp.logging_configurations[0].logging_filter.filters[0].requirement #=> String, one of "MEETS_ALL", "MEETS_ANY"
    #   resp.logging_configurations[0].logging_filter.filters[0].conditions #=> Array
    #   resp.logging_configurations[0].logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of "ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"
    #   resp.logging_configurations[0].logging_filter.filters[0].conditions[0].label_name_condition.label_name #=> String
    #   resp.logging_configurations[0].logging_filter.default_behavior #=> String, one of "KEEP", "DROP"
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListLoggingConfigurations AWS API Documentation
    #
    # @overload list_logging_configurations(params = {})
    # @param [Hash] params ({})
    def list_logging_configurations(params = {}, options = {})
      req = build_request(:list_logging_configurations, params)
      req.send_request(options)
    end

    # Retrieves the managed rule sets that you own.
    #
    # <note markdown="1"> This is intended for use only by vendors of managed rule sets. Vendors
    # are Amazon Web Services and Amazon Web Services Marketplace sellers.
    #
    #  Vendors, you can use the managed rule set APIs to provide controlled
    # rollout of your versioned managed rule group offerings for your
    # customers. The APIs are `ListManagedRuleSets`, `GetManagedRuleSet`,
    # `PutManagedRuleSetVersions`, and
    # `UpdateManagedRuleSetVersionExpiryDate`.
    #
    #  </note>
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListManagedRuleSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListManagedRuleSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListManagedRuleSetsResponse#managed_rule_sets #managed_rule_sets} => Array&lt;Types::ManagedRuleSetSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_rule_sets({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.managed_rule_sets #=> Array
    #   resp.managed_rule_sets[0].name #=> String
    #   resp.managed_rule_sets[0].id #=> String
    #   resp.managed_rule_sets[0].description #=> String
    #   resp.managed_rule_sets[0].lock_token #=> String
    #   resp.managed_rule_sets[0].arn #=> String
    #   resp.managed_rule_sets[0].label_namespace #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListManagedRuleSets AWS API Documentation
    #
    # @overload list_managed_rule_sets(params = {})
    # @param [Hash] params ({})
    def list_managed_rule_sets(params = {}, options = {})
      req = build_request(:list_managed_rule_sets, params)
      req.send_request(options)
    end

    # Retrieves a list of the available releases for the mobile SDK and the
    # specified device platform.
    #
    # The mobile SDK is not generally available. Customers who have access
    # to the mobile SDK can use it to establish and manage WAF tokens for
    # use in HTTP(S) requests from a mobile device to WAF. For more
    # information, see [WAF client application integration][1] in the *WAF
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-application-integration.html
    #
    # @option params [required, String] :platform
    #   The device platform to retrieve the list for.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListMobileSdkReleasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMobileSdkReleasesResponse#release_summaries #release_summaries} => Array&lt;Types::ReleaseSummary&gt;
    #   * {Types::ListMobileSdkReleasesResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mobile_sdk_releases({
    #     platform: "IOS", # required, accepts IOS, ANDROID
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.release_summaries #=> Array
    #   resp.release_summaries[0].release_version #=> String
    #   resp.release_summaries[0].timestamp #=> Time
    #   resp.next_marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListMobileSdkReleases AWS API Documentation
    #
    # @overload list_mobile_sdk_releases(params = {})
    # @param [Hash] params ({})
    def list_mobile_sdk_releases(params = {}, options = {})
      req = build_request(:list_mobile_sdk_releases, params)
      req.send_request(options)
    end

    # Retrieves an array of RegexPatternSetSummary objects for the regex
    # pattern sets that you manage.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListRegexPatternSetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRegexPatternSetsResponse#next_marker #next_marker} => String
    #   * {Types::ListRegexPatternSetsResponse#regex_pattern_sets #regex_pattern_sets} => Array&lt;Types::RegexPatternSetSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_regex_pattern_sets({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.regex_pattern_sets #=> Array
    #   resp.regex_pattern_sets[0].name #=> String
    #   resp.regex_pattern_sets[0].id #=> String
    #   resp.regex_pattern_sets[0].description #=> String
    #   resp.regex_pattern_sets[0].lock_token #=> String
    #   resp.regex_pattern_sets[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListRegexPatternSets AWS API Documentation
    #
    # @overload list_regex_pattern_sets(params = {})
    # @param [Hash] params ({})
    def list_regex_pattern_sets(params = {}, options = {})
      req = build_request(:list_regex_pattern_sets, params)
      req.send_request(options)
    end

    # Retrieves an array of the Amazon Resource Names (ARNs) for the
    # regional resources that are associated with the specified web ACL. If
    # you want the list of Amazon CloudFront resources, use the CloudFront
    # call `ListDistributionsByWebACLId`.
    #
    # @option params [required, String] :web_acl_arn
    #   The Amazon Resource Name (ARN) of the web ACL.
    #
    # @option params [String] :resource_type
    #   Used for web ACLs that are scoped for regional applications. A
    #   regional application can be an Application Load Balancer (ALB), an
    #   Amazon API Gateway REST API, an AppSync GraphQL API, an Amazon Cognito
    #   user pool, an App Runner service, or an Amazon Web Services Verified
    #   Access instance.
    #
    #   <note markdown="1"> If you don't provide a resource type, the call uses the resource type
    #   `APPLICATION_LOAD_BALANCER`.
    #
    #    </note>
    #
    #   Default: `APPLICATION_LOAD_BALANCER`
    #
    # @return [Types::ListResourcesForWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesForWebACLResponse#resource_arns #resource_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_for_web_acl({
    #     web_acl_arn: "ResourceArn", # required
    #     resource_type: "APPLICATION_LOAD_BALANCER", # accepts APPLICATION_LOAD_BALANCER, API_GATEWAY, APPSYNC, COGNITO_USER_POOL, APP_RUNNER_SERVICE, VERIFIED_ACCESS_INSTANCE
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_arns #=> Array
    #   resp.resource_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListResourcesForWebACL AWS API Documentation
    #
    # @overload list_resources_for_web_acl(params = {})
    # @param [Hash] params ({})
    def list_resources_for_web_acl(params = {}, options = {})
      req = build_request(:list_resources_for_web_acl, params)
      req.send_request(options)
    end

    # Retrieves an array of RuleGroupSummary objects for the rule groups
    # that you manage.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListRuleGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRuleGroupsResponse#next_marker #next_marker} => String
    #   * {Types::ListRuleGroupsResponse#rule_groups #rule_groups} => Array&lt;Types::RuleGroupSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_groups({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.rule_groups #=> Array
    #   resp.rule_groups[0].name #=> String
    #   resp.rule_groups[0].id #=> String
    #   resp.rule_groups[0].description #=> String
    #   resp.rule_groups[0].lock_token #=> String
    #   resp.rule_groups[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListRuleGroups AWS API Documentation
    #
    # @overload list_rule_groups(params = {})
    # @param [Hash] params ({})
    def list_rule_groups(params = {}, options = {})
      req = build_request(:list_rule_groups, params)
      req.send_request(options)
    end

    # Retrieves the TagInfoForResource for the specified resource. Tags are
    # key:value pairs that you can use to categorize and manage your
    # resources, for purposes like billing. For example, you might set the
    # tag key to "customer" and the value to the customer name or ID. You
    # can specify one or more tags to add to each Amazon Web Services
    # resource, up to 50 tags for a resource.
    #
    # You can tag the Amazon Web Services resources that you manage through
    # WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You
    # can't manage or view tags through the WAF console.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @return [Types::ListTagsForResourceResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForResourceResponse#next_marker #next_marker} => String
    #   * {Types::ListTagsForResourceResponse#tag_info_for_resource #tag_info_for_resource} => Types::TagInfoForResource
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     next_marker: "NextMarker",
    #     limit: 1,
    #     resource_arn: "ResourceArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.tag_info_for_resource.resource_arn #=> String
    #   resp.tag_info_for_resource.tag_list #=> Array
    #   resp.tag_info_for_resource.tag_list[0].key #=> String
    #   resp.tag_info_for_resource.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Retrieves an array of WebACLSummary objects for the web ACLs that you
    # manage.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, WAF returns a `NextMarker` value in the response. To retrieve
    #   the next batch of objects, provide the marker from the prior call in
    #   your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want WAF to return for this
    #   request. If more objects are available, in the response, WAF provides
    #   a `NextMarker` value that you can use in a subsequent call to get the
    #   next batch of objects.
    #
    # @return [Types::ListWebACLsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListWebACLsResponse#next_marker #next_marker} => String
    #   * {Types::ListWebACLsResponse#web_acls #web_acls} => Array&lt;Types::WebACLSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_web_acls({
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     next_marker: "NextMarker",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.next_marker #=> String
    #   resp.web_acls #=> Array
    #   resp.web_acls[0].name #=> String
    #   resp.web_acls[0].id #=> String
    #   resp.web_acls[0].description #=> String
    #   resp.web_acls[0].lock_token #=> String
    #   resp.web_acls[0].arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/ListWebACLs AWS API Documentation
    #
    # @overload list_web_acls(params = {})
    # @param [Hash] params ({})
    def list_web_acls(params = {}, options = {})
      req = build_request(:list_web_acls, params)
      req.send_request(options)
    end

    # Enables the specified LoggingConfiguration, to start logging from a
    # web ACL, according to the configuration provided.
    #
    # <note markdown="1"> This operation completely replaces any mutable specifications that you
    # already have for a logging configuration with the ones that you
    # provide to this call.
    #
    #  To modify an existing logging configuration, do the following:
    #
    #  1.  Retrieve it by calling GetLoggingConfiguration
    #
    # 2.  Update its settings as needed
    #
    # 3.  Provide the complete logging configuration specification to this
    #     call
    #
    #  </note>
    #
    # <note markdown="1"> You can define one logging destination per web ACL.
    #
    #  </note>
    #
    # You can access information about the traffic that WAF inspects using
    # the following steps:
    #
    # 1.  Create your logging destination. You can use an Amazon CloudWatch
    #     Logs log group, an Amazon Simple Storage Service (Amazon S3)
    #     bucket, or an Amazon Kinesis Data Firehose.
    #
    #     The name that you give the destination must start with
    #     `aws-waf-logs-`. Depending on the type of destination, you might
    #     need to configure additional settings or permissions.
    #
    #     For configuration requirements and pricing information for each
    #     destination type, see [Logging web ACL traffic][1] in the *WAF
    #     Developer Guide*.
    #
    # 2.  Associate your logging destination to your web ACL using a
    #     `PutLoggingConfiguration` request.
    #
    # When you successfully enable logging using a `PutLoggingConfiguration`
    # request, WAF creates an additional role or policy that is required to
    # write logs to the logging destination. For an Amazon CloudWatch Logs
    # log group, WAF creates a resource policy on the log group. For an
    # Amazon S3 bucket, WAF creates a bucket policy. For an Amazon Kinesis
    # Data Firehose, WAF creates a service-linked role.
    #
    # For additional information about web ACL logging, see [Logging web ACL
    # traffic information][1] in the *WAF Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/logging.html
    #
    # @option params [required, Types::LoggingConfiguration] :logging_configuration
    #
    # @return [Types::PutLoggingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutLoggingConfigurationResponse#logging_configuration #logging_configuration} => Types::LoggingConfiguration
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_logging_configuration({
    #     logging_configuration: { # required
    #       resource_arn: "ResourceArn", # required
    #       log_destination_configs: ["ResourceArn"], # required
    #       redacted_fields: [
    #         {
    #           single_header: {
    #             name: "FieldToMatchData", # required
    #           },
    #           single_query_argument: {
    #             name: "FieldToMatchData", # required
    #           },
    #           all_query_arguments: {
    #           },
    #           uri_path: {
    #           },
    #           query_string: {
    #           },
    #           body: {
    #             oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #           },
    #           method: {
    #           },
    #           json_body: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_paths: ["JsonPointerPath"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #             oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #           },
    #           headers: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_headers: ["FieldToMatchData"],
    #               excluded_headers: ["FieldToMatchData"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #           },
    #           cookies: {
    #             match_pattern: { # required
    #               all: {
    #               },
    #               included_cookies: ["SingleCookieName"],
    #               excluded_cookies: ["SingleCookieName"],
    #             },
    #             match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #             oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #           },
    #           header_order: {
    #             oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #           },
    #         },
    #       ],
    #       managed_by_firewall_manager: false,
    #       logging_filter: {
    #         filters: [ # required
    #           {
    #             behavior: "KEEP", # required, accepts KEEP, DROP
    #             requirement: "MEETS_ALL", # required, accepts MEETS_ALL, MEETS_ANY
    #             conditions: [ # required
    #               {
    #                 action_condition: {
    #                   action: "ALLOW", # required, accepts ALLOW, BLOCK, COUNT, CAPTCHA, CHALLENGE, EXCLUDED_AS_COUNT
    #                 },
    #                 label_name_condition: {
    #                   label_name: "LabelName", # required
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         default_behavior: "KEEP", # required, accepts KEEP, DROP
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.logging_configuration.resource_arn #=> String
    #   resp.logging_configuration.log_destination_configs #=> Array
    #   resp.logging_configuration.log_destination_configs[0] #=> String
    #   resp.logging_configuration.redacted_fields #=> Array
    #   resp.logging_configuration.redacted_fields[0].single_header.name #=> String
    #   resp.logging_configuration.redacted_fields[0].single_query_argument.name #=> String
    #   resp.logging_configuration.redacted_fields[0].body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths #=> Array
    #   resp.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configuration.redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.logging_configuration.redacted_fields[0].json_body.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.redacted_fields[0].headers.match_pattern.included_headers #=> Array
    #   resp.logging_configuration.redacted_fields[0].headers.match_pattern.included_headers[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].headers.match_pattern.excluded_headers #=> Array
    #   resp.logging_configuration.redacted_fields[0].headers.match_pattern.excluded_headers[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].headers.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configuration.redacted_fields[0].headers.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.redacted_fields[0].cookies.match_pattern.included_cookies #=> Array
    #   resp.logging_configuration.redacted_fields[0].cookies.match_pattern.included_cookies[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].cookies.match_pattern.excluded_cookies #=> Array
    #   resp.logging_configuration.redacted_fields[0].cookies.match_pattern.excluded_cookies[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].cookies.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configuration.redacted_fields[0].cookies.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.redacted_fields[0].header_order.oversize_handling #=> String, one of "CONTINUE", "MATCH", "NO_MATCH"
    #   resp.logging_configuration.managed_by_firewall_manager #=> Boolean
    #   resp.logging_configuration.logging_filter.filters #=> Array
    #   resp.logging_configuration.logging_filter.filters[0].behavior #=> String, one of "KEEP", "DROP"
    #   resp.logging_configuration.logging_filter.filters[0].requirement #=> String, one of "MEETS_ALL", "MEETS_ANY"
    #   resp.logging_configuration.logging_filter.filters[0].conditions #=> Array
    #   resp.logging_configuration.logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of "ALLOW", "BLOCK", "COUNT", "CAPTCHA", "CHALLENGE", "EXCLUDED_AS_COUNT"
    #   resp.logging_configuration.logging_filter.filters[0].conditions[0].label_name_condition.label_name #=> String
    #   resp.logging_configuration.logging_filter.default_behavior #=> String, one of "KEEP", "DROP"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutLoggingConfiguration AWS API Documentation
    #
    # @overload put_logging_configuration(params = {})
    # @param [Hash] params ({})
    def put_logging_configuration(params = {}, options = {})
      req = build_request(:put_logging_configuration, params)
      req.send_request(options)
    end

    # Defines the versions of your managed rule set that you are offering to
    # the customers. Customers see your offerings as managed rule groups
    # with versioning.
    #
    # <note markdown="1"> This is intended for use only by vendors of managed rule sets. Vendors
    # are Amazon Web Services and Amazon Web Services Marketplace sellers.
    #
    #  Vendors, you can use the managed rule set APIs to provide controlled
    # rollout of your versioned managed rule group offerings for your
    # customers. The APIs are `ListManagedRuleSets`, `GetManagedRuleSet`,
    # `PutManagedRuleSetVersions`, and
    # `UpdateManagedRuleSetVersionExpiryDate`.
    #
    #  </note>
    #
    # Customers retrieve their managed rule group list by calling
    # ListAvailableManagedRuleGroups. The name that you provide here for
    # your managed rule set is the name the customer sees for the
    # corresponding managed rule group. Customers can retrieve the available
    # versions for a managed rule group by calling
    # ListAvailableManagedRuleGroupVersions. You provide a rule group
    # specification for each version. For each managed rule set, you must
    # specify a version that you recommend using.
    #
    # To initiate the expiration of a managed rule group version, use
    # UpdateManagedRuleSetVersionExpiryDate.
    #
    # @option params [required, String] :name
    #   The name of the managed rule set. You use this, along with the rule
    #   set ID, to identify the rule set.
    #
    #   This name is assigned to the corresponding managed rule group, which
    #   your customers can access and use.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the managed rule set. The ID is returned in
    #   the responses to commands like `list`. You provide it to operations
    #   like `get` and `update`.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @option params [String] :recommended_version
    #   The version of the named managed rule group that you'd like your
    #   customers to choose, from among your version offerings.
    #
    # @option params [Hash<String,Types::VersionToPublish>] :versions_to_publish
    #   The versions of the named managed rule group that you want to offer to
    #   your customers.
    #
    # @return [Types::PutManagedRuleSetVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutManagedRuleSetVersionsResponse#next_lock_token #next_lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_managed_rule_set_versions({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #     recommended_version: "VersionKeyString",
    #     versions_to_publish: {
    #       "VersionKeyString" => {
    #         associated_rule_group_arn: "ResourceArn",
    #         forecasted_lifetime: 1,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutManagedRuleSetVersions AWS API Documentation
    #
    # @overload put_managed_rule_set_versions(params = {})
    # @param [Hash] params ({})
    def put_managed_rule_set_versions(params = {}, options = {})
      req = build_request(:put_managed_rule_set_versions, params)
      req.send_request(options)
    end

    # Attaches an IAM policy to the specified resource. Use this to share a
    # rule group across accounts.
    #
    # You must be the owner of the rule group to perform this operation.
    #
    # This action is subject to the following restrictions:
    #
    # * You can attach only one policy with each `PutPermissionPolicy`
    #   request.
    #
    # * The ARN in the request must be a valid WAF RuleGroup ARN and the
    #   rule group must exist in the same Region.
    #
    # * The user making the request must be the owner of the rule group.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the RuleGroup to which you want to
    #   attach the policy.
    #
    # @option params [required, String] :policy
    #   The policy to attach to the specified rule group.
    #
    #   The policy specifications must conform to the following:
    #
    #   * The policy must be composed using IAM Policy version 2012-10-17.
    #
    #   * The policy must include specifications for `Effect`, `Action`, and
    #     `Principal`.
    #
    #   * `Effect` must specify `Allow`.
    #
    #   * `Action` must specify `wafv2:CreateWebACL`, `wafv2:UpdateWebACL`,
    #     and `wafv2:PutFirewallManagerRuleGroups` and may optionally specify
    #     `wafv2:GetRuleGroup`. WAF rejects any extra actions or wildcard
    #     actions in the policy.
    #
    #   * The policy must not include a `Resource` parameter.
    #
    #   For more information, see [IAM Policies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_permission_policy({
    #     resource_arn: "ResourceArn", # required
    #     policy: "PolicyString", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/PutPermissionPolicy AWS API Documentation
    #
    # @overload put_permission_policy(params = {})
    # @param [Hash] params ({})
    def put_permission_policy(params = {}, options = {})
      req = build_request(:put_permission_policy, params)
      req.send_request(options)
    end

    # Associates tags with the specified Amazon Web Services resource. Tags
    # are key:value pairs that you can use to categorize and manage your
    # resources, for purposes like billing. For example, you might set the
    # tag key to "customer" and the value to the customer name or ID. You
    # can specify one or more tags to add to each Amazon Web Services
    # resource, up to 50 tags for a resource.
    #
    # You can tag the Amazon Web Services resources that you manage through
    # WAF: web ACLs, rule groups, IP sets, and regex pattern sets. You
    # can't manage or view tags through the WAF console.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   An array of key:value pairs to associate with the resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Disassociates tags from an Amazon Web Services resource. Tags are
    # key:value pairs that you can associate with Amazon Web Services
    # resources. For example, the tag key might be "customer" and the tag
    # value might be "companyA." You can specify one or more tags to add
    # to each container. You can add up to 50 tags to each Amazon Web
    # Services resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    # @option params [required, Array<String>] :tag_keys
    #   An array of keys identifying the tags to disassociate from the
    #   resource.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Updates the specified IPSet.
    #
    # <note markdown="1"> This operation completely replaces the mutable specifications that you
    # already have for the IP set with the ones that you provide to this
    # call.
    #
    #  To modify an IP set, do the following:
    #
    #  1.  Retrieve it by calling GetIPSet
    #
    # 2.  Update its settings as needed
    #
    # 3.  Provide the complete IP set specification to this call
    #
    #  </note>
    #
    # When you make changes to web ACLs or web ACL components, like rules
    # and rule groups, WAF propagates the changes everywhere that the web
    # ACL and its components are stored and used. Your changes are applied
    # within seconds, but there might be a brief period of inconsistency
    # when the changes have arrived in some places and not in others. So,
    # for example, if you change a rule action setting, the action might be
    # the old action in one area and the new action in another area. Or if
    # you add an IP address to an IP set used in a blocking rule, the new
    # address might briefly be blocked in one area while still allowed in
    # another. This temporary inconsistency can occur when you first
    # associate a web ACL with an Amazon Web Services resource and when you
    # change a web ACL that is already associated with a resource.
    # Generally, any inconsistencies of this type last only a few seconds.
    #
    # @option params [required, String] :name
    #   The name of the IP set. You cannot change the name of an `IPSet` after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the set. This ID is returned in the responses
    #   to create and list commands. You provide it to operations like update
    #   and delete.
    #
    # @option params [String] :description
    #   A description of the IP set that helps with identification.
    #
    # @option params [required, Array<String>] :addresses
    #   Contains an array of strings that specifies zero or more IP addresses
    #   or blocks of IP addresses. All addresses must be specified using
    #   Classless Inter-Domain Routing (CIDR) notation. WAF supports all IPv4
    #   and IPv6 CIDR ranges except for `/0`.
    #
    #   Example address strings:
    #
    #   * To configure WAF to allow, block, or count requests that originated
    #     from the IP address 192.0.2.44, specify `192.0.2.44/32`.
    #
    #   * To configure WAF to allow, block, or count requests that originated
    #     from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #     `192.0.2.0/24`.
    #
    #   * To configure WAF to allow, block, or count requests that originated
    #     from the IP address 1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure WAF to allow, block, or count requests that originated
    #     from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000 to
    #     1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #   Example JSON `Addresses` specifications:
    #
    #   * Empty array: `"Addresses": []`
    #
    #   * Array with one address: `"Addresses": ["192.0.2.44/32"]`
    #
    #   * Array with three addresses: `"Addresses": ["192.0.2.44/32",
    #     "192.0.2.0/24", "192.0.0.0/16"]`
    #
    #   * INVALID specification: `"Addresses": [""]` INVALID
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @return [Types::UpdateIPSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateIPSetResponse#next_lock_token #next_lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ip_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     description: "EntityDescription",
    #     addresses: ["IPAddress"], # required
    #     lock_token: "LockToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateIPSet AWS API Documentation
    #
    # @overload update_ip_set(params = {})
    # @param [Hash] params ({})
    def update_ip_set(params = {}, options = {})
      req = build_request(:update_ip_set, params)
      req.send_request(options)
    end

    # Updates the expiration information for your managed rule set. Use this
    # to initiate the expiration of a managed rule group version. After you
    # initiate expiration for a version, WAF excludes it from the response
    # to ListAvailableManagedRuleGroupVersions for the managed rule group.
    #
    # <note markdown="1"> This is intended for use only by vendors of managed rule sets. Vendors
    # are Amazon Web Services and Amazon Web Services Marketplace sellers.
    #
    #  Vendors, you can use the managed rule set APIs to provide controlled
    # rollout of your versioned managed rule group offerings for your
    # customers. The APIs are `ListManagedRuleSets`, `GetManagedRuleSet`,
    # `PutManagedRuleSetVersions`, and
    # `UpdateManagedRuleSetVersionExpiryDate`.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the managed rule set. You use this, along with the rule
    #   set ID, to identify the rule set.
    #
    #   This name is assigned to the corresponding managed rule group, which
    #   your customers can access and use.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the managed rule set. The ID is returned in
    #   the responses to commands like `list`. You provide it to operations
    #   like `get` and `update`.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @option params [required, String] :version_to_expire
    #   The version that you want to remove from your list of offerings for
    #   the named managed rule group.
    #
    # @option params [required, Time,DateTime,Date,Integer,String] :expiry_timestamp
    #   The time that you want the version to expire.
    #
    #   Times are in Coordinated Universal Time (UTC) format. UTC format
    #   includes the special designator, Z. For example,
    #   "2016-09-27T14:50Z".
    #
    # @return [Types::UpdateManagedRuleSetVersionExpiryDateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateManagedRuleSetVersionExpiryDateResponse#expiring_version #expiring_version} => String
    #   * {Types::UpdateManagedRuleSetVersionExpiryDateResponse#expiry_timestamp #expiry_timestamp} => Time
    #   * {Types::UpdateManagedRuleSetVersionExpiryDateResponse#next_lock_token #next_lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_managed_rule_set_version_expiry_date({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     lock_token: "LockToken", # required
    #     version_to_expire: "VersionKeyString", # required
    #     expiry_timestamp: Time.now, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.expiring_version #=> String
    #   resp.expiry_timestamp #=> Time
    #   resp.next_lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateManagedRuleSetVersionExpiryDate AWS API Documentation
    #
    # @overload update_managed_rule_set_version_expiry_date(params = {})
    # @param [Hash] params ({})
    def update_managed_rule_set_version_expiry_date(params = {}, options = {})
      req = build_request(:update_managed_rule_set_version_expiry_date, params)
      req.send_request(options)
    end

    # Updates the specified RegexPatternSet.
    #
    # <note markdown="1"> This operation completely replaces the mutable specifications that you
    # already have for the regex pattern set with the ones that you provide
    # to this call.
    #
    #  To modify a regex pattern set, do the following:
    #
    #  1.  Retrieve it by calling GetRegexPatternSet
    #
    # 2.  Update its settings as needed
    #
    # 3.  Provide the complete regex pattern set specification to this call
    #
    #  </note>
    #
    # When you make changes to web ACLs or web ACL components, like rules
    # and rule groups, WAF propagates the changes everywhere that the web
    # ACL and its components are stored and used. Your changes are applied
    # within seconds, but there might be a brief period of inconsistency
    # when the changes have arrived in some places and not in others. So,
    # for example, if you change a rule action setting, the action might be
    # the old action in one area and the new action in another area. Or if
    # you add an IP address to an IP set used in a blocking rule, the new
    # address might briefly be blocked in one area while still allowed in
    # another. This temporary inconsistency can occur when you first
    # associate a web ACL with an Amazon Web Services resource and when you
    # change a web ACL that is already associated with a resource.
    # Generally, any inconsistencies of this type last only a few seconds.
    #
    # @option params [required, String] :name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the set. This ID is returned in the responses
    #   to create and list commands. You provide it to operations like update
    #   and delete.
    #
    # @option params [String] :description
    #   A description of the set that helps with identification.
    #
    # @option params [required, Array<Types::Regex>] :regular_expression_list
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @return [Types::UpdateRegexPatternSetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRegexPatternSetResponse#next_lock_token #next_lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_regex_pattern_set({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     description: "EntityDescription",
    #     regular_expression_list: [ # required
    #       {
    #         regex_string: "RegexPatternString",
    #       },
    #     ],
    #     lock_token: "LockToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.next_lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateRegexPatternSet AWS API Documentation
    #
    # @overload update_regex_pattern_set(params = {})
    # @param [Hash] params ({})
    def update_regex_pattern_set(params = {}, options = {})
      req = build_request(:update_regex_pattern_set, params)
      req.send_request(options)
    end

    # Updates the specified RuleGroup.
    #
    # <note markdown="1"> This operation completely replaces the mutable specifications that you
    # already have for the rule group with the ones that you provide to this
    # call.
    #
    #  To modify a rule group, do the following:
    #
    #  1.  Retrieve it by calling GetRuleGroup
    #
    # 2.  Update its settings as needed
    #
    # 3.  Provide the complete rule group specification to this call
    #
    #  </note>
    #
    # When you make changes to web ACLs or web ACL components, like rules
    # and rule groups, WAF propagates the changes everywhere that the web
    # ACL and its components are stored and used. Your changes are applied
    # within seconds, but there might be a brief period of inconsistency
    # when the changes have arrived in some places and not in others. So,
    # for example, if you change a rule action setting, the action might be
    # the old action in one area and the new action in another area. Or if
    # you add an IP address to an IP set used in a blocking rule, the new
    # address might briefly be blocked in one area while still allowed in
    # another. This temporary inconsistency can occur when you first
    # associate a web ACL with an Amazon Web Services resource and when you
    # change a web ACL that is already associated with a resource.
    # Generally, any inconsistencies of this type last only a few seconds.
    #
    # A rule group defines a collection of rules to inspect and control web
    # requests that you can use in a WebACL. When you create a rule group,
    # you define an immutable capacity limit. If you update a rule group,
    # you must stay within the capacity. This allows others to reuse the
    # rule group with confidence in its capacity requirements.
    #
    # @option params [required, String] :name
    #   The name of the rule group. You cannot change the name of a rule group
    #   after you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   A unique identifier for the rule group. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [String] :description
    #   A description of the rule group that helps with identification.
    #
    # @option params [Array<Types::Rule>] :rules
    #   The Rule statements used to identify the web requests that you want to
    #   allow, block, or count. Each rule includes one top-level statement
    #   that WAF uses to identify matching web requests, and parameters that
    #   govern how WAF handles them.
    #
    # @option params [required, Types::VisibilityConfig] :visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @option params [Hash<String,Types::CustomResponseBody>] :custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the rule group, and then use them in the
    #   rules that you define in the rule group.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the *WAF
    #   Developer Guide*.
    #
    #   For information about the limits on count and size for custom request
    #   and response settings, see [WAF quotas][2] in the *WAF Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #
    # @return [Types::UpdateRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRuleGroupResponse#next_lock_token #next_lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rule_group({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     description: "EntityDescription",
    #     rules: [
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             sensitivity_level: "LOW", # accepts LOW, HIGH
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW, XK
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP, CUSTOM_KEYS, CONSTANT
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #               },
    #             ],
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON", # required, accepts COMMON, TARGETED
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           none: {
    #           },
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #       },
    #     ],
    #     visibility_config: { # required
    #       sampled_requests_enabled: false, # required
    #       cloud_watch_metrics_enabled: false, # required
    #       metric_name: "MetricName", # required
    #     },
    #     lock_token: "LockToken", # required
    #     custom_response_bodies: {
    #       "EntityName" => {
    #         content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #         content: "ResponseContent", # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateRuleGroup AWS API Documentation
    #
    # @overload update_rule_group(params = {})
    # @param [Hash] params ({})
    def update_rule_group(params = {}, options = {})
      req = build_request(:update_rule_group, params)
      req.send_request(options)
    end

    # Updates the specified WebACL. While updating a web ACL, WAF provides
    # continuous coverage to the resources that you have associated with the
    # web ACL.
    #
    # <note markdown="1"> This operation completely replaces the mutable specifications that you
    # already have for the web ACL with the ones that you provide to this
    # call.
    #
    #  To modify a web ACL, do the following:
    #
    #  1.  Retrieve it by calling GetWebACL
    #
    # 2.  Update its settings as needed
    #
    # 3.  Provide the complete web ACL specification to this call
    #
    #  </note>
    #
    # When you make changes to web ACLs or web ACL components, like rules
    # and rule groups, WAF propagates the changes everywhere that the web
    # ACL and its components are stored and used. Your changes are applied
    # within seconds, but there might be a brief period of inconsistency
    # when the changes have arrived in some places and not in others. So,
    # for example, if you change a rule action setting, the action might be
    # the old action in one area and the new action in another area. Or if
    # you add an IP address to an IP set used in a blocking rule, the new
    # address might briefly be blocked in one area while still allowed in
    # another. This temporary inconsistency can occur when you first
    # associate a web ACL with an Amazon Web Services resource and when you
    # change a web ACL that is already associated with a resource.
    # Generally, any inconsistencies of this type last only a few seconds.
    #
    # A web ACL defines a collection of rules to use to inspect and control
    # web requests. Each rule has an action defined (allow, block, or count)
    # for requests that match the statement of the rule. In the web ACL, you
    # assign a default action to take (allow, block) for any request that
    # does not match any of the rules. The rules in a web ACL can be a
    # combination of the types Rule, RuleGroup, and managed rule group. You
    # can associate a web ACL with one or more Amazon Web Services resources
    # to protect. The resources can be an Amazon CloudFront distribution, an
    # Amazon API Gateway REST API, an Application Load Balancer, an AppSync
    # GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    # Amazon Web Services Verified Access instance.
    #
    # @option params [required, String] :name
    #   The name of the web ACL. You cannot change the name of a web ACL after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an Amazon CloudFront distribution or for
    #   a regional application. A regional application can be an Application
    #   Load Balancer (ALB), an Amazon API Gateway REST API, an AppSync
    #   GraphQL API, an Amazon Cognito user pool, an App Runner service, or an
    #   Amazon Web Services Verified Access instance.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @option params [required, String] :id
    #   The unique identifier for the web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [required, Types::DefaultAction] :default_action
    #   The action to perform if none of the `Rules` contained in the `WebACL`
    #   match.
    #
    # @option params [String] :description
    #   A description of the web ACL that helps with identification.
    #
    # @option params [Array<Types::Rule>] :rules
    #   The Rule statements used to identify the web requests that you want to
    #   allow, block, or count. Each rule includes one top-level statement
    #   that WAF uses to identify matching web requests, and parameters that
    #   govern how WAF handles them.
    #
    # @option params [required, Types::VisibilityConfig] :visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. WAF returns a token to your `get`
    #   and `list` requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like `update` and `delete`. WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another `get`, and use the new token returned by that operation.
    #
    # @option params [Hash<String,Types::CustomResponseBody>] :custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the web ACL, and then use them in the
    #   rules and default actions that you define in the web ACL.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in WAF][1] in the *WAF
    #   Developer Guide*.
    #
    #   For information about the limits on count and size for custom request
    #   and response settings, see [WAF quotas][2] in the *WAF Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
    #
    # @option params [Types::CaptchaConfig] :captcha_config
    #   Specifies how WAF should handle `CAPTCHA` evaluations for rules that
    #   don't have their own `CaptchaConfig` settings. If you don't specify
    #   this, WAF uses its default settings for `CaptchaConfig`.
    #
    # @option params [Types::ChallengeConfig] :challenge_config
    #   Specifies how WAF should handle challenge evaluations for rules that
    #   don't have their own `ChallengeConfig` settings. If you don't
    #   specify this, WAF uses its default settings for `ChallengeConfig`.
    #
    # @option params [Array<String>] :token_domains
    #   Specifies the domains that WAF should accept in a web request token.
    #   This enables the use of tokens across multiple protected websites.
    #   When WAF provides a token, it uses the domain of the Amazon Web
    #   Services resource that the web ACL is protecting. If you don't
    #   specify a list of token domains, WAF accepts tokens only for the
    #   domain of the protected resource. With a token domain list, WAF
    #   accepts the resource's host domain plus all domains in the token
    #   domain list, including their prefixed subdomains.
    #
    #   Example JSON: `"TokenDomains": \{ "mywebsite.com",
    #   "myotherwebsite.com" \}`
    #
    #   Public suffixes aren't allowed. For example, you can't use `usa.gov`
    #   or `co.uk` as token domains.
    #
    # @option params [Types::AssociationConfig] :association_config
    #   Specifies custom configurations for the associations between the web
    #   ACL and protected resources.
    #
    #   Use this to customize the maximum size of the request body that your
    #   protected CloudFront distributions forward to WAF for inspection. The
    #   default is 16 KB (16,384 kilobytes).
    #
    #   <note markdown="1"> You are charged additional fees when your protected resources forward
    #   body sizes that are larger than the default. For more information, see
    #   [WAF Pricing][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://aws.amazon.com/waf/pricing/
    #
    # @return [Types::UpdateWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateWebACLResponse#next_lock_token #next_lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_web_acl({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #     default_action: { # required
    #       block: {
    #         custom_response: {
    #           response_code: 1, # required
    #           custom_response_body_key: "EntityName",
    #           response_headers: [
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             },
    #           ],
    #         },
    #       },
    #       allow: {
    #         custom_request_handling: {
    #           insert_headers: [ # required
    #             {
    #               name: "CustomHTTPHeaderName", # required
    #               value: "CustomHTTPHeaderValue", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #     description: "EntityDescription",
    #     rules: [
    #       {
    #         name: "EntityName", # required
    #         priority: 1, # required
    #         statement: { # required
    #           byte_match_statement: {
    #             search_string: "data", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             positional_constraint: "EXACTLY", # required, accepts EXACTLY, STARTS_WITH, ENDS_WITH, CONTAINS, CONTAINS_WORD
    #           },
    #           sqli_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #             sensitivity_level: "LOW", # accepts LOW, HIGH
    #           },
    #           xss_match_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           size_constraint_statement: {
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW, XK
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #           },
    #           rule_group_reference_statement: {
    #             arn: "ResourceArn", # required
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           ip_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             ip_set_forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #               position: "FIRST", # required, accepts FIRST, LAST, ANY
    #             },
    #           },
    #           regex_pattern_set_reference_statement: {
    #             arn: "ResourceArn", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP, CUSTOM_KEYS, CONSTANT
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
    #             custom_keys: [
    #               {
    #                 header: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 cookie: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_argument: {
    #                   name: "FieldToMatchData", # required
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 query_string: {
    #                   text_transformations: [ # required
    #                     {
    #                       priority: 1, # required
    #                       type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #                     },
    #                   ],
    #                 },
    #                 http_method: {
    #                 },
    #                 forwarded_ip: {
    #                 },
    #                 ip: {
    #                 },
    #                 label_namespace: {
    #                   namespace: "LabelNamespace", # required
    #                 },
    #               },
    #             ],
    #           },
    #           and_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           or_statement: {
    #             statements: [ # required
    #               {
    #                 # recursive Statement
    #               },
    #             ],
    #           },
    #           not_statement: {
    #             statement: { # required
    #               # recursive Statement
    #             },
    #           },
    #           managed_rule_group_statement: {
    #             vendor_name: "VendorName", # required
    #             name: "EntityName", # required
    #             version: "VersionKeyString",
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             managed_rule_group_configs: [
    #               {
    #                 login_path: "LoginPathString",
    #                 payload_type: "JSON", # accepts JSON, FORM_ENCODED
    #                 username_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 password_field: {
    #                   identifier: "FieldIdentifier", # required
    #                 },
    #                 aws_managed_rules_bot_control_rule_set: {
    #                   inspection_level: "COMMON", # required, accepts COMMON, TARGETED
    #                 },
    #                 aws_managed_rules_atp_rule_set: {
    #                   login_path: "String", # required
    #                   request_inspection: {
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: { # required
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #                 aws_managed_rules_acfp_rule_set: {
    #                   creation_path: "CreationPathString", # required
    #                   registration_page_path: "RegistrationPagePathString", # required
    #                   request_inspection: { # required
    #                     payload_type: "JSON", # required, accepts JSON, FORM_ENCODED
    #                     username_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     password_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     email_field: {
    #                       identifier: "FieldIdentifier", # required
    #                     },
    #                     phone_number_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                     address_fields: [
    #                       {
    #                         identifier: "FieldIdentifier", # required
    #                       },
    #                     ],
    #                   },
    #                   response_inspection: {
    #                     status_code: {
    #                       success_codes: [1], # required
    #                       failure_codes: [1], # required
    #                     },
    #                     header: {
    #                       name: "ResponseInspectionHeaderName", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                     body_contains: {
    #                       success_strings: ["SuccessValue"], # required
    #                       failure_strings: ["FailureValue"], # required
    #                     },
    #                     json: {
    #                       identifier: "FieldIdentifier", # required
    #                       success_values: ["SuccessValue"], # required
    #                       failure_values: ["FailureValue"], # required
    #                     },
    #                   },
    #                   enable_regex_in_path: false,
    #                 },
    #               },
    #             ],
    #             rule_action_overrides: [
    #               {
    #                 name: "EntityName", # required
    #                 action_to_use: { # required
    #                   block: {
    #                     custom_response: {
    #                       response_code: 1, # required
    #                       custom_response_body_key: "EntityName",
    #                       response_headers: [
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   allow: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   count: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   captcha: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   challenge: {
    #                     custom_request_handling: {
    #                       insert_headers: [ # required
    #                         {
    #                           name: "CustomHTTPHeaderName", # required
    #                           value: "CustomHTTPHeaderValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
    #           },
    #           regex_match_statement: {
    #             regex_string: "RegexPatternString", # required
    #             field_to_match: { # required
    #               single_header: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               single_query_argument: {
    #                 name: "FieldToMatchData", # required
    #               },
    #               all_query_arguments: {
    #               },
    #               uri_path: {
    #               },
    #               query_string: {
    #               },
    #               body: {
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               method: {
    #               },
    #               json_body: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_paths: ["JsonPointerPath"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 invalid_fallback_behavior: "MATCH", # accepts MATCH, NO_MATCH, EVALUATE_AS_STRING
    #                 oversize_handling: "CONTINUE", # accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               headers: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_headers: ["FieldToMatchData"],
    #                   excluded_headers: ["FieldToMatchData"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               cookies: {
    #                 match_pattern: { # required
    #                   all: {
    #                   },
    #                   included_cookies: ["SingleCookieName"],
    #                   excluded_cookies: ["SingleCookieName"],
    #                 },
    #                 match_scope: "ALL", # required, accepts ALL, KEY, VALUE
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #               header_order: {
    #                 oversize_handling: "CONTINUE", # required, accepts CONTINUE, MATCH, NO_MATCH
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE, BASE64_DECODE, HEX_DECODE, MD5, REPLACE_COMMENTS, ESCAPE_SEQ_DECODE, SQL_HEX_DECODE, CSS_DECODE, JS_DECODE, NORMALIZE_PATH, NORMALIZE_PATH_WIN, REMOVE_NULLS, REPLACE_NULLS, BASE64_DECODE_EXT, URL_DECODE_UNI, UTF8_TO_UNICODE
    #               },
    #             ],
    #           },
    #         },
    #         action: {
    #           block: {
    #             custom_response: {
    #               response_code: 1, # required
    #               custom_response_body_key: "EntityName",
    #               response_headers: [
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           allow: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           captcha: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           challenge: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         override_action: {
    #           count: {
    #             custom_request_handling: {
    #               insert_headers: [ # required
    #                 {
    #                   name: "CustomHTTPHeaderName", # required
    #                   value: "CustomHTTPHeaderValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #           none: {
    #           },
    #         },
    #         rule_labels: [
    #           {
    #             name: "LabelName", # required
    #           },
    #         ],
    #         visibility_config: { # required
    #           sampled_requests_enabled: false, # required
    #           cloud_watch_metrics_enabled: false, # required
    #           metric_name: "MetricName", # required
    #         },
    #         captcha_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #         challenge_config: {
    #           immunity_time_property: {
    #             immunity_time: 1, # required
    #           },
    #         },
    #       },
    #     ],
    #     visibility_config: { # required
    #       sampled_requests_enabled: false, # required
    #       cloud_watch_metrics_enabled: false, # required
    #       metric_name: "MetricName", # required
    #     },
    #     lock_token: "LockToken", # required
    #     custom_response_bodies: {
    #       "EntityName" => {
    #         content_type: "TEXT_PLAIN", # required, accepts TEXT_PLAIN, TEXT_HTML, APPLICATION_JSON
    #         content: "ResponseContent", # required
    #       },
    #     },
    #     captcha_config: {
    #       immunity_time_property: {
    #         immunity_time: 1, # required
    #       },
    #     },
    #     challenge_config: {
    #       immunity_time_property: {
    #         immunity_time: 1, # required
    #       },
    #     },
    #     token_domains: ["TokenDomain"],
    #     association_config: {
    #       request_body: {
    #         "CLOUDFRONT" => {
    #           default_size_inspection_limit: "KB_16", # required, accepts KB_16, KB_32, KB_48, KB_64
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.next_lock_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/UpdateWebACL AWS API Documentation
    #
    # @overload update_web_acl(params = {})
    # @param [Hash] params ({})
    def update_web_acl(params = {}, options = {})
      req = build_request(:update_web_acl, params)
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
      context[:gem_name] = 'aws-sdk-wafv2'
      context[:gem_version] = '1.66.0'
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
