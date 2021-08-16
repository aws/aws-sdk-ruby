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
require 'aws-sdk-core/plugins/signature_v4.rb'
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

    # Associates a Web ACL with a regional application resource, to protect
    # the resource. A regional application can be an Application Load
    # Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.
    #
    # For AWS CloudFront, don't use this call. Instead, use your CloudFront
    # distribution configuration. To associate a Web ACL, in the CloudFront
    # call `UpdateDistribution`, set the web ACL ID to the Amazon Resource
    # Name (ARN) of the Web ACL. For information, see
    # [UpdateDistribution][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistribution.html
    #
    # @option params [required, String] :web_acl_arn
    #   The Amazon Resource Name (ARN) of the Web ACL that you want to
    #   associate with the resource.
    #
    # @option params [required, String] :resource_arn
    #   The Amazon Resource Name (ARN) of the resource to associate with the
    #   web ACL.
    #
    #   The ARN must be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an API Gateway REST API:
    #     `arn:aws:apigateway:region::/restapis/api-id/stages/stage-name `
    #
    #   * For an AppSync GraphQL API:
    #     `arn:aws:appsync:region:account-id:apis/GraphQLApiId `
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
    # AWS WAF uses WCUs to calculate and control the operating resources
    # that are used to run your rules, rule groups, and web ACLs. AWS WAF
    # calculates capacity differently for each rule type, to reflect the
    # relative cost of each rule. Simple rules that cost little to run use
    # fewer WCUs than more complex rules that use more processing power.
    # Rule group capacity is fixed at creation, which helps users plan their
    # web ACL WCU usage when they use a rule group. The WCU limit for web
    # ACLs is 1,500.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
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
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
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

    # Creates an IPSet, which you use to identify web requests that
    # originate from specific IP addresses or ranges of IP addresses. For
    # example, if you're receiving a lot of requests from a ranges of IP
    # addresses, you can configure AWS WAF to block them using an IPSet that
    # lists those IP addresses.
    #
    # @option params [required, String] :name
    #   The name of the IP set. You cannot change the name of an `IPSet` after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   Specify IPV4 or IPV6.
    #
    # @option params [required, Array<String>] :addresses
    #   Contains an array of strings that specify one or more IP addresses or
    #   blocks of IP addresses in Classless Inter-Domain Routing (CIDR)
    #   notation. AWS WAF supports all IPv4 and IPv6 CIDR ranges except for
    #   /0.
    #
    #   Examples:
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify `192.0.2.44/32`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #     `192.0.2.0/24`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000
    #     to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
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
    # RegexPatternSetReferenceStatement, to have AWS WAF inspect a web
    # request component for the specified patterns.
    #
    # @option params [required, String] :name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   group, AWS WAF enforces this limit. You can check the capacity for a
    #   set of rules using CheckCapacity.
    #
    #   AWS WAF uses WCUs to calculate and control the operating resources
    #   that are used to run your rules, rule groups, and web ACLs. AWS WAF
    #   calculates capacity differently for each rule type, to reflect the
    #   relative cost of each rule. Simple rules that cost little to run use
    #   fewer WCUs than more complex rules that use more processing power.
    #   Rule group capacity is fixed at creation, which helps users plan their
    #   web ACL WCU usage when they use a rule group. The WCU limit for web
    #   ACLs is 1,500.
    #
    # @option params [String] :description
    #   A description of the rule group that helps with identification.
    #
    # @option params [Array<Types::Rule>] :rules
    #   The Rule statements used to identify the web requests that you want to
    #   allow, block, or count. Each rule includes one top-level statement
    #   that AWS WAF uses to identify matching web requests, and parameters
    #   that govern how AWS WAF handles them.
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
    #   [Customizing web requests and responses in AWS WAF][1] in the [AWS WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom request
    #   and response settings, see [AWS WAF quotas][3] in the [AWS WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
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
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
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
    # A Web ACL defines a collection of rules to use to inspect and control
    # web requests. Each rule has an action defined (allow, block, or count)
    # for requests that match the statement of the rule. In the Web ACL, you
    # assign a default action to take (allow, block) for any request that
    # does not match any of the rules. The rules in a Web ACL can be a
    # combination of the types Rule, RuleGroup, and managed rule group. You
    # can associate a Web ACL with one or more AWS resources to protect. The
    # resources can be Amazon CloudFront, an Amazon API Gateway REST API, an
    # Application Load Balancer, or an AWS AppSync GraphQL API.
    #
    # @option params [required, String] :name
    #   The name of the Web ACL. You cannot change the name of a Web ACL after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A description of the Web ACL that helps with identification.
    #
    # @option params [Array<Types::Rule>] :rules
    #   The Rule statements used to identify the web requests that you want to
    #   allow, block, or count. Each rule includes one top-level statement
    #   that AWS WAF uses to identify matching web requests, and parameters
    #   that govern how AWS WAF handles them.
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
    #   [Customizing web requests and responses in AWS WAF][1] in the [AWS WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom request
    #   and response settings, see [AWS WAF quotas][3] in the [AWS WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
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
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/CreateWebACL AWS API Documentation
    #
    # @overload create_web_acl(params = {})
    # @param [Hash] params ({})
    def create_web_acl(params = {}, options = {})
      req = build_request(:create_web_acl, params)
      req.send_request(options)
    end

    # Deletes all rule groups that are managed by AWS Firewall Manager for
    # the specified web ACL.
    #
    # You can only use this if `ManagedByFirewallManager` is false in the
    # specified WebACL.
    #
    # @option params [required, String] :web_acl_arn
    #   The Amazon Resource Name (ARN) of the web ACL.
    #
    # @option params [required, String] :web_acl_lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
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
    # @option params [required, String] :name
    #   The name of the Web ACL. You cannot change the name of a Web ACL after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   The unique identifier for the Web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
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

    # Provides high-level information for a managed rule group, including
    # descriptions of the rules.
    #
    # @option params [required, String] :vendor_name
    #   The name of the managed rule group vendor. You use this, along with
    #   the rule group name, to identify the rule group.
    #
    # @option params [required, String] :name
    #   The name of the managed rule group. You use this, along with the
    #   vendor name, to identify the rule group.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
    #
    #   To work with CloudFront, you must also specify the Region US East (N.
    #   Virginia) as follows:
    #
    #   * CLI - Specify the Region when you use the CloudFront scope:
    #     `--scope=CLOUDFRONT --region=us-east-1`.
    #
    #   * API and SDKs - For all calls, use the Region endpoint us-east-1.
    #
    # @return [Types::DescribeManagedRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
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
    #   })
    #
    # @example Response structure
    #
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

    # Disassociates a Web ACL from a regional application resource. A
    # regional application can be an Application Load Balancer (ALB), an API
    # Gateway REST API, or an AppSync GraphQL API.
    #
    # For AWS CloudFront, don't use this call. Instead, use your CloudFront
    # distribution configuration. To disassociate a Web ACL, provide an
    # empty web ACL ID in the CloudFront call `UpdateDistribution`. For
    # information, see [UpdateDistribution][1].
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
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an API Gateway REST API:
    #     `arn:aws:apigateway:region::/restapis/api-id/stages/stage-name `
    #
    #   * For an AppSync GraphQL API:
    #     `arn:aws:appsync:region:account-id:apis/GraphQLApiId `
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

    # Retrieves the specified IPSet.
    #
    # @option params [required, String] :name
    #   The name of the IP set. You cannot change the name of an `IPSet` after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   resp.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths #=> Array
    #   resp.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configuration.redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.logging_configuration.managed_by_firewall_manager #=> Boolean
    #   resp.logging_configuration.logging_filter.filters #=> Array
    #   resp.logging_configuration.logging_filter.filters[0].behavior #=> String, one of "KEEP", "DROP"
    #   resp.logging_configuration.logging_filter.filters[0].requirement #=> String, one of "MEETS_ALL", "MEETS_ANY"
    #   resp.logging_configuration.logging_filter.filters[0].conditions #=> Array
    #   resp.logging_configuration.logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of "ALLOW", "BLOCK", "COUNT"
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

    # Retrieves the keys that are currently blocked by a rate-based rule.
    # The maximum number of managed keys that can be blocked for a single
    # rate-based rule is 10,000. If more than 10,000 addresses exceed the
    # rate limit, those with the highest rates are blocked.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   The name of the Web ACL. You cannot change the name of a Web ACL after
    #   you create it.
    #
    # @option params [required, String] :web_acl_id
    #   The unique identifier for the Web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [required, String] :rule_name
    #   The name of the rate-based rule to get the keys for.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    # @option params [required, String] :name
    #   The name of the rule group. You cannot change the name of a rule group
    #   after you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    # @return [Types::GetRuleGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRuleGroupResponse#rule_group #rule_group} => Types::RuleGroup
    #   * {Types::GetRuleGroupResponse#lock_token #lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_rule_group({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
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
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.byte_match_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.byte_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.rule_group.rules[0].statement.byte_match_statement.positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.sqli_match_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.sqli_match_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.sqli_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.xss_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.xss_match_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.xss_match_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.xss_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.rule_group.rules[0].statement.size_constraint_statement.size #=> Integer
    #   resp.rule_group.rules[0].statement.size_constraint_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.size_constraint_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.size_constraint_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.rule_group.rules[0].statement.geo_match_statement.country_codes #=> Array
    #   resp.rule_group.rules[0].statement.geo_match_statement.country_codes[0] #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.rule_group.rules[0].statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.rule_group.rules[0].statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.arn #=> String
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.rule_group.rules[0].statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.rule_group.rules[0].statement.ip_set_reference_statement.arn #=> String
    #   resp.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of "FIRST", "LAST", "ANY"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.single_header.name #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.single_query_argument.name #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.text_transformations #=> Array
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.text_transformations[0].priority #=> Integer
    #   resp.rule_group.rules[0].statement.regex_pattern_set_reference_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.rule_group.rules[0].statement.rate_based_statement.limit #=> Integer
    #   resp.rule_group.rules[0].statement.rate_based_statement.aggregate_key_type #=> String, one of "IP", "FORWARDED_IP"
    #   resp.rule_group.rules[0].statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.rule_group.rules[0].statement.rate_based_statement.forwarded_ip_config.header_name #=> String
    #   resp.rule_group.rules[0].statement.rate_based_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.rule_group.rules[0].statement.and_statement.statements #=> Array
    #   resp.rule_group.rules[0].statement.and_statement.statements[0] #=> Types::Statement
    #   resp.rule_group.rules[0].statement.or_statement.statements #=> Array
    #   resp.rule_group.rules[0].statement.or_statement.statements[0] #=> Types::Statement
    #   resp.rule_group.rules[0].statement.not_statement.statement #=> Types::Statement
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.excluded_rules #=> Array
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.excluded_rules[0].name #=> String
    #   resp.rule_group.rules[0].statement.managed_rule_group_statement.scope_down_statement #=> Types::Statement
    #   resp.rule_group.rules[0].statement.label_match_statement.scope #=> String, one of "LABEL", "NAMESPACE"
    #   resp.rule_group.rules[0].statement.label_match_statement.key #=> String
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
    #   resp.rule_group.rules[0].override_action.count.custom_request_handling.insert_headers #=> Array
    #   resp.rule_group.rules[0].override_action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.rule_group.rules[0].override_action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.rule_group.rules[0].rule_labels #=> Array
    #   resp.rule_group.rules[0].rule_labels[0].name #=> String
    #   resp.rule_group.rules[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.rule_group.rules[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.rule_group.rules[0].visibility_config.metric_name #=> String
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
    # sample--that AWS WAF randomly selects from among the first 5,000
    # requests that your AWS resource received during a time range that you
    # choose. You can specify a sample size of up to 500 requests, and you
    # can specify any time range in the previous three hours.
    #
    # `GetSampledRequests` returns a time range, which is usually the time
    # range that you specified. However, if your resource (such as a
    # CloudFront distribution) received 5,000 requests before the specified
    # time range elapsed, `GetSampledRequests` returns an updated time
    # range. This new time range indicates the actual period during which
    # AWS WAF selected the requests in the sample.
    #
    # @option params [required, String] :web_acl_arn
    #   The Amazon resource name (ARN) of the `WebACL` for which you want a
    #   sample of requests.
    #
    # @option params [required, String] :rule_metric_name
    #   The metric name assigned to the `Rule` or `RuleGroup` for which you
    #   want a sample of requests.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   hours ago, AWS WAF sets it to three hours ago.
    #
    # @option params [required, Integer] :max_items
    #   The number of requests that you want AWS WAF to return from among the
    #   first 5,000 requests that your AWS resource received during the time
    #   range. If your resource received fewer requests than the value of
    #   `MaxItems`, `GetSampledRequests` returns information about all of
    #   them.
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
    #   The name of the Web ACL. You cannot change the name of a Web ACL after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   The unique identifier for the Web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @return [Types::GetWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetWebACLResponse#web_acl #web_acl} => Types::WebACL
    #   * {Types::GetWebACLResponse#lock_token #lock_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_web_acl({
    #     name: "EntityName", # required
    #     scope: "CLOUDFRONT", # required, accepts CLOUDFRONT, REGIONAL
    #     id: "EntityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.web_acl.name #=> String
    #   resp.web_acl.id #=> String
    #   resp.web_acl.arn #=> String
    #   resp.web_acl.default_action.block.custom_response.response_code #=> Integer
    #   resp.web_acl.default_action.block.custom_response.custom_response_body_key #=> String
    #   resp.web_acl.default_action.block.custom_response.response_headers #=> Array
    #   resp.web_acl.default_action.block.custom_response.response_headers[0].name #=> String
    #   resp.web_acl.default_action.block.custom_response.response_headers[0].value #=> String
    #   resp.web_acl.default_action.allow.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.default_action.allow.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.default_action.allow.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.description #=> String
    #   resp.web_acl.rules #=> Array
    #   resp.web_acl.rules[0].name #=> String
    #   resp.web_acl.rules[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.byte_match_statement.search_string #=> String
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.byte_match_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.byte_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.byte_match_statement.positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.sqli_match_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.sqli_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.sqli_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.xss_match_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.xss_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.xss_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.size_constraint_statement.comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.web_acl.rules[0].statement.size_constraint_statement.size #=> Integer
    #   resp.web_acl.rules[0].statement.size_constraint_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.size_constraint_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.size_constraint_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.geo_match_statement.country_codes #=> Array
    #   resp.web_acl.rules[0].statement.geo_match_statement.country_codes[0] #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.rules[0].statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.rules[0].statement.ip_set_reference_statement.arn #=> String
    #   resp.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of "FIRST", "LAST", "ANY"
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.rate_based_statement.limit #=> Integer
    #   resp.web_acl.rules[0].statement.rate_based_statement.aggregate_key_type #=> String, one of "IP", "FORWARDED_IP"
    #   resp.web_acl.rules[0].statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.web_acl.rules[0].statement.rate_based_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.rules[0].statement.rate_based_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.rules[0].statement.and_statement.statements #=> Array
    #   resp.web_acl.rules[0].statement.and_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.rules[0].statement.or_statement.statements #=> Array
    #   resp.web_acl.rules[0].statement.or_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.rules[0].statement.not_statement.statement #=> Types::Statement
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.name #=> String
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.excluded_rules #=> Array
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.scope_down_statement #=> Types::Statement
    #   resp.web_acl.rules[0].statement.label_match_statement.scope #=> String, one of "LABEL", "NAMESPACE"
    #   resp.web_acl.rules[0].statement.label_match_statement.key #=> String
    #   resp.web_acl.rules[0].action.block.custom_response.response_code #=> Integer
    #   resp.web_acl.rules[0].action.block.custom_response.custom_response_body_key #=> String
    #   resp.web_acl.rules[0].action.block.custom_response.response_headers #=> Array
    #   resp.web_acl.rules[0].action.block.custom_response.response_headers[0].name #=> String
    #   resp.web_acl.rules[0].action.block.custom_response.response_headers[0].value #=> String
    #   resp.web_acl.rules[0].action.allow.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.rules[0].action.allow.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.rules[0].action.allow.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.rules[0].action.count.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.rules[0].action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.rules[0].action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.rules[0].override_action.count.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.rules[0].override_action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.rules[0].override_action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.rules[0].rule_labels #=> Array
    #   resp.web_acl.rules[0].rule_labels[0].name #=> String
    #   resp.web_acl.rules[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.web_acl.rules[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.web_acl.rules[0].visibility_config.metric_name #=> String
    #   resp.web_acl.visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.web_acl.visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.web_acl.visibility_config.metric_name #=> String
    #   resp.web_acl.capacity #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.excluded_rules #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.search_string #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.size #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.country_codes #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.country_codes[0] #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.arn #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of "FIRST", "LAST", "ANY"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.limit #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.aggregate_key_type #=> String, one of "IP", "FORWARDED_IP"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.and_statement.statements #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.and_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.or_statement.statements #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.or_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.not_statement.statement #=> Types::Statement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.label_match_statement.scope #=> String, one of "LABEL", "NAMESPACE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.label_match_statement.key #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].visibility_config.metric_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.excluded_rules #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.search_string #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.size #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.country_codes #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.country_codes[0] #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.arn #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of "FIRST", "LAST", "ANY"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.limit #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.aggregate_key_type #=> String, one of "IP", "FORWARDED_IP"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.and_statement.statements #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.and_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.or_statement.statements #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.or_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.not_statement.statement #=> Types::Statement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.label_match_statement.scope #=> String, one of "LABEL", "NAMESPACE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.label_match_statement.key #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].visibility_config.metric_name #=> String
    #   resp.web_acl.managed_by_firewall_manager #=> Boolean
    #   resp.web_acl.label_namespace #=> String
    #   resp.web_acl.custom_response_bodies #=> Hash
    #   resp.web_acl.custom_response_bodies["EntityName"].content_type #=> String, one of "TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"
    #   resp.web_acl.custom_response_bodies["EntityName"].content #=> String
    #   resp.lock_token #=> String
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
    #   The ARN (Amazon Resource Name) of the resource.
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
    # @example Response structure
    #
    #   resp.web_acl.name #=> String
    #   resp.web_acl.id #=> String
    #   resp.web_acl.arn #=> String
    #   resp.web_acl.default_action.block.custom_response.response_code #=> Integer
    #   resp.web_acl.default_action.block.custom_response.custom_response_body_key #=> String
    #   resp.web_acl.default_action.block.custom_response.response_headers #=> Array
    #   resp.web_acl.default_action.block.custom_response.response_headers[0].name #=> String
    #   resp.web_acl.default_action.block.custom_response.response_headers[0].value #=> String
    #   resp.web_acl.default_action.allow.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.default_action.allow.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.default_action.allow.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.description #=> String
    #   resp.web_acl.rules #=> Array
    #   resp.web_acl.rules[0].name #=> String
    #   resp.web_acl.rules[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.byte_match_statement.search_string #=> String
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.byte_match_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.byte_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.byte_match_statement.positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.sqli_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.sqli_match_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.sqli_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.sqli_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.xss_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.xss_match_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.xss_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.xss_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.size_constraint_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.size_constraint_statement.comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.web_acl.rules[0].statement.size_constraint_statement.size #=> Integer
    #   resp.web_acl.rules[0].statement.size_constraint_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.size_constraint_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.size_constraint_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.geo_match_statement.country_codes #=> Array
    #   resp.web_acl.rules[0].statement.geo_match_statement.country_codes[0] #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.rules[0].statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.rules[0].statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.rules[0].statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.rules[0].statement.ip_set_reference_statement.arn #=> String
    #   resp.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.rules[0].statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of "FIRST", "LAST", "ANY"
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.text_transformations #=> Array
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.rules[0].statement.regex_pattern_set_reference_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.rules[0].statement.rate_based_statement.limit #=> Integer
    #   resp.web_acl.rules[0].statement.rate_based_statement.aggregate_key_type #=> String, one of "IP", "FORWARDED_IP"
    #   resp.web_acl.rules[0].statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.web_acl.rules[0].statement.rate_based_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.rules[0].statement.rate_based_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.rules[0].statement.and_statement.statements #=> Array
    #   resp.web_acl.rules[0].statement.and_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.rules[0].statement.or_statement.statements #=> Array
    #   resp.web_acl.rules[0].statement.or_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.rules[0].statement.not_statement.statement #=> Types::Statement
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.name #=> String
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.excluded_rules #=> Array
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.rules[0].statement.managed_rule_group_statement.scope_down_statement #=> Types::Statement
    #   resp.web_acl.rules[0].statement.label_match_statement.scope #=> String, one of "LABEL", "NAMESPACE"
    #   resp.web_acl.rules[0].statement.label_match_statement.key #=> String
    #   resp.web_acl.rules[0].action.block.custom_response.response_code #=> Integer
    #   resp.web_acl.rules[0].action.block.custom_response.custom_response_body_key #=> String
    #   resp.web_acl.rules[0].action.block.custom_response.response_headers #=> Array
    #   resp.web_acl.rules[0].action.block.custom_response.response_headers[0].name #=> String
    #   resp.web_acl.rules[0].action.block.custom_response.response_headers[0].value #=> String
    #   resp.web_acl.rules[0].action.allow.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.rules[0].action.allow.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.rules[0].action.allow.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.rules[0].action.count.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.rules[0].action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.rules[0].action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.rules[0].override_action.count.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.rules[0].override_action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.rules[0].override_action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.rules[0].rule_labels #=> Array
    #   resp.web_acl.rules[0].rule_labels[0].name #=> String
    #   resp.web_acl.rules[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.web_acl.rules[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.web_acl.rules[0].visibility_config.metric_name #=> String
    #   resp.web_acl.visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.web_acl.visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.web_acl.visibility_config.metric_name #=> String
    #   resp.web_acl.capacity #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.excluded_rules #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.search_string #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.size #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.country_codes #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.country_codes[0] #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.arn #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of "FIRST", "LAST", "ANY"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.limit #=> Integer
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.aggregate_key_type #=> String, one of "IP", "FORWARDED_IP"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.and_statement.statements #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.and_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.or_statement.statements #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.or_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.not_statement.statement #=> Types::Statement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.label_match_statement.scope #=> String, one of "LABEL", "NAMESPACE"
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.label_match_statement.key #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.web_acl.pre_process_firewall_manager_rule_groups[0].visibility_config.metric_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.vendor_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.excluded_rules #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.search_string #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.byte_match_statement.positional_constraint #=> String, one of "EXACTLY", "STARTS_WITH", "ENDS_WITH", "CONTAINS", "CONTAINS_WORD"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.sqli_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.xss_match_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.comparison_operator #=> String, one of "EQ", "NE", "LE", "LT", "GE", "GT"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.size #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.size_constraint_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.country_codes #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.country_codes[0] #=> String, one of "AF", "AX", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BQ", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "GS", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.geo_match_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.arn #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.header_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.ip_set_reference_statement.ip_set_forwarded_ip_config.position #=> String, one of "FIRST", "LAST", "ANY"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.arn #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.single_header.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.single_query_argument.name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_pattern.included_paths[0] #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.field_to_match.json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations[0].priority #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.regex_pattern_set_reference_statement.text_transformations[0].type #=> String, one of "NONE", "COMPRESS_WHITE_SPACE", "HTML_ENTITY_DECODE", "LOWERCASE", "CMD_LINE", "URL_DECODE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.limit #=> Integer
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.aggregate_key_type #=> String, one of "IP", "FORWARDED_IP"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.scope_down_statement #=> Types::Statement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.forwarded_ip_config.header_name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.rate_based_statement.forwarded_ip_config.fallback_behavior #=> String, one of "MATCH", "NO_MATCH"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.and_statement.statements #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.and_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.or_statement.statements #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.or_statement.statements[0] #=> Types::Statement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.not_statement.statement #=> Types::Statement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.managed_rule_group_statement #=> Types::ManagedRuleGroupStatement
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.label_match_statement.scope #=> String, one of "LABEL", "NAMESPACE"
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.managed_rule_group_statement.scope_down_statement.label_match_statement.key #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.arn #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.excluded_rules #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].firewall_manager_statement.rule_group_reference_statement.excluded_rules[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers #=> Array
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers[0].name #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].override_action.count.custom_request_handling.insert_headers[0].value #=> String
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].visibility_config.sampled_requests_enabled #=> Boolean
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].visibility_config.cloud_watch_metrics_enabled #=> Boolean
    #   resp.web_acl.post_process_firewall_manager_rule_groups[0].visibility_config.metric_name #=> String
    #   resp.web_acl.managed_by_firewall_manager #=> Boolean
    #   resp.web_acl.label_namespace #=> String
    #   resp.web_acl.custom_response_bodies #=> Hash
    #   resp.web_acl.custom_response_bodies["EntityName"].content_type #=> String, one of "TEXT_PLAIN", "TEXT_HTML", "APPLICATION_JSON"
    #   resp.web_acl.custom_response_bodies["EntityName"].content #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/wafv2-2019-07-29/GetWebACLForResource AWS API Documentation
    #
    # @overload get_web_acl_for_resource(params = {})
    # @param [Hash] params ({})
    def get_web_acl_for_resource(params = {}, options = {})
      req = build_request(:get_web_acl_for_resource, params)
      req.send_request(options)
    end

    # Retrieves an array of managed rule groups that are available for you
    # to use. This list includes all AWS Managed Rules rule groups and the
    # AWS Marketplace managed rule groups that you're subscribed to.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the prior
    #   call in your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want AWS WAF to return for this
    #   request. If more objects are available, in the response, AWS WAF
    #   provides a `NextMarker` value that you can use in a subsequent call to
    #   get the next batch of objects.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the prior
    #   call in your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want AWS WAF to return for this
    #   request. If more objects are available, in the response, AWS WAF
    #   provides a `NextMarker` value that you can use in a subsequent call to
    #   get the next batch of objects.
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
    # @option params [String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the prior
    #   call in your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want AWS WAF to return for this
    #   request. If more objects are available, in the response, AWS WAF
    #   provides a `NextMarker` value that you can use in a subsequent call to
    #   get the next batch of objects.
    #
    # @return [Types::ListLoggingConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLoggingConfigurationsResponse#logging_configurations #logging_configurations} => Array&lt;Types::LoggingConfiguration&gt;
    #   * {Types::ListLoggingConfigurationsResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_logging_configurations({
    #     scope: "CLOUDFRONT", # accepts CLOUDFRONT, REGIONAL
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
    #   resp.logging_configurations[0].redacted_fields[0].json_body.match_pattern.included_paths #=> Array
    #   resp.logging_configurations[0].redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.logging_configurations[0].redacted_fields[0].json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configurations[0].redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.logging_configurations[0].managed_by_firewall_manager #=> Boolean
    #   resp.logging_configurations[0].logging_filter.filters #=> Array
    #   resp.logging_configurations[0].logging_filter.filters[0].behavior #=> String, one of "KEEP", "DROP"
    #   resp.logging_configurations[0].logging_filter.filters[0].requirement #=> String, one of "MEETS_ALL", "MEETS_ANY"
    #   resp.logging_configurations[0].logging_filter.filters[0].conditions #=> Array
    #   resp.logging_configurations[0].logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of "ALLOW", "BLOCK", "COUNT"
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

    # Retrieves an array of RegexPatternSetSummary objects for the regex
    # pattern sets that you manage.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the prior
    #   call in your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want AWS WAF to return for this
    #   request. If more objects are available, in the response, AWS WAF
    #   provides a `NextMarker` value that you can use in a subsequent call to
    #   get the next batch of objects.
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
    # you want the list of AWS CloudFront resources, use the AWS CloudFront
    # call `ListDistributionsByWebACLId`.
    #
    # @option params [required, String] :web_acl_arn
    #   The Amazon Resource Name (ARN) of the Web ACL.
    #
    # @option params [String] :resource_type
    #   Used for web ACLs that are scoped for regional applications. A
    #   regional application can be an Application Load Balancer (ALB), an API
    #   Gateway REST API, or an AppSync GraphQL API.
    #
    # @return [Types::ListResourcesForWebACLResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesForWebACLResponse#resource_arns #resource_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_for_web_acl({
    #     web_acl_arn: "ResourceArn", # required
    #     resource_type: "APPLICATION_LOAD_BALANCER", # accepts APPLICATION_LOAD_BALANCER, API_GATEWAY, APPSYNC
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the prior
    #   call in your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want AWS WAF to return for this
    #   request. If more objects are available, in the response, AWS WAF
    #   provides a `NextMarker` value that you can use in a subsequent call to
    #   get the next batch of objects.
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
    # can specify one or more tags to add to each AWS resource, up to 50
    # tags for a resource.
    #
    # You can tag the AWS resources that you manage through AWS WAF: web
    # ACLs, rule groups, IP sets, and regex pattern sets. You can't manage
    # or view tags through the AWS WAF console.
    #
    # @option params [String] :next_marker
    #   When you request a list of objects with a `Limit` setting, if the
    #   number of objects that are still available for retrieval exceeds the
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the prior
    #   call in your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want AWS WAF to return for this
    #   request. If more objects are available, in the response, AWS WAF
    #   provides a `NextMarker` value that you can use in a subsequent call to
    #   get the next batch of objects.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   limit, AWS WAF returns a `NextMarker` value in the response. To
    #   retrieve the next batch of objects, provide the marker from the prior
    #   call in your next request.
    #
    # @option params [Integer] :limit
    #   The maximum number of objects that you want AWS WAF to return for this
    #   request. If more objects are available, in the response, AWS WAF
    #   provides a `NextMarker` value that you can use in a subsequent call to
    #   get the next batch of objects.
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
    # You can access information about all traffic that AWS WAF inspects
    # using the following steps:
    #
    # 1.  Create an Amazon Kinesis Data Firehose.
    #
    #     Create the data firehose with a PUT source and in the Region that
    #     you are operating. If you are capturing logs for Amazon
    #     CloudFront, always create the firehose in US East (N. Virginia).
    #
    #     Give the data firehose a name that starts with the prefix
    #     `aws-waf-logs-`. For example, `aws-waf-logs-us-east-2-analytics`.
    #
    #     <note markdown="1"> Do not create the data firehose using a `Kinesis stream` as your
    #     source.
    #
    #      </note>
    #
    # 2.  Associate that firehose to your web ACL using a
    #     `PutLoggingConfiguration` request.
    #
    # When you successfully enable logging using a `PutLoggingConfiguration`
    # request, AWS WAF will create a service linked role with the necessary
    # permissions to write logs to the Amazon Kinesis Data Firehose. For
    # more information, see [Logging Web ACL Traffic Information][1] in the
    # *AWS WAF Developer Guide*.
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
    #                   action: "ALLOW", # required, accepts ALLOW, BLOCK, COUNT
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
    #   resp.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths #=> Array
    #   resp.logging_configuration.redacted_fields[0].json_body.match_pattern.included_paths[0] #=> String
    #   resp.logging_configuration.redacted_fields[0].json_body.match_scope #=> String, one of "ALL", "KEY", "VALUE"
    #   resp.logging_configuration.redacted_fields[0].json_body.invalid_fallback_behavior #=> String, one of "MATCH", "NO_MATCH", "EVALUATE_AS_STRING"
    #   resp.logging_configuration.managed_by_firewall_manager #=> Boolean
    #   resp.logging_configuration.logging_filter.filters #=> Array
    #   resp.logging_configuration.logging_filter.filters[0].behavior #=> String, one of "KEEP", "DROP"
    #   resp.logging_configuration.logging_filter.filters[0].requirement #=> String, one of "MEETS_ALL", "MEETS_ANY"
    #   resp.logging_configuration.logging_filter.filters[0].conditions #=> Array
    #   resp.logging_configuration.logging_filter.filters[0].conditions[0].action_condition.action #=> String, one of "ALLOW", "BLOCK", "COUNT"
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
    #   rule group must exist in the same region.
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
    #   * The policy must be composed using IAM Policy version 2012-10-17 or
    #     version 2015-01-01.
    #
    #   * The policy must include specifications for `Effect`, `Action`, and
    #     `Principal`.
    #
    #   * `Effect` must specify `Allow`.
    #
    #   * `Action` must specify `wafv2:CreateWebACL`, `wafv2:UpdateWebACL`,
    #     and `wafv2:PutFirewallManagerRuleGroups`. AWS WAF rejects any extra
    #     actions or wildcard actions in the policy.
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

    # Associates tags with the specified AWS resource. Tags are key:value
    # pairs that you can use to categorize and manage your resources, for
    # purposes like billing. For example, you might set the tag key to
    # "customer" and the value to the customer name or ID. You can specify
    # one or more tags to add to each AWS resource, up to 50 tags for a
    # resource.
    #
    # You can tag the AWS resources that you manage through AWS WAF: web
    # ACLs, rule groups, IP sets, and regex pattern sets. You can't manage
    # or view tags through the AWS WAF console.
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

    # Disassociates tags from an AWS resource. Tags are key:value pairs that
    # you can associate with AWS resources. For example, the tag key might
    # be "customer" and the tag value might be "companyA." You can
    # specify one or more tags to add to each container. You can add up to
    # 50 tags to each AWS resource.
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
    # <note markdown="1"> This operation completely replaces any IP address specifications that
    # you already have in the IP set with the ones that you provide to this
    # call. If you want to add to or modify the addresses that are already
    # in the IP set, retrieve those by calling GetIPSet, update them, and
    # provide the complete updated array of IP addresses to this call.
    #
    #  </note>
    #
    # @option params [required, String] :name
    #   The name of the IP set. You cannot change the name of an `IPSet` after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   Contains an array of strings that specify one or more IP addresses or
    #   blocks of IP addresses in Classless Inter-Domain Routing (CIDR)
    #   notation. AWS WAF supports all IPv4 and IPv6 CIDR ranges except for
    #   /0.
    #
    #   Examples:
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address 192.0.2.44, specify `192.0.2.44/32`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses from 192.0.2.0 to 192.0.2.255, specify
    #     `192.0.2.0/24`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from the IP address
    #     1111:0000:0000:0000:0000:0000:0000:0111, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0111/128`.
    #
    #   * To configure AWS WAF to allow, block, or count requests that
    #     originated from IP addresses 1111:0000:0000:0000:0000:0000:0000:0000
    #     to 1111:0000:0000:0000:ffff:ffff:ffff:ffff, specify
    #     `1111:0000:0000:0000:0000:0000:0000:0000/64`.
    #
    #   For more information about CIDR notation, see the Wikipedia entry
    #   [Classless Inter-Domain Routing][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
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

    # Updates the specified RegexPatternSet.
    #
    # @option params [required, String] :name
    #   The name of the set. You cannot change the name after you create the
    #   set.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
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
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   that AWS WAF uses to identify matching web requests, and parameters
    #   that govern how AWS WAF handles them.
    #
    # @option params [required, Types::VisibilityConfig] :visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
    #
    # @option params [Hash<String,Types::CustomResponseBody>] :custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the rule group, and then use them in the
    #   rules that you define in the rule group.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in AWS WAF][1] in the [AWS WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom request
    #   and response settings, see [AWS WAF quotas][3] in the [AWS WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
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
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
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

    # Updates the specified WebACL.
    #
    # A Web ACL defines a collection of rules to use to inspect and control
    # web requests. Each rule has an action defined (allow, block, or count)
    # for requests that match the statement of the rule. In the Web ACL, you
    # assign a default action to take (allow, block) for any request that
    # does not match any of the rules. The rules in a Web ACL can be a
    # combination of the types Rule, RuleGroup, and managed rule group. You
    # can associate a Web ACL with one or more AWS resources to protect. The
    # resources can be Amazon CloudFront, an Amazon API Gateway REST API, an
    # Application Load Balancer, or an AWS AppSync GraphQL API.
    #
    # @option params [required, String] :name
    #   The name of the Web ACL. You cannot change the name of a Web ACL after
    #   you create it.
    #
    # @option params [required, String] :scope
    #   Specifies whether this is for an AWS CloudFront distribution or for a
    #   regional application. A regional application can be an Application
    #   Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL
    #   API.
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
    #   The unique identifier for the Web ACL. This ID is returned in the
    #   responses to create and list commands. You provide it to operations
    #   like update and delete.
    #
    # @option params [required, Types::DefaultAction] :default_action
    #   The action to perform if none of the `Rules` contained in the `WebACL`
    #   match.
    #
    # @option params [String] :description
    #   A description of the Web ACL that helps with identification.
    #
    # @option params [Array<Types::Rule>] :rules
    #   The Rule statements used to identify the web requests that you want to
    #   allow, block, or count. Each rule includes one top-level statement
    #   that AWS WAF uses to identify matching web requests, and parameters
    #   that govern how AWS WAF handles them.
    #
    # @option params [required, Types::VisibilityConfig] :visibility_config
    #   Defines and enables Amazon CloudWatch metrics and web request sample
    #   collection.
    #
    # @option params [required, String] :lock_token
    #   A token used for optimistic locking. AWS WAF returns a token to your
    #   get and list requests, to mark the state of the entity at the time of
    #   the request. To make changes to the entity associated with the token,
    #   you provide the token to operations like update and delete. AWS WAF
    #   uses the token to ensure that no changes have been made to the entity
    #   since you last retrieved it. If a change has been made, the update
    #   fails with a `WAFOptimisticLockException`. If this happens, perform
    #   another get, and use the new token returned by that operation.
    #
    # @option params [Hash<String,Types::CustomResponseBody>] :custom_response_bodies
    #   A map of custom response keys and content bodies. When you create a
    #   rule with a block action, you can send a custom response to the web
    #   request. You define these for the web ACL, and then use them in the
    #   rules and default actions that you define in the web ACL.
    #
    #   For information about customizing web requests and responses, see
    #   [Customizing web requests and responses in AWS WAF][1] in the [AWS WAF
    #   Developer Guide][2].
    #
    #   For information about the limits on count and size for custom request
    #   and response settings, see [AWS WAF quotas][3] in the [AWS WAF
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-custom-request-response.html
    #   [2]: https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html
    #   [3]: https://docs.aws.amazon.com/waf/latest/developerguide/limits.html
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
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
    #               },
    #             },
    #             comparison_operator: "EQ", # required, accepts EQ, NE, LE, LT, GE, GT
    #             size: 1, # required
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           geo_match_statement: {
    #             country_codes: ["AF"], # accepts AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW
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
    #               },
    #             },
    #             text_transformations: [ # required
    #               {
    #                 priority: 1, # required
    #                 type: "NONE", # required, accepts NONE, COMPRESS_WHITE_SPACE, HTML_ENTITY_DECODE, LOWERCASE, CMD_LINE, URL_DECODE
    #               },
    #             ],
    #           },
    #           rate_based_statement: {
    #             limit: 1, # required
    #             aggregate_key_type: "IP", # required, accepts IP, FORWARDED_IP
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #             forwarded_ip_config: {
    #               header_name: "ForwardedIPHeaderName", # required
    #               fallback_behavior: "MATCH", # required, accepts MATCH, NO_MATCH
    #             },
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
    #             excluded_rules: [
    #               {
    #                 name: "EntityName", # required
    #               },
    #             ],
    #             scope_down_statement: {
    #               # recursive Statement
    #             },
    #           },
    #           label_match_statement: {
    #             scope: "LABEL", # required, accepts LABEL, NAMESPACE
    #             key: "LabelMatchKey", # required
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
      context[:gem_version] = '1.20.0'
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
